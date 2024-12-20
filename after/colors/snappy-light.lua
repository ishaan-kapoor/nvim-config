vim.cmd[[highlight clear]]
vim.g.colors_name = 'snappy-light'
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

local Color0 = '#bbbbbb'
local Color10 = '#cccccc'
local Color8 = '#555555'
local Color11 = '#f5f5f5'
local Color5 = '#664e4d'
local Color4 = '#808dd3'
local Color7 = '#ffffff'
local Color1 = '#4ea1df'
local Color9 = '#e5e8f6'
local Color3 = '#da564a'
local Color2 = '#f66153'
local Color6 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color1, nil)
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
highlight('TabLine', Color11, Color0, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color11, Color0, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSTag', 'MyTag')
link('TSNumber', 'Number')
link('TSConditional', 'Conditional')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('TSLabel', 'Type')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('TSParameterReference', 'TSParameter')
link('TSNamespace', 'TSType')
link('TSRepeat', 'Repeat')
link('Whitespace', 'Comment')
link('TSConstant', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSOperator', 'Operator')
link('Conditional', 'Operator')
link('TSKeyword', 'Keyword')
link('Operator', 'Keyword')
link('Folded', 'Comment')
link('NonText', 'Comment')
link('TSTagDelimiter', 'Type')
link('CursorLineNr', 'Identifier')
link('TSField', 'Constant')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TSString', 'String')
link('TSType', 'Type')
link('TSFloat', 'Number')
link('TSParameter', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSComment', 'Comment')
