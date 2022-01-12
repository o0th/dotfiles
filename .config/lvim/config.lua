-- vim options
vim.opt.shell = "/bin/sh"
vim.opt.scrolloff = 10

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

-- theme
lvim.colorscheme = "dracula"
lvim.builtin.lualine.options.theme = "dracula"

-- nvimtree
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

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

