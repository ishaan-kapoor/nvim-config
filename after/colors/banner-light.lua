vim.cmd[[highlight clear]]
vim.g.colors_name = 'banner-light'
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

local Color3 = '#7cd827'
local Color7 = '#ffffff'
local Color4 = '#373247'
local Color5 = '#664e4d'
local Color11 = '#f5f5f5'
local Color1 = '#9db515'
local Color2 = '#a25cdb'
local Color6 = '#cf433e'
local Color9 = '#cccccc'
local Color10 = '#9a92b3'
local Color8 = '#e4f7d3'
local Color0 = '#d2d0db'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color1, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Type', nil, Color2, nil)
highlight('Function', nil, Color4, nil)
highlight('Error', Color5, Color6, nil)
highlight('StatusLine', Color7, Color3, nil)
highlight('WildMenu', Color7, Color4, nil)
highlight('Pmenu', Color7, Color4, nil)
highlight('PmenuSel', Color4, nil, nil)
highlight('PmenuThumb', Color7, Color4, nil)
highlight('Normal', Color7, Color4, nil)
highlight('Visual', Color8, nil, nil)
highlight('CursorLine', Color8, nil, nil)
highlight('ColorColumn', Color8, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color9, nil)
highlight('TabLine', Color11, Color10, nil)
highlight('TabLineSel', Color4, nil, nil)
highlight('TabLineFill', Color11, Color10, nil)
highlight('TSPunctDelimiter', nil, Color4, nil)

link('TSNamespace', 'TSType')
link('TSType', 'Type')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSField', 'Constant')
link('TelescopeNormal', 'Normal')
link('TSComment', 'Comment')
link('TSRepeat', 'Repeat')
link('TSFloat', 'Number')
link('TSConditional', 'Conditional')
link('Operator', 'Keyword')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSNumber', 'Number')
link('TSString', 'String')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('Whitespace', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('Repeat', 'Conditional')
link('NonText', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSFunction', 'Function')
link('TSParameterReference', 'TSParameter')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSLabel', 'Type')
link('TSTag', 'MyTag')
link('TSFuncMacro', 'Macro')
