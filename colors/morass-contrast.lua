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

local Color1 = '#f8bb39'
local Color11 = '#495651'
local Color8 = '#1a1f1d'
local Color12 = '#232a27'
local Color2 = '#68875a'
local Color7 = '#fdec5a'
local Color10 = '#656331'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color0 = '#414f48'
local Color3 = '#afd0c4'
local Color9 = '#e4e3e1'
local Color13 = '#788d85'
local Color4 = '#afb54c'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
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
highlight('TabLineFill', Color12, Color13, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSString', 'String')
link('TSField', 'Constant')
link('TSFloat', 'Number')
link('TSRepeat', 'Repeat')
link('TSType', 'Type')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSLabel', 'Type')
link('TSKeyword', 'Keyword')
link('TSOperator', 'Operator')
link('Macro', 'Function')
link('TSProperty', 'TSField')
link('NonText', 'Comment')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('CursorLineNr', 'Identifier')
link('TSConditional', 'Conditional')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Conditional', 'Operator')
link('TSComment', 'Comment')
link('TSNumber', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFunction', 'Function')
link('TelescopeNormal', 'Normal')
link('TSParameter', 'Constant')
link('TSTagDelimiter', 'Type')
link('Whitespace', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSTag', 'MyTag')
link('Folded', 'Comment')