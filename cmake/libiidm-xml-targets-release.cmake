#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-xml" for configuration "Release"
set_property(TARGET iidm-xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-xml PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-xml.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm;XMLSAXFormatter;XMLSAXParser"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-xml.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-xml )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-xml "${_IMPORT_PREFIX}/lib/iidm-xml.lib" "${_IMPORT_PREFIX}/bin/iidm-xml.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
