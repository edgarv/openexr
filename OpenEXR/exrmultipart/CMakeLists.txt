# Non-standalone CMake file

add_executable (exrmultipart
  exrmultipart.cpp
)

target_link_libraries (exrmultipart
  IlmImf
)

install(TARGETS exrmultipart
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
