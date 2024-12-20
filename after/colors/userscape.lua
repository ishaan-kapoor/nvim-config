vim.cmd[[highlight clear]]
vim.g.colors_name = 'userscape'
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

local Color4 = '#b3becc'
local Color6 = '#cf433e'
local Color2 = '#de4d3a'
local Color11 = '#33455a'
local Color12 = '#5e6d7c'
local Color5 = '#664e4d'
local Color10 = '#dce2e8'
local Color14 = '#93a0ad'
local Color7 = '#ffffff'
local Color8 = '#a8c0e0'
local Color1 = '#e3bd14'
local Color9 = '#323a42'
local Color3 = '#507db7'
local Color13 = '#3b444e'
local Color0 = '#728496'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color9, Color10, nil)
highlight('Pmenu', Color9, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color9, Color10, nil)
highlight('Normal', Color9, Color10, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSConditional', 'Conditional')
link('Whitespace', 'Comment')
link('TSConstant', 'Constant')
link('TSRepeat', 'Repeat')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('Operator', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSFloat', 'Number')
link('Macro', 'Function')
link('TSProperty', 'TSField')
link('TSType', 'Type')
link('TSParameter', 'Constant')
link('TSNumber', 'Number')
link('TSFunction', 'Function')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('TSTag', 'MyTag')
link('NonText', 'Comment')
link('Repeat', 'Conditional')
link('CursorLineNr', 'Identifier')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSLabel', 'Type')
link('TSFuncMacro', 'Macro')
link('Conditional', 'Operator')
