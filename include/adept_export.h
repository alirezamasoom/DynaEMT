
#ifndef ADEPT_EXPORT_H
#define ADEPT_EXPORT_H

#ifdef ADEPT_STATIC_DEFINE
#  define ADEPT_EXPORT
#  define ADEPT_NO_EXPORT
#else
#  ifndef ADEPT_EXPORT
#    ifdef adept_EXPORTS
        /* We are building this library */
#      define ADEPT_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define ADEPT_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef ADEPT_NO_EXPORT
#    define ADEPT_NO_EXPORT 
#  endif
#endif

#ifndef ADEPT_DEPRECATED
#  define ADEPT_DEPRECATED __declspec(deprecated)
#endif

#ifndef ADEPT_DEPRECATED_EXPORT
#  define ADEPT_DEPRECATED_EXPORT ADEPT_EXPORT ADEPT_DEPRECATED
#endif

#ifndef ADEPT_DEPRECATED_NO_EXPORT
#  define ADEPT_DEPRECATED_NO_EXPORT ADEPT_NO_EXPORT ADEPT_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef ADEPT_NO_DEPRECATED
#    define ADEPT_NO_DEPRECATED
#  endif
#endif

#endif /* ADEPT_EXPORT_H */
