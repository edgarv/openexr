# Non-standalone CMake file

set (HalfTest_SOURCES
  main.cpp
  testArithmetic.cpp     testArithmetic.h
  testBitPatterns.cpp    testBitPatterns.h
  testClassification.cpp testClassification.h
  testError.cpp          testError.h
  testFunction.cpp       testFunction.h
  testLimits.cpp         testLimits.h
  testSize.cpp           testSize.h
)

add_executable (HalfTest ${HalfTest_SOURCES})
target_link_libraries (HalfTest Half)
add_openexr_test (TestHalf HalfTest)
