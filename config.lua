require("lvim.lsp.manager").setup("emmet_ls")
require("lvim.lsp.manager").setup("tailwindcss")

require("typescript").setup({})

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
  return
end


local typescriptMappings = {
  t = {
    name = "Typescript",
    i = { "<cmd>TypescriptAddMissingImports<Cr>", "AddMissingImports" },
    o = { "<cmd>TypescriptOrganizeImports<cr>", "OrganizeImports" },
    u = { "<cmd>TypescriptRemoveUnused<Cr>", "RemoveUnused" },
    r = { "<cmd>TypescriptRenameFile<Cr>", "RenameFile" },
    f = { "<cmd>TypescriptFixAll<Cr>", "FixAll" },
    g = { "<cmd>TypescriptGoToSourceDefinition<Cr>", "GoToSourceDefinition" },
  }
}
wk.register(typescriptMappings, lvim.builtin.which_key.opts)

require("lvim.lsp.null-ls.code_actions").setup({
  sources = {
    require("typescript.extensions.null-ls.code-actions")
  }
})

require("lvim.lsp.null-ls.linters").setup({
  { command = "eslint" },
  { command = "eslint_d" }
})

require("lvim.lsp.null-ls.formatters").setup({
  -- {
  --   command = "prettierd",
  -- },
  {
    command = "eslint"
  },
  {
    command = "eslint_d"
  },
  {
    command = "rustywind",
    filetypes = { "typescriptreact" }
  }
})


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
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        transparent_background = true
      })
    end
  },
  { "andweeb/presence.nvim" },
  { "jose-elias-alvarez/typescript.nvim" },
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
