#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-hvdcangledroopactivepowercontrol" for configuration "Release"
set_property(TARGET iidm-ext-hvdcangledroopactivepowercontrol APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-hvdcangledroopactivepowercontrol PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcangledroopactivepowercontrol.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcangledroopactivepowercontrol.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-hvdcangledroopactivepowercontrol )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-hvdcangledroopactivepowercontrol "${_IMPORT_PREFIX}/lib/iidm-ext-hvdcangledroopactivepowercontrol.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-hvdcangledroopactivepowercontrol.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
