vim.cmd[[highlight clear]]
vim.g.colors_name = 'monokai-black'
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

local Color2 = '#fc6a67'
local Color5 = '#575757'
local Color6 = '#78e8c6'
local Color9 = '#ff6188'
local Color0 = '#b7d175'
local Color11 = '#0e0e0e'
local Color7 = '#a9dc76'
local Color8 = '#ab9df2'
local Color14 = '#141414'
local Color19 = '#8f8f8f'
local Color1 = '#545454'
local Color15 = '#262d20'
local Color10 = '#fc9867'
local Color16 = '#352020'
local Color18 = '#383838'
local Color12 = '#848484'
local Color4 = '#ffd866'
local Color3 = '#78dce8'
local Color17 = '#323232'
local Color13 = '#c7c7c7'

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
highlight('TabLineSel', Color19, Color14, nil)
highlight('TabLineFill', Color11, Color1, nil)
highlight('TSPunctDelimiter', nil, Color13, nil)

link('TSParameterReference', 'TSParameter')
link('TSFunction', 'Function')
link('TSRepeat', 'Repeat')
link('Repeat', 'Conditional')
link('TSComment', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSLabel', 'Type')
link('TSPunctBracket', 'MyTag')
link('TSNumber', 'Number')
link('TSKeyword', 'Keyword')
link('TSParameter', 'Constant')
link('Conditional', 'Operator')
link('Operator', 'Keyword')
link('NonText', 'Comment')
link('TSTag', 'MyTag')
link('TSProperty', 'TSField')
link('TSOperator', 'Operator')
link('TSConstant', 'Constant')
link('Macro', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSFloat', 'Number')
link('TSString', 'String')
link('Folded', 'Comment')
link('TSTagDelimiter', 'Type')
link('TSFuncMacro', 'Macro')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSType', 'Type')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('TSNamespace', 'TSType')
link('TSConditional', 'Conditional')
link('CursorLineNr', 'Identifier')