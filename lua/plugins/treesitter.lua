return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {"json", "lua", "vim", "vimdoc", "javascript", "html", "typescript", "css", "python" },
          sync_install = true,
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
