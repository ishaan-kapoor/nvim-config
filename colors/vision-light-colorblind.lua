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

local Color12 = '#666666'
local Color1 = '#0b6aa5'
local Color6 = '#ffffff'
local Color7 = '#81209e'
local Color11 = '#f5f5f5'
local Color0 = '#555555'
local Color4 = '#664e4d'
local Color2 = '#1ba2f7'
local Color8 = '#000000'
local Color3 = '#f87856'
local Color9 = '#fde4dd'
local Color10 = '#cccccc'
local Color5 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
highlight('WildMenu', Color6, Color8, nil)
highlight('Pmenu', Color6, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color6, Color8, nil)
highlight('Normal', Color6, Color8, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color6, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSType', 'Type')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSString', 'String')
link('TSConstant', 'Constant')
link('NonText', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSFloat', 'Number')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('Repeat', 'Conditional')
link('Whitespace', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSComment', 'Comment')
link('Macro', 'Function')
link('TSField', 'Constant')
link('CursorLineNr', 'Identifier')
link('TelescopeNormal', 'Normal')
link('TSNumber', 'Number')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSFunction', 'Function')
link('TSConditional', 'Conditional')
link('TSPunctBracket', 'MyTag')
link('Operator', 'Keyword')
link('Folded', 'Comment')
link('TSNamespace', 'TSType')
link('TSFuncMacro', 'Macro')
link('TSLabel', 'Type')