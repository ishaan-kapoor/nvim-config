vim.cmd[[highlight clear]]
vim.g.colors_name = 'peacocks-in-space-contrast'
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

local Color10 = '#3d4354'
local Color11 = '#677390'
local Color12 = '#1b1d25'
local Color9 = '#184448'
local Color8 = '#121419'
local Color0 = '#6e7a94'
local Color2 = '#ff5d38'
local Color5 = '#cf433e'
local Color1 = '#bcd42a'
local Color3 = '#26a6a6'
local Color4 = '#664e4d'
local Color6 = '#ffffff'
local Color7 = '#dee3ec'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color3, nil)
highlight('WildMenu', Color8, Color7, nil)
highlight('Pmenu', Color8, Color7, nil)
highlight('PmenuSel', Color7, nil, nil)
highlight('PmenuThumb', Color8, Color7, nil)
highlight('Normal', Color8, Color7, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color12, Color11, nil)
highlight('TabLineFill', Color12, Color11, nil)
highlight('TSPunctDelimiter', nil, Color7, nil)

link('TSOperator', 'Operator')
link('TSType', 'Type')
link('NonText', 'Comment')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSComment', 'Comment')
link('TSString', 'String')
link('TSConditional', 'Conditional')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('Folded', 'Comment')
link('Whitespace', 'Comment')
link('TSParameterReference', 'TSParameter')
link('Conditional', 'Operator')
link('Repeat', 'Conditional')
link('TSRepeat', 'Repeat')
link('TSTag', 'MyTag')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSTagDelimiter', 'Type')
link('TSConstant', 'Constant')
link('TSKeyword', 'Keyword')
link('TSProperty', 'TSField')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNumber', 'Number')
link('TSLabel', 'Type')
link('TSFuncMacro', 'Macro')
