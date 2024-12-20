vim.cmd[[highlight clear]]
vim.g.colors_name = 'aubergine-new-slack'
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

local Color12 = '#AED4FB'
local Color1 = '#a44185'
local Color5 = '#da5221'
local Color7 = '#0444ac'
local Color11 = '#383A42'
local Color8 = '#207bb8'
local Color10 = '#1264A3'
local Color0 = '#357b42'
local Color2 = '#174781'
local Color9 = '#FFF'
local Color4 = '#7b30d0'
local Color6 = '#7eb233'
local Color3 = '#2f86d2'
local Color13 = '#b9b9b9'
local Color16 = '#000'
local Color15 = '#686868'
local Color14 = '#F3F3F3'

highlight('Comment', nil, Color0, 'italic')
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('Constant', nil, Color2, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Identifier', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color5, nil)
highlight('Function', nil, Color6, nil)
highlight('Type', nil, Color7, nil)
highlight('Error', nil, Color8, nil)
highlight('StatusLine', Color9, Color10, nil)
highlight('WildMenu', Color9, Color11, nil)
highlight('Pmenu', Color9, Color11, nil)
highlight('PmenuSel', Color11, Color9, nil)
highlight('PmenuThumb', Color9, Color11, nil)
highlight('Normal', Color9, Color11, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineSel', Color16, Color9, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TSLabel', 'Type')
link('TSFloat', 'Number')
link('TSProperty', 'TSField')
link('TSString', 'String')
link('CursorLineNr', 'Identifier')
link('Folded', 'Comment')
link('TSRepeat', 'Repeat')
link('NonText', 'Comment')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('TSFuncMacro', 'Macro')
link('Whitespace', 'Comment')
link('Macro', 'Function')
link('TelescopeNormal', 'Normal')
link('TSParameterReference', 'TSParameter')
link('TSTagDelimiter', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('Repeat', 'Conditional')
link('TSPunctBracket', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('TSFunction', 'Function')
link('Conditional', 'Operator')
link('TSConditional', 'Conditional')
link('TSNumber', 'Number')
link('TSParameter', 'Constant')
link('TSOperator', 'Operator')
link('TSNamespace', 'TSType')
link('TSType', 'Type')
link('TSField', 'Constant')
