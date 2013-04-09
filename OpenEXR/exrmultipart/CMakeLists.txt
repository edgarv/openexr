# Non-standalone CMake file

set (BIN_NAME exrmultipart)
set (SRCS
  exrmultipart.cpp
)

add_executable (${BIN_NAME} ${SRCS})
target_link_libraries (${BIN_NAME} IlmImf)

install(TARGETS ${BIN_NAME}
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
