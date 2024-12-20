vim.cmd[[highlight clear]]
vim.g.colors_name = 'stealth-light'
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

local Color0 = '#dddddd'
local Color4 = '#664e4d'
local Color6 = '#ffffff'
local Color8 = '#cccccc'
local Color5 = '#cf433e'
local Color7 = '#bbbbbb'
local Color3 = '#aaaaaa'
local Color2 = '#eeeeee'
local Color9 = '#f5f5f5'
local Color1 = '#888888'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color0, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color0, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
highlight('WildMenu', Color6, Color8, nil)
highlight('Pmenu', Color6, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color6, Color8, nil)
highlight('Normal', Color6, Color8, nil)
highlight('Visual', Color6, nil, nil)
highlight('CursorLine', Color6, nil, nil)
highlight('ColorColumn', Color6, nil, nil)
highlight('SignColumn', Color6, nil, nil)
highlight('LineNr', nil, Color8, nil)
highlight('TabLine', Color9, Color6, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color9, Color6, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSString', 'String')
link('TSRepeat', 'Repeat')
link('TSType', 'Type')
link('Whitespace', 'Comment')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Operator', 'Keyword')
link('TSLabel', 'Type')
link('Folded', 'Comment')
link('Macro', 'Function')
link('TSFunction', 'Function')
link('TSParameterReference', 'TSParameter')
link('TSTagDelimiter', 'Type')
link('TSParameter', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSKeyword', 'Keyword')
link('TSComment', 'Comment')
link('TSOperator', 'Operator')
link('TSFloat', 'Number')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TelescopeNormal', 'Normal')
link('TSConstant', 'Constant')
link('TSField', 'Constant')
link('TSProperty', 'TSField')
link('TSConditional', 'Conditional')
link('Conditional', 'Operator')
link('TSNumber', 'Number')
link('TSTag', 'MyTag')
