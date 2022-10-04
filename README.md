# Monokai Pro
A Lua implementation of the [Monokai Pro](https://monokai.pro) colorscheme for Neovim. 
Created using [Lush](https://github.com/rktjmp/lush.nvim), and as such, depends on Lush.

## Installation with Packer
Simply `use` both `monokaipro.nvim` and `lush.nvim` in your Packer config, making sure that `lush.nvim` appears before `monokaipro.nvim`.
```lua
require('packer').startup(function (use)
    -- plugins
    use 'rktjmp/lush.nvim'
    use 'varun-ramani/monokaipro.nvim'
    -- more plugins
end)
```

## Enable colorscheme
At some point after the packer config, run the following:
```lua
vim.opt.termguicolors = true
vim.cmd [[colorscheme monokaipro]]
```
Upon a restart of Neovim, this colorscheme should be active.
