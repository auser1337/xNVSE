include(SourceList)

add_library(common STATIC "${COMMON_HEADERS}" "${COMMON_SOURCES}")
add_library("${PROJECT_NAME}::common" ALIAS common)

target_compile_options(common PUBLIC
        /FI "${PROJECT_SOURCE_DIR}/src/nvse/prefix.h"
)
target_include_directories(common PUBLIC "${PROJECT_SOURCE_DIR}/src")
