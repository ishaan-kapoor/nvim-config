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

local Color14 = '#2e363f'
local Color10 = '#afb7bf'
local Color13 = '#8192a3'
local Color5 = '#e6eaef'
local Color7 = '#cf433e'
local Color11 = '#655c38'
local Color1 = '#eae18f'
local Color3 = '#7a8289'
local Color2 = '#bab47c'
local Color8 = '#ffffff'
local Color9 = '#252c33'
local Color12 = '#505f6e'
local Color4 = '#e7be45'
local Color6 = '#664e4d'
local Color0 = '#49525b'

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
highlight('TabLine', Color14, Color13, nil)
highlight('TabLineFill', Color14, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)

link('TSConstant', 'Constant')
link('TSNumber', 'Number')
link('TSOperator', 'Operator')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('TSFunction', 'Function')
link('Macro', 'Function')
link('TSKeyword', 'Keyword')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSFuncMacro', 'Macro')
link('TSField', 'Constant')
link('TSLabel', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')
link('Operator', 'Keyword')
link('TSComment', 'Comment')
link('TSConditional', 'Conditional')
link('TSTagDelimiter', 'Type')
link('TSTag', 'MyTag')
link('TelescopeNormal', 'Normal')
link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSParameter', 'Constant')