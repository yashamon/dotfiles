local wezterm = require 'wezterm'
local io = require 'io';
local os = require 'os';

wezterm.on("trigger-vim-with-scrollback", function(window, pane)
  -- Retrieve the current viewport's text.
  -- Pass an optional number of lines (eg: 2000) to retrieve
  -- that number of lines starting from the bottom of the viewport.
  local scrollback = pane:get_lines_as_text();
-- Create a temporary file to pass to vim
  local name = os.tmpname();
  local f = io.open(name, "w+");
  f:write(scrollback);
  f:flush();
  f:close();
  -- Open a new window running vim and tell it to open the file
window:perform_action(wezterm.action{SpawnCommandInNewWindow={
    args={"nvim", name}}
  }, pane)

    wezterm.sleep_ms(1000);
  os.remove(name);
end)
return {
hide_tab_bar_if_only_one_tab = true,
font = wezterm.font("Fira Code"),
font_size = 20,
--color_scheme = "Solarized Dark - Patched",
--color_scheme = "The Hulk",
--color_scheme = "JetBrians Dracula",
--color_scheme = "Alien Blood",
--color_scheme = "Dracula",
--color_scheme = "Cobalt Neon",
color_scheme = "Dark Matrix",
exit_behavior = "Close",
harfbuzz_features = {"zero"},
scrollback_lines = 100000,
keys = {
    {key="V", mods="CTRL|SHIFT",
      action=wezterm.action{EmitEvent="trigger-vim-with-scrollback"}},
     {
      --key="%", mods="CTRL|SHIFT|ALT",
      key="c", mods="ALT|SHIFT",
      action=wezterm.action{
      action=wezterm.action{CloseCurrentPane={confirm=false}}
          }
      },
    {
      --key="%", mods="CTRL|SHIFT|ALT",
      key="h", mods="ALT|SHIFT",
      action=wezterm.action{
        SplitHorizontal={
          domain="CurrentPaneDomain"
        }
      }
    },
    {
      --key="^", mods="CTRL|SHIFT|ALT",
      key="v", mods="ALT|SHIFT",
      action=wezterm.action{
        SplitVertical={
          domain="CurrentPaneDomain"
        }
      }
    },
  }
 }


