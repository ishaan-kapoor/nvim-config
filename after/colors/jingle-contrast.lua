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

local Color4 = '#e06d5c'
local Color14 = '#161b1d'
local Color11 = '#324c33'
local Color2 = '#e0ad5c'
local Color13 = '#657d85'
local Color7 = '#cf433e'
local Color1 = '#84c4ce'
local Color0 = '#4e5c66'
local Color8 = '#ffffff'
local Color6 = '#664e4d'
local Color5 = '#98abb7'
local Color10 = '#c0ccdb'
local Color12 = '#39464b'
local Color3 = '#7ec579'
local Color9 = '#0d1011'

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

link('TelescopeNormal', 'Normal')
link('Repeat', 'Conditional')
link('Conditional', 'Operator')
link('TSNumber', 'Number')
link('TSString', 'String')
link('TSRepeat', 'Repeat')
link('TSFunction', 'Function')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('TSFuncMacro', 'Macro')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSKeyword', 'Keyword')
link('TSTagDelimiter', 'Type')
link('TSField', 'Constant')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('NonText', 'Comment')
link('TSTag', 'MyTag')
link('Macro', 'Function')
link('Whitespace', 'Comment')
link('TSType', 'Type')
link('TSConditional', 'Conditional')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')
link('TSOperator', 'Operator')