#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-generatorstartup" for configuration "Release"
set_property(TARGET iidm-ext-generatorstartup APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-generatorstartup PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-generatorstartup.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-generatorstartup.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-generatorstartup )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-generatorstartup "${_IMPORT_PREFIX}/lib/iidm-ext-generatorstartup.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-generatorstartup.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
