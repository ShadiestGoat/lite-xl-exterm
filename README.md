# lite-xl-exterm

This is a plugin that lets you open an external terminal, in case you also hate integrated ones. It opens the terminnal in the project directory.

This definetly works on linux, I'm like 90% sure it works on mac, and 70% sure it works on windows :)

## Installation

Just download the `exterm.lua` :)

## Usage

Either run `exterm:Open Terminal` (`exterm:open-terminal`) or run the correct shortcut, `ctrl+shift+space` by default.

## Configuration

There are 2 optionns - the terminnal to run, and the shortcut. The plugin property is `exterm`, so `config.plugins.exterm.valuehere`. Here are the values:

| Name | Description | Type | Value |
|:-:|:-:|:-:|:-:|
| executable | The command to run in order to open the terminal | string | cmd |
| keymap | The shortcut for the command | string | ctrl+shift+space |
