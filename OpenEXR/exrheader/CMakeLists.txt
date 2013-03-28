# Non-standalone CMake file

set (BIN_NAME exrheader)
set (SRCS
    main.cpp
)

add_executable (${BIN_NAME} ${SRCS})
target_link_libraries (${BIN_NAME} IlmImf ${ZLIB_LIBRARIES})

install(TARGETS ${BIN_NAME}
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
