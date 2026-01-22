--[[
PLEASE READ - IMPORTANT

(C) 2026 Peteware
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
local global_env = getgenv() or shared

local cloneref = cloneref and clonefunction(cloneref) or function(...)
    return ...
end

if global_env.Toolbox and global_env.Toolbox.Executing then
    return cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
        Title = "Toolbox",
        Text = "Already Loading. Please Wait!",
        Icon = "rbxassetid://108052242103510",
        Duration = 3.5
    })
else
    global_env.Toolbox = {}
    global_env.Toolbox.Executing = true
    cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
        Title = "Toolbox",
        Text = "Developers Toolbox Loading! Please wait...",
        Icon = "rbxassetid://108052242103510",
        Duration = 3.5
    })
end

local yielding = false
local error_yielded = false
local loadstring_event = Instance.new("BindableEvent")

if global_env.Toolbox.ErrorScheduled == nil then
    global_env.Toolbox.ErrorScheduled = true
    
    loadstring_event.Event:Connect(function()
        if loadstring_event then
            loadstring_event:Destroy()
        end
        
        global_env.Toolbox.ErrorScheduled = nil
        
        while yielding do
            error_yielded = true
            task.wait()
            break
        end
        
        if error_yielded then
            task.wait(4)
        end
        
        if global_env.Toolbox.Executing then
            global_env.Toolbox.Executing = nil
            
            if cancel_toolbox_loading then
                return
            end
            
            local error_sound = Instance.new("Sound")
            error_sound.Name = "PetewareErrorNotification"
            error_sound.SoundId = "rbxassetid://9066167010"
            error_sound.Volume = 1
            error_sound.Archivable = false
            error_sound.Parent = cloneref(game:GetService("SoundService"))
        
            pcall(function() 
                error_sound:Play()
                error_sound.Ended:Once(function()
                    error_sound:Destroy()
                end)
            end)
        
            cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
                Title = "Toolbox",
                Text = "An error has occured while loading the toolbox, Please try and rexecute. If this problem persists please report this to 584h with console logs.",
                Icon = "rbxassetid://108052242103510",
                Duration = 4.5
            })
        end
    end)
end

--// Services & Setup
local function IncompatibleExploit()
    local error_sound = Instance.new("Sound")
    error_sound.Name = "PetewareErrorNotification"
    error_sound.SoundId = "rbxassetid://9066167010"
    error_sound.Volume = 1
    error_sound.Archivable = false
    error_sound.Parent = sound_service
        
    pcall(function() 
        error_sound:Play()
        error_sound.Ended:Once(function()
            error_sound:Destroy()
        end)
    end)

    cloneref(game:GetService("StarterGui")):SetCore("SendNotification", {
        Title = "Toolbox",
        Text = "Incompatible Exploit. Your exploit does not support the toolbox (missing " .. tostring(v) .. ")",
        Icon = bell_ring,
        Duration = duration or 3.5
    })
end

if not loadstring or typeof(loadstring) ~= "function" then
    return IncompatibleExploit()
end

local toolbox_directory = "https://raw.githubusercontent.com/petewar3/Developer-Toolbox/refs/heads/main/"
local extra_functions_directory = toolbox_directory .. "ExtraFunctions/"
local backups_directory = toolbox_directory .. "Backups/"
local assets_directory = toolbox_directory .. "Assets/"
local audios_directory = assets_directory .. "Audios/"
local images_directory = assets_directory .. "Images/"

local extra_functions = {
    "clonefunction",
    "hookmetamethod",
    "checkcaller"
}

local backups = {
    "FPS-Booster-Backup",
    "Ketamine-Backup",
    "Wizard-Backup"
}

local audios = {
    "bell-ring"
}

local images = {
    "bell-ring"
}

local loaded_functions = {}
local loaded_backups = {}
local loaded_audios = {}
local loaded_images = {}

yielding = true
loadstring_event:Fire()

for _, func in ipairs(extra_functions) do
    local success, loaded_function = pcall(function()
        return loadstring(game:HttpGet(extra_functions_directory .. func .. ".lua"))()()
    end)
    
    if not success or not loaded_function then
        yielding = false
        return
    end
    
    loaded_functions[func] = loaded_function
end

