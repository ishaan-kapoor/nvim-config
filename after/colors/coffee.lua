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

local Color1 = '#a58163'
local Color4 = '#80b2b0'
local Color9 = '#ffffff'
local Color6 = '#664e4d'
local Color15 = '#967f83'
local Color11 = '#282122'
local Color5 = '#e77757'
local Color3 = '#f5f3eb'
local Color0 = '#5e4e50'
local Color8 = '#0a9f9b'
local Color2 = '#cc8f5d'
local Color13 = '#604f52'
local Color7 = '#cf433e'
local Color10 = '#c4babb'
local Color12 = '#1d4b4a'
local Color14 = '#332a2b'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color9, Color8, nil)
highlight('WildMenu', Color11, Color10, nil)
highlight('Pmenu', Color11, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color11, Color10, nil)
highlight('Normal', Color11, Color10, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color11, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSComment', 'Comment')
link('TSProperty', 'TSField')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSNamespace', 'TSType')
link('TSFunction', 'Function')
link('TSConditional', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSConstant', 'Constant')
link('TSTag', 'MyTag')
link('TSString', 'String')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('Operator', 'Keyword')
link('CursorLineNr', 'Identifier')
link('TSFloat', 'Number')
link('Conditional', 'Operator')
link('TSType', 'Type')
link('TSNumber', 'Number')
link('Macro', 'Function')
link('TSOperator', 'Operator')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('Repeat', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')