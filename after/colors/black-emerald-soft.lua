vim.cmd[[highlight clear]]
vim.g.colors_name = 'black-emerald-soft'
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

local Color3 = '#11B7D4'
local Color7 = '#00a884'
local Color13 = '#162226'
local Color11 = '#121c1f'
local Color0 = '#3585bb'
local Color10 = '#d4770c'
local Color12 = '#839399'
local Color4 = '#c7910c'
local Color2 = '#E35535'
local Color14 = '#c9d4d8'
local Color17 = '#1e4b4b'
local Color18 = '#35484e'
local Color6 = '#38c7bd'
local Color16 = '#332928'
local Color5 = '#596569'
local Color8 = '#a85ff1'
local Color15 = '#133231'
local Color1 = '#4e666d'
local Color9 = '#c62f52'

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
highlight('WildMenu', Color13, Color14, nil)
highlight('Pmenu', Color13, Color14, nil)
highlight('PmenuSel', Color14, Color13, nil)
highlight('PmenuThumb', Color13, Color14, nil)
highlight('DiffAdd', Color15, nil, nil)
highlight('DiffDelete', Color16, nil, nil)
highlight('Normal', Color13, Color14, nil)
highlight('Visual', Color17, nil, nil)
highlight('CursorLine', Color17, nil, nil)
highlight('ColorColumn', Color17, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color18, nil)
highlight('TabLine', Color11, Color1, nil)
highlight('TabLineSel', Color6, Color13, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color14, nil)

link('TSLabel', 'Type')
link('NonText', 'Comment')
link('TSNumber', 'Number')
link('TSParameterReference', 'TSParameter')
link('TSConditional', 'Conditional')
link('Macro', 'Function')
link('Folded', 'Comment')
link('TSString', 'String')
link('TSComment', 'Comment')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('Conditional', 'Operator')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSKeyword', 'Keyword')
link('CursorLineNr', 'Identifier')
link('TSFunction', 'Function')
link('Repeat', 'Conditional')
link('TSConstant', 'Constant')
link('TSTag', 'MyTag')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSOperator', 'Operator')
link('Whitespace', 'Comment')
link('TSFloat', 'Number')
link('TSRepeat', 'Repeat')
link('TelescopeNormal', 'Normal')
link('TSTagDelimiter', 'Type')
link('TSField', 'Constant')
link('TSFuncMacro', 'Macro')
link('TSType', 'Type')
link('TSParameter', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')