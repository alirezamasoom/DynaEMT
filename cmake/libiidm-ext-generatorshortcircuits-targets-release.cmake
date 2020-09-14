#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "iidm-ext-generatorshortcircuits" for configuration "Release"
set_property(TARGET iidm-ext-generatorshortcircuits APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(iidm-ext-generatorshortcircuits PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/iidm-ext-generatorshortcircuits.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "iidm"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/iidm-ext-generatorshortcircuits.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS iidm-ext-generatorshortcircuits )
list(APPEND _IMPORT_CHECK_FILES_FOR_iidm-ext-generatorshortcircuits "${_IMPORT_PREFIX}/lib/iidm-ext-generatorshortcircuits.lib" "${_IMPORT_PREFIX}/bin/iidm-ext-generatorshortcircuits.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
