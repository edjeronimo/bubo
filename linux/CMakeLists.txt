cmake_minimum_required(VERSION 3.10)
project(flutter_task_app)

set(BINARY_NAME "flutter_task_app")
set(APPLICATION_NAME "flutter_task_app")

set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/flutter")

include("${FLUTTER_MANAGED_DIR}/generated_plugins.cmake")
include("${FLUTTER_MANAGED_DIR}/flutter_config.cmake")

add_executable(${BINARY_NAME}
  "main.cc"
)

target_link_libraries(${BINARY_NAME}
  PRIVATE flutter
  ${PLUGIN_LIBRARIES}
)

set_target_properties(${BINARY_NAME} PROPERTIES
  OUTPUT_NAME "${BINARY_NAME}"
  RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin"
)