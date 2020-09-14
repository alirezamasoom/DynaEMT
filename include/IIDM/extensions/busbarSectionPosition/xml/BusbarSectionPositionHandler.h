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
 * @file IIDM/extensions/busbarSectionPosition/xml/BusbarSectionPositionHandler.h
 * @brief Provides BusbarSectionPositionHandler interface, used for input
 */

#ifndef LIBIIDM_EXTENSIONS_BUSBARSECTIONPOSITION_XML_GUARD_BUSBARSECTIONPOSITION_HANDLER_H
#define LIBIIDM_EXTENSIONS_BUSBARSECTIONPOSITION_XML_GUARD_BUSBARSECTIONPOSITION_HANDLER_H

#include <IIDM/xml/import/ExtensionHandler.h>
#include <IIDM/extensions/busbarSectionPosition/BusbarSectionPosition.h>

#include <xml/sax/parser/CDataCollector.h>

#include <IIDM/cpp11.h>

namespace IIDM {
namespace extensions {
namespace busbarsection_position {
namespace xml {

class BusbarSectionPositionHandler: public IIDM::xml::ExtensionHandler, private ::xml::sax::parser::CDataCollector {
public:
  static elementName_type const& root();

  static std::string const& uri() { return root().ns; }

  static std::string xsd_path();

  virtual elementName_type const& root_element() const IIDM_OVERRIDE IIDM_FINAL { return root(); }

private:
  virtual BusbarSectionPosition* do_make() IIDM_OVERRIDE IIDM_FINAL;
};

} // end of namespace IIDM::extensions::busbarsection_position::xml::
} // end of namespace IIDM::extensions::busbarsection_position::
} // end of namespace IIDM::extensions::
} // end of namespace IIDM::

#endif
