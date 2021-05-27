"Configuraciones de vim y neovim
set number "Setear numeros al lado izquierdo
set nolist "Oculta los caracteres como espacios, tab, etc
set mouse=a "Nos permite usar el mouse
set numberwidth=1 "El ancho de los numeros del lado izquierda
set clipboard=unnamed "Para poder usar lo copiado con el mouse
syntax enable "para resaltar sintaxis dentro de vim
set showcmd "para que me resalte los comandos que estoy ejecutando
set ruler "para ver por defecto en numero de linea actual en vim
set encoding=utf-8 "setear la codificacion del archivo
set showmatch "cuando me posiciono sobre un parentesis me muestra el parentesis que se esta cerrando
set sw=2 "Cuando estemos editando el texto en vez de usar tab usa 2 espacios
set relativenumber "Donde se encuentra el cursor es cero y muestra la distancia entre lineas

"Directorio de plugins
call plug#begin('~/.config/nvim/plugged')

"Aquí irán los plugins a instalar

"Theme ayu-vim
Plug 'ayu-theme/ayu-vim'

"identLine, para mostrar las lineas identadas
Plug 'Yggdroot/indentLine'

"emmet, para crear estructuras html con atajos de teclado
Plug 'mattn/emmet-vim'

"Easymotion,
Plug 'easymotion/vim-easymotion' 

"nerdtree
Plug 'scrooloose/nerdtree'

"Navegar entre archivos de NerdTree
Plug 'christoomey/vim-tmux-navigator'

"Colorea las sentencias de Javascript
Plug 'pangloss/vim-javascript' "Javascript Support

"Colorea las sentencias de TypeScript
Plug 'leafgarland/typescript-vim' "TypeScript Syntax

"Coc es un motor de autocompletado
Plug 'neoclide/coc.nvim', {'branch':'release'}

"Command line fuzzy finder es un buscardor de ficheros
Plug 'junegunn/fzf',{'do':{-> fzf#install()}}
Plug 'junegunn/fzf.vim'

"Vim-airline tema para la barra inferior
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Soporte para php coc-phpls
Plug 'marlonfan/coc-phpls'

call plug#end()


"Luego de esta linea puedes agregar tus configuraciones y mappings

"Mapping de mis taclas
let mapleader="," "TECLA Lider

"Theme ayu-vim
set termguicolors
"let ayucolor="dark" "for dark version of theme
let ayucolor="mirage" "for mirage version of theme
colorscheme ayu

" IndentLine 
let g:indentLine_defaultGroup='Specialkey'
let g:indentLine_char_list=['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel=1 

let g:indentLine_setColors=0
"Redifine trigger key emmet
let g:user_emmet_leader_key=','

"NerdTree
let NERDTreeQuitOnOpen=1

"Easymotion, buscar por dos caracteres
nmap <Leader>s <Plug>(easymotion-s2) 
nmap <Leader>w <Plug>(easymotion-w)

"NerdTree
nmap <leader>nt :NERDTreeFind<CR>

"GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Files line fuzzy finder 
noremap <leader>fs :Files<cr>

"CocSearch
noremap <leader>gs :CocSearch

"CocPrettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <leader>f :Prettier<CR>

"Comandos personalizados

"Guardar el archivo en VIM
nmap <Leader>w :w<CR>
"Salir del arquivo en VIM
nmap <Leader>q :q<CR>
"Limpiar el resaltado de busqueda de VIM
nmap <Leader>n :noh<CR> 

"Seleccionar tema para vim-airline
let g:airline_theme ='papercolor'
let g:airline#extensions#tabline#enabled = 1
