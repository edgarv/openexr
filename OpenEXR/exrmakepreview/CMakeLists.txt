# Non-standalone CMake file

set (BIN_NAME exrmakepreview)
set (SRCS
  main.cpp
  makePreview.cpp makePreview.h
)

add_executable (${BIN_NAME} ${SRCS})
target_link_libraries (${BIN_NAME} IlmImf ${ZLIB_LIBRARIES})

install(TARGETS ${BIN_NAME}
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
