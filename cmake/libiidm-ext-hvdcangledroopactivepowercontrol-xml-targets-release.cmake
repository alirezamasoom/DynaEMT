#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-hvdcangledroopactivepowercontrol-xml" for configuration "Release"
set_property(TARGET iidm-ext-hvdcangledroopactivepowercontrol-xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-hvdcangledroopactivepowercontrol-xml PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcangledroopactivepowercontrol-xml.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm-ext-hvdcangledroopactivepowercontrol;iidm-xml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcangledroopactivepowercontrol-xml.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-hvdcangledroopactivepowercontrol-xml )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-hvdcangledroopactivepowercontrol-xml "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcangledroopactivepowercontrol-xml.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcangledroopactivepowercontrol-xml.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
