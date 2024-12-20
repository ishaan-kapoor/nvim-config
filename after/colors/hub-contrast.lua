vim.cmd[[highlight clear]]
vim.g.colors_name = 'hub-contrast'
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

local Color9 = '#45505b'
local Color11 = '#728394'
local Color3 = '#e85362'
local Color6 = '#ffffff'
local Color7 = '#191d21'
local Color5 = '#cf433e'
local Color2 = '#5392db'
local Color8 = '#133c69'
local Color1 = '#9fbde0'
local Color10 = '#22272d'
local Color0 = '#718493'
local Color4 = '#664e4d'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color2, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color3, nil)
highlight('WildMenu', Color7, Color6, nil)
highlight('Pmenu', Color7, Color6, nil)
highlight('PmenuSel', Color6, nil, nil)
highlight('PmenuThumb', Color7, Color6, nil)
highlight('Normal', Color7, Color6, nil)
highlight('Visual', Color8, nil, nil)
highlight('CursorLine', Color8, nil, nil)
highlight('ColorColumn', Color8, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color9, nil)
highlight('TabLine', Color10, Color11, nil)
highlight('TabLineFill', Color10, Color11, nil)
highlight('TSPunctDelimiter', nil, Color6, nil)

link('TSField', 'Constant')
link('TSNumber', 'Number')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTag', 'MyTag')
link('TSType', 'Type')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('TSNamespace', 'TSType')
link('Folded', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('Operator', 'Keyword')
link('TSOperator', 'Operator')
link('TSComment', 'Comment')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSFunction', 'Function')
link('TSString', 'String')
link('Conditional', 'Operator')
link('Macro', 'Function')
link('TSParameter', 'Constant')
link('Repeat', 'Conditional')
link('TSConstant', 'Constant')
link('Whitespace', 'Comment')
link('TSKeyword', 'Keyword')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('TSProperty', 'TSField')
