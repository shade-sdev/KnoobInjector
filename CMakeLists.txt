cmake_minimum_required(VERSION 3.20)

project(winmm CXX ASM_MASM)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if (NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
    message(FATAL_ERROR "This project must be built as 64-bit (x64)")
endif ()

add_library(winmm SHARED
        src/dllmain.cpp
        src/exports.asm
)

target_include_directories(winmm PRIVATE include)

set_target_properties(winmm PROPERTIES PREFIX "")

set_target_properties(winmm PROPERTIES
        LINK_FLAGS "/DEF:\"${CMAKE_CURRENT_SOURCE_DIR}/winmm.def\""
)

set_source_files_properties(src/exports.asm PROPERTIES
        COMPILE_FLAGS "/Cx"
)

target_link_libraries(winmm PRIVATE kernel32)