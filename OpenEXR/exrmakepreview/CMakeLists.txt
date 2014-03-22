# Non-standalone CMake file

add_executable (exrmakepreview
  main.cpp
  makePreview.cpp makePreview.h
)

target_link_libraries (exrmakepreview
  IlmImf ${ZLIB_LIBRARIES}
)

install(TARGETS exrmakepreview
        RUNTIME DESTINATION ${INSTALL_RUNTIME_DIR})
