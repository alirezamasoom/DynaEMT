#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm" for configuration "Release"
set_property(TARGET iidm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm "${_IMPORT_PREFIX}/lib/iidm.lib" "${_IMPORT_PREFIX}/bin/iidm.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
