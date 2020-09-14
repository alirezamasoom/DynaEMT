# Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
# See AUTHORS.txt
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. if a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Dynawo, an hybrid C++/Modelica open source time domain simulation tool for power systems.

cmake_minimum_required(VERSION 3.9.6)

project(model CXX)

set(DYNAWO_LIBRARY_TYPE "SHARED")
set(DYNAWO_MSVC_STATIC_RUNTIME_LIBRARY "OFF")

if(NOT DEFINED ENV{DYNAWO_INSTALL_DIR})
  message(FATAL_ERROR "You need to define DYNAWO_INSTALL_DIR environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_ADEPT_INSTALL_DIR})
  message(FATAL_ERROR "You need to define DYNAWO_ADEPT_INSTALL_DIR environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_INSTALL_OPENMODELICA})
  message(FATAL_ERROR "You need to define DYNAWO_INSTALL_OPENMODELICA environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_XERCESC_INSTALL_DIR})
  message(FATAL_ERROR "You need to define DYNAWO_XERCESC_INSTALL_DIR environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_LIBXML_HOME})
  message(FATAL_ERROR "You need to define DYNAWO_LIBXML_HOME environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_SUITESPARSE_INSTALL_DIR})
  message(FATAL_ERROR "You need to define DYNAWO_SUITESPARSE_INSTALL_DIR environment variable.")
endif()

if(NOT DEFINED ENV{DYNAWO_SUNDIALS_INSTALL_DIR})
  message(FATAL_ERROR "You need to define DYNAWO_SUNDIALS_INSTALL_DIR environment variable.")
endif()

if(DEFINED ENV{DYNAWO_BOOST_HOME})
  set(BOOST_ROOT $ENV{DYNAWO_BOOST_HOME})
endif()

file(TO_CMAKE_PATH  "$ENV{DYNAWO_INSTALL_DIR}" DYNAWO_INSTALL_DIR)
set(CMAKE_MODULE_PATH "${DYNAWO_INSTALL_DIR}/share/cmake")

if(MSVC)
  if(DYNAWO_LIBRARY_TYPE STREQUAL "STATIC")
    if(DYNAWO_MSVC_STATIC_RUNTIME_LIBRARY)
      set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    endif()
  endif()
endif()

set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)
set(CMAKE_CXX_FLAGS "/DWIN32 /D_WINDOWS /W3 /GR /EHsc")

if(NOT MODEL_NAME OR "${MODEL_NAME}" STREQUAL "")
  message(FATAL_ERROR "Need a model name to compile: please add -DMODEL_NAME=...")
endif()

if(MSVC)
  set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS)
  add_definitions(-DLANG_CXX11)
  add_compile_options(-bigobj)

  find_package(dlfcn-win32 REQUIRED)
endif()

set(BOOST_ROOT_DEFAULT "")
set(BOOST_USE_STATIC "OFF")

# Boost
if(BOOST_ROOT_DEFAULT STREQUAL "true")
  set(Boost_NO_SYSTEM_PATHS FALSE)
ELSE()
  set(Boost_NO_SYSTEM_PATHS TRUE)
endif()

if(BOOST_USE_STATIC)
  set(Boost_USE_STATIC_LIBS TRUE)
  if(MSVC)
    if(DYNAWO_MSVC_STATIC_RUNTIME_LIBRARY)
      set(Boost_USE_STATIC_RUNTIME TRUE)
    endif()
  endif()
ELSE()
  set(BUILD_SHARED_LIBS ON)
  add_definitions(-DBOOST_ALL_DYN_LINK)
endif()
# Tell BOOST to disable auto linking
add_definitions(-DBOOST_ALL_NO_LIB)

find_package(Boost 1.64 REQUIRED
  COMPONENTS
    filesystem
    program_options
    serialization
    system
    log
    log_setup
)

set(SUITESPARSE_HOME "$ENV{DYNAWO_SUITESPARSE_INSTALL_DIR}")
find_package(SuiteSparse REQUIRED)

if(DEFINED ENV{DYNAWO_NICSLU_INSTALL_DIR})
  set(NICSLU_HOME $ENV{DYNAWO_NICSLU_INSTALL_DIR})
endif()
find_package(NICSLU)

if(${NICSLU_FOUND})
  add_definitions(-DWITH_NICSLU)
endif()

set(SUNDIALS_HOME "$ENV{DYNAWO_SUNDIALS_INSTALL_DIR}")
find_package(Sundials REQUIRED)

set(USE_ADEPT "ON")
set(ADEPT_HOME "$ENV{DYNAWO_ADEPT_INSTALL_DIR}")
if(USE_ADEPT)
  find_package(Adept REQUIRED)
endif(USE_ADEPT)

set(XERCESC_HOME "$ENV{DYNAWO_XERCESC_INSTALL_DIR}")
find_package(XercesC 3.2.2 REQUIRED)

set(LibXML_USE_STATIC_LIBS )
find_package(libXML 0.2.4 REQUIRED PATHS $ENV{DYNAWO_LIBXML_HOME})

find_package(Dynawo CONFIG REQUIRED PATHS $ENV{DYNAWO_INSTALL_DIR} PATH_SUFFIXES share)

set(MODEL_SOURCES
  ${MODEL_NAME}.cpp
  ${MODEL_NAME}_Dyn.cpp
  ${MODEL_NAME}_Dyn_external.cpp
  )

if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${MODEL_NAME}_Init.cpp)
  list(APPEND MODEL_SOURCES
    ${MODEL_NAME}_Init.cpp
    ${MODEL_NAME}_Init_external.cpp
    )
endif()

add_library(lib SHARED ${MODEL_SOURCES})
set_target_properties(lib PROPERTIES OUTPUT_NAME ${MODEL_NAME} PREFIX "")

get_filename_component(INSTALL_OPENMODELICA $ENV{DYNAWO_INSTALL_OPENMODELICA} ABSOLUTE)
set(OMC_INCLUDE_DIR ${INSTALL_OPENMODELICA}/include/omc/c)

if(NOT EXISTS ${OMC_INCLUDE_DIR})
  message(FATAL_ERROR "OpenModelica include directories, ${OMC_INCLUDE_DIR}, does not exist. Use DYNAWO_INSTALL_OPENMODELICA environement variable to your installation.")
endif()

target_include_directories(lib PUBLIC $ENV{DYNAWO_ADDITIONAL_INCLUDE_FOR_PREASSEMBLED} PRIVATE ${OMC_INCLUDE_DIR} ${ADEPT_INCLUDE_DIR})

target_link_libraries(lib
  PRIVATE
    Dynawo::dynawo_Common
    Dynawo::dynawo_API_PAR
    Dynawo::dynawo_ModelerCommon
    Dynawo::Modelica_externalC
    Dynawo::dynawo_ModelManager
    $ENV{DYNAWO_ADDITIONAL_LIBRARY_FOR_PREASSEMBLED}
)

if(APPLE)
  if(DYNAWO_LIBRARY_TYPE STREQUAL "STATIC")
    target_link_libraries(lib PRIVATE "-flat_namespace")
  endif()
endif()