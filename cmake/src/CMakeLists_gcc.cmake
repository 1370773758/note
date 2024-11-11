cmake_minimum_required (VERSION 3.10)

set(tools /home/z/nfs/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf/bin)
set(CMAKE_C_COMPILER ${tools}/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER  ${tools}/arm-linux-gnueabihf-g++)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

project (renaplayer)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

aux_source_directory(../src SRC)

set(INCLUDE "../include")

add_definitions(-DFOR_PC)

find_package(Threads)
add_executable(renaplayer ${SRC})
target_include_directories(renaplayer PRIVATE ${INCLUDE})
target_link_libraries (renaplayer Threads::Threads)
target_link_libraries (renaplayer rt)
target_link_libraries (renaplayer m)
# target_link_libraries(renaplayer ubox ubus uci json-c)

install(TARGETS renaplayer
    RUNTIME DESTINATION bin
)
