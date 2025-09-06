--[[
PLEASE READ - IMPORTANT

© 2025 Peteware
This project is part of Developers-Toolbox-Peteware, an open-sourced debugging tool for roblox.

Licensed under the MIT License.  
See the full license at:  
https://opensource.org/licenses/MIT

**Attribution required:** You must give proper credit to Peteware when using or redistributing this project or its derivatives.

This software is provided "AS IS" without warranties of any kind.  
Violations of license terms may result in legal action.

Thank you for respecting the license and supporting open source software!

Peteware Development Team
]]

--// Loading Handler
if not game:IsLoaded() then
    game.Loaded:Wait()
    task.wait(1)
end

--// Executing Check
if getgenv().ToolboxExecuting then
    return game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Toolbox", Text = "Already Loading. Please Wait!", Icon = "rbxassetid://108052242103510", Duration = 3.5})
else
    getgenv().ToolboxExecuting = true; game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Toolbox", Text = "Developers Toolbox Loading! Please wait...", Icon = "rbxassetid://108052242103510", Duration = 3.5})
end

--// Services & Setup
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
setclip = setclipboard or (syn and syn.setclipboard) or (Clipboard and Clipboard.set)
fireproximityprompt = fireproximityprompt
clonefunction = clonefunction
hookmetamethod = hookmetamethod

local player = game:GetService("Players").LocalPlayer
local coreGui = game:GetService("CoreGui")
local starterGui = game:GetService("StarterGui")
local userInputService = game:GetService("UserInputService")

--// UI Cleanup
local wizardLibary = coreGui:FindFirstChild("WizardLibrary")
if wizardLibary then
    wizardLibary:Destroy()
end

task.wait(1)

--// Variables Cleanup
if _G.ToolboxVariableTest ~= nil or getgenv().VariableTest ~= nil then
    _G.ToolboxVariableTest = nil
    getgenv().ToolboxVariableTest = nil
end

--// Data Handler
local mainFolder = "Peteware"
local toolboxFolder = mainFolder .. "/Toolbox"

if not isfolder(mainFolder) then
    makefolder(mainFolder)
end

if not isfolder(toolboxFolder) then
    makefolder(toolboxFolder)
end

--// Notification Sender
local bell_ring = "rbxassetid://108052242103510"

local function SendNotification(text, duration)
    starterGui:SetCore("SendNotification", {
        Title = "Toolbox",
        Text = text or "Text Content not specified.",
        Icon = bell_ring,
        Duration = duration or 3.5
    })
end

local function SendInteractiveNotification(options)
    local bindable = Instance.new("BindableFunction")

    local text = options.Text or "Are you sure?"
    local duration = options.Duration or 3.5
    local button1 = options.Button1 or "Yes"
    local button2 = options.Button2 or "No"
    local callback = options.Callback

    bindable.OnInvoke = function(value)
        if callback then
            callback(value)
        end
    end

    starterGui:SetCore("SendNotification", {
        Title = "Toolbox",
        Text = text,
        Icon = bell_ring,
        Duration = duration,
        Button1 = button1,
        Button2 = button2,
        Callback = bindable
    })
end

local executorFunctions = {
    httprequest,
    queueteleport,
    setclip,
    fireproximityprompt,
    hookfunction,
    hookmetamethod
}

local compatibilityCount = 0
for _, v in ipairs(executorFunctions) do
    if v then
        compatibilityCount = compatibilityCount + 1
    end
end

local compatibilityPercentage = (compatibilityCount / #executorFunctions) * 100

if compatibilityPercentage == 100 then
    SendNotification(string.format("Your executor is %.0f%% compatible. All toolbox features should work as expected.", compatibilityPercentage), 4)
else
    SendNotification(string.format("Your executor is %.0f%% compatible. Some toolbox features may not be compatible with this executor.", compatibilityPercentage), 4)
end
    
--// Basic Device Detection
local device
if userInputService.KeyboardEnabled and userInputService.MouseEnabled then
    device = "PC"
else
    device = "Mobile"
end

--// Server Rejoin
local function RejoinServer()
    SendNotification("Attempting to Rejoin Server")
    task.wait(1)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, game.jobId)
end

