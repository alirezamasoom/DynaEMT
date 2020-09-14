/*
* Copyright (c) 2015-2019, RTE (http://www.rte-france.com)
* See AUTHORS.txt
* All rights reserved.
* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, you can obtain one at http://mozilla.org/MPL/2.0/.
* SPDX-License-Identifier: MPL-2.0
*
* This file is part of Dynawo, an hybrid C++/Modelica open source time domain simulation tool for power systems.
*/
within Dynawo.NonElectrical.Logs;

encapsulated package ConstraintKeys

final constant Integer IMAP = 0;
final constant Integer OverloadOpen = 1;
final constant Integer OverloadUp = 2;
final constant Integer UInfUmin = 3;
final constant Integer USupUmax = 4;
final constant Integer UsMax = 5;
final constant Integer UsMin = 6;

end ConstraintKeys;
