-- mod-version:3 -- lite-xl 2.1

-----------------------------------------------------------------------
-- NAME       : External Terminal
-- DESCRIPTION: A plugin to open an external terminal
-- AUTHOR     : Shady Goat
-- GOALS      : Open an external terminal in the project directory
-- SHORT NAME : exterm
-----------------------------------------------------------------------

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local os = require "os"
local command = require "core.command"

config.plugins.exterm = {}

-- Sorry, this is the default terminal executable

config.plugins.exterm.executable = "urxvt"
config.plugins.exterm.keymap = "ctrl+shift+space"

command.add(nil, {
  ["exterm:open-terminal"] = function()
  -- adds the & for background process, idk if it works for windows
  -- also, it opens in the project dir, since the working dir = project dir, and terminals open in the working dir :)
    os.execute(config.plugins.exterm.executable .. " &")
  end
})

keymap.add({[config.plugins.exterm.keymap] = "exterm:open-terminal"})
