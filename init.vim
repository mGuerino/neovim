set completeopt=menuone,noselect
set mouse=a " if I accidentally use the mouse
set splitright " splits to the right
set splitbelow " splits below
set expandtab " space characters instead of tab
set tabstop=4 " tab equals 2 spaces
set shiftwidth=4 " indentation
set softtabstop=4
set smartindent
set number " show absolute line numbers
set relativenumber " show relative number
set ignorecase " search case insensitive
set smartcase " search via smartcase
set incsearch " search incremental
set diffopt+=vertical " starts diff mode in vertical split
set hidden " allow hidden buffers
set nobackup " don't create backup files
set nowritebackup " don't create backup files
set cmdheight=1 " only one line for commands
set shortmess+=c " don't need to press enter so often
set signcolumn=yes " add a column for sings (e.g. LSP, ...)
set updatetime=520 " time until update
set undofile " persists undo tree
set showcmd " Affiche les commandes même si elles sont incomplètes
set scrolloff=3 " Permet de laisser 3 ligne au dessus du curseurs lorsque je fait z puis entrer
set noswapfile "Stopper les fichiers d'échange"
set linespace=2
set clipboard+=unnamed "Copier coller universel"
set nowrap

filetype plugin indent on " enable detection, plugins and indents
let g:closer_no_mappings = 1


let mapleader = " " " space as leader key


nnoremap <leader>ev :e $MYVIMRC<CR>

call plug#begin()
  Plug 'arcticicestudio/nord-vim'
  Plug 'tpope/vim-commentary'
  Plug 'szw/vim-maximizer'
  Plug 'kassio/neoterm'
  Plug 'sbdchd/neoformat'
  " Pour telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

  Plug 'neovim/nvim-lspconfig'
  " Plug 'kabouzeid/nvim-lspinstall'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'preservim/nerdtree'
  " Avec treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/playground'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'kassio/neoterm'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'
  " A changer avec plugin lua
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'mattn/emmet-vim'
  Plug 'sbdchd/neoformat'
  Plug 'jwalton512/vim-blade'
  Plug 'simrat39/symbols-outline.nvim'
  Plug 'vim-test/vim-test'
 call plug#end()
if (has("termguicolors"))
  set termguicolors " better colors, but makes it very slow!
 " set guifont=cascadia_code:17
endif

colorscheme nord
let g:nord_uniform_diff_background = 1 "Diff pour git"

nmap ,<Leader> :nohlsearch<cr>
" nnoremap <Leader>& :NERDTreeToggle<CR>

" neovim/nvim-lspconfig
" npm i -g vscode-langservers-extracted

lua require'lspconfig'.tsserver.setup{}

" npm i emmet-ls
lua << EOF
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.phpactor.setup{}


require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.tailwindcss.setup{
}

local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'    


if not lspconfig.emmet_ls then    
  configs.emmet_ls = {    
    default_config = {    
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css'};
      root_dir = function(fname)    
        return vim.loop.cwd()
      end;    
      settings = {};    
    };    
  }    
end    
lspconfig.emmet_ls.setup{ capabilities = capabilities; }

EOF

" Lsp
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gh     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gH    <cmd>:Telescope lsp_code_actions<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>

" telescope
" Find files using Telescope command-line sugar.
nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader><space> :Telescope git_files<CR>
nnoremap <leader>fd :lua telescope_find_files_in_path()<CR>
nnoremap <leader>fD :lua telescope_live_grep_in_path()<CR>
nnoremap <leader>ft :lua telescope_find_files_in_path("./tests")<CR>
nnoremap <leader>fT :lua telescope_live_grep_in_path("./tests")<CR>
" nnoremap <leader>ff :Telescope live_grep<CR>
nnoremap <leader>fo :Telescope file_browser<CR>
nnoremap <leader>fg :Telescope git_branches<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fs :Telescope lsp_document_symbols<CR>
nnoremap <leader>ff :Telescope live_grep<CR>
nnoremap <leader>FF :Telescope grep_string<CR>

" 'hrsh7th/nvim-compe'
lua << EOF
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  source = {
    path = true;
    buffer = true;
    nvim_lsp = true;
    vsnip = true;
    nvim_lua = true;
    treesitter = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 2
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})


EOF

 let g:vsnip_namespace = '' 
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {"css"}
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
    }, 
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    }
  }
}


EOF


" let g:completion_trigger_character = ['.']
"nvim-lspinstall

lua <<EOF
--require'lspinstall'.setup() -- important

--local servers = require'lspinstall'.installed_servers()
--for _, server in pairs(servers) do
--  require'lspconfig'[server].setup{}
--end


-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
--require'lspinstall'.post_install_hook = function ()
  --setup_servers() -- reload installed servers
  --vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
--end
EOF

" 'hoob3rt/lualine.nvim'
lua << EOF
  require('lualine').setup({
  options = {
    theme = "nord"
   },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
            { 'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
                }          },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
  
  tabline = {},
  extensions = {}
  })
EOF

" szw/vim-maximizer
nnoremap <silent> <C-m> :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
" let g:neoterm_size = 100
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-y> :Ttoggle<CR>
inoremap <c-y> <Esc>:Ttoggle<CR>
tnoremap <c-y> <c-\><c-n>:Ttoggle<CR>
nnoremap <leader>x :TREPLSendLine<CR>
vnoremap <leader>x :TREPLSendSelection<CR>
if has('nvim')
  au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
endif
  
" 'kyazdani42/nvim-tree.lua'
let g:nvim_tree_lsp_diagnostics = 1
nnoremap <Leader>& :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
let g:nvim_tree_highlight_opened_files=3
lua require'nvim-web-devicons'.setup {default = true}
let g:nvim_tree_quit_on_open = 1
lua require'nvim-tree'.setup()
"'glepnir/lspsaga.nvim'
lua << EOF
local saga = require 'lspsaga'
saga.init_lsp_saga()
EOF
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" emmet-vim
let g:user_emmet_leader_key='<C-q>'
" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" nvim-telescope/telescope-fzf-native.nvim
lua <<EOF
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF
"autopais
let g:AutoPairsFlyMode = 1

lua << EOF
require'lspconfig'.phpactor.setup{}
require "lsp_signature".setup()

EOF

" vim-test/vim-test
" let test#php#phpunit#executable = 'vendor/bin/phpunit'
let test#php#phpunit#executable = 'php artisan test'
let test#strategy = "neovim"
let test#neovim#term_position = "vertical"
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
