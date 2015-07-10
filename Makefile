VIM = ${HOME}/.vim/bundle
VPATH = $(VIM):.
SRC = dot_vimrc
DEST = .vimrc

install: Vundle.vim vimrc ir_black swap

Vundle.vim:
	git clone https://github.com/gmarik/Vundle.vim.git $(VIM)/$@

vimrc:
	cp .${SRC} ${HOME}/.${DEST}

ir_black:
	git clone git@github.com:twerth/ir_black.git 
	mkdir -p ${HOME}/.vim/colors
	cp ir_black/colors/*.vim ${HOME}/.vim/colors
	rm -rf ir_black

swap:
	mkdir -p ${HOME}/.vim/swap
