vim.cmd[[highlight clear]]
vim.g.colors_name = 'mellow-light'
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

local Color11 = '#f5f5f5'
local Color8 = '#555555'
local Color5 = '#664e4d'
local Color12 = '#bbbbbb'
local Color2 = '#1f8181'
local Color0 = '#aaaaaa'
local Color3 = '#f2bc79'
local Color4 = '#f28972'
local Color1 = '#f8bb39'
local Color9 = '#fddee4'
local Color6 = '#cf433e'
local Color7 = '#ffffff'
local Color10 = '#cccccc'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
highlight('WildMenu', Color7, Color8, nil)
highlight('Pmenu', Color7, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color7, Color8, nil)
highlight('Normal', Color7, Color8, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('TSNumber', 'Number')
link('TSConditional', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('Operator', 'Keyword')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSComment', 'Comment')
link('TSOperator', 'Operator')
link('Repeat', 'Conditional')
link('TSType', 'Type')
link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFuncMacro', 'Macro')
link('TSKeyword', 'Keyword')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSFloat', 'Number')
link('Whitespace', 'Comment')
link('NonText', 'Comment')
link('TSFunction', 'Function')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('TSString', 'String')
link('CursorLineNr', 'Identifier')
link('TSProperty', 'TSField')
link('TSNamespace', 'TSType')
