--[[
PLEASE READ - IMPORTANT

© 2025 Peteware
This project is part of Developer-Toolbox, an open-sourced debugging tool for roblox.

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
if getgenv().Toolbox and getgenv().Toolbox.Executing then
    return game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Toolbox",
        Text = "Already Loading. Please Wait!",
        Icon = "rbxassetid://108052242103510",
        Duration = 3.5
    })
else
    getgenv().Toolbox = {}
    getgenv().Toolbox.Executing = true
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Toolbox",
        Text = "Developers Toolbox Loading! Please wait...",
        Icon = "rbxassetid://108052242103510",
        Duration = 3.5
    })
end

local interactiveNotificationYielding = false
local errorYielded = false

if getgenv().Toolbox.ErrorScheduled == nil then
    getgenv().Toolbox.ErrorScheduled = true
    
    task.delay(8, function()
        while interactiveNotificationYielding do
            yielded = true
            task.wait()
            break
        end
        
        if errorYielded then
            task.wait(8)
        end
        
        if getgenv().Toolbox.Executing then
            getgenv().Toolbox.Executing = nil
            getgenv().Toolbox.ErrorScheduled = nil
            
            if cancelToolboxLoading then
                return
            end
            
            local errorSound = Instance.new("Sound")
            errorSound.Name = "PetewareErrorNotification"
            errorSound.SoundId = "rbxassetid://9066167010"
            errorSound.Volume = 1
            errorSound.Archivable = false
            errorSound.Parent = game:GetService("SoundService")
        
            pcall(function() 
                errorSound:Play()
                errorSound.Ended:Once(function()
                    errorSound:Destroy()
                end)
            end)
        
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Toolbox",
                Text = "An error has occured while loading the toolbox, Please try and rexecute. If this problem persists please report this to 584h with console logs.",
                Icon = "rbxassetid://108052242103510",
                Duration = 4.5
            })
        else
            getgenv().Toolbox.ErrorScheduled = nil
        end
    end)
end

--// Services & Setup
clonefunction = clonefunction or function(func)
    if typeof(func) ~= "function" then
        return nil
    end
    
    return function(...)
        return func(...)
    end
end

newcclosure = newcclosure or function(func)
    return func
end

