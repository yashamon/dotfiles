
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
xplr.config.modes.builtin.default = {
  name = "default",
  help = nil,
  extra_help = nil,
  key_bindings = {
    on_key = {
            ["n"] = {
        help = "editor",
       messages = {
          {
            BashExec = [===[
            goneovim "${XPLR_FOCUS_PATH:?}"
            ]===],
          },
          "PopMode",
        },
      },
      ["j"] = {
        help = "down",
        messages = { "FocusNext" },
      }, 
      ["k"] = {
        help = "down",
        messages = { "FocusNext" },
      },

      enter = {
        help = "quit with result",
        messages = { "Enter" },
      },
      },
  },
}
xplr.config.modes.builtin.action = {
  name = "action to",
  help = nil,
  extra_help = nil,
  key_bindings = {
    on_key = {
      ["!"] = {
        help = "shell",
        messages = {
          {
            Call = {
              command = "bash",
              args = { "-i" },
            },
          },
          "ExplorePwdAsync",
          "PopMode",
        },
      },
      ["c"] = {
        help = "create",
        messages = {
          "PopMode",
          {
            SwitchModeBuiltin = "create",
          },
        },
      },
      ["ctrl-c"] = {
        help = "terminate",
        messages = { "Terminate" },
      },
      ["e"] = {
        help = "open in editor",
        messages = {
          {
            BashExec = [===[
            goneovim "${XPLR_FOCUS_PATH:?}"
            ]===],
          },
          "PopMode",
        },
      },
      esc = {
        help = "cancel",
        messages = { "PopMode" },
      },
      ["l"] = {
        help = "logs",
        messages = {
          {
            BashExec = [===[
            [ -z "$PAGER" ] && PAGER="less -+F"
            cat -- "${XPLR_PIPE_LOGS_OUT}" | ${PAGER:?}
            ]===],
          },
          "PopMode",
        },
      },
      ["s"] = {
        help = "selection operations",
        messages = {
          "PopMode",
          {
            SwitchModeBuiltin = "selection_ops",
          },
        },
      },
      ["m"] = {
        help = "toggle mouse",
        messages = {
          "PopMode",
          "ToggleMouse",
        },
      },
      ["q"] = {
        help = "quit options",
        messages = {
          "PopMode",
          { SwitchModeBuiltin = "quit" },
        },
      },
    },
    on_number = {
      help = "go to index",
      messages = {
        "PopMode",
        {
          SwitchModeBuiltin = "number",
        },
        "BufferInputFromKey",
      },
    },
  },
}

-- silent_cmd("hello-bash", "Enter name and know location")(function(app)
--   return {
--     {
--       BashExec = [===[
--         echo "What's your name?"
-- 
--         read name
--         greeting="Hello $name!"
--         message="$greeting You are inside $PWD"
--       
--         echo LogSuccess: '"'$message'"' >> "${XPLR_PIPE_MSG_IN:?}"
--       ]===],
--     },
--   }
-- end)
-- silent_cmd("edit", "blah")(function(app)
--   return {
--     {
--       BashExec = [===[
--         echo "test"
--       -- ${XPLR_FOCUS_PATH:?}
--       ]===],
--     },
--   }
-- end)
-- 
-- map `h` to command `hello-lua`
-- map `H` to command `hello-bash`
 -- map("default", "n", :e<cr>)
------ Read only

