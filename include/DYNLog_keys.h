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
#ifndef DYNLOG_KEYS_H
#define DYNLOG_KEYS_H
#include <string>
namespace DYN {

  ///< struct of KeyLog to declare enum values and names associated to the enum to be used in dynawo
  struct KeyLog_t
  {
    ///< enum of possible key for Log
    enum value
    {
      AddingBusToNetwork,                                                     ///< adding bus %1% to the Network.
      AddingCurve,                                                            ///< adding curve : Id: %1%; curve: %2% found. (exact name)
      AddingCurveOutput,                                                      ///< adding curve : Id: %1%; output: %2% found.( %3% )
      AddingCurveParam,                                                       ///< adding parameter curve: Id: %1%; parameter curve: %2% found. (exact name)
      AddingDanglingLineToNetwork,                                            ///< adding Dangling Line %1% to the Network.
      AddingDiscreteExtVar,                                                   ///< connected discrete variable %1% is added as external variable
      AddingExtVar,                                                           ///< variable %1% is added as external variable
      AddingGeneratorToNetwork,                                               ///< adding Generator %1% to the Network.
      AddingHvdcToNetwork,                                                    ///< adding HVDC %1% to the Network.
      AddingLineToNetwork,                                                    ///< adding Line %1% to the Network.
      AddingLoadToNetwork,                                                    ///< adding load %1% to the Network.
      AddingModelToMap,                                                       ///< modelica model %1% has same structure as %2%.
      AddingSVCToNetwork,                                                     ///< adding SVC %1% to the Network.
      AddingShuntToNetwork,                                                   ///< adding Shunt Compensator %1% to the Network.
      AddingSwitchToNetwork,                                                  ///< adding Switch %1% to the Network.
      AddingThreeWTfoToNetwork,                                               ///< adding Three Windings Transformer %1% to the Network.
      AddingTwoWTfoToNetwork,                                                 ///< adding Two Windings Transformer %1% to the Network.
      AddingVoltageLevelToNetwork,                                            ///< adding voltage level %1% to the Network
      AlreadyCompiledModel,                                                   ///< model %1% already compiled : nothing to do.
      AlreadyMappedModel,                                                     ///< modelica model's model description %1% already mapped: nothing to do.
      BlackBoxModelCompiled,                                                  ///< blackBox Model: %1%. Compilation succeed.
      BusAboveVoltage,                                                        ///< node: %1% has a voltage %2% kV (%3% p.u.) > %4% kV (%5% p.u.) (criteria id: %6%)
      BusUnderVoltage,                                                        ///< node: %1% has a voltage %2% kV (%3% p.u.) < %4% kV (%5% p.u.) (criteria id: %6%)
      CalculateIC,                                                            ///< calculate initial condition of the DAE
      CalculateICIteration,                                                   ///< initial condition iteration %1%
      CompilationDone,                                                        ///< COMPILATION ACCOMPLISHED.
      CompileCommmand,                                                        ///< compile command: %1%
      CompileFiles,                                                           ///< compilation files (and packages)
      CompiledModelID,                                                        ///< compiled model ID: %1%
      CompilingModel,                                                         ///< compiling %1%
      ComponentNotFound,                                                      ///< component %1% was not found
      ConcatingNetworkConnects,                                               ///< concatingNetworkConnects: %1% : %2% : %3% : %4%.
      ConnectedModels,                                                        ///< model %1% to model %2%
      Converter1StateChange,                                                  ///< state of converter 1 of HVDC link %1% change from %2% to %3%
      Converter2StateChange,                                                  ///< state of converter 2 of HVDC link %1% change from %2% to %3%
      CreateDynamicConnectFailed,                                             ///< impossible to create a connect between %1%_%2% and %3%_%4%.
      CreateStaticConnectFailed,                                              ///< impossible to create a connect between %1%_%2% and %3%.
      CriteriaDefinedButNoIIDM,                                               ///< a criteria file was defined without any IIDM file, it will be ignored
      CurveInit,                                                              ///< starting curve initialization
      CurveInitEnd,                                                           ///< end of curve initialization, added %1% curves
      CurveNotAdded,                                                          ///< curve not added: Id: %1% , name: %2%
      CustomDir,                                                              ///< custom Dir : %1% with extension %2%
      DDBDir,                                                                 ///< DDB Dir : %1%
      DanglingLineExtDynModel,                                                ///< dangling Line %1% using an external dynamic modelisation : not added to the Network.
      DanglingLineStateChange,                                                ///< state of the Dangling Line %1% change from %2% to %3%
      DeactivateCurrentLimits,                                                ///< %1% deactivate current Limits
      DisableInternalTapChanger,                                              ///< %1% disable internal tap changer, use external automaton
      DynamicConnect,                                                         ///< connecting %1%_%2% with %3%_%4%
      DynamicConnectStart,                                                    ///< connection list
      DynawoRevision,                                                         ///< DYNAWO REVISION :
      DynawoVersion,                                                          ///< DYNAWO VERSION  :
      EndCalculateIC,                                                         ///< end of calculate initial condition of the DAE
      EndOfJob,                                                               ///< end of job '%1%'
      ExecutingCommand,                                                       ///< executing command : %1%
      ExtVarFileNotFound,                                                     ///< model %1% has no external variable file declared.
      GenerateModelicaConcatFile,                                             ///< generating modelica concatenation file %1%. For model : %2%. For ModelDescription : %3%
      GeneratorExtDynModel,                                                   ///< generator %1% using an external dynamic modelisation : not added to the Network.
      GeneratorStateChange,                                                   ///< state of Generator %1% change from %2% to %3%
      HvdcExtDynModel,                                                        ///< HVDC %1% using an external dynamic modelisation : not added to the Network.
      IdaBadEwt,                                                              ///< IDA_BAD_EWT : Some component of the error weight vector is zero (illegal), either for the input value of y0 or a corrected value.
      IdaConstrFail,                                                          ///< IDA_CONSTR_FAIL : IDACalcIC was unable to find a solution satisfying the inequality constraints.
      IdaConvFail,                                                            ///< IDA_CONV_FAIL : IDACalcIC failed to get convergence of the Newton iterations.
      IdaFirstResFail,                                                        ///< IDA_FIRST_RES_FAIL : The user's residual function returned a recoverable error flag on the first call, but IDACalcIC was unable to recover.
      IdaIllInput,                                                            ///< IDA_ILL_INPUT : One of the input arguments was illegal.
      IdaLinesearchFail,                                                      ///< IDA_LINESEARCH_FAIL : The linesearch algorithm failed to find a solution with a step larger than steptol in weighted RMS norm.
      IdaLinitFail,                                                           ///< IDA_LINIT_FAIL : The linear solver's initialization function failed.
      IdaLsolveFail,                                                          ///< IDA_LSOLVE_FAIL : The linear solver's solve function failed in an unrecoverable manner.
      IdaMemNull,                                                             ///< IDA_MEM_NULL : The argument ida mem was NULL.
      IdaNoMalloc,                                                            ///< IDA_NO_MALLOC : The allocation function IDAInit has not been called.
      IdaNoRecovery,                                                          ///< IDA_NO_RECOVERY : The user's residual function, or the linear solver's setup or solve function had a recoverable error, but IDACalcIC was unable to recover.
      IdaResFail,                                                             ///< IDA_RES_FAIL : The user's residual function returned a nonrecoverable error flag.
      IdaSuccess,                                                             ///< IDA_SUCCESS : IDASolve succeeded.
      IdalsetupFail,                                                          ///< IDA_LSETUP_FAIL : The linear solver's setup function failed in an unrecoverable manner.
      ImpossibleConnection,                                                   ///< element 1 (id %1%: name :%2%) not found in model :%3% ( %4% ) element :%5% impossible connection
      IncorrectConnectionDiffSize,                                            ///< impossible to connect model :%1% element :%2% to model :%3% element :%4% (different size structure %5% Vs %6%)
      InternalParam,                                                          ///< parameter %1% was computed internally
      InvalidModel,                                                           ///< invalid model: %1%
      InvalidSharedObjects,                                                   ///< FOLLOWING %1% SHARED OBJECTS ARE NOT VALID:
      JobSuccess,                                                             ///< job '%1%' succeeded
      KeepSubNetwork,                                                         ///< keep SubNetworks num : %1%
      KinErrorValue,                                                          ///< F[%1%]=%2% (model=%3% index=%4% equation:%5%)
      KinFirstSysFuncErr,                                                     ///< the system function failed recoverably at the first call
      KinIllInput,                                                            ///< one of the solution input is illegal
      KinInitialGuessOk,                                                      ///< the initial user-supplied guess already satisfies the stopping criterion
      KinLargestErrors,                                                       ///< largest errors (truncated to the first %1%) at the current iteration
      KinLineSearchBcFail,                                                    ///< the linesearch algorithm was unable to satisfy the beta-condtion for nbcfails iterations
      KinLineSearchNonConv,                                                   ///< the linesearch algortihm was unable to find an iterate sufficiently distinct from the current iterate
      KinLinitFail,                                                           ///< the linear solver's initialization function failed
      KinLinsolvNoRecovery,                                                   ///< the user-supplied routine preconditioner solve function failed recoveravly, but the preconditionner is already current
      KinLsetupFail,                                                          ///< the linear solver's setup function failed in an unrecoverable manner
      KinLsolveFail,                                                          ///< the linear solver's solve function failed in an unrecoverable manner
      KinMaxIterReached,                                                      ///< the maximum number of nonlinear iterations has been reached
      KinMemFail,                                                             ///< an allocation of memory failed in KINSOL
      KinMemNull,                                                             ///< the kin_mem argument was NULL
      KinMxNewt5xExceeded,                                                    ///< five consecutive steps have been taken that satisfy a scaled step length test
      KinNoMalloc,                                                            ///< the KINSOL memory was not allocated by a call to KINMalloc
      KinReptdSysfuncErr,                                                     ///< the system function had repeated recoverable errors
      KinStepLtStpTol,                                                        ///< the stopping tolerance on scaled step length was satisfied
      KinSysFuncFail,                                                         ///< the system function failed in an unrecoverable manner
      KinVectoropErr,                                                         ///< an operation on a vector failed in KINSOL
      KinsolSucceeded,                                                        ///< KINSOL succeeded
      LaunchingJob,                                                           ///< launching job '%1%'
      LineExtDynModel,                                                        ///< line %1% using an external dynamic modelisation : not added to the Network.
      LineStateChange,                                                        ///< state of Line %1% change from %2% to %3%
      LoadExtDynModel,                                                        ///< load %1% using an external dynamic modelisation : not added to the Network.
      LoadStateChange,                                                        ///< state of Load %1% change from %2% to %3%
      MatrixStructureChange,                                                  ///< call of SolverReInit ie a new symbolic and numerical factorization will be performed
      ModeChange,                                                             ///< %1% for model %2%
      ModelBuilding,                                                          ///< building model from input files
      ModelBuildingEnd,                                                       ///< model was built successfully
      ModelConnectorsList,                                                    ///< connectors list
      ModelConnectorsNB,                                                      ///< model connectors (Y,Flow) NB = %1%
      ModelDesc,                                                              ///< instancing model description %1% ...
      ModelGlobalInit,                                                        ///< starting global initialization
      ModelGlobalInitEnd,                                                     ///< end of global initialization
      ModelInitialStateLoad,                                                  ///< starting load of initial state
      ModelInitialStateLoadEnd,                                               ///< initial state was successfully loaded
      ModelLocalInit,                                                         ///< starting local initialization
      ModelLocalInitEnd,                                                      ///< end of local initialization
      ModelMultiParamNotFound,                                                ///< in model multi get parameter value: Model: %1%  Parameter: %2% not found.
      ModelName,                                                              ///< model :
      ModelTemplateExpansionCompiled,                                         ///< modelTemplateExpansion: %1%. Compilation succeed.
      NbRootFunctions,                                                        ///< number of root functions : %1%
      NbSubNetwork,                                                           ///< nbSubNetwork = %1%
      NbVar,                                                                  ///< number of variables : %1%
      NetworkInitSwitchCurrentsFailed,                                        ///< model network : initialization of switches' currents failed
      NetworkNbBus,                                                           ///< number of buses                       : %1%
      NetworkNbDanglingLine,                                                  ///< number of dangling lines              : %1% (static: %2%, dynamic: %3%)
      NetworkNbGenerators,                                                    ///< number of generator                   : %1% (static: %2%, dynamic: %3%)
      NetworkNbHVDC,                                                          ///< number of HVDCs                       : %1% (static: %2%, dynamic: %3%)
      NetworkNbLine,                                                          ///< number of lines                       : %1% (static: %2%, dynamic: %3%)
      NetworkNbLoads,                                                         ///< number of loads                       : %1% (static: %2%, dynamic: %3%)
      NetworkNbSVC,                                                           ///< number of SVCs                        : %1% (static: %2%, dynamic: %3%)
      NetworkNbShunt,                                                         ///< number of shunt compensators          : %1% (static: %2%, dynamic: %3%)
      NetworkNbSwitches,                                                      ///< number of switches                    : %1% (static: %2%, dynamic: %3%)
      NetworkNbThreeWTfo,                                                     ///< number of three windings transformers : %1% (static: %2%, dynamic: %3%)
      NetworkNbTwoWTfo,                                                       ///< number of two windings transformers   : %1% (static: %2%, dynamic: %3%)
      NetworkNbVoltagelevel,                                                  ///< number of voltage levels              : %1%
      NetworkStats,                                                           ///< network statistics:
      NewStartPoint,                                                          ///< calculation of the new starting point of the simulation.
      NoNetworkConnection,                                                    ///< component %1% not imported : no network connection declared
      NotInstancedModel,                                                      ///< one of the two models has not been instanced.
      ParamNoValueFound,                                                      ///< no value found for parameter %1%
      ParamUnused,                                                            ///< parameter %1% in model %2% is not used
      ParamValueInOrigin,                                                     ///< parameter %1% has value %3% (coming from origin %2%)
      ParsingExtVarFile,                                                      ///< parsing external variables file %1%
      PossibleDivisionByZero,                                                 ///< impedance of line ID: %1% set to 0 in IIDM file, default parameters are then used: R = 0 and X = 0.01
      PowerBusCriteriaIgnored,                                                ///< active power criteria is not applicable to buses
      PreassembledModelGenerated,                                             ///< preassembled model generated. Total No Models: %1%
      ReferenceModelDesc,                                                     ///< modelica model's Model Description: %1% is a reference model description to be compiled.
      ResultFolder,                                                           ///< results are available in %1%
      RootGeq,                                                                ///< root: %1% ( model: %2%, equation: %3% )
      SVCExtDynModel,                                                         ///< SVC %1% using an external dynamic modelisation : not added to the Network.
      SVCStateChange,                                                         ///< state of SVC %1% change from %2% to %3%
      SetLib,                                                                 ///< setlib: %1% : %2%
      ShuntExtDynModel,                                                       ///< shunt Compensator %1% using an external dynamic modelisation : not added to the Network.
      ShuntStateChange,                                                       ///< state of Shunt %1% change from %2% to %3%
      SimulationStart,                                                        ///< starting simulation with solver %1%
      SolveParameters,                                                        ///< starting local initialization of model %1%
      SolveParametersError,                                                   ///< local initialization of model %1% failed
      SolveParametersFError,                                                  ///< error > %1% : F[%2%] = %3% equation %4%
      SolveParametersOK,                                                      ///< local initialization of model %1% ended successfully
      SolverExecutionStats,                                                   ///< execution statistics :
      SolverIDAAfterInit,                                                     ///< AFTER INIT
      SolverIDABeforeCalcIC,                                                  ///< BEFORE CALC IC
      SolverIDADebugResidual,                                                 ///< DEBUG RESIDUAL
      SolverIDAErrorValue,                                                    ///< error > %1% : variable %2%, error %3%
      SolverIDAInitOk,                                                        ///< initialization of IDA solver : ok
      SolverIDALargestErrors,                                                 ///< largest errors (= total variation during Newton iterations * weight) for variables - truncated to the first %1%
      SolverIDAMaxDiff,                                                       ///< max diff =%1% index =%2%
      SolverIDARestorAlgebraicEqu,                                            ///< restoration of the algebraic equations
      SolverIDAUnknownError,                                                  ///< unknown error during IDA Solve
      SolverInstableRoot,                                                     ///< instability for the root  :%1% switch from %2% to %3%
      SolverInstableRootFound,                                                ///< at least one root is not stable
      SolverKINResidualNorm,                                                  ///< newton iteration %1% : ||F(y_%1%)*Weight||_Infinity = %2% and ||F(y_%1%)*Weight||_2 = %3%
      SolverKINUnknownError,                                                  ///< unknown error during KINSOL Solve
      SolverLargestDeriv,                                                     ///< largest derivative values (truncated to the first %1%) at the current iteration
      SolverLargestDerivValue,                                                ///< YP[%1%]=%2% (variable=%3%)
      SolverNbDiscreteVarsEval,                                               ///< number of discrete variables evaluations   = %1%
      SolverNbErrorTestFail,                                                  ///< number of error test failures              = %1%
      SolverNbIter,                                                           ///< number of time iterations                  = %1%
      SolverNbJacEval,                                                        ///< number of Jacobian evaluations             = %1%
      SolverNbModeEval,                                                       ///< number of mode evaluations                 = %1%
      SolverNbNonLinConvFail,                                                 ///< number of nonlinear convergence failures   = %1%
      SolverNbNonLinIter,                                                     ///< number of nonlinear iterations             = %1%
      SolverNbResEval,                                                        ///< number of residual evaluations             = %1%
      SolverNbRootFuncEval,                                                   ///< number of root functions evaluations       = %1%
      SolverNbYVar,                                                           ///< number of continuous variables : %1%
      SolverNbZVar,                                                           ///< number of discrete variables : %1%
      SolverSIMInitGuessOK,                                                   ///< initial guess of the algebraic solver is accurate, following solver iterations will be skipped until the next mode change
      SolverSIMInitOK,                                                        ///< initialization of SIM solver : ok
      SourceAbovePower,                                                       ///< node: %1% has a load power %2%MW > %3%MW (criteria id: %4%)
      SourcePowerAboveMax,                                                    ///< total load power = %1%MW > %2%MW (criteria id: %3%)
      SourcePowerBelowMin,                                                    ///< total load power = %1%MW < %2%MW (criteria id: %3%)
      SourcePowerTakenIntoAccount,                                            ///< power of %1% %2% was added into the total power sum (criteria id: %3%, power=%4%, V=%5%)
      SourceUnderPower,                                                       ///< node: %1% has a load power %2%MW < %3%MW (criteria id: %4%)
      StaticConnect,                                                          ///< connecting %1%_%2% with %3%
      SubModelExtVar,                                                         ///< subModel : %1%  Var -%2%- is external and not connected
      SubModelFeqFormulaNotExist,                                             ///< failed to retrieve equation %2% of submodel %1%
      SubModelGeqFormulaNotExist,                                             ///< failed to retrieve root equation %2% of submodel %1%
      SubNetwork,                                                             ///< subNetwork[%1%] nbBus = %2%
      SumBusCriteriaIgnored,                                                  ///< sum criteria is not applicable to buses
      SwitchExtDynModel,                                                      ///< switch %1% using an external dynamic modelisation : not added to the Network.
      SwitchOffBus,                                                           ///< switch Off bus : %1%
      SwitchOnBus,                                                            ///< switch ON bus : %1%
      SwitchStateChange,                                                      ///< state of Switch %1% change from %2% to %3%
      TapChangerLocked,                                                       ///< %1%:  Tap changer is blocked
      TfoStateChange,                                                         ///< state of Transformer %1% change from %2% to %3%
      TfoTapChange,                                                           ///< tap of Transformer %1% change from %2% to %3%
      ThreeWTfoExtDynModel,                                                   ///< three Windings Transformer %1% using an external dynamic modelisation : not added to the Network.
      TwoWTfoExtDynModel,                                                     ///< two Windings Transformer %1% using an external dynamic modelisation : not added to the Network.
      UnableToCloseLine,                                                      ///< impossible to close Line %1%,  One of the line terminals is unknown
      UnableToCloseLineSide1,                                                 ///< impossible to close the side 1 of the Line %2%, the terminal 1 is unknown
      UnableToCloseLineSide2,                                                 ///< impossible to close the side 2 of the Line %2%, the terminal 2 is unknown
      UnableToCloseTfo,                                                       ///< impossible to close two windings transformer %1%, one of the terminals is unknown
      UnableToCloseTfoSide1,                                                  ///< impossible to close the side 1 of the two windings transformer %1%, the terminal 1 is unknown
      UnableToCloseTfoSide2,                                                  ///< impossible to close the side 2 of the two windings transformer %1%, the terminal 2 is unknown
      UnexpectedError,                                                        ///< unexpected error
      UnstableRoot,                                                           ///< instability for root  : %1%
      UnstableRootFound,                                                      ///< at least one root is not stable
      ValidatedModel,                                                         ///< model validated: %1%
      VariableNotSet,                                                         ///< %1% : "%3%" is not set for model %2%
      WrongCheckSum,                                                          ///< unable to load dump state : Checksum is different from the registered state (%1%)
      WrongComponentType,                                                     ///< a %1% component has been found in a %2% criteria, it will be ignored
      WrongParameterNum,                                                      ///< unable to load dump state : Number of parameters has change in comparison with the registered state (%1%)
      XmlParsingError,                                                        ///< error while parsing file %1% : %2%
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