for _, backup in ipairs(backups) do
    local success, loaded_backup = pcall(function()
        return loadstring(game:HttpGet(backups_directory .. backup .. ".lua"))
    end)
    
    if not success or not loaded_backup then
        yielding = false
        return
    end
    
    loaded_backups[backup:gsub("-Backup", "")] = loaded_backup
end

for _, audio in ipairs(audios) do
    local success, loaded_audio = pcall(function()
        return game:HttpGet(audios_directory .. audio .. ".mp3")
    end)
    
    if not success or not loaded_audio then
        yielding = false
        return
    end
    
    loaded_audios[audio] = loaded_audio
end

for _, image in ipairs(images) do
    local success, loaded_image = pcall(function()
        return game:HttpGet(images_directory .. image .. ".png")
    end)
    
    if not success or not loaded_image then
        yielding = false
        return
    end
    
    loaded_images[image] = loaded_image
end

yielding = false

local clonefunction = clonefunction or loaded_functions.clonefunction
local hookmetamethod = hookmetamethod and clonefunction(hookmetamethod) or loaded_functions.hookmetamethod
local checkcaller = checkcaller and clonefunction(checkcaller) or loaded_functions.checkcaller

local newcclosure = newcclosure and clonefunction(newcclosure) or function(func)
    return func
end

local loadstring = loadstring and clonefunction(loadstring)
local customasset = (getcustomasset or getsynasset) and clonefunction(getcustomasset or getsynasset)
local makefolder = makefolder and clonefunction(makefolder)
local isfolder = isfolder and clonefunction(isfolder)
local writefile = writefile and clonefunction(writefile)
local isfile = isfile and clonefunction(isfile)
local readfile = readfile and clonefunction(readfile)
local delfile = delfile and clonefunction(delfile)
local httprequest = ((syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request) and clonefunction((syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request)
local queueteleport = ((syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)) and clonefunction((syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport))
local setclip = (setclipboard or (syn and syn.setclipboard) or (Clipboard and Clipboard.set)) and clonefunction(setclipboard or (syn and syn.setclipboard) or (Clipboard and Clipboard.set))
local fireproximityprompt = fireproximityprompt and clonefunction(fireproximityprompt)
local hookfunction = hookfunction and clonefunction(hookfunction)
local identifyexecutor = identifyexecutor and clonefunction(identifyexecutor)
local getthreadcontext = getthreadcontext and clonefunction(getthreadcontext)
local newcclosure = clonefunction(newcclosure)
local firesignal = firesignal and clonefunction(firesignal)
local getnamecallmethod = getnamecallmethod and clonefunction(getnamecallmethod)

local player = clonref(game:GetService("Players")).LocalPlayer
local core_gui = cloneref(game:GetService("CoreGui"))
local starter_gui = cloneref(game:GetService("starter_gui"))
local teleport_service = cloneref(game:GetService("teleport_service"))
local http_service = cloneref(game:GetService("http_service"))
local user_input_service = cloneref(game:GetService("user_input_service"))
local sound_service = cloneref(game:GetService("SoundService"))

--// Executor Compatibility Check
local required_functions = {
    makefolder,
    isfolder,
    writefile,
    isfile,
    readfile,
    loadstring
}

for _, func in ipairs(required_functions) do
    if not func or typeof(func) ~= "function" then
        return IncompatibleExploit()
    end
end

--// UI Cleanup
local wizard_library = cloneref(core_gui:FindFirstChild("WizardLibrary"))
if wizard_library then
    wizard_library:Destroy()
end

task.wait(1)

--// Detection Handler
local detected = false -- change this to true if you want the toolbox to be detected by in-game anti-cheat. useful when testing anti-cheats

local function SendNotification() end
local function SendInteractiveNotification() end

local function HandleDetections(boolean)
    local hook_required_functions = {
        "hookmetamethod",
        "checkcaller",
        "cloneref",
        "getnamecallmethod"
    }
    
    for _, func in ipairs(hook_required_functions) do
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
    
    local content_provider = cloneref(game:GetService("ContentProvider"))
    
    local old; old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        if not checkcaller() then
            local method = getnamecallmethod()
        
            if self == content_provider and method == "GetAssetFetchStatus" then
                return Enum.AssetFetchStatus.None
            end
        end
        
        return old(self, ...)
    end))
    
    return false
end

