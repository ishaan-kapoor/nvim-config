vim.cmd[[highlight clear]]
vim.g.colors_name = 'horizon-light'
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

local Color11 = '#cccccc'
local Color0 = '#736faa'
local Color2 = '#e524a9'
local Color4 = '#e5194b'
local Color8 = '#ffffff'
local Color12 = '#b0adc9'
local Color13 = '#f5f5f5'
local Color3 = '#ba66d6'
local Color7 = '#cf433e'
local Color10 = '#fee7d3'
local Color1 = '#fd8a25'
local Color6 = '#664e4d'
local Color9 = '#474466'
local Color5 = '#fed230'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color1, nil)
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
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSComment', 'Comment')
link('TSLabel', 'Type')
link('TSField', 'Constant')
link('TSConditional', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSFloat', 'Number')
link('TSTag', 'MyTag')
link('TSFunction', 'Function')
link('NonText', 'Comment')
link('Conditional', 'Operator')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Operator', 'Keyword')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('TSProperty', 'TSField')
link('TSTagDelimiter', 'Type')
link('TSRepeat', 'Repeat')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSNumber', 'Number')
link('CursorLineNr', 'Identifier')
link('TSParameter', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
link('TSOperator', 'Operator')
