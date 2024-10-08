vim.cmd[[highlight clear]]
vim.g.colors_name = 'august-ariake-dark'
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

local Color13 = '#4c566a'
local Color12 = '#323846'
local Color3 = '#B9BED5'
local Color9 = '#7b88a1'
local Color0 = '#555C77'
local Color14 = '#d8dee9'
local Color1 = '#A571F4'
local Color2 = '#7E7EDD'
local Color4 = '#7B88A1'
local Color6 = '#85B1E0'
local Color7 = '#9AEFEA'
local Color10 = '#2b3130'
local Color11 = '#2f252b'
local Color8 = '#191c22'
local Color5 = '#DDA2F6'

highlight('Comment', nil, Color0, nil)
highlight('Type', nil, Color1, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Conditional', nil, Color2, nil)
highlight('Repeat', nil, Color2, nil)
highlight('Operator', nil, Color3, nil)
highlight('Type', nil, Color4, nil)
highlight('Constant', nil, Color5, nil)
highlight('Number', nil, Color5, nil)
highlight('Identifier', nil, Color6, nil)
highlight('String', nil, Color7, nil)
highlight('Function', nil, Color2, nil)
highlight('StatusLine', Color9, Color8, nil)
highlight('WildMenu', Color8, Color9, nil)
highlight('Pmenu', Color8, Color9, nil)
highlight('PmenuSel', Color9, Color8, nil)
highlight('PmenuThumb', Color8, Color9, nil)
highlight('DiffAdd', Color10, nil, nil)
highlight('DiffDelete', Color11, nil, nil)
highlight('Normal', Color8, Color9, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color8, Color9, nil)
highlight('TabLineSel', Color14, Color8, nil)
highlight('TabLineFill', Color8, Color9, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSTag', 'MyTag')
link('TSFloat', 'Number')
link('TSFunction', 'Function')
link('TSType', 'Type')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('TSKeyword', 'Keyword')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSNumber', 'Number')
link('TSNamespace', 'TSType')
link('TSString', 'String')
link('NonText', 'Comment')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('CursorLineNr', 'Identifier')
link('TSRepeat', 'Repeat')
link('TSOperator', 'Operator')
link('TelescopeNormal', 'Normal')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Macro', 'Function')
link('Whitespace', 'Comment')
link('TSPunctBracket', 'MyTag')
link('Operator', 'Keyword')
link('TSParameterReference', 'TSParameter')
link('TSComment', 'Comment')
link('TSConstant', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
