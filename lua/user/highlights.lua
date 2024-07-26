-- lua/user/highlights.lua

local M = {}

M.setup = function()
    return {
        -- Example highlights
        Function = { fg = "#dcdcaa" },
        Comment = { fg = "#6a9955" },
        String = { fg = "#ce9178" },
        Variable = { fg = "#9CDCFE" },
        -- Custom Treesitter highlights
        ["@variable.cpp"] = { fg = "#FF5733" }, -- Set variable color
        ["@function.cpp"] = { fg = "#33FF57" }, -- Set function color
        ["@constructor.cpp"] = { fg = "#5733FF" }, -- Set constructor color
        ["@string.literal"] = { fg = "#ce9178" }, -- Set string literal color
        ["@string.content"] = { fg = "#ce9178" }, 
        ["@string.cpp"] = { fg = "#ce9178" }, 
        -- Custom LSP Semantic Token highlights
        ["@lsp.type.class.cpp"] = { fg = "#FF33A1" }, -- Set class color
        ["@lsp.mod.classScope.cpp"] = { fg = "#33A1FF" }, -- Set classScope modifier color
        ["@lsp.mod.constructorOrDestructor.cpp"] = { fg = "#A1FF33" }, -- Set constructorOrDestructor modifier color
        ["@lsp.mod.declaration.cpp"] = { fg = "#FF5733" }, -- Set declaration modifier color
        ["@lsp.mod.definition.cpp"] = { fg = "#33FF57" }, -- Set definition modifier color
        ["@lsp.typemod.class.classScope.cpp"] = { fg = "#5733FF" }, -- Set classScope typemod color
        ["@lsp.typemod.class.constructorOrDestructor.cpp"] = { fg = "#FF33A1" }, -- Set constructorOrDestructor typemod color
        ["@lsp.typemod.class.declaration.cpp"] = { fg = "#33A1FF" }, -- Set declaration typemod color
        ["@lsp.typemod.class.definition.cpp"] = { fg = "#A1FF33" }, -- Set definition typemod color
    }
end

return M
