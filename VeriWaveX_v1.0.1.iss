[Setup]
; --- Application Metadata ---
AppName=VeriWaveX
AppVersion=1.0.1
AppPublisher=Aritrash Sarkar
AppCopyright=Copyright © 2026 Aritrash Sarkar
DefaultDirName={autopf}\VeriWaveX
DefaultGroupName=VeriWaveX
UninstallDisplayIcon={app}\veriwavex.exe

; --- Installer Appearance ---
SetupIconFile=assets\logo.ico
WizardStyle=modern
Compression=lzma2/max
SolidCompression=yes
OutputBaseFilename=VeriWaveX_v1.0.1_Setup
OutputDir=dist

; --- Security & Permissions ---
PrivilegesRequired=lowest
CloseApplications=yes

[Files]
; The main application binary
Source: "target\release\veriwavex.exe"; DestDir: "{app}"; Flags: ignoreversion

; The entire vendor tree (CRITICAL: RecurseSubdirs ensures Icarus/GTKWave bin folders stay intact)
Source: "vendor\*"; DestDir: "{app}\vendor"; Flags: ignoreversion recursesubdirs createallsubdirs

; Assets folder (For icons and splash)
Source: "assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs

[Icons]
; Desktop and Start Menu Shortcuts
Name: "{autoprograms}\VeriWaveX"; Filename: "{app}\veriwavex.exe"; IconFilename: "{app}\assets\logo.ico"
Name: "{autodesktop}\VeriWaveX"; Filename: "{app}\veriwavex.exe"; IconFilename: "{app}\assets\logo.ico"

[Run]
; Auto-launch after installation finishes
Filename: "{app}\veriwavex.exe"; Description: "{cm:LaunchProgram,VeriWaveX}"; Flags: nowait postinstall skipifsilent