-- ~/.config/nvim/lua/plugins/gruvbox.lua

return {
  -- Подключение плагина gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "", -- можно указать "hard" или "soft" для настройки контраста
      terminal_colors = true, -- применить цвета для встроенного терминала
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- инвертировать фон для поиска, различий, строки состояния и ошибок
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  -- Настройка LazyVim для загрузки gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
