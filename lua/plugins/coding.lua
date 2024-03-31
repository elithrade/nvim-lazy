-- Incremental rename
return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  -- Change surround
  -- Old text                    Command         New text
  --------------------------------------------------------------------------------
  -- surr*ound_words             ysiw)           (surround_words)
  -- *make strings               ys$"            "make strings"
  -- [delete ar*ound me!]        ds]             delete around me!
  -- remove <b>HTML t*ags</b>    dst             remove HTML tags
  -- 'change quot*es'            cs'"            "change quotes"
  -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
  -- delete(functi*on calls)     dsf             function calls
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        capabilities = {
          experimental = {
            -- https://github.com/mrcjkb/rustaceanvim/issues/303
            -- Neovim bug where rust-analyzer codaAction extract function
            -- inserts '/' before '}', this is a workaround suggested by 'rami3l'
            -- in the linked thread.
            snippetTextEdit = false,
          },
        },
      },
    },
  },
}
