local cloneref = (cloneref or clonereference or function(instance) return instance end)
local HttpService = cloneref(game:GetService("HttpService"))

local function Get(url)
    if game.HttpGet then
        return game:HttpGet(url)
    else
        return HttpService:GetAsync(url)
    end
end

local Lucide = loadstring(Get("https://raw.githubusercontent.com/xyzuCode/Icon/refs/heads/main/lucide/dist/Icons.lua"))()

local function GetIcon(name)
    local icon = Lucide.Icons[name]
    if not icon then return nil end
    return {
        Image             = Lucide.Spritesheets[tostring(icon.Image)],
        ImageRectSize     = icon.ImageRectSize,
        ImageRectOffset   = icon.ImageRectPosition,
    }
end