customasset = (getcustomasset or getsynasset) and clonefunction(getcustomasset or getsynasset)
makefolder = makefolder and clonefunction(makefolder)
isfolder = isfolder and clonefunction(isfolder)
writefile = writefile and clonefunction(writefile)
isfile = isfile and clonefunction(isfile)
readfile = readfile and clonefunction(readfile)
loadstring = loadstring and clonefunction(loadstring)
httprequest = ((syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request) and clonefunction((syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request)
queueteleport = ((syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)) and clonefunction((syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport))
setclip = (setclipboard or (syn and syn.setclipboard) or (Clipboard and Clipboard.set)) and clonefunction(setclipboard or (syn and syn.setclipboard) or (Clipboard and Clipboard.set))
fireproximityprompt = fireproximityprompt and clonefunction(fireproximityprompt)
hookfunction = hookfunction and clonefunction(hookfunction)
identifyexecutor = identifyexecutor and clonefunction(identifyexecutor)
getthreadcontext = getthreadcontext and clonefunction(getthreadcontext)
cloneref = cloneref and clonefunction(cloneref)
newcclosure = clonefunction(newcclosure)

local player = game:GetService("Players").LocalPlayer
local coreGui = game:GetService("CoreGui")
local starterGui = game:GetService("StarterGui")
local teleportService = game:GetService("TeleportService")
local httpService = game:GetService("HttpService")
local userInputService = game:GetService("UserInputService")
local soundService = game:GetService("SoundService")

--// Executor Compatibility Check
local requiredFunctions = {
    makefolder,
    isfolder,
    writefile,
    isfile,
    readfile,
    loadstring
}

for _, v in ipairs(requiredFunctions) do
    if not v or typeof(v) ~= "function" then
        local errorSound = Instance.new("Sound")
        errorSound.Name = "PetewareErrorNotification"
        errorSound.SoundId = "rbxassetid://9066167010"
        errorSound.Volume = 1
        errorSound.Archivable = false
        errorSound.Parent = soundService
        
        pcall(function() 
            errorSound:Play()
            errorSound.Ended:Once(function()
                errorSound:Destroy()
            end)
        end)

        starterGui:SetCore("SendNotification", {
            Title = "Toolbox",
            Text = "Incompatible Exploit. Your exploit does not support the toolbox (missing " .. tostring(v) .. ")",
            Icon = bell_ring,
            Duration = duration or 3.5
        })

        return
    end
end

--// UI Cleanup
local wizardLibary = coreGui:FindFirstChild("WizardLibrary")
if wizardLibary then
    wizardLibary:Destroy()
end

task.wait(1)

--// Detection Handler
local detected = false -- change this to true if you want the toolbox to be detected by in-game anti-cheat. useful when testing anti-cheats

local namecall
xpcall(function()
    game:_()
end, function()
    namecall = debug.info(2, "f")
end)

local function SendNotification() end
local function SendInteractiveNotification() end

local function HandleDetections(boolean)
    local hookRequiredFunctions = {
        "hookfunction",
        "cloneref",
        "getnamecallmethod"
    }
    
    for _, func in ipairs(hookRequiredFunctions) do
        if not func then
            Notify("Incompatible Exploit. Your exploit does not support in-game anti-cheat detection handling (missing " .. tostring(v) .. ")")
            SendInteractiveNotification({
                Text = "Are you sure you want to proceed with loading the developers toolbox? You may be detected by in-game anti-cheats.",
                Button1 = "Yes",
                Button2 = "No",
                Callback = function(value)
                    return not value
                end
            }, true)
        end
    end
    
    if boolean then
        SendInteractiveNotification({
            Text = "Are you sure you want to proceed with loading the developers toolbox with UI detection on? You may be detected and punished by in-game anti-cheats.",
            Button1 = "Yes",
            Button2 = "No",
            Callback = function(value)
                return not value
            end
        }, true)
    end
    
    local contentProvider = cloneref(game:GetService("ContentProvider"))
    
    local old; old = hookfunction(namecall, newcclosure(function(self, ...)
        if not checkcaller() then
            local method = getnamecallmethod()
        
            if self == contentProvider and method == "GetAssetFetchStatus" then
                return Enum.AssetFetchStatus.None
            end
        end
        
        return old(self, ...)
    end))
    
    return false
end

--// Data Handler
local mainFolder = "Peteware"
local toolboxFolder = mainFolder .. "/Toolbox"
local assetsFolder = toolboxFolder .. "/Assets"
local audiosFolder = assetsFolder .. "/Audios"
local imagesFolder = assetsFolder .. "/Images"

local bell_ring_png = imagesFolder .. "/bell-ring.png"
local bell_ring_mp3 = audiosFolder .. "/bell-ring.mp3"

if not isfolder(mainFolder) then
    makefolder(mainFolder)
end

if not isfolder(toolboxFolder) then
    makefolder(toolboxFolder)
end

if not isfolder(assetsFolder) then
    makefolder(assetsFolder)
end

if not isfolder(audiosFolder) then
    makefolder(audiosFolder)
end

if not isfolder(imagesFolder) then
    makefolder(imagesFolder)
end

if not isfile(bell_ring_png) then
    writefile(bell_ring_png, game:HttpGet("https://github.com/petewar3/Developer-Toolbox/raw/refs/heads/main/Assets/Images/bell-ring.png"))
end

if not isfile(bell_ring_mp3) then
    writefile(bell_ring_mp3, game:HttpGet("https://github.com/petewar3/Developer-Toolbox/raw/refs/heads/main/Assets/Audios/bell-ring.mp3"))
end

--// Notification Sender
local notificationSound = Instance.new("Sound", soundService)
notificationSound.Name = "PetewareNotification"
notificationSound.SoundId = customasset(bell_ring_mp3) or "rbxassetid://2502368191"
notificationSound.Volume = 1
notificationSound.Archivable = false
    
notificationSound.Loaded:Wait()

if customasset and bell_ring_png then
    bell_ring_png = customasset(bell_ring_png)
end

if not bell_ring_png then
    bell_ring_png = "rbxassetid://108052242103510"
end

local notificationSounds = true
local function PlayNotificationSound()
    if notificationSound and notificationSounds then
        notificationSound:Play()
    end
end

function SendNotification(text, duration)
    PlayNotificationSound()
    
    starterGui:SetCore("SendNotification", {
        Title = "Toolbox",
        Text = text or "Text Content not specified.",
        Icon = bell_ring_png,
        Duration = duration or 3.5
    })
end

function SendInteractiveNotification(options, yield)
    PlayNotificationSound()
    
    local bindable = Instance.new("BindableFunction")
    local responseEvent = Instance.new("BindableEvent")

    local text = options.Text or "Are you sure?"
    local duration = (yield and 1e9) or options.Duration or 3.5
    local button1 = options.Button1 or "Yes"
    local button2 = options.Button2 or "No"
    local callback = options.Callback

    bindable.OnInvoke = function(value)
        if callback then
            callback(value)
        end
        
        responseEvent:Fire(value)
        
        if bindable then
            bindable:Destroy()
        end
        
        if responseEvent then
            responseEvent:Destroy()
        end
        
        interactiveNotificationYielding = false
    end

    starterGui:SetCore("SendNotification", {
        Title = "Toolbox",
        Text = text,
        Icon = bell_ring_png,
        Duration = duration,
        Button1 = button1,
        Button2 = button2,
        Callback = bindable
    })

    task.delay(duration, function()
        if bindable then
            bindable:Destroy()
        end
        
        if responseEvent then
            responseEvent:Destroy()
        end
    end)
    
    if yield then
        interactiveNotificationYielding = true
        local response = responseEvent.Event:Wait()
        return response
    end
end

local cancelToolboxLoading = HandleDetections(detected)
if cancelToolboxLoading then
    return Notify("Toolbox loading cancelled.")
end

local optionalFunctions = {
    customasset,
    makefolder,
    isfolder,
    writefile,
    delfile,
    isfile,
    readfile,
    loadstring,
    httprequest,
    queueteleport,
    setclip,
    fireproximityprompt,
    newcclosure,
    hookfunction,
    identifyexecutor,
    getthreadcontext
}

local compatibilityCount = 0
for _, v in ipairs(optionalFunctions) do
    if v then
        compatibilityCount = compatibilityCount + 1
    end
end

local compatibilityPercentage = (compatibilityCount / #optionalFunctions) * 100

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
    task.delay(1, function()
        if game.PrivateServerId ~= "" then
            return SendNotification("Failed to Rejoin Server. Cannot rejoin a private server.")
        else
            teleportService:TeleportToPlaceInstance(game.placeId, game.jobId)
        end
    end)
end

--// Server Hop
local serverHopData = toolboxFolder .. "server-hop-data-temp.json"

local serverIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour

if isfile(serverHopData) then
    serverIDs = httpService:JSONDecode(readfile(serverHopData))
end

if typeof(serverIDs) ~= "table" or #serverIDs == 0 then
    serverIDs = { actualHour }
    writefile(serverHopData, httpService:JSONEncode(serverIDs))
end

local function ServerHop()
    SendNotification("Attempting to Server Hop")
    local function AttemptServerHop()
        local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

        if foundAnything ~= "" then
            url = url .. "&cursor=" .. foundAnything
        end

        local success, site = pcall(function()
            return httpService:JSONDecode(game:HttpGet(url))
        end)

        if not success or not site or not site.data then
            return
        end

        if site.nextPageCursor then
            foundAnything = site.nextPageCursor
        end

        for _, v in pairs(site.data) do
            if v.playing < v.maxPlayers then
                local serverId = tostring(v.id)
                local canHop = true

                for i, existing in pairs(serverIDs) do
                    if i == 1 and existing ~= actualHour then
                        if delfile then
                            delfile(serverHopData)
                        end
                        serverIDs = { actualHour }
                        break
                    end

                    if serverId == tostring(existing) then
                        canHop = false
                        break
                    end
                end

                if canHop then
                    table.insert(serverIDs, serverId)
                    writefile(serverHopData, httpService:JSONEncode(serverIDs))
                    teleportService:TeleportToPlaceInstance(game.PlaceId, serverId)
                    task.wait(4)
                    return
                end
            end
        end
    end

    while task.wait(1) do
        pcall(AttemptServerHop)

        if foundAnything ~= "" then
            pcall(AttemptServerHop)
        end
    end
end

local function OpenDevConsole()
    starterGui:SetCore("DevConsoleVisible", true) 
end

--// Queue on Teleport
local executeOnTeleport = true -- set to false if you dont want execution on server hop / rejoin

local validTeleportStates = {
    Enum.TeleportState.Started,
    Enum.TeleportState.InProgress,
    Enum.TeleportState.WaitingForServer
}

if queueteleport and typeof(queueteleport) == "function" and executeOnTeleport and not getgenv().Toolbox.QueueOnTeleport then
    getgenv().Toolbox.QueueOnTeleport = true
    game.Players.LocalPlayer.OnTeleport:Connect(function(state)
        if table.find(validTeleportStates, state) and getgenv().Toolbox.QueueOnTeleport and queueteleport then
            queueteleport([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
                task.wait(1)
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/main.lua"))()
            ]])
        end
    end)
elseif not queueteleport or typeof(queueteleport) ~= "function" then
    SendNotification("Incompatible Exploit. Your exploit does not support execute on teleport (missing queueteleport)")
end

--// Timer
local startTime = os.clock()
local endTime = os.clock()
local finalTime = endTime - startTime

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
local proximityPromptConn

--// Client Anti-Kick
local clientAntiKick
local oldhmmi
local oldhmmnc
local oldKickFunction

local index
xpcall(function()
    return game.nonexistent
end, function()
    index = debug.info(2, "f")
end)

if hookfunction and typeof(hookfunction) == "function" then
    oldKickFunction = hookfunction(player.Kick, newcclosure(function()
        if clientAntiKick then
            SendNotification("Blocked Kick Attempt (direct call)")
            return
        end
    end))
    
    oldhmmi = hookfunction(index, newcclosure(function(self, key)
        if clientAntiKick and self == player and key:lower() == "kick" then
            SendNotification("Blocked Kick Attempt (__index)")
            return
        end
        
        return oldhmmi(self, key)
    end))
    
    oldhmmnc = hookfunction(namecall, newcclosure(function(self, ...)
        if clientAntiKick and self == player and getnamecallmethod():lower() == "kick" then
            SendNotification("Blocked Kick Attempt (__namecall)")
            return
        end
        
        return oldhmmnc(self, ...)
    end))
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
    OpenDevConsole()
    print("Device:", platform)    
    print("Executor:", executorName)
    print("Executor Level:", executorLevel)
    
    local function DumpTable(tbl, indent, path, visited)
        indent = indent or ""
        path = path or ""
        visited = visited or {}

        if visited[tbl] then
            print(indent .. path .. " : [Circular Reference to " .. tostring(tbl) .. "]")
            return
        end
        visited[tbl] = true

        for k, v in pairs(tbl) do
            local currentPath = path ~= "" and (path .. "." .. tostring(k)) or tostring(k)
            local valueType = typeof(v)

            print(indent .. currentPath .. " : " .. valueType)

            if valueType == "table" then
                DumpTable(v, indent .. "  ", currentPath, visited)
            end
        end
    end
    
    print("Executor Environment:\n")
    DumpTable(getgenv())
end

--// Main UI
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Backups/Wizard-Backup.lua"))()

local PetewareToolbox = Library:NewWindow("Dev Toolbox | Peteware")

local Tools = PetewareToolbox:NewSection("Tools")

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
    local owner = "petewar3"
    local branch = "revision"
    
    local function WebImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide-Backup/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end
    
    WebImport("init")
    WebImport("ui/main")
end)

Tools:CreateButton("Ketamine", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Backups/Ketamine-Backup.lua"))()
end)

local InstanceScanner = PetewareToolbox:NewSection("Instance Scanner")

InstanceScanner:CreateButton("Fetch All Available Classes", function()
    OpenDevConsole()
    FetchAvailableClasses()
end)

InstanceScanner:CreateTextbox("Scan by Class", function(className)
    OpenDevConsole()
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
            if propName and inst[propName] then
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
        return SendNotification("Missing name or script input. Make sure to press enter after inputting details.")
    end

    writefile(addonsFolder .. "/" .. addonName, addonScript)
    SendNotification("Saved Addon: " .. addonName)
    task.delay(2, function()
        SendInteractiveNotification({
            Text = "Would you like to reload the Developers Toolbox to apply your addon changes?",
            Button1 = "Yes",
            Button2 = "No",
            Callback = function(value)
                if value == "Yes" then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/main.lua"))()
                end
            end
        })
    end)
end)

addonDropdown = Addons:CreateDropdown("Select Addon", addonList, 1, function(text)
    selectedAddon = text ~= "No Addons Found" and text or nil
end)

Addons:CreateButton("Load Selected Addon", function()
    if not selectedAddon then
        return SendNotification("No addon selected.")
    end

    local path = addonsFolder .. "/" .. selectedAddon .. ".lua"
    if not isfile(path) then 
        return SendNotification("Addon not found.") 
    end

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
                task.delay(2, function()
                    SendInteractiveNotification({
                        Text = "Would you like to reload the Developers Toolbox to apply your addon changes?",
                        Button1 = "Yes",
                        Button2 = "No",
                        Callback = function(value)
                            if value == "Yes" then
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/main.lua"))()
                            end
                        end
                    })
                end)
            elseif value == "No" then
                SendNotification("Addon deletion cancelled.")
            end
        end
    })
