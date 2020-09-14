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
#ifndef DYNERROR_KEYS_H
#define DYNERROR_KEYS_H
#include <string>
namespace DYN {

  ///< struct of KeyError to declare enum values and names associated to the enum to be used in dynawo
  struct KeyError_t
  {
    ///< enum of possible key for Error
    enum value
    {
      AdeptFailure,                                                           ///< an error happened during Jacobian evaluation by adept
      AliasNotFound,                                                          ///< model (%1%): alias %2% not found
      AlreadyDefinedEdge,                                                     ///< edge %1% already defined in graph
      ArchFileError,                                                          ///< error during the close of the archives file
      AutomatonMaximumInputSizeReached,                                       ///< automaton %1% has more inputs defined (%2%) than the maximum (%3%)
      AutomatonMaximumOutputSizeReached,                                      ///< automaton %1% has more outputs defined (%2%) than the maximum (%3%)
      CompilationFailed,                                                      ///< failed to compile : %1% => exit
      CompileModel,                                                           ///< no compiled Model for this model (%1%)
      ConcatModelNotModelica,                                                 ///< concatModel: %1% : model is not a modelica model nor a model template.
      ConcatNetworkConnector,                                                 ///< concatenating dynamic connect: %1% %2% %3% %4%. Connector is a NetworkConnector, should not be concatenated here.
      ConcatParamsNotModelica,                                                ///< concatParams: %1% : model is not a modelica model.
      ConnectedModelNotFound,                                                 ///< connected sub model %1% not found in modelica model
      ConnectorBadInfo,                                                       ///< failed to retrieve connector information for %1% %2%
      ConnectorCalculatedVariables,                                           ///< impossible to have connection between two calculated variables (%1%-%2% and %3%-%4%)
      ConnectorError,                                                         ///< error during the connection to a calculated variable : %1%
      ConnectorFail,                                                          ///< connection between model %1% variable( %2% ) of type %3% and model %4% variable (%5%) of type %6% is impossible
      ConnectorIDNotUnique,                                                   ///< connectorID for model %1% (first = "%2%", second = "%3%") is not unique
      ConnectorNotPartofModel,                                                ///< impossible to create connection between %1% and %2% for model %3% (%1% is not a sub model of %3%)
      ConnectorVarNotFound,                                                   ///< unable to find %1% variable when trying to connect model %2%
      ConverterWrongType,                                                     ///< wrong converter type for converter %1%
      ConvertersModeError,                                                    ///< hvdc id '%1%' converters control mode is missing or wrong
      CreateDirectoryFailed,                                                  ///< unable to create directory %1%
      CriteriaNotChecked,                                                     ///< one simulation's criteria is not respected
      DumpStateError,                                                         ///< size of the dump state is inconsistent
      DuplicateLibFile,                                                       ///< duplicate %1% => exit
      DuplicateModelicaModel,                                                 ///< duplicate %1%
      DynamicLineStatusNotSupported,                                          ///< connection status (CLOSED_1 or CLOSED_2) not supported for dynamic line %1%
      EmptyConnector,                                                         ///< empty continuous connector found
      ErrorInit,                                                              ///< error happened during the initialization of model %1% named %2%
      ExternalVariableAttributeNotDefined,                                    ///< external variable (%1%) does not have a value for the attribute "%2%"
      ExternalVariableAttributeOnlyForArray,                                  ///< external variable (%1%) could not have the attribute "%2%", only defined for array variable
      ExternalVariableIDNotUnique,                                            ///< external variable id (%1%) is not unique
      FileGenerationFailed,                                                   ///< failed to generate %1%
      FileSystemItemDoesNotExist,                                             ///< %1% does not exist
      FlowConnectionMixedSystemAndInternal,                                   ///< the system flow connection %1%_%2%->%3%_%4% is also connected inside a modelica model which is forbidden. Please merge the models inside a single modelica model.
      FuncNotYetCoded,                                                        ///< this method can't be used : no code associated
      FunctionNotAvailable,                                                   ///< INIT reference parameter: function is not available
      GZReadErrorOnFile,                                                      ///< unexpected error while reading compressed file %1%
      IncompleteDump,                                                         ///< incomplete dump
      IncompleteMacroConnection,                                              ///< macroConnect between %1% and %2% using macroConnector %3% : %4% is required
      InternalConnectDoneInSystem,                                            ///< fully internal connect should not be used within system connects (%1%.%2%<->%3%.%4%)
      InvalidDerivativeType,                                                  ///< derivative type %1% is invalid
      InvalidDynamicConnect,                                                  ///< invalid dynamic connect between %1%_%2% and %3%_%4% : %5% is unknown
      InvalidSeverityLevel,                                                   ///< severity level %1% invalid
      InvalidStaticConnect,                                                   ///< invalid static connect between %1%_%2% and %3%_%4%
      JacobianWithNanInf,                                                     ///< jacobian is a NaN or an Inf in Model %1% (type:%2%, staticId:%3%). (Equation F[%4%]: %5%. Variable x[%6%])
      JobsFileBadlyFormattedDirectory,                                        ///< jobs file not well formatted : directory items are not relevant where they are written
      JobsFileBadlyFormattedDumpInit,                                         ///< jobs file not well formatted : DumpInitValues items are not relevant where they are written
      LibraryLoadFailure,                                                     ///< an error happened during the load of the library %1%
      MacroConnectIDNotUnique,                                                ///< macro connect id (%1%) is not unique
      MacroConnectNotPartofModel,                                             ///< impossible to create macroConnect between %1% and %2% for model %3% (%1% is not a sub model of %3%)
      MacroConnectionIDNotUnique,                                             ///< macro connection %1% is not unique
      MacroConnectorIDNotUnique,                                              ///< macro connector id (%1%) is not unique
      MacroConnectorUndefined,                                                ///< macro connector id (%1%) is not defined
      MacroStaticRefNotUnique,                                                ///< macroStaticRef for model %1% ( id = "%2%") is not unique
      MacroStaticRefUndefined,                                                ///< macroStaticRef (id = "%1%") is not defined
      MacroStaticReferenceNotUnique,                                          ///< macroStaticReference (id = "%1%") is not unique
      MacroStaticReferenceUndefined,                                          ///< macroStaticReference (id = "%1%") is not defined
      MismatchingVariableSizes,                                               ///< the number of %1% variables and corresponding size are different in model %2% (%3% != %4%)
      MissingDYDInitName,                                                     ///< modelica initialization model name (attribute 'initName' in the dyd file) is missing for %1%
      MissingEnvironmentVariable,                                             ///< mandatory environment variable %1% is not defined
      MissingModelicaFile,                                                    ///< one Modelica file is missing : %1%
      MissingModelicaInputFolder,                                             ///< input folder is missing : %1%
      MissingParameterFile,                                                   ///< missing 'parFile' attribute for model %1% in the dyd file (whereas 'parId' is defined)
      MissingParameterId,                                                     ///< missing 'parId' attribute for model %1% in the dyd file (whereas 'parFile' is defined)
      MissingTargetVInRatioTapChanger,                                        ///< ratio tap changer of %1% has the attribute 'regulating' set to true but no targetV attribute in the static format (iidm)
      MissingTerminalRefInRatioTapChanger,                                    ///< ratio tap changer of %1% has the attribute 'regulating' set to true but no terminalRef in the static format (iidm)
      MissingTerminalRefSideInRatioTapChanger,                                ///< ratio tap changer of %1% has the attribute 'regulating' set to true but no side defined in its terminalRef in the static format (iidm)
      ModelCompilationFailed,                                                 ///< compilation of %1% failed
      ModelFuncError,                                                         ///< error during execution : %1%
      ModelIDNotUnique,                                                       ///< model id (%1%) is not unique
      ModelIncompleteDump,                                                    ///< incomplete dump : miss one file : %1%
      ModelicaError,                                                          ///< unexpected error while using Modelica library: %1%
      ModelicaPackageBadStructure,                                            ///< bad Modelica package structure (%1%)
      MultiIncorrectConnection,                                               ///< impossible to connect two elements : %1%
      MultiIncorrectSize,                                                     ///< vector size is not the one expected
      MultiSubModelNotFound,                                                  ///< model %1% named %2% not found (research key %3%)
      MultipleAndHiddenErrors,                                                ///< first %1% errors displayed above
      MultipleErrors,                                                         ///< %1% errors were found and displayed above
      NanValue,                                                               ///< error when calculating F function for model %2% (index %1%) : find a NaN (Not a Number)
      NetworkParameterNotFoundFor,                                            ///< parameter not found for network model %1%
      NetworkUndefCalculatedVar,                                              ///< calculated Variable definition does not exist for variable num %1%
      NoExtension,                                                            ///< access to attribute %1% impossible because %2% extension is not loaded
      NoInitModel,                                                            ///< no init model of model %1% named %2%
      NoJobDefined,                                                           ///< no job found in the .jobs file
      NoThirdSide,                                                            ///< component %1% does not have a third terminal
      NotBlackBoxModel,                                                       ///< compiling BlackBoxModel Description: %1% : model is not a black box model.
      NotModelTemplate,                                                       ///< compiling ModelTemplate Description: %1% : model is not a model template.
      NotModelTemplateExpansion,                                              ///< compiling ModelTemplateExpansion Description: %1% : model is not a model template expansion.
      NotModelicaModel,                                                       ///< compiling ModelicaModel Description: %1% : model is not a modelica model.
      NumericalErrorFunction,                                                 ///< A numerical error occurs during the call of the function '%1%'
      OMCompilationFailed,                                                    ///< compilation of %1% failed with the following OpenModelica errors: %2%
      OpenFileFailed,                                                         ///< failed to open file %1%
      Origin2StrUnableToConvert,                                              ///< unable to convert %1% origin to string
      PARXmlSizeOfEnumParamType,                                              ///< parameter type should not be SIZE_OF_ENUM
      ParameterAliasFailed,                                                   ///< failed to create alias %1% (linked with %2%) in set %3%
      ParameterAlreadyExists,                                                 ///< the %1% parameter already exists
      ParameterAlreadyInSet,                                                  ///< the parameter %1% already exists in set %2%
      ParameterBadCast,                                                       ///< unable to cast the value of the parameter %1% (type '%2%')
      ParameterBadType,                                                       ///< parameter %1% has a bad type
      ParameterCardinalityBadType,                                            ///< the %1% parameter %2% cardinality should be an integer but is a %3%
      ParameterCardinalityNotDefined,                                         ///< failed to retrieve parameter %1% cardinality (%2%)
      ParameterDeclaredTwice,                                                 ///< model (%1%): parameter %2% is declared twice: once in par file and once in init model
      ParameterHasNoIndex,                                                    ///< parameter %1% has no index
      ParameterHasNoValue,                                                    ///< parameter %1% has no value
      ParameterIndexAlreadySet,                                               ///< parameter %1% index has already been set
      ParameterInvalidTypeRequested,                                          ///< invalid parameter type in request of %1% (expected %3%, got %2%, warning with string you need to explicitly cast the parameter given to newParameter)
      ParameterNoCardinalityInformator,                                       ///< no cardinality information for parameter %1%
      ParameterNoTypeDetected,                                                ///< no type detected for parameter %1%
      ParameterNoWriteRights,                                                 ///< failed to set %1% parameter value for the %2% origin (due to its %3% scope)
      ParameterNotDefined,                                                    ///< parameter %1% has not been defined
      ParameterNotFoundInSet,                                                 ///< parameter %1% not found in set %2%
      ParameterNotReadFromOrigin,                                             ///< failed to retrieve parameters values : the origin %1% data has not been retrieved yet for parameter %2%
      ParameterNotReadInPARFile,                                              ///< value of parameter %1% could not be read from PAR file
      ParameterNotUnitary,                                                    ///< parameter %1% is not unitary (cardinality > 1)
      ParameterStaticIdNotFound,                                              ///< could not find reference parameter with origName '%1%' and name '%2%' for %3%
      ParameterUnableToConvertToDouble,                                       ///< unable to convert %1% parameter to double because it is of %2% type
      ParameterUnitary,                                                       ///< parameter %1% is unitary (cardinality = 1)
      ParameterUnknownType,                                                   ///< unknown type for parameter %2% of unit dynamic model %1%
      ParameterWrongTypeReference,                                            ///< wrong type for reference parameter: %1%
      ParametersSetAlreadyExists,                                             ///< parameters set with id %1% already available in collection
      ParametersSetNotFound,                                                  ///< parameters set %1% not found
      ReferenceAlreadySet,                                                    ///< reference %1% is already set
      ReferenceNotFoundInSet,                                                 ///< reference %1% is not found in set %2%
      ReferenceUnknownOriginData,                                             ///< origin data %1% is not allowed for references
      RegulationModeNotInIIDM,                                                ///< control mode calculated by the dynamic simulation (%1%) for component %2% does not exist in the static format (iidm)
      ResidualWithNanInf,                                                     ///< residual is a NaN or an Inf in Model %1% (type:%2%, staticId:%3%). (Equation F[%4%]: %5%.)
      SignalReceived,                                                         ///< simulation interrupted by external signal
      SlowStepIncrease,                                                       ///< slow increase step simulation => end the simulation
      SolverCreateAcc,                                                        ///< impossible to create the accuracy vector
      SolverCreateID,                                                         ///< impossible to create the ID vector
      SolverCreateKINSOL,                                                     ///< impossible to create the KINSOL's structure
      SolverCreateYP,                                                         ///< impossible to create the YP vector
      SolverCreateYY,                                                         ///< impossible to create the YY vector
      SolverCreateYZ,                                                         ///< impossible to create the YZ vector
      SolverEmptyYVector,                                                     ///< impossible to create the KINSOL's structure : no continuous variable in simulated problem
      SolverFuncErrorIDA,                                                     ///< error during the call of IDA's function (%1%)
      SolverFuncErrorKINSOL,                                                  ///< error during the call of KINSOL's function (%1%)
      SolverIDAError,                                                         ///< IDA fails to solve the equations
      SolverIDANoContinuousVars,                                              ///< solverIDA cannot solve simulated problem without continuous variable. Please use SolverSIM.
      SolverIDAStepZero,                                                      ///< cj can't be equal to zero
      SolverIDAUnstableRoots,                                                 ///< roots are unstable during the solve of the equation by the solver IDA
      SolverInitKINSOL,                                                       ///< error during the KINSOL's intialization
      SolverSIMConvFail,                                                      ///< solverSIM fails to converge while the max number of try (%1%) is reached
      SolverSIMConvFailMin,                                                   ///< solverSIM fails to converge while minimum step size is reached
      SolverSIMUnstableRoots,                                                 ///< roots are unstable during the solve of the equation by the solver SIM
      SolverScalingErrorKINSOL,                                               ///< error during the creation of scaling vector
      SolverSolveErrorKINSOL,                                                 ///< KINSOL fails to solve the problem
      SolverSubModelYvsF,                                                     ///< model's initialisation %1% :  Variables number %2% not equals to the equations number %3%
      SolverUnbalanced,                                                       ///< the number of algebraic/differential variables is different from the number of algebraic/differential equations in the simulated problem
      SolverUnstableZMode,                                                    ///< discrete events are unstable during the solve of the equation
      SolverYvsF,                                                             ///< variables number %1% not equals to the equations number %2%
      SparseMatrixWithNanInf,                                                 ///< error when calculating Jacobian matrix for model %1% named %2% : find a NaN (Not a Number) or an Inf
      StateVariableBadCast,                                                   ///< unable to cast the value of the state variable '%1%' (type '%2%')
      StateVariableNoReference,                                               ///< state variable '%1%' of component '%2%' has no reference/model
      StateVariableWrongType,                                                 ///< unable to set the value of the state variable '%1%' (expected type '%2%', used type '%3%')
      StaticParameterBadCast,                                                 ///< unable to cast the value of the static parameter '%1%' (type '%2%')
      StaticParameterWrongType,                                               ///< unable to set the value of the static parameter '%1%' (expected type '%2%', used type '%3%')
      StaticRefNotUnique,                                                     ///< staticRef for model %1% (var = "%2%", staticVar = "%3%") is not unique
      StaticRefNotUniqueInMacro,                                              ///< staticRef for macroStaticReference %1% (var = "%2%", staticVar = "%3%") is not unique
      StaticRefUndefined,                                                     ///< staticRef (%1%) is not defined
      SubModelBadVariableTypeForVariableIndex,                                ///< failed to compute global variable index for %1% - %3% (of type %2%)
      SubModelIncorrectSize,                                                  ///< vector size is not the one expected
      SubModelUnknownElement,                                                 ///< subModel %1% (type %2%) : There is no element %3% in the mapElement of the model
      SubModelUnknownVariable,                                                ///< subModel %1% (type %2%) has not variable %3%
      SwitchMissingBus1,                                                      ///< SWITCH %1% : bus 1 is missing
      SwitchMissingBus2,                                                      ///< SWITCH %1% : bus 2 is missing
      SystemCallFailed,                                                       ///< call to %1% failed with error '%2%'
      SystemInitConnectorForbidden,                                           ///< system macro connector id (%1%) could not have an init connection
      TerminateInModel,                                                       ///< simulation interrupted by model %1% : %2%
      TooMuchSubNetwork,                                                      ///< number of subNetwork to simulate (%1%) is larger than the number allowed (%2%)
      TypeVarCUnableToConvert,                                                ///< unable to convert %1% string to C variable type
      UDMUndefined,                                                           ///< trying to retrieve a unit dynamic model (%1%) which does not exist in model %2%
      UnableToFindLib,                                                        ///< unable to find lib %1%
      UnaffectedStateVariable,                                                ///< state variable '%1%' of component '%2%' has no value
      UnaffectedStaticParameter,                                              ///< static parameter '%1%' of component '%2%' has no value
      UndefCalculatedVar,                                                     ///< index of the calculated variable which we want connect is undefined
      UndefCalculatedVarI,                                                    ///< evalCalculatedVarI is not defined for this variable %1%
      UndefJCalculatedVarI,                                                   ///< getDefJCalculatedVarI is not defined for this variable %1%
      UndefinedComponentState,                                                ///< component %1% 's state is not defined
      UndefinedNominalV,                                                      ///< VOLTAGE LEVEL %1% : nominal value is undefined or badly defined (< 0)
      UndefinedStep,                                                          ///< step %1% does not exist for tap changer %2%
      UnitModelIDSameAsModelName,                                             ///< unitDynamicModel %1% id should be different from modelicaModel id
      UnitModelIDSameAsUnitModelName,                                         ///< unitDynamicModel %1% id should be different from its name
      UnknownAutomatonOutput,                                                 ///< output %2% of automaton %1% does not exist
      UnknownBus,                                                             ///< bus id '%1%' does not exist in the iidm import
      UnknownCalculatedBus,                                                   ///< calculated bus associated to '%1%' node '%2%' does not exist in the iidm import
      UnknownComponent,                                                       ///< component '%1%' does not exist in the network's model
      UnknownConstraintsExport,                                               ///< unknown constraints export mode : %1%
      UnknownCurveFile,                                                       ///< missing curves parameters file : %1%
      UnknownCurvesExport,                                                    ///< unknown curves export mode : %1%
      UnknownDydFile,                                                         ///< missing DYD file : %1%
      UnknownFinalStateExport,                                                ///< unknown final state export mode : %1%
      UnknownFinalStateFile,                                                  ///< missing final state parameters file : %1%
      UnknownIidmFile,                                                        ///< missing IIDM file : %1%
      UnknownInitialStateFile,                                                ///< missing initial state file : %1%
      UnknownModelFile,                                                       ///< modelica file(s) %1% not found neither in standard library nor user defined path. Use "useStandardModels="true"" or add a directory in the corresponding modelicaModels in the jobs file.
      UnknownModelsDir,                                                       ///< failed to locate the models directory : %1%
      UnknownParFile,                                                         ///< unable to find the parFile : %1% in the parDir : %2%
      UnknownParSet,                                                          ///< unable to find the parSet num %2% in the parFile %1%
      UnknownStateVariable,                                                   ///< state variable '%1%' of component '%2%' is unknown
      UnknownStaticComponent,                                                 ///< static id  '%1%' does not exist in the iidm import
      UnknownStaticParameter,                                                 ///< static parameter '%1%' of component '%2%' is unknown
      UnknownTimelineExport,                                                  ///< unknown timeline export mode : %1%
      UnknownVertex,                                                          ///< vertex %1% is unknown in graph
      UnknownVoltageLevel,                                                    ///< voltageLevel id '%1%' does not exist in the iidm import
      UnstableRoots,                                                          ///< roots are unstable during the solve of the parameter's value
      UnsupportedComponentState,                                              ///< component %1% 's state is not supported
      VariableAliasIncoherentType,                                            ///< type %1% of alias %2% is not compatible with type %3% of reference variable %4%
      VariableAliasRefIncoherent,                                             ///< failed to set reference variable for alias %1% : expected %2% but got %3% instead
      VariableAliasRefNotNative,                                              ///< failed to set reference variable for alias %1% : the %2% reference is not a native variable
      VariableAliasRefNotSet,                                                 ///< failed to retrieve reference variable %2% for alias %1%
      VariableCardinalityNotSet,                                              ///< failed to retrieve multiple variable's cardinality for %1% : the %2% cardinality parameter is not set
      VariableMultipleHasNoIndex,                                             ///< failed to retrieve index for %1% : multiple variables have no index
      VariableNativeIndexAlreadySet,                                          ///< failed to set native variable %1% index : it is already set
      VariableNativeIndexNotSet,                                              ///< failed to retrieve native variable %1% index (not set yet)
      VoltageLevelBBSError,                                                   ///< VOLTAGE LEVEL %1% : error while looking for the closest bus bar section
      VoltageLevelGraphUndefined,                                             ///< VOLTAGE LEVEL %1% : graph is undefined
      VoltageLevelTopoError,                                                  ///< topology of voltage level with id '%1%' is missing or wrong
      WrongCheckSum,                                                          ///< unable to load dump state : Checksum is different from the registered state (%1%)
      WrongConnect,                                                           ///< missing connection for one/several external variable(s)
      WrongConnectTwoUnknownNodes,                                            ///< unable to connect %1% %2% with %3% %4% : at least, one node should be known
      WrongDataNum,                                                           ///< unable to load dump state : Number of parameters has change in comparison with the registered state (%1%)
      WrongDynamicCast,                                                       ///< impossible dynamic cast
      WrongIIDMDataForHVDC,                                                   ///< wrong iidm data for hvdc line %1% (converter missing or wrong id)
      WrongLinearSolverChoice,                                                ///< the linear solver name provided is not valid
      WrongReferenceId,                                                       ///< static's id of the model '%1%' is unset
      WrongStartTime,                                                         ///< simulation's start time (%1%) should be equal to %2% (last time in dumpFile or 0 if there is no dump)
      XercesHandler,                                                          ///< fatal error: %1% at line %2%
      XmlFileParsingError,                                                    ///< error while parsing file %1% : %2%
      XmlParsingError,                                                        ///< error while parsing stream %1%
      XmlUtilsLoadSchema,                                                     ///< unable to load XML schema %1%
      XmlUtilsXercesInit,                                                     ///< error during Xerces initialization
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
