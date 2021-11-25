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
      margin = 0,
      horizontal_margin = 0,
      vertical_margin = 0,
      constraints = {
        { Percentage = 70 },
      { Percentage = 30 },
}
    },
    splits = {
      "Table",
      "InputAndLogs",
    }
  }
}

xplr.config.modes.builtin.default.key_bindings.on_key.N = {
    help = "editor",
    messages = {
          {
            BashExec = [===[
            goneovim "${XPLR_FOCUS_PATH:?}"
            ]===],
          },
        },
}
xplr.config.modes.builtin.selection_ops = {
  name = "selection ops",
  help = nil,
  extra_help = nil,
  key_bindings = {
    on_key = {
      ["c"] = {
        help = "copy here",
        messages = {
          {
            BashExec = [===[
            (while IFS= read -r line; do
            if cp -vr -- "${line:?}" ./; then
              echo LogSuccess: $line copied to $PWD >> "${XPLR_PIPE_MSG_IN:?}"
            else
              echo LogError: Failed to copy $line to $PWD >> "${XPLR_PIPE_MSG_IN:?}"
            fi
            done < "${XPLR_PIPE_SELECTION_OUT:?}")
            echo ExplorePwdAsync >> "${XPLR_PIPE_MSG_IN:?}"
            echo ClearSelection >> "${XPLR_PIPE_MSG_IN:?}"
            read -p "[enter to continue]"
            ]===],
          },
          "PopMode",
        },
      },
      ["ctrl-c"] = {
        help = "terminate",
        messages = { "Terminate" },
      },
      esc = {
        help = "cancel",
        messages = { "PopMode" },
      },
      ["m"] = {
        help = "move here",
        messages = {
          {
            BashExec = [===[
            (while IFS= read -r line; do
            if mv -v -- "${line:?}" ./; then
              echo LogSuccess: $line moved to $PWD >> "${XPLR_PIPE_MSG_IN:?}"
            else
              echo LogError: Failed to move $line to $PWD >> "${XPLR_PIPE_MSG_IN:?}"
            fi
            done < "${XPLR_PIPE_SELECTION_OUT:?}")
            echo ExplorePwdAsync >> "${XPLR_PIPE_MSG_IN:?}"
            read -p "[enter to continue]"
            ]===],
          },
          "PopMode",
        },
      },
      ["x"] = {
        help = "open in gui",
        messages = {
          {
            BashExecSilently = [===[
            if [ -z "$OPENER" ]; then
              if command -v xdg-open; then
                OPENER=xdg-open
                elif command -v open; then
                OPENER=open
              else
                echo 'LogError: $OPENER not found' >> "${XPLR_PIPE_MSG_IN:?}"
                exit 1
              fi
            fi
            (while IFS= read -r line; do
            $OPENER "${line:?}" > /dev/null 2>&1
            done < "${XPLR_PIPE_RESULT_OUT:?}")
            ]===],
          },
          "ClearScreen",
          "PopMode",
        },
      },
    },
  },
}
-- xplr.config.modes.builtin.default.key_bindings.on_key.E = {
--     help = "enter",
--     messages = {
--           {
--            "Enter"
--           },
--         },
-- }

-- xplr.config.modes.builtin.default.key_bindings.on_key.n = {
--     help = "editor",
--     messages = { {
--           {
--             BashExec = [===[
--             goneovim "${XPLR_FOCUS_PATH:?}"
--             ]===],
--           },
--           "PopMode",
--         },
--  },
-- }
-- xplr.config.modes.builtin.default.key_bindings.on_key.enter = {
--     help = "enter",
--     messages = { {
--           {"Enter"},
--         },
--  },
-- }
-- 
-- Modes
---- Builtin
------ Default
-- xplr.config.modes.builtin.default = {
--   name = "default",
--   help = nil,
--   extra_help = nil,
--   key_bindings = {
--     on_key = {
--             enter = {
--         help = "quit with result",
--         messages = { "Enter" },
--       },
--             ["n"] = {
--         help = "open in editor",
--         messages = {
--           {
--             BashExec = [===[
--             goneovim "${XPLR_FOCUS_PATH:?}"
--             ]===],
--           },
--           "PopMode",
--         },
--       },
-- 
--           },
--   },
-- }
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["tab"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key["ctrl-i"]
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["v"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key.space
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["V"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key["ctrl-a"]
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["/"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key["ctrl-f"]
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["h"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key.left
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["j"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key.down
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["k"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key.up
-- 
-- xplr.config.modes.builtin.default.key_bindings.on_key["l"] =
--   xplr.config.modes.builtin.default.key_bindings.on_key.right
-- 
-- ------ Recover
-- ------ Selection ops
-- 
-- -- silent_cmd("hello-bash", "Enter name and know location")(function(app)
-- --   return {
-- --     {
-- --       BashExec = [===[
-- --         echo "What's your name?"
-- -- 
-- --         read name
-- --         greeting="Hello $name!"
-- --         message="$greeting You are inside $PWD"
-- --       
-- --         echo LogSuccess: '"'$message'"' >> "${XPLR_PIPE_MSG_IN:?}"
-- --       ]===],
-- --     },
-- --   }
-- -- end)
-- -- silent_cmd("edit", "blah")(function(app)
-- --   return {
-- --     {
-- --       BashExec = [===[
-- --         echo "test"
-- --       -- ${XPLR_FOCUS_PATH:?}
-- --       ]===],
-- --     },
-- --   }
-- -- end)
-- -- 
-- -- map `h` to command `hello-lua`
-- -- map `H` to command `hello-bash`
--  -- map("default", "n", :e<cr>)
-- ------ Read only
