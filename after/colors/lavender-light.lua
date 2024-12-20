vim.cmd[[highlight clear]]
vim.g.colors_name = 'lavender-light'
-- Colorscheme generated by https://github.com/arcticlimer/djanho

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color10 = '#f0ddff'
local Color2 = '#f25ae6'
local Color1 = '#f5b0ef'
local Color7 = '#a29dfa'
local Color0 = '#9177a3'
local Color6 = '#cf433e'
local Color9 = '#29222e'
local Color13 = '#917d9f'
local Color5 = '#664e4d'
local Color11 = '#cccccc'
local Color4 = '#8e6da6'
local Color12 = '#f5f5f5'
local Color8 = '#ffffff'
local Color3 = '#b657ff'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color8, Color7, nil)
highlight('WildMenu', Color8, Color9, nil)
highlight('Pmenu', Color8, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color8, Color9, nil)
highlight('Normal', Color8, Color9, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color12, Color13, nil)
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color12, Color13, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSFunction', 'Function')
link('NonText', 'Comment')
link('TSParameterReference', 'TSParameter')
link('Whitespace', 'Comment')
link('TSNumber', 'Number')
link('TSTag', 'MyTag')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSConditional', 'Conditional')
link('TSOperator', 'Operator')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('TSComment', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSConstant', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSParameter', 'Constant')
link('TSString', 'String')
link('Operator', 'Keyword')
link('TSField', 'Constant')
link('TSRepeat', 'Repeat')
link('TSLabel', 'Type')
link('TSType', 'Type')
link('TSProperty', 'TSField')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNamespace', 'TSType')
link('TSKeyword', 'Keyword')
link('Conditional', 'Operator')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
