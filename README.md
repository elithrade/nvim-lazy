# 💤 nvim-lazy

My Neovim config files started from [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
Press Space + L, and U to update plugins.

## Installation

For Windows
`git clone git@github.com:elithrade/nvim-lazy.git $env:LOCALAPPDATA\nvim`

For Linux
`git clone git@github.com:elithrade/nvim-lazy.git ~/.config/nvim`

## Custom key maps

See comment [here](./lua/config/keymaps.lua)

## Custom tweaks

- Change colorscheme to [onedark](https://github.com/navarasu/onedark.nvim)
- Add [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) extension and [remapped default keys](./lua/plugins/editor.lua). Most telescope-file-browser keys starts with `;`, `sf` to open telescope-file-browser.
- Suppress "No information available" notification in [noice.nvim](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://github.com/folke/noice.nvim&ved=2ahUKEwiYmd_s3I6FAxX_s1YBHTSyDqAQFnoECAYQAQ&usg=AOvVaw1sogSR1BTc2Hp5hZ7TNBpv).
- Add a border to hover over documentation when press Shift + K.
- Change default notification timeout to 10 seconds.
- Disabled [flash.nvim](https://github.com/folke/flash.nvim)
- Disabled "o" and "<C-o>>" mapping to launch file default system application.
- Disabled [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