--// Data Handler
local main_folder = "Peteware"
local toolbox_folder = main_folder .. "/Toolbox"
local assets_folder = toolbox_folder .. "/Assets"
local audios_folder = assets_folder .. "/Audios"
local images_folder = assets_folder .. "/Images"

local bell_ring_png = images_folder .. "/bell-ring.png"
local bell_ring_mp3 = audios_folder .. "/bell-ring.mp3"

if not isfolder(main_folder) then
    makefolder(main_folder)
end

if not isfolder(toolbox_folder) then
    makefolder(toolbox_folder)
end

if not isfolder(assets_folder) then
    makefolder(assets_folder)
end

if not isfolder(audios_folder) then
    makefolder(audios_folder)
end

if not isfolder(images_folder) then
    makefolder(images_folder)
end

if not isfile(bell_ring_png) then
    writefile(bell_ring_png, loaded_images["bell-ring"])
end

if not isfile(bell_ring_mp3) then
    writefile(bell_ring_mp3, loaded_audios["bell-ring"])
end

--// Notification Sender
local notification_sound = Instance.new("Sound", sound_service)
notification_sound.Name = "PetewareNotification"
notification_sound.SoundId = customasset(bell_ring_mp3) or "rbxassetid://2502368191"
notification_sound.Volume = 1
notification_sound.Archivable = false
    
notification_sound.Loaded:Wait()

if customasset and bell_ring_png then
    bell_ring_png = customasset(bell_ring_png)
end

if not bell_ring_png then
    bell_ring_png = "rbxassetid://108052242103510"
end

local notification_sounds = true
local function PlayNotificationSound()
    if notification_sound and notification_sounds then
        notification_sound:Play()
    end
end

function SendNotification(text, duration)
    PlayNotificationSound()
    
    starter_gui:SetCore("SendNotification", {
        Title = "Toolbox",
        Text = text or "Text Content not specified.",
        Icon = bell_ring_png,
        Duration = duration or 3.5
    })
end

