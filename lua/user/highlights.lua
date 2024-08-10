-- lua/user/highlights.lua

local M = {}

local colors = {
    green = "#6a9955",
    light_green = "#b5cea8",
    dark_green = "#4ec9b0",
    blue = "#569cd6",
    light_blue = "#9cdcfe",
    white = "#d4d4d4",
    magenta = "#c586c0",
    yellow = "#dcdcaa",
    brown = "#feaf73",
}

M.setup = function()
    return {
        Comment = { fg = "#d42771" },
        Type = { fg = colors.blue },
        -- Cpp:
        ["@operator.cpp"] = { fg = colors.white },
        ["@lsp.type.operator.cpp"] = { fg = colors.white },
        ["@number.cpp"] = { fg = colors.light_green },
        ["@keyword.operator.cpp"] = { fg = colors.magenta },
        ["@parameter"] = { fg = colors.light_blue },
        ["@variable"] = { fg = colors.light_blue },
        ["@property"] = { fg = colors.light_blue, bold = true },
        ["@lsp.type.class"] = { fg = colors.yellow },
        ["@function.cpp"] = { fg = colors.yellow },
        ["@function.method"] = { fg = colors.yellow },
        ["@lsp.typemod.class.constructorOrDestructor.cpp"] = { fg = colors.yellow, bold = true},
        ["@lsp.type.function.cpp"] = { fg = colors.yellow },
        ["@lsp.typemod.class.globalScope.cpp"] = {fg = colors.dark_green },
        ["@lsp.typemod.namespace.defaultLibrary.cpp"] = { fg = colors.dark_green},
        ["@lsp.typemod.class.defaultLibrary.cpp"] = { fg = colors.dark_green },
        ["@lsp.mod.fileScope.cpp"] = { fg = colors.dark_green},
        ["@constant"] = { fg = colors.blue },
        ["@keyword.modifier.cpp"] = { fg = colors.blue},
        ["@variable.builtin.cpp"] = { fg = colors.blue },
        ["@string.literal"] = { fg = colors.brown },
        ["@string.content"] = { fg = colors.brown }, 
        ["@string.cpp"] = { fg = colors.brown },
        -- C:
        ["@operator.c"] = { fg = colors.white },
        ["@lsp.type.operator.c"] = { fg = colors.white },
        ["@number.c"] = { fg = colors.light_green },
        ["@keyword.operator.c"] = { fg = colors.magenta},
        ["@function.c"] = { fg = colors.yellow },
        ["@lsp.typemod.class.constructorOrDestructor.c"] = { fg = colors.yellow, bold = true},
        ["@lsp.type.function.c"] = { fg = colors.yellow },
        ["@lsp.typemod.class.globalScope.c"] = {fg = colors.dark_green },
        ["@lsp.typemod.namespace.defaultLibrary.c"] = { fg = colors.dark_green},
        ["@lsp.typemod.class.defaultLibrary.c"] = { fg = colors.dark_green },
        ["@lsp.mod.fileScope.c"] = { fg = colors.dark_green},
        ["@keyword.modifier.c"] = { fg = colors.blue},
        ["@variable.builtin.c"] = { fg = colors.blue },
        ["@type.builtin.c"] = { fg = colors.blue },
        ["@string.c"] = { fg = colors.brown },
        -- Python:
        ["@odp.import_module.python"] = { fg = colors.blue },
        ["@odp.keyword.class.python"] = { fg = colors.blue },
        ["@keyword.function.python"] = { fg = colors.blue },
        ["@type.python"] = { fg = colors.dark_green },
        ["@function.python"] = { fg = colors.yellow, bold = true },
        ["@function.call.python"] = { fg = colors.yellow, italic = true },
        ["@odp.base_constructor.python"] = { fg = colors.yellow },
        ["@constructor.python"] = { fg = colors.yellow, bold = true, italic = true },
        ["@odp.function.builtin.python"] = { fg = colors.yellow },
        ["@odp.decorator.python"] = { fg = colors.yellow },
        ["@variable.parameter.python"] = { fg = colors.light_blue, italic = true },
        ["@odp.punctuation.bracket.python"] = { fg = colors.magenta },
        ["@variable.builtin.python"] = { fg = colors.blue, italic = true },
        ["@number.python"] = { fg = colors.light_green },
        ["@attribute.builtin.python"] = { fg = colors.dark_green },
        ["@type.builtin.python"] = { fg = colors.dark_green },
        ["@operator.python"] = { fg = colors.white },
        ["@string.python"] = { fg = colors.brown },
        ["@variable.member.python"] = { fg = colors.white, bold = true },
        ["@odp.interpolation.python"] = { fg = colors.white, bold = true },
    }
end

return M
