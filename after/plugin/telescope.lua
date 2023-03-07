local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- project file search
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- git file search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end) -- project search / grep files (requires globaly installing ripgrep)
