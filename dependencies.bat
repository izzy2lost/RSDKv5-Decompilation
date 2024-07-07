winget install cmake
winget install git.git
if not exist vcpkg (
	git clone https://github.com/microsoft/vcpkg
	call .\vcpkg\bootstrap-vcpkg.bat
)
if exist Sonic-Mania-Decompilation (
	cd Sonic-Mania-Decompilation
	git submodule update --init --recursive
	cd ..\
) else (git clone --recursive https://github.com/RSDKModding/Sonic-Mania-Decompilation)
vcpkg\vcpkg.exe install libtheora libogg --triplet=x64-windows-static
@echo off
echo.
echo Press any key to exit . . .
pause>nul