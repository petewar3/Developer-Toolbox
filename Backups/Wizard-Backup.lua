local cloneref = cloneref or function(...)
    return ...
end

local gethui = gethui or function()
    return game:GetService("CoreGui")
end

print("Loaded @!")

local user_input_service = cloneref(game:GetService("UserInputService"))
local tween_service = cloneref(game:GetService("TweenService"))
local run_service = cloneref(game:GetService("RunService"))
local mouse = cloneref(game:GetService("Players")).LocalPlayer:GetMouse()

local dragging_enabled = false
local drag_start = nil
local start_pos = nil

if gethui():FindFirstChild("WizardLibrary") then
    gethui():FindFirstChild("WizardLibrary"):Destroy()
end

local screen_gui = Instance.new("ScreenGui")
screen_gui.Enabled = true
screen_gui.Name = "WizardLibrary"
screen_gui.Parent = gethui()

local main_container = Instance.new("Frame")
main_container.Name = "Container"
main_container.Parent = screen_gui
main_container.BackgroundColor3 = Color3.new(1, 1, 1)
main_container.BackgroundTransparency = 1
main_container.Size = UDim2.new(0, 100, 0, 100)
main_container.Visible = true

user_input_service.InputBegan:Connect(function(input_object)
    if input_object.KeyCode == Enum.KeyCode.T then
        screen_gui.Enabled = not screen_gui.Enabled
    end
end)

local function update_drag(input_object)
    local delta_position = input_object.Position - drag_start
    main_container.Position = UDim2.new(
        start_pos.X.Scale, 
        start_pos.X.Offset + delta_position.X, 
        start_pos.Y.Scale, 
        start_pos.Y.Offset + delta_position.Y
    )
end

local function make_draggable(draggable_frame)
    draggable_frame.InputBegan:Connect(function(input_object)
        if input_object.UserInputType == Enum.UserInputType.MouseButton1 or 
           input_object.UserInputType == Enum.UserInputType.Touch then
            dragging_enabled = true
            drag_start = input_object.Position
            start_pos = draggable_frame.Position
            
            input_object.Changed:Connect(function()
                if input_object.UserInputState == Enum.UserInputState.End then
                    dragging_enabled = false
                end
            end)
        end
    end)
    
    draggable_frame.InputChanged:Connect(function(input_object)
        if (input_object.UserInputType == Enum.UserInputType.MouseMovement or 
            input_object.UserInputType == Enum.UserInputType.Touch) and dragging_enabled then
            drag_start = input_object.Position
        end
    end)
    
    user_input_service.InputChanged:Connect(function(input_object)
        if input_object == mouse and dragging_enabled then
            update_drag(input_object)
        end
    end)
end

local function clean_string(input_string)
    if type(input_string) ~= "string" then
        input_string = tostring(input_string or "")
    end
    return input_string:gsub(" ", "")
end

local library_objects = {}

