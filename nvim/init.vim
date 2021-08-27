" Defaults
source $HOME/.config/nvim/defaults.vim

" Mappings
source $HOME/.config/nvim/macros.vim


if exists('g:vscode')
	source $HOME/.config/nvim/vs-code.vim
else
	" Plugins
	source $HOME/.config/nvim/plugins.vim

	" Theme 
	source $HOME/.config/nvim/themes/onedark.vim

	"LSP
	source $HOME/.config/nvim/lsp.vim
endif
