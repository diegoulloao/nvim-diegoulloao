-- import
local telescope = require("diegoulloao.extensions.lualine.telescope")
local saga = require("diegoulloao.extensions.lualine.saga")
local lspinfo = require("diegoulloao.extensions.lualine.lspinfo")
local btw = require("diegoulloao.extensions.lualine.btw")
local avante = require("diegoulloao.extensions.lualine.avante")

-- available extensions
local extensions = {
  telescope = telescope,
  saga = saga,
  lspinfo = lspinfo,
  btw = btw,
  avante = avante,
}

-- export
return extensions
