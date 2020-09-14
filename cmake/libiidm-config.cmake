# Copyright (c) 2016-2019, RTE (http://www.rte-france.com)
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Libiidm, a library to model IIDM networks and allows importing and exporting them to files.

# set LibXML_USE_STATIC_LIBS to a true value to use static linked libraries

#  The module defines the following variables:
#
# LibIIDM_FOUND        - TRUE
# LibIIDM_VERSION      - Version of the libXML
# LibIIDM_INCLUDE_DIR  - include search path
# LibIIDM_LIB_DIR      - library path search path
# LibIIDM_BIN_DIR      - binary search path (windows dll)

# Components are only found in lower case (neither Core nor CORE can be found)

# The following components are available, with their respective direct dependencies
# core                                      nothing
# xml                                       core, LibXML (via find_package)

# ext-activeseason                          core
# ext-busbarsectionposition                 core
# ext-connectableposition                   core
# ext-currentlimitsperseason                core
# ext-generatoractivepowercontrol           core
# ext-generatorshortcircuits                core
# ext-voltagelevelshortcircuits             core
# ext-standbyautomaton                      core
# ext-hvdcangledroopactivepowercontrol      core
# ext-hvdcoperatoractivepowerrange          core
# ext-generatorentsoecategory               core
# ext-generatorstartup                      core
# ext-loaddetail                            core
# ext-remotemeasurements                    core

# ext-activeseason-xml                      xml, ext-activeseason
# ext-busbarsectionposition-xml             xml, ext-busbarsectionposition
# ext-connectableposition-xml               xml, ext-connectableposition
# ext-currentlimitsperseason-xml            xml, ext-currentlimitsperseason
# ext-generatoractivepowercontrol-xml       xml, ext-generatoractivepowercontrol
# ext-generatorshortcircuits-xml            xml, ext-generatorshortcircuits
# ext-voltagelevelshortcircuits-xml         xml, ext-voltagelevelshortcircuits
# ext-standbyautomaton-xml                  xml, ext-standbyautomaton
# ext-hvdcangledroopactivepowercontrol-xml  xml, ext-hvdcangledroopactivepowercontrol
# ext-hvdcoperatoractivepowerrange-xml      xml, ext-hvdcoperatoractivepowerrange
# ext-generatorentsoecategory-xml           xml, ext-generatorentsoecategory
# ext-loaddetail-xml                        xml, ext-loaddetail
# ext-generatorstartup-xml                  xml, ext-generatorstartup
# ext-remotemeasurements-xml                       xml, ext-remotemeasurements

# The following pseudo component are also defined
# extensions                                every ext-...
# extensions-xml                            every ext-...-xml
# all                                       every actual components

