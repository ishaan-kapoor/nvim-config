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

local Color2 = '#f0624b'
local Color0 = '#534b4b'
local Color1 = '#f7a21b'
local Color4 = '#664e4d'
local Color5 = '#cf433e'
local Color9 = '#304849'
local Color11 = '#948888'
local Color8 = '#2a2626'
local Color7 = '#3d8e91'
local Color3 = '#b4b7ad'
local Color6 = '#ffffff'
local Color10 = '#605656'
local Color12 = '#353030'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
highlight('WildMenu', Color8, Color6, nil)
highlight('Pmenu', Color8, Color6, nil)
highlight('PmenuSel', Color6, nil, nil)
highlight('PmenuThumb', Color8, Color6, nil)
highlight('Normal', Color8, Color6, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color6, nil)

link('TSParameter', 'Constant')
link('TSComment', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSKeyword', 'Keyword')
link('TSFloat', 'Number')
link('TSFuncMacro', 'Macro')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('TSOperator', 'Operator')
link('TSTagDelimiter', 'Type')
link('Conditional', 'Operator')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('Whitespace', 'Comment')
link('TSNamespace', 'TSType')
link('CursorLineNr', 'Identifier')
link('TSField', 'Constant')
link('Operator', 'Keyword')
link('TSNumber', 'Number')
link('NonText', 'Comment')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSTag', 'MyTag')
link('Folded', 'Comment')
link('TSProperty', 'TSField')
link('TSString', 'String')