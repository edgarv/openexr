# Non-standalone CMake file

add_executable (exrheader
    main.cpp
)

target_link_libraries (exrheader IlmImf ${ZLIB_LIBRARIES})

install(TARGETS exrheader
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
