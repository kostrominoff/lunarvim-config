vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  timeout = 1000,
}

lvim.leader = "space"
lvim.keys.normal_mode["<leader>w"] = ":w<cr>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<leader>o"] = ":NvimTreeFocus<CR>"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["\\"] = ":split<CR>"
lvim.builtin.terminal.open_mapping = [[<F7>]]
lvim.keys.normal_mode["<leader>q"] = "<cmd>confirm q<cr>"
lvim.keys.normal_mode["x"] = '"_x'

lvim.colorscheme = "catppuccin"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.auto_install = true

lvim.transparent_window = true

vim.diagnostic.config({ update_in_insert = true })

lvim.builtin.alpha.dashboard.section.header.val = {
  "",
  "",
  "",
  "",
  "",
  "      ██╗  ██╗ ██████╗ ███████╗████████╗██████╗  ██████╗ ███╗   ███╗██╗███╗   ██╗",
  "      ██║ ██╔╝██╔═══██╗██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗████╗ ████║██║████╗  ██║",
  "      █████╔╝ ██║   ██║███████╗   ██║   ██████╔╝██║   ██║██╔████╔██║██║██╔██╗ ██║",
  "      ██╔═██╗ ██║   ██║╚════██║   ██║   ██╔══██╗██║   ██║██║╚██╔╝██║██║██║╚██╗██║",
  "      ██║  ██╗╚██████╔╝███████║   ██║   ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║██║ ╚████║",
  "      ╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝",
  "",
  "",
  "",
  "",
  "",
}

lvim.plugins = {
  { "catppuccin/nvim" },
  { "andweeb/presence.nvim" },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        update_focused_file = {
          update_root = false
        }
      })
    end
  },
}
