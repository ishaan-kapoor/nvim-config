vim.cmd[[highlight clear]]
vim.g.colors_name = 'yitzchok-light'
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

local Color11 = '#d9dde1'
local Color0 = '#aeb9c4'
local Color6 = '#664e4d'
local Color7 = '#cf433e'
local Color3 = '#7a8289'
local Color5 = '#6a7684'
local Color12 = '#f5f5f5'
local Color8 = '#ffffff'
local Color1 = '#afa441'
local Color10 = '#cccccc'
local Color4 = '#e7be45'
local Color2 = '#998d29'
local Color9 = '#faf2d9'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
highlight('WildMenu', Color8, Color5, nil)
highlight('Pmenu', Color8, Color5, nil)
highlight('PmenuSel', Color5, nil, nil)
highlight('PmenuThumb', Color8, Color5, nil)
highlight('Normal', Color8, Color5, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineSel', Color5, nil, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color5, nil)

link('Macro', 'Function')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSComment', 'Comment')
link('NonText', 'Comment')
link('TSKeyword', 'Keyword')
link('CursorLineNr', 'Identifier')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('TSOperator', 'Operator')
link('TelescopeNormal', 'Normal')
link('Whitespace', 'Comment')
link('TSProperty', 'TSField')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSFloat', 'Number')
link('TSFunction', 'Function')
link('TSString', 'String')
link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('TSNumber', 'Number')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Conditional', 'Operator')
link('Operator', 'Keyword')
