# Non-standalone CMake file

set (ImathTest_SOURCES
  main.cpp
  testExtractEuler.cpp      testExtractEuler.h
  testExtractSHRT.cpp       testExtractSHRT.h
  testFrustum.cpp           testFrustum.h
  testFun.cpp               testFun.h
  testInvert.cpp            testInvert.h
  testMatrix.cpp            testMatrix.h
  testRandom.cpp            testRandom.h
  testRoots.cpp             testRoots.h
  testShear.cpp             testShear.h
  testColor.cpp             testColor.h
  testQuatSetRotation.cpp   testQuatSetRotation.h
  testLineAlgo.cpp          testLineAlgo.h
  testQuatSlerp.cpp         testQuatSlerp.h
  testQuat.cpp              testQuat.h
  testBoxAlgo.cpp           testBoxAlgo.h
  testVec.cpp               testVec.h
  testBox.cpp               testBox.h
  testMiscMatrixAlgo.cpp    testMiscMatrixAlgo.h
  testProcrustes.cpp        testProcrustes.h
  testTinySVD.cpp           testTinySVD.h
  testJacobiEigenSolver.cpp testJacobiEigenSolver.h
  testFrustumTest.cpp       testFrustumTest.h
)

add_executable (ImathTest ${ImathTest_SOURCES})
target_link_libraries (ImathTest Imath Iex Half)
add_openexr_test (ImathTest ImathTest)
