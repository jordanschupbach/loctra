cmake_minimum_required(VERSION 3.10)

project(loctra VERSION 0.1 LANGUAGES CXX)

# Specify required Lua version
find_package(Lua REQUIRED)

# Create a list of source files
file(GLOB_RECURSE C_SOURCES *.c)
file(GLOB_RECURSE CPP_SOURCES *.cpp *.cxx)
file(GLOB_RECURSE CPP_HEADERS *.hpp *.hxx)
file(GLOB_RECURSE C_HEADERS *.h)
# ${C_SOURCES}  ${C_HEADERS}
set(SOURCES ${CPP_SOURCES} ${CPP_HEADERS})

message("sources ${SOURCES}")
add_library(loctra SHARED ${SOURCES})
target_link_libraries(loctra ${LUA_LIBRARIES})
include_directories(src ${LUA_INCLUDE_DIR})
install(TARGETS loctra LIBRARY DESTINATION ./..)
set_target_properties(loctra PROPERTIES OUTPUT_NAME "loctra" PREFIX "" LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/..)
