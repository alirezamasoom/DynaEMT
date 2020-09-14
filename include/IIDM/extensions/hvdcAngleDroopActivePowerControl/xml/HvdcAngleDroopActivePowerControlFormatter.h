//
// Copyright (c) 2016-2019, RTE (http://www.rte-france.com)
// All rights reserved.
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
// SPDX-License-Identifier: MPL-2.0
//
// This file is part of Libiidm, a library to model IIDM networks and allows
// importing and exporting them to files.
//

/**
 * @file IIDM/extensions/hvdcAngleDroopActivePowerControl/xml/HvdcAngleDroopActivePowerControlFormatter.h
 * @brief Provides HvdcAngleDroopActivePowerControlFormatter interface, used for input
 */

#ifndef LIBIIDM_EXTENSIONS_HVDCANGLEDROOPACTIVEPOWERCONTROL_XML_GUARD_HVDCANGLEDROOPACTIVEPOWERCONTROL_FORMATTER_H
#define LIBIIDM_EXTENSIONS_HVDCANGLEDROOPACTIVEPOWERCONTROL_XML_GUARD_HVDCANGLEDROOPACTIVEPOWERCONTROL_FORMATTER_H

#include <string>

namespace xml {
namespace sax {
namespace formatter {
class Element;
} // end of namespace xml::sax::parser::
} // end of namespace xml::sax::
} // end of namespace xml::


namespace IIDM {
class Identifiable;

namespace extensions {
namespace hvdcangledroopactivepowercontrol {
namespace xml {

void exportHvdcAngleDroopActivePowerControl(IIDM::Identifiable const&, ::xml::sax::formatter::Element& root, std::string const& xml_prefix);

} // end of namespace IIDM::extensions::hvdcangledroopactivepowercontrol::xml::
} // end of namespace IIDM::extensions::hvdcangledroopactivepowercontrol::
} // end of namespace IIDM::extensions::
} // end of namespace IIDM::

#endif