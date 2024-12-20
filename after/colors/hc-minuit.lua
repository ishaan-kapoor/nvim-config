vim.cmd[[highlight clear]]
vim.g.colors_name = 'hc-minuit'
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

local Color2 = '#fb7a6c'
local Color10 = '#eea67f'
local Color15 = '#1c1827'
local Color4 = '#dbc2a3'
local Color17 = '#59526c'
local Color14 = '#362d33'
local Color11 = '#8b8698'
local Color1 = '#7c768c'
local Color7 = '#69d2ab'
local Color8 = '#ad92ff'
local Color16 = '#504340'
local Color9 = '#e38d97'
local Color6 = '#17d7b4'
local Color3 = '#4fc1e8'
local Color0 = '#77b03e'
local Color12 = '#171420'
local Color13 = '#1C1827'
local Color5 = '#cfccd8'
local Color18 = '#ecc48c'

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
highlight('WildMenu', Color13, Color5, nil)
highlight('Pmenu', Color13, Color5, nil)
highlight('PmenuSel', Color5, Color14, nil)
highlight('PmenuThumb', Color13, Color5, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color15, nil, nil)
highlight('Normal', Color13, Color5, nil)
highlight('Visual', Color16, nil, nil)
highlight('CursorLine', Color16, nil, nil)
highlight('ColorColumn', Color16, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color17, nil)
highlight('TabLine', Color12, Color17, nil)
highlight('TabLineSel', Color18, Color14, nil)
highlight('TabLineFill', Color12, Color17, nil)
highlight('TSPunctDelimiter', nil, Color5, nil)

link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TSKeyword', 'Keyword')
link('TSConstant', 'Constant')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('TSType', 'Type')
link('TSFunction', 'Function')
link('TSComment', 'Comment')
link('NonText', 'Comment')
link('TSFloat', 'Number')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
link('Whitespace', 'Comment')
link('TSParameter', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSRepeat', 'Repeat')
link('CursorLineNr', 'Identifier')
link('Macro', 'Function')
link('TSLabel', 'Type')
link('TSString', 'String')
link('TSTag', 'MyTag')
link('TSNumber', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Repeat', 'Conditional')
link('TSField', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSTagDelimiter', 'Type')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
