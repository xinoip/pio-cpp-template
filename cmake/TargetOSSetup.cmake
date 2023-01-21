set(TARGET_OS
    ""
    CACHE STRING "Target OS for compilation: Windows, Linux")

if(TARGET_OS STREQUAL "")
  message(STATUS "TARGET_OS was not set! Will detect automatically...")

  if(WIN32)
    set(TARGET_OS "Windows")
    set(CMAKE_DEBUG_POSTFIX "_Windows_Debug")
    set(CMAKE_RELEASE_POSTFIX "_Windows_Release")
  elseif(UNIX AND NOT APPLE)
    set(TARGET_OS "Linux")
    set(CMAKE_DEBUG_POSTFIX "_Linux_Debug")
    set(CMAKE_RELEASE_POSTFIX "_Linux_Release")
    set(CMAKE_STATIC_LIBRARY_PREFIX "")
  else()
    message(FATAL_ERROR "Couldn't detect TARGET_OS")
  endif()

  message(STATUS "TARGET_OS set automatically to: ${TARGET_OS}")
endif()

message(STATUS "TARGET_OS set to: ${TARGET_OS}")
