# Non-standalone CMake file

add_executable (exrenvmap
  EnvmapImage.cpp    EnvmapImage.h
  blurImage.cpp      blurImage.h
  main.cpp
  makeCubeMap.cpp    makeCubeMap.h
  makeLatLongMap.cpp makeLatLongMap.h
  readInputImage.cpp readInputImage.h
  resizeImage.cpp    resizeImage.h
)

target_link_libraries (exrenvmap IlmImf ${ZLIB_LIBRARIES})

install(TARGETS exrenvmap
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
