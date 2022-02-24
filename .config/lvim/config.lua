-- vim options
vim.opt.shell = "/bin/sh"
vim.opt.scrolloff = 10
vim.opt.colorcolumn = "120"

-- colorscheme
lvim.colorscheme = "dracula"

-- format
lvim.format_on_save = true

-- lint
lvim.lint_on_save = true

-- dashboard
lvim.builtin.dashboard.active = true

-- log
lvim.log.level = "warn"

-- notify
lvim.builtin.notify.active = true

-- terminal
lvim.builtin.terminal.active = false

-- treesitter
lvim.builtin.treesitter.highlight.enabled = true

-- telescope
lvim.builtin.telescope.pickers = { find_files = { theme = "ivy" } }

-- nvimtree
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- lualine
lvim.builtin.lualine.options.theme = "dracula"
lvim.builtin.lualine.sections.lualine_b = {'branch', {'filename', path = 1 }}

-- dashboard
lvim.builtin.dashboard.custom_header = {
  "                                             ",
  "              @@@@@@@@     @@@    @@@        ",
  "             @@@@@@@@@@    @@@    @@@        ",
  "             @@!   @!@@  @@@@!@@  @@!        ",
  "             !@!  @!@!@  @@!@!@@  !@!        ",
  "    @@@@@@   @!@ @! !@!    @!!    @!@!@@@    ",
  "   @@@  @@@  !@!!!  !!!    !!!    !!!@!@@!   ",
  "   @!:  @!!  !!:!   !!!    !!:    !!:  !!!   ",
  "   :!:  !:!  :!:    !:!    :!:    :!:  !:!   ",
  "   ::::: ::  ::::::: ::     ::    ::   :::   ",
  "    : :  :    : : :  :       :    :    : :   ",
  "                                             ",
}


-- plugins
lvim.plugins = {
  { "dracula/vim", name = "dracula" },
  { "hashivim/vim-terraform" },
  { "editorconfig/editorconfig-vim" }
}

-- key mapping
lvim.keys.normal_mode = {
  ["<S-Up>"] = ":m .-2<CR>==",
  ["<S-Down>"] = ":m .+1<CR>==",
  ["<Leader>]"] = ":BufferNext<CR>",
  ["<Leader>["] = ":BufferPrevious<CR>",
}

vim.cmd([[
  map i <Up>
  map j <Left>
  map k <Down>
  noremap h i
]])
