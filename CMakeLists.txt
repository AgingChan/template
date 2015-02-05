# <Copyright RFCOM TECHNOLOGIES>. Copyright (C) <Copyright 2015>. <License>.



#
# Project Properties
#
CMAKE_MINIMUM_REQUIRED (VERSION 2.6.2)
PROJECT (pathfinder)
SET (PROJ_NAME "PATHFINDER")
SET (PROJ_CODENAME "${PROJECT_NAME}")
SET (PROJ_COPYRIGHT_YEARS "2015")
SET (PROJ_VERSION_MAJOR 0)
SET (PROJ_VERSION_MINOR 1)
SET (PROJ_VERSION_PATCH 0)
SET (PROJ_VERSION_TYPE SNAPSHOT)
SET (PROJ_VERSION_STRING "${PROJ_VERSION_MAJOR}.${PROJ_VERSION_MINOR}.${PROJ_VERSION_PATCH}-${PROJ_VERSION_TYPE}")
SET (PROJ_HEADERS_DIRS ${CMAKE_SOURCE_DIR}/include)
SET (PROJ_EXENAME "${PROJECT_NAME}_${PROJ_VERSION_MAJOR}.${PROJ_VERSION_MINOR}.${PROJ_VERSION_PATCH}")

configure_file (
  "${PROJ_HEADERS_DIRS}/version.h.in.cmake"
  "${PROJ_HEADERS_DIRS}/version.h"
  )
  
  
SET (Boost_ADDITIONAL_VERSIONS "1.49" "1.49.0")
SET (BOOST_ROOT /opt/beaglebone/rootfs/usr/)
FIND_PACKAGE (Boost 1.49 COMPONENTS "date_time" "filesystem" "graph" "iostreams" "program_options" "regex" "serialization" "signals" "system" "thread" "wserialization" REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    LINK_DIRECTORIES(${Boost_LIBRARY_DIRS})
    message(status "** Boost Include: ${Boost_INCLUDE_DIR}")
    message(status "** Boost Libraries: ${Boost_LIBRARY_DIRS}")
    message(status "** Boost Libraries: ${Boost_LIBRARIES}")
endif()

FILE(GLOB_RECURSE PROJ_SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp )
FILE(GLOB_RECURSE PROJ_HEADERS ${CMAKE_SOURCE_DIR}/include/*.h )

INCLUDE_DIRECTORIES( ${PROJ_HEADERS_DIRS} )

ADD_EXECUTABLE(${PROJ_EXENAME} ${PROJ_SOURCES})
