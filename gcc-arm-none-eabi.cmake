set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(TOOLCHAIN_PREFIX arm-none-eabi-)
set(CMAKE_C_FLAGS_INIT
    "-fdata-sections -ffunction-sections --specs=nano.specs -Wl,--gc-sections")
set(CMAKE_CXX_FLAGS_INIT
    "${CMAKE_C_FLAGS_INIT} -fno-rtti -fno-exceptions -fno-threadsafe-statics")

message("[Build]: ${TOOLCHAIN_PREFIX} test ++")

if (CMAKE_HOST_WIN32)
    set (SUFFIX .exe)
else()
    set (SUFFIX "")
endif()

find_program(CROSS_GCC_PATH d:/Java/ArmDev/armgcc10/bin/arm-none-eabi-gcc${SUFFIX})
get_filename_component(TOOLCHAIN_PATH ${CROSS_GCC_PATH} PATH)

message("[Build]: ${TOOLCHAIN_PREFIX} test --")

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}gcc.exe)
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}g++.exe)
set(CMAKE_OBJCOPY ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}objcopy.exe)
set(CMAKE_SIZE ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}size.exe)
set(CMAKE_OBJDUMP ${TOOLCHAIN_PATH}/${TOOLCHAIN_PREFIX}objdump.exe)

set(CMAKE_EXECUTABLE_SUFFIX_ASM ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_C ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_CXX ".elf")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
