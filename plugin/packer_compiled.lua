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
local package_path_str = "/home/gfrasca/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gfrasca/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gfrasca/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gfrasca/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gfrasca/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ale = {
    commands = { "ALEEnable" },
    config = { "vim.cmd[[ALEEnable]]" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/ale",
    url = "https://github.com/w0rp/ale"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["completion-nvim"] = {
    after = { "vim-vsnip", "vim-vsnip-integ" },
    loaded = false,
    needs_bufread = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/completion-nvim",
    url = "https://github.com/haorenW1025/completion-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  firenvim = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["monokai-pro.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0" },
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/monokai-pro.nvim",
    url = "https://github.com/loctvl842/monokai-pro.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\28\0\0\a\0o\0�\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3D\0005\4$\0005\5#\0=\5%\0045\5&\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\0045\5,\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0045\0052\0=\0053\0045\0054\0=\0055\0045\0056\0=\0057\0045\0058\0=\0059\0045\5:\0=\5;\0045\5<\0=\5=\0045\5>\0=\5?\0045\5@\0=\5A\0045\5B\0=\5C\4=\4E\3=\3F\0024\3\0\0=\3G\0025\3H\0005\4I\0=\4J\0035\4L\0005\5K\0=\5M\0045\5N\0005\6O\0=\6P\5=\5Q\0045\5R\0005\6S\0=\6P\5=\5T\4=\4U\3=\3V\0024\3\0\0=\3W\0025\3^\0005\4X\0004\5\0\0=\5Y\0044\5\0\0=\5Z\0044\5\0\0=\5[\0044\5\0\0=\5\\\0044\5\0\0=\5]\4=\4_\0035\4a\0005\5`\0=\5U\0045\5b\0=\5c\4=\4V\0034\4\0\0=\4G\3=\3d\0025\3e\0005\4g\0005\5f\0=\5U\4=\4V\3=\3h\0025\3k\0005\4i\0005\5j\0=\5U\4=\4V\3=\3!\0025\3l\0=\3m\2B\0\2\0016\0\0\0009\0\1\0'\2n\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\20source_selector\1\0\2\vwinbar\2\15statusline\1\1\0\0\1\0\a\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\1\0\0\1\0\n\n<c-x>\17clear_filter\6#\17fuzzy_sorter\6f\21filter_on_submit\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\t<bs>\16navigate_up\6/\17fuzzy_finder\6.\rset_root\a[g\22prev_git_modified\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\6A\18add_directory\n<esc>\19revert_preview\6?\14show_help\6x\21cut_to_clipboard\6z\20close_all_nodes\6q\17close_window\6C\15close_node\6R\frefresh\6s\16open_vsplit\6c\tcopy\6S\15open_split\6>\16next_source\6<\16prev_source\6t\16open_tabnew\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6r\vrename\6w\28open_with_window_picker\6d\vdelete\6l\18focus_preview\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\21document_symbols\nkinds\1\0\0\17StaticMethod\1\0\2\ticon\n󰠄 \ahl\rFunction\18TypeParameter\1\0\2\ticon\t󰊄\ahl\tType\rOperator\1\0\2\ticon\t󰆕\ahl\rOperator\vStruct\1\0\2\ticon\t󰌗\ahl\tType\bKey\1\0\2\ticon\t󰌋\ahl\5\vObject\1\0\2\ticon\t󰅩\ahl\tType\nArray\1\0\2\ticon\t󰅪\ahl\tType\vNumber\1\0\2\ticon\t󰎠\ahl\vNumber\vString\1\0\2\ticon\t󰀬\ahl\vString\rFunction\1\0\2\ticon\t󰊕\ahl\rFunction\tEnum\1\0\2\ticon\t󰒻\ahl\f@number\rProperty\1\0\2\ticon\t󰆧\ahl\14@property\nClass\1\0\2\ticon\t󰌗\ahl\fInclude\fPackage\1\0\2\ticon\t󰏖\ahl\nLabel\14Namespace\1\0\2\ticon\t󰌗\ahl\fInclude\tFile\1\0\0\1\0\2\ticon\t󰈙\ahl\bTag\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\fignored\b\14untracked\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\16folder_open\b\18folder_closed\b\14highlight\20NeoTreeFileIcon\fdefault\6*\17folder_empty\bﰊ\vindent\1\0\t\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-treesitter"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-closer"] = {
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/vim-closer",
    url = "https://github.com/rstacruz/vim-closer"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-matchup"] = {
    after_files = { "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/home/gfrasca/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: monokai-pro.nvim
time([[Config for monokai-pro.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0", "config", "monokai-pro.nvim")
time([[Config for monokai-pro.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\28\0\0\a\0o\0�\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3D\0005\4$\0005\5#\0=\5%\0045\5&\0=\5'\0045\5(\0=\5)\0045\5*\0=\5+\0045\5,\0=\5-\0045\5.\0=\5/\0045\0050\0=\0051\0045\0052\0=\0053\0045\0054\0=\0055\0045\0056\0=\0057\0045\0058\0=\0059\0045\5:\0=\5;\0045\5<\0=\5=\0045\5>\0=\5?\0045\5@\0=\5A\0045\5B\0=\5C\4=\4E\3=\3F\0024\3\0\0=\3G\0025\3H\0005\4I\0=\4J\0035\4L\0005\5K\0=\5M\0045\5N\0005\6O\0=\6P\5=\5Q\0045\5R\0005\6S\0=\6P\5=\5T\4=\4U\3=\3V\0024\3\0\0=\3W\0025\3^\0005\4X\0004\5\0\0=\5Y\0044\5\0\0=\5Z\0044\5\0\0=\5[\0044\5\0\0=\5\\\0044\5\0\0=\5]\4=\4_\0035\4a\0005\5`\0=\5U\0045\5b\0=\5c\4=\4V\0034\4\0\0=\4G\3=\3d\0025\3e\0005\4g\0005\5f\0=\5U\4=\4V\3=\3h\0025\3k\0005\4i\0005\5j\0=\5U\4=\4V\3=\3!\0025\3l\0=\3m\2B\0\2\0016\0\0\0009\0\1\0'\2n\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\20source_selector\1\0\2\vwinbar\2\15statusline\1\1\0\0\1\0\a\agp\rgit_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\1\0\0\1\0\n\n<c-x>\17clear_filter\6#\17fuzzy_sorter\6f\21filter_on_submit\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\t<bs>\16navigate_up\6/\17fuzzy_finder\6.\rset_root\a[g\22prev_git_modified\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\6A\18add_directory\n<esc>\19revert_preview\6?\14show_help\6x\21cut_to_clipboard\6z\20close_all_nodes\6q\17close_window\6C\15close_node\6R\frefresh\6s\16open_vsplit\6c\tcopy\6S\15open_split\6>\16next_source\6<\16prev_source\6t\16open_tabnew\t<cr>\topen\18<2-LeftMouse>\topen\6m\tmove\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6r\vrename\6w\28open_with_window_picker\6d\vdelete\6l\18focus_preview\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\21document_symbols\nkinds\1\0\0\17StaticMethod\1\0\2\ticon\n󰠄 \ahl\rFunction\18TypeParameter\1\0\2\ticon\t󰊄\ahl\tType\rOperator\1\0\2\ticon\t󰆕\ahl\rOperator\vStruct\1\0\2\ticon\t󰌗\ahl\tType\bKey\1\0\2\ticon\t󰌋\ahl\5\vObject\1\0\2\ticon\t󰅩\ahl\tType\nArray\1\0\2\ticon\t󰅪\ahl\tType\vNumber\1\0\2\ticon\t󰎠\ahl\vNumber\vString\1\0\2\ticon\t󰀬\ahl\vString\rFunction\1\0\2\ticon\t󰊕\ahl\rFunction\tEnum\1\0\2\ticon\t󰒻\ahl\f@number\rProperty\1\0\2\ticon\t󰆧\ahl\14@property\nClass\1\0\2\ticon\t󰌗\ahl\fInclude\fPackage\1\0\2\ticon\t󰏖\ahl\nLabel\14Namespace\1\0\2\ticon\t󰌗\ahl\fInclude\tFile\1\0\0\1\0\2\ticon\t󰈙\ahl\bTag\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\fignored\b\14untracked\b\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\16folder_open\b\18folder_closed\b\14highlight\20NeoTreeFileIcon\fdefault\6*\17folder_empty\bﰊ\vindent\1\0\t\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\25close_if_last_window\1\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd barbecue.nvim ]]

-- Config for: barbecue.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Make', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Make', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Make ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'ALEEnable', function(cmdargs)
          require('packer.load')({'ale'}, { cmd = 'ALEEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ale'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ALEEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Start', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Start', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Start ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MarkdownPreview', function(cmdargs)
          require('packer.load')({'markdown-preview.nvim'}, { cmd = 'MarkdownPreview', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'markdown-preview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('MarkdownPreview ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Focus', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Focus', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Focus ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType sh ++once lua require("packer.load")({'ale'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'ale'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'ale'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'ale'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'ale'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'ale'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ale'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType racket ++once lua require("packer.load")({'ale'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'ale'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ale'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType cmake ++once lua require("packer.load")({'ale'}, { ft = "cmake" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-matchup'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
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