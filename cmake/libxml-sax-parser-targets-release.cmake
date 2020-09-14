#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "XMLSAXParser" for configuration "Release"
set_property(TARGET XMLSAXParser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(XMLSAXParser PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/XMLSAXParser.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "XercesC::XercesC"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/XMLSAXParser.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS XMLSAXParser )
list(APPEND _IMPORT_CHECK_FILES_FOR_XMLSAXParser "${_IMPORT_PREFIX}/lib/XMLSAXParser.lib" "${_IMPORT_PREFIX}/bin/XMLSAXParser.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
