function section_objects:CreateColorPicker(default_color, callback, flag, ...)
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
            color_picker_frame.Parent = self.section_frame
            color_picker_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            color_picker_frame.BorderSizePixel = 0
            color_picker_frame.Size = UDim2.new(0, 170, 0, 30)
            
            section_content_height = section_content_height + 30
            self.section_frame.Size = UDim2.new(0, 170, 0, 30 + section_content_height)

            if is_section_open then
                expand_window(30)
            end
            
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
