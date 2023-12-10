-- import
local telescope = require("diegoulloao.extensions.lualine.telescope")
local saga = require("diegoulloao.extensions.lualine.saga")
local lspinfo = require("diegoulloao.extensions.lualine.lspinfo")

-- available extensions
local extensions = {
  telescope = telescope,
  saga = saga,
  lspinfo = lspinfo,
}

-- export
return extensions
