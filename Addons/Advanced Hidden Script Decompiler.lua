-- advanced hidden script decompiler: decompiles all game scripts that attempted to hide themself via actors
local debugging = true -- disable when using unless you are certain the game doesnt detect for warns with message out connection

local _warn = function(...)
    if debugging then
        warn(...)
    end
end

game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
if not decompile or not getscriptbytecode or not getactors then
    return _warn("unsupported exploit.")
end

local _decompile = function(scr) -- just a function for better checks + prevents scanning executor scripts
    if (scr:IsA("LocalScript") or scr:IsA("ModuleScript") or (scr:IsA("Script") and scr.RunContext == Enum.RunContext.Client)) and typeof(getscriptbytecode(scr)) == "string" and #getscriptbytecode(scr) ~= 0 then
        task.wait(1) -- remove this wait if your decompiler doesnt have a rate limit
        local _, src = pcall(function()
            return decompile(scr)
        end)

        if src then
            return src
        end

        return nil
    end
end

local main_folder = "HIDDEN_SCRIPTS_DECOMPILED"

local scripts = {
    ["LocalScript"] = main_folder .. "/LocalScript",
    ["ModuleScript"] = main_folder .. "/ModuleScript",
    ["Script"] = main_folder .. "/Script"
}

if not isfolder(main_folder) then
    makefolder(main_folder)
end

for _, script in pairs(scripts) do
    if not isfolder(script) then
        makefolder(script)
    end
end

local function FetchUniquePath(base_path)
    if not isfile(base_path) then
        return base_path
    end
    
    for i = 1, math.huge do
        local new_path = base_path:gsub("%.lua$", "_" .. i .. ".lua")
        if not isfile(new_path) then
            return new_path
        end
    end
end

-- keyword configuration to check for scripts with keywords
local use_search_keyword = false
local search_keyword = "getfenv"

for _, actor in ipairs(getactors()) do
    for _, instance in ipairs(actor:GetDescendants()) do
        local src = _decompile(instance)
        if src and (not use_search_keyword or src:find(search_keyword)) then
            _warn("HIDDEN GAME SCRIPT FOUND:", instance.Name)
            local path = scripts[instance.ClassName] .. "/" .. instance.Name .. ".lua"
            path = FetchUniquePath(path)
            writefile(path, src)
        end
    end
end

_warn("Finished decompiling hidden game scripts.")
_warn("Hidden game scripts decompiled and saved to " .. main_folder)
