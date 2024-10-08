vim.cmd[[highlight clear]]
vim.g.colors_name = 'grunge'
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

local Color6 = '#cf433e'
local Color5 = '#664e4d'
local Color4 = '#ffc48c'
local Color9 = '#72454d'
local Color10 = '#666a5b'
local Color2 = '#f56991'
local Color0 = '#5c634f'
local Color11 = '#999d8e'
local Color1 = '#d1f2a5'
local Color12 = '#3c3e35'
local Color8 = '#31332c'
local Color7 = '#f8f8f2'
local Color3 = '#91a374'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color0, Color1, nil)
highlight('WildMenu', Color8, Color7, nil)
highlight('Pmenu', Color8, Color7, nil)
highlight('PmenuSel', Color7, nil, nil)
highlight('PmenuThumb', Color8, Color7, nil)
highlight('Normal', Color8, Color7, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color7, nil)

link('TSFunction', 'Function')
link('Operator', 'Keyword')
link('TSFuncMacro', 'Macro')
link('TSNamespace', 'TSType')
link('TSProperty', 'TSField')
link('TSComment', 'Comment')
link('Macro', 'Function')
link('TSTagDelimiter', 'Type')
link('Whitespace', 'Comment')
link('TSType', 'Type')
link('TSTag', 'MyTag')
link('TSNumber', 'Number')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSConditional', 'Conditional')
link('TSLabel', 'Type')
link('TSFloat', 'Number')
link('CursorLineNr', 'Identifier')
link('Conditional', 'Operator')
link('TelescopeNormal', 'Normal')
link('Repeat', 'Conditional')
link('TSOperator', 'Operator')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('Folded', 'Comment')
link('TSString', 'String')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSParameterReference', 'TSParameter')
link('TSPunctBracket', 'MyTag')
