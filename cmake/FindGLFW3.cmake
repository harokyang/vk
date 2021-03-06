set(GLFW3_DIR "${PROJECT_SOURCE_DIR}/3rdparty/glfw3")

find_library(GLFW3_LIB NAMES glfw glfw3 PATHS "${GLFW3_DIR}/lib/x64")
find_path(GLFW3_INCLUDE_DIR NAMES GLFW/glfw3.h PATHS "${GLFW3_DIR}/include")

find_package_handle_standard_args(GLFW3 DEFAULT_MSG GLFW3_LIB GLFW3_INCLUDE_DIR)

add_library(glfw UNKNOWN IMPORTED)
set_target_properties(glfw PROPERTIES IMPORTED_LOCATION "${GLFW3_LIB}")
set_target_properties(glfw PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${GLFW3_INCLUDE_DIR}")

get_filename_component(GLFW3_DLL ${GLFW3_LIB} NAME_WE)
set(GLFW3_DLL ${GLFW3_DIR}/bin/x64/${GLFW3_DLL}.dll)
