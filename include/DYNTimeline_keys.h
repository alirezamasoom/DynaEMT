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
#ifndef DYNTIMELINE_KEYS_H
#define DYNTIMELINE_KEYS_H
#include <string>
namespace DYN {

  ///< struct of KeyTimeline to declare enum values and names associated to the enum to be used in dynawo
  struct KeyTimeline_t
  {
    ///< enum of possible key for Timeline
    enum value
    {
      ActivatePMAX,                                                           ///< PMAX : activation
      ActivatePMIN,                                                           ///< PMIN : activation
      ComponentDisconnected,                                                  ///< COMPONENT : disconnecting
      Converter1Connected,                                                    ///< CONVERTER1 : connecting
      Converter1SwitchOff,                                                    ///< CONVERTER1 : disconnecting
      Converter2Connected,                                                    ///< CONVERTER2 : connecting
      Converter2SwitchOff,                                                    ///< CONVERTER2 : disconnecting
      CriteriaNotChecked,                                                     ///< Simulation stopped : one criteria is not respected
      CurrentLimitAutomatonActing,                                            ///< CLA : order to change topology
      CurrentLimitAutomatonArming,                                            ///< CLA : arming by over-current constraint
      CurrentLimitAutomatonDisarming,                                         ///< CLA : disarming by under-current constraint
      DCLineOpen,                                                             ///< DC line open
      DanglingLineConnected,                                                  ///< LINE : connecting
      DanglingLineDisconnected,                                               ///< LINE : disconnecting
      DeactivatePMAX,                                                         ///< PMAX : deactivation
      DeactivatePMIN,                                                         ///< PMIN : deactivation
      GeneratorConnected,                                                     ///< GENERATOR : connecting
      GeneratorDisconnected,                                                  ///< GENERATOR : disconnecting
      GeneratorPVBackRegulation,                                              ///< PV Generator : back to voltage regulation
      GeneratorPVMaxQ,                                                        ///< PV Generator : max reactive power limit reached
      GeneratorPVMinQ,                                                        ///< PV Generator : min reactive power limit reached
      GeneratorTargetP,                                                       ///< GENERATOR : change of active power target (%1%)
      GeneratorTargetQ,                                                       ///< GENERATOR : change of reactive power target (%1%)
      IdealSwitchSwitchOff,                                                   ///< Ideal switch opened
      LineCloseSide1,                                                         ///< LINE : closing on side 1
      LineCloseSide2,                                                         ///< LINE : closing on side 2
      LineClosed,                                                             ///< LINE : closing both sides
      LineOpen,                                                               ///< LINE : opening both sides
      LineOpenSide1,                                                          ///< LINE : opening on side 1
      LineOpenSide2,                                                          ///< LINE : opening on side 2
      LoadConnected,                                                          ///< LOAD : connecting
      LoadDisconnected,                                                       ///< LOAD : disconnecting
      NodeFaultBegin,                                                         ///< Fault (node) : beginning
      NodeFaultEnd,                                                           ///< Fault (node) : end
      NodeOff,                                                                ///< BUS : switch off
      NodeOn,                                                                 ///< BUS : switch on
      OverloadDown,                                                           ///< Overload %1% : deactivation
      OverloadOpen,                                                           ///< Overload %1% : opening line
      OverloadUp,                                                             ///< Overload %1% : activation
      PhaseShifterAboveMax,                                                   ///< Phase-shifter : above maximum allowed value
      PhaseShifterBelowMax,                                                   ///< Phase-shifter : below maximum allowed value
      PhaseShifterBelowMin,                                                   ///< Phase-shifter : below minimum allowed value
      PhaseShifterBelowStop,                                                  ///< Phase-shifter : back to acceptable value
      PhaseShifterSwitchOff,                                                  ///< Phase-shifter : switched off
      PhaseShifterWithinInterval,                                             ///< Phase-shifter : back to acceptable value
      SVarCConnected,                                                         ///< SVarC : connecting
      SVarCDisconnected,                                                      ///< SVarC : disconnecting
      SVarCOff,                                                               ///< SVarC : off
      SVarCRunning,                                                           ///< SVarC : in running mode
      SVarCStandby,                                                           ///< SVarC : in standby
      SVarCUmaxreached,                                                       ///< SVarC : switches to running mode (Umax threshold reached)
      SVarCUminreached,                                                       ///< SVarC : switches to running mode (Umin threshold reached)
      ShuntConnected,                                                         ///< SHUNT : connecting
      ShuntDisconnected,                                                      ///< SHUNT : disconnecting
      SignalReceived,                                                         ///< Simulation stopped : one interrupt signal was received
      SwitchClosed,                                                           ///< SWITCH : closing
      SwitchOpened,                                                           ///< SWITCH : opening
      TapChangerAboveMax,                                                     ///< Tap-changer : above maximum allowed value
      TapChangerBelowMin,                                                     ///< Tap-changer : below minimum allowed value
      TapChangerSwitchOff,                                                    ///< Tap-changer : switched off
      TapChangersArming,                                                      ///< TCL : tap changers lock arming (U < UMin)
      TapChangersLocked,                                                      ///< TCL : tap changers lock order activated on area
      TapChangersLockedD,                                                     ///< TCL : low voltage tap changers locked on area
      TapChangersLockedT,                                                     ///< TCL : high voltage tap changers locked on area
      TapChangersUnarming,                                                    ///< TCL : tap changers lock disarming (U > UMin)
      TapChangersUnlocked,                                                    ///< TCL : tap changers lock order deactivated on area
      TapDown,                                                                ///< Tap -1
      TapUp,                                                                  ///< Tap +1
      TerminateInModel,                                                       ///< Simulation stopped : model %1% terminated simulation : %2%
      TransformerSwitchOff,                                                   ///< Transformer : switched off
      TwoWTFOCloseSide1,                                                      ///< TRANSFORMER : closing on side 1
      TwoWTFOCloseSide2,                                                      ///< TRANSFORMER : closing on side 2
      TwoWTFOClosed,                                                          ///< TRANSFORMER : closing both sides
      TwoWTFOOpen,                                                            ///< TRANSFORMER : opening both sides
      TwoWTFOOpenSide1,                                                       ///< TRANSFORMER : opening on side 1
      TwoWTFOOpenSide2,                                                       ///< TRANSFORMER : opening on side 2
      UVAArming,                                                              ///< Under-voltage automaton for generator arming
      UVADisarming,                                                           ///< Under-voltage automaton for generator disarming
      UVATripped,                                                             ///< Under-voltage generator trip
      VRBackToRegulation,                                                     ///< Voltage regulator : back to regulation
      VRLimitationEfdMax,                                                     ///< Voltage regulator : upper limit reached (Efd)
      VRLimitationEfdMin,                                                     ///< Voltage regulator : lower limit reached (Efd)
      VRLimitationUsRefMax,                                                   ///< Voltage regulator : upper limit reached (UsRef)
      VRLimitationUsRefMin,                                                   ///< Voltage regulator : lower limit reached (UsRef)
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
