###
### common helpers for both codec and client projects
###


### look for the PRT libraries

# prt_DIR must point to the cmake subfolder of the desired SDK installation
if(NOT prt_DIR)
	set(prt_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../prt/cmake")
endif()


find_package(prt CONFIG REQUIRED)
set(CESDK_VERSION "cesdk_${PRT_VERSION_MAJOR}_${PRT_VERSION_MINOR}_${PRT_VERSION_MICRO}")


### plugin installation location

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
	set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../install" CACHE PATH "default install prefix" FORCE)
endif()
message(STATUS "Installing into ${CMAKE_INSTALL_PREFIX}")