--// Server Hop
local function ServerHop()
    SendNotification("Attempting to Server Hop")
    if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.placeId)})
        local body = game:GetService("HttpService"):JSONDecode(req.Body)

        if body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.jobId then
                    table.insert(servers, 1, v.id)
                end
            end
        end

        if #servers > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, servers[math.random(1, #servers)], Player)
        else
            return SendNotification("Server Hop Failed. Couldnt find a available server")
        end
    else
       SendNotification("Incompatible Exploit. Your exploit does not support this function (missing request)")
    end
end

--// Re-Execution on Teleport
local TeleportCheck = false

local executeOnTeleport = true -- set to false if you dont want execution on server hop / rejoin

if executeOnTeleport and not _G.ToolboxQueueTeleport then
    _G.ToolboxQueueTeleport = true
        game.Players.LocalPlayer.OnTeleport:Connect(function(State)
            if not TeleportCheck and queueteleport then
                TeleportCheck = true
                queueteleport([[
                if not game:IsLoaded() then
                        game.Loaded:Wait()
                        task.wait(1)
                end
                loadstring(game:HttpGet("https://raw.githubusercontent.com/PetewareScripts/Developers-Toolbox-Peteware/refs/heads/main/main.lua"))()
                ]])
            end
        end)
end

--// Timer
local startTime = os.clock()
local endTime = os.clock()
local finalTime = endTime - startTime

--// Variable Debugging
local foundNewgetgenv = false
local foundNew_GNew = false
local found_G = false

local original_G = {}
local original_genv = {}

for k, _ in pairs(_G) do
    original_G[k] = true
end

for k, _ in pairs(getgenv()) do
    original_genv[k] = true
end

local function DebuggetgenvNew()
    startTime = os.clock()
    print([[ [Toolbox]: Scanning for Recently Added getgenv() contents...
    
---------------------------------------------------------------------------------------------------------------------------
        
        ]])
    
    for name, value in pairs(getgenv()) do
        if not original_genv[name] then
            foundNewgetgenv = true
            print(" →", name, "=", value)
        end
    end
    
    if not foundNewgetgenv then
        warn("[Toolbox]: No Recently Added getgenv() contents found.")
    end
    
    endTime = os.clock()
    finalTime = endTime - startTime
    
    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds. 
        
---------------------------------------------------------------------------------------------------------------------------
        
        ]], finalTime))
end

local function Debug_GNew()
    startTime = os.clock()
    print([[ [Toolbox]: Scanning for Recently Added _G contents...
    
---------------------------------------------------------------------------------------------------------------------------
        
        ]])
    
    for name, value in pairs(_G) do
        if not original_G[name] then
            foundNew_G = true
            print(" →", name, "=", value)
        end
    end
    
    if not foundNew_G then
        warn("[Toolbox]: No Recently Added _G contents found.")
    end
    
    endTime = os.clock()
    finalTime = endTime - startTime
    
    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds. 
        
---------------------------------------------------------------------------------------------------------------------------
        
        ]], finalTime))
end

local function Debuggetgenv()
    startTime = os.clock()
    print([[ [Toolbox]: Scanning for getgenv() contents...
    
---------------------------------------------------------------------------------------------------------------------------
        
        ]])
    
    for name, value in pairs(getgenv()) do
    print(" →", name, "=", value)
end
    
    endTime = os.clock()
    finalTime = endTime - startTime

    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds. 
        
---------------------------------------------------------------------------------------------------------------------------
        
        ]], finalTime))
end

local function Debug_G()
    startTime = os.clock()
    print([[[Toolbox]: Scanning for _G contents...
    
---------------------------------------------------------------------------------------------------------------------------
        
        ]])
    
    for name, value in pairs(_G) do
        found_G = true
    print(" →", name, "=", value)
end

if not found_G then
        warn("[Toolbox]: No _G contents found.")
    end
    
    endTime = os.clock()
    finalTime = endTime - startTime

    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds. 
        
---------------------------------------------------------------------------------------------------------------------------

        ]], finalTime))
end

