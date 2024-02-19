include(SourceList)

add_library(nvse STATIC "${NVSE_HEADERS}" "${NVSE_SOURCES}")
add_library("${PROJECT_NAME}::nvse" ALIAS nvse)

target_compile_definitions(nvse PUBLIC WIN32 NDEBUG _WINDOWS _USRDLL RUNTIME RUNTIME_VERSION=0x040020D0)
target_compile_options(nvse PUBLIC
        /FI "${PROJECT_SOURCE_DIR}/src/nvse/prefix.h"
)
target_include_directories(nvse PUBLIC "${PROJECT_SOURCE_DIR}/src")
