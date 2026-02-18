-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.vscode then
    local mappings = {
--        { 'n', 'w', 'cursorWordPartRight' },
--        { 'n', 'b', 'cursorWordPartLeft' },

        { 'n', '<leader>rl', 'workbench.action.openRecent' },
        { 'n', '<leader>rw', 'workbench.action.reloadWindow' },
        { 'n', '<leader>os', 'workbench.action.openSettingsJson' },
    }

    for _, mapping in ipairs(mappings) do
        local mode, key, command = mapping[1], mapping[2], mapping[3]
        vim.keymap.set(mode, key, function() vim.fn.VSCodeNotify(command) end, opts)
    end
end
