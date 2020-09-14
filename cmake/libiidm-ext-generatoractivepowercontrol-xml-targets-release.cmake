#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-generatoractivepowercontrol-xml" for configuration "Release"
set_property(TARGET iidm-ext-generatoractivepowercontrol-xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-generatoractivepowercontrol-xml PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-generatoractivepowercontrol-xml.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm-ext-generatoractivepowercontrol;iidm-xml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-generatoractivepowercontrol-xml.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-generatoractivepowercontrol-xml )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-generatoractivepowercontrol-xml "${_IMPORT_PREFIX}/lib/iidm-ext-generatoractivepowercontrol-xml.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-generatoractivepowercontrol-xml.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
