" ================================================================
" OS���Ȃǂ̍��ɂ���Ďg���������鍀��
" ================================================================
" �|�[�^�u�����ݒ�̃��[�g�f�B���N�g��
let $ConfigPath = $HOME. "/vim_config/"
" dein ����� dein�Ǘ��v���O�C���̃C���X�g�[����
let $WorkingPath = $ConfigPath. ".working/"
let $GithubPath = $WorkingPath. "repos/github.com/"
let $ShougoPath = $GithubPath. "Shougo/"
let $DeinPath = $ShougoPath. "dein.vim/"

" Add the dein installation directory into runtimepath
set runtimepath+=$DeinPath
" backup_directory
let $BackupPath = $WorkingPath. "/.backup"
set backupdir =$BackupPath

filetype plugin indent on
syntax enable

" �����N���e���N���b�v�{�[�h�ɓ]���@linux �ɂ��Ή�
command Pbcopy :let @*=@"  "�Ō��yank or �폜�������e���N���b�v�{�[�h�ɓ����
command Pbcopy0 :let @*=@0 "�Ō��yank�������e���N���b�v�{�[�h�ɓ����

" �E�C���h�E���ő剻�igvim�݂̂̐ݒ�j
au GUIEnter * simalt ~x
