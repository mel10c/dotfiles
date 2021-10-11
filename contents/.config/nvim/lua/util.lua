-- ===============================================================================
-- ============================== HELPER FUNCTIONS ===============================
-- ===============================================================================

local M = {}

M.packer_lazy_load = function(plugin, timer)
   if plugin then
      timer = timer or 0
      vim.defer_fn(function()
         require("packer").loader(plugin)
      end, timer)
   end
end

-- TODO: add a function to autocmd hide status line for tree and outlines

return M
