# Install script for directory: /home/jxh/strive3d/strive3d

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX ".")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES
    "/home/jxh/strive3d/strive3d/Configs"
    "/home/jxh/strive3d/strive3d/Logs"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Action/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/AdvancedAgent/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/BehaviorControl/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Geometry/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/HeadControl/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Module/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Net/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Parser/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/RobotModel/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/salt/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Trainer_Client/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Utilities/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/WorldModel/cmake_install.cmake")
  INCLUDE("/home/jxh/strive3d/strive3d/all_build/Xabsl/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/jxh/strive3d/strive3d/all_build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/jxh/strive3d/strive3d/all_build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
