; Kalyug C++ Student Kit - Installer (v3.0) - Red Holographic Brand
; Save as: KalyugCxxKit_v2.iss
; Source files must be under C:\KalyugInstaller\ as described in the header comments.

#define AppName "Kalyug C++ Student Kit"
#define AppVersion "3.0"
#define AppPublisher "Him United"
#define SourceRoot "C:\KalyugInstaller"
#define MinGWTarget "C:\mingw64"
#define UserDocsFolderName "Kalyug C++ Student Kit"

[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
OutputBaseFilename=Kalyug_cxx_v3
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
UsedUserAreasWarning=no
ArchitecturesInstallIn64BitMode=x64compatible
DisableProgramGroupPage=no
DisableDirPage=no
Uninstallable=yes

; Branding
SetupIconFile="{#SourceRoot}\branding\icon.ico"
WizardSmallImageFile="{#SourceRoot}\branding\banner.bmp"
UninstallDisplayIcon="{app}\branding\icon.ico"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
; Ensure Documents target folders are created for the user running the installer
Name: "{userdocs}\{#UserDocsFolderName}"
Name: "{userdocs}\{#UserDocsFolderName}\.bin"
Name: "{userdocs}\{#UserDocsFolderName}\.vscode"
Name: "{userdocs}\{#UserDocsFolderName}\Examples"

[Files]
; Branding files copied into application folder (so uninstall can remove them)
Source: "{#SourceRoot}\branding\icon.ico"; DestDir: "{app}\branding"; Flags: ignoreversion
Source: "{#SourceRoot}\branding\banner.bmp"; DestDir: "{app}\branding"; Flags: ignoreversion

; Portable MinGW - copy entire portable folder to C:\mingw64
Source: "{#SourceRoot}\mingw64\*"; DestDir: "{code:GetMinGWDir}"; Flags: recursesubdirs createallsubdirs

; Examples -> put into user's Documents\Kalyug C++ Student Kit\Examples
Source: "{#SourceRoot}\examples\*"; DestDir: "{userdocs}\{#UserDocsFolderName}\Examples"; Flags: recursesubdirs createallsubdirs

; VSCode templates -> copy tasks.json and launch.json into the user's .vscode folder
Source: "{#SourceRoot}\vscode-templates\tasks.json"; DestDir: "{userdocs}\{#UserDocsFolderName}\.vscode"; Flags: ignoreversion
Source: "{#SourceRoot}\vscode-templates\launch.json"; DestDir: "{userdocs}\{#UserDocsFolderName}\.vscode"; Flags: ignoreversion

; README
Source: "{#SourceRoot}\README.txt"; DestDir: "{userdocs}\{#UserDocsFolderName}"; Flags: ignoreversion

; postinstall script that updates PATH (powershell)
Source: "{#SourceRoot}\scripts\postinstall.ps1"; DestDir: "{app}\scripts"; Flags: ignoreversion

[Icons]
; Start Menu entries
Name: "{group}\{#AppName} - Examples"; Filename: "{userdocs}\{#UserDocsFolderName}\Examples"; IconFilename: "{app}\branding\icon.ico"
Name: "{group}\{#AppName} - ReadMe"; Filename: "{userdocs}\{#UserDocsFolderName}\README.txt"; IconFilename: "{app}\branding\icon.ico"

; Desktop shortcut to Examples
Name: "{commondesktop}\{#AppName} - Examples"; Filename: "{userdocs}\{#UserDocsFolderName}\Examples"; IconFilename: "{app}\branding\icon.ico"

[Run]
; Run the postinstall PS1 to update PATH (hidden). Installer runs elevated (admin).
Filename: "powershell.exe"; Parameters: "-NoProfile -ExecutionPolicy Bypass -File ""{app}\scripts\postinstall.ps1"""; Flags: runhidden waituntilterminated

; After postinstall, open the Examples folder for the user
Filename: "explorer.exe"; Parameters: """{userdocs}\{#UserDocsFolderName}\Examples"""; Flags: nowait postinstall skipifsilent

[Code]
function GetMinGWDir(Param: String): String;
begin
  { Target folder for MinGW on the user's PC }
  Result := ExpandConstant('{#MinGWTarget}');
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  { No special actions required here currently. }
end;

{ Optional: detect if MinGW already exists and warn the user (not overwriting by default) }
function InitializeSetup(): Boolean;
begin
  Result := True;
  if DirExists(GetMinGWDir('')) then
  begin
    if MsgBox('A folder already exists at "' + GetMinGWDir('') + '".' + #13#10 +
              'If you continue, the MinGW files in that folder may be overwritten. Continue?', mbConfirmation, MB_YESNO) = IDNO then
    begin
      Result := False;
    end;
  end;
end;
