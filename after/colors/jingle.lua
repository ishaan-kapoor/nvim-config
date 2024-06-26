vim.cmd[[highlight clear]]
vim.g.colors_name = 'jingle'
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

local Color4 = '#e06d5c'
local Color7 = '#cf433e'
local Color12 = '#54656f'
local Color3 = '#7ec579'
local Color0 = '#4e5c66'
local Color9 = '#283035'
local Color11 = '#44614b'
local Color6 = '#664e4d'
local Color2 = '#e0ad5c'
local Color8 = '#ffffff'
local Color5 = '#98abb7'
local Color1 = '#84c4ce'
local Color13 = '#8698a3'
local Color10 = '#c0ccdb'
local Color14 = '#313b41'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
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
highlight('TabLineFill', Color14, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSNumber', 'Number')
link('TSNamespace', 'TSType')
link('TSType', 'Type')
link('Repeat', 'Conditional')
link('Whitespace', 'Comment')
link('TSFunction', 'Function')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSRepeat', 'Repeat')
link('TSTagDelimiter', 'Type')
link('TSTag', 'MyTag')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('Conditional', 'Operator')
link('TSParameter', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSFloat', 'Number')
link('TSLabel', 'Type')
link('NonText', 'Comment')
link('TSKeyword', 'Keyword')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Macro', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSPunctBracket', 'MyTag')
link('TSString', 'String')
