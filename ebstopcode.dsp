# Microsoft Developer Studio Project File - Name="ebstopcode" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=ebstopcode - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ebstopcode.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ebstopcode.mak" CFG="ebstopcode - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ebstopcode - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "ebstopcode - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ebstopcode - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release\ebstopcode"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "_CONSOLE" /D "WIN32" /D "_MBCS" /YX /FD /c /D "NDEBUG"
# ADD CPP /nologo /W3 /GX /O2 /D "_CONSOLE" /D "WIN32" /D "_MBCS" /YX /FD /c /I ".\portsrc" /I ".\intl" /I ".\iconv" /I "..\eb-4.0"   /I "..\eb-4.0\libebutils" /D "HAVE_CONFIG_H" /MD /D "NDEBUG"
# ADD BASE RSC /l 0x411 /D "NDEBUG"
# ADD RSC /l 0x411 /D "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib   shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib   /nologo /subsystem:console /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib   shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib   /nologo /subsystem:console /machine:I386 /pdbtype:sept Release/eb.lib   Release/ebutils.lib   Release/zlib.lib   Release/intl.lib   Release/iconv.lib   ws2_32.lib

!ELSEIF  "$(CFG)" == "ebstopcode - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP BASE Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug\ebstopcode"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /Od /ZI /D "_CONSOLE" /D "WIN32" /D "_MBCS" /YX /FD /c /D "_DEBUG"
# ADD CPP /nologo /W3 /GX /Od /ZI /D "_CONSOLE" /D "WIN32" /D "_MBCS" /YX /FD /c /I ".\portsrc" /I ".\intl" /I ".\iconv" /I "..\eb-4.0"   /I "..\eb-4.0\libebutils" /D "HAVE_CONFIG_H" /MDd /D "_DEBUG"
# ADD BASE RSC /l 0x411 /D "_DEBUG"
# ADD RSC /l 0x411 /D "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib   shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib   /incremental:yes /debug   /nologo /subsystem:console /machine:I386 /pdbtype:sept /debug
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib   shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib   /incremental:yes /debug   /nologo /subsystem:console /machine:I386 /pdbtype:sept Debug/eb.lib   Debug/ebutils.lib   Debug/zlib.lib   Debug/intl.lib   Debug/iconv.lib   ws2_32.lib /debug

!ENDIF 

# Begin Target

# Name "ebstopcode - Win32 Release"
# Name "ebstopcode - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\eb-4.0\ebstopcode\ebstopcode.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# End Group
# End Target
# End Project
