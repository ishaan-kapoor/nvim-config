vim.cmd[[highlight clear]]
vim.g.colors_name = 'iceberg'
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

local Color7 = '#323b3d'
local Color10 = '#607175'
local Color11 = '#3b4648'
local Color0 = '#537178'
local Color12 = '#94a4a7'
local Color8 = '#bdd6db'
local Color4 = '#664e4d'
local Color5 = '#cf433e'
local Color6 = '#59c0e3'
local Color9 = '#30565e'
local Color1 = '#ffffff'
local Color2 = '#2d8da1'
local Color3 = '#b1e2f2'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color1, Color6, nil)
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
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSPunctBracket', 'MyTag')
link('TSComment', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('TSKeyword', 'Keyword')
link('NonText', 'Comment')
link('Whitespace', 'Comment')
link('TSProperty', 'TSField')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Operator', 'Keyword')
link('TSNumber', 'Number')
link('TSParameter', 'Constant')
link('TSFloat', 'Number')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSTagDelimiter', 'Type')
link('TelescopeNormal', 'Normal')
link('CursorLineNr', 'Identifier')
link('TSNamespace', 'TSType')
link('TSType', 'Type')
link('TSField', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSLabel', 'Type')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSString', 'String')
link('Conditional', 'Operator')
link('TSTag', 'MyTag')
