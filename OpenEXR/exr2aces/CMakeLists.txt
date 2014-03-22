# Non-standalone CMake file

add_executable (exr2aces
  main.cpp
)

target_link_libraries (exr2aces
  IlmImf
  ${ZLIB_LIBRARIES}
)

install(TARGETS exr2aces
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
