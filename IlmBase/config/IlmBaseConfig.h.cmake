//
// Define and set to 1 if the target system has POSIX thread support
// and you want IlmBase to use it for multithreaded file I/O.
//

#cmakedefine HAVE_PTHREAD @HAVE_PTHREAD@

//
// Define and set to 1 if the target system supports POSIX semaphores
// and you want OpenEXR to use them; otherwise, OpenEXR will use its
// own semaphore implementation.
//

#cmakedefine HAVE_POSIX_SEMAPHORES @HAVE_POSIX_SEMAPHORES@

#cmakedefine HAVE_UCONTEXT_H @HAVE_UCONTEXT_H@

//
// Define and set to 1 if the target system has support for large
// stack sizes.
//

#cmakedefine ILMBASE_HAVE_LARGE_STACK @ILMBASE_HAVE_LARGE_STACK@


//
// Version string for runtime access
//
#cmakedefine ILMBASE_VERSION_STRING @ILMBASE_VERSION_STRING@
#cmakedefine ILMBASE_PACKAGE_STRING @ILMBASE_PACKAGE_STRING@
