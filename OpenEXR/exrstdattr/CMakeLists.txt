# Non-standalone CMake file

add_executable (exrstdattr
    main.cpp
)

target_link_libraries (exrstdattr
  IlmImf
  ${ZLIB_LIBRARIES}
)

install(TARGETS exrstdattr
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
