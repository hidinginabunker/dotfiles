# Installs all the configs

BASH_DIR  = ${HOME}/.bash

all: clean link

clean: clean-bash
link: link-bash link-profile link-git link-vim

clean-bash:
	if test -e ${BASH_DIR} ; then rm -i ${BASH_DIR}; fi ; 

link-bash: bash 
	ln -ihs `pwd`/bash ${BASH_DIR} ;
  
link-profile: ${BASH_DIR} profile
	if test -e ${HOME}/.profile ; then cp ${HOME}/.profile ${HOME}/profile.old.`date "+%Y-%m-%d-%H-%M-%S"`; fi ; \
	ln -ihs `pwd`/profile ${HOME}/.profile ;

link-git: gitignore gitconfig
	ln -ihs `pwd`/gitignore ${HOME}/.gitignore ; \
  ln -ihs `pwd`/gitconfig ${HOME}/.gitconfig ;

link-vim: vimrc
	ln -ihs `pwd`/vimrc ${HOME}/.vimrc ;
