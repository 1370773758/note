cmake_minimum_required (VERSION 3.10) # cmake最低版本要求


set(PROJECT_NAME    renaplayer)
project (renaplayer)                  # 项目名称

set(CMAKE_CXX_STANDARD 11)            # c++最低版本要求
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

aux_source_directory(src SRC)         # 将src目录下的所有源文件存储在SRC变量中

file(GLOB CPP_SOURCES       # 存储目录下的文件到CPP_SOURCES
    src/*.cpp
)

# 设置文件路径
set(INCLUDE_DIRS
    src/ 
)

find_package(Threads)
add_executable(${PROJECT_NAME} ${SRC})      # 添加项目所依赖的c/cpp文件
target_include_directories(${PROJECT_NAME} PRIVATE ${INCLUDE_DIRS})
target_link_libraries (scence Threads::Threads)
target_link_libraries (scence rt)
target_link_libraries (scence m)

install(TARGETS renaplayer
	RUNTIME DESTINATION bin
)
