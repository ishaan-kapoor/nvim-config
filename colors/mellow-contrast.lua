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

local Color10 = '#59252e'
local Color9 = '#f8f8f2'
local Color2 = '#1f8181'
local Color4 = '#f28972'
local Color11 = '#433d37'
local Color0 = '#7a7267'
local Color13 = '#161412'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color1 = '#f8bb39'
local Color7 = '#ffffff'
local Color3 = '#f2bc79'
local Color8 = '#0b0a09'
local Color12 = '#7b7065'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
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
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSType', 'Type')
link('TSOperator', 'Operator')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('TSComment', 'Comment')
link('TSTag', 'MyTag')
link('TSNumber', 'Number')
link('TSFuncMacro', 'Macro')
link('TSField', 'Constant')
link('TSRepeat', 'Repeat')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('TSLabel', 'Type')
link('TelescopeNormal', 'Normal')
link('CursorLineNr', 'Identifier')
link('NonText', 'Comment')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSConstant', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSProperty', 'TSField')
link('Operator', 'Keyword')
link('Conditional', 'Operator')
link('TSFloat', 'Number')
link('TSString', 'String')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSParameterReference', 'TSParameter')