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

local Color6 = '#664e4d'
local Color5 = '#52b4d8'
local Color14 = '#7a7a73'
local Color13 = '#464641'
local Color1 = '#a2d66b'
local Color9 = '#edbd44'
local Color4 = '#e2922f'
local Color8 = '#ffffff'
local Color3 = '#f75431'
local Color11 = '#e8e1de'
local Color10 = '#111110'
local Color7 = '#cf433e'
local Color0 = '#706864'
local Color12 = '#5d271b'
local Color15 = '#1c1c1a'
local Color2 = '#88c448'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color9, nil)
highlight('WildMenu', Color10, Color11, nil)
highlight('Pmenu', Color10, Color11, nil)
highlight('PmenuSel', Color11, nil, nil)
highlight('PmenuThumb', Color10, Color11, nil)
highlight('Normal', Color10, Color11, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color15, Color14, nil)
highlight('TabLineFill', Color15, Color14, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('Folded', 'Comment')
link('TSString', 'String')
link('TSFunction', 'Function')
link('TSType', 'Type')
link('TSNumber', 'Number')
link('TSParameter', 'Constant')
link('TSFloat', 'Number')
link('Repeat', 'Conditional')
link('TelescopeNormal', 'Normal')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('TSOperator', 'Operator')
link('TSRepeat', 'Repeat')
link('NonText', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSKeyword', 'Keyword')
link('TSLabel', 'Type')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSNamespace', 'TSType')
link('TSConditional', 'Conditional')
link('CursorLineNr', 'Identifier')
link('TSProperty', 'TSField')
link('TSParameterReference', 'TSParameter')
link('Whitespace', 'Comment')
link('TSComment', 'Comment')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSField', 'Constant')