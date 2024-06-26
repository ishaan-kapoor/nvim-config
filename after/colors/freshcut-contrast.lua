vim.cmd[[highlight clear]]
vim.g.colors_name = 'freshcut-contrast'
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

local Color10 = '#000000'
local Color2 = '#8fbe00'
local Color0 = '#737b84'
local Color1 = '#e9ee00'
local Color7 = '#cf433e'
local Color3 = '#00a8c6'
local Color15 = '#666666'
local Color4 = '#c8d7e8'
local Color6 = '#664e4d'
local Color12 = '#002a32'
local Color8 = '#ffffff'
local Color11 = '#f8f8f2'
local Color14 = '#0a0a0a'
local Color5 = '#aee239'
local Color9 = '#4ecdc4'
local Color13 = '#333333'

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
highlight('TabLine', Color14, Color15, nil)
highlight('TabLineFill', Color14, Color15, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TSProperty', 'TSField')
link('Operator', 'Keyword')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('TSOperator', 'Operator')
link('TSType', 'Type')
link('TelescopeNormal', 'Normal')
link('TSParameterReference', 'TSParameter')
link('TSFuncMacro', 'Macro')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Folded', 'Comment')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('TSConditional', 'Conditional')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSFunction', 'Function')
link('TSConstant', 'Constant')
link('TSTagDelimiter', 'Type')
link('TSNamespace', 'TSType')
link('Conditional', 'Operator')
link('TSNumber', 'Number')
link('NonText', 'Comment')
link('TSParameter', 'Constant')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('TSString', 'String')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Macro', 'Function')
link('TSField', 'Constant')
