# Non-standalone CMake file

set (SRCS
  drawImage.cpp                     drawImage.h
  generalInterfaceExamples.cpp      generalInterfaceExamples.h
  generalInterfaceTiledExamples.cpp generalInterfaceTiledExamples.h
  lowLevelIoExamples.cpp            lowLevelIoExamples.h
  main.cpp
  namespaceAlias.h
  previewImageExamples.cpp          previewImageExamples.h
  rgbaInterfaceExamples.cpp         rgbaInterfaceExamples.h
  rgbaInterfaceTiledExamples.cpp    rgbaInterfaceTiledExamples.h     
)


add_executable (imfexamples ${SRCS})
target_link_libraries (imfexamples
  Half Iex Imath IlmThread IlmImf ${ZLIB_LIBRARIES})
