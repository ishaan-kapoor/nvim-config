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

local Color0 = '#728496'
local Color11 = '#1f2e41'
local Color9 = '#15181c'
local Color8 = '#a8c0e0'
local Color1 = '#e3bd14'
local Color14 = '#1e2228'
local Color3 = '#507db7'
local Color13 = '#6c7c91'
local Color4 = '#b3becc'
local Color5 = '#664e4d'
local Color6 = '#cf433e'
local Color12 = '#414a56'
local Color2 = '#de4d3a'
local Color7 = '#ffffff'
local Color10 = '#dce2e8'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color1, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color9, Color10, nil)
highlight('Pmenu', Color9, Color10, nil)
highlight('PmenuSel', Color10, nil, nil)
highlight('PmenuThumb', Color9, Color10, nil)
highlight('Normal', Color9, Color10, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color14, Color13, nil)
highlight('TabLineFill', Color14, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('Whitespace', 'Comment')
link('TSField', 'Constant')
link('TSFuncMacro', 'Macro')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSFunction', 'Function')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TelescopeNormal', 'Normal')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSFloat', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('TSKeyword', 'Keyword')
link('TSParameter', 'Constant')
link('TSString', 'String')
link('TSNumber', 'Number')
link('TSRepeat', 'Repeat')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSOperator', 'Operator')
link('Macro', 'Function')
link('TSProperty', 'TSField')
link('TSType', 'Type')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')