--// Class Scanning
foundInstanceClass = false
local showProperties = {
    -- Value containers
    IntValue = "Value",
    StringValue = "Value",
    BoolValue = "Value",
    NumberValue = "Value",
    Color3Value = "Value",
    Vector3Value = "Value",
    CFrameValue = "Value",
    ObjectValue = "Value",

    -- Common parts
    Part = "Transparency",        -- useful to detect invisible parts
    Model = "Parent",
    UnionOperation = "Transparency",
    Decal = "Texture",            
    Texture = "Texture",

    -- Characters and Gameplay
    Humanoid = "DisplayName",
    Tool = "ToolTip",
    Animation = "AnimationId",
    AnimationTrack = "Animation",

    -- Sounds and Effects
    Sound = "SoundId",
    ParticleEmitter = "Enabled",
}

local foundClasses = {}
local orderList = {}
local inShowProps = nil
local property = nil

local function FetchAvailableClasses()
    startTime = os.clock()
    print([[[Toolbox]: Scanning for Available Classes...

---------------------------------------------------------------------------------------------------------------------------

        ]])
    
    foundClasses = {}

    for _, instance in pairs(game:GetDescendants()) do
        foundClasses[instance.ClassName] = true
    end
    
    orderList = {}
    for className in pairs(foundClasses) do
        table.insert(orderList, className)
    end
    table.sort(orderList)

    for _, className in ipairs(orderList) do
    property = showProperties[className]
    if property then
        print(string.format(
            "Name → %s | showProperties table = true | PropertyShown = %s",
            className,
            tostring(property)
        ))
    else
        print(string.format(
            "Name → %s | showProperties table = false",
            className
        ))
    end
end

    endTime = os.clock()
    finalTime = endTime - startTime
    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds.

---------------------------------------------------------------------------------------------------------------------------

        ]], finalTime))
end

--// Addons Handler
local addonsFolder = toolboxFolder .. "/Addons"

if not isfolder(addonsFolder) then
    makefolder(addonsFolder)
end

local addonName
local addonScript
local selectedAddon
local addonDropdown

local function FetchAddonList()
    local files = listfiles(addonsFolder)
    local list = {}
    for _, path in ipairs(files) do
        if path:sub(-4) == ".lua" then
            local filename = path:match("[^/\\]+$") or path 
            filename = filename:gsub("%.lua$", "")
            table.insert(list, filename)
        end
    end
    return list
end

local addonList = FetchAddonList()
if #addonList == 0 then
    table.insert(addonList, "No Addons Found")
end

--// Instant Proximity Prompts
local proximityPromptService = game:GetService("ProximityPromptService")
proximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    if instantProximityPrompts and fireproximityprompt and typeof(fireproximityprompt) == "function" then
        fireproximityprompt(prompt)
    end
end)

--// Client Anti-Kick
local clientAntiKick
local oldhmmi
local oldhmmnc
local oldKickFunction

if hookfunction and typeof(hookfunction) == "function" then
    oldKickFunction = hookfunction(player.Kick, function()
        if clientAntiKick then
            SendNotification("Blocked Kick Attempt (direct call)")
            return
        end
    end)
end

if hookmetamethod and typeof(hookmetamethod) == "function" then
    oldhmmi = hookmetamethod(game, "__index", function(self, method)
        if clientAntiKick and self == player and method:lower() == "kick" then
            return function()
                SendNotification("Blocked Kick Attempt (__index)")
                error("Expected ':' not '.' calling member function Kick", 2)
            end
        end
        return oldhmmi(self, method)
    end)

    oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
        if clientAntiKick and self == player and getnamecallmethod():lower() == "kick" then
            SendNotification("Blocked Kick Attempt (__namecall)")
            return
        end
        return oldhmmnc(self, ...)
    end)
end

--// Executor Statistics
local platform = userInputService:GetPlatform()
if platform == Enum.Platform.OSX then
    platform = "MacOS"
else
    platform = platform.Name
end

local executorName = identifyexecutor and identifyexecutor() or "Unknown"
local executorLevel = getthreadcontext and getthreadcontext() or "Unknown"

local function FetchExecutorInfo()
    pcall(function() starterGui:SetCore("DevConsoleVisible", true) end)
    print("Device: " .. platform)    
    print("Executor: " .. executorName)
    print("Executor Level: " .. tostring(executorLevel))
end

