;
; Inno Setup Script for EB Library for Windows.
;
[Setup]
AppName=EB Library
AppVerName=EB Library 4.0beta3
AppPublisher=Motoyuki Kasahara
AppPublisherURL=http://www.sra.co.jp/people/m-kasahr/eb/
DefaultDirName={pf}\EB Library
DefaultGroupName=EB Library
OutputDir=.
OutputBaseFileName=eb-4.0beta3-win32
AllowNoIcons=yes
LicenseFile=COPYING.txt

[Files]
Source: "Release\eb.dll"; DestDir: "{app}\bin";
Source: "Release\ebfont.exe"; DestDir: "{app}\bin";
Source: "Release\ebinfo.exe"; DestDir: "{app}\bin";
Source: "Release\ebrefile.exe"; DestDir: "{app}\bin";
Source: "Release\ebstopcode.exe"; DestDir: "{app}\bin";
Source: "Release\ebzip.exe"; DestDir: "{app}\bin";
Source: "Release\ebzip.exe"; DestDir: "{app}\bin"; DestName: "ebunzip.exe";
Source: "Release\ebzip.exe"; DestDir: "{app}\bin"; DestName: "ebzipinfo.exe";
Source: "Release\eb.lib"; DestDir: "{app}\lib";
Source: "Release\intl.lib"; DestDir: "{app}\lib";
Source: "Release\iconv.lib"; DestDir: "{app}\lib";
Source: "Release\zlib.lib"; DestDir: "{app}\lib";
Source: "..\eb-4.0beta3\eb\appendix.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\binary.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\booklist.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\defs.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\error.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\font.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\text.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\eb\zio.h"; DestDir: "{app}\include\eb";
Source: "portsrc\config.h"; DestDir: "{app}\include\eb";
Source: "..\eb-4.0beta3\zlib\zconf.h"; DestDir: "{app}\include";
Source: "..\eb-4.0beta3\zlib\zlib.h"; DestDir: "{app}\include";
Source: "intl\libintl.h"; DestDir: "{app}\include";
Source: "iconv\iconv.h"; DestDir: "{app}\include";
Source: "iconv\libcharset.h"; DestDir: "{app}\include";
Source: "po\eb.mo"; DestDir: "{app}\locale\Japanese_Japan.932\LC_MESSAGES";
Source: "po\ebutils.mo"; DestDir: "{app}\locale\Japanese_Japan.932\LC_MESSAGES";
Source: "doc\*.html"; DestDir: "{app}\doc";
Source: "doc\ebfont\*.html"; DestDir: "{app}\doc\ebfont";
Source: "doc\ebinfo\*.html"; DestDir: "{app}\doc\ebinfo";
Source: "doc\ebrefile\*.html"; DestDir: "{app}\doc\ebrefile";
Source: "doc\ebstopcode\*.html"; DestDir: "{app}\doc\ebstopcode";
Source: "doc\ebzip\*.html"; DestDir: "{app}\doc\ebzip";
Source: "doc\eb-ja\*.html"; DestDir: "{app}\doc\eb-ja";
Source: "doc\ebappendix-ja\*.html"; DestDir: "{app}\doc\ebappendix-ja";
Source: "doc\ebfont-ja\*.html"; DestDir: "{app}\doc\ebfont-ja";
Source: "doc\ebinfo-ja\*.html"; DestDir: "{app}\doc\ebinfo-ja";
Source: "doc\ebrefile-ja\*.html"; DestDir: "{app}\doc\ebrefile-ja";
Source: "doc\ebstopcode-ja\*.html"; DestDir: "{app}\doc\ebstopcode-ja";
Source: "doc\ebzip-ja\*.html"; DestDir: "{app}\doc\ebzip-ja";
Source: "README.txt"; DestDir: "{app}";
Source: "README-ja.txt"; DestDir: "{app}";
Source: "COPYING.txt"; DestDir: "{app}";
