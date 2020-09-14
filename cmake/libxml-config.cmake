# Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Libxml, a library to handle XML files parsing.

# set LibXML_USE_STATIC_LIBS to a true value to use static linked libraries
#
# The following variables as effect on the found component
#
# LibXML_USE_STATIC_LIBS: if set to a true value, only static libraries are searched. Otherwise, only shared ones.
#
# The module defines the following variables:
#
# LibXML_FOUND        - TRUE if all requested components are found.
# LibXML_VERSION      - Version of the libXML
# LibXML_INCLUDE_DIR  - include search path
# LibXML_LIB_DIR      - library path search path
# LibXML_BIN_DIR      - binary search path (windows dll)

set(LibXML_VERSION 0.2.4)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was libxml-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set_and_check(LibXML_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(LibXML_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

set(LibXML_BIN_DIR "${PACKAGE_PREFIX_DIR}/bin")

set(LibXML_FOUND TRUE)


# handle components

set(LibXML_SUPPORTED_COMPONENTS Formatter Parser)

# no specified component means Formatter and Parser
list(LENGTH LibXML_FIND_COMPONENTS _LibXML_FIND_COMPONENTS_count)
if(_LibXML_FIND_COMPONENTS_count EQUAL 0)
  set(LibXML_FIND_COMPONENTS Formatter Parser)
endif()

if(LibXML_USE_STATIC_LIBS)
  set(LibXML_LINK_SUFFIX "-static")
else()
  set(LibXML_LINK_SUFFIX "")
endif()

foreach(COMPONENT ${LibXML_FIND_COMPONENTS})
  string(TOLOWER ${COMPONENT} COMPONENT_LOWER)
  if (NOT "${LibXML_SUPPORTED_COMPONENTS}" MATCHES COMPONENT_LOWER)
    set(LibXML_FOUND False)
    set(LibXML_NOTFOUND_MESSAGE "Specified unsupported component: ${COMPONENT}")
  endif()

  set(component_config "${CMAKE_CURRENT_LIST_DIR}/libxml-sax-${COMPONENT_LOWER}${LibXML_LINK_SUFFIX}-config.cmake")
  if(LibXML_FIND_REQUIRED_${COMPONENT})
    include(${component_config})
  else()
    include(${component_config} OPTIONAL)
  endif()
  unset(component_config)
endforeach()
