#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-generatoractivepowercontrol" for configuration "Release"
set_property(TARGET iidm-ext-generatoractivepowercontrol APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-generatoractivepowercontrol PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-generatoractivepowercontrol.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-generatoractivepowercontrol.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-generatoractivepowercontrol )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-generatoractivepowercontrol "${_IMPORT_PREFIX}/lib/iidm-ext-generatoractivepowercontrol.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-generatoractivepowercontrol.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
