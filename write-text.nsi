# �C���X�g�[���t�@�C���̖��O��錾
Outfile "hello world.exe"
 
# �Z�N�V�������J�n���܂�
Section
 
# OK �{�^���ƃe�L�X�g������|�b�v�A�b�v�{�b�N�X���쐬
MessageBox MB_OK "�f�X�N�g�b�v�� Hello_world.txt ���쐬���܂�"
 
# "Hello_world.txt" �Ƃ������O�̏o�̓t�@�C�����f�X�N�g�b�v�ŏ������݃��[�h�J��
# ���̃t�@�C���̓X�N���v�g���R���p�C��������s�����O�ɕs�v

FileOpen $0 "$DESKTOP\Hello_world.txt" w

# �o�̓t�@�C���ɕ����� "hello world!" ����������
FileWrite $0 "hello world!"
 
# �t�@�C�������
FileClose $0

# �������b�Z�[�W��\���B
MessageBox MB_OK "Hello_world.txt ���f�X�N�g�b�v�ɐ���ɍ쐬����܂���"
 
# �Z�N�V�������I��
SectionEnd