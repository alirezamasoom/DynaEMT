//
// Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
// See AUTHORS.txt
// All rights reserved.
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at http://mozilla.org/MPL/2.0/.
// SPDX-License-Identifier: MPL-2.0
//
// This file is part of Dynawo, an hybrid C++/Modelica open source time domain simulation tool for power systems.
//
#ifndef DYNCONSTRAINT_KEYS_H
#define DYNCONSTRAINT_KEYS_H
#include <string>
namespace DYN {

  ///< struct of KeyConstraint to declare enum values and names associated to the enum to be used in dynawo
  struct KeyConstraint_t
  {
    ///< enum of possible key for Constraint
    enum value
    {
      IMAP,                                                                   ///< permanent limit side %1%
      OverloadOpen,                                                           ///< overload %1% : open line (side %2%)
      OverloadUp,                                                             ///< overload %1% side %2%
      UInfUmin,                                                               ///< U < Umin
      USupUmax,                                                               ///< U > Umax
      UsMax,                                                                  ///< Us > UsMax
      UsMin,                                                                  ///< Us < UsMin
    };

    /**
    * @brief Return the name associated to the enum.
    *
    * @return The name associated to the enum.
    */
    static const char* names(const value&); ///< names associated to the enum
  };
} //namespace DYN
#endif
