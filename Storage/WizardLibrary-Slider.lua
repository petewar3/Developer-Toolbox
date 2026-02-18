function section_objects:CreateSlider(title, min_value, max_value, default_value, callback, flag, ...)
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
            slider_frame.Parent = self.section_frame
            slider_frame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            slider_frame.BorderSizePixel = 0
            slider_frame.Size = UDim2.new(0, 170, 0, 30)
            
            section_content_height = section_content_height + 30
            self.section_frame.Size = UDim2.new(0, 170, 0, 30 + section_content_height)

            if is_section_open then
                expand_window(30)
            end

            
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