local function BuildStopwatch()
    local coreGui = game:GetService("CoreGui")
    local runService = game:GetService("RunService")
    local conn

    local oldUI = gethui() or coreGui:FindFirstChild("StopwatchGUI")
    if oldUI then
        oldUI:Destroy()
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "StopwatchGUI"
    screenGui.Parent = gethui() or coreGui
    screenGui.ResetOnSpawn = false

    local frame = Instance.new("Frame", screenGui)
    frame.Size = UDim2.new(0, 220, 0, 110)
    frame.Position = UDim2.new(0, 100, 0, 100)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.Active = true
    frame.Draggable = true

    local timeLabel = Instance.new("TextLabel", frame)
    timeLabel.Size = UDim2.new(1, -20, 0, 50)
    timeLabel.Position = UDim2.new(0, 10, 0, 10)
    timeLabel.BackgroundTransparency = 1
    timeLabel.TextColor3 = Color3.new(1, 1, 1)
    timeLabel.Font = Enum.Font.SourceSansBold
    timeLabel.TextSize = 28
    timeLabel.Text = "00:00:00.000"

    local startButton = Instance.new("TextButton", frame)
    startButton.Size = UDim2.new(0, 60, 0, 25)
    startButton.Position = UDim2.new(0, 10, 0, 70)
    startButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
    startButton.TextColor3 = Color3.new(1, 1, 1)
    startButton.Font = Enum.Font.SourceSansBold
    startButton.TextSize = 20
    startButton.Text = "Start"

    local stopButton = Instance.new("TextButton", frame)
    stopButton.Size = UDim2.new(0, 60, 0, 25)
    stopButton.Position = UDim2.new(0, 80, 0, 70)
    stopButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    stopButton.TextColor3 = Color3.new(1, 1, 1)
    stopButton.Font = Enum.Font.SourceSansBold
    stopButton.TextSize = 20
    stopButton.Text = "Stop"

    local resetButton = Instance.new("TextButton", frame)
    resetButton.Size = UDim2.new(0, 60, 0, 25)
    resetButton.Position = UDim2.new(0, 150, 0, 70)
    resetButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    resetButton.TextColor3 = Color3.new(1, 1, 1)
    resetButton.Font = Enum.Font.SourceSansBold
    resetButton.TextSize = 20
    resetButton.Text = "Reset"

    local closeButton = Instance.new("TextButton", frame)
    closeButton.Size = UDim2.new(0, 25, 0, 25)
    closeButton.Position = UDim2.new(1, -30, 0, 5)
    closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.TextSize = 20
    closeButton.Text = "X"

    local running = false
    local startTime = 0
    local elapsedTime = 0

    local function StartStopwatch()
        if not running then
            startTime = tick() - elapsedTime
            running = true
        end
    end

    local function StopStopwatch()
        if running then
            elapsedTime = tick() - startTime
            running = false
        end
    end

    local function ResetStopwatch()
        running = false
        elapsedTime = 0
        timeLabel.Text = "00:00:00.000"
    end

    startButton.MouseButton1Click:Connect(StartStopwatch)
    stopButton.MouseButton1Click:Connect(StopStopwatch)
    resetButton.MouseButton1Click:Connect(ResetStopwatch)

    closeButton.MouseButton1Click:Connect(function()
        conn:Disconnect()
        screenGui:Destroy()
    end)

    conn = runService.RenderStepped:Connect(function()
        if running then
            elapsedTime = tick() - startTime
            local totalSeconds = math.floor(elapsedTime)
            local hours = math.floor(totalSeconds / 3600)
            local minutes = math.floor((totalSeconds % 3600) / 60)
            local seconds = totalSeconds % 60
            local milliseconds = math.floor((elapsedTime - totalSeconds) * 1000)
            timeLabel.Text = string.format("%02d:%02d:%02d.%03d", hours, minutes, seconds, milliseconds)
        end
    end)
end

--// Main UI
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PetewareToolbox = Library:NewWindow("Dev Toolbox | Peteware")

local Tools = PetewareToolbox:NewSection("Toolbox")

