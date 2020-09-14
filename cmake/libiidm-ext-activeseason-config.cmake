# Copyright (c) 2016-2019, RTE (http://www.rte-france.com)
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Libiidm, a library to model IIDM networks and allows importing and exporting them to files.

# - Find LibIIDM ActiveSeason extension library and headers
#  The module defines the following variables:
#
# LibIIDM_EXT_ACTIVESEASON_FOUND        - TRUE
# LibIIDM_EXT_ACTIVESEASON_VERSION      - Version
# LibIIDM_EXT_ACTIVESEASON_INCLUDE_DIR  - include search path
# LibIIDM_EXT_ACTIVESEASON_LIB_DIR      - library path search path
# LibIIDM_EXT_ACTIVESEASON_BIN_DIR      - binary search path (windows dll)

set(LibIIDM_EXT_ACTIVESEASON_VERSION 0.2.8)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was libiidm-ext-activeseason-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set_and_check(LibIIDM_EXT_ACTIVESEASON_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(LibIIDM_EXT_ACTIVESEASON_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

if (WIN32 AND 1)
  set_and_check(LibIIDM_EXT_ACTIVESEASON_BIN_DIR "${PACKAGE_PREFIX_DIR}/bin")
endif()

include(${CMAKE_CURRENT_LIST_DIR}/libiidm-ext-activeseason-targets.cmake)

set(LibIIDM_EXT_ACTIVESEASON_FOUND TRUE)
mark_as_advanced(LibIIDM_EXT_ACTIVESEASON_FOUND)
