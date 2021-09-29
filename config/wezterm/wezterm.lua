


local wezterm = require 'wezterm';
return {
  font = wezterm.font("Source Code Pro"),
  font_size = 20,
  color_scheme = "Batman",

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
    args={"vim", name}}
  }, pane)

  -- wait "enough" time for vim to read the file before we remove it.
  -- The window creation and process spawn are asynchronous
  -- wrt. running this script and are not awaitable, so we just pick
  -- a number.  We don't strictly need to remove this file, but it
  -- is nice to avoid cluttering up the temporary file directory
  -- location.
  wezterm.sleep_ms(1000);
  os.remove(name);
end)

return {
  keys = {
    {key="E", mods="CTRL",
      action=wezterm.action{EmitEvent="trigger-vim-with-scrollback"}},
  }
}
