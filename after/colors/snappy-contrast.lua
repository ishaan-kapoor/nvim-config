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

local Color1 = '#4ea1df'
local Color2 = '#f66153'
local Color6 = '#ffffff'
local Color12 = '#161616'
local Color7 = '#0c0c0c'
local Color11 = '#727272'
local Color8 = '#e3e2e0'
local Color10 = '#3f3f3f'
local Color9 = '#5a2823'
local Color4 = '#664e4d'
local Color5 = '#cf433e'
local Color3 = '#808dd3'
local Color0 = '#696969'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color1, nil)
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
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('TSRepeat', 'Repeat')
link('TSFuncMacro', 'Macro')
link('TSFloat', 'Number')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Folded', 'Comment')
link('TSConstant', 'Constant')
link('NonText', 'Comment')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('TSNumber', 'Number')
link('TSString', 'String')
link('TSProperty', 'TSField')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSConditional', 'Conditional')
link('TelescopeNormal', 'Normal')
link('TSFunction', 'Function')
link('Whitespace', 'Comment')
link('TSOperator', 'Operator')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSType', 'Type')
link('Repeat', 'Conditional')