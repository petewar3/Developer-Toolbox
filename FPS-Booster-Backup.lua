-- MADE BY RIP#6666
-- send issues or suggestions to my discord: discord.gg/rips

if not getgenv().Ignore then
    getgenv().Ignore = {} -- Add Instances to this table to ignore them (e.g. getgenv().Ignore = {workspace.Map, workspace.Map2})
end
if getgenv().SendNotifications == nil then
    getgenv().SendNotifications = true -- Set to false if you don't want notifications
end
if getgenv().ConsoleLogs == nil then
    getgenv().ConsoleLogs = false -- Set to true if you want console logs (mainly for debugging)
end



if not game:IsLoaded() then
    repeat
        task.wait()
    until game:IsLoaded()
end
if not getgenv().Settings then
    getgenv().Settings = {
        Players = {
            ["Ignore Me"] = true,
            ["Ignore Others"] = true,
            ["Ignore Tools"] = true
        },
        Meshes = {
            NoMesh = false,
            NoTexture = false,
            Destroy = false
        },
        Images = {
            Invisible = true,
            Destroy = false
        },
        Explosions = {
            Smaller = true,
            Invisible = false, -- Not recommended for PVP games
            Destroy = false -- Not recommended for PVP games
        },
        Particles = {
            Invisible = true,
            Destroy = false
        },
        TextLabels = {
            LowerQuality = false,
            Invisible = false,
            Destroy = false
        },
        MeshParts = {
            LowerQuality = true,
            Invisible = false,
            NoTexture = false,
            NoMesh = false,
            Destroy = false
        },
        Other = {
            ["FPS Cap"] = true, -- Set this true to uncap FPS
            ["No Camera Effects"] = true,
            ["No Clothes"] = true,
            ["Low Water Graphics"] = true,
            ["No Shadows"] = true,
            ["Low Rendering"] = true,
            ["Low Quality Parts"] = true,
            ["Low Quality Models"] = true,
            ["Reset Materials"] = true,
            ["Lower Quality MeshParts"] = true,
            ClearNilInstances = false
        }
    }
