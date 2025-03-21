vim.cmd[[highlight clear]]
vim.g.colors_name = 'darkside-contrast'
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

local Color14 = '#0a0a0a'
local Color15 = '#666666'
local Color13 = '#333333'
local Color9 = '#1cc3e8'
local Color8 = '#ffffff'
local Color1 = '#f2d42c'
local Color2 = '#8e69c9'
local Color7 = '#cf433e'
local Color4 = '#f08d24'
local Color6 = '#664e4d'
local Color5 = '#68c244'
local Color11 = '#000000'
local Color12 = '#551a1a'
local Color0 = '#494b4d'
local Color3 = '#e8341c'
local Color10 = '#bababa'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color9, nil)
highlight('WildMenu', Color11, Color10, nil)
highlight('Pmenu', Color11, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color11, Color10, nil)
highlight('Normal', Color11, Color10, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color11, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSKeyword', 'Keyword')
link('Operator', 'Keyword')
link('TSTagDelimiter', 'Type')
link('TSLabel', 'Type')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('TSField', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSComment', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSFloat', 'Number')
link('TSOperator', 'Operator')
link('NonText', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSString', 'String')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('Conditional', 'Operator')
link('Folded', 'Comment')
link('Whitespace', 'Comment')
link('TSType', 'Type')
link('TSParameter', 'Constant')
link('TSConstant', 'Constant')
link('TSNumber', 'Number')
link('Macro', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNamespace', 'TSType')