end)

local Other = PetewareToolbox:NewSection("Other")

Other:CreateToggle("Instant Prompts", function(value)
    if not fireproximityprompt or typeof(fireproximityprompt) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing fireproximityprompt)")
    end
    
    if instantProximityPrompts then
        proximityPromptConn = proximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
            if prompt.Duration > 0 then
                fireproximityprompt(prompt)
            end
        end)
        SendNotification("Instant Proximity Prompts Enabled. You can now instantly interact with Proximity Prompts.")
    else
        proximityPromptConn:Disconnect()
        proximityPromptConn = nil
        SendNotification("Instant Proximity Prompt Disabled. You are now unable to interact with Proximity Prompts instantly.")
    end
end)

Other:CreateToggle("Client Anti-Kick", function(value)
    clientAntiKick = value
    
    if not hookfunction or not typeof(hookfunction) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing hookfunction)")
    end
    
    if clientAntiKick then
        SendNotification("Client Anti-Kick Enabled.")
    else
        SendNotification("Client Anti-Kick Disabled.")
    end
end)

Other:CreateToggle("Notification Sounds", function(value)
    notificationSounds = value
    
    if notificationSounds then
        SendNotification("Notification Sounds Enabled.")
    else
        SendNotification("Notification Sounds Disabled.")
    end
end)

