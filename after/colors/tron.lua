vim.cmd[[highlight clear]]
vim.g.colors_name = 'tron'
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

local Color0 = '#324357'
local Color3 = '#748aa6'
local Color6 = '#267fb5'
local Color9 = '#364455'
local Color1 = '#6ee2ff'
local Color2 = '#ffffff'
local Color4 = '#664e4d'
local Color8 = '#aec2e0'
local Color12 = '#647d9b'
local Color10 = '#3c4b5d'
local Color11 = '#1c232b'
local Color7 = '#14191f'
local Color5 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color2, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color2, Color6, nil)
highlight('WildMenu', Color7, Color8, nil)
highlight('Pmenu', Color7, Color8, nil)
highlight('PmenuSel', Color8, nil, nil)
highlight('PmenuThumb', Color7, Color8, nil)
highlight('Normal', Color7, Color8, nil)
highlight('Visual', Color9, nil, nil)
highlight('CursorLine', Color9, nil, nil)
highlight('ColorColumn', Color9, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color10, nil)
highlight('TabLine', Color11, Color12, nil)
highlight('TabLineFill', Color11, Color12, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNumber', 'Number')
link('TSComment', 'Comment')
link('TSFunction', 'Function')
link('TSProperty', 'TSField')
link('TSTagDelimiter', 'Type')
link('Macro', 'Function')
link('TSFloat', 'Number')
link('TelescopeNormal', 'Normal')
link('TSString', 'String')
link('TSPunctBracket', 'MyTag')
link('Operator', 'Keyword')
link('Whitespace', 'Comment')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('TSNamespace', 'TSType')
link('TSConditional', 'Conditional')
link('TSOperator', 'Operator')
link('CursorLineNr', 'Identifier')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSKeyword', 'Keyword')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
