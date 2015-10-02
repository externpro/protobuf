set(protoc_files
  ${protobuf_source_dir}/src/google/protobuf/compiler/main.cc
)

add_executable(protoc ${protoc_files})
target_link_libraries(protoc libprotobuf libprotoc)
set_target_properties(protoc PROPERTIES
  DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}"
)
