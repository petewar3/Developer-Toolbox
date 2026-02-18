-- currently fixing
local cloneref = cloneref or function(...)
    return ...
end

local gethui = gethui or function()
    return game:GetService("CoreGui")
end

print("Loaded!")

local user_input_service = cloneref(game:GetService("UserInputService"))
local tween_service = cloneref(game:GetService("TweenService"))
local run_service = cloneref(game:GetService("RunService"))
local mouse = cloneref(game:GetService("Players")).LocalPlayer:GetMouse()

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

local dragging_enabled = false
local drag_input
local drag_start
local start_pos

local function update_drag(input)
    local delta = input.Position - drag_start
    main_container.Position = UDim2.new(
        start_pos.X.Scale,
        start_pos.X.Offset + delta.X,
        start_pos.Y.Scale,
        start_pos.Y.Offset + delta.Y
    )
end

local function make_draggable(draggable_frame)
    draggable_frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or
           input.UserInputType == Enum.UserInputType.Touch then

            dragging_enabled = true
            drag_start = input.Position
            start_pos = main_container.Position
            drag_input = input

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging_enabled = false
                end
            end)
        end
    end)

    draggable_frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or
           input.UserInputType == Enum.UserInputType.Touch then
            drag_input = input
        end
    end)

    user_input_service.InputChanged:Connect(function(input)
        if input == drag_input and dragging_enabled then
            update_drag(input)
        end
    end)
end

local function clean_string(input_string)
    if type(input_string) ~= "string" then
        input_string = tostring(input_string or "")
    end
    return input_string:gsub(" ", "")
end

local z_index_counter = 1

local rainbow_offset = 0
coroutine.wrap(function()
    while task.wait() do
        rainbow_offset = rainbow_offset + 0.00392156862745098
        local temp_offset = rainbow_offset
        if temp_offset >= 1 then
            temp_offset = 0
            rainbow_offset = temp_offset
        end
    end
end)()

local library_objects = {}

