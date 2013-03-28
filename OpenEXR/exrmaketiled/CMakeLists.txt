# Non-standalone CMake file

set (BIN_NAME exrmaketiled)
set (SRCS
  main.cpp
  Image.h Image.cpp
  makeTiled.cpp makeTiled.h
)

add_executable (${BIN_NAME} ${SRCS})
target_link_libraries (${BIN_NAME} IlmImf ${ZLIB_LIBRARIES})

install(TARGETS ${BIN_NAME}
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
