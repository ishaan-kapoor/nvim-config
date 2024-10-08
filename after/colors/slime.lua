vim.cmd[[highlight clear]]
vim.g.colors_name = 'slime'
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

local Color2 = '#c7af3f'
local Color9 = '#5d5835'
local Color4 = '#664e4d'
local Color7 = '#ffffff'
local Color0 = '#4f5a63'
local Color8 = '#292d30'
local Color3 = '#9fb3c2'
local Color1 = '#faffdb'
local Color10 = '#586167'
local Color5 = '#cf433e'
local Color11 = '#8a949b'
local Color6 = '#3b3a32'
local Color12 = '#32373b'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color2, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color1, nil)
highlight('WildMenu', Color8, Color7, nil)
highlight('Pmenu', Color8, Color7, nil)
highlight('PmenuSel', Color7, nil, nil)
highlight('PmenuThumb', Color8, Color7, nil)
highlight('Normal', Color8, Color7, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color7, nil)

link('TSNamespace', 'TSType')
link('TSTagDelimiter', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSOperator', 'Operator')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Conditional', 'Operator')
link('TSKeyword', 'Keyword')
link('TSField', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSFuncMacro', 'Macro')
link('CursorLineNr', 'Identifier')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TelescopeNormal', 'Normal')
link('TSFloat', 'Number')
link('TSRepeat', 'Repeat')
link('TSComment', 'Comment')
link('Folded', 'Comment')
link('Operator', 'Keyword')
link('TSTag', 'MyTag')
link('Whitespace', 'Comment')
link('NonText', 'Comment')
link('TSLabel', 'Type')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSType', 'Type')
link('TSConditional', 'Conditional')
link('TSNumber', 'Number')
