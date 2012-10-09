# Installs all the configs

BASH_DIR  		= ${HOME}/.bash
VIM_DIR   		= ${HOME}/.vim
CODE_DIR  		= ${HOME}/code
OHMYZSH_DIR 	= ${HOME}/.oh-my-zsh

all: clean link

clean: clean-bash clean-zsh clean-vim clean-code clean-jshintrc
link: link-bash link-zsh link-profile link-git link-vim link-code link-jshintrc

clean-zsh:
	if test -e ${OHMYZSH_DIR} ; then rm -i ${OHMYZSH_DIR}; fi ; \
	if test -e ${HOME}/.zshrc ; then rm -i ${HOME}/.zshrc; fi ;

clean-bash:
	if test -e ${BASH_DIR} ; then rm -i ${BASH_DIR}; fi ; 

clean-vim:
	if test -e ${VIM_DIR} ; then rm -i ${VIM_DIR}; fi ; 

clean-code:
	if test -e ${CODE_DIR} ; then rm -i ${CODE_DIR}; fi ; 

clean-jshintrc:
	if test -e ${HOME}/.jshintrc ; then rm -i ${HOME}/.jshintrc; fi ; 

link-bash: bash 
	ln -ihs `pwd`/bash ${BASH_DIR} ;

link-zsh: zshrc oh-my-zsh
	if test -e ${HOME}/.zshrc ; then cp ${HOME}/.zshrc ${HOME}/zshrc.old.`date "+%Y-%m-%d-%H-%M-%S"`; fi ; \
	ln -ihs `pwd`/zshrc ${HOME}/.zshrc ; \
	ln -ihs `pwd`/oh-my-zsh ${HOME}/.oh-my-zsh ;
  
link-profile: ${BASH_DIR} profile
	if test -e ${HOME}/.profile ; then cp ${HOME}/.profile ${HOME}/profile.old.`date "+%Y-%m-%d-%H-%M-%S"`; fi ; \
	ln -ihs `pwd`/profile ${HOME}/.profile ;

link-git: gitignore gitconfig
	ln -ihs `pwd`/gitignore ${HOME}/.gitignore ; \
  ln -ihs `pwd`/gitconfig ${HOME}/.gitconfig ;

link-vim: vimrc
	ln -ihs `pwd`/vimrc ${HOME}/.vimrc ;
	ln -ihs `pwd`/vim ${VIM_DIR} ;

link-code: code
	ln -ihs ${HOME}/Dropbox/code ${CODE_DIR} ;

link-jshint: jshintrc
	ln -ihs `pwd`/jshintrc ${HOME}/.jshintrc ;
