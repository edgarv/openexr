# Non-standalone CMake file

set (IexTest_SOURCES
  main.cpp
  testBaseExc.cpp testBaseExc.h
)


add_executable (IexTest ${IexTest_SOURCES})
target_link_libraries (IexTest Iex)
add_openexr_test (TestIex IexTest)
