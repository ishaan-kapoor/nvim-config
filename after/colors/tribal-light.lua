vim.cmd[[highlight clear]]
vim.g.colors_name = 'tribal-light'
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

local Color1 = '#64aeb3'
local Color3 = '#a09caf'
local Color6 = '#c43535'
local Color8 = '#444444'
local Color10 = '#cccccc'
local Color4 = '#664e4d'
local Color0 = '#aaaaaa'
local Color9 = '#dae9ea'
local Color7 = '#ffffff'
local Color2 = '#5f5582'
local Color11 = '#f5f5f5'
local Color5 = '#cf433e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', Color4, Color5, nil)
highlight('StatusLine', Color7, Color6, nil)
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
highlight('TabLine', Color11, Color0, nil)
highlight('TabLineSel', Color8, nil, nil)
highlight('TabLineFill', Color11, Color0, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSFunction', 'Function')
link('TSTagDelimiter', 'Type')
link('TSString', 'String')
link('TSField', 'Constant')
link('TSLabel', 'Type')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
link('TSOperator', 'Operator')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNumber', 'Number')
link('Repeat', 'Conditional')
link('TSParameter', 'Constant')
link('TSConstant', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('CursorLineNr', 'Identifier')
link('Conditional', 'Operator')
link('TSProperty', 'TSField')
link('TSFloat', 'Number')
link('Folded', 'Comment')
link('TSNamespace', 'TSType')
link('TSRepeat', 'Repeat')
link('Operator', 'Keyword')
link('TelescopeNormal', 'Normal')
link('TSConditional', 'Conditional')
link('TSComment', 'Comment')
link('TSTag', 'MyTag')
link('NonText', 'Comment')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Whitespace', 'Comment')
