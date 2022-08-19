local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "cpp",
    "c",
    "markdown",
    "make",
    "python"
  },
  autotag = {
    enable = true,
  },
}
