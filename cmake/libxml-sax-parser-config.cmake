# Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Libxml, a library to handle XML files parsing.

# - Find libXML library and headers
#  The module defines the following variables:
#
# LibXML_SAX_PARSER_FOUND        - TRUE
# LibXML_SAX_PARSER_VERSION      - Version of the libXML
# LibXML_SAX_PARSER_INCLUDE_DIR  - include search path
# LibXML_SAX_PARSER_LIB_DIR      - library path search path
# LibXML_SAX_PARSER_BIN_DIR      - binary search path (windows dll)

set(LibXML_SAX_PARSER_VERSION 0.2.4)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was libxml-sax-parser-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set_and_check(LibXML_SAX_PARSER_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(LibXML_SAX_PARSER_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

if(LibXML_USE_STATIC_LIBS)
  set(LibXML_LINK_SUFFIX "-static")
else()
  if (WIN32)
    set_and_check(LibXML_SAX_PARSER_BIN_DIR "${PACKAGE_PREFIX_DIR}/bin")
  endif()

  set(LibXML_LINK_SUFFIX "")
endif()

include(${CMAKE_CURRENT_LIST_DIR}/libxml-sax-parser${LibXML_LINK_SUFFIX}-targets.cmake)

set(LibXML_SAX_PARSER_FOUND TRUE)
mark_as_advanced(LibXML_SAX_PARSER_FOUND)
