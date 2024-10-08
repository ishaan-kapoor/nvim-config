vim.cmd[[highlight clear]]
vim.g.colors_name = 'mintchoc-contrast'
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

local Color7 = '#0c0a08'
local Color3 = '#9d8262'
local Color5 = '#cf433e'
local Color6 = '#ffffff'
local Color8 = '#bababa'
local Color12 = '#181410'
local Color0 = '#564439'
local Color4 = '#664e4d'
local Color9 = '#073526'
local Color2 = '#008d62'
local Color10 = '#493d31'
local Color11 = '#86705a'
local Color1 = '#00e08c'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color3, nil)
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
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSComment', 'Comment')
link('TSOperator', 'Operator')
link('TSTag', 'MyTag')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSNumber', 'Number')
link('Operator', 'Keyword')
link('TSTagDelimiter', 'Type')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSString', 'String')
link('Conditional', 'Operator')
link('TSProperty', 'TSField')
link('TSLabel', 'Type')
link('Whitespace', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSNamespace', 'TSType')
link('NonText', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('TSField', 'Constant')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('CursorLineNr', 'Identifier')
link('TSRepeat', 'Repeat')
