# nvim

## My personal neovim configuration files

### Switching Between Windows (Splits)

- **Horizontal Split:** `:split` or `:sp`
- **Vertical Split:** `:vsplit` or `:vsp`
- **Navigate Between Splits:**
    - `Ctrl-w h` to move to the left split
    - `Ctrl-w j` to move to the split below
    - `Ctrl-w k` to move to the split above
    - `Ctrl-w l` to move to the right split

# Switching Between Tabs

- **Open a New Tab:** `:tabnew` or `:tabe`
- **Navigate Between Tabs:**
    - `gt` to move to the next tab
    - `gT` to move to the previous tab
    - `:tabn` to move to the next tab
    - `:tabp` to move to the previous tab
    - `:tabclose` to close the current tab

# Navigating the File Tree (e.g., nvim-tree)

Assuming you're using nvim-tree.lua:

- **Toggle Tree View:** `<leader>e`
- **Move Up and Down:** `j` and `k`
- **Open File or Directory:** `Enter`
- **Close Directory:** `h`
- **Open Directory:** `l`
- **Close Tree:** `:q` or `<leader>e`

# Using and Exiting Menus

## LSP Menus (e.g., lspsaga)

- **Hover Documentation:** `K` (to exit, just move the cursor)
- **Signature Help:** `Ctrl-k` (to exit, move the cursor)
- **Code Actions:** `<leader>ca` (to exit, you can usually use `q` or `Esc`)
- **Rename:** `<leader>rn` (to confirm, press `Enter`; to cancel, press `Esc`)

## Completion Menu (nvim-cmp)

- **Open Completion:** `Ctrl-Space`
- **Select Completion:** `Enter`
- **Close Completion:** `Ctrl-e` or `Esc`
- **Navigate Completion Items:** `Tab` to move down, `Shift-Tab` to move up

# Leader Key and Custom Keybindings

## Common Keybindings

- **Open File Tree:** `<leader>e`
- **Toggle Treesitter Playground:** `<leader>tp`
- **Inspect Treesitter Highlight:** `<leader>ts`
- **Format Code:** `<leader>f`
