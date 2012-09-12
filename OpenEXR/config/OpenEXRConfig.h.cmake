//
// Define and set to 1 if the target system supports a proc filesystem
// compatible with the Linux kernel's proc filesystem.  Note that this
// is only used by a program in the IlmImfTest test suite, it's not
// used by any OpenEXR library or application code.
//

#cmakedefine HAVE_LINUX_PROCFS @HAVE_LINUX_PROCFS@

//
// Define and set to 1 if the target system is a Darwin-based system
// (e.g., OS X).
//

#cmakedefine HAVE_DARWIN @HAVE_DARWIN@

//
// Define and set to 1 if the target system has a complete <iomanip>
// implementation, specifically if it supports the std::right
// formatter.
//

#cmakedefine HAVE_COMPLETE_IOMANIP @HAVE_COMPLETE_IOMANIP@

//
// Define and set to 1 if the target system has support for large
// stack sizes.
//

#cmakedefine HAVE_LARGE_STACK @HAVE_LARGE_STACK@

//
// Version string for runtime access
//
#cmakedefine OPENEXR_VERSION_STRING @OPENEXR_VERSION_STRING@
#cmakedefine OPENEXR_PACKAGE_STRING @OPENEXR_PACKAGE_STRING@
