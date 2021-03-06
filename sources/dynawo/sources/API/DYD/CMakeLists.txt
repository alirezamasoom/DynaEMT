# Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
# See AUTHORS.txt
# All rights reserved.
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/2.0/.
# SPDX-License-Identifier: MPL-2.0
#
# This file is part of Dynawo, an hybrid C++/Modelica open source time domain simulation tool for power systems.

# API version
set(API_DYD_VERSION_STRING ${DYNAWO_VERSION_STRING})
set(API_DYD_VERSION_MAJOR ${DYNAWO_VERSION_MAJOR})

set(API_DYD_SHARED
    xsd/dyd.xsd
    )

install(FILES ${API_DYD_SHARED} DESTINATION ${SHAREDIR_NAME}/xsd/)

set(API_DYD_SOURCES
    DYDBlackBoxModelFactory.cpp
    DYDBlackBoxModelImpl.cpp
    DYDConnectorFactory.cpp
    DYDConnectorImpl.cpp
    DYDDynamicModelsCollectionFactory.cpp
    DYDDynamicModelsCollectionImpl.cpp
    DYDIdentifiableFactory.cpp
    DYDIterators.cpp
    DYDIteratorsImpl.cpp
    DYDMacroConnectFactory.cpp
    DYDMacroConnectImpl.cpp
    DYDMacroConnectionFactory.cpp
    DYDMacroConnectionImpl.cpp
    DYDMacroConnectorFactory.cpp
    DYDMacroConnectorImpl.cpp
    DYDModelicaModelFactory.cpp
    DYDModelicaModelImpl.cpp
    DYDModelImpl.cpp
    DYDModelTemplateFactory.cpp
    DYDModelTemplateImpl.cpp
    DYDModelTemplateExpansionFactory.cpp
    DYDModelTemplateExpansionImpl.cpp
    DYDXmlHandler.cpp
    DYDXmlImporter.cpp
    DYDStaticRefFactory.cpp
    DYDStaticRefImpl.cpp
    DYDMacroStaticRefImpl.cpp
    DYDMacroStaticRefFactory.cpp
    DYDMacroStaticReferenceImpl.cpp
    DYDMacroStaticReferenceFactory.cpp
    DYDUnitDynamicModelFactory.cpp
    DYDUnitDynamicModelImpl.cpp
    DYDWhiteBoxModelCommon.cpp
    DYDXmlExporter.cpp
    )

set(API_DYD_INCLUDE_HEADERS
    DYDBlackBoxModel.h
    DYDBlackBoxModelFactory.h
    DYDConnector.h
    DYDConnectorFactory.h
    DYDDynamicModelsCollection.h
    DYDDynamicModelsCollectionFactory.h
    DYDExporter.h
    DYDIdentifiable.h
    DYDIdentifiableFactory.h
    DYDImporter.h
    DYDIterators.h
    DYDMacroConnect.h
    DYDMacroConnectFactory.h
    DYDMacroConnection.h
    DYDMacroConnectionFactory.h
    DYDMacroConnector.h
    DYDMacroConnectorFactory.h
    DYDModel.h
    DYDModelicaModel.h
    DYDModelicaModelFactory.h
    DYDModelTemplate.h
    DYDModelTemplateFactory.h
    DYDModelTemplateExpansion.h
    DYDModelTemplateExpansionFactory.h
    DYDXmlImporter.h
    DYDXmlExporter.h
    DYDStaticRef.h
    DYDStaticRefFactory.h
    DYDMacroStaticRef.h
    DYDMacroStaticRefFactory.h
    DYDMacroStaticReference.h
    DYDMacroStaticReferenceFactory.h
    DYDUnitDynamicModel.h
    DYDUnitDynamicModelFactory.h
    DYDWhiteBoxModelCommon.h
    )

add_library(dynawo_API_DYD ${LIBRARY_TYPE} ${API_DYD_SOURCES})

target_include_directories(dynawo_API_DYD
  INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:${INCLUDEDIR_NAME}>
    $<TARGET_PROPERTY:XMLSAXParser${LibXML_LINK_SUFFIX},INTERFACE_INCLUDE_DIRECTORIES>
  )
target_include_directories(dynawo_API_DYD SYSTEM
  PRIVATE
    $<TARGET_PROPERTY:Boost::boost,INTERFACE_INCLUDE_DIRECTORIES>
  )

target_link_libraries(dynawo_API_DYD
  PRIVATE
    XMLSAXFormatter${LibXML_LINK_SUFFIX}
    XMLSAXParser${LibXML_LINK_SUFFIX}
    dynawo_Common
    )

set_target_properties(dynawo_API_DYD PROPERTIES VERSION ${API_DYD_VERSION_STRING}
                                              SOVERSION ${API_DYD_VERSION_MAJOR})

install(TARGETS dynawo_API_DYD EXPORT dynawo-targets DESTINATION ${LIBDIR_NAME})
install(FILES ${API_DYD_INCLUDE_HEADERS} DESTINATION ${INCLUDEDIR_NAME})
