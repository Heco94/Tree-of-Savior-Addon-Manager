@echo off

echo =======================================================
echo.
echo �A�h�I���}�l�[�W���[�@��񏉊����c�[��
echo �E�A�h�I���}�l�[�W���[�̃C���X�g�[���󋵂Ȃǂ̐ݒ�������������܂�
echo �@ToS�ăC���X�g�[���������ǃA�h�I���}�l�[�W���[�ɃC���X�g�[�����
echo �@�c���Ă�A�Ƃ��������ɂ��g�p���������B
echo �@(�ݒ�t�H���_�ł���
echo �@ %APPDATA%\tree-of-savior-addon-manager
echo �@ �̃t�H���_���폜���܂�)
echo.
echo ��ToS���̃A�h�I���̍폜�͎��{���܂���
echo �@�����܂ł��A�A�h�I���}�l�[�W���[�̏������������܂��B
echo =======================================================
echo.
if not exist %APPDATA%\tree-of-savior-addon-manager (
	echo �E�E�E�Ǝv���܂������A�폜�����񂪂���܂���B
	echo ���߂łƂ��������܂��A���ɏ���������Ă��܂����B
	echo.
	echo �����L�[�������ƏI�����܂��B
	pause >NUL 2>&1
	exit
)
echo ��������ꍇ�́Ay��Y�������ď����𑱍s���Ă��������B
echo.

: INPUTMODE
set input=
set /p input="�����𑱍s���Ă���낵���ł����H(Y/N): "
if /i "%input%"=="y" (
	goto PROCESS
) else if /i "%input%"=="n" (
	echo.
	echo N�����͂��ꂽ�̂ŏI�����܂��B
	echo.
	echo �����L�[�������ƏI�����܂��B
	pause >NUL 2>&1
	exit
) else (
	goto INPUTMODE
)


: PROCESS

echo.
echo �A�h�I���}�l�[�W���[�������������܂��B
rmdir /s /q %APPDATA%\tree-of-savior-addon-manager >NUL 2>&1
echo.
echo ���������������܂����I
echo.
echo �����L�[�������ƏI�����܂��B
pause >NUL 2>&1
exit
