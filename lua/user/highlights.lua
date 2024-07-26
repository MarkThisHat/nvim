-- lua/user/highlights.lua

local M = {}

M.setup = function()
    return {
        Comment = { fg = "#6a9955" },
        Type = { fg = "#569cd6" },
        ["@operator.cpp"] = { fg = "#d4d4d4" },
        ["@lsp.type.operator.cpp"] = { fg = "#d4d4d4" },
        ["@number.cpp"] = { fg = "#b5cea8"},
        ["@keyword.operator.cpp"] = { fg = "#c586c0"},
        ["@parameter"] = { fg = "#9cdcfe" },
        ["@variable"] = { fg = "#9cdcfe" },
        ["@property"] = { fg = "#9cdcfe", bold = true },
        ["@lsp.type.class"] = { fg = "#dcdcaa" },
        ["@function.cpp"] = { fg = "#dcdcaa" },
        ["@function.method"] = { fg = "#dcdcaa" },
        ["@lsp.typemod.class.constructorOrDestructor.cpp"] = { fg = "#dcdcaa", bold = true},
        ["@lsp.type.function.cpp"] = { fg = "#dcdcaa" },
        ["@lsp.typemod.class.globalScope.cpp"] = {fg = "#4ec9b0" },
        ["@lsp.typemod.namespace.defaultLibrary.cpp"] = { fg = "#4ec9b0"},
        ["@lsp.typemod.class.defaultLibrary.cpp"] = { fg = "#4ec9b0" },
        ["@lsp.mod.fileScope.cpp"] = { fg = "#4ec9b0"},
        ["@constant"] = { fg = "#569cd6" },
        ["@keyword.modifier.cpp"] = { fg = "#569cd6"},
        ["@variable.builtin.cpp"] = { fg = "#569cd6" },
        ["@string.literal"] = { fg = "#ce9178" },
        ["@string.content"] = { fg = "#ce9178" }, 
        ["@string.cpp"] = { fg = "#ce9178" },
        ["@operator.c"] = { fg = "#d4d4d4" },
        ["@lsp.type.operator.c"] = { fg = "#d4d4d4" },
        ["@number.c"] = { fg = "#b5cea8"},
        ["@keyword.operator.c"] = { fg = "#c586c0"},
        ["@function.c"] = { fg = "#dcdcaa" },
        ["@lsp.typemod.class.constructorOrDestructor.c"] = { fg = "#dcdcaa", bold = true},
        ["@lsp.type.function.c"] = { fg = "#dcdcaa" },
        ["@lsp.typemod.class.globalScope.c"] = {fg = "#4ec9b0" },
        ["@lsp.typemod.namespace.defaultLibrary.c"] = { fg = "#4ec9b0"},
        ["@lsp.typemod.class.defaultLibrary.c"] = { fg = "#4ec9b0" },
        ["@lsp.mod.fileScope.c"] = { fg = "#4ec9b0"},
        ["@keyword.modifier.c"] = { fg = "#569cd6"},
        ["@variable.builtin.c"] = { fg = "#569cd6" },
        ["@type.builtin.c"] = { fg = "#569cd6" },
        ["@string.c"] = { fg = "#ce9178" }, 
    }
end

return M
