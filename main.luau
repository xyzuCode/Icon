local cloneref = (cloneref or clonereference or function(i) return i end)

local HttpService = cloneref(game:GetService("HttpService"))

local function Get(url)
    if writefile and game.HttpGet then
        return game:HttpGet(url)
    else
        return HttpService:GetAsync(url)
    end
end

local LucideIcons = loadstring(
    Get("https://raw.githubusercontent.com/xyzuCode/Icon/refs/heads/main/lucide/dist/Icons.lua")
)()

local IconModule = {}

function IconModule.GetIcon(iconName)

    local iconData = LucideIcons.Icons[iconName]

    if iconData then
        return LucideIcons.Spritesheets[tostring(iconData.Image)]
    end

    if LucideIcons[iconName] then
        return LucideIcons[iconName]
    end

    return nil
end

return IconModule
