vim.cmd[[highlight clear]]
vim.g.colors_name = 'tickle'
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

local Color5 = '#ff8552'
local Color11 = '#7b7b7b'
local Color10 = '#c1c1c1'
local Color6 = '#664e4d'
local Color3 = '#40a5a5'
local Color1 = '#86baba'
local Color9 = '#39393a'
local Color8 = '#35443d'
local Color7 = '#cf433e'
local Color0 = '#606063'
local Color4 = '#85ffc7'
local Color14 = '#9f9fa0'
local Color2 = '#afd1d1'
local Color12 = '#6c6c6d'
local Color13 = '#434344'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
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
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSParameterReference', 'TSParameter')
link('TSType', 'Type')
link('TSNumber', 'Number')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('CursorLineNr', 'Identifier')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TSKeyword', 'Keyword')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSProperty', 'TSField')
link('TSFloat', 'Number')
link('TSNamespace', 'TSType')
link('TSString', 'String')
link('TSParameter', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSComment', 'Comment')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSRepeat', 'Repeat')
link('TSFunction', 'Function')
link('TSTagDelimiter', 'Type')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSTag', 'MyTag')
