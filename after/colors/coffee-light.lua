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

local Color9 = '#ffffff'
local Color2 = '#cc8f5d'
local Color3 = '#282122'
local Color4 = '#80b2b0'
local Color7 = '#cf433e'
local Color11 = '#c5e1e0'
local Color12 = '#c5bbbb'
local Color5 = '#e77757'
local Color13 = '#ebe7e7'
local Color14 = '#967f83'
local Color0 = '#a59d9e'
local Color1 = '#a58163'
local Color6 = '#664e4d'
local Color8 = '#0a9f9b'
local Color10 = '#f4f2f2'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color9, Color8, nil)
highlight('WildMenu', Color10, Color3, nil)
highlight('Pmenu', Color10, Color3, nil)
highlight('PmenuSel', Color3, nil, nil)
highlight('PmenuThumb', Color10, Color3, nil)
highlight('Normal', Color10, Color3, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineSel', Color3, nil, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color3, nil)

link('TSFuncMacro', 'Macro')
link('TSNamespace', 'TSType')
link('Conditional', 'Operator')
link('TSFloat', 'Number')
link('NonText', 'Comment')
link('TSConditional', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('Macro', 'Function')
link('TelescopeNormal', 'Normal')
link('Repeat', 'Conditional')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSType', 'Type')
link('TSFunction', 'Function')
link('TSNumber', 'Number')
link('TSTag', 'MyTag')
link('Whitespace', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSKeyword', 'Keyword')
link('TSConstant', 'Constant')
link('TSLabel', 'Type')
link('TSProperty', 'TSField')
link('TSRepeat', 'Repeat')
link('Operator', 'Keyword')
link('TSParameter', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSField', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSString', 'String')
link('TSPunctSpecial', 'TSPunctDelimiter')