end
local Players, Lighting, StarterGui, MaterialService = game:GetService("Players"), game:GetService("Lighting"), game:GetService("StarterGui"), game:GetService("MaterialService")
local ME, CanBeEnabled = Players.LocalPlayer, {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles"}
local function PartOfCharacter(Inst)
    for i, v in pairs(Players:GetPlayers()) do
        if v ~= ME and v.Character and Inst:IsDescendantOf(v.Character) then
            return true
        end
    end
    return false
end
local function DescendantOfIgnore(Inst)
    for i, v in pairs(getgenv().Ignore) do
        if Inst:IsDescendantOf(v) then
            return true
        end
    end
    return false
end
local function CheckIfBad(Inst)
    if not Inst:IsDescendantOf(Players) and (getgenv().Settings.Players["Ignore Others"] and not PartOfCharacter(Inst) 
    or not getgenv().Settings.Players["Ignore Others"]) and (getgenv().Settings.Players["Ignore Me"] and ME.Character and not Inst:IsDescendantOf(ME.Character) 
    or not getgenv().Settings.Players["Ignore Me"]) and (getgenv().Settings.Players["Ignore Tools"] and not Inst:IsA("BackpackItem") and not Inst:FindFirstAncestorWhichIsA("BackpackItem") 
    or not getgenv().Settings.Players["Ignore Tools"]) and (getgenv().Ignore and not table.find(getgenv().Ignore, Inst) and not DescendantOfIgnore(Inst) 
    or (not getgenv().Ignore or type(getgenv().Ignore) ~= "table" or #getgenv().Ignore <= 0)) then
        if Inst:IsA("DataModelMesh") then
            if Inst:IsA("SpecialMesh") then
                if getgenv().Settings.Meshes.NoMesh then
                    Inst.MeshId = ""
                end
                if getgenv().Settings.Meshes.NoTexture then
                    Inst.TextureId = ""
                end
            end
            if getgenv().Settings.Meshes.Destroy or getgenv().Settings["No Meshes"] then
                Inst:Destroy()
            end
        elseif Inst:IsA("FaceInstance") then
            if getgenv().Settings.Images.Invisible then
                Inst.Transparency = 1
                Inst.Shiny = 1
            end
            if getgenv().Settings.Images.LowDetail then
                Inst.Shiny = 1
            end
            if getgenv().Settings.Images.Destroy then
                Inst:Destroy()
            end
        elseif Inst:IsA("ShirtGraphic") then
            if getgenv().Settings.Images.Invisible then
                Inst.Graphic = ""
            end
            if getgenv().Settings.Images.Destroy then
                Inst:Destroy()
            end
        elseif table.find(CanBeEnabled, Inst.ClassName) then
            if getgenv().Settings["Invisible Particles"] or getgenv().Settings["No Particles"] or (getgenv().Settings.Other and getgenv().Settings.Other["Invisible Particles"]) or (getgenv().Settings.Particles and getgenv().Settings.Particles.Invisible) then
                Inst.Enabled = false
            end
            if (getgenv().Settings.Other and getgenv().Settings.Other["No Particles"]) or (getgenv().Settings.Particles and getgenv().Settings.Particles.Destroy) then
                Inst:Destroy()
            end
        elseif Inst:IsA("PostEffect") and (getgenv().Settings["No Camera Effects"] or (getgenv().Settings.Other and getgenv().Settings.Other["No Camera Effects"])) then
            Inst.Enabled = false
        elseif Inst:IsA("Explosion") then
            if getgenv().Settings["Smaller Explosions"] or (getgenv().Settings.Other and getgenv().Settings.Other["Smaller Explosions"]) or (getgenv().Settings.Explosions and getgenv().Settings.Explosions.Smaller) then
                Inst.BlastPressure = 1
                Inst.BlastRadius = 1
            end
            if getgenv().Settings["Invisible Explosions"] or (getgenv().Settings.Other and getgenv().Settings.Other["Invisible Explosions"]) or (getgenv().Settings.Explosions and getgenv().Settings.Explosions.Invisible) then
                Inst.BlastPressure = 1
                Inst.BlastRadius = 1
                Inst.Visible = false
            end
            if getgenv().Settings["No Explosions"] or (getgenv().Settings.Other and getgenv().Settings.Other["No Explosions"]) or (getgenv().Settings.Explosions and getgenv().Settings.Explosions.Destroy) then
                Inst:Destroy()
            end
        elseif Inst:IsA("Clothing") or Inst:IsA("SurfaceAppearance") or Inst:IsA("BaseWrap") then
            if getgenv().Settings["No Clothes"] or (getgenv().Settings.Other and getgenv().Settings.Other["No Clothes"]) then
                Inst:Destroy()
            end
        elseif Inst:IsA("BasePart") and not Inst:IsA("MeshPart") then
            if getgenv().Settings["Low Quality Parts"] or (getgenv().Settings.Other and getgenv().Settings.Other["Low Quality Parts"]) then
                Inst.Material = Enum.Material.Plastic
                Inst.Reflectance = 0
            end
        elseif Inst:IsA("TextLabel") and Inst:IsDescendantOf(workspace) then
            if getgenv().Settings["Lower Quality TextLabels"] or (getgenv().Settings.Other and getgenv().Settings.Other["Lower Quality TextLabels"]) or (getgenv().Settings.TextLabels and getgenv().Settings.TextLabels.LowerQuality) then
                Inst.Font = Enum.Font.SourceSans
                Inst.TextScaled = false
                Inst.RichText = false
                Inst.TextSize = 14
            end
            if getgenv().Settings["Invisible TextLabels"] or (getgenv().Settings.Other and getgenv().Settings.Other["Invisible TextLabels"]) or (getgenv().Settings.TextLabels and getgenv().Settings.TextLabels.Invisible) then
                Inst.Visible = false
            end
            if getgenv().Settings["No TextLabels"] or (getgenv().Settings.Other and getgenv().Settings.Other["No TextLabels"]) or (getgenv().Settings.TextLabels and getgenv().Settings.TextLabels.Destroy) then
                Inst:Destroy()
            end
        elseif Inst:IsA("Model") then
            if getgenv().Settings["Low Quality Models"] or (getgenv().Settings.Other and getgenv().Settings.Other["Low Quality Models"]) then
                Inst.LevelOfDetail = 1
            end
        elseif Inst:IsA("MeshPart") then
            if getgenv().Settings["Low Quality MeshParts"] or (getgenv().Settings.Other and getgenv().Settings.Other["Low Quality MeshParts"]) or (getgenv().Settings.MeshParts and getgenv().Settings.MeshParts.LowerQuality) then
                Inst.RenderFidelity = 2
                Inst.Reflectance = 0
                Inst.Material = Enum.Material.Plastic
            end
            if getgenv().Settings["Invisible MeshParts"] or (getgenv().Settings.Other and getgenv().Settings.Other["Invisible MeshParts"]) or (getgenv().Settings.MeshParts and getgenv().Settings.MeshParts.Invisible) then
                Inst.Transparency = 1
                Inst.RenderFidelity = 2
                Inst.Reflectance = 0
                Inst.Material = Enum.Material.Plastic
            end
            if getgenv().Settings.MeshParts and getgenv().Settings.MeshParts.NoTexture then
                Inst.TextureID = ""
            end
            if getgenv().Settings.MeshParts and getgenv().Settings.MeshParts.NoMesh then
                Inst.MeshId = ""
            end
            if getgenv().Settings["No MeshParts"] or (getgenv().Settings.Other and getgenv().Settings.Other["No MeshParts"]) or (getgenv().Settings.MeshParts and getgenv().Settings.MeshParts.Destroy) then
                Inst:Destroy()
            end
        end
    end
end
if getgenv().SendNotifications then
    StarterGui:SetCore("SendNotification", {
        Title = "discord.gg/rips",
        Text = "Loading FPS Booster...",
        Duration = math.huge,
        Button1 = "Okay"
    })
end
coroutine.wrap(pcall)(function()
    if (getgenv().Settings["Low Water Graphics"] or (getgenv().Settings.Other and getgenv().Settings.Other["Low Water Graphics"])) then
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if not terrain then
            repeat
                task.wait()
            until workspace:FindFirstChildOfClass("Terrain")
            terrain = workspace:FindFirstChildOfClass("Terrain")
        end
        terrain.WaterWaveSize = 0
        terrain.WaterWaveSpeed = 0
        terrain.WaterReflectance = 0
        terrain.WaterTransparency = 0
        if sethiddenproperty then
            sethiddenproperty(terrain, "Decoration", false)
        else
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Your exploit does not support sethiddenproperty, please use a different exploit.",
                Duration = 5,
                Button1 = "Okay"
            })
            warn("Your exploit does not support sethiddenproperty, please use a different exploit.")
        end
        if getgenv().SendNotifications then
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Low Water Graphics Enabled",
                Duration = 5,
                Button1 = "Okay"
            })
        end
        if getgenv().ConsoleLogs then
            warn("Low Water Graphics Enabled")
        end
    end
