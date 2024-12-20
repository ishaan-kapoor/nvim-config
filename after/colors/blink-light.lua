vim.cmd[[highlight clear]]
vim.g.colors_name = 'blink-light'
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

local Color1 = '#84c4ce'
local Color12 = '#dbe1e4'
local Color3 = '#d4856a'
local Color2 = '#529ca8'
local Color9 = '#6a7e89'
local Color6 = '#cf433e'
local Color0 = '#a6b4bc'
local Color7 = '#ffffff'
local Color10 = '#d9f0ef'
local Color5 = '#664e4d'
local Color8 = '#5298c4'
local Color11 = '#cccccc'
local Color13 = '#f5f5f5'
local Color4 = '#43b5b3'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
highlight('WildMenu', Color7, Color9, nil)
highlight('Pmenu', Color7, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color7, Color9, nil)
highlight('Normal', Color7, Color9, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineSel', Color9, nil, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('Macro', 'Function')
link('TSString', 'String')
link('TSType', 'Type')
link('TSKeyword', 'Keyword')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSFloat', 'Number')
link('CursorLineNr', 'Identifier')
link('Repeat', 'Conditional')
link('Operator', 'Keyword')
link('NonText', 'Comment')
link('TSLabel', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSComment', 'Comment')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('TSNumber', 'Number')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('Whitespace', 'Comment')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('TSFunction', 'Function')
link('Conditional', 'Operator')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSTag', 'MyTag')
