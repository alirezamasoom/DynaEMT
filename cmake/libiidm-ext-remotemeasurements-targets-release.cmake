#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-remotemeasurements" for configuration "Release"
set_property(TARGET iidm-ext-remotemeasurements APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-remotemeasurements PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-remotemeasurements.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-remotemeasurements.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-remotemeasurements )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-remotemeasurements "${_IMPORT_PREFIX}/lib/iidm-ext-remotemeasurements.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-remotemeasurements.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