Tools:CreateButton("Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

Tools:CreateButton("Remote Spy", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)

Tools:CreateButton("Dex Explorer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

Tools:CreateButton("Hydroxide", function()
    local owner = "Hosvile"
    local branch = "revision"
    
    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/MC-Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end
    
    webImport("init")
    webImport("ui/main")
end)

Tools:CreateButton("Ketamine", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Ketamine/refs/heads/main/Ketamine.lua"))()
end)

if device == "PC" then
local Debugging1 = PetewareToolbox:NewSection("Variable Debugging1")

Debugging1:CreateButton("Print Global Variables V1", function()
    starterGui:SetCore("DevConsoleVisible", true)
    Debug_G()
end)

Debugging1:CreateButton("Print Global Variables V2", function()
    starterGui:SetCore("DevConsoleVisible", true)
    Debuggetgenv()
end)

Debugging1:CreateButton("Print Recent Global Variables V1", function()
    starterGui:SetCore("DevConsoleVisible", true)
    Debug_GNew()
end)

Debugging1:CreateButton("Print Recent Global Variables V2", function()
    starterGui:SetCore("DevConsoleVisible", true)
    DebuggetgenvNew()
end)

Debugging1:CreateTextbox("Copy Global Variable V1", function(text)
    if _G[text] ~= nil then
        local variableValue = tostring(_G[text])
        if setclip and typeof(setclip) == "function" then
            setclip("_G." .. text .. " = " .. variableValue)
            print("Copied: _G." .. text .. " = " .. variableValue)
            starterGui:SetCore("DevConsoleVisible", true)
        else
            return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing setclip)")
        end
    else
        print(text .. " Variable not found in _G.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging1:CreateTextbox("Copy Global Variable V2", function(text)
    if getgenv()[text] ~= nil then
        local variableValue = tostring(getgenv()[text])
        if setclip and typeof(setclip) == "function" then
            setclip("getgenv()." .. text .. " = " .. variableValue)
            print("Copied: getgenv()." .. text .. " = " .. variableValue)
            starterGui:SetCore("DevConsoleVisible", true)
        else
            return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing setclip)")
        end
    else
        print(text .. " Variable not found in getgenv().")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

local Debugging2 = PetewareToolbox:NewSection("Variable Debugging2")

Debugging2:CreateTextbox("Create Global Variable V1", function(input)
local varName, value = input:match("^(%S+)%s*=%s*(.+)$")
    if varName and value then
        if _G[varName] == nil then
            local success, result = pcall(loadstring("return " .. value))
            if success then
                _G[varName] = result
                print("Created: _G." .. varName .. " = " .. tostring(result))
                starterGui:SetCore("DevConsoleVisible", true)
            else
                print("Invalid value format.")
                starterGui:SetCore("DevConsoleVisible", true)
            end
        else
            print(varName .. " found in _G. Creating not allowed.")
            starterGui:SetCore("DevConsoleVisible", true)
        end
    else
        print("Invalid input format. Please use 'VariableName = value'.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging2:CreateTextbox("Create Global Variable V2", function(input)
local varName, value = input:match("^(%S+)%s*=%s*(.+)$")
    if varName and value then
        if getgenv()[varName] == nil then
            local success, result = pcall(loadstring("return " .. value))
            if success then
                getgenv()[varName] = result
                print("Created: getgenv()." .. varName .. " = " .. tostring(result))
                starterGui:SetCore("DevConsoleVisible", true)
            else
                print("Invalid value format.")
                starterGui:SetCore("DevConsoleVisible", true)
            end
        else
            print(varName .. " found in getgenv(). Creating not allowed.")
            starterGui:SetCore("DevConsoleVisible", true)
        end
    else
        print("Invalid input format. Please use 'VariableName = value'.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging2:CreateTextbox("Edit Global Variable V1", function(input)
    local varName, value = input:match("^(%S+)%s*=%s*(.+)$")
    if varName and value then
        if _G[varName] ~= nil then
            local success, result = pcall(loadstring("return " .. value))
            if success then
                _G[varName] = result
                print("Edited: _G." .. varName .. " = " .. tostring(result))
                starterGui:SetCore("DevConsoleVisible", true)
            else
                print("Invalid value format.")
                starterGui:SetCore("DevConsoleVisible", true)
            end
        else
            print(varName .. " not found in _G. Editing not allowed.")
            starterGui:SetCore("DevConsoleVisible", true)
        end
    else
        print("Invalid input format. Please use 'VariableName = value'.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging2:CreateTextbox("Edit Global Variable V2", function(input)
    local varName, value = input:match("^(%S+)%s*=%s*(.+)$")
    if varName and value then
        if getgenv()[varName] ~= nil then
            local success, result = pcall(loadstring("return " .. value))
            if success then
                getgenv()[varName] = result
                print("Edited: getgenv()." .. varName .. " = " .. tostring(result))
                starterGui:SetCore("DevConsoleVisible", true)
            else
                print("Invalid value format.")
                starterGui:SetCore("DevConsoleVisible", true)
            end
        else
            print(varName .. " not found in getgenv(). Editing not allowed.")
            starterGui:SetCore("DevConsoleVisible", true)
        end
    else
        print("Invalid input format. Please use 'VariableName = value'.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging2:CreateTextbox("Delete Global Variable V1", function(text)
    if _G[text] ~= nil then
        _G[text] = nil
        print("Deleted: _G." .. text)
        starterGui:SetCore("DevConsoleVisible", true)
    else
        print(text .. " not found in _G.")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)

Debugging2:CreateTextbox("Delete Global Variable V2", function(text)
    if getgenv()[text] ~= nil then
        getgenv()[text] = nil
        print("Deleted: getgenv()." .. text)
        starterGui:SetCore("DevConsoleVisible", true)
    else
        print(text .. " not found in getgenv().")
        starterGui:SetCore("DevConsoleVisible", true)
    end
end)
end

local InstanceScanner = PetewareToolbox:NewSection("Instance Scanner")

InstanceScanner:CreateButton("Fetch All Available Classes", function()
    starterGui:SetCore("DevConsoleVisible", true)
    FetchAvailableClasses()
end)

InstanceScanner:CreateTextbox("Scan by Class", function(className)
    starterGui:SetCore("DevConsoleVisible", true)
    local startTime = os.clock()
    local foundInstanceClass = false

    print(string.format([[
[Toolbox]: Scanning for Instances of Class: %s

---------------------------------------------------------------------------------------------------------------------------

]], className))

    for _, inst in ipairs(game:GetDescendants()) do
        if inst.ClassName == className then
            foundInstanceClass = true

            local output = "Name → " .. inst.Name .. " | Path → " .. inst:GetFullName()
            local propName = showProperties[className]
            if propName and inst[propName] ~= nil then
                output = output .. " | " .. propName .. " = " .. tostring(inst[propName])
            end

            print(output)
        end
    end

    if not foundInstanceClass then
        warn(string.format("[Toolbox]: No instances of class '%s' were found.", className))
    end

    local endTime = os.clock()
    local finalTime = endTime - startTime

    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds.

---------------------------------------------------------------------------------------------------------------------------

]], finalTime))
end)

local Addons = PetewareToolbox:NewSection("Addons")

Addons:CreateTextbox("Input Script Name", function(text)
    addonName = text:gsub("%.lua$", "") .. ".lua"
end)

Addons:CreateTextbox("Input Script", function(text)
    addonScript = text
end)

Addons:CreateButton("Save Addon", function()
    if not addonName or addonName == "" or not addonScript or addonScript == "" then
        return SendNotification("Missing name or script input.")
    end

    writefile(addonsFolder .. "/" .. addonName, addonScript)
    SendNotification("Saved Addon: " .. addonName)
    task.wait(3)
    SendNotification("Please Re-Execute the Developers Toolbox to apply addon changes.")
end)

addonDropdown = Addons:CreateDropdown("Select Addon", addonList, 1, function(text)
    selectedAddon = text ~= "No Addons Found" and text or nil
end)

Addons:CreateButton("Load Selected Addon", function()
    if not selectedAddon then return SendNotification("No addon selected.") end

    local path = addonsFolder .. "/" .. selectedAddon .. ".lua"
    if not isfile(path) then return SendNotification("Addon not found.") end

    local success, result = pcall(function()
        loadstring(readfile(path))()
    end)

    if success then
        SendNotification("Loaded Addon: " .. selectedAddon)
    else
        print("Error loading addon:\n" .. tostring(result))
        SendNotification("Error Occured. Please try and Re-Execute the Developers Toolbox.")
    end
end)

Addons:CreateButton("Delete Selected Addon", function()
    if not selectedAddon then
        return SendNotification("No addon selected.")
    end

    local path = addonsFolder .. "/" .. selectedAddon .. ".lua"
    if not isfile(path) then
        return SendNotification("Addon not found.")
    end

    SendInteractiveNotification({
        Text = "Are you sure you want to delete this addon?",
        Button1 = "Yes",
        Button2 = "No",
        Callback = function(value)
            if value == "Yes" then
                delfile(path)
                selectedAddon = nil
                SendNotification("Deleted Addon: " .. path:match("[^/\\]+$"))
                task.wait(3)
                SendNotification("Please Re-Execute the Developers Toolbox to apply addon changes.")
            elseif value == "No" then
                SendNotification("Addon deletion cancelled.")
            end
        end
    })
end)

local Other = PetewareToolbox:NewSection("Other")

Other:CreateToggle("Instant Prompts", function(value)
    instantProximityPrompts = value
    
    if not fireproximityprompt or typeof(fireproximityprompt) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing fireproximityprompt)")
    end
    
    if instantProximityPrompts then
        SendNotification("Instant Proximity Prompts Enabled. You can now instantly interact with Proximity Prompts.")
    else
        SendNotification("Instant Proximity Prompt Disabled. You are now unable to interact with Proximity Prompts instantly.")
    end
end)

Other:CreateToggle("Client Anti-Kick", function(value)
    clientAntiKick = value
    
    if not hookmetamethod or typeof(hookmetamethod) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing hookmetamethod)")
    end
    
    if not hookfunction or not typeof(hookfunction) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing hookfunction)")
    end
    
    if clientAntiKick then
        SendNotification("Client Anti-Kick Enabled.")
    else
        SendNotification("Client Anti-Kick Disabled.")
    end
