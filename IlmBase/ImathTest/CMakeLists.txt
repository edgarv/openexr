# Non-standalone CMake file

set (ImathTest_SOURCES
  main.cpp
  testBox.cpp               testBox.h
  testBoxAlgo.cpp           testBoxAlgo.h
  testColor.cpp             testColor.h
  testExtractEuler.cpp      testExtractEuler.h
  testExtractSHRT.cpp       testExtractSHRT.h
  testFrustum.cpp           testFrustum.h
  testFrustumTest.cpp       testFrustumTest.h
  testFun.cpp               testFun.h
  testInvert.cpp            testInvert.h
  testJacobiEigenSolver.cpp testJacobiEigenSolver.h
  testLineAlgo.cpp          testLineAlgo.h
  testMatrix.cpp            testMatrix.h
  testMiscMatrixAlgo.cpp    testMiscMatrixAlgo.h
  testProcrustes.cpp        testProcrustes.h
  testQuat.cpp              testQuat.h
  testQuatSetRotation.cpp   testQuatSetRotation.h
  testQuatSlerp.cpp         testQuatSlerp.h
  testRandom.cpp            testRandom.h
  testRoots.cpp             testRoots.h
  testShear.cpp             testShear.h
  testTinySVD.cpp           testTinySVD.h
  testVec.cpp               testVec.h
)

add_executable (ImathTest ${ImathTest_SOURCES})
target_link_libraries (ImathTest Imath Iex Half)
add_openexr_test (TestImathTest ImathTest)
