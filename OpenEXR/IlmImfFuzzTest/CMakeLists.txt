# Non-standalone CMake file

set (SRCS
  fuzzFile.cpp              fuzzFile.h
  main.cpp
  testFuzzDeepScanLines.cpp testFuzzDeepScanLines.h
  testFuzzDeepTiles.cpp     testFuzzDeepTiles.h
  testFuzzScanLines.cpp     testFuzzScanLines.h
  testFuzzTiles.cpp         testFuzzTiles.h
  tmpDir.h
)

add_executable (IlmImfFuzzTest ${SRCS})
target_link_libraries (IlmImfFuzzTest
  Half Iex Imath IlmThread IlmImf ${ZLIB_LIBRARIES})
add_openexr_test (IlmImfFuzzTest IlmImfFuzzTest)
