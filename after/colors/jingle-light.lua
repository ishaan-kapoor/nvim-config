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

local Color3 = '#7ec579'
local Color1 = '#84c4ce'
local Color7 = '#cf433e'
local Color10 = '#e5f3e4'
local Color13 = '#b0bdc4'
local Color2 = '#e0ad5c'
local Color5 = '#98abb7'
local Color9 = '#485860'
local Color11 = '#cccccc'
local Color6 = '#664e4d'
local Color8 = '#ffffff'
local Color4 = '#e06d5c'
local Color12 = '#f5f5f5'
local Color0 = '#aab8bf'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
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

link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('TSConditional', 'Conditional')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Whitespace', 'Comment')
link('TSTag', 'MyTag')
link('Macro', 'Function')
link('TSKeyword', 'Keyword')
link('TSNumber', 'Number')
link('Conditional', 'Operator')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSType', 'Type')
link('TSRepeat', 'Repeat')
link('TSField', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSString', 'String')
link('TSFunction', 'Function')
link('Folded', 'Comment')
link('TSProperty', 'TSField')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSOperator', 'Operator')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSParameter', 'Constant')
link('NonText', 'Comment')
link('TSLabel', 'Type')
link('TelescopeNormal', 'Normal')
link('TSNamespace', 'TSType')