end)
coroutine.wrap(pcall)(function()
    if getgenv().Settings["No Shadows"] or (getgenv().Settings.Other and getgenv().Settings.Other["No Shadows"]) then
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        Lighting.ShadowSoftness = 0
        if sethiddenproperty then
            sethiddenproperty(Lighting, "Technology", 2)
        else
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Your exploit does not support sethiddenproperty, please use a different exploit.",
                Duration = 5,
                Button1 = "Okay"
            })
            warn("Your exploit does not support sethiddenproperty, please use a different exploit.")
        end
        if getgenv().SendNotifications then
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "No Shadows Enabled",
                Duration = 5,
                Button1 = "Okay"
            })
        end
        if getgenv().ConsoleLogs then
            warn("No Shadows Enabled")
        end
    end
end)
coroutine.wrap(pcall)(function()
    if getgenv().Settings["Low Rendering"] or (getgenv().Settings.Other and getgenv().Settings.Other["Low Rendering"]) then
        settings().Rendering.QualityLevel = 1
        settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
        if getgenv().SendNotifications then
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Low Rendering Enabled",
                Duration = 5,
                Button1 = "Okay"
            })
        end
        if getgenv().ConsoleLogs then
            warn("Low Rendering Enabled")
        end
    end
end)
coroutine.wrap(pcall)(function()
    if getgenv().Settings["Reset Materials"] or (getgenv().Settings.Other and getgenv().Settings.Other["Reset Materials"]) then
        for i, v in pairs(MaterialService:GetChildren()) do
            v:Destroy()
        end
        MaterialService.Use2022Materials = false
        if getgenv().SendNotifications then
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Reset Materials Enabled",
                Duration = 5,
                Button1 = "Okay"
            })
        end
        if getgenv().ConsoleLogs then
            warn("Reset Materials Enabled")
        end
    end
