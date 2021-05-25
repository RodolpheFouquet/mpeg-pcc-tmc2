cmake_minimum_required(VERSION 3.17 FATAL_ERROR)

SET( SHM_VERSION         SHM-12.4 )
SET( SHM_DIR             ${CMAKE_SOURCE_DIR}/dependencies/${SHM_VERSION}/ )
set( SHM_APP_SOURCE_DIR  ${SHM_DIR}/source )
MESSAGE("Clone the SHM source code: ${SHM_DIR}") 

IF( NOT EXISTS "${SHM_DIR}/COPYING" )
  EXECUTE_PROCESS( COMMAND git clone https://vcgit.hhi.fraunhofer.de/jvet/SHM ${SHM_DIR} )
ENDIF()
