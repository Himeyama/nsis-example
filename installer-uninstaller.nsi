# �C���X�g�[���[�̖��O���`
OutFile "installer.exe"

# �C���X�g�[����̃f�B���N�g�����f�X�N�g�b�v�ɐݒ�
InstallDir $DESKTOP

# �f�t�H���g�̃Z�N�V�������J�n
Section

# �o�̓p�X���`
SetOutPath $INSTDIR

# �o�̓p�X�ɔz�u����t�@�C�����w��
File README.md

# �A���C���X�g�[���[�̖��O���`
WriteUninstaller $INSTDIR\uninstaller.exe

# �f�t�H���g�̃Z�N�V�������I��
SectionEnd

# �A���C���X�g�[���[�̓�����`����Z�N�V�������쐬
# �Z�N�V�������͏�� "Uninstall" �ɂȂ�܂�
Section "Uninstall"

# �C���X�g�[�����ꂽ�t�@�C�����폜
Delete $INSTDIR\README.md

# �A���C���X�g�[���[���̂��폜
Delete $INSTDIR\uninstaller.exe

# �f�B���N�g�����폜
RMDir $INSTDIR
SectionEnd