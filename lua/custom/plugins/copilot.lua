return {
  { -- Copilot Code Suggestions
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        -- Recommended settings to use nvim-cmp
        suggestion = {
          enabled = true,
          auto_trigger = true,
          -- We set the keymap to <Tab> and will
          -- handle the conflict in the nvim-cmp config.
          keymap = {
            accept = '<Tab>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },

  { -- Copilot Chat Interface
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      'zbirenbaum/copilot.lua', -- Use the same copilot instance
      'nvim-lua/plenary.nvim', -- Already a dependency for telescope
    },
    opts = {
      -- Config is minimal as it will auto-detect telescope
    },
    keys = {
      {
        '<leader>cc',
        '<cmd>CopilotChatToggle<cr>',
        desc = '[C]opilot [C]hat',
      },
      {
        '<leader>ce',
        '<cmd>CopilotChatExplain<cr>',
        mode = 'v',
        desc = '[C]opilot [E]xplain (Visual)',
      },
      {
        '<leader>cf',
        '<cmd>CopilotChatFix<cr>',
        mode = 'v',
        desc = '[C]opilot [F]ix (Visual)',
      },
    },
  },
}
