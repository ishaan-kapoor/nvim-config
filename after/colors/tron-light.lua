vim.cmd[[highlight clear]]
vim.g.colors_name = 'tron-light'
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

local Color6 = '#cf433e'
local Color7 = '#267fb5'
local Color8 = '#222222'
local Color13 = '#888888'
local Color11 = '#91b7cd'
local Color0 = '#324357'
local Color1 = '#6ee2ff'
local Color9 = '#d7e5ed'
local Color4 = '#ffffff'
local Color3 = '#748aa6'
local Color5 = '#664e4d'
local Color12 = '#c9dce7'
local Color2 = '#89bddd'
local Color10 = '#b3d0e1'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color4, Color7, nil)
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
highlight('TabLine', Color12, Color13, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color12, Color13, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSPunctBracket', 'MyTag')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('TSFloat', 'Number')
link('TSOperator', 'Operator')
link('TSRepeat', 'Repeat')
link('Whitespace', 'Comment')
link('TSField', 'Constant')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConstant', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('NonText', 'Comment')
link('Conditional', 'Operator')
link('TSParameter', 'Constant')
link('TSTagDelimiter', 'Type')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSComment', 'Comment')
link('TSTag', 'MyTag')
link('Repeat', 'Conditional')
link('TSProperty', 'TSField')
link('Operator', 'Keyword')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
link('TSString', 'String')
link('TSNumber', 'Number')
link('TSNamespace', 'TSType')
