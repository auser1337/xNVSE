macro(add_xnvse_plugin target sources)
    add_library("${target}" SHARED "${sources}")

    target_compile_definitions("${target}" PRIVATE WIN32 NDEBUG _WINDOWS _USRDLL RUNTIME RUNTIME_VERSION=0x040020D0)
    target_compile_options("${target}" PRIVATE
            /FI "${PROJECT_SOURCE_DIR}/src/nvse/prefix.h"
    )
    target_include_directories("${target}" PRIVATE "${PROJECT_SOURCE_DIR}/src")
    target_link_libraries("${target}" PRIVATE
            xNVSE::common
            xNVSE::nvse
    )
endmacro()
