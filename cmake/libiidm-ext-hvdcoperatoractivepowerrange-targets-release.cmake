#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-hvdcoperatoractivepowerrange" for configuration "Release"
set_property(TARGET iidm-ext-hvdcoperatoractivepowerrange APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-hvdcoperatoractivepowerrange PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcoperatoractivepowerrange.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcoperatoractivepowerrange.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-hvdcoperatoractivepowerrange )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-hvdcoperatoractivepowerrange "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcoperatoractivepowerrange.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcoperatoractivepowerrange.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
