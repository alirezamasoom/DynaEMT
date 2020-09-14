#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-currentlimitsperseason-xml" for configuration "Release"
set_property(TARGET iidm-ext-currentlimitsperseason-xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-currentlimitsperseason-xml PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-currentlimitsperseason-xml.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm-ext-currentlimitsperseason;iidm-xml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-currentlimitsperseason-xml.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-currentlimitsperseason-xml )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-currentlimitsperseason-xml "${_IMPORT_PREFIX}/lib/iidm-ext-currentlimitsperseason-xml.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-currentlimitsperseason-xml.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
