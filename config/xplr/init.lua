
        -- You need to define the script version
        -- for compatibility check.
-- See https://github.com/sayanarijit/xplr/wiki/Upgrade-Guide.
--
version = "0.16.4"


local xplr = xplr
package.path = os.getenv("HOME") .. '/.config/xplr/plugins/?/src/init.lua'
require("material-landscape2").setup()

-- Or

require("fzf").setup{
  mode = "default",
  key = "f",
  -- args = "--preview 'pistol {}'"
}


-- Or

require("comex").setup{
  compress_key = "C",
  compressors = {
    Z = { extension = "zip", command = [[zip $(cat "${XPLR_PIPE_SELECTION_OUT:?}")]] },
  },
  extract_key = "X",
  extractors = {
    Z = { extension = "zip", command = [[unzip -d "${XPLR_FOCUS_PATH:?}.d" "${XPLR_FOCUS_PATH:?}"]] },
  },
  keep_selection = false,
}

-- Type `:sC` to compress selection, and `:X` to extract focus.

-- Press `ctrl-f` to spawn fzf in $PWD

-- Config
---- General
------ Show hidden
xplr.config.general.show_hidden = true


require("command-mode").setup{
  mode = "default",
  key = ":",
  remap_action_mode_to = {
    mode = "default",
    key = ";",
  }
}

-- Type `:` to enter command mode

require("context-switch").setup()

xplr.config.layouts.builtin.default = {
  Horizontal = {
    config = {
      margin = 1,
      horizontal_margin = 0,
      vertical_margin = 0,
      constraints = {
        { Percentage = 100 },
      }
    },
    splits = {
      "Table",
      -- "HelpMenu",
    }
  }
}



silent_cmd("edit", "blah")(function(app)
  return {
    {
      BashExec = [===[
        echo "test"
      -- ${XPLR_FOCUS_PATH:?}
      ]===],
    },
  }
end)

-- map `h` to command `hello-lua`
-- map `H` to command `hello-bash`
map("default", "n", "hello-bash")
------ Read only

