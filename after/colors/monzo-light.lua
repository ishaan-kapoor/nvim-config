-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color6 = '#664e4d'
local Color14 = '#f5f5f5'
local Color5 = '#ba9b5e'
local Color3 = '#247888'
local Color13 = '#e0e5ee'
local Color0 = '#8ba2c4'
local Color1 = '#f63a4e'
local Color4 = '#e14d61'
local Color11 = '#eaf1ed'
local Color7 = '#cf433e'
local Color10 = '#5a79a8'
local Color8 = '#98baa6'
local Color9 = '#ffffff'
local Color12 = '#cccccc'
local Color2 = '#3ea7bc'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color9, Color8, nil)
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
highlight('TabLine', Color14, Color13, nil)
highlight('TabLineSel', Color10, nil, nil)
highlight('TabLineFill', Color14, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSField', 'Constant')
link('TSFunction', 'Function')
link('TSType', 'Type')
link('TSFloat', 'Number')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSRepeat', 'Repeat')
link('TSNumber', 'Number')
link('TSTagDelimiter', 'Type')
link('TelescopeNormal', 'Normal')
link('TSConditional', 'Conditional')
link('TSTag', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('Conditional', 'Operator')
link('Whitespace', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('Folded', 'Comment')
link('TSLabel', 'Type')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSString', 'String')
link('NonText', 'Comment')
link('TSParameterReference', 'TSParameter')
link('CursorLineNr', 'Identifier')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')