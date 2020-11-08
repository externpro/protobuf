set(protoc_files
  ${protobuf_source_dir}/src/google/protobuf/compiler/main.cc
)

if (MSVC)
set(protoc_rc_files
  ${CMAKE_CURRENT_BINARY_DIR}/version.rc
)
endif()

add_executable(protoc ${protoc_files} ${protoc_rc_files})
target_link_libraries(protoc libprotoc libprotobuf)
add_executable(${nameSpace}protoc ALIAS protoc)

set_target_properties(protoc PROPERTIES
  DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}"
  OUTPUT_NAME protoc${ver})
