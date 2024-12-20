vim.cmd[[highlight clear]]
vim.g.colors_name = 'fodder'
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

local Color0 = '#5f8c75'
local Color1 = '#f7a21b'
local Color4 = '#664e4d'
local Color8 = '#cce0d6'
local Color13 = '#354d41'
local Color9 = '#2d4137'
local Color12 = '#8baf9d'
local Color5 = '#cf433e'
local Color3 = '#fcfcfa'
local Color2 = '#98d046'
local Color7 = '#ffffff'
local Color10 = '#727f78'
local Color6 = '#ad9895'
local Color11 = '#577d6a'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color7, Color6, nil)
highlight('WildMenu', Color9, Color8, nil)
highlight('Pmenu', Color9, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color9, Color8, nil)
highlight('Normal', Color9, Color8, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSFuncMacro', 'Macro')
link('Operator', 'Keyword')
link('TSComment', 'Comment')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSOperator', 'Operator')
link('TSProperty', 'TSField')
link('Folded', 'Comment')
link('Conditional', 'Operator')
link('TSField', 'Constant')
link('Macro', 'Function')
link('TSKeyword', 'Keyword')
link('TSTag', 'MyTag')
link('NonText', 'Comment')
link('TSConstant', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('TSPunctBracket', 'MyTag')
link('Whitespace', 'Comment')
link('TSLabel', 'Type')
link('TSString', 'String')
link('TSNumber', 'Number')
link('TelescopeNormal', 'Normal')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TSTagDelimiter', 'Type')
link('TSConditional', 'Conditional')
link('TSRepeat', 'Repeat')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSType', 'Type')
link('TSParameter', 'Constant')
