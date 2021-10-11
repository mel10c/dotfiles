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
  --   presets = {
  --     operators = false,
  --     motions = false,
  --     text_objects = false,
  --     windows = false,
  --     nav = false,
  --     z = false,
  --     g = false,
  -- },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
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
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true,
  triggers = {"<leader>"},
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
}


-- ---------------------------- Telescope window ---------------------------------
key.register({
    f = {
        name = "telescope",
        f = { "<cmd>Telescope find_files<cr>"         , "Find File" }, -- create a binding with label
        b = { "<cmd>Telescope buffers<cr>"            , 'buffers'},
        --  d = { "<cmd>Telescope coc diagnostics theme=ivy" , 'diagnostics'},
        e = { "<cmd>Telescope registers<cr>"                 , 'registers'},
        g = { "<cmdTelescope git_status<cr>"                 , 'git status'},
        k = { "<cmd>Telescope keymaps<cr>"                   , 'keymaps'},
        -- u = {':Telescope find_files cwd=~/Documents/Temporary/' , 'uni'},
        z = { "<cmd>Telescope current_buffer_fuzzy_find<cr>" , 'buffer find'},
        o = { "<cmd>Telescope oldfiles<cr>"                  , 'recents'},
        -- r = {':Telescope coc references theme=ivy'   , 'coc references'],
        t = { "<cmd>Telescope treesitter<cr>"                , 'treesitter'},
        w = { "<cmd>Telescope live_grep<cr>"                 , 'search word'},
        c = { "<cmd>Telescope find_files cwd=~/dotfiles/contents/.config/<cr>" , 'dotfile'},
    },
}, { prefix = "<leader>" })

key.register({ s = {
        name = "session",
        s = { "<cmd><C-u>SessionSave<CR>"               , "save session"},
        l = { "<cmd><C-u>SessionLoad<CR>"               , "load session"},
    },
}, { prefix = "<leader>" })

