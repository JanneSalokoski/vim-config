return {
  "lukas-reineke/virt-column.nvim",
  opts = {},
  config = function()
    local virt_column = require("virt-column")
    virt_column.setup()
  end
}
