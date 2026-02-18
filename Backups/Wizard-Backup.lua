local cloneref = cloneref or function(...)
    return ...
end

local gethui = gethui or function()
    return game:GetService("CoreGui")
end

print("Loaded #2!")

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
local main_container = Instance.new("Frame")

screen_gui.Name = "WizardLibrary"
screen_gui.Parent = gethui()

main_container.Name = "Container"
main_container.Parent = screen_gui
main_container.BackgroundColor3 = Color3.new(1, 1, 1)
main_container.BackgroundTransparency = 1
main_container.Size = UDim2.new(0, 100, 0, 100)

user_input_service.InputBegan:Connect(function(input_object)
    if input_object.KeyCode == Enum.KeyCode.RightControl then
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
    window_frame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    window_frame.BackgroundTransparency = 1
    window_frame.Position = UDim2.new(0, 0, 0, -265)
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
    
    toggle_button.MouseButton1Down:Connect(function()
        if is_window_open then
            is_window_open = false
            tween_service:Create(toggle_button, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                TextTransparency = 1,
            }):Play()
            toggle_button.Text = "v"
            toggle_button.TextSize = 14
            toggle_button.Visible = false
            repeat
                wait()
            until toggle_button.TextTransparency == 1
            toggle_button.Visible = true
            tween_service:Create(toggle_button, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                TextTransparency = 0,
            }):Play()
        else
            is_window_open = true
            tween_service:Create(toggle_button, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                TextTransparency = 1,
            }):Play()
            toggle_button.Text = "-"
            toggle_button.TextSize = 20
            toggle_button.Visible = false
            repeat
                wait()
            until toggle_button.TextTransparency == 1
            toggle_button.Visible = true
            tween_service:Create(toggle_button, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                TextTransparency = 0,
            }):Play()
        end
    end)
    
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
    
    body_frame.Name = "Body"
    body_frame.Parent = window_frame
    body_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    body_frame.BackgroundTransparency = 1
    body_frame.ClipsDescendants = true
    body_frame.Size = UDim2.new(0, 170, 0, window_height)
    body_frame.Image = "rbxassetid://3570695787"
    body_frame.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
    body_frame.ScaleType = Enum.ScaleType.Slice
    body_frame.SliceCenter = Rect.new(100, 100, 100, 100)
    body_frame.SliceScale = 0.05
    
    list_layout.Name = "Sorter"
    list_layout.Parent = body_frame
    list_layout.SortOrder = Enum.SortOrder.LayoutOrder
    
    topbar_cover.Name = "TopbarBodyCover"
    topbar_cover.Parent = body_frame
    topbar_cover.BackgroundColor3 = Color3.new(1, 1, 1)
    topbar_cover.BackgroundTransparency = 1
    topbar_cover.BorderSizePixel = 0
    topbar_cover.Size = UDim2.new(0, 170, 0, 30)
    
    make_draggable(window_frame)
    
    local window_objects = {}

    function window_objects:NewSection(section_config, section_title)
        local section_frame = Instance.new("Frame")
        local section_info = Instance.new("Frame")
        local section_toggle = Instance.new("TextButton")
        local section_title_label = Instance.new("TextLabel")
        local layout = Instance.new("UIListLayout")
        
        local section_name_clean = section_title
        local section_toggle_text = "v"
        local section_height = 30
        local is_section_open = false
        
        local function expand_section(height_delta)
            section_height = section_height + height_delta
            tween_service:Create(body_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 170, 0, section_height),
            }):Play()
        end
        
        local function collapse_section(height_delta)
            section_height = section_height - height_delta
            tween_service:Create(body_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 170, 0, section_height),
            }):Play()
        end
        
        section_frame.Name = section_name_clean .. "Section"
        section_frame.Parent = body_frame
        section_frame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
        section_frame.BorderSizePixel = 0
        section_frame.ClipsDescendants = true
        section_frame.Size = UDim2.new(0, 170, 0, section_height)
        
        expand_section(30)
        
        section_info.Name = "SectionInfo"
        section_info.Parent = section_frame
        section_info.BackgroundColor3 = Color3.new(1, 1, 1)
        section_info.BackgroundTransparency = 1
        section_info.Size = UDim2.new(0, 170, 0, 30)
        
        section_toggle.Name = "SectionToggle"
        section_toggle.Parent = section_info
        section_toggle.BackgroundColor3 = Color3.new(1, 1, 1)
        section_toggle.BackgroundTransparency = 1
        section_toggle.Position = UDim2.new(0.822450161, 0, 0, 0)
        section_toggle.Size = UDim2.new(0, 30, 0, 30)
        section_toggle.ZIndex = 2
        section_toggle.Font = Enum.Font.SourceSansSemibold
        section_toggle.Text = section_toggle_text
        section_toggle.TextColor3 = Color3.new(1, 1, 1)
        section_toggle.TextSize = 14
        section_toggle.TextWrapped = true
        
        section_title_label.Name = "SectionTitle"
        section_title_label.Parent = section_info
        section_title_label.BackgroundColor3 = Color3.new(1, 1, 1)
        section_title_label.BackgroundTransparency = 1
        section_title_label.BorderSizePixel = 0
        section_title_label.Position = UDim2.new(0.052941177, 0, 0, 0)
        section_title_label.Size = UDim2.new(0, 125, 0, 30)
        section_title_label.Font = Enum.Font.SourceSansBold
        section_title_label.Text = section_title
        section_title_label.TextColor3 = Color3.new(1, 1, 1)
        section_title_label.TextSize = 17
        section_title_label.TextXAlignment = Enum.TextXAlignment.Left
        
        layout.Name = "Layout"
        layout.Parent = section_frame
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        
        section_toggle.MouseButton1Down:Connect(function()
            if is_section_open then
                collapse_section(30)
                section_toggle_text = ""
                tween_service:Create(section_toggle, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    BackgroundTransparency = 1,
                }):Play()
            else
                expand_section(30)
                section_toggle_text = "v"
                tween_service:Create(section_toggle, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    BackgroundTransparency = 0,
                }):Play()
            end
        end)
        
        section_toggle.MouseButton1Down:Connect(function()
            if is_section_open then
                is_section_open = false
                section_toggle_text = "v"
                tween_service:Create(section_toggle, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    TextTransparency = 1,
                }):Play()
                section_toggle.Text = section_toggle_text
                section_toggle.TextSize = 14
                section_toggle.Visible = false
                repeat wait() until section_toggle.TextTransparency == 1
                section_toggle.Visible = true
                tween_service:Create(section_toggle, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    TextTransparency = 0,
                }):Play()
            else
                is_section_open = true
                section_toggle_text = "-"
                tween_service:Create(section_toggle, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    TextTransparency = 1,
                }):Play()
                section_toggle.Text = section_toggle_text
                section_toggle.TextSize = 20
                section_toggle.Visible = false
                repeat wait() until section_toggle.TextTransparency == 1
                section_toggle.Visible = true
                tween_service:Create(section_toggle, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    TextTransparency = 0,
                }):Play()
            end
        end)
        
        local section_objects = {}
        function section_objects:CreateToggle(callback, toggle_title, default_state)
            local toggle_holder = Instance.new("Frame")
            local toggle_title_label = Instance.new("TextLabel")
            local toggle_background = Instance.new("ImageLabel")
            local toggle_button = Instance.new("ImageButton")
                
            local toggle_name_clean = clean_string(toggle_title)
            local toggle_state = default_state or false
                
            toggle_holder.Name = toggle_name_clean .. "ToggleHolder"
            toggle_holder.Parent = layout.Parent
            toggle_holder.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            toggle_holder.BorderSizePixel = 0
            toggle_holder.Size = UDim2.new(0, 170, 0, 30)
                
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
                
            toggle_button.MouseButton1Down:Connect(function()
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
            end)
        end
        function section_objects:CreateSlider(parent, title, min_value, max_value, default_value, callback, flag, ...)
            local slider_frame = Instance.new("Frame")
            local slider_title = Instance.new("TextLabel")
            local value_holder = Instance.new("ImageLabel")
            local slider_value = Instance.new("TextLabel")
            local slider_background = Instance.new("ImageLabel")
            local slider_bar = Instance.new("ImageLabel")
            local slider_name = clean_string(title)
            local is_dragging = false
            local current_value = default_value
            
            slider_frame.Name = slider_name .. "SliderHolder"
            slider_frame.Parent = parent
            slider_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            slider_frame.BorderSizePixel = 0
            slider_frame.Size = UDim2.new(0, 170, 0, 30)
            
            slider_title.Name = "SliderTitle"
            slider_title.Parent = slider_frame
            slider_title.BackgroundColor3 = Color3.new(1, 1, 1)
            slider_title.BackgroundTransparency = 1
            slider_title.BorderSizePixel = 0
            slider_title.Position = UDim2.new(0.052941177, 0, 0, 0)
            slider_title.Size = UDim2.new(0, 125, 0, 15)
            slider_title.Font = Enum.Font.SourceSansSemibold
            slider_title.Text = title
            slider_title.TextColor3 = Color3.new(1, 1, 1)
            slider_title.TextSize = 17
            slider_title.TextXAlignment = Enum.TextXAlignment.Left
            
            value_holder.Name = "SliderValueHolder"
            value_holder.Parent = slider_frame
            value_holder.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            value_holder.BackgroundTransparency = 1
            value_holder.Position = UDim2.new(0.747058809, 0, 0, 0)
            value_holder.Size = UDim2.new(0, 35, 0, 15)
            value_holder.Image = "rbxassetid://3570695787"
            value_holder.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            value_holder.ImageTransparency = 0.5
            value_holder.ScaleType = Enum.ScaleType.Slice
            value_holder.SliceCenter = Rect.new(100, 100, 100, 100)
            value_holder.SliceScale = 0.02
            
            slider_value.Name = "SliderValue"
            slider_value.Parent = value_holder
            slider_value.BackgroundColor3 = Color3.new(1, 1, 1)
            slider_value.BackgroundTransparency = 1
            slider_value.Size = UDim2.new(0, 35, 0, 15)
            slider_value.Font = Enum.Font.SourceSansSemibold
            slider_value.Text = tostring(default_value or current_value and tonumber(string.format("%.2f", default_value)))
            slider_value.TextColor3 = Color3.new(1, 1, 1)
            slider_value.TextSize = 14
            
            slider_background.Name = "SliderBackground"
            slider_background.Parent = slider_frame
            slider_background.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            slider_background.BackgroundTransparency = 1
            slider_background.Position = UDim2.new(0.0529999994, 0, 0.649999976, 0)
            slider_background.Selectable = true
            slider_background.Size = UDim2.new(0, 153, 0, 5)
            slider_background.Image = "rbxassetid://3570695787"
            slider_background.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            slider_background.ImageTransparency = 0.5
            slider_background.ScaleType = Enum.ScaleType.Slice
            slider_background.SliceCenter = Rect.new(100, 100, 100, 100)
            slider_background.ClipsDescendants = true
            slider_background.SliceScale = 0.02
            
            slider_bar.Name = "Slider"
            slider_bar.Parent = slider_background
            slider_bar.BackgroundColor3 = Color3.new(1, 1, 1)
            slider_bar.BackgroundTransparency = 1
            slider_bar.Size = UDim2.new(((default_value or min_value) - min_value) / (max_value - min_value), 0, 0, 5)
            slider_bar.Image = "rbxassetid://3570695787"
            slider_bar.ScaleType = Enum.ScaleType.Slice
            slider_bar.SliceCenter = Rect.new(100, 100, 100, 100)
            slider_bar.SliceScale = 0.02
            
            local function update_slider(input, ...)
                local new_position = UDim2.new(math.clamp((input.Position.X - slider_frame.AbsolutePosition.X) / slider_frame.AbsoluteSize.X, 0, 1), 0, 1, 0)
                tween_service:Create(slider_bar, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = new_position}):Play()
                local percent = new_position.X.Scale
                local value_float = percent * (max_value - min_value) + min_value
                local final_value = tonumber(string.format("%.2f", value_float))
                slider_value.Text = tostring(final_value)
                if callback then
                    callback(final_value)
                end
            end
            
            slider_background.InputBegan:Connect(function(input_obj, ...)
                if input_obj.UserInputType == Enum.UserInputType.MouseButton1 then
                    is_dragging = true
                end
            end)
            
            slider_background.InputEnded:Connect(function(input_obj, ...)
                if input_obj.UserInputType == Enum.UserInputType.MouseButton1 then
                    is_dragging = false
                end
            end)
            
            slider_background.InputBegan:Connect(function(input_obj, ...)
                if input_obj.UserInputType == Enum.UserInputType.MouseButton1 then
                    update_slider(input_obj)
                end
            end)
            
            user_input_service.InputChanged:Connect(function(input_obj, ...)
                if is_dragging and input_obj.UserInputType == Enum.UserInputType.MouseMovement then
                    update_slider(input_obj)
                end
            end)
        end
        function section_objects:CreateColorPicker(parent, default_color, callback, flag, ...)
            local color_picker_frame = Instance.new("Frame")
            local rainbow_toggle_frame = Instance.new("Frame")
            local rainbow_title = Instance.new("TextLabel")
            local rainbow_background = Instance.new("ImageLabel")
            local rainbow_toggle_button = Instance.new("ImageButton")
            local color_picker_title = Instance.new("TextLabel")
            local color_toggle_button = Instance.new("ImageButton")
            local color_picker_main = Instance.new("ImageLabel")
            local color_value_r = Instance.new("TextLabel")
            local color_value_r_round = Instance.new("ImageLabel")
            local color_value_g = Instance.new("TextLabel")
            local color_value_g_round = Instance.new("ImageLabel")
            local color_value_b = Instance.new("TextLabel")
            local color_value_b_round = Instance.new("ImageLabel")
            local hue_holder = Instance.new("ImageLabel")
            local color_hue = Instance.new("ImageLabel")
            local hue_marker = Instance.new("Frame")
            local saturation_holder = Instance.new("ImageLabel")
            local color_selector = Instance.new("ImageLabel")
            local saturation_marker = Instance.new("ImageLabel")
            
            z_index_counter = z_index_counter + 1
            local is_open = false
            local is_rainbow = false
            local current_hsv = { H = 1, S = 1, V = 1 }
            
            color_picker_frame.Name = clean_string("ColorPicker") .. "ColorPickerHolder"
            color_picker_frame.Parent = parent
            color_picker_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            color_picker_frame.BorderSizePixel = 0
            color_picker_frame.Size = UDim2.new(0, 170, 0, 30)
            
            color_picker_title.Name = "ColorPickerTitle"
            color_picker_title.Parent = color_picker_frame
            color_picker_title.BackgroundTransparency = 1
            color_picker_title.Position = UDim2.new(0.052941177, 0, 0, 0)
            color_picker_title.Size = UDim2.new(0, 125, 0, 30)
            color_picker_title.Font = Enum.Font.SourceSansBold
            color_picker_title.Text = "Color Picker"
            color_picker_title.TextColor3 = Color3.new(1, 1, 1)
            color_picker_title.TextSize = 17
            color_picker_title.TextXAlignment = Enum.TextXAlignment.Left
            
            color_toggle_button.Name = "ColorPickerToggle"
            color_toggle_button.Parent = color_picker_frame
            color_toggle_button.BackgroundTransparency = 1
            color_toggle_button.Position = UDim2.new(0.822000027, 0, 0.166999996, 0)
            color_toggle_button.Size = UDim2.new(0, 22, 0, 20)
            color_toggle_button.Image = "rbxassetid://3570695787"
            color_toggle_button.ImageColor3 = default_color
            color_toggle_button.ScaleType = Enum.ScaleType.Slice
            color_toggle_button.SliceCenter = Rect.new(100, 100, 100, 100)
            color_toggle_button.SliceScale = 0.04
            
            color_picker_main.Name = "ColorPickerMain"
            color_picker_main.Parent = color_picker_frame
            color_picker_main.BackgroundTransparency = 1
            color_picker_main.ClipsDescendants = true
            color_picker_main.Position = UDim2.new(1.04705882, 0, -1.36666667, 0)
            color_picker_main.Size = UDim2.new(0, 0, 0, 175)
            color_picker_main.Image = "rbxassetid://3570695787"
            color_picker_main.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            color_picker_main.ScaleType = Enum.ScaleType.Slice
            color_picker_main.SliceCenter = Rect.new(100, 100, 100, 100)
            color_picker_main.SliceScale = 0.05
            color_picker_main.ZIndex = 1 + z_index_counter
            
            rainbow_toggle_frame.Name = "RainbowToggleHolder"
            rainbow_toggle_frame.Parent = color_picker_main
            rainbow_toggle_frame.BackgroundTransparency = 1
            rainbow_toggle_frame.Position = UDim2.new(0, 0, 0.819999993, 0)
            rainbow_toggle_frame.Size = UDim2.new(0, 170, 0, 30)
            rainbow_toggle_frame.ZIndex = 1 + z_index_counter
            
            rainbow_title.Name = "RainbowTitle"
            rainbow_title.Parent = rainbow_toggle_frame
            rainbow_title.BackgroundTransparency = 1
            rainbow_title.Position = UDim2.new(0.052941177, 0, 0, 0)
            rainbow_title.Size = UDim2.new(0, 125, 0, 30)
            rainbow_title.Font = Enum.Font.SourceSansBold
            rainbow_title.Text = "Rainbow"
            rainbow_title.TextColor3 = Color3.new(1, 1, 1)
            rainbow_title.TextSize = 17
            rainbow_title.TextXAlignment = Enum.TextXAlignment.Left
            rainbow_title.ZIndex = 1 + z_index_counter
            
            rainbow_background.Name = "RainbowBackground"
            rainbow_background.Parent = rainbow_toggle_frame
            rainbow_background.BackgroundTransparency = 1
            rainbow_background.Position = UDim2.new(0.847058833, 0, 0.166666672, 0)
            rainbow_background.Size = UDim2.new(0, 20, 0, 20)
            rainbow_background.Image = "rbxassetid://3570695787"
            rainbow_background.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            rainbow_background.ZIndex = 1 + z_index_counter
            
            rainbow_toggle_button.Name = "RainbowToggleButton"
            rainbow_toggle_button.Parent = rainbow_background
            rainbow_toggle_button.BackgroundTransparency = 1
            rainbow_toggle_button.Position = UDim2.new(0, 2, 0, 2)
            rainbow_toggle_button.Size = UDim2.new(0, 16, 0, 16)
            rainbow_toggle_button.Image = "rbxassetid://3570695787"
            rainbow_toggle_button.ImageColor3 = Color3.new(1, 0.341176, 0.341176)
            rainbow_toggle_button.ImageTransparency = 1
            rainbow_toggle_button.ZIndex = 1 + z_index_counter
            
            color_value_r.Name = "ColorValueR"
            color_value_r.Parent = color_picker_main
            color_value_r.BackgroundTransparency = 1
            color_value_r.Position = UDim2.new(0, 7, 0, 127)
            color_value_r.Size = UDim2.new(0, 50, 0, 16)
            color_value_r.ZIndex = 2 + z_index_counter
            color_value_r.Font = Enum.Font.SourceSansBold
            color_value_r.Text = "R: 000"
            color_value_r.TextColor3 = Color3.new(1, 1, 1)
            color_value_r.TextSize = 14
            
            color_value_r_round.Name = "ColorValueRRound"
            color_value_r_round.Parent = color_value_r
            color_value_r_round.Active = true
            color_value_r_round.AnchorPoint = Vector2.new(0.5, 0.5)
            color_value_r_round.BackgroundTransparency = 1
            color_value_r_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            color_value_r_round.Selectable = true
            color_value_r_round.Size = UDim2.new(1, 0, 1, 0)
            color_value_r_round.Image = "rbxassetid://3570695787"
            color_value_r_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            color_value_r_round.ScaleType = Enum.ScaleType.Slice
            color_value_r_round.SliceCenter = Rect.new(100, 100, 100, 100)
            color_value_r_round.SliceScale = 0.04
            color_value_r_round.ZIndex = 1 + z_index_counter
            
            color_value_g.Name = "ColorValueG"
            color_value_g.Parent = color_picker_main
            color_value_g.BackgroundTransparency = 1
            color_value_g.Position = UDim2.new(0, 60, 0, 127)
            color_value_g.Size = UDim2.new(0, 51, 0, 16)
            color_value_g.ZIndex = 2 + z_index_counter
            color_value_g.Font = Enum.Font.SourceSansBold
            color_value_g.Text = "G: 000"
            color_value_g.TextColor3 = Color3.new(1, 1, 1)
            color_value_g.TextSize = 14
            
            color_value_g_round.Name = "ColorValueGRound"
            color_value_g_round.Parent = color_value_g
            color_value_g_round.Active = true
            color_value_g_round.AnchorPoint = Vector2.new(0.5, 0.5)
            color_value_g_round.BackgroundTransparency = 1
            color_value_g_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            color_value_g_round.Selectable = true
            color_value_g_round.Size = UDim2.new(1, 0, 1, 0)
            color_value_g_round.Image = "rbxassetid://3570695787"
            color_value_g_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            color_value_g_round.ScaleType = Enum.ScaleType.Slice
            color_value_g_round.SliceCenter = Rect.new(100, 100, 100, 100)
            color_value_g_round.SliceScale = 0.04
            color_value_g_round.ZIndex = 1 + z_index_counter
            
            color_value_b.Name = "ColorValueB"
            color_value_b.Parent = color_picker_main
            color_value_b.BackgroundTransparency = 1
            color_value_b.Position = UDim2.new(0, 114, 0, 127)
            color_value_b.Size = UDim2.new(0, 50, 0, 16)
            color_value_b.ZIndex = 2 + z_index_counter
            color_value_b.Font = Enum.Font.SourceSansBold
            color_value_b.Text = "B: 000"
            color_value_b.TextColor3 = Color3.new(1, 1, 1)
            color_value_b.TextSize = 14
            
            color_value_b_round.Name = "ColorValueBRound"
            color_value_b_round.Parent = color_value_b
            color_value_b_round.Active = true
            color_value_b_round.AnchorPoint = Vector2.new(0.5, 0.5)
            color_value_b_round.BackgroundTransparency = 1
            color_value_b_round.Position = UDim2.new(0.5, 0, 0.5, 0)
            color_value_b_round.Selectable = true
            color_value_b_round.Size = UDim2.new(1, 0, 1, 0)
            color_value_b_round.Image = "rbxassetid://3570695787"
            color_value_b_round.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
            color_value_b_round.ScaleType = Enum.ScaleType.Slice
            color_value_b_round.SliceCenter = Rect.new(100, 100, 100, 100)
            color_value_b_round.SliceScale = 0.04
            color_value_b_round.ZIndex = 1 + z_index_counter
            
            hue_holder.Name = "RoundHueHolder"
            hue_holder.Parent = color_picker_main
            hue_holder.BackgroundTransparency = 1
            hue_holder.ClipsDescendants = true
            hue_holder.Position = UDim2.new(0, 136, 0, 6)
            hue_holder.Size = UDim2.new(0, 28, 0, 114)
            hue_holder.ZIndex = 2 + z_index_counter
            hue_holder.Image = "rbxassetid://4695575676"
            hue_holder.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            hue_holder.ScaleType = Enum.ScaleType.Slice
            hue_holder.SliceCenter = Rect.new(128, 128, 128, 128)
            hue_holder.SliceScale = 0.05
            
            color_hue.Name = "ColorHue"
            color_hue.Parent = hue_holder
            color_hue.BackgroundTransparency = 1
            color_hue.Size = UDim2.new(0, 28, 0, 114)
            color_hue.Image = "http://www.roblox.com/asset/?id=4801885250"
            color_hue.ScaleType = Enum.ScaleType.Crop
            color_hue.ZIndex = 1 + z_index_counter
            
            hue_marker.Name = "HueMarker"
            hue_marker.Parent = hue_holder
            hue_marker.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
            hue_marker.BorderSizePixel = 0
            hue_marker.Position = UDim2.new(-0.25, 0, 0, 0)
            hue_marker.Size = UDim2.new(0, 42, 0, 5)
            hue_marker.ZIndex = 1 + z_index_counter
            
            saturation_holder.Name = "RoundSaturationHolder"
            saturation_holder.Parent = color_picker_main
            saturation_holder.BackgroundTransparency = 1
            saturation_holder.ClipsDescendants = true
            saturation_holder.Position = UDim2.new(0, 7, 0, 6)
            saturation_holder.Size = UDim2.new(0, 122, 0, 114)
            saturation_holder.ZIndex = 2 + z_index_counter
            saturation_holder.Image = "rbxassetid://4695575676"
            saturation_holder.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            saturation_holder.ScaleType = Enum.ScaleType.Slice
            saturation_holder.SliceCenter = Rect.new(128, 128, 128, 128)
            saturation_holder.SliceScale = 0.05
            
            color_selector.Name = "ColorSelector"
            color_selector.Parent = saturation_holder
            color_selector.BackgroundColor3 = default_color
            color_selector.Size = UDim2.new(0, 122, 0, 114)
            color_selector.Image = "rbxassetid://4805274903"
            color_selector.ZIndex = 1 + z_index_counter
            
            saturation_marker.Name = "SaturationMarker"
            saturation_marker.Parent = saturation_holder
            saturation_marker.BackgroundTransparency = 1
            saturation_marker.Size = UDim2.new(0, 0, 0, 0)
            saturation_marker.Image = "http://www.roblox.com/asset/?id=4805639000"
            saturation_marker.ZIndex = 1 + z_index_counter
            
            local function update_rgb_display()
                local color = color_selector.BackgroundColor3
                color_value_r.Text = "R: " .. math.floor(color.R * 255)
                color_value_g.Text = "G: " .. math.floor(color.G * 255)
                color_value_b.Text = "B: " .. math.floor(color.B * 255)
            end
            
            update_rgb_display()
            
            local function get_relative_position(parent_frame, mouse_pos)
                local abs_pos = parent_frame.AbsolutePosition
                local abs_size = parent_frame.AbsoluteSize
                local rel_x = math.clamp((mouse_pos.X - abs_pos.X), 0, abs_size.X) / abs_size.X
                local rel_y = math.clamp((mouse_pos.Y - abs_pos.Y), 0, abs_size.Y) / abs_size.Y
                return rel_x, rel_y
            end
            
            local function get_hue_position(hue_frame, mouse_pos)
                local abs_pos = hue_frame.AbsolutePosition
                local abs_size = hue_frame.AbsoluteSize
                return math.clamp((mouse_pos.Y - abs_pos.Y), 0, abs_size.Y) / abs_size.Y
            end
            
            local function update_color()
                local new_color = Color3.fromHSV(current_hsv.H, current_hsv.S, current_hsv.V)
                color_selector.BackgroundColor3 = new_color
                color_toggle_button.ImageColor3 = new_color
                saturation_holder.ImageColor3 = Color3.fromHSV(current_hsv.H, 1, 1)
                color_hue.ImageColor3 = new_color
                update_rgb_display()
                if callback then
                    callback(new_color)
                end
            end
            
            color_toggle_button.MouseButton1Down:Connect(function()
                is_open = not is_open
                if is_open then
                    color_picker_main:TweenSize(
                        UDim2.new(0, 171, 0, 175),
                        "Out", "Quart", 0.75
                    )
                else
                    color_picker_main:TweenSize(
                        UDim2.new(0, 0, 0, 175),
                        "Out", "Quart", 0.75
                    )
                end
            end)
            
            local drag_connection = nil
            color_selector.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and not is_rainbow then
                    if drag_connection then
                        drag_connection:Disconnect()
                    end
                    drag_connection = run_service.RenderStepped:Connect(function()
                        local mouse_pos = Vector2.new(mouse.X, mouse.Y)
                        local s, v = get_relative_position(saturation_holder, Vector2.new(mouse_pos.X, mouse_pos.Y))
                        saturation_marker.Position = UDim2.new(s, 0, v, 0)
                        current_hsv.S = s
                        current_hsv.V = 1 - v
                        update_color()
                    end)
                end
            end)
            
            color_selector.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and drag_connection then
                    drag_connection:Disconnect()
                    drag_connection = nil
                end
            end)
            
            local hue_drag_connection = nil
            color_hue.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and not is_rainbow then
                    if hue_drag_connection then
                        hue_drag_connection:Disconnect()
                    end
                    hue_drag_connection = run_service.RenderStepped:Connect(function()
                        local mouse_pos = Vector2.new(mouse.X, mouse.Y)
                        local h = get_hue_position(hue_holder, Vector2.new(mouse_pos.X, mouse_pos.Y))
                        hue_marker.Position = UDim2.new(-0.25, 0, h, 0)
                        current_hsv.H = 1 - h
                        update_color()
                    end)
                end
            end)
            
            color_hue.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and hue_drag_connection then
                    hue_drag_connection:Disconnect()
                    hue_drag_connection = nil
                end
            end)
            
            rainbow_toggle_button.MouseButton1Down:Connect(function()
                is_rainbow = not is_rainbow
                rainbow_toggle_button.ImageTransparency = is_rainbow and 0 or 1
                if is_rainbow then
                    spawn(function()
                        while is_rainbow do
                            local rainbow_color = Color3.fromHSV(tick() % 1, 1, 1)
                            color_selector.BackgroundColor3 = rainbow_color
                            color_toggle_button.ImageColor3 = rainbow_color
                            saturation_holder.ImageColor3 = rainbow_color
                            update_rgb_display()
                            if callback then
                                callback(rainbow_color)
                            end
                            wait()
                        end
                    end)
                end
            end)
        end
        function section_objects:CreateButton(parent, text, callback, ...)
            local button_frame = Instance.new("Frame")
            local button = Instance.new("TextButton")
            local button_round = Instance.new("ImageLabel")
            
            button_frame.Name = clean_string(text) .. "ButtonHolder"
            button_frame.Parent = parent
            button_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            button_frame.BorderSizePixel = 0
            button_frame.Size = UDim2.new(0, 170, 0, 30)
            
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
        end
        function section_objects:CreateTextbox(parent, placeholder_text, callback, ...)
            local textbox_frame = Instance.new("Frame")
            local textbox = Instance.new("TextBox")
            local textbox_round = Instance.new("ImageLabel")
            
            textbox_frame.Name = clean_string(placeholder_text) .. "TextBoxHolder"
            textbox_frame.Parent = parent
            textbox_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            textbox_frame.BorderSizePixel = 0
            textbox_frame.Size = UDim2.new(0, 170, 0, 30)
            
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
        end
        function section_objects:CreateDropdown(parent, title, options, default_index, callback, ...)
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
            dropdown_frame.Parent = parent
            dropdown_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            dropdown_frame.BorderSizePixel = 0
            dropdown_frame.Size = UDim2.new(0, 170, 0, 30)
            
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
        end
        return section_objects
    end
    return window_objects
end

return library_objects
