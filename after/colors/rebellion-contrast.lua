vim.cmd[[highlight clear]]
vim.g.colors_name = 'rebellion-contrast'
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

local Color5 = '#8e7547'
local Color0 = '#51513d'
local Color14 = '#181812'
local Color2 = '#fd9825'
local Color9 = '#0c0c09'
local Color11 = '#5c2705'
local Color4 = '#fe5f00'
local Color1 = '#fdb825'
local Color7 = '#cf433e'
local Color8 = '#ffffff'
local Color10 = '#d6c7ab'
local Color12 = '#464635'
local Color13 = '#818160'
local Color3 = '#988f2a'
local Color6 = '#664e4d'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', Color8, Color4, nil)
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

link('TSTag', 'MyTag')
link('Operator', 'Keyword')
link('Macro', 'Function')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSParameter', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('Folded', 'Comment')
link('TSConditional', 'Conditional')
link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSLabel', 'Type')
link('TSKeyword', 'Keyword')
link('TSFuncMacro', 'Macro')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('NonText', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSOperator', 'Operator')
link('TSPunctBracket', 'MyTag')
link('Whitespace', 'Comment')
link('TSNumber', 'Number')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('TSProperty', 'TSField')
link('TSType', 'Type')
link('TSString', 'String')
link('TSNamespace', 'TSType')
link('TSFunction', 'Function')
link('Repeat', 'Conditional')
