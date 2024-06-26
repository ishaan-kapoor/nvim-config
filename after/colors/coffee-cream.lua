vim.cmd[[highlight clear]]
vim.g.colors_name = 'coffee-cream'
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

local Color2 = '#dc2e2e'
local Color7 = '#51A200'
local Color12 = '#3e3c3b'
local Color13 = '#36221d'
local Color17 = '#e4c5bb'
local Color16 = '#edcbc8'
local Color4 = '#ad8200'
local Color8 = '#7056c4'
local Color11 = '#e3dbd7'
local Color10 = '#ce6700'
local Color19 = '#D3694C'
local Color1 = '#a69692'
local Color18 = '#c3b7b4'
local Color5 = '#a69a97'
local Color6 = '#00A47B'
local Color15 = '#d6dbc4'
local Color0 = '#7E9E2D'
local Color3 = '#009DB5'
local Color9 = '#D8573E'
local Color14 = '#EAE4E1'

highlight('Type', nil, Color0, nil)
highlight('Comment', nil, Color1, 'italic')
highlight('Constant', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Repeat', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color6, nil)
highlight('String', nil, Color7, nil)
highlight('Type', nil, Color8, nil)
highlight('Identifier', nil, Color9, nil)
highlight('Number', nil, Color10, nil)
highlight('StatusLine', Color12, Color11, nil)
highlight('WildMenu', Color14, Color13, nil)
highlight('Pmenu', Color14, Color13, nil)
highlight('PmenuSel', Color13, Color14, nil)
highlight('PmenuThumb', Color14, Color13, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color14, Color13, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color14, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color11, Color1, nil)
highlight('TabLineSel', Color19, Color14, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color13, nil)

link('TSFunction', 'Function')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Conditional', 'Operator')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
link('TSString', 'String')
link('TSProperty', 'TSField')
link('TSConditional', 'Conditional')
link('Operator', 'Keyword')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('TSNumber', 'Number')
link('TSRepeat', 'Repeat')
link('TSLabel', 'Type')
link('TSNamespace', 'TSType')
link('TSParameter', 'Constant')
link('TSField', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSTagDelimiter', 'Type')
link('Repeat', 'Conditional')
link('Whitespace', 'Comment')
link('TSConstant', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSOperator', 'Operator')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
