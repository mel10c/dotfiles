-- ------------------------------- Telescope config ------------------------------
-- ===============================================================================

local actions = require("telescope.actions")
require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " | ",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

    },
    pickers = {
    current_buffer_fuzzy_find = {
      theme = "ivy",
    },
    treesitter = {
      theme = "ivy",
    },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },

    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
})

require("telescope").load_extension("fzy_native")
require('telescope').load_extension('coc')
