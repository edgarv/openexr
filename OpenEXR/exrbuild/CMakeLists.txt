# Non-standalone CMake file

add_executable (exrbuild
  exrbuild.cpp
)

target_link_libraries (exrbuild
  IlmImf
  IlmThread
  Iex
  Half
  ${ZLIB_LIBRARIES}
)

INSTALL (TARGETS exrbuild
  RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR}
)