function library_objects:NewWindow(window_title)
    local window_frame = Instance.new("ImageLabel")
    local topbar_frame = Instance.new("Frame")
    local toggle_button = Instance.new("TextButton")
    local title_label = Instance.new("TextLabel")
    local bottom_cover = Instance.new("Frame")
    local body_frame = Instance.new("ImageLabel")
    local list_layout = Instance.new("UIListLayout")
    local topbar_cover = Instance.new("Frame")
    
    local window_name_clean = clean_string(window_title)
    local window_height = 35 
    local is_window_open = true 
    
    local function expand_window(height_delta)
        window_height = window_height + height_delta
        tween_service:Create(body_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 170, 0, window_height),
        }):Play()
    end
    
    local function collapse_window(height_delta)
        window_height = window_height - height_delta
        tween_service:Create(body_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 170, 0, window_height),
        }):Play()
    end
    
    window_frame.Name = window_name_clean
    window_frame.Parent = main_container
    window_frame.BackgroundColor3 = Color3.new(0.098, 0.098, 0.098)
    window_frame.BackgroundTransparency = 1
    window_frame.Position = UDim2.new(0, 100, 0, 100)
    window_frame.Size = UDim2.new(0, 170, 0, 30)
    window_frame.ZIndex = 2
    window_frame.Image = "rbxassetid://3570695787"
    window_frame.ImageColor3 = Color3.new(0.098, 0.098, 0.098)
    window_frame.ScaleType = Enum.ScaleType.Slice
    window_frame.SliceCenter = Rect.new(100, 100, 100, 100)
    window_frame.SliceScale = 0.05
    
    topbar_frame.Name = "Topbar"
    topbar_frame.Parent = window_frame
    topbar_frame.BackgroundColor3 = Color3.new(1, 1, 1)
    topbar_frame.BackgroundTransparency = 1
    topbar_frame.BorderSizePixel = 0
    topbar_frame.Size = UDim2.new(0, 170, 0, 30)
    topbar_frame.ZIndex = 2
    
    toggle_button.Name = "WindowToggle"
    toggle_button.Parent = topbar_frame
    toggle_button.BackgroundTransparency = 1
    toggle_button.Position = UDim2.new(0.822, 0, 0, 0)
    toggle_button.Size = UDim2.new(0, 30, 0, 30)
    toggle_button.Font = Enum.Font.SourceSansSemibold
    toggle_button.Text = "-" 
    toggle_button.TextColor3 = Color3.new(1, 1, 1)
    toggle_button.TextSize = 20
    toggle_button.TextWrapped = true
    
    title_label.Name = "WindowTitle"
    title_label.Parent = topbar_frame
    title_label.BackgroundTransparency = 1
    title_label.Size = UDim2.new(0, 170, 0, 30)
    title_label.Font = Enum.Font.SourceSansBold
    title_label.Text = window_name_clean
    title_label.TextColor3 = Color3.new(1, 1, 1)
    title_label.TextSize = 17
    
    bottom_cover.Name = "BottomRoundCover"
    bottom_cover.Parent = topbar_frame
    bottom_cover.BackgroundColor3 = Color3.new(0.098, 0.098, 0.098)
    bottom_cover.BorderSizePixel = 0
    bottom_cover.Position = UDim2.new(0, 0, 0.833, 0)
    bottom_cover.Size = UDim2.new(0, 170, 0, 5)

    body_frame.Name = "Body"
    body_frame.Parent = window_frame
    body_frame.BackgroundTransparency = 1
    body_frame.ClipsDescendants = true
    body_frame.Size = UDim2.new(0, 170, 0, window_height)
    body_frame.Image = "rbxassetid://3570695787"
    body_frame.ImageColor3 = Color3.new(0.137, 0.137, 0.137)
    body_frame.ScaleType = Enum.ScaleType.Slice
    body_frame.SliceCenter = Rect.new(100, 100, 100, 100)
    body_frame.SliceScale = 0.05
    
    list_layout.Name = "Sorter"
    list_layout.Parent = body_frame
    list_layout.SortOrder = Enum.SortOrder.LayoutOrder
    
    topbar_cover.Name = "TopbarBodyCover"
    topbar_cover.Parent = body_frame
    topbar_cover.BackgroundTransparency = 1
    topbar_cover.Size = UDim2.new(0, 170, 0, 30)
    
    make_draggable(window_frame)
    
    toggle_button.MouseButton1Down:Connect(function()
        is_window_open = not is_window_open
        if is_window_open then
            toggle_button.Text = "-"
            toggle_button.TextSize = 20
            tween_service:Create(body_frame, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 170, 0, window_height)
            }):Play()
        else
            toggle_button.Text = "v"
            toggle_button.TextSize = 14
            tween_service:Create(body_frame, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 170, 0, 0)
            }):Play()
        end
    end)
    
    local window_objects = {}
    
    function window_objects:NewSection(section_title)
        local section_frame = Instance.new("Frame")
        local section_info = Instance.new("Frame")
        local section_toggle = Instance.new("TextButton")
        local section_title_label = Instance.new("TextLabel")
        local layout = Instance.new("UIListLayout")
        
        local section_content_height = 0
        local is_section_open = false 

        section_frame.Name = clean_string(section_title).."Section"
        section_frame.Parent = body_frame
        section_frame.BackgroundColor3 = Color3.new(0.176, 0.176, 0.176)
        section_frame.BorderSizePixel = 0
        section_frame.ClipsDescendants = true
        section_frame.Size = UDim2.new(0, 170, 0, 30)

        section_info.Parent = section_frame
        section_info.BackgroundTransparency = 1
        section_info.Size = UDim2.new(0, 170, 0, 30)

        section_toggle.Parent = section_info
        section_toggle.BackgroundTransparency = 1
        section_toggle.Position = UDim2.new(0.822, 0, 0, 0)
        section_toggle.Size = UDim2.new(0, 30, 0, 30)
        section_toggle.Font = Enum.Font.SourceSansSemibold
        section_toggle.Text = "v"
        section_toggle.TextColor3 = Color3.new(1, 1, 1)
        section_toggle.TextSize = 14

        section_title_label.Parent = section_info
        section_title_label.BackgroundTransparency = 1
        section_title_label.Position = UDim2.new(0.0529, 0, 0, 0)
        section_title_label.Size = UDim2.new(0, 125, 0, 30)
        section_title_label.Font = Enum.Font.SourceSansBold
        section_title_label.Text = section_title
        section_title_label.TextColor3 = Color3.new(1, 1, 1)
        section_title_label.TextSize = 17
        section_title_label.TextXAlignment = Enum.TextXAlignment.Left

        layout.Parent = section_frame
        layout.SortOrder = Enum.SortOrder.LayoutOrder

        section_toggle.MouseButton1Down:Connect(function()
            is_section_open = not is_section_open
            if is_section_open then
                section_toggle.Text = "-"
                section_toggle.TextSize = 20
                expand_window(section_content_height)
            else
                section_toggle.Text = "v"
                section_toggle.TextSize = 14
                collapse_window(section_content_height)
            end
        end)
        
        local section_objects = {}
        section_objects.section_frame = section_frame
        
        local function add_section_height(delta)
            section_content_height = section_content_height + delta
            section_frame.Size = UDim2.new(0, 170, 0, 30 + section_content_height)
            if is_section_open then
                expand_window(delta)
            end
        end
        
        function section_objects:CreateToggle(title, callback, default)
            default = default or false
            local toggle_holder = Instance.new("Frame")
            local toggle_title_label = Instance.new("TextLabel")
            local toggle_bg = Instance.new("ImageLabel")
            local toggle_button = Instance.new("ImageButton")
            
            toggle_holder.Name = clean_string(title).."ToggleHolder"
            toggle_holder.Parent = section_frame
            toggle_holder.BackgroundTransparency = 1
            toggle_holder.Size = UDim2.new(0, 170, 0, 30)
            
            toggle_title_label.Parent = toggle_holder
            toggle_title_label.BackgroundTransparency = 1
            toggle_title_label.Position = UDim2.new(0.05, 0, 0, 0)
            toggle_title_label.Size = UDim2.new(0, 125, 0, 30)
            toggle_title_label.Font = Enum.Font.SourceSansBold
            toggle_title_label.Text = title
            toggle_title_label.TextColor3 = Color3.new(1,1,1)
            toggle_title_label.TextSize = 14
            toggle_title_label.TextXAlignment = Enum.TextXAlignment.Left
            
            toggle_bg.Parent = toggle_holder
            toggle_bg.BackgroundTransparency = 1
            toggle_bg.Position = UDim2.new(0.85, 0, 0.166, 0)
            toggle_bg.Size = UDim2.new(0, 20, 0, 20)
            toggle_bg.Image = "rbxassetid://3570695787"
            toggle_bg.ImageColor3 = Color3.new(0.254,0.254,0.254)
            
            toggle_button.Parent = toggle_bg
            toggle_button.BackgroundTransparency = 1
            toggle_button.Position = UDim2.new(0,2,0,2)
            toggle_button.Size = UDim2.new(0,16,0,16)
            toggle_button.Image = "rbxassetid://3570695787"
            toggle_button.ImageColor3 = Color3.new(1,0.34,0.34)
            toggle_button.ImageTransparency = default and 0 or 1
            
            local state = default
            toggle_button.MouseButton1Down:Connect(function()
                state = not state
                tween_service:Create(toggle_button, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    ImageTransparency = state and 0 or 1
                }):Play()
                if callback then callback(state) end
            end)
            
            add_section_height(30)
        end
        
        function section_objects:CreateButton(text, callback)
            local button_frame = Instance.new("Frame")
            local button = Instance.new("TextButton")
            button_frame.Parent = section_frame
            button_frame.BackgroundTransparency = 1
            button_frame.Size = UDim2.new(0,170,0,30)
            
            button.Parent = button_frame
            button.BackgroundTransparency = 1
            button.Size = UDim2.new(0, 170,0,30)
            button.Font = Enum.Font.SourceSansBold
            button.Text = text
            button.TextColor3 = Color3.new(1,1,1)
            button.TextSize = 14
            
            button.MouseButton1Down:Connect(function()
                if callback then callback() end
            end)
            
            add_section_height(30)
        end
        
        function section_objects:CreateTextbox(placeholder, callback)
            local textbox_frame = Instance.new("Frame")
            local textbox = Instance.new("TextBox")
            textbox_frame.Parent = section_frame
            textbox_frame.BackgroundTransparency = 1
            textbox_frame.Size = UDim2.new(0,170,0,30)
            
            textbox.Parent = textbox_frame
            textbox.BackgroundTransparency = 1
            textbox.Size = UDim2.new(0,170,0,30)
            textbox.Font = Enum.Font.SourceSansBold
            textbox.PlaceholderText = placeholder
            textbox.TextColor3 = Color3.new(1,1,1)
            textbox.TextSize = 14
            
            textbox.FocusLost:Connect(function(enter)
                if enter and callback then
                    callback(textbox.Text)
                end
            end)
            
            add_section_height(30)
        end
        
        function section_objects:CreateDropdown(title, options, default_index, callback)
            default_index = default_index or 1
            local dropdown_frame = Instance.new("Frame")
            local dropdown_title = Instance.new("TextLabel")
            local dropdown_toggle = Instance.new("TextButton")
            local dropdown_main = Instance.new("Frame")
            local scroll_frame = Instance.new("ScrollingFrame")
            local layout = Instance.new("UIListLayout")
            
            local current_value = options[default_index]
            local is_open = false
            local dropdown_height = math.min(#options, 4) * 25
            
            dropdown_frame.Parent = section_frame
            dropdown_frame.BackgroundTransparency = 1
            dropdown_frame.Size = UDim2.new(0,170,0,30)
            
            dropdown_title.Parent = dropdown_frame
            dropdown_title.BackgroundTransparency = 1
            dropdown_title.Size = UDim2.new(0,170,0,30)
            dropdown_title.Font = Enum.Font.SourceSansBold
            dropdown_title.TextColor3 = Color3.new(1,1,1)
            dropdown_title.TextSize = 14
            dropdown_title.Text = current_value
            
            dropdown_toggle.Parent = dropdown_title
            dropdown_toggle.BackgroundTransparency = 1
            dropdown_toggle.Position = UDim2.new(0.85,0,0,0)
            dropdown_toggle.Size = UDim2.new(0,28,0,30)
            dropdown_toggle.Text = ">"
            
            dropdown_main.Parent = dropdown_title
            dropdown_main.BackgroundTransparency = 1
            dropdown_main.ClipsDescendants = true
            dropdown_main.Position = UDim2.new(0,0,1,0)
            dropdown_main.Size = UDim2.new(0,170,0,dropdown_height)
            dropdown_main.Visible = false
            
            scroll_frame.Parent = dropdown_main
            scroll_frame.BackgroundTransparency = 1
            scroll_frame.Size = UDim2.new(0,170,0,dropdown_height)
            scroll_frame.CanvasSize = UDim2.new(0,0,#options*25,0)
            scroll_frame.ScrollBarThickness = 3
            
            layout.Parent = scroll_frame
            layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            for i,opt in ipairs(options) do
                local btn = Instance.new("TextButton")
                btn.Parent = scroll_frame
                btn.BackgroundTransparency = 1
                btn.Size = UDim2.new(0,170,0,25)
                btn.Font = Enum.Font.SourceSansBold
                btn.Text = opt
                btn.TextColor3 = Color3.new(1,1,1)
                btn.TextSize = 14
                btn.MouseButton1Down:Connect(function()
                    current_value = opt
                    dropdown_title.Text = current_value
                    dropdown_main.Visible = false
                    is_open = false
                    if callback then callback(current_value) end
                end)
            end
            
            dropdown_toggle.MouseButton1Down:Connect(function()
                is_open = not is_open
                dropdown_main.Visible = is_open
            end)
            
            add_section_height(30)
        end
        
        return section_objects
    end
    
    return window_objects
end

return library_objects
