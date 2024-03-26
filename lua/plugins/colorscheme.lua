return {
  -- add onedark
  -- { "navarasu/onedark.nvim" },
  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "onedark",
      colorscheme = "tokyonight",
    },
  },
}
