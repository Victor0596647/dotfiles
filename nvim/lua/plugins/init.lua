return {
    { 
      "akinsho/horizon.nvim", 
      version = "*",
      config = function()
        vim.cmd.colorscheme "horizon"
      end
    },
{
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})
  end
},
    {"nvim-lua/plenary.nvim"},
}
