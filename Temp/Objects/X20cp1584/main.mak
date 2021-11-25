SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files\PuTTY\;C:\Users\a1\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\a1\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\a1\AppData\Local\GitHubDesktop\bin;C:\Users\a1\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\a1\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\a1\AppData\Local\GitHubDesktop\bin;C:\BrAutomation\AS49\bin-de\4.9;C:\BrAutomation\AS49\bin-de\4.8;C:\BrAutomation\AS49\bin-de\4.7;C:\BrAutomation\AS49\bin-de\4.6;C:\BrAutomation\AS49\bin-de\4.5;C:\BrAutomation\AS49\bin-de\4.4;C:\BrAutomation\AS49\bin-de\4.3;C:\BrAutomation\AS49\bin-de\4.2;C:\BrAutomation\AS49\bin-de\4.1;C:\BrAutomation\AS49\bin-de\4.0;C:\BrAutomation\AS49\bin-de
export AS_BUILD_MODE := Rebuild
export AS_VERSION := 4.9.2.46
export AS_WORKINGVERSION := 4.9
export AS_COMPANY_NAME :=  
export AS_USER_NAME := a1
export AS_PATH := C:/BrAutomation/AS49
export AS_BIN_PATH := C:/BrAutomation/AS49/bin-de
export AS_PROJECT_PATH := C:/projects/03_Fuellstand_Vorbereitung_PID_Viso
export AS_PROJECT_NAME := Fuellstand
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS49/AS/VC
export AS_TEMP_PATH := C:/projects/03_Fuellstand_Vorbereitung_PID_Viso/Temp
export AS_CONFIGURATION := X20cp1584
export AS_BINARIES_PATH := C:/projects/03_Fuellstand_Vorbereitung_PID_Viso/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS49
export WIN32_AS_PATH := "C:\BrAutomation\AS49"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS49\bin-de"
export WIN32_AS_PROJECT_PATH := "C:\projects\03_Fuellstand_Vorbereitung_PID_Viso"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS49\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\projects\03_Fuellstand_Vorbereitung_PID_Viso\Temp"
export WIN32_AS_BINARIES_PATH := "C:\projects\03_Fuellstand_Vorbereitung_PID_Viso\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS49\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS49"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Fuellstand.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Rebuild'   

