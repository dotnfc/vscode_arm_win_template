# VSCode + Cortex-Debug Template Project

This Project is a template for building and debuging with ST-Link and J-Link directlly, not using OpenOCD in Windows.

I prefer to debug STM32F103RB (Nucleo-F103) as an example here, so we should install these two STM tools:

- [STM32CubeIDE](https://www.st.com/STM32CubeIDE) - for Jlink/STLink GDB Server and CubeProgramer
   
- [STM32CubeMX](https://www.st.com/STM32CubeMX)  - to generate a Makefile project

- [cmake](https://cmake.org/download/)
  
- [Git-64bits](https://git-scm.com/download/win)
 
and then, modify your CubeIDE path in .vscode/settings.json 'CUBEIDE-PLUGIN', and the related path of tools.

Ok, launch your vscode, and open a 'Git Bash' terminal, type make to go.

<hr>

*2023/10/18*


