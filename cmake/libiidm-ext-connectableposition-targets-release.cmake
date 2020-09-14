#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-connectableposition" for configuration "Release"
set_property(TARGET iidm-ext-connectableposition APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-connectableposition PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-connectableposition.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-connectableposition.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-connectableposition )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-connectableposition "${_IMPORT_PREFIX}/lib/iidm-ext-connectableposition.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-connectableposition.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
