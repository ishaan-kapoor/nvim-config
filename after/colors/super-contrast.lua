vim.cmd[[highlight clear]]
vim.g.colors_name = 'super-contrast'
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

local Color4 = '#e45635'
local Color1 = '#f7a21b'
local Color0 = '#465360'
local Color9 = '#5a2d25'
local Color10 = '#404c58'
local Color5 = '#664e4d'
local Color2 = '#d60257'
local Color11 = '#6b7f93'
local Color12 = '#1e2329'
local Color8 = '#15191d'
local Color3 = '#5d67ad'
local Color7 = '#ffffff'
local Color6 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
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

link('Operator', 'Keyword')
link('TSProperty', 'TSField')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSLabel', 'Type')
link('TSConditional', 'Conditional')
link('Conditional', 'Operator')
link('TSTag', 'MyTag')
link('TSFunction', 'Function')
link('TSPunctBracket', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNumber', 'Number')
link('TSType', 'Type')
link('Whitespace', 'Comment')
link('TSComment', 'Comment')
link('TSConstant', 'Constant')
link('TSFuncMacro', 'Macro')
link('Folded', 'Comment')
link('TSOperator', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSField', 'Constant')
link('NonText', 'Comment')
link('TelescopeNormal', 'Normal')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('Macro', 'Function')
link('TSNamespace', 'TSType')
link('CursorLineNr', 'Identifier')
