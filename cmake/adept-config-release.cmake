#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Adept::adept" for configuration "Release"
set_property(TARGET Adept::adept APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Adept::adept PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/adept.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/adept.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Adept::adept )
list(APPEND _IMPORT_CHECK_FILES_FOR_Adept::adept "${_IMPORT_PREFIX}/lib/adept.lib" "${_IMPORT_PREFIX}/bin/adept.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
