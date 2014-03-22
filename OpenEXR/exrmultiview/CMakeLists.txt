# Non-standalone CMake file

add_executable (exrmultiview
    Image.h Image.cpp
    main.cpp
    makeMultiView.cpp makeMultiView.h
)

target_link_libraries (exrmultiview
  IlmImf
  ${ZLIB_LIBRARIES}
)

install(TARGETS exrmultiview
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
