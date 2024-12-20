vim.cmd[[highlight clear]]
vim.g.colors_name = 'boxuk-contrast'
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

local Color4 = '#664e4d'
local Color6 = '#ffffff'
local Color2 = '#019d76'
local Color1 = '#15b8ae'
local Color7 = '#111519'
local Color9 = '#3a4856'
local Color10 = '#191f25'
local Color11 = '#647b92'
local Color0 = '#60778c'
local Color3 = '#017c9d'
local Color5 = '#cf433e'
local Color8 = '#0b3745'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color1, nil)
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

link('TSProperty', 'TSField')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TelescopeNormal', 'Normal')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTagDelimiter', 'Type')
link('CursorLineNr', 'Identifier')
link('TSConditional', 'Conditional')
link('TSOperator', 'Operator')
link('TSFunction', 'Function')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSPunctBracket', 'MyTag')
link('TSType', 'Type')
link('NonText', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSField', 'Constant')
link('TSTag', 'MyTag')
link('Macro', 'Function')
link('TSNamespace', 'TSType')
link('Whitespace', 'Comment')
link('TSLabel', 'Type')
link('Operator', 'Keyword')
link('TSComment', 'Comment')
link('TSNumber', 'Number')
link('TSParameter', 'Constant')
link('TSString', 'String')
link('TSKeyword', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
