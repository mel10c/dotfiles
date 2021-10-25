-- ---------------------------- Keymap helper config -----------------------------
-- ===============================================================================

local present, key = pcall(require, "which-key")
if not present then
    return
end

key.setup {
    marks = true,
    registers = true,
    spelling = {
        enabled = false,
        suggestions = 20,
    },
    key_labels = {},
    icons = {
        breadcrumb = "+",
        separator = "➜",
        group = "» ",
    },
    window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    },
    layout = {
        -- height = { min = 4, max = 25 }, -- min and max height of the columns
        -- width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 5, -- spacing between columns
        align = "center", -- align columns left, center or right
    },
    ignore_missing = false,
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ", "<C-W>"}, -- hide mapping boilerplate
    show_help = false,
    triggers = {"<leader>"},
    triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
    },
}


-- ---------------------------- Telescope window ---------------------------------
local conf = " cwd=~/dotfiles/contents/.config/"
local setting = " previewer=false prompt_title=false results_title=false prompt_prefix=~|"
local config = "<cmd>Telescope find_files" .. conf .. setting .. " <cr>"

key.register({
    f = {
        name = "telescope",
        a = { "<cmd>Telescope colorscheme<cr>",               'colorscheme'},
        b = { "<cmd>Telescope buffers<cr>",                   'buffers'},
        c = { config,                                         'dotfile'},
        --  d = { "<cmd>Telescope coc diagnostics theme=ivy", 'diagnostics'},
        e = { "<cmd>Telescope registers<cr>",                 'registers'},
        f = { "<cmd>Telescope find_files<cr>",                "Find File" },
        i = { "<cmd>Telescope file_browser<cr>",              "Find File" },
        g = { "<cmd>Telescope git_status<cr>",                'git status'},
        k = { "<cmd>Telescope keymaps<cr>",                   'keymaps'},
        z = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", 'buffer find'},
        o = { "<cmd>Telescope oldfiles<cr>",                  'recents'},
        -- r = {':Telescope coc references theme=ivy',        'coc references'],
        r = { "<cmd>Telescope lsp_references<cr>",            'ultisnips'},
        t = { "<cmd>Telescope treesitter theme=ivy<cr>",      'treesitter'},
        w = { "<cmd>Telescope live_grep<cr>",                 'search word'},
        s = { "<cmd>Telescope ultisnips<cr>",                 'ultisnips'},
        -- u = { "<cmd>Telescope file_browser cwd=~/OneDrive - University of Toronto/2021-2022/<cr>" , 'dotfile'},
    },
}, { prefix = "<leader>" })

key.register({ s = {
    name = "session",
    s = { "<cmd><C-u>SessionSave<CR>"               , "save session"},
    l = { "<cmd><C-u>SessionLoad<CR>"               , "load session"},
},
}, { prefix = "<leader>" })

