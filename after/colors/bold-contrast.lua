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

local Color0 = '#534b4b'
local Color8 = '#0f0d0d'
local Color12 = '#7c6c6c'
local Color4 = '#664e4d'
local Color2 = '#f0624b'
local Color5 = '#cf433e'
local Color6 = '#ffffff'
local Color1 = '#f7a21b'
local Color3 = '#b4b7ad'
local Color10 = '#463c3c'
local Color7 = '#3d8e91'
local Color11 = '#1a1616'
local Color9 = '#1e3839'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
highlight('WildMenu', Color8, Color6, nil)
highlight('Pmenu', Color8, Color6, nil)
highlight('PmenuSel', Color6, nil, nil)
highlight('PmenuThumb', Color8, Color6, nil)
highlight('Normal', Color8, Color6, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color6, nil)

link('TSString', 'String')
link('TSParameter', 'Constant')
link('CursorLineNr', 'Identifier')
link('Folded', 'Comment')
link('TSFunction', 'Function')
link('TSTag', 'MyTag')
link('TSPunctBracket', 'MyTag')
link('TSFloat', 'Number')
link('TSNamespace', 'TSType')
link('TSProperty', 'TSField')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TelescopeNormal', 'Normal')
link('Operator', 'Keyword')
link('TSLabel', 'Type')
link('TSConstant', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Macro', 'Function')
link('TSOperator', 'Operator')
link('TSNumber', 'Number')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('Conditional', 'Operator')
link('TSField', 'Constant')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSTagDelimiter', 'Type')