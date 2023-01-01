-- require projects
local status, projects = pcall(require, "project_nvim")
if not status then
  return
end

-- default setup
projects.setup()
