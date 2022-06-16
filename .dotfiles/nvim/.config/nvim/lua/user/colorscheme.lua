-- Theme style based on time of day (Night - Dark Theme, Day - Lighter Theme)
local currentTime = os.date("*t");
local current_day_theme_style = ""
if (currentTime.hour >= 18 or currentTime.hour <= 5) then
  current_day_theme_style= "dark"
else
  current_day_theme_style = "light"
end 

local status_ok, github_theme = pcall(require, "github-theme")
if not status_ok then
  return
end

github_theme.setup({
  theme_style = current_day_theme_style
});

--[[ 
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end 
]]
