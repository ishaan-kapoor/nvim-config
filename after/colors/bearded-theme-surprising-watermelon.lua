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

local Color3 = '#00B3BD'
local Color11 = '#101c1f'
local Color15 = '#322a28'
local Color17 = '#314b4f'
local Color6 = '#a9dc76'
local Color1 = '#496a70'
local Color7 = '#CC9B52'
local Color12 = '#c6d6d9'
local Color4 = '#da6c62'
local Color8 = '#B85C40'
local Color10 = '#7f969a'
local Color14 = '#263a30'
local Color2 = '#C13838'
local Color9 = '#5288BA'
local Color13 = '#142326'
local Color0 = '#b7d175'
local Color16 = '#453535'
local Color5 = '#576669'

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
highlight('WildMenu', Color13, Color12, nil)
highlight('Pmenu', Color13, Color12, nil)
highlight('PmenuSel', Color12, Color13, nil)
highlight('PmenuThumb', Color13, Color12, nil)
highlight('DiffAdd', Color14, nil, nil)
highlight('DiffDelete', Color15, nil, nil)
highlight('Normal', Color13, Color12, nil)
highlight('Visual', Color16, nil, nil)
highlight('CursorLine', Color16, nil, nil)
highlight('ColorColumn', Color16, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color17, nil)
highlight('TabLine', Color11, Color1, nil)
highlight('TabLineSel', Color4, Color13, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color12, nil)

link('TSFloat', 'Number')
link('TSPunctBracket', 'MyTag')
link('TSRepeat', 'Repeat')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('Conditional', 'Operator')
link('TSConditional', 'Conditional')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Whitespace', 'Comment')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSOperator', 'Operator')
link('TSConstant', 'Constant')
link('TSParameter', 'Constant')
link('TSKeyword', 'Keyword')
link('TSParameterReference', 'TSParameter')
link('NonText', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSString', 'String')
link('Macro', 'Function')
link('TSTagDelimiter', 'Type')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TSType', 'Type')
link('TSComment', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('TSProperty', 'TSField')
link('TSNumber', 'Number')
link('Folded', 'Comment')
link('TelescopeNormal', 'Normal')