function SendInteractiveNotification(options, yield)
    PlayNotificationSound()
    
    local bindable = Instance.new("BindableFunction")
    local response_event = Instance.new("BindableEvent")

    local text = options.Text or "Are you sure?"
    local duration = (yield and 1e9) or options.Duration or 3.5
    local button1 = options.Button1 or "Yes"
    local button2 = options.Button2 or "No"
    local callback = options.Callback

    bindable.OnInvoke = function(value)
        if callback then
            callback(value)
        end
        
        response_event:Fire(value)
        
        if bindable then
            bindable:Destroy()
        end
        
        if response_event then
            response_event:Destroy()
        end
        
        yielding = false
    end

    starter_gui:SetCore("SendNotification", {
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
        
        if response_event then
            response_event:Destroy()
        end
    end)
    
    if yield then
        yielding = true
        local response = response_event.Event:Wait()
        return response
    end
end

local cancel_toolbox_loading = HandleDetections(detected)
if cancel_toolbox_loading then
    return Notify("Toolbox loading cancelled.")
end

local optional_functions = {
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
    getthreadcontext,
    firesignal,
    cloneref,
    clonefunction,
    checkcaller,
    hookmetamethod,
    getnamecallmethod
}

local compatibility_count = 0
for _, v in ipairs(optional_functions) do
    if v then
        compatibility_count = compatibility_count + 1
    end
end

local compatibility_percentage = (compatibility_count / #optional_functions) * 100

if compatibility_percentage == 100 then
    SendNotification(string.format("Your executor is %.0f%% compatible. All toolbox features should work as expected.", compatibility_percentage), 4)
else
    SendNotification(string.format("Your executor is %.0f%% compatible. Some toolbox features may not be compatible with this executor.", compatibility_percentage), 4)
end

if not global_env.clonefunction or not global_env.checkcaller or (not global_env.hookmetamethod and hookmetamethod) then
    SendInteractiveNotification({
        Text = "Some executor functions are missing. Would you like to patch them for better script compatibility across other scripts?",
        Button1 = "Yes",
        Button2 = "No",
        Duration = 10,
        Callback = function(value)
            if value == "Yes" then
                if not global_env.clonefunction then
                    global_env.clonefunction = clonefunction
                    SendNotification("Patched: clonefunction")
                end
                
                if not global_env.checkcaller then
                    global_env.checkcaller = clonefunction(checkcaller)
                    SendNotification("Patched: checkcaller")
                end
                
                if not global_env.hookmetamethod and hookmetamethod then
                    global_env.hookmetamethod = clonefunction(hookmetamethod)
                    SendNotification("Patched: hookmetamethod")
                end
            end
        end
    })
end
    
--// Basic Device Detection
local device
if user_input_service.KeyboardEnabled and user_input_service.MouseEnabled then
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
            teleport_service:TeleportToPlaceInstance(game.placeId, game.jobId)
        end
    end)
end

--// Server Hop
local server_hop_data = toolbox_folder .. "server-hop-data-temp.json"

local server_ids = {}
local found_any_servers = ""
local actual_hour = os.date("!*t").hour

if isfile(server_hop_data) then
    server_ids = http_service:JSONDecode(readfile(server_hop_data))
end

if typeof(server_ids) ~= "table" or #server_ids == 0 then
    server_ids = { actual_hour }
    writefile(server_hop_data, http_service:JSONEncode(server_ids))
end

local function ServerHop()
    SendNotification("Attempting to Server Hop")
    local function AttemptServerHop()
        local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

        if found_any_servers ~= "" then
            url = url .. "&cursor=" .. found_any_servers
        end

        local success, site = pcall(function()
            return http_service:JSONDecode(game:HttpGet(url))
        end)

        if not success or not site or not site.data then
            return
        end

        if site.nextPageCursor then
            found_any_servers = site.nextPageCursor
        end

        for _, v in pairs(site.data) do
            if v.playing < v.maxPlayers then
                local server_id = tostring(v.id)
                local can_server_hop = true

                for i, existing in pairs(server_ids) do
                    if i == 1 and existing ~= actual_hour then
                        if delfile then
                            delfile(server_hop_data)
                        end
                        server_ids = { actual_hour }
                        break
                    end

                    if server_id == tostring(existing) then
                        can_server_hop = false
                        break
                    end
                end

                if can_server_hop then
                    table.insert(server_ids, server_id)
                    writefile(server_hop_data, http_service:JSONEncode(server_ids))
                    teleport_service:TeleportToPlaceInstance(game.PlaceId, server_id)
                    task.wait(4)
                    return
                end
            end
        end
    end

    while task.wait(1) do
        pcall(AttemptServerHop)

        if found_any_servers ~= "" then
            pcall(AttemptServerHop)
        end
    end
end

local function OpenDevConsole()
    starter_gui:SetCore("DevConsoleVisible", true) 
end

--// Queue on Teleport
local execute_on_teleport = true -- set to false if you dont want execution on server hop / rejoin

local valid_teleport_states = {
    Enum.TeleportState.Started,
    Enum.TeleportState.InProgress,
    Enum.TeleportState.WaitingForServer
}

if queueteleport and typeof(queueteleport) == "function" and execute_on_teleport and not global_env.Toolbox.QueueOnTeleport then
    global_env.Toolbox.QueueOnTeleport = true
    game.Players.LocalPlayer.OnTeleport:Connect(function(state)
        if table.find(valid_teleport_states, state) and global_env.Toolbox.QueueOnTeleport and queueteleport then
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
local start_time = os.clock()
local end_time = os.clock()
local final_time = end_time - start_time

--// Class Scanning
local show_properties = {
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

local found_classes = {}
local order_list = {}
local in_show_props = nil
local property = nil

local function FetchAvailableClasses()
    start_time = os.clock()
    print([[[Toolbox]: Scanning for Available Classes...

---------------------------------------------------------------------------------------------------------------------------

        ]])
    
    found_classes = {}

    for _, instance in pairs(game:GetDescendants()) do
        found_classes[instance.ClassName] = true
    end
    
    order_list = {}
    for class_name in pairs(found_classes) do
        table.insert(order_list, class_name)
    end
    table.sort(order_list)

    for _, class_name in ipairs(order_list) do
    property = show_properties[class_name]
    if property then
        print(string.format(
            "Name â†’ %s | show_properties table = true | PropertyShown = %s",
            class_name,
            tostring(property)
        ))
    else
        print(string.format(
            "Name â†’ %s | show_properties table = false",
            class_name
        ))
    end
end

    end_time = os.clock()
    final_time = end_time - start_time
    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds.

---------------------------------------------------------------------------------------------------------------------------

        ]], final_time))
end