end)

Other:CreateButton("FPS Booster", function()
    _G.Settings = {
        Players = {
            ["Ignore Me"] = true, -- Ignore your Character
            ["Ignore Others"] = true -- Ignore other Characters
            },
        Meshes = {
            Destroy = false, -- Destroy Meshes
            LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
            },
        Images = {
            Invisible = true, -- Invisible Images
            LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
            Destroy = false, -- Destroy Images
            },
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
        }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)

Other:CreateButton("Executor Info", function()
    FetchExecutorInfo()
end)

Other:CreateButton("Stopwatch", function()
    BuildStopwatch()
end)

Other:CreateButton("Rejoin", function()
    RejoinServer()
end)

Other:CreateButton("Server Hop", function()
    ServerHop()
end)

Other:CreateButton("Exit Toolbox", function()
    SendInteractiveNotification({
        Text = "Are you sure you want to exit the developers toolbox?",
        Button1 = "Yes",
        Button2 = "No",
        Callback = function(value)
            if value == "Yes" then
                if _G.ToolboxVariableTest ~= nil or getgenv().VariableTest ~= nil then
                    _G.ToolboxVariableTest = nil
                    getgenv().ToolboxVariableTest = nil
                end
                
                pcall(function() 
                    coreGui:FindFirstChild("WizardLibrary"):Destroy()
                end)
            elseif value == "No" then
                SendNotification("Exit cancelled.")
            end
        end
    })
end)

--// Global Variable Testing
local GlobalVariableTest = true -- set to true to create a _G and a getgenv() Variable for testing

if GlobalVariableTest then
    _G.ToolboxVariableTest = true
    getgenv().ToolboxVariableTest = true
end

--// UI Display Order
local newUI = coreGui:FindFirstChild("WizardLibrary")
if newUI then
    newUI.DisplayOrder = 10000
end

--// Events
local conn = coreGui.ChildRemoved:Connect(function(child)
    if child.Name == "WizardLibrary" and clientAntiKick ~= nil then
        clientAntiKick = nil
        instantProximityPrompts = nil
        conn:Disconnect()
    end
end)

--// Executing Finished
getgenv().ToolboxExecuting = nil

--[[// Credits
Infinite Yield: Server Hop, Dex Explorer, Remote Spy, Client-Anti-Kick
Infinite Yield Discord Server: https://discord.gg/78ZuWSq
Hosvile: Hydroxide 
Hosvile Github: https://github.com/hosvile/
RIP#6666: FPS Booster
RIP#6666 Discord Server: https://discord.gg/rips
]]
