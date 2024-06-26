vim.cmd[[highlight clear]]
vim.g.colors_name = 'shrek-light'
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

local Color3 = '#bfb59b'
local Color0 = '#aaaaaa'
local Color4 = '#afb2a7'
local Color10 = '#e6e4de'
local Color6 = '#cf433e'
local Color7 = '#ffffff'
local Color11 = '#cccccc'
local Color12 = '#888888'
local Color1 = '#81e911'
local Color8 = '#b2de62'
local Color13 = '#f5f5f5'
local Color2 = '#857a5e'
local Color5 = '#664e4d'
local Color9 = '#222222'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color7, Color9, nil)
highlight('Pmenu', Color7, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color7, Color9, nil)
highlight('Normal', Color7, Color9, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSFuncMacro', 'Macro')
link('TSComment', 'Comment')
link('TSFunction', 'Function')
link('TSField', 'Constant')
link('TSFloat', 'Number')
link('TelescopeNormal', 'Normal')
link('TSParameter', 'Constant')
link('TSLabel', 'Type')
link('TSKeyword', 'Keyword')
link('TSNumber', 'Number')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSNamespace', 'TSType')
link('Whitespace', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSType', 'Type')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSOperator', 'Operator')
link('TSTag', 'MyTag')
link('Macro', 'Function')
link('Operator', 'Keyword')
link('TSRepeat', 'Repeat')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSProperty', 'TSField')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSString', 'String')
link('Folded', 'Comment')
link('Repeat', 'Conditional')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
