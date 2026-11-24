 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#272317',
    base01 = '#342e1e',
    base02 = '#403a26',
    base03 = '#706d60',
    base04 = '#b6b5af',
    base05 = '#f3f3f2',
    base06 = '#f3f3f2',
    base07 = '#f3f3f2',
    base08 = '#fd4663',
    base09 = '#7ecc66',
    base0A = '#b6d65c',
    base0B = '#e4c767',
    base0C = '#a9e996',
    base0D = '#ecd793',
    base0E = '#d3e996',
    base0F = '#e5f4be',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- telescope.nvim
  hi('TelescopeNormal',         { fg = '#f3f3f2',          bg = '#272317' })
  hi('TelescopeBorder',         { fg = '#706d60',             bg = '#272317' })
  hi('TelescopePromptNormal',   { fg = '#f3f3f2',          bg = '#272317' })
  hi('TelescopePromptBorder',   { fg = '#706d60',             bg = '#272317' })
  hi('TelescopePromptPrefix',   { fg = '#e4c767',             bg = '#272317' })
  hi('TelescopePromptCounter',  { fg = '#b6b5af',  bg = '#272317' })
  hi('TelescopePromptTitle',    { fg = '#272317',             bg = '#e4c767' })
  hi('TelescopePreviewTitle',   { fg = '#272317',             bg = '#b6d65c' })
  hi('TelescopeResultsTitle',   { fg = '#272317',             bg = '#7ecc66' })
  hi('TelescopeSelection',      { fg = '#f3f3f2',          bg = '#403a26' })
  hi('TelescopeSelectionCaret', { fg = '#e4c767',             bg = '#403a26' })
  hi('TelescopeMatching',       { fg = '#e4c767',             bold = true })

  -- mini.pick
  hi('MiniPickNormal',         { fg = '#f3f3f2',          bg = '#272317' })
  hi('MiniPickBorder',         { fg = '#706d60',             bg = '#272317' })
  hi('MiniPickPrompt',   { fg = '#f3f3f2',          bg = '#272317' })
  hi('MiniPickPromptPrefix',   { fg = '#e4c767',             bg = '#272317' })
  hi('MiniPickBorderText',    { fg = '#272317',             bg = '#e4c767' })
  hi('MiniPickMatchCurrent',      { fg = '#f3f3f2',          bg = '#403a26' })
  hi('MiniPickPromptCaret', { fg = '#e4c767',             bg = '#403a26' })
  hi('MiniPickMatchRanges',       { fg = '#e4c767',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
