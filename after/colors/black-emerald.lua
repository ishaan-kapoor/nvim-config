vim.cmd[[highlight clear]]
vim.g.colors_name = 'black-emerald'
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

local Color1 = '#4e535a'
local Color7 = '#00a884'
local Color15 = '#0e2625'
local Color17 = '#1a4041'
local Color18 = '#33373d'
local Color5 = '#54575b'
local Color11 = '#0c0f11'
local Color4 = '#c7910c'
local Color14 = '#111418'
local Color16 = '#2f1d1c'
local Color10 = '#d4770c'
local Color9 = '#c62f52'
local Color6 = '#38c7bd'
local Color13 = '#c3c6cb'
local Color0 = '#3585bb'
local Color2 = '#E35535'
local Color3 = '#11B7D4'
local Color8 = '#a85ff1'
local Color12 = '#7f8489'

highlight('Type', nil, Color0, nil)
highlight('Comment', nil, Color1, 'italic')
highlight('Constant', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Repeat', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color6, nil)
highlight('String', nil, Color7, nil)
highlight('Type', nil, Color8, nil)
highlight('Identifier', nil, Color9, nil)
highlight('Number', nil, Color10, nil)
highlight('StatusLine', Color12, Color11, nil)
highlight('WildMenu', Color14, Color13, nil)
highlight('Pmenu', Color14, Color13, nil)
highlight('PmenuSel', Color13, Color14, nil)
highlight('PmenuThumb', Color14, Color13, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color14, Color13, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color14, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color11, Color1, nil)
highlight('TabLineSel', Color6, Color14, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color13, nil)

link('Whitespace', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSNumber', 'Number')
link('TSString', 'String')
link('Macro', 'Function')
link('TSTag', 'MyTag')
link('TSComment', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSField', 'Constant')
link('TSKeyword', 'Keyword')
link('TSLabel', 'Type')
link('Conditional', 'Operator')
link('TelescopeNormal', 'Normal')
link('TSPunctBracket', 'MyTag')
link('TSNamespace', 'TSType')
link('TSFunction', 'Function')
link('TSParameterReference', 'TSParameter')
link('TSTagDelimiter', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSType', 'Type')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('NonText', 'Comment')
link('TSFloat', 'Number')
link('TSConstant', 'Constant')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('Folded', 'Comment')