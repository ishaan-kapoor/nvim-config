vim.cmd[[highlight clear]]
vim.g.colors_name = 'tickle-contrast'
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

local Color0 = '#606063'
local Color13 = '#7c7c81'
local Color3 = '#40a5a5'
local Color7 = '#cf433e'
local Color5 = '#ff8552'
local Color1 = '#86baba'
local Color9 = '#c1c1c1'
local Color4 = '#85ffc7'
local Color8 = '#35443d'
local Color14 = '#222223'
local Color6 = '#664e4d'
local Color10 = '#181819'
local Color11 = '#656565'
local Color12 = '#4a4a4d'
local Color2 = '#afd1d1'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
highlight('WildMenu', Color10, Color9, nil)
highlight('Pmenu', Color10, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color10, Color9, nil)
highlight('Normal', Color10, Color9, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color14, Color13, nil)
highlight('TabLineFill', Color14, Color13, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('TSNumber', 'Number')
link('TSNamespace', 'TSType')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSTagDelimiter', 'Type')
link('TSProperty', 'TSField')
link('TSConditional', 'Conditional')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('TSOperator', 'Operator')
link('NonText', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSLabel', 'Type')
link('TSTag', 'MyTag')
link('Conditional', 'Operator')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Folded', 'Comment')
link('TSKeyword', 'Keyword')
link('Whitespace', 'Comment')
link('Repeat', 'Conditional')
link('CursorLineNr', 'Identifier')
link('TSType', 'Type')
link('TSRepeat', 'Repeat')
link('TSString', 'String')
