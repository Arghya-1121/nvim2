return {
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      dashboard.section.header.val = {
        '',
        '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
        '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
        '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
        '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
        '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
        '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
        '             Welcome to Neovim                ',
        '',
      }

      -- 🔘 Buttons (you can add more)
      dashboard.section.buttons.val = {
        dashboard.button('e', '📄  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '🔍  Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '🕘  Recent files', ':Telescope oldfiles<CR>'),
        dashboard.button('t', '🔎  Find text', ':Telescope live_grep<CR>'),
        dashboard.button('c', '⚙️  Config', ':e ~/.config/nvim/init.lua<CR>'),
        dashboard.button('q', '❌  Quit', ':qa<CR>'),
      }

      -- 📦 Footer (optional)
      dashboard.section.footer.val = {
        '',
        '🚀 Ready to code!',
      }

      -- Theme styling
      dashboard.opts.opts.noautocmd = true

      alpha.setup(dashboard.opts)
    end,
  },
}
