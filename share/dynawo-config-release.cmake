#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Dynawo::dynawo_Common" for configuration "Release"
set_property(TARGET Dynawo::dynawo_Common APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_Common PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_Common.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "dlfcn-win32::dl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_Common.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_Common )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_Common "${_IMPORT_PREFIX}/lib/dynawo_Common.lib" "${_IMPORT_PREFIX}/lib/dynawo_Common.dll" )

# Import target "Dynawo::dynawo_API_PAR" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_PAR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_PAR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_PAR.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_PAR.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_PAR )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_PAR "${_IMPORT_PREFIX}/lib/dynawo_API_PAR.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_PAR.dll" )

# Import target "Dynawo::dynawo_API_TL" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_TL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_TL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_TL.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_TL.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_TL )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_TL "${_IMPORT_PREFIX}/lib/dynawo_API_TL.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_TL.dll" )

# Import target "Dynawo::dynawo_API_CRV" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_CRV APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_CRV PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CRV.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CRV.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_CRV )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_CRV "${_IMPORT_PREFIX}/lib/dynawo_API_CRV.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_CRV.dll" )

# Import target "Dynawo::dynawo_API_CRT" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_CRT APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_CRT PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CRT.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CRT.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_CRT )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_CRT "${_IMPORT_PREFIX}/lib/dynawo_API_CRT.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_CRT.dll" )

# Import target "Dynawo::dynawo_API_FS" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_FS APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_FS PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_FS.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_FS.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_FS )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_FS "${_IMPORT_PREFIX}/lib/dynawo_API_FS.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_FS.dll" )

# Import target "Dynawo::dynawo_API_CSTR" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_CSTR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_CSTR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CSTR.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_CSTR.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_CSTR )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_CSTR "${_IMPORT_PREFIX}/lib/dynawo_API_CSTR.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_CSTR.dll" )

# Import target "Dynawo::dynawo_API_DYD" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_DYD APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_DYD PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_DYD.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_DYD.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_DYD )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_DYD "${_IMPORT_PREFIX}/lib/dynawo_API_DYD.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_DYD.dll" )

# Import target "Dynawo::dynawo_API_EXTVAR" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_EXTVAR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_EXTVAR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_EXTVAR.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXFormatter;XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_EXTVAR.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_EXTVAR )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_EXTVAR "${_IMPORT_PREFIX}/lib/dynawo_API_EXTVAR.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_EXTVAR.dll" )

# Import target "Dynawo::dynawo_API_JOB" for configuration "Release"
set_property(TARGET Dynawo::dynawo_API_JOB APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_API_JOB PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_JOB.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "XMLSAXParser;Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_API_JOB.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_API_JOB )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_API_JOB "${_IMPORT_PREFIX}/lib/dynawo_API_JOB.lib" "${_IMPORT_PREFIX}/lib/dynawo_API_JOB.dll" )

# Import target "Dynawo::dynawo_SolverCommon" for configuration "Release"
set_property(TARGET Dynawo::dynawo_SolverCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_SolverCommon PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverCommon.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverCommon.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_SolverCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_SolverCommon "${_IMPORT_PREFIX}/lib/dynawo_SolverCommon.lib" "${_IMPORT_PREFIX}/lib/dynawo_SolverCommon.dll" )

# Import target "Dynawo::dynawo_SolverKINSOL" for configuration "Release"
set_property(TARGET Dynawo::dynawo_SolverKINSOL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_SolverKINSOL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverKINSOL.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_SolverCommon"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverKINSOL.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_SolverKINSOL )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_SolverKINSOL "${_IMPORT_PREFIX}/lib/dynawo_SolverKINSOL.lib" "${_IMPORT_PREFIX}/lib/dynawo_SolverKINSOL.dll" )

# Import target "Dynawo::dynawo_SolverIDA" for configuration "Release"
set_property(TARGET Dynawo::dynawo_SolverIDA APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_SolverIDA PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverIDA.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_SolverCommon;Dynawo::dynawo_SolverKINSOL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverIDA.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_SolverIDA )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_SolverIDA "${_IMPORT_PREFIX}/lib/dynawo_SolverIDA.lib" "${_IMPORT_PREFIX}/lib/dynawo_SolverIDA.dll" )

# Import target "Dynawo::dynawo_SolverSIM" for configuration "Release"
set_property(TARGET Dynawo::dynawo_SolverSIM APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_SolverSIM PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverSIM.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_API_PAR;Dynawo::dynawo_API_TL;Dynawo::dynawo_SolverCommon;Dynawo::dynawo_SolverKINSOL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SolverSIM.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_SolverSIM )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_SolverSIM "${_IMPORT_PREFIX}/lib/dynawo_SolverSIM.lib" "${_IMPORT_PREFIX}/lib/dynawo_SolverSIM.dll" )

# Import target "Dynawo::dumpSolver" for configuration "Release"
set_property(TARGET Dynawo::dumpSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dumpSolver PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/sbin/dumpSolver.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sbin/dumpSolver.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dumpSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dumpSolver "${_IMPORT_PREFIX}/sbin/dumpSolver.lib" "${_IMPORT_PREFIX}/sbin/dumpSolver.exe" )

# Import target "Dynawo::dynawo_ModelerCommon" for configuration "Release"
set_property(TARGET Dynawo::dynawo_ModelerCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_ModelerCommon PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_ModelerCommon.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_API_PAR;Dynawo::dynawo_API_DYD;Dynawo::dynawo_API_CRV;Dynawo::dynawo_API_FS;Dynawo::dynawo_API_EXTVAR;dlfcn-win32::dl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_ModelerCommon.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_ModelerCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_ModelerCommon "${_IMPORT_PREFIX}/lib/dynawo_ModelerCommon.lib" "${_IMPORT_PREFIX}/lib/dynawo_ModelerCommon.dll" )

# Import target "Dynawo::dynawo_DataInterface" for configuration "Release"
set_property(TARGET Dynawo::dynawo_DataInterface APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_DataInterface PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_DataInterface.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_ModelerCommon;Dynawo::dynawo_API_CRT"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_DataInterface.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_DataInterface )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_DataInterface "${_IMPORT_PREFIX}/lib/dynawo_DataInterface.lib" "${_IMPORT_PREFIX}/lib/dynawo_DataInterface.dll" )

# Import target "Dynawo::dynawo_ModelManager" for configuration "Release"
set_property(TARGET Dynawo::dynawo_ModelManager APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_ModelManager PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_ModelManager.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_API_PAR;Dynawo::dynawo_ModelerCommon;Dynawo::dynawo_SolverKINSOL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_ModelManager.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_ModelManager )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_ModelManager "${_IMPORT_PREFIX}/lib/dynawo_ModelManager.lib" "${_IMPORT_PREFIX}/lib/dynawo_ModelManager.dll" )

# Import target "Dynawo::Modelica_externalC" for configuration "Release"
set_property(TARGET Dynawo::Modelica_externalC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::Modelica_externalC PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/Modelica_externalC.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/Modelica_externalC.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::Modelica_externalC )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::Modelica_externalC "${_IMPORT_PREFIX}/lib/Modelica_externalC.lib" "${_IMPORT_PREFIX}/lib/Modelica_externalC.dll" )

