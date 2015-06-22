# Non-standalone CMake file

option(OPENEXR_BUILD_IMFHUGETEST
  "Build IlmImf huge input resilience test" OFF)
if (OPENEXR_BUILD_IMFHUGETEST)
  add_definitions(-DENABLE_IMFHUGETEST)
endif()

set (IlmImfTest_SOURCES
  compareDwa.cpp
  main.cpp
  tmpDir.h
  compareB44.cpp                     compareB44.h
  compareFloat.cpp                   compareFloat.h
  testAttributes.cpp                 testAttributes.h
  testBackwardCompatibility.cpp      testBackwardCompatibility.h
  testBadTypeAttributes.cpp          testBadTypeAttributes.h
  testChannels.cpp                   testChannels.h
  testCompositeDeepScanLine.cpp      testCompositeDeepScanLine.h
  testCompression.cpp                testCompression.h
  testConversion.cpp                 testConversion.h
  testCopyDeepScanLine.cpp           testCopyDeepScanLine.h
  testCopyDeepTiled.cpp              testCopyDeepTiled.h
  testCopyMultiPartFile.cpp          testCopyMultiPartFile.h
  testCopyPixels.cpp                 testCopyPixels.h
  testCustomAttributes.cpp           testCustomAttributes.h
  testDeepScanLineBasic.cpp          testDeepScanLineBasic.h
  testDeepScanLineHuge.cpp           testDeepScanLineHuge.h
  testDwaCompressorSimd.cpp          testDwaCompressorSimd.h
  testDeepScanLineMultipleRead.cpp   testDeepScanLineMultipleRead.h
  testDeepTiledBasic.cpp             testDeepTiledBasic.h
  testExistingStreams.cpp            testExistingStreams.h
  testFutureProofing.cpp             testFutureProofing.h
  testHuf.cpp                        testHuf.h
  testInputPart.cpp                  testInputPart.h
  testIsComplete.cpp                 testIsComplete.h
  testLineOrder.cpp                  testLineOrder.h
  testLut.cpp                        testLut.h
  testMagic.cpp                      testMagic.h
  testMultiPartApi.cpp               testMultiPartApi.h
  testMultiPartFileMixingBasic.cpp   testMultiPartFileMixingBasic.h
  testMultiPartSharedAttributes.cpp  testMultiPartSharedAttributes.h
  testMultiPartThreading.cpp         testMultiPartThreading.h
  testMultiScanlinePartThreading.cpp testMultiScanlinePartThreading.h
  testMultiTiledPartThreading.cpp    testMultiTiledPartThreading.h
  testMultiView.cpp                  testMultiView.h
  testNativeFormat.cpp               testNativeFormat.h
  testOptimized.cpp                  testOptimized.h
  testOptimizedInterleavePatterns.cpp testOptimizedInterleavePatterns.h
  testPartHelper.cpp                 testPartHelper.h
  testPreviewImage.cpp               testPreviewImage.h
  testRgba.cpp                       testRgba.h
  testRle.cpp                        testRle.h
  testRgbaThreading.cpp              testRgbaThreading.h
  testSampleImages.cpp               testSampleImages.h
  testScanLineApi.cpp                testScanLineApi.h
  testSharedFrameBuffer.cpp          testSharedFrameBuffer.h
  testStandardAttributes.cpp         testStandardAttributes.h
  testTiledCompression.cpp           testTiledCompression.h
  testTiledCopyPixels.cpp            testTiledCopyPixels.h
  testTiledLineOrder.cpp             testTiledLineOrder.h
  testTiledRgba.cpp                  testTiledRgba.h
  testTiledYa.cpp                    testTiledYa.h
  testWav.cpp                        testWav.h
  testXdr.cpp                        testXdr.h
  testYca.cpp                        testYca.h          
)

add_definitions( -DILM_IMF_TEST_IMAGEDIR=\"${CMAKE_CURRENT_SOURCE_DIR}/\" )

add_executable (IlmImfTest ${IlmImfTest_SOURCES})
target_link_libraries (IlmImfTest
  Half Iex Imath IlmThread IlmImf ${ZLIB_LIBRARIES})
add_openexr_test (TestIlmImf IlmImfTest)
