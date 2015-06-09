VIM = ${HOME}/.vim/bundle
VPATH = $(VIM):.
DOT_VIMRC=.vimrc

install: Vundle.vim dot_vimrc ir_black swap

Vundle.vim:
	git clone https://github.com/gmarik/Vundle.vim.git $(VIM)/$@

dot_vimrc:
	cp $@ ${HOME}/${DOT_VIMRC}

ir_black:
	git clone git@github.com:twerth/ir_black.git 
	mkdir -p ${HOME}/.vim/colors
	cp ir_black/colors/*.vim ${HOME}/.vim/colors
	rm -rf ir_black

swap:
	mkdir -p ${HOME}/.vim/swap
