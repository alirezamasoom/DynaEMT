@echo off

:: Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
:: See AUTHORS.txt
:: All rights reserved.
:: This Source Code Form is subject to the terms of the Mozilla Public
:: License, v. 2.0. If a copy of the MPL was not distributed with this
:: file, you can obtain one at http://mozilla.org/MPL/2.0/.
:: SPDX-License-Identifier: MPL-2.0
::
:: This file is part of Dynawo, an hybrid C++/Modelica open source time domain
:: simulation tool for power systems.

set DYNAWO_INSTALL_DIR=%~DP0

:: Dynawo environment variables for runtime
set DYNAWO_DDB_DIR=%DYNAWO_INSTALL_DIR%ddb
set DYNAWO_DICTIONARIES=dictionaries_mapping
set DYNAWO_LOCALE=en_GB
set DYNAWO_RESOURCES_DIR=%DYNAWO_INSTALL_DIR%share\
set DYNAWO_SCRIPTS_DIR=%DYNAWO_INSTALL_DIR%sbin
set DYNAWO_USE_XSD_VALIDATION=true
set DYNAWO_XSD_DIR=%DYNAWO_RESOURCES_DIR%xsd\

set thirdPartyInstallPath=%DYNAWO_INSTALL_DIR%
set LIBIIDM_HOME=%thirdPartyInstallPath%
set IIDM_XML_XSD_PATH=%LIBIIDM_HOME%\share\iidm\xsd\

:: For DLL runtime
set DLFCNWIN32_ROOT=%thirdPartyInstallPath%
set LIBXML_HOME=%thirdPartyInstallPath%
set BOOST_PATH=%thirdPartyInstallPath%
set LIBARCHIVE_HOME=%thirdPartyInstallPath%
set ZLIB_ROOT=%thirdPartyInstallPath%
set LIBZIP_HOME=%thirdPartyInstallPath%
set ADEPT_HOME=%thirdPartyInstallPath%
set SUITESPARSE_HOME=%thirdPartyInstallPath%
set SUNDIALS_HOME=%thirdPartyInstallPath%
set XERCESC_HOME=%thirdPartyInstallPath%

set OPENMODELICA_HOME=%DYNAWO_INSTALL_DIR%OpenModelica

set oldpath=%path%

PATH=%OPENMODELICA_HOME%\bin;%DYNAWO_INSTALL_DIR%ddb;%DYNAWO_INSTALL_DIR%lib;%PATH%
PATH=%DLFCNWIN32_ROOT%\bin;%LIBXML_HOME%\bin;%PATH%
PATH=%BOOST_PATH%\lib;%LIBARCHIVE_HOME%\bin;%ZLIB_ROOT%\bin;%LIBIIDM_HOME%\bin;%LIBZIP_HOME%\bin;%ADEPT_HOME%\bin;%SUITESPARSE_HOME%\bin;%SUNDIALS_HOME%\lib;%XERCESC_HOME%\bin;%PATH%

:: To compile Modelica models
set DYNAWO_ADEPT_INSTALL_DIR=%thirdPartyInstallPath%
set DYNAWO_INSTALL_OPENMODELICA=%OPENMODELICA_HOME%
set DYNAWO_XERCESC_INSTALL_DIR=%thirdPartyInstallPath%
set DYNAWO_SUITESPARSE_INSTALL_DIR=%thirdPartyInstallPath%
set DYNAWO_SUNDIALS_INSTALL_DIR=%thirdPartyInstallPath%
set DYNAWO_LIBXML_HOME=%thirdPartyInstallPath%
set DYNAWO_BOOST_HOME=%thirdPartyInstallPath%

"%DYNAWO_INSTALL_DIR%"bin\dynawo %*

PATH=%oldpath%
