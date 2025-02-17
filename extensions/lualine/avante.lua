-- require avante plugin config
local status, avante_plugin = pcall(require, "diegoulloao.plugins.avante")
if not status then
  return nil
end

-- extension: avante
local function get_display_name()
  local provider = avante_plugin.opts.provider
  local model = avante_plugin.opts[provider].model

  if provider == nil or model == nil then
    return "Avante"
  end

  return provider:gsub("^%l", string.upper) .. ": " .. model:gsub("^%l", string.upper)
end

-- custom extension
local avante = {
  sections = {
    lualine_a = {
      { get_display_name },
    },
  },
  filetypes = { "Avante", "AvanteSelectedFiles", "AvanteInput" },
}

-- export
return avante