# Import target "Dynawo::dumpModel" for configuration "Release"
set_property(TARGET Dynawo::dumpModel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dumpModel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/sbin/dumpModel.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sbin/dumpModel.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dumpModel )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dumpModel "${_IMPORT_PREFIX}/sbin/dumpModel.lib" "${_IMPORT_PREFIX}/sbin/dumpModel.exe" )

# Import target "Dynawo::generate-preassembled" for configuration "Release"
set_property(TARGET Dynawo::generate-preassembled APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::generate-preassembled PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/sbin/generate-preassembled.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sbin/generate-preassembled.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::generate-preassembled )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::generate-preassembled "${_IMPORT_PREFIX}/sbin/generate-preassembled.lib" "${_IMPORT_PREFIX}/sbin/generate-preassembled.exe" )

# Import target "Dynawo::dynawo_Simulation" for configuration "Release"
set_property(TARGET Dynawo::dynawo_Simulation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_Simulation PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_Simulation.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common;Dynawo::dynawo_SimulationCommon;Dynawo::dynawo_API_JOB;Dynawo::dynawo_API_CRV;Dynawo::dynawo_API_CRT;Dynawo::dynawo_API_PAR;Dynawo::dynawo_API_FS;Dynawo::dynawo_API_TL;Dynawo::dynawo_API_CSTR;Dynawo::dynawo_ModelerCommon;Dynawo::dynawo_DataInterface;Dynawo::dynawo_SolverCommon;iidm-xml;iidm-ext-activeseason-xml;iidm-ext-busbarsectionposition-xml;iidm-ext-connectableposition-xml;iidm-ext-currentlimitsperseason-xml;iidm-ext-generatoractivepowercontrol-xml;iidm-ext-generatorentsoecategory-xml;iidm-ext-generatorstartup-xml;iidm-ext-hvdcangledroopactivepowercontrol-xml;iidm-ext-hvdcoperatoractivepowerrange-xml;iidm-ext-loaddetail-xml;iidm-ext-standbyautomaton-xml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_Simulation.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_Simulation )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_Simulation "${_IMPORT_PREFIX}/lib/dynawo_Simulation.lib" "${_IMPORT_PREFIX}/lib/dynawo_Simulation.dll" )

# Import target "Dynawo::dynawo_SimulationCommon" for configuration "Release"
set_property(TARGET Dynawo::dynawo_SimulationCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_SimulationCommon PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SimulationCommon.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_SimulationCommon.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_SimulationCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_SimulationCommon "${_IMPORT_PREFIX}/lib/dynawo_SimulationCommon.lib" "${_IMPORT_PREFIX}/lib/dynawo_SimulationCommon.dll" )

# Import target "Dynawo::compileModelicaModel" for configuration "Release"
set_property(TARGET Dynawo::compileModelicaModel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::compileModelicaModel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/sbin/compileModelicaModel.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/sbin/compileModelicaModel.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::compileModelicaModel )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::compileModelicaModel "${_IMPORT_PREFIX}/sbin/compileModelicaModel.lib" "${_IMPORT_PREFIX}/sbin/compileModelicaModel.exe" )

# Import target "Dynawo::dynawo_CPPModelsCommon" for configuration "Release"
set_property(TARGET Dynawo::dynawo_CPPModelsCommon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Dynawo::dynawo_CPPModelsCommon PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_CPPModelsCommon.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Dynawo::dynawo_Common"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/dynawo_CPPModelsCommon.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Dynawo::dynawo_CPPModelsCommon )
list(APPEND _IMPORT_CHECK_FILES_FOR_Dynawo::dynawo_CPPModelsCommon "${_IMPORT_PREFIX}/lib/dynawo_CPPModelsCommon.lib" "${_IMPORT_PREFIX}/lib/dynawo_CPPModelsCommon.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
