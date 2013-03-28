# Non-standalone CMake file

set (IlmImfTest_SOURCES
  main.cpp
  tmpDir.h
  compareB44.cpp             compareB44.h
  compareFloat.cpp           compareFloat.h 
  testAttributes.cpp         testAttributes.h
  testBackwardCompatibility.cpp
  testChannels.cpp           testChannels.h
  testCompositeDeepScanLine.cpp
  testCompression.cpp        testCompression.h
  testConversion.cpp         testConversion.h
  testCopyDeepScanLine.cpp
  testCopyDeepTiled.cpp
  testCopyMultiPartFile.cpp
  testCopyPixels.cpp         testCopyPixels.h
  testCustomAttributes.cpp   testCustomAttributes.h
  testDeepScanLineBasic.cpp
  testDeepScanLineHuge.cpp
  testDeepTiledBasic.cpp
  testExistingStreams.cpp    testExistingStreams.h
  testHuf.cpp                testHuf.h
  testIsComplete.cpp         testIsComplete.h
  testLineOrder.cpp          testLineOrder.h
  testLut.cpp                testLut.h 
  testMagic.cpp              testMagic.h
  testMultiPartApi.cpp
  testMultiPartFileMixingBasic.cpp
  testMultiPartSharedAttributes.cpp
  testMultiPartThreading.cpp
  testMultiScanlinePartThreading.cpp
  testMultiTiledPartThreading.cpp
  testMultiView.cpp          testMultiView.h
  testNativeFormat.cpp       testNativeFormat.h
  testPreviewImage.cpp       testPreviewImage.h
  testRgba.cpp               testRgba.h
  testRgbaThreading.cpp      testRgbaThreading.h
  testSampleImages.cpp       testSampleImages.h
  testScanLineApi.cpp        testScanLineApi.h
  testSharedFrameBuffer.cpp  testSharedFrameBuffer.h
  testStandardAttributes.cpp testStandardAttributes.h
  testTiledCompression.cpp   testTiledCompression.h
  testTiledCopyPixels.cpp    testTiledCopyPixels.h
  testTiledLineOrder.cpp     testTiledLineOrder.h 
  testTiledRgba.cpp          testTiledRgba.h 
  testTiledYa.cpp            testTiledYa.h
  testYca.cpp                testYca.h
  testWav.cpp                testWav.h

  testXdr.cpp testXdr.h            
)

add_definitions( -DILM_IMF_TEST_IMAGEDIR=\"${CMAKE_CURRENT_SOURCE_DIR}/\" )

add_executable (IlmImfTest ${IlmImfTest_SOURCES})
target_link_libraries (IlmImfTest
  Half Iex Imath IlmThread IlmImf ${ZLIB_LIBRARIES})
add_openexr_test (IlmImfTest IlmImfTest)
