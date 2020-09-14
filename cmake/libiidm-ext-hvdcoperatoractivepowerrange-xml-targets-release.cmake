#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-hvdcoperatoractivepowerrange-xml" for configuration "Release"
set_property(TARGET iidm-ext-hvdcoperatoractivepowerrange-xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-hvdcoperatoractivepowerrange-xml PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcoperatoractivepowerrange-xml.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm-ext-hvdcoperatoractivepowerrange;iidm-xml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcoperatoractivepowerrange-xml.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-hvdcoperatoractivepowerrange-xml )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-hvdcoperatoractivepowerrange-xml "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcoperatoractivepowerrange-xml.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcoperatoractivepowerrange-xml.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
