
#ifndef SUITESPARSE_EXPORT_H
#define SUITESPARSE_EXPORT_H

#ifdef SUITESPARSE_STATIC_DEFINE
#  define SUITESPARSE_EXPORT
#  define SUITESPARSE_NO_EXPORT
#else
#  ifndef SUITESPARSE_EXPORT
#    ifdef suitesparseconfig_EXPORTS
        /* We are building this library */
#      define SUITESPARSE_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define SUITESPARSE_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef SUITESPARSE_NO_EXPORT
#    define SUITESPARSE_NO_EXPORT 
#  endif
#endif

#ifndef SUITESPARSE_DEPRECATED
#  define SUITESPARSE_DEPRECATED __declspec(deprecated)
#endif

#ifndef SUITESPARSE_DEPRECATED_EXPORT
#  define SUITESPARSE_DEPRECATED_EXPORT SUITESPARSE_EXPORT SUITESPARSE_DEPRECATED
#endif

#ifndef SUITESPARSE_DEPRECATED_NO_EXPORT
#  define SUITESPARSE_DEPRECATED_NO_EXPORT SUITESPARSE_NO_EXPORT SUITESPARSE_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef SUITESPARSE_NO_DEPRECATED
#    define SUITESPARSE_NO_DEPRECATED
#  endif
#endif

#endif /* SUITESPARSE_EXPORT_H */
