local base = "https://raw.githubusercontent.com/xiaozeyydsnb/xiaozenb/main/"

local function LoadModule(name)
    local ok,res = pcall(function()
        return game:HttpGet(base .. name .. ".lua")
    end)

    if not ok then
        warn("加载失败: "..name)
        return
    end

    local fn = loadstring(res)

    if fn then
        return fn()
    end
end

LoadModule("main")
