vim.cmd[[highlight clear]]
vim.g.colors_name = 'peacock-contrast'
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

local Color3 = '#26a6a6'
local Color6 = '#ffffff'
local Color4 = '#664e4d'
local Color1 = '#bcd42a'
local Color0 = '#555555'
local Color10 = '#76766d'
local Color8 = '#5d271a'
local Color7 = '#0c0c0b'
local Color5 = '#cf433e'
local Color2 = '#ff5d38'
local Color9 = '#41413c'
local Color11 = '#171715'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color3, nil)
highlight('WildMenu', Color7, Color6, nil)
highlight('Pmenu', Color7, Color6, nil)
highlight('PmenuSel', Color6, nil, nil)
highlight('PmenuThumb', Color7, Color6, nil)
highlight('Normal', Color7, Color6, nil)
highlight('Visual', Color8, nil, nil)
highlight('CursorLine', Color8, nil, nil)
highlight('ColorColumn', Color8, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color9, nil)
highlight('TabLine', Color11, Color10, nil)
highlight('TabLineFill', Color11, Color10, nil)
highlight('TSPunctDelimiter', nil, Color6, nil)

link('TSPunctBracket', 'MyTag')
link('TSType', 'Type')
link('Folded', 'Comment')
link('TSRepeat', 'Repeat')
link('TSOperator', 'Operator')
link('CursorLineNr', 'Identifier')
link('Whitespace', 'Comment')
link('TSConditional', 'Conditional')
link('TSFloat', 'Number')
link('TSKeyword', 'Keyword')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('Conditional', 'Operator')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSFunction', 'Function')
link('Macro', 'Function')
link('TSConstant', 'Constant')
link('TSComment', 'Comment')
link('TSField', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNumber', 'Number')
link('TSProperty', 'TSField')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('TSTag', 'MyTag')
link('TSString', 'String')
link('Operator', 'Keyword')
link('TSParameter', 'Constant')
link('NonText', 'Comment')
