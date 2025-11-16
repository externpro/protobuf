cmake_minimum_required(VERSION 3.1.3...3.31)
set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES .devcontainer/cmake/xproinc.cmake)
project(protobuf_root)
include(GNUInstallDirs)
include(xpflags)
function(callPackageDevel)
  string(JOIN "\n" EXT1
    "set(FPHSA_NAME_MISMATCHED TRUE) # FIND_PACKAGE_HANDLE_STANDARD_ARGS NAME_MISMATCHED"
    "set(protobuf_MODULE_COMPATIBLE ON) # necessary for GENERATE_PROTOBUF_CPP"
    ""
    )
  string(JOIN "\n" EXT3
    "set(PROTOBUF_PROTOC_EXECUTABLE ${nameSpace}protoc) # TRICKY: match name in -module.cmake"
    "get_target_property(PROTOBUF_INCLUDE_DIR ${nameSpace}libprotobuf INTERFACE_INCLUDE_DIRECTORIES)"
    "list(APPEND reqVars PROTOBUF_INCLUDE_DIR PROTOBUF_PROTOC_EXECUTABLE)"
    ""
    )
  set(CMAKE_PROJECT_NAME protobuf)
  xpPackageDevel(TARGETS_FILE protobuf-config DEPS zlib LIBRARIES ${nameSpace}libprotobuf)
endfunction()
if(DEFINED XP_NAMESPACE)
  set(XP_OPT_INSTALL FALSE)
  set(nameSpace ${XP_NAMESPACE}::)
  set(XP_INSTALL_CMAKEDIR ${CMAKE_INSTALL_DATADIR}/cmake)
  callPackageDevel()
  set(CMAKE_INSTALL_CMAKEDIR ${XP_INSTALL_CMAKEDIR})
  set(CMAKE_INSTALL_DEFAULT_COMPONENT_NAME devel)
else ()
  set(XP_OPT_INSTALL TRUE)
  set(nameSpace protobuf::)
endif()
add_subdirectory(cmake)
