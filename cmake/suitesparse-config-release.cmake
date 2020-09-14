#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::suitesparseconfig" for configuration "Release"
set_property(TARGET SuiteSparse::suitesparseconfig APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SuiteSparse::suitesparseconfig PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/suitesparseconfig.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/suitesparseconfig.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SuiteSparse::suitesparseconfig )
list(APPEND _IMPORT_CHECK_FILES_FOR_SuiteSparse::suitesparseconfig "${_IMPORT_PREFIX}/lib/suitesparseconfig.lib" "${_IMPORT_PREFIX}/bin/suitesparseconfig.dll" )

# Import target "SuiteSparse::amd" for configuration "Release"
set_property(TARGET SuiteSparse::amd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SuiteSparse::amd PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libamd.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libamd.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SuiteSparse::amd )
list(APPEND _IMPORT_CHECK_FILES_FOR_SuiteSparse::amd "${_IMPORT_PREFIX}/lib/libamd.lib" "${_IMPORT_PREFIX}/bin/libamd.dll" )

# Import target "SuiteSparse::btf" for configuration "Release"
set_property(TARGET SuiteSparse::btf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SuiteSparse::btf PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libbtf.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libbtf.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SuiteSparse::btf )
list(APPEND _IMPORT_CHECK_FILES_FOR_SuiteSparse::btf "${_IMPORT_PREFIX}/lib/libbtf.lib" "${_IMPORT_PREFIX}/bin/libbtf.dll" )

# Import target "SuiteSparse::colamd" for configuration "Release"
set_property(TARGET SuiteSparse::colamd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SuiteSparse::colamd PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libcolamd.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libcolamd.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SuiteSparse::colamd )
list(APPEND _IMPORT_CHECK_FILES_FOR_SuiteSparse::colamd "${_IMPORT_PREFIX}/lib/libcolamd.lib" "${_IMPORT_PREFIX}/bin/libcolamd.dll" )

# Import target "SuiteSparse::klu" for configuration "Release"
set_property(TARGET SuiteSparse::klu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SuiteSparse::klu PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libklu.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libklu.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS SuiteSparse::klu )
list(APPEND _IMPORT_CHECK_FILES_FOR_SuiteSparse::klu "${_IMPORT_PREFIX}/lib/libklu.lib" "${_IMPORT_PREFIX}/bin/libklu.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
