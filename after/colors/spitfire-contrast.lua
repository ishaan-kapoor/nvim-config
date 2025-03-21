vim.cmd[[highlight clear]]
vim.g.colors_name = 'spitfire-contrast'
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

local Color9 = '#091c19'
local Color6 = '#cf433e'
local Color12 = '#22695e'
local Color3 = '#30985b'
local Color10 = '#bad3d0'
local Color11 = '#582e21'
local Color7 = '#ffffff'
local Color1 = '#f78d30'
local Color8 = '#f75431'
local Color13 = '#3bb6a3'
local Color14 = '#0e2b27'
local Color0 = '#2d7a7f'
local Color2 = '#facc54'
local Color5 = '#664e4d'
local Color4 = '#8ec065'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color8, nil)
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

link('TelescopeNormal', 'Normal')
link('TSFunction', 'Function')
link('Whitespace', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Operator', 'Keyword')
link('TSFuncMacro', 'Macro')
link('TSNumber', 'Number')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSString', 'String')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSParameterReference', 'TSParameter')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('TSOperator', 'Operator')
link('TSField', 'Constant')
link('NonText', 'Comment')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('Folded', 'Comment')
link('TSTag', 'MyTag')
link('TSRepeat', 'Repeat')
link('TSNamespace', 'TSType')
link('CursorLineNr', 'Identifier')
link('TSProperty', 'TSField')
link('TSComment', 'Comment')
link('TSKeyword', 'Keyword')
