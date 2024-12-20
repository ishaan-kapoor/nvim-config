vim.cmd[[highlight clear]]
vim.g.colors_name = 'surprising-eggplant'
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

local Color13 = '#d0c6d9'
local Color6 = '#a9dc76'
local Color7 = '#CC9B52'
local Color4 = '#d24e4e'
local Color5 = '#605769'
local Color8 = '#B85C40'
local Color14 = '#2e2d30'
local Color10 = '#8d7f9a'
local Color11 = '#17101f'
local Color16 = '#4a2230'
local Color2 = '#C13838'
local Color15 = '#391d28'
local Color0 = '#b7d175'
local Color3 = '#00B3BD'
local Color12 = '#1d1426'
local Color9 = '#5288BA'
local Color17 = '#41314f'
local Color1 = '#5d4970'

highlight('Type', nil, Color0, nil)
highlight('Comment', nil, Color1, 'italic')
highlight('Constant', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Repeat', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color4, nil)
highlight('String', nil, Color6, nil)
highlight('Type', nil, Color7, nil)
highlight('Identifier', nil, Color8, nil)
highlight('Number', nil, Color9, nil)
highlight('StatusLine', Color10, Color11, nil)
highlight('WildMenu', Color12, Color13, nil)
highlight('Pmenu', Color12, Color13, nil)
highlight('PmenuSel', Color13, Color12, nil)
highlight('PmenuThumb', Color12, Color13, nil)
highlight('DiffAdd', Color14, nil, nil)
highlight('DiffDelete', Color15, nil, nil)
highlight('Normal', Color12, Color13, nil)
highlight('Visual', Color16, nil, nil)
highlight('CursorLine', Color16, nil, nil)
highlight('ColorColumn', Color16, nil, nil)
highlight('SignColumn', Color12, nil, nil)
highlight('LineNr', nil, Color17, nil)
highlight('TabLine', Color11, Color1, nil)
highlight('TabLineSel', Color4, Color12, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color13, nil)

link('Macro', 'Function')
link('TSFloat', 'Number')
link('TSType', 'Type')
link('NonText', 'Comment')
link('TSProperty', 'TSField')
link('TSNumber', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Folded', 'Comment')
link('TSLabel', 'Type')
link('TSConditional', 'Conditional')
link('TSParameter', 'Constant')
link('TSOperator', 'Operator')
link('TelescopeNormal', 'Normal')
link('TSFuncMacro', 'Macro')
link('TSFunction', 'Function')
link('TSString', 'String')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TSConstant', 'Constant')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('CursorLineNr', 'Identifier')
link('TSPunctBracket', 'MyTag')
link('Conditional', 'Operator')
link('TSTagDelimiter', 'Type')
link('Whitespace', 'Comment')
link('TSField', 'Constant')
link('Operator', 'Keyword')
link('TSParameterReference', 'TSParameter')
link('TSNamespace', 'TSType')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
