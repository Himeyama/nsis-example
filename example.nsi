# ���{��UI
LoadLanguageFile "${NSISDIR}\\Contrib\\Language files\\Japanese.nlf"

# �A�v���P�[�V������
Name "Hikari Server"

# �쐬�����C���X�g�[��
OutFile "Install.exe"

# �C���X�g�[�������f�B���N�g��
InstallDir "$LOCALAPPDATA\hikari-server"

# �y�[�W
Page directory
Page instfiles

# �A���C���X�g�[�� �y�[�W
UninstPage uninstConfirm
UninstPage instfiles

# �f�t�H���g �Z�N�V����
Section
    # �o�͐���w�肵�܂��B
    SetOutPath "$INSTDIR"

    # �C���X�g�[�������t�@�C��
    File /r "hikari-server\*.*"

    # �A���C���X�g�[�����o��
    WriteUninstaller "$INSTDIR\\Uninstall.exe"

    # �X�^�[�g ���j���[�ɃV���[�g�J�b�g��o�^
    CreateDirectory "$SMPROGRAMS\\Hikari Server"
    SetOutPath "$INSTDIR"
    CreateShortcut "$SMPROGRAMS\\Hikari Server\\Hikari Server.lnk" "$INSTDIR\\hikari-server.exe" ""

    # ���W�X�g���ɓo�^
    WriteRegStr HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer" "DisplayName" "Hikari Server"
    WriteRegStr HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer" "UninstallString" '"$INSTDIR\\Uninstall.exe"'
SectionEnd

# �A���C���X�g�[��
Section "Uninstall"
    # �A���C���X�g�[�����폜
    Delete "$INSTDIR\\Uninstall.exe"

    # �t�@�C�����폜
    Delete "$INSTDIR\\hikari-server.exe"

    # �f�B���N�g�����폜
    RMDir /r "$INSTDIR"

    # �X�^�[�g ���j���[����폜
    Delete "$SMPROGRAMS\\Hikari Server\\Hikari Server.lnk"
    RMDir "$SMPROGRAMS\\Hikari Server"

    # ���W�X�g�� �L�[���폜
    DeleteRegKey HKLM "Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\HikariServer"
SectionEnd