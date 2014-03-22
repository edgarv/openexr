# Non-standalone CMake file

add_executable (exrmaketiled
  Image.h Image.cpp
  main.cpp
  makeTiled.cpp makeTiled.h
)

target_link_libraries (exrmaketiled
  IlmImf ${ZLIB_LIBRARIES}
)

install(TARGETS exrmaketiled
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