function library_objects:NewWindow(window_title)
    local window_frame = Instance.new("ImageLabel")
    local topbar_frame = Instance.new("Frame")
    local toggle_button = Instance.new("TextButton")
    local title_label = Instance.new("TextLabel")
    local bottom_cover = Instance.new("Frame")
    local body_frame = Instance.new("ImageLabel")
    local list_layout = Instance.new("UIListLayout")
    local section_list_layout = Instance.new("UIListLayout")
    
    local window_name_clean = clean_string(window_title)
    local window_height = 0
    local is_window_open = true
    
    local function expand_window()
        local content_size = list_layout.AbsoluteContentSize.Y
        tween_service:Create(window_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
            Size = UDim2.new(0, 170, 0, 30 + content_size)
        }):Play()
    end
    
    local function collapse_window()
        tween_service:Create(window_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
            Size = UDim2.new(0, 170, 0, 90) 
        }):Play()
    end
    
    window_frame.Name = window_name_clean
    window_frame.Parent = main_container
    window_frame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    window_frame.BackgroundTransparency = 1
    window_frame.Position = UDim2.new(0, 100, 0, 100)
    window_frame.Size = UDim2.new(0, 170, 0, 30)
    window_frame.ZIndex = 2
    window_frame.Image = "rbxassetid://3570695787"
    window_frame.ImageColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
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
    toggle_button.BackgroundColor3 = Color3.new(1, 1, 1)
    toggle_button.BackgroundTransparency = 1
    toggle_button.Position = UDim2.new(0.822450161, 0, 0, 0)
    toggle_button.Size = UDim2.new(0, 30, 0, 30)
    toggle_button.ZIndex = 2
    toggle_button.Font = Enum.Font.SourceSansSemibold
    toggle_button.Text = "-"
    toggle_button.TextColor3 = Color3.new(1, 1, 1)
    toggle_button.TextSize = 20
    toggle_button.TextWrapped = true
    
    title_label.Name = "WindowTitle"
    title_label.Parent = topbar_frame
    title_label.BackgroundColor3 = Color3.new(1, 1, 1)
    title_label.BackgroundTransparency = 1
    title_label.Size = UDim2.new(0, 170, 0, 30)
    title_label.ZIndex = 2
    title_label.Font = Enum.Font.SourceSansBold
    title_label.Text = window_name_clean
    title_label.TextColor3 = Color3.new(1, 1, 1)
    title_label.TextSize = 17
    
    bottom_cover.Name = "BottomRoundCover"
    bottom_cover.Parent = topbar_frame
    bottom_cover.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    bottom_cover.BorderSizePixel = 0
    bottom_cover.Position = UDim2.new(0, 0, 0.833333313, 0)
    bottom_cover.Size = UDim2.new(0, 170, 0, 5)
    bottom_cover.ZIndex = 2
    
    local total_body_height = 0
    local section_frames = {}
    
    body_frame.Name = "Body"
    body_frame.Parent = window_frame
    body_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    body_frame.BackgroundTransparency = 1
    body_frame.Position = UDim2.new(0, 0, 0, 30)
    body_frame.Size = UDim2.new(1, 0, 0, 100) 
    body_frame.ClipsDescendants = true
    body_frame.Image = "rbxassetid://3570695787"
    body_frame.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    body_frame.ScaleType = Enum.ScaleType.Slice
    body_frame.SliceCenter = Rect.new(100, 100, 100, 100)
    body_frame.SliceScale = 0.05

    list_layout.Name = "Sorter"
    list_layout.Parent = body_frame
    list_layout.SortOrder = Enum.SortOrder.LayoutOrder
    
    section_list_layout.Parent = section_frame
    section_list_layout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local last_update = 0
    local function update_body_size()
        local now = tick()
        if now - last_update < 0.1 then
            return
        end
        last_update = now
    
        local content_height = list_layout.AbsoluteContentSize.Y
        local target_window_height = 30 + content_height  
        local target_body_height = content_height
    
        tween_service:Create(body_frame, TweenInfo.new(0.3), {
            Size = UDim2.new(1, 0, 0, target_body_height)
        }):Play()
    
        tween_service:Create(window_frame, TweenInfo.new(0.3), {
            Size = UDim2.new(0, 170, 0, target_window_height)
        }):Play()
    end
    
    list_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        task.wait()
        update_body_size()
    end)
    
    toggle_button.MouseButton1Down:Connect(function()
        is_window_open = not is_window_open
        if is_window_open then
            toggle_button.Text = "-"
            toggle_button.TextSize = 20
            update_body_size()  
        else
            toggle_button.Text = "v"
            toggle_button.TextSize = 14
            tween_service:Create(body_frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            tween_service:Create(window_frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
                Size = UDim2.new(0, 170, 0, 30)
            }):Play()
        end
    end)
    
    make_draggable(window_frame)
    
    local window_objects = {}
    function window_objects:NewSection(section_title)
        local section_frame = Instance.new("Frame")
        local section_info = Instance.new("Frame")
        local section_toggle = Instance.new("TextButton")
        local section_title_label = Instance.new("TextLabel")
        local layout = Instance.new("UIListLayout")
        local section_layout = Instance.new("UIListLayout")
        
        local section_content_height = 0
        local is_section_open = false
        
        local function grow_section(height)
            section_content_height = section_content_height + height
            if is_section_open then
                local target_height = 30 + section_content_height
                tween_service:Create(section_frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
                    Size = UDim2.new(1, 0, 0, target_height)
                }):Play()
            end
            task.spawn(function()
                task.wait(0.05)
                update_body_size()
            end)
        end

        section_frame.Name = clean_string(section_title) .. "Section"
        section_frame.Parent = body_frame
        section_frame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        section_frame.BorderSizePixel = 0
        section_frame.ClipsDescendants = true
        section_frame.Size = UDim2.new(1, 0, 0, 30)
        
        section_layout.Parent = section_frame
        section_layout.SortOrder = Enum.SortOrder.LayoutOrder
        section_layout.Padding = UDim.new(0, 4)

        section_info.Parent = section_frame
        section_info.BackgroundTransparency = 1
        section_info.Size = UDim2.new(1, 0, 0, 30)
        
        local content_frame = Instance.new("Frame")
        content_frame.Name = "Content"
        content_frame.Parent = section_frame
        content_frame.BackgroundTransparency = 1
        content_frame.Size = UDim2.new(1, 0, 1, -30) 
        content_frame.Position = UDim2.new(0, 0, 0, 30)
        content_frame.ClipsDescendants = true
        content_frame.Visible = true
        
        local layout = Instance.new("UIListLayout")
        layout.Parent = content_frame
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 4)

        section_toggle.Parent = section_info
        section_toggle.BackgroundTransparency = 1
        section_toggle.Position = UDim2.new(0.822450161, 0, 0, 0)
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

        section_toggle.MouseButton1Down:Connect(function()
            is_section_open = not is_section_open
            if is_section_open then
                section_toggle.Text = "-"
                section_toggle.TextSize = 20
                content_frame.Visible = true 
                task.spawn(function()
                    task.wait(0.15)
                    local content_size = layout.AbsoluteContentSize.Y
                    local target_height = math.max(30 + content_size, 90) 
                    tween_service:Create(section_frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
                        Size = UDim2.new(1, 0, 0, target_height)
                    }):Play()
                    update_body_size()
                end)
            else
                content_frame.Visible = false
                section_toggle.Text = "v"
                section_toggle.TextSize = 14
                tween_service:Create(section_frame, TweenInfo.new(0.3, Enum.EasingStyle.Quart), {
                    Size = UDim2.new(1, 0, 0, 30)
                }):Play()
                task.spawn(update_body_size)
            end
        end)

        task.spawn(update_body_size)
        
        local section_objects = {}
        section_objects.section_frame = section_frame
        section_objects.grow_section = grow_section
        
        function section_objects:CreateToggle(toggle_title, callback, default_state)
            local toggle_holder = Instance.new("Frame")
            local toggle_title_label = Instance.new("TextLabel")
            local toggle_background = Instance.new("ImageLabel")
            local toggle_button = Instance.new("ImageButton")
                
            local toggle_name_clean = clean_string(toggle_title)
            local toggle_state = default_state or false
                
            toggle_holder.Name = toggle_name_clean .. "ToggleHolder"
            toggle_holder.Parent = content_frame
            toggle_holder.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            toggle_holder.BorderSizePixel = 0
            toggle_holder.Size = UDim2.new(1, 0, 0, 30)
                
            toggle_title_label.Name = "ToggleTitle"
            toggle_title_label.Parent = toggle_holder
            toggle_title_label.BackgroundColor3 = Color3.new(1, 1, 1)
            toggle_title_label.BackgroundTransparency = 1
            toggle_title_label.BorderSizePixel = 0
            toggle_title_label.Position = UDim2.new(0.052941177, 0, 0, 0)
            toggle_title_label.Size = UDim2.new(0, 125, 0, 30)
            toggle_title_label.Font = Enum.Font.SourceSansBold
            toggle_title_label.Text = toggle_title
            toggle_title_label.TextColor3 = Color3.new(1, 1, 1)
            toggle_title_label.TextSize = 17
            toggle_title_label.TextXAlignment = Enum.TextXAlignment.Left
                
            toggle_background.Name = "ToggleBackground"
            toggle_background.Parent = toggle_holder
            toggle_background.BackgroundColor3 = Color3.new(1, 1, 1)
            toggle_background.BackgroundTransparency = 1
            toggle_background.BorderSizePixel = 0
            toggle_background.Position = UDim2.new(0.847058833, 0, 0.166666672, 0)
            toggle_background.Size = UDim2.new(0, 20, 0, 20)
            toggle_background.Image = "rbxassetid://3570695787"
            toggle_background.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
                
            toggle_button.Name = "ToggleButton"
            toggle_button.Parent = toggle_background
            toggle_button.BackgroundColor3 = Color3.new(1, 1, 1)
            toggle_button.BackgroundTransparency = 1
            toggle_button.Position = UDim2.new(0, 2, 0, 2)
            toggle_button.Size = UDim2.new(0, 16, 0, 16)
            toggle_button.Image = "rbxassetid://3570695787"
            toggle_button.ImageColor3 = Color3.new(1, 0.341176, 0.341176)
            toggle_button.ImageTransparency = 1
            
            local function callback_toggle()
                toggle_state = not toggle_state
                if toggle_state then
                    tween_service:Create(toggle_button, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                        ImageTransparency = 0,
                    }):Play()
                else
                    tween_service:Create(toggle_button, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                        ImageTransparency = 1,
                    }):Play()
                end
                if callback then
                    callback(toggle_state)
                end
            end
                
            local callback_conn = toggle_button.MouseButton1Down:Connect(callback_toggle)
            
            if default_state then
                callback_toggle()
            end
            
            self.grow_section(30)
        end
        function section_objects:CreateButton(text, callback)
            local button_frame = Instance.new("Frame")
            local button = Instance.new("TextButton")
            local button_round = Instance.new("ImageLabel")
            
            button_frame.Name = clean_string(text) .. "ButtonHolder"
            button_frame.Parent = content_frame
            button_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            button_frame.BorderSizePixel = 0
            button_frame.Size = UDim2.new(1, 0, 0, 30)
            
            button.Name = "Button"
            button.Parent = button_frame
            button.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            button.BackgroundTransparency = 1
            button.BorderSizePixel = 0
            button.Position = UDim2.new(0.052941177, 0, 0, 0)
            button.Size = UDim2.new(0, 153, 0, 24)
            button.ZIndex = 2
            button.AutoButtonColor = false
            button.Font = Enum.Font.SourceSansBold
            button.Text = text
            button.TextColor3 = Color3.new(1, 1, 1)
            button.TextSize = 14
            
            button_round.Name = "ButtonRound"
            button_round.Parent = button
            button_round.Active = true
            button_round.AnchorPoint = Vector2.new(0.5, 0.5)
            button_round.BackgroundTransparency = 1
            button_round.BorderSizePixel = 0
            button_round.ClipsDescendants = true
            button_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            button_round.Selectable = true
            button_round.Size = UDim2.new(1, 0, 1, 0)
            button_round.Image = "rbxassetid://3570695787"
            button_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            button_round.ScaleType = Enum.ScaleType.Slice
            button_round.SliceCenter = Rect.new(100, 100, 100, 100)
            button_round.SliceScale = 0.04
            
            button.MouseButton1Down:Connect(function()
                if callback then
                    callback()
                end
            end)
            
            self.grow_section(30)
        end
        function section_objects:CreateTextbox(placeholder_text, callback, ...)
            local textbox_frame = Instance.new("Frame")
            local textbox = Instance.new("TextBox")
            local textbox_round = Instance.new("ImageLabel")
            
            textbox_frame.Name = clean_string(placeholder_text) .. "TextBoxHolder"
            textbox_frame.Parent = content_frame
            textbox_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            textbox_frame.BorderSizePixel = 0
            textbox_frame.Size = UDim2.new(1, 0, 0, 30)
            
            textbox.Parent = textbox_frame
            textbox.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            textbox.BackgroundTransparency = 1
            textbox.ClipsDescendants = true
            textbox.Position = UDim2.new(0.0529999994, 0, 0, 0)
            textbox.Size = UDim2.new(0, 153, 0, 24)
            textbox.ZIndex = 2
            textbox.Font = Enum.Font.SourceSansBold
            textbox.PlaceholderText = placeholder_text
            textbox.Text = ""
            textbox.TextColor3 = Color3.new(1, 1, 1)
            textbox.TextSize = 14
            
            textbox_round.Name = "TextBoxRound"
            textbox_round.Parent = textbox
            textbox_round.Active = true
            textbox_round.AnchorPoint = Vector2.new(0.5, 0.5)
            textbox_round.BackgroundTransparency = 1
            textbox_round.BorderSizePixel = 0
            textbox_round.ClipsDescendants = true
            textbox_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            textbox_round.Selectable = true
            textbox_round.Size = UDim2.new(1, 0, 1, 0)
            textbox_round.Image = "rbxassetid://3570695787"
            textbox_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            textbox_round.ScaleType = Enum.ScaleType.Slice
            textbox_round.SliceCenter = Rect.new(100, 100, 100, 100)
            textbox_round.SliceScale = 0.04
            
            textbox.FocusLost:Connect(function(enter_pressed)
                if enter_pressed and callback then
                    callback(textbox.Text)
                end
            end)
            
            self.grow_section(30)
        end
        function section_objects:CreateDropdown(title, options, default_index, callback, ...)
            local dropdown_frame = Instance.new("Frame")
            local dropdown_title = Instance.new("TextLabel")
            local dropdown_round = Instance.new("ImageLabel")
            local dropdown_toggle = Instance.new("TextButton")
            local dropdown_main = Instance.new("ImageLabel")
            local scroll_frame = Instance.new("ScrollingFrame")
            local list_layout = Instance.new("UIListLayout")
            
            local dropdown_name = clean_string(title)
            local item_count = 1
            local is_open = false
            local current_value = options[default_index or 1]
            local option_count = 0
            local dropdown_height = 0
            local needs_scroll = false
            
            dropdown_frame.Name = dropdown_name .. "DropdownHolder"
            dropdown_frame.Parent = content_frame
            dropdown_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            dropdown_frame.BorderSizePixel = 0
            dropdown_frame.Size = UDim2.new(1, 0, 0, 30)
            
            dropdown_title.Name = "DropdownTitle"
            dropdown_title.Parent = dropdown_frame
            dropdown_title.BackgroundTransparency = 1
            dropdown_title.Position = UDim2.new(0.0529999994, 0, 0, 0)
            dropdown_title.Size = UDim2.new(0, 153, 0, 24)
            dropdown_title.ZIndex = 2
            dropdown_title.Font = Enum.Font.SourceSansBold
            dropdown_title.Text = current_value
            dropdown_title.TextColor3 = Color3.new(1, 1, 1)
            dropdown_title.TextSize = 14
            
            dropdown_round.Name = "DropdownRound"
            dropdown_round.Parent = dropdown_title
            dropdown_round.Active = true
            dropdown_round.AnchorPoint = Vector2.new(0.5, 0.5)
            dropdown_round.BackgroundTransparency = 1
            dropdown_round.ClipsDescendants = true
            dropdown_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            dropdown_round.Selectable = true
            dropdown_round.Size = UDim2.new(1, 0, 1, 0)
            dropdown_round.Image = "rbxassetid://3570695787"
            dropdown_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            dropdown_round.ScaleType = Enum.ScaleType.Slice
            dropdown_round.SliceCenter = Rect.new(100, 100, 100, 100)
            dropdown_round.SliceScale = 0.04
            
            dropdown_toggle.Name = "DropdownToggle"
            dropdown_toggle.Parent = dropdown_title
            dropdown_toggle.BackgroundTransparency = 1
            dropdown_toggle.Position = UDim2.new(0.816928029, 0, 0, 0)
            dropdown_toggle.Size = UDim2.new(0, 28, 0, 24)
            dropdown_toggle.AutoButtonColor = false
            dropdown_toggle.Font = Enum.Font.SourceSansBold
            dropdown_toggle.Text = ">"
            dropdown_toggle.TextColor3 = Color3.new(1, 1, 1)
            dropdown_toggle.TextSize = 15
            
            dropdown_main.Name = "DropdownMain"
            dropdown_main.Parent = dropdown_title
            dropdown_main.BackgroundTransparency = 1
            dropdown_main.ClipsDescendants = true
            dropdown_main.Position = UDim2.new(1.09275186, 0, -0.0336658955, 0)
            dropdown_main.Size = UDim2.new(0, 0, 0, dropdown_height)
            dropdown_main.Image = "rbxassetid://3570695787"
            dropdown_main.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            dropdown_main.ScaleType = Enum.ScaleType.Slice
            dropdown_main.SliceCenter = Rect.new(100, 100, 100, 100)
            dropdown_main.SliceScale = 0.04
            
            scroll_frame.Parent = dropdown_main
            scroll_frame.BackgroundTransparency = 1
            scroll_frame.BorderSizePixel = 0
            scroll_frame.Size = UDim2.new(0, 153, 0, dropdown_height)
            scroll_frame.CanvasSize = UDim2.new(0, 0, item_count, 0)
            scroll_frame.ScrollBarThickness = 3
            scroll_frame.ScrollingDirection = Enum.ScrollingDirection.Y
            
            list_layout.Name = "ButtonLayout"
            list_layout.Parent = scroll_frame
            list_layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            for i, option_text in ipairs(options) do
                option_count = option_count + 1
                local option_button = Instance.new("TextButton")
                option_button.Name = clean_string(option_text) .. "Button"
                option_button.Parent = scroll_frame
                option_button.BackgroundTransparency = 1
                option_button.BorderSizePixel = 0
                option_button.Size = UDim2.new(0, 153, 0, 25)
                option_button.AutoButtonColor = false
                option_button.Font = Enum.Font.SourceSansBold
                option_button.Text = option_text
                option_button.TextColor3 = Color3.new(1, 1, 1)
                option_button.TextSize = 14
                
                if option_count <= 4 then
                    dropdown_height = dropdown_height + 25
                    dropdown_main.Size = UDim2.new(0, 0, 0, dropdown_height)
                    scroll_frame.Size = UDim2.new(0, 153, 0, dropdown_height)
                else
                    needs_scroll = true
                end
                if needs_scroll then
                    item_count = item_count + 0.25
                    scroll_frame.CanvasSize = UDim2.new(0, 0, item_count, 0)
                end
                
                option_button.MouseButton1Down:Connect(function()
                    current_value = option_text
                    dropdown_title.Text = current_value
                    if callback then
                        callback(option_text)
                    end
                    is_open = false
                    dropdown_toggle.Text = ">"
                    dropdown_round:TweenSize(
                        UDim2.new(1, 0, 1, 0),
                        "Out", "Quart", 0.5, true
                    )
                    dropdown_round:TweenSize(
                        UDim2.new(0, 0, 0, dropdown_height),
                        "Out", "Quart", 0.5, true
                    )
                end)
            end
            
            dropdown_toggle.MouseButton1Down:Connect(function()
                is_open = not is_open
                if is_open then
                    dropdown_main.ClipsDescendants = false
                    scroll_frame.ClipsDescendants = false
                    dropdown_toggle.Text = "<"
                    dropdown_round.Rotation = -360
                    dropdown_title.TextColor3 = Color3.new(0.698039, 0.698039, 0.698039)
                    scroll_frame.ScrollBarImageTransparency = 0
                    scroll_frame.Size = UDim2.new(0, 153, 0, dropdown_height)
                    dropdown_main.Size = UDim2.new(0, 0, 0, dropdown_height)
                else
                    dropdown_toggle.Text = ">"
                    dropdown_round.Rotation = 0
                    dropdown_title.TextColor3 = Color3.new(1, 1, 1)
                    dropdown_title.Text = current_value
                    scroll_frame.ScrollBarImageTransparency = 1
                    scroll_frame.Size = UDim2.new(0, 0, 0, dropdown_height)
                    dropdown_main.Size = UDim2.new(0, 0, 0, dropdown_height)
                end
            end)
            
            self.grow_section(30)
        end
        return section_objects
    end
    return window_objects
end

local lib = library_objects
local win = lib:NewWindow("Test")
local sec = win:NewSection("Main")
sec:CreateToggle("Test", print)
sec:CreateButton("Test", print)
