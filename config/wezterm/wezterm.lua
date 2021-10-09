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
    {key="V", mods="CTRL",
      action=wezterm.action{EmitEvent="trigger-vim-with-scrollback"}},
  },
enable_tab_bar = false,
scrollback_lines = 100000,
hide_tab_bar_if_only_one_tab = true,
font = wezterm.font("Fira Code"),
font_size = 20,
harfbuzz_features = {"zero"},
--color_scheme = "Solarized Dark - Patched",
  --color_scheme = "The Hulk",
  --color_scheme = "JetBrians Dracula",
  --color_scheme = "Alien Blood",
  --color_scheme = "Dracula",
  --color_scheme = "Cobalt Neon",
  -- color_scheme = "Dark Matrix",
  exit_behavior = "Close",
keys = {
--
--     --
 {key="C", mods="ALT",
     action=wezterm.action{CloseCurrentPane={confirm=false}}
  }
},

 -- {key="%", mods="ALT",
 --      action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
   -- {
   --    key="D", mods="ALT",
   --    action=wezterm.action{
   --      SplitVertical={
   --        domain="CurrentPaneDomain"
   --      }
   --    }
   --  },
  }