--// Addons Handler
local addons_folder = toolbox_folder .. "/Addons"

if not isfolder(addons_folder) then
    makefolder(addons_folder)
end

local addon_name
local addon_script
local selected_addon
local addon_dropdown

local function FetchAddonList()
    local files = listfiles(addons_folder)
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

local addon_list = FetchAddonList()
if #addon_list == 0 then
    table.insert(addon_list, "No Addons Found")
end

--// Instant Proximity Prompts
local proximity_prompt_service = cloneref(game:GetService("ProximityPromptService"))
local proximity_prompt_conn

--// Client Anti-Kick
local client_anti_kick
local oldhmmi
local oldhmmnc
local old_kick_function

if hookfunction and typeof(hookfunction) == "function" then
    old_kick_function = hookfunction(player.Kick, newcclosure(function()
        if client_anti_kick then
            SendNotification("Blocked Kick Attempt (direct call)")
            return
        end
    end))
    
    oldhmmi = hookmetamethod(player, "__index", newcclosure(function(self, key)
        if client_anti_kick and self == player and key:lower() == "kick" then
            SendNotification("Blocked Kick Attempt (__index)")
            return
        end
        
        return oldhmmi(self, key)
    end))
    
    oldhmmnc = hookmetamethod(player, "__namecall", newcclosure(function(self, ...)
        if client_anti_kick and self == player and getnamecallmethod():lower() == "kick" then
            SendNotification("Blocked Kick Attempt (__namecall)")
            return
        end
        
        return oldhmmnc(self, ...)
    end))
end

--// Executor Statistics
local platform = user_input_service:GetPlatform()
if platform == Enum.Platform.OSX then
    platform = "MacOS"
else
    platform = platform.Name
end

local executor_name = identifyexecutor and identifyexecutor() or "Unknown"
local executor_level = getthreadcontext and getthreadcontext() or "Unknown"

local function FetchExecutorInfo()
    OpenDevConsole()
    print("Device:", platform)    
    print("Executor:", executor_name)
    print("Executor Level:", executor_level)
    
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
            local current_path = path ~= "" and (path .. "." .. tostring(k)) or tostring(k)
            local value_type = typeof(v)

            print(indent .. current_path .. " : " .. value_type)

            if value_type == "table" then
                DumpTable(v, indent .. "  ", current_path, visited)
            end
        end
    end
    
    print("Executor Environment:\n")
    DumpTable(global_env)
end

--// Main UI
local Library = loaded_backups.Wizard()

local DeveloperToolbox = Library:NewWindow("Dev Toolbox | Peteware")

local Tools = DeveloperToolbox:NewSection("Tools")

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

Tools:CreateButton("Ketamine", loaded_backups.Ketamine)

local InstanceScanner = DeveloperToolbox:NewSection("Instance Scanner")

InstanceScanner:CreateButton("Fetch All Available Classes", function()
    OpenDevConsole()
    FetchAvailableClasses()
end)

InstanceScanner:CreateTextbox("Scan by Class", function(class_name)
    OpenDevConsole()
    local start_time = os.clock()
    local found_instance_class = false

    print(string.format([[
[Toolbox]: Scanning for Instances of Class: %s

---------------------------------------------------------------------------------------------------------------------------

]], class_name))

    for _, inst in ipairs(game:GetDescendants()) do
        if inst.ClassName == class_name then
            found_instance_class = true

            local output = "Name â†’ " .. inst.Name .. " | Path â†’ " .. inst:GetFullName()
            local property_name = show_properties[class_name]
            if property_name and inst[property_name] then
                output = output .. " | " .. property_name .. " = " .. tostring(inst[property_name])
            end

            print(output)
        end
    end

    if not found_instance_class then
        warn(string.format("[Toolbox]: No instances of class '%s' were found.", class_name))
    end

    local end_time = os.clock()
    local final_time = end_time - start_time

    print(string.format([[
[Toolbox]: Scan completed in %.4f seconds.

---------------------------------------------------------------------------------------------------------------------------

]], final_time))
end)

local Addons = DeveloperToolbox:NewSection("Addons")

Addons:CreateTextbox("Input Script Name", function(text)
    addon_name = text:gsub("%.lua$", "") .. ".lua"
end)

Addons:CreateTextbox("Input Script", function(text)
    addon_script = text
end)

