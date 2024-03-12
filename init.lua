---+---------+------------------------------------------------------------------+
-- | PLUGINS | //////////////////////////////////////////////////////////////// |
---+---------+------------------------------------------------------------------+
---+----------------------------------------+
-- | PLUGIN MANAGER: wbthomason/packer.nvim |
---+----------------------------------------+

require('packer').startup(function(use)
  -- WE MUST ADD `PACKER` ITSELF HERE,
  -- PACKER TREATS ITSELF AS A PLUGIN,
  -- SO THAT IT WON'T TRY TO REMOVE ITSELF.
  use 'wbthomason/packer.nvim'
  ---+-------------------------+
  -- | ALL OTHER PLUGINS BELOW:|
  ---+-------------------------+
  use 'lewis6991/gitsigns.nvim'
  use 'rebelot/kanagawa.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)

---+------------------+
-- | PLUGIN: gitsigns |
---+------------------+
require('gitsigns').setup()


---+-----------------+
-- | PLUGIN: lualine |
---+-----------------+
require('lualine').setup {
  options = { 
    icons_enabled = true,
    --// theme = 'gruvbox_light',
	--// theme = 'onelight',
	--// theme = 'papercolor_light',
	theme = 'papercolor_dark',
	section_separators = { left = '   ', right = '   ' },
    component_separators = { left = '   ', right = '   ' }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


---+------------------------------+
-- | PLUGIN: kanagawa colorscheme |
---+------------------------------+
--// require("kanagawa").load('lotus')


---+-------------+--------------------------------------------------------------+
-- | PLUGINS END | ============================================================ |
---+-------------+--------------------------------------------------------------+





















---+-------------+---------------------------------------------------------------+
-- | SET OPTIONS | ///////////////////////////////////////////////////////////// |
---+-------------+---------------------------------------------------------------+
-- Show line numbers by default.
vim.opt.number = true

-- Set background to ligth scheme.
vim.cmd('set background=light')

-- Highlight the current cursor line.
vim.opt.cursorline = true

-- Use spaces instead of tabs. One tab will be 4 spaces.
vim.opt.tabstop = 4

-- Disable line wrapping, meaning long lines will extend horizontally off-screen
--   rather than wrapping into the next line.
vim.opt.wrap = false


---+-----------------+-----------------------------------------------------------+
-- | SET OPTIONS END | ========================================================= |
---+-----------------+-----------------------------------------------------------+






















---+-------------------+---------------------------------------------------------+
-- | NVIM KEY BINDINGS | /////////////////////////////////////////////////////// |
---+-------------------+---------------------------------------------------------+
-- In INSERT mode, press `ii`, back to NORMAL mode.
vim.api.nvim_set_keymap('i', 'ii', '<Esc>', {noremap = true, silent = true})

-- In VISUAL mode, press `ii`, back to NORMAL mode.
vim.api.nvim_set_keymap('v', 'ii', '<Esc>', {noremap = true, silent = true})

-- In INSERT mode, press `<command+j>`, move cursor to the beginning of line.
-- (Back to NORMAL mode, move the cursor to the beginning of line, then go into INSERT mode)
vim.api.nvim_set_keymap('i', '<D-j>', '<Esc>^i', {noremap = true, silent = true})

-- In INSERT mode, press `<command+<left-arrow>>`, move the cursor to the beginning of line.
vim.api.nvim_set_keymap('i', '<D-Left>', '<Esc>^i', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+j>`, move cursor to the beginning of line.
vim.api.nvim_set_keymap('n', '<D-j>', '^', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+<left-arrow>>`, move cursor to the beginning of line.
vim.api.nvim_set_keymap('n', '<D-Left>', '^', {noremap = true, silent = true})

-- In INSERT mode, press `<command+l>`, move cursor to the end of line.
-- (Back to NORMAL mode, move the cursor to the end of the line, then go into INSERT mode)
vim.api.nvim_set_keymap('i', '<D-l>', '<Esc>$a', {noremap = true, silent = true})

-- In INSERT mode, press `<command+<right-arrow>>`, move cursor to the end of line.
vim.api.nvim_set_keymap('i', '<D-Right>', '<Esc>$a', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+l>`, move cursor to the end of line.
vim.api.nvim_set_keymap('n', '<D-l>', '$', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+<right-arrow>>`, move cursor to the end of line.
vim.api.nvim_set_keymap('n', '<D-Right>', '$', {noremap = true, silent = true})

-- In INSERT mode, press `<command+<up-arrow>>`, move the cursor to the first line.
vim.api.nvim_set_keymap('i', '<D-Up>', '<Esc>gga', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+<up-arrow>>`, move the cursor to the first line.
vim.api.nvim_set_keymap('n', '<D-Up>', 'gg', {noremap = true, silent = true})

-- In INSERT mode, press `<command+<down-arrow>>`, move the cursor to the last line.
vim.api.nvim_set_keymap('i', '<D-Down>', '<Esc>Ga', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+<down-arrow>>`, move the cursor to the last line.
vim.api.nvim_set_keymap('n', '<D-Down>', 'G', {noremap = true, silent = true})

-- In INSERT mode, press `<shift+command+i>`, go to VISUAL mode, and select current line.
-- (Back to NORMAL mode, and go into LINE-VISUAL mode)
vim.api.nvim_set_keymap('i', '<S-D-i>', '<Esc>V', {noremap = true, silent = true})

-- In NORMAL mode, press `<shift+command+i>`, go to VISUAL mode, and select current line.
vim.api.nvim_set_keymap('n', '<S-D-i>', 'V', {noremap = true, silent = true})

-- In INSER mode, press `<command+backspace>`, delete the current entire line.
vim.api.nvim_set_keymap('i', '<D-BS>', '<Esc>dda', {noremap = true, silent = true})

-- In NORMAL mode, press `<command+backspace>`, delete the current entire line.
vim.api.nvim_set_keymap('n', '<D-BS>', 'dd', {noremap = true, silent = true})

-- In INSERT mode, press `<shift+command+j>`, to go to LINE-VISUAL mode.
vim.api.nvim_set_keymap('i', '<S-D-j>', '<Esc>V', {noremap = true, silent = true})

-- In NORMAL mode, press `<shift+command+j>`, to go to LINE_VISUAL mode.
vim.api.nvim_set_keymap('n', '<S-D-j>', 'V', {noremap = true, silent = true})

-- In INSERT mode, press `<shift+command+k>`, to go to CHAR-VISUAL mode.
vim.api.nvim_set_keymap('i', '<S-D-k>', '<Esc>v', {noremap = true, silent = true})

-- In NORMAL mode, press `<shift+command+k>, to go to CHAR-VISUAL mode.
vim.api.nvim_set_keymap('n', '<S-D-k>', 'v', {noremap = true, silent = true})

-- In INSERT mode, press `<shift+command+n>`, to save the file.
vim.api.nvim_set_keymap('i', '<S-D-n>', '<Esc>:w<CR>a', {noremap = true, silent = true})

-- In NORMAL mode, press `<shift+command+n>`, to save the file.
vim.api.nvim_set_keymap('n', '<S-D-n>', ':w<CR>', {noremap = true, silent = true})

---+-----------------------+-----------------------------------------------------+
-- | NVIM KEY BINDINGS END | =================================================== |
---+-----------------------+-----------------------------------------------------+



















---+----------------------+------------------------------------------------------+
-- | PLUGINS KEY BINDINGS | //////////////////////////////////////////////////// |
---+----------------------+------------------------------------------------------+

---+-------------------+
-- | PLUGIN: TELESCOPE |
---+-------------------+
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'bb', builtin.buffers, {})
vim.keymap.set('n', 'cc', builtin.help_tags, {})

---+--------------------------+--------------------------------------------------+
-- | PLUGINS KEY BINDINGS END | ================================================ |
---+--------------------------+--------------------------------------------------+



























