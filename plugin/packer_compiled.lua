-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/michaelguerino/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?.lua;/Users/michaelguerino/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?/init.lua;/Users/michaelguerino/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?.lua;/Users/michaelguerino/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/michaelguerino/.cache/nvim/packer_hererocks/2.1.1744318430/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["avante.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vavante\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "https://github.com/yetone/avante.nvim"
  },
  ["blade-nav.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14blade-nav\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/opt/blade-nav.nvim",
    url = "https://github.com/ricardoramirezr/blade-nav.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/conform\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["copilot.vim"] = {
    config = { "\27LJ\2\n \2\0\0\b\0\f\0\0236\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0016\1\0\0009\1\1\0019\1\2\1\18\2\1\0'\4\3\0'\5\a\0'\6\b\0005\a\t\0B\2\5\0016\2\0\0009\2\n\2+\3\2\0=\3\v\2K\0\1\0\23copilot_no_tab_map\6g\1\0\4\vsilent\2\21replace_keycodes\1\texpr\2\fnoremap\2 copilot#AcceptWord('<C-j>')\n<C-j>\1\0\4\vsilent\2\21replace_keycodes\1\texpr\2\fnoremap\2\27copilot#Accept('<CR>')\n<C-l>\6i\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nß\2\0\0\5\0\17\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\15\0'\4\16\0B\0\4\1K\0\1\0\29:Gitsigns blame_line<CR>\agb\31:Gitsigns preview_hunk<CR>\agp\29:Gitsigns stage_hunk<CR>\ags\28:Gitsigns prev_hunk<CR>\a[h\28:Gitsigns next_hunk<CR>\a]h\6n\bset\vkeymap\bvim\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/harpoon\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"user/plugins/indent-blankline\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\nž\6\0\0\t\0\29\0j6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\6\0005\4\n\0006\5\0\0009\5\4\0059\5\a\5'\a\b\0+\b\2\0B\5\3\0029\5\t\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\b\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\15\0005\4\16\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\17\0005\4\19\0006\5\0\0009\5\4\0059\5\a\5'\a\18\0+\b\2\0B\5\3\0029\5\t\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\18\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\20\0005\4\21\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\22\0005\4\25\0006\5\0\0009\5\4\0059\5\a\5'\a\23\0+\b\2\0B\5\3\0029\5\24\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\26\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\27\0005\4\28\0B\0\4\1K\0\1\0\1\0\1\afg\f#424454\24IndentBlanklineChar\15StatusLine\1\0\2\afg\0\abg\0\15foreground\fNonText\22StatusLineNonText\1\0\1\afg\f#30323E\25NvimTreeIndentMarker\1\0\2\afg\0\abg\0\15CursorLine\17CursorLineBg\1\0\1\afg\f#BF616A\22@variable.builtin\1\0\1\afg\f#BF616A\22@function.builtin\abg\afg\1\0\2\afg\0\abg\0\15background\16NormalFloat\24nvim_get_hl_by_name\16FloatBorder\16nvim_set_hl\bapi\29hi Comment guifg=#60728a\23colorscheme dayfox\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/autopairs\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user/plugins/cmp\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28user/plugins/treesitter\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/autotag\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    config = { "\27LJ\2\nB\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0'user/plugins/context-commentstring\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.plugins.oil\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["other.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23user.plugins.other\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/other.nvim",
    url = "https://github.com/rgroli/other.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["render-markdown.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["snacks.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/snacks.nvim",
    url = "https://github.com/folke/snacks.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/telescope\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28user/plugins/toogleterm\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-composer"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-composer",
    url = "https://github.com/noahfrederick/vim-composer"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\nƒ\3\0\0\5\0\15\1\0316\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0B\0\4\0016\0\0\0009\0\6\0009\0\a\0'\2\v\0'\3\t\0'\4\f\0B\0\4\0016\0\0\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0z                highlight link Floaterm Normal\n                highlight link FloatermBorder Comment\n                \bcmd\"<C-\\><C-n>:FloatermToggle<CR>\6t\24:FloatermToggle<CR>\n<M-y>\6n\bset\vkeymap\5\19floaterm_title\20floaterm_height\19floaterm_width\6g\bvimçÌ™³\6³æ¬ÿ\3\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-laravel"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-laravel",
    url = "https://github.com/noahfrederick/vim-laravel"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-projectionist"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31user/plugins/projectionist\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26user/plugins/vim-test\frequire\0" },
    loaded = true,
    path = "/Users/michaelguerino/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-ts-context-commentstring
time([[Config for nvim-ts-context-commentstring]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0'user/plugins/context-commentstring\frequire\0", "config", "nvim-ts-context-commentstring")
time([[Config for nvim-ts-context-commentstring]], false)
-- Config for: avante.nvim
time([[Config for avante.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vavante\frequire\0", "config", "avante.nvim")
time([[Config for avante.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28user/plugins/treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.plugins.oil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nß\2\0\0\5\0\17\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\15\0'\4\16\0B\0\4\1K\0\1\0\29:Gitsigns blame_line<CR>\agb\31:Gitsigns preview_hunk<CR>\agp\29:Gitsigns stage_hunk<CR>\ags\28:Gitsigns prev_hunk<CR>\a[h\28:Gitsigns next_hunk<CR>\a]h\6n\bset\vkeymap\bvim\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\nž\6\0\0\t\0\29\0j6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\6\0005\4\n\0006\5\0\0009\5\4\0059\5\a\5'\a\b\0+\b\2\0B\5\3\0029\5\t\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\b\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\r\0005\4\14\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\15\0005\4\16\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\17\0005\4\19\0006\5\0\0009\5\4\0059\5\a\5'\a\18\0+\b\2\0B\5\3\0029\5\t\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\18\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\20\0005\4\21\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\22\0005\4\25\0006\5\0\0009\5\4\0059\5\a\5'\a\23\0+\b\2\0B\5\3\0029\5\24\5=\5\v\0046\5\0\0009\5\4\0059\5\a\5'\a\26\0+\b\2\0B\5\3\0029\5\t\5=\5\f\4B\0\4\0016\0\0\0009\0\4\0009\0\5\0)\2\0\0'\3\27\0005\4\28\0B\0\4\1K\0\1\0\1\0\1\afg\f#424454\24IndentBlanklineChar\15StatusLine\1\0\2\afg\0\abg\0\15foreground\fNonText\22StatusLineNonText\1\0\1\afg\f#30323E\25NvimTreeIndentMarker\1\0\2\afg\0\abg\0\15CursorLine\17CursorLineBg\1\0\1\afg\f#BF616A\22@variable.builtin\1\0\1\afg\f#BF616A\22@function.builtin\abg\afg\1\0\2\afg\0\abg\0\15background\16NormalFloat\24nvim_get_hl_by_name\16FloatBorder\16nvim_set_hl\bapi\29hi Comment guifg=#60728a\23colorscheme dayfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26user/plugins/vim-test\frequire\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/harpoon\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nƒ\3\0\0\5\0\15\1\0316\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0B\0\4\0016\0\0\0009\0\6\0009\0\a\0'\2\v\0'\3\t\0'\4\f\0B\0\4\0016\0\0\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0z                highlight link Floaterm Normal\n                highlight link FloatermBorder Comment\n                \bcmd\"<C-\\><C-n>:FloatermToggle<CR>\6t\24:FloatermToggle<CR>\n<M-y>\6n\bset\vkeymap\5\19floaterm_title\20floaterm_height\19floaterm_width\6g\bvimçÌ™³\6³æ¬ÿ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-projectionist
time([[Config for vim-projectionist]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31user/plugins/projectionist\frequire\0", "config", "vim-projectionist")
time([[Config for vim-projectionist]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27user/plugins/autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28user/plugins/toogleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25user/plugins/conform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"user/plugins/indent-blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user/plugins/cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
try_loadstring("\27LJ\2\n \2\0\0\b\0\f\0\0236\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0016\1\0\0009\1\1\0019\1\2\1\18\2\1\0'\4\3\0'\5\a\0'\6\b\0005\a\t\0B\2\5\0016\2\0\0009\2\n\2+\3\2\0=\3\v\2K\0\1\0\23copilot_no_tab_map\6g\1\0\4\vsilent\2\21replace_keycodes\1\texpr\2\fnoremap\2 copilot#AcceptWord('<C-j>')\n<C-j>\1\0\4\vsilent\2\21replace_keycodes\1\texpr\2\fnoremap\2\27copilot#Accept('<CR>')\n<C-l>\6i\bset\vkeymap\bvim\0", "config", "copilot.vim")
time([[Config for copilot.vim]], false)
-- Config for: other.nvim
time([[Config for other.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23user.plugins.other\frequire\0", "config", "other.nvim")
time([[Config for other.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType php ++once lua require("packer.load")({'blade-nav.nvim'}, { ft = "php" }, _G.packer_plugins)]]
vim.cmd [[au FileType blade ++once lua require("packer.load")({'blade-nav.nvim'}, { ft = "blade" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