Addons:CreateButton("Save Addon", function()
    if not addon_name or addon_name == "" or not addon_script or addon_script == "" then
        return SendNotification("Missing name or script input. Make sure to press enter after inputting details.")
    end

    writefile(addons_folder .. "/" .. addon_name, addon_script)
    SendNotification("Saved Addon: " .. addon_name)
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

addon_dropdown = Addons:CreateDropdown("Select Addon", addon_list, 1, function(text)
    selected_addon = text ~= "No Addons Found" and text or nil
end)

Addons:CreateButton("Load Selected Addon", function()
    if not selected_addon then
        return SendNotification("No addon selected.")
    end

    local path = addons_folder .. "/" .. selected_addon .. ".lua"
    if not isfile(path) then 
        return SendNotification("Addon not found.") 
    end

    local success, result = pcall(function()
        loadstring(readfile(path))()
    end)

    if success then
        SendNotification("Loaded Addon: " .. selected_addon)
    else
        SendNotification("Error loading addon:\n" .. tostring(result))
    end
end)

Addons:CreateButton("Delete Selected Addon", function()
    if not selected_addon then
        return SendNotification("No addon selected.")
    end

    local path = addons_folder .. "/" .. selected_addon .. ".lua"
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
                selected_addon = nil
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

local Other = DeveloperToolbox:NewSection("Other")

Other:CreateToggle("Instant Prompts", function(value)
    if not fireproximityprompt or typeof(fireproximityprompt) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing fireproximityprompt)")
    end
    
    if value then
        proximity_prompt_conn = proximity_prompt_service.PromptButtonHoldBegan:Connect(function(prompt)
            if prompt.HoldDuration > 0 then
                fireproximityprompt(prompt)
            end
        end)
        SendNotification("Instant Proximity Prompts Enabled. You can now instantly interact with Proximity Prompts.")
    else
        proximity_prompt_conn:Disconnect()
        proximity_prompt_conn = nil
        SendNotification("Instant Proximity Prompt Disabled. You are now unable to interact with Proximity Prompts instantly.")
    end
end)

Other:CreateToggle("Client Anti-Kick", function(value)
    client_anti_kick = value
    
    if not hookfunction or typeof(hookfunction) ~= "function" then
        return SendNotification("Incompatible Exploit. Your exploit does not support this feature (missing hookfunction)")
    end
    
    if client_anti_kick then
        SendNotification("Client Anti-Kick Enabled.")
    else
        SendNotification("Client Anti-Kick Disabled.")
    end
end)

Other:CreateToggle("Notification Sounds", function(value)
    notification_sounds = value
    
    if notification_sounds then
        SendNotification("Notification Sounds Enabled.")
    else
        SendNotification("Notification Sounds Disabled.")
    end
end)

--// Notification Sounds Toggle Setup
local image_toggle = cloneref(core_gui.WizardLibrary.Container["DevToolbox|PetewareWindow"].Body.OtherSection.NotificationSoundsToggleHolder.ToggleBackground.ToggleButton)
if image_toggle then
    image_toggle.ImageTransparency = 0
end

Other:CreateButton("FPS Booster", function()
    PlayNotificationSound()
    global_env.FPS_Booster_Settings = {
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
    loaded_backups["FPS-Booster"]()
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
                    core_gui:FindFirstChild("WizardLibrary"):Destroy()
                end)
            elseif value == "No" then
                SendNotification("Exit cancelled.")
            end
        end
    })
end)

--// UI Display Order
local toolbox_ui = core_gui:FindFirstChild("WizardLibrary")
if toolbox_ui then
    toolbox_ui.DisplayOrder = 10000
end

--// Events
local ui_handler_conn; ui_handler_conn = core_gui.ChildRemoved:Connect(function(child)
    if child == toolbox_ui then
        ui_handler_conn:Disconnect()
        ui_handler_conn = nil
        
        if notification_sound then
            notification_sound:Destroy()
        end
        
        if client_anti_kick then
            client_anti_kick = nil
        end
        
        if proximity_prompt_conn then
            proximity_prompt_conn:Disconnect()
            proximity_prompt_conn = nil
        end
        
        if global_env.Toolbox.QueueOnTeleport then
            global_env.Toolbox.QueueOnTeleport = false
        end
    end
end)

--// Executing Finished
global_env.Toolbox.Executing = nil

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
