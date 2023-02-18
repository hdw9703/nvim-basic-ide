local function load_modules(path)
  local modules = {}
  for file in io.popen("ls -1 " .. path):lines() do
    if string.match(file, "%.lua$") then
      table.insert(modules, string.sub(file, 1, -5))
    end
  end
  for i, module in ipairs(modules) do
    local status, err = pcall(require, "user." .. module)
    if not status then
      print("Error loading module " .. module .. ": " .. err)
    end
  end
end

load_modules("~/.config/nvim/lua/user")
require("user.lsp")
