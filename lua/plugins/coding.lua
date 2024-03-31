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
  -- TODO copied from https://www.lazyvim.org/extras/lang/rust rustacenvim full spec
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    ft = { "rust" },
    opts = {
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<leader>cR", function()
            vim.cmd.RustLsp("codeAction")
          end, { desc = "Code Action", buffer = bufnr })
          vim.keymap.set("n", "<leader>dr", function()
            vim.cmd.RustLsp("debuggables")
          end, { desc = "Rust Debuggables", buffer = bufnr })
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              runBuildScripts = true,
            },
            -- Add clippy lints for Rust.
            checkOnSave = {
              allFeatures = true,
              command = "clippy",
              extraArgs = { "--no-deps" },
            },
            procMacro = {
              enable = true,
              ignored = {
                ["async-trait"] = { "async_trait" },
                ["napi-derive"] = { "napi" },
                ["async-recursion"] = { "async_recursion" },
              },
            },
          },
        },
      },
    },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("keep", vim.g.rustaceanvim or {}, opts or {})
      -- capabilities is always nil
      print(vim.g.rustaceanvim.server.capabilities)
    end,
  },
}
