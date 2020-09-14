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

encapsulated package TimelineKeys

final constant Integer ActivatePMAX = 0;
final constant Integer ActivatePMIN = 1;
final constant Integer ComponentDisconnected = 2;
final constant Integer Converter1Connected = 3;
final constant Integer Converter1SwitchOff = 4;
final constant Integer Converter2Connected = 5;
final constant Integer Converter2SwitchOff = 6;
final constant Integer CriteriaNotChecked = 7;
final constant Integer CurrentLimitAutomatonActing = 8;
final constant Integer CurrentLimitAutomatonArming = 9;
final constant Integer CurrentLimitAutomatonDisarming = 10;
final constant Integer DCLineOpen = 11;
final constant Integer DanglingLineConnected = 12;
final constant Integer DanglingLineDisconnected = 13;
final constant Integer DeactivatePMAX = 14;
final constant Integer DeactivatePMIN = 15;
final constant Integer GeneratorConnected = 16;
final constant Integer GeneratorDisconnected = 17;
final constant Integer GeneratorPVBackRegulation = 18;
final constant Integer GeneratorPVMaxQ = 19;
final constant Integer GeneratorPVMinQ = 20;
final constant Integer GeneratorTargetP = 21;
final constant Integer GeneratorTargetQ = 22;
final constant Integer IdealSwitchSwitchOff = 23;
final constant Integer LineCloseSide1 = 24;
final constant Integer LineCloseSide2 = 25;
final constant Integer LineClosed = 26;
final constant Integer LineOpen = 27;
final constant Integer LineOpenSide1 = 28;
final constant Integer LineOpenSide2 = 29;
final constant Integer LoadConnected = 30;
final constant Integer LoadDisconnected = 31;
final constant Integer NodeFaultBegin = 32;
final constant Integer NodeFaultEnd = 33;
final constant Integer NodeOff = 34;
final constant Integer NodeOn = 35;
final constant Integer OverloadDown = 36;
final constant Integer OverloadOpen = 37;
final constant Integer OverloadUp = 38;
final constant Integer PhaseShifterAboveMax = 39;
final constant Integer PhaseShifterBelowMax = 40;
final constant Integer PhaseShifterBelowMin = 41;
final constant Integer PhaseShifterBelowStop = 42;
final constant Integer PhaseShifterSwitchOff = 43;
final constant Integer PhaseShifterWithinInterval = 44;
final constant Integer SVarCConnected = 45;
final constant Integer SVarCDisconnected = 46;
final constant Integer SVarCOff = 47;
final constant Integer SVarCRunning = 48;
final constant Integer SVarCStandby = 49;
final constant Integer SVarCUmaxreached = 50;
final constant Integer SVarCUminreached = 51;
final constant Integer ShuntConnected = 52;
final constant Integer ShuntDisconnected = 53;
final constant Integer SignalReceived = 54;
final constant Integer SwitchClosed = 55;
final constant Integer SwitchOpened = 56;
final constant Integer TapChangerAboveMax = 57;
final constant Integer TapChangerBelowMin = 58;
final constant Integer TapChangerSwitchOff = 59;
final constant Integer TapChangersArming = 60;
final constant Integer TapChangersLocked = 61;
final constant Integer TapChangersLockedD = 62;
final constant Integer TapChangersLockedT = 63;
final constant Integer TapChangersUnarming = 64;
final constant Integer TapChangersUnlocked = 65;
final constant Integer TapDown = 66;
final constant Integer TapUp = 67;
final constant Integer TerminateInModel = 68;
final constant Integer TransformerSwitchOff = 69;
final constant Integer TwoWTFOCloseSide1 = 70;
final constant Integer TwoWTFOCloseSide2 = 71;
final constant Integer TwoWTFOClosed = 72;
final constant Integer TwoWTFOOpen = 73;
final constant Integer TwoWTFOOpenSide1 = 74;
final constant Integer TwoWTFOOpenSide2 = 75;
final constant Integer UVAArming = 76;
final constant Integer UVADisarming = 77;
final constant Integer UVATripped = 78;
final constant Integer VRBackToRegulation = 79;
final constant Integer VRLimitationEfdMax = 80;
final constant Integer VRLimitationEfdMin = 81;
final constant Integer VRLimitationUsRefMax = 82;
final constant Integer VRLimitationUsRefMin = 83;

end TimelineKeys;
