vim.cmd[[highlight clear]]
vim.g.colors_name = 'comrade'
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

local Color9 = '#343939'
local Color3 = '#9bb7a7'
local Color8 = '#c24e4b'
local Color10 = '#d6dbdb'
local Color7 = '#ffffff'
local Color12 = '#656e6e'
local Color11 = '#56635d'
local Color6 = '#cf433e'
local Color14 = '#3e4444'
local Color0 = '#5e7070'
local Color13 = '#98a1a1'
local Color1 = '#63a5a5'
local Color5 = '#664e4d'
local Color4 = '#f9f7f1'
local Color2 = '#4eadad'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
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

link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Repeat', 'Conditional')
link('TSNumber', 'Number')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('Operator', 'Keyword')
link('TSParameter', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSString', 'String')
link('TSNamespace', 'TSType')
link('NonText', 'Comment')
link('TSConditional', 'Conditional')
link('TSKeyword', 'Keyword')
link('TSConstant', 'Constant')
link('Conditional', 'Operator')
link('TSTag', 'MyTag')
link('TSProperty', 'TSField')
link('CursorLineNr', 'Identifier')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
