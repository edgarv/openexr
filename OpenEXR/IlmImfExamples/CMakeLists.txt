# Non-standalone CMake file

set (SRCS
  main.cpp
  drawImage.cpp                     drawImage.h
  rgbaInterfaceExamples.cpp         rgbaInterfaceExamples.h
  rgbaInterfaceTiledExamples.cpp    rgbaInterfaceTiledExamples.h
  generalInterfaceExamples.cpp      generalInterfaceExamples.h
  lowLevelIoExamples.cpp            lowLevelIoExamples.h
  previewImageExamples.cpp          previewImageExamples.h
  generalInterfaceTiledExamples.cpp generalInterfaceTiledExamples.h     
)

include_directories (${CMAKE_CURRENT_SOURCE_DIR})

add_executable (imfexamples ${SRCS})
target_link_libraries (imfexamples
  Half Iex Imath IlmThread IlmImf ${ZLIB_LIBRARIES})
