vim.cmd[[highlight clear]]
vim.g.colors_name = 'monokai-metallian'
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

local Color3 = '#78dce8'
local Color13 = '#d4d5da'
local Color11 = '#191c24'
local Color14 = '#1e212b'
local Color9 = '#ff6188'
local Color18 = '#41444f'
local Color4 = '#ffd866'
local Color6 = '#78e8c6'
local Color0 = '#b7d175'
local Color19 = '#98a2b5'
local Color5 = '#62646c'
local Color7 = '#a9dc76'
local Color8 = '#ab9df2'
local Color12 = '#8e919a'
local Color1 = '#5c606c'
local Color17 = '#3c414d'
local Color16 = '#3e2b33'
local Color10 = '#fc9867'
local Color15 = '#2f3834'
local Color2 = '#fc6a67'

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

link('TSFloat', 'Number')
link('TSField', 'Constant')
link('TelescopeNormal', 'Normal')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSConstant', 'Constant')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('CursorLineNr', 'Identifier')
link('TSTag', 'MyTag')
link('TSProperty', 'TSField')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('TSConditional', 'Conditional')
link('Operator', 'Keyword')
link('TSNumber', 'Number')
link('TSPunctBracket', 'MyTag')
link('TSFuncMacro', 'Macro')
link('Macro', 'Function')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TSParameterReference', 'TSParameter')
link('TSLabel', 'Type')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSComment', 'Comment')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('Conditional', 'Operator')
link('NonText', 'Comment')