end)
coroutine.wrap(pcall)(function()
    if getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"]) then
        if setfpscap then
            if type(getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"])) == "string" or type(getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"])) == "number" then
                setfpscap(tonumber(getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"])))
                if getgenv().SendNotifications then
                    StarterGui:SetCore("SendNotification", {
                        Title = "discord.gg/rips",
                        Text = "FPS Capped to " .. tostring(getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"])),
                        Duration = 5,
                        Button1 = "Okay"
                    })
                end
                if getgenv().ConsoleLogs then
                    warn("FPS Capped to " .. tostring(getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"])))
                end
            elseif getgenv().Settings["FPS Cap"] or (getgenv().Settings.Other and getgenv().Settings.Other["FPS Cap"]) == true then
                setfpscap(1e6)
                if getgenv().SendNotifications then
                    StarterGui:SetCore("SendNotification", {
                        Title = "discord.gg/rips",
                        Text = "FPS Uncapped",
                        Duration = 5,
                        Button1 = "Okay"
                    })
                end
                if getgenv().ConsoleLogs then
                    warn("FPS Uncapped")
                end
            end
        else
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "FPS Cap Failed",
                Duration = math.huge,
                Button1 = "Okay"
            })
            warn("FPS Cap Failed")
        end
    end
end)
coroutine.wrap(pcall)(function()
    if getgenv().Settings.Other["ClearNilInstances"] then
        if getnilinstances then
            for _, v in pairs(getnilinstances()) do
                pcall(v.Destroy, v)
            end
            if getgenv().SendNotifications then
                StarterGui:SetCore("SendNotification", {
                    Title = "discord.gg/rips",
                    Text = "Cleared Nil Instances",
                    Duration = 5,
                    Button1 = "Okay"
                })
            end
        else
            StarterGui:SetCore("SendNotification", {
                Title = "discord.gg/rips",
                Text = "Your exploit does not support getnilinstances, please use a different exploit.",
                Duration = 5,
                Button1 = "Okay"
            })
            warn("Your exploit does not support getnilinstances, please use a different exploit.")
        end
    end
end)
local Descendants = game:GetDescendants()
if getgenv().SendNotifications then
    StarterGui:SetCore("SendNotification", {
        Title = "discord.gg/rips",
        Text = "Checking " .. #Descendants .. " Instances...",
        Duration = 15,
        Button1 = "Okay"
    })
end
if getgenv().ConsoleLogs then
    warn("Checking " .. #Descendants .. " Instances...")
end
for i, v in pairs(Descendants) do
    CheckIfBad(v)
end
StarterGui:SetCore("SendNotification", {
    Title = "discord.gg/rips",
    Text = "FPS Booster Loaded!",
    Duration = math.huge,
    Button1 = "Okay"
})
warn("FPS Booster Loaded!")

game.DescendantAdded:Connect(function(value)
    wait(getgenv().LoadedWait or 1)
    CheckIfBad(value)
end)
