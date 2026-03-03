-- import
local telescope = require("diegoulloao.extensions.lualine.telescope")
local saga = require("diegoulloao.extensions.lualine.saga")
local lspinfo = require("diegoulloao.extensions.lualine.lspinfo")
local btw = require("diegoulloao.extensions.lualine.btw")

-- available extensions
local extensions = {
  telescope = telescope,
  saga = saga,
  lspinfo = lspinfo,
  btw = btw,
}

-- export
return extensions
