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

local Color7 = '#ffffff'
local Color11 = '#999999'
local Color12 = '#f5f5f5'
local Color5 = '#664e4d'
local Color4 = '#70807b'
local Color6 = '#cf433e'
local Color9 = '#dce1e1'
local Color0 = '#bbbbbb'
local Color1 = '#7ebcaa'
local Color8 = '#333333'
local Color3 = '#a2a797'
local Color2 = '#516b6b'
local Color10 = '#cccccc'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
highlight('WildMenu', Color7, Color8, nil)
highlight('Pmenu', Color7, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color7, Color8, nil)
highlight('Normal', Color7, Color8, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('CursorLineNr', 'Identifier')
link('TSOperator', 'Operator')
link('TSFuncMacro', 'Macro')
link('TSNumber', 'Number')
link('TSField', 'Constant')
link('TSConstant', 'Constant')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('Conditional', 'Operator')
link('TSComment', 'Comment')
link('TSString', 'String')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('NonText', 'Comment')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('TSConditional', 'Conditional')
link('TSParameter', 'Constant')
link('TSRepeat', 'Repeat')
link('TSTag', 'MyTag')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSFunction', 'Function')
link('Macro', 'Function')
link('TelescopeNormal', 'Normal')
link('Repeat', 'Conditional')
link('TSProperty', 'TSField')
link('TSFloat', 'Number')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('Folded', 'Comment')
link('TSType', 'Type')