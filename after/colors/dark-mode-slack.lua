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

local Color5 = '#d4d4d4'
local Color8 = '#C586C0'
local Color6 = '#DCDCAA'
local Color4 = '#ce9178'
local Color0 = '#6A9955'
local Color11 = '#E6E6E6'
local Color1 = '#b5cea8'
local Color7 = '#4EC9B0'
local Color2 = '#f44747'
local Color10 = '#222222'
local Color3 = '#569cd6'
local Color9 = '#9CDCFE'

highlight('Comment', nil, Color0, nil)
highlight('Number', nil, Color1, nil)
highlight('Error', nil, Color2, nil)
highlight('Type', nil, Color3, nil)
highlight('String', nil, Color4, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Conditional', nil, Color3, nil)
highlight('Repeat', nil, Color3, nil)
highlight('Operator', nil, Color5, nil)
highlight('Function', nil, Color6, nil)
highlight('Type', nil, Color7, nil)
highlight('Conditional', nil, Color8, nil)
highlight('Repeat', nil, Color8, nil)
highlight('Identifier', nil, Color9, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('StatusLine', nil, Color10, nil)
highlight('WildMenu', Color10, Color11, nil)
highlight('Pmenu', Color10, Color11, nil)
highlight('PmenuSel', Color11, nil, nil)
highlight('PmenuThumb', Color10, Color11, nil)
highlight('Normal', Color10, Color11, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('TSPunctDelimiter', nil, Color11, nil)

link('TSPunctBracket', 'MyTag')
link('Operator', 'Keyword')
link('TSNumber', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('Macro', 'Function')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSConstant', 'Constant')
link('TSOperator', 'Operator')
link('TSTag', 'MyTag')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('Conditional', 'Operator')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('TSLabel', 'Type')
link('TSProperty', 'TSField')
link('NonText', 'Comment')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSType', 'Type')
link('TSFuncMacro', 'Macro')
link('TSNamespace', 'TSType')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('CursorLineNr', 'Identifier')
link('TelescopeNormal', 'Normal')
link('TSComment', 'Comment')