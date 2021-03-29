local actions = require('telescope.actions')

-- require('telescope').setup{
--   defaults = {
--     vimgrep_arguments = {
--       'rg',
--       '--color=never',
--       '--no-heading',
--       '--with-filename',
--       '--line-number',
--       '--column',
--       '--smart-case'
--     },
--     prompt_position = "bottom",
--     prompt_prefix = ">",
--     initial_mode = "insert",
--     selection_strategy = "reset",
--     sorting_strategy = "descending",
--     layout_strategy = "horizontal",
--     layout_defaults = {
--         preview_width = 0.8,
--       -- TODO add builtin options.
--     },
--     file_sorter =  require'telescope.sorters'.get_fuzzy_file,
--     file_ignore_patterns = {},
--     generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
--     shorten_path = true,
--     winblend = 0,
--     width = 0.2,
--     preview_cutoff = 40,
--      results_height = 0.4,
--     results_width = 0.5,
--        border = {},
--     borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
--     color_devicons = true,
--     use_less = true,
--     set_env = { ['COLORTERM'] = 'truecolor' }, -- default { }, currently unsupported for shells like cmd.exe / powershell.exe
--     file_previewer = require'telescope.previewers'.vim_buffer_cat.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_cat.new`
--     grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_vimgrep.new`
--     qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new, -- For buffer previewer use `require'telescope.previewers'.vim_buffer_qflist.new`

--     -- Developer configurations: Not meant for general override
--     buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,

--     mappings = {
--       i = {
--          ["<esc>"] = actions.close,
--         ["<c-s"] = actions.move_selection_next,
--         ["<c-w>"] = actions.move_selection_previous,
--           -- ["<CR>"] = actions.goto_file_selection_edit,
--       },
--   },
--   }
-- }


 require('telescope').setup{
    defaults = {
     results_width = 0.1
 },
 extensions = {
    frecency = {
      show_scores = true,
      show_unindexed = true,
      ignore_patterns = {"*.git/*", "*/tmp/*"},
      workspaces = {
        ["conf"]    = "/home/f1/.config",
        ["data"]    = "/home/f1/.local/nvim"
      }
    }
  },
 }



-- Built-in actions
local transform_mod = require('telescope.actions.mt').transform_mod

-- or create your custom action
local my_cool_custom_action = transform_mod({
  x = function()
    print("This function ran after another action. Prompt_bufnr: " .. prompt_bufnr)
    -- Enter your function logic here. You can take inspiration from lua/telescope/actions.lua
  end,
})





require('telescope').load_extension('snippets')
require'telescope'.load_extension("cheat")
require('telescope').load_extension('ultisnips')





