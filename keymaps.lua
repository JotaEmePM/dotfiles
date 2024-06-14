-- 
-- Archivo de configuración de keymaps.
--
-- JotaEmePM
--

-- Neotree
-- Permite mostrar Neotree usando Ctrl-n
vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true }) 
