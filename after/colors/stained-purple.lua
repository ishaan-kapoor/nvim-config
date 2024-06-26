vim.cmd[[highlight clear]]
vim.g.colors_name = 'stained-purple'
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

local Color15 = '#222b33'
local Color18 = '#433953'
local Color8 = '#935cd1'
local Color5 = '#635d6d'
local Color14 = '#d3cedc'
local Color7 = '#37ae6f'
local Color10 = '#D26D32'
local Color2 = '#C13838'
local Color12 = '#1b1524'
local Color11 = '#90879c'
local Color13 = '#20192b'
local Color16 = '#371d2c'
local Color19 = '#a948ef'
local Color17 = '#42245c'
local Color9 = '#de456b'
local Color1 = '#5e5272'
local Color0 = '#7E9E2D'
local Color6 = '#24B5A8'
local Color4 = '#c9a022'
local Color3 = '#3398DB'

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
highlight('StatusLine', Color11, Color12, nil)
highlight('WildMenu', Color13, Color14, nil)
highlight('Pmenu', Color13, Color14, nil)
highlight('PmenuSel', Color14, Color13, nil)
highlight('PmenuThumb', Color13, Color14, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color13, Color14, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color12, Color1, nil)
highlight('TabLineSel', Color19, Color13, nil)
highlight('TabLineFill', Color12, Color1, nil)
highlight('TSPunctDelimiter', nil, Color14, nil)

link('TSConditional', 'Conditional')
link('TSNumber', 'Number')
link('TSProperty', 'TSField')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Whitespace', 'Comment')
link('TSTagDelimiter', 'Type')
link('Conditional', 'Operator')
link('Operator', 'Keyword')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('CursorLineNr', 'Identifier')
link('TelescopeNormal', 'Normal')
link('TSType', 'Type')
link('TSTag', 'MyTag')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSFunction', 'Function')
link('TSFuncMacro', 'Macro')
link('TSLabel', 'Type')
link('TSConstant', 'Constant')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
link('TSOperator', 'Operator')
