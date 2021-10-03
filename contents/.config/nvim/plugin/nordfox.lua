local nightfox = require('nightfox')

nightfox.setup({
  fox = "nordfox",
  transparent = true,
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    --comments = "italic",
    functions = "italic",
    keywords = "bold",
    --strings = "NONE",
    variables = "italic",
  },
})

-- Load the configuration set above and apply the colorscheme
--nightfox.load()
