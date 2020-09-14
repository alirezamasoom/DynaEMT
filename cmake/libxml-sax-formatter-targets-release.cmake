#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "XMLSAXFormatter" for configuration "Release"
set_property(TARGET XMLSAXFormatter APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(XMLSAXFormatter PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/XMLSAXFormatter.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/XMLSAXFormatter.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS XMLSAXFormatter )
list(APPEND _IMPORT_CHECK_FILES_FOR_XMLSAXFormatter "${_IMPORT_PREFIX}/lib/XMLSAXFormatter.lib" "${_IMPORT_PREFIX}/bin/XMLSAXFormatter.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