--// Notification Sounds Toggle Setup
local imageToggle = game:GetService("CoreGui").WizardLibrary.Container["DevToolbox|PetewareWindow"].Body.OtherSection.NotificationSoundsToggleHolder.ToggleBackground.ToggleButton
if imageToggle and firesignal then
    firesignal(imageToggle.MouseButton1Click)
elseif imageToggle then
    imageToggle.ImageTransparency = 0
end

Other:CreateButton("FPS Booster", function()
    PlayNotificationSound()
    getgenv().FPS_Booster_Settings = {
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/Backups/FPS-Booster-Backup.lua"))()
end)

Other:CreateButton("Executor Info", function()
    FetchExecutorInfo()
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
                pcall(function() 
                    coreGui:FindFirstChild("WizardLibrary"):Destroy()
                end)
            elseif value == "No" then
                SendNotification("Exit cancelled.")
            end
        end
    })
end)

--// UI Display Order
local newUI = coreGui:FindFirstChild("WizardLibrary")
if newUI then
    newUI.DisplayOrder = 10000
end

--// Events
local uiConn; uiConn = coreGui.ChildRemoved:Connect(function(child)
    if child.Name == "WizardLibrary" then
        uiConn:Disconnect()
        uiConn = nil
        
        if notificationSound then
            notificationSound:Destroy()
        end
        
        if clientAntiKick then
            clientAntiKick = nil
        end
        
        if proximityPromptConn then
            proximityPromptConn:Disconnect()
            proximityPromptConn = nil
        end
        
        if getgenv().Toolbox.QueueOnTeleport then
            getgenv().Toolbox.QueueOnTeleport = false
        end
    end
end)

--// Executing Finished
getgenv().Toolbox.Executing = nil

--[[// Credits
Infinite Yield: Server Hop, Dex Explorer, Remote Spy, Client-Anti-Kick
Infinite Yield Discord Server: https://discord.gg/78ZuWSq
Hosvile: Hydroxide 
Hosvile Github: https://github.com/hosvile/
Cherry: Ketamine
Cherry Discord Server: https://discord.gg/7xYqrnwSWr
RIP#6666: FPS Booster
RIP#6666 Discord Server: https://discord.gg/rips
]] 
