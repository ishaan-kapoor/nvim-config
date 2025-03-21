vim.cmd[[highlight clear]]
vim.g.colors_name = 'legacy'
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

local Color5 = '#ffb20d'
local Color10 = '#212933'
local Color14 = '#29333f'
local Color1 = '#ff410d'
local Color4 = '#748aa6'
local Color0 = '#425972'
local Color6 = '#664e4d'
local Color12 = '#495b71'
local Color8 = '#267fb5'
local Color7 = '#cf433e'
local Color3 = '#ffffff'
local Color2 = '#c7f026'
local Color11 = '#6b3126'
local Color9 = '#aec2e0'
local Color13 = '#788da8'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color3, Color8, nil)
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

link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNumber', 'Number')
link('NonText', 'Comment')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('Operator', 'Keyword')
link('TSType', 'Type')
link('TSFunction', 'Function')
link('TSKeyword', 'Keyword')
link('Conditional', 'Operator')
link('TSConstant', 'Constant')
link('TSComment', 'Comment')
link('TSNamespace', 'TSType')
link('TSParameterReference', 'TSParameter')
link('Macro', 'Function')
link('Folded', 'Comment')
link('TSOperator', 'Operator')
link('CursorLineNr', 'Identifier')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('Whitespace', 'Comment')
link('TSString', 'String')
link('TSTag', 'MyTag')
link('TSParameter', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSFuncMacro', 'Macro')
link('TSLabel', 'Type')
link('TSRepeat', 'Repeat')
link('TSProperty', 'TSField')
link('TSField', 'Constant')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