set(LibIIDM_VERSION 0.2.8)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was libiidm-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set_and_check(LibIIDM_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(LibIIDM_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

set(LibIIDM_BIN_DIR "${PACKAGE_PREFIX_DIR}/bin")

set(LibIIDM_FOUND True)

# handle components selection

set(_supported_extensions
  activeseason
  busbarsectionposition
  connectableposition
  currentlimitsperseason
  standbyautomaton
  generatoractivepowercontrol
  generatorshortcircuits
  voltagelevelshortcircuits
  hvdcangledroopactivepowercontrol
  hvdcoperatoractivepowerrange
  generatorentsoecategory
  generatorstartup
  loaddetail
  remotemeasurements
)

set(_supported_components
  core
  xml
  extensions
  extensions-xml
)
foreach(_ext ${_supported_extensions})
  list(APPEND _supported_components "ext-${_ext}" "ext-${_ext}-xml")
endforeach()

# checking unsupported components

unset(_unsupported_components)
foreach(_component ${LibIIDM_FIND_COMPONENTS})
  list(FIND _supported_components ${_component} _component_found)
  if (${_component_found} EQUAL -1)
    set(LibIIDM_FOUND False)
    list(APPEND _unsupported_components ${_component})
  endif()
endforeach()
unset(_component_found)

if(NOT LibIIDM_FOUND)
  set(LibIIDM_NOTFOUND_MESSAGE "unknown requested components: ${_unsupported_components}")
  unset(_supported_components)
  unset(_supported_extensions)
  unset(_unsupported_components)
  return()
endif()

# no specified component means everything
list(LENGTH LibIIDM_FIND_COMPONENTS _LibIIDM_FIND_COMPONENTS_count)
if(_LibIIDM_FIND_COMPONENTS_count EQUAL 0)
  set(LibIIDM_FIND_COMPONENTS extensions-xml)
endif()
unset(_LibIIDM_FIND_COMPONENTS_count)


# applying dependencies (and with their REQUIRED attribute)

list(FIND LibIIDM_FIND_COMPONENTS "extensions-xml"  _found)
if(NOT _found EQUAL -1)
  foreach(_ext ${_supported_extensions})
    list(APPEND LibIIDM_FIND_COMPONENTS "ext-${_ext}-xml")
    if(LibIIDM_FIND_REQUIRED_extensions-xml)
      set(LibIIDM_FIND_REQUIRED_ext-${_ext}-xml True)
    endif()
  endforeach()
endif()


list(FIND LibIIDM_FIND_COMPONENTS "extensions"  _found)
if(NOT _found EQUAL -1)
  foreach(_ext ${_supported_extensions})
    list(APPEND LibIIDM_FIND_COMPONENTS "ext-${_ext}")
    if(LibIIDM_FIND_REQUIRED_extensions)
      set(LibIIDM_FIND_REQUIRED_ext-${_ext} True)
    endif()
  endforeach()
endif()


foreach(_ext ${_supported_extensions})
  list(FIND LibIIDM_FIND_COMPONENTS "ext-${_ext}-xml" _found)
  if (NOT _found EQUAL -1)
    list(APPEND LibIIDM_FIND_COMPONENTS "ext-${_ext}" "xml" "core")
    if(LibIIDM_FIND_REQUIRED_ext-${_ext}-xml)
      set(LibIIDM_FIND_REQUIRED_ext-${_ext} True)
      set(LibIIDM_FIND_REQUIRED_xml True)
      set(LibIIDM_FIND_REQUIRED_core True)
    endif()
  else()
    list(FIND LibIIDM_FIND_COMPONENTS "ext-${_ext}" _found)
    if (NOT _found EQUAL -1)
      list(APPEND LibIIDM_FIND_COMPONENTS "core")
      if(LibIIDM_FIND_REQUIRED_ext-${_ext})
        set(LibIIDM_FIND_REQUIRED_core True)
      endif()
    endif()
  endif()
endforeach()

list(FIND LibIIDM_FIND_COMPONENTS "xml" _found)
if (NOT _found EQUAL -1)
  list(APPEND LibIIDM_FIND_COMPONENTS "core")
  if(LibIIDM_FIND_REQUIRED_xml)
    set(LibIIDM_FIND_REQUIRED_core True)
  endif()
endif()
unset(_found)

list(REMOVE_DUPLICATES LibIIDM_FIND_COMPONENTS)

unset(_supported_extensions)


# including actual component definitions

if(LibIIDM_USE_STATIC_LIBS)
  set(COMPILE_MODE "-static")
  set(LibXML_USE_STATIC_LIBS True)
  set(LibXML_LINK_SUFFIX "-static")
else()
  set(COMPILE_MODE "")
  set(LibXML_LINK_SUFFIX "")
endif()

message(STATUS "requested components: ${LibIIDM_FIND_COMPONENTS}")
# This loop is explicit, to manage inclusion order
foreach(_component
  "core"
  "xml"
  "ext-activeseason"
  "ext-activeseason-xml"
  "ext-busbarsectionposition"
  "ext-busbarsectionposition-xml"
  "ext-connectableposition"
  "ext-connectableposition-xml"
  "ext-currentlimitsperseason"
  "ext-currentlimitsperseason-xml"
  "ext-standbyautomaton"
  "ext-standbyautomaton-xml"
  "ext-generatoractivepowercontrol"
  "ext-generatoractivepowercontrol-xml"
  "ext-generatorshortcircuits"
  "ext-generatorshortcircuits-xml"
  "ext-voltagelevelshortcircuits"
  "ext-voltagelevelshortcircuits-xml"
  "ext-hvdcangledroopactivepowercontrol"
  "ext-hvdcangledroopactivepowercontrol-xml"
  "ext-hvdcoperatoractivepowerrange"
  "ext-hvdcoperatoractivepowerrange-xml"
  "ext-generatorentsoecategory"
  "ext-generatorentsoecategory-xml"
  "ext-generatorstartup"
  "ext-generatorstartup-xml"
  "ext-loaddetail"
  "ext-loaddetail-xml"
  "ext-remotemeasurements"
  "ext-remotemeasurements-xml"
)
  list(FIND LibIIDM_FIND_COMPONENTS "${_component}" _found)
  if(NOT _found EQUAL -1)
    set(_component_config "${CMAKE_CURRENT_LIST_DIR}/libiidm-${_component}${COMPILE_MODE}-config.cmake")

    message(STATUS "gonna include ${_component_config}")

    if(LibIIDM_FIND_REQUIRED_${_component})
      include(${_component_config})
    else()
      include(${_component_config} OPTIONAL)
    endif()
  else()
    message(STATUS "not requested component: ${_component}")

  endif()
endforeach()
unset(_found)
unset(_component_config)
unset(_component)

unset(_supported_components)
