-- filename: discord.gg/25ms
-- version: lua51
-- line: [0, 0] id: 0
local r0_0 = game:GetService("UserInputService")
local r1_0 = game:GetService("TweenService")
local r2_0 = game:GetService("RunService")
local r3_0 = game:GetService("Players").LocalPlayer:GetMouse()
local r4_0 = 0
local r5_0 = 1
local r6_0 = 0
local r7_0 = 1
local r8_0 = 0
if game:GetService("CoreGui"):FindFirstChild("WizardLibrary") then
  game:GetService("CoreGui"):FindFirstChild("WizardLibrary"):Destroy()
end
local r9_0 = Instance.new("ScreenGui")
local r10_0 = Instance.new("Frame")
r9_0.Name = "WizardLibrary"
r9_0.Parent = game:GetService("CoreGui")
r10_0.Name = "Container"
r10_0.Parent = r9_0
r10_0.BackgroundColor3 = Color3.new(1, 1, 1)
r10_0.BackgroundTransparency = 1
r10_0.Size = UDim2.new(0, 100, 0, 100)
r0_0.InputBegan:Connect(function(r0_1, ...)
  -- line: [0, 0] id: 1
  if r0_1.KeyCode == Enum.KeyCode.RightControl then
    CoastifiedLibrary.Enabled = not CoastifiedLibrary.Enabled
  end
end)
r0_0 = r0_0
function Dragging(r0_2, ...)
  -- line: [0, 0] id: 2
  local r4_2 = nil	-- notice: implicit variable refs by block#[0]
  local r3_2 = nil	-- notice: implicit variable refs by block#[0]
  local r2_2 = nil	-- notice: implicit variable refs by block#[0]
  local r1_2 = nil	-- notice: implicit variable refs by block#[0]
  local function r5_2(r0_3, ...)
    -- line: [0, 0] id: 3
    local r1_3 = r0_3.Position - _u0
    _u1.Position = UDim2.new(_u2.X.Scale, _u2.X.Offset + r1_3.X, _u2.Y.Scale, _u2.Y.Offset + r1_3.Y)
  end
  r0_2 = r3_2
  r0_2 = r0_2
  r0_2 = r4_2
  r0_2 = r1_2
  r0_2 = r3_2
  r0_2 = r4_2
  r0_2 = r0_2
  r0_2.InputBegan:Connect(function(r0_4, ...)
    -- line: [0, 0] id: 4
    if r0_4.UserInputType == Enum.UserInputType.MouseButton1 then
      goto label_14
    elseif r0_4.UserInputType == Enum.UserInputType.Touch then
      ::label_14::
      ::label_14::
      _u0 = true
      _u1 = r0_4.Position
      _u2 = _u3.Position
      r0_4 = r0_4
      r0_4 = _u0
      r0_4.Changed:Connect(function(...)
        -- line: [0, 0] id: 5
        if _u0.UserInputState == Enum.UserInputState.End then
          _u1 = false
        end
      end)
    end
  end)
  r0_2 = r2_2
  r0_2.InputChanged:Connect(function(r0_6, ...)
    -- line: [0, 0] id: 6
    if r0_6.UserInputType == Enum.UserInputType.MouseMovement then
      goto label_13
    elseif r0_6.UserInputType == Enum.UserInputType.Touch then
      ::label_13::
      ::label_13::
      _u0 = r0_6
    end
  end)
  r0_2 = r2_2
  r0_2 = r1_2
  r0_2 = r5_2
  _u0.InputChanged:Connect(function(r0_7, ...)
    -- line: [0, 0] id: 7
    if r0_7 == _u0 and _u1 then
      _u2(r0_7)
    end
  end)
end
local function r11_0(r0_8, ...)
  -- line: [0, 0] id: 8
  return r0_8:gsub(" ", "")
end
r0_0 = r6_0
coroutine.wrap(function(...)
  -- line: [0, 0] id: 9
  while wait() do
    _u0 = _u0 + 0.00392156862745098
    local r0_9 = _u0
    if r0_9 >= 1 then
      r0_9 = 0
      _u0 = r0_9
    end
  end
end)()
local r12_0 = {}
r0_0 = r11_0
r0_0 = r8_0
r0_0 = r1_0
r0_0 = r10_0
r0_0 = r7_0
r0_0 = r3_0
r0_0 = r6_0
r0_0 = r2_0
function r12_0.NewWindow(r0_10, r1_10, ...)
  -- line: [0, 0] id: 10
  local r2_10 = Instance.new("ImageLabel")
  local r3_10 = Instance.new("Frame")
  local r4_10 = Instance.new("TextButton")
  local r5_10 = Instance.new("TextLabel")
  local r6_10 = Instance.new("Frame")
  local r7_10 = Instance.new("ImageLabel")
  local r8_10 = Instance.new("UIListLayout")
  local r9_10 = Instance.new("Frame")
  local r10_10 = _u0(r1_10)
  _u1 = _u1 + 2
  local r11_10 = 35
  local r12_10 = true
  local function r13_10(r0_11, ...)
    -- line: [0, 0] id: 11
    _u0 = _u0 + r0_11
    _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, 170, 0, _u0),
    }):Play()
  end
  r0_10 = r11_10
  r0_10 = _u2
  r0_10 = r7_10
  local function r14_10(r0_12, ...)
    -- line: [0, 0] id: 12
    _u0 = _u0 - r0_12
    _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, 170, 0, _u0),
    }):Play()
  end
  r0_10 = r11_10
  r0_10 = _u2
  r0_10 = r7_10
  r2_10.Name = r10_10 .. "Window"
  r2_10.Parent = _u3
  r2_10.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
  r2_10.BackgroundTransparency = 1
  r2_10.Position = UDim2.new(_u1, -100, 3, -265)
  r2_10.Size = UDim2.new(0, 170, 0, 30)
  r2_10.ZIndex = 2
  r2_10.Image = "rbxassetid://3570695787"
  r2_10.ImageColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
  r2_10.ScaleType = Enum.ScaleType.Slice
  r2_10.SliceCenter = Rect.new(100, 100, 100, 100)
  r2_10.SliceScale = 0.05
  r3_10.Name = "Topbar"
  r3_10.Parent = r2_10
  r3_10.BackgroundColor3 = Color3.new(1, 1, 1)
  r3_10.BackgroundTransparency = 1
  r3_10.BorderSizePixel = 0
  r3_10.Size = UDim2.new(0, 170, 0, 30)
  r3_10.ZIndex = 2
  r4_10.Name = "WindowToggle"
  r4_10.Parent = r3_10
  r4_10.BackgroundColor3 = Color3.new(1, 1, 1)
  r4_10.BackgroundTransparency = 1
  r4_10.Position = UDim2.new(0.822450161, 0, 0, 0)
  r4_10.Size = UDim2.new(0, 30, 0, 30)
  r4_10.ZIndex = 2
  r4_10.Font = Enum.Font.SourceSansSemibold
  r4_10.Text = "-"
  r4_10.TextColor3 = Color3.new(1, 1, 1)
  r4_10.TextSize = 20
  r4_10.TextWrapped = true
  r0_10 = r12_10
  r0_10 = _u2
  r0_10 = r4_10
  r4_10.MouseButton1Down:Connect(function(...)
    -- line: [0, 0] id: 13
    if _u0 then
      if _u0 then
        _u0 = false
        _u1:Create(_u2, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u2.Text = "v"
        _u2.TextSize = 14
        _u2.Visible = false
        repeat
          wait()
        until _u2.TextTransparency == 1
        _u2.Visible = true
        _u1:Create(_u2, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end
    else
      _u0 = true
      _u1:Create(_u2, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        TextTransparency = 1,
      }):Play()
      _u2.Text = "-"
      _u2.TextSize = 20
      _u2.Visible = false
      repeat
        wait()
      until _u2.TextTransparency == 1
      _u2.Visible = true
      _u1:Create(_u2, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        TextTransparency = 0,
      }):Play()
    end
  end)
  r5_10.Name = "WindowTitle"
  r5_10.Parent = r3_10
  r5_10.BackgroundColor3 = Color3.new(1, 1, 1)
  r5_10.BackgroundTransparency = 1
  r5_10.Size = UDim2.new(0, 170, 0, 30)
  r5_10.ZIndex = 2
  r5_10.Font = Enum.Font.SourceSansBold
  r5_10.Text = r1_10
  r5_10.TextColor3 = Color3.new(1, 1, 1)
  r5_10.TextSize = 17
  r6_10.Name = "BottomRoundCover"
  r6_10.Parent = r3_10
  r6_10.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
  r6_10.BorderSizePixel = 0
  r6_10.Position = UDim2.new(0, 0, 0.833333313, 0)
  r6_10.Size = UDim2.new(0, 170, 0, 5)
  r6_10.ZIndex = 2
  r7_10.Name = "Body"
  r7_10.Parent = r2_10
  r7_10.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
  r7_10.BackgroundTransparency = 1
  r7_10.ClipsDescendants = true
  r7_10.Size = UDim2.new(0, 170, 0, r11_10)
  r7_10.Image = "rbxassetid://3570695787"
  r7_10.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
  r7_10.ScaleType = Enum.ScaleType.Slice
  r7_10.SliceCenter = Rect.new(100, 100, 100, 100)
  r7_10.SliceScale = 0.05
  r8_10.Name = "Sorter"
  r8_10.Parent = r7_10
  r8_10.SortOrder = Enum.SortOrder.LayoutOrder
  r9_10.Name = "TopbarBodyCover"
  r9_10.Parent = r7_10
  r9_10.BackgroundColor3 = Color3.new(1, 1, 1)
  r9_10.BackgroundTransparency = 1
  r9_10.BorderSizePixel = 0
  r9_10.Size = UDim2.new(0, 170, 0, 30)
  Dragging(r2_10)
  local r15_10 = {}
  r0_10 = _u0
  r0_10 = _u2
  r0_10 = r7_10
  r0_10 = r13_10
  r0_10 = r4_10
  r0_10 = r12_10
  r0_10 = r14_10
  r0_10 = _u4
  r0_10 = _u5
  r0_10 = _u6
  r0_10 = _u7
  r0_10 = _u8
  function r15_10.NewSection(r0_14, r1_14, ...)
    -- line: [0, 0] id: 14
    local r2_14 = Instance.new("Frame")
    local r3_14 = Instance.new("Frame")
    local r4_14 = Instance.new("TextButton")
    local r5_14 = Instance.new("TextLabel")
    local r6_14 = Instance.new("UIListLayout")
    local r7_14 = _u0(r1_14)
    local r8_14 = "v"
    local r9_14 = 30
    local r10_14 = false
    local function r11_14(r0_15, ...)
      -- line: [0, 0] id: 15
      _u0 = _u0 + r0_15
      _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 170, 0, _u0),
      }):Play()
    end
    r0_14 = r9_14
    r0_14 = _u1
    r0_14 = r2_14
    local function r12_14(r0_16, ...)
      -- line: [0, 0] id: 16
      _u0 = _u0 - r0_16
      _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 170, 0, _u0),
      }):Play()
    end
    r0_14 = r9_14
    r0_14 = _u1
    r0_14 = r2_14
    r2_14.Name = r7_14 .. "Section"
    r2_14.Parent = _u2
    r2_14.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
    r2_14.BorderSizePixel = 0
    r2_14.ClipsDescendants = true
    r2_14.Size = UDim2.new(0, 170, 0, r9_14)
    _u3(30)
    r3_14.Name = "SectionInfo"
    r3_14.Parent = r2_14
    r3_14.BackgroundColor3 = Color3.new(1, 1, 1)
    r3_14.BackgroundTransparency = 1
    r3_14.Size = UDim2.new(0, 170, 0, 30)
    r4_14.Name = "SectionToggle"
    r4_14.Parent = r3_14
    r4_14.BackgroundColor3 = Color3.new(1, 1, 1)
    r4_14.BackgroundTransparency = 1
    r4_14.Position = UDim2.new(0.822450161, 0, 0, 0)
    r4_14.Size = UDim2.new(0, 30, 0, 30)
    r4_14.ZIndex = 2
    r4_14.Font = Enum.Font.SourceSansSemibold
    r4_14.Text = r8_14
    r4_14.TextColor3 = Color3.new(1, 1, 1)
    r4_14.TextSize = 14
    r4_14.TextWrapped = true
    r5_14.Name = "SectionTitle"
    r5_14.Parent = r3_14
    r5_14.BackgroundColor3 = Color3.new(1, 1, 1)
    r5_14.BackgroundTransparency = 1
    r5_14.BorderSizePixel = 0
    r5_14.Position = UDim2.new(0.052941177, 0, 0, 0)
    r5_14.Size = UDim2.new(0, 125, 0, 30)
    r5_14.Font = Enum.Font.SourceSansBold
    r5_14.Text = r1_14
    r5_14.TextColor3 = Color3.new(1, 1, 1)
    r5_14.TextSize = 17
    r5_14.TextXAlignment = Enum.TextXAlignment.Left
    r6_14.Name = "Layout"
    r6_14.Parent = r2_14
    r6_14.SortOrder = Enum.SortOrder.LayoutOrder
    r0_14 = _u5
    r0_14 = _u3
    r0_14 = r4_14
    r0_14 = r8_14
    r0_14 = _u1
    r0_14 = r2_14
    r0_14 = _u6
    _u4.MouseButton1Down:Connect(function(...)
      -- line: [0, 0] id: 17
      if _u0 then
        if _u0 then
          _u6(30)
          _u2.Text = ""
          _u4:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1,
          }):Play()
        end
      else
        _u1(30)
        _u2.Text = _u3
        _u4:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          BackgroundTransparency = 0,
        }):Play()
      end
    end)
    r0_14 = r10_14
    r0_14 = r8_14
    r0_14 = _u1
    r0_14 = r4_14
    r0_14 = _u4
    r4_14.MouseButton1Down:Connect(function(...)
      -- line: [0, 0] id: 18
      if _u0 then
        if _u0 then
          _u0 = false
          _u1 = "v"
          _u2:Create(_u3, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextTransparency = 1,
          }):Play()
          _u2:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextTransparency = 1,
          }):Play()
          _u3.Text = _u1
          _u3.TextSize = 14
          _u3.Visible = false
          _u4.Visible = false
          while true do
            wait()
            if _u3.TextTransparency == 1 then
              local r0_18 = _u4.TextTransparency
              if r0_18 == 1 then
                break
              end
            end
          end
          _u3.Visible = true
          _u4.Visible = true
          _u2:Create(_u3, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextTransparency = 0,
          }):Play()
          _u2:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextTransparency = 0,
          }):Play()
        end
      else
        _u0 = true
        _u1 = "-"
        _u2:Create(_u3, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u2:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u3.Text = _u1
        _u3.TextSize = 20
        _u3.Visible = false
        _u4.Visible = false
        while true do
          wait()
          if _u3.TextTransparency == 1 then
            local r0_18 = _u4.TextTransparency
            if r0_18 == 1 then
              break
            end
          end
        end
        _u3.Visible = true
        _u4.Visible = true
        _u2:Create(_u3, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
        _u2:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end
    end)
    local r13_14 = {}
    r0_14 = _u0
    r0_14 = r2_14
    r0_14 = _u1
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    function r13_14.CreateToggle(r0_19, r1_19, r2_19, ...)
      -- line: [0, 0] id: 19
      local r3_19 = Instance.new("Frame")
      local r4_19 = Instance.new("TextLabel")
      local r5_19 = Instance.new("ImageLabel")
      local r6_19 = Instance.new("ImageButton")
      r3_19.Name = _u0(r1_19) .. "ToggleHolder"
      r3_19.Parent = _u1
      r3_19.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r3_19.BorderSizePixel = 0
      r3_19.Size = UDim2.new(0, 170, 0, 30)
      r4_19.Name = "ToggleTitle"
      r4_19.Parent = r3_19
      r4_19.BackgroundColor3 = Color3.new(1, 1, 1)
      r4_19.BackgroundTransparency = 1
      r4_19.BorderSizePixel = 0
      r4_19.Position = UDim2.new(0.052941177, 0, 0, 0)
      r4_19.Size = UDim2.new(0, 125, 0, 30)
      r4_19.Font = Enum.Font.SourceSansBold
      r4_19.Text = r1_19
      r4_19.TextColor3 = Color3.new(1, 1, 1)
      r4_19.TextSize = 17
      r4_19.TextXAlignment = Enum.TextXAlignment.Left
      r5_19.Name = "ToggleBackground"
      r5_19.Parent = r3_19
      r5_19.BackgroundColor3 = Color3.new(1, 1, 1)
      r5_19.BackgroundTransparency = 1
      r5_19.BorderSizePixel = 0
      r5_19.Position = UDim2.new(0.847058833, 0, 0.166666672, 0)
      r5_19.Size = UDim2.new(0, 20, 0, 20)
      r5_19.Image = "rbxassetid://3570695787"
      r5_19.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r6_19.Name = "ToggleButton"
      r6_19.Parent = r5_19
      r6_19.BackgroundColor3 = Color3.new(1, 1, 1)
      r6_19.BackgroundTransparency = 1
      r6_19.Position = UDim2.new(0, 2, 0, 2)
      r6_19.Size = UDim2.new(0, 16, 0, 16)
      r6_19.Image = "rbxassetid://3570695787"
      r6_19.ImageColor3 = Color3.new(1, 0.341176, 0.341176)
      r6_19.ImageTransparency = 1
      r0_19 = false
      r0_19 = _u2
      r0_19 = r6_19
      r0_19 = r2_19
      r6_19.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 20
        _u0 = not _u0
        if _u0 then
          _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ImageTransparency = 0,
          }):Play()
        elseif not _u0 then
          _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ImageTransparency = 1,
          }):Play()
        end
        _u3(_u0)
      end)
      r0_19 = _u4
      r0_19 = _u5
      r0_19 = _u6
      r0_19 = _u7
      r0_19 = _u8
      _u3.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 21
        if not _u0 then
          _u1(30)
          _u2(30)
        elseif _u0 then
          _u3(30)
          _u4(30)
        end
      end)
      r0_19 = _u10
      r0_19 = _u4
      r0_19 = _u6
      r0_19 = _u2
      r0_19 = _u3
      r0_19 = _u1
      r0_19 = _u8
      _u9.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 22
        if not _u0 then
          if _u1 then
            _u2(30)
            _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 360,
            }):Play()
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          elseif not _u1 then
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          end
        elseif _u0 then
          if _u1 then
            _u6(30)
            _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 0,
            }):Play()
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          elseif not _u1 then
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          end
        end
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u4.Visible = false
        repeat
          wait()
        until _u4.TextTransparency == 1
        _u4.Visible = true
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    r0_14 = _u0
    r0_14 = r2_14
    r0_14 = _u1
    r0_14 = _u7
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    function r13_14.CreateSlider(r0_23, r1_23, r2_23, r3_23, r4_23, r5_23, r6_23, ...)
      -- line: [0, 0] id: 23
      local r7_23 = Instance.new("Frame")
      local r8_23 = Instance.new("TextLabel")
      local r9_23 = Instance.new("ImageLabel")
      local r10_23 = Instance.new("TextLabel")
      local r11_23 = Instance.new("ImageLabel")
      local r12_23 = Instance.new("ImageLabel")
      local r13_23 = _u0(r1_23)
      local r14_23 = false
      local r15_23 = r5_23
      r7_23.Name = r13_23 .. "SliderHolder"
      r7_23.Parent = _u1
      r7_23.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r7_23.BorderSizePixel = 0
      r7_23.Size = UDim2.new(0, 170, 0, 30)
      r8_23.Name = "SliderTitle"
      r8_23.Parent = r7_23
      r8_23.BackgroundColor3 = Color3.new(1, 1, 1)
      r8_23.BackgroundTransparency = 1
      r8_23.BorderSizePixel = 0
      r8_23.Position = UDim2.new(0.052941177, 0, 0, 0)
      r8_23.Size = UDim2.new(0, 125, 0, 15)
      r8_23.Font = Enum.Font.SourceSansSemibold
      r8_23.Text = r1_23
      r8_23.TextColor3 = Color3.new(1, 1, 1)
      r8_23.TextSize = 17
      r8_23.TextXAlignment = Enum.TextXAlignment.Left
      r9_23.Name = "SliderValueHolder"
      r9_23.Parent = r7_23
      r9_23.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r9_23.BackgroundTransparency = 1
      r9_23.Position = UDim2.new(0.747058809, 0, 0, 0)
      r9_23.Size = UDim2.new(0, 35, 0, 15)
      r9_23.Image = "rbxassetid://3570695787"
      r9_23.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r9_23.ImageTransparency = 0.5
      r9_23.ScaleType = Enum.ScaleType.Slice
      r9_23.SliceCenter = Rect.new(100, 100, 100, 100)
      r9_23.SliceScale = 0.02
      r10_23.Name = "SliderValue"
      r10_23.Parent = r9_23
      r10_23.BackgroundColor3 = Color3.new(1, 1, 1)
      r10_23.BackgroundTransparency = 1
      r10_23.Size = UDim2.new(0, 35, 0, 15)
      r10_23.Font = Enum.Font.SourceSansSemibold
      r10_23.Text = tostring(r4_23 or r15_23 and tonumber(string.format("%.2f", r4_23)))
      r10_23.TextColor3 = Color3.new(1, 1, 1)
      r10_23.TextSize = 14
      r11_23.Name = "SliderBackground"
      r11_23.Parent = r7_23
      r11_23.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r11_23.BackgroundTransparency = 1
      r11_23.Position = UDim2.new(0.0529999994, 0, 0.649999976, 0)
      r11_23.Selectable = true
      r11_23.Size = UDim2.new(0, 153, 0, 5)
      r11_23.Image = "rbxassetid://3570695787"
      r11_23.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r11_23.ImageTransparency = 0.5
      r11_23.ScaleType = Enum.ScaleType.Slice
      r11_23.SliceCenter = Rect.new(100, 100, 100, 100)
      r11_23.ClipsDescendants = true
      r11_23.SliceScale = 0.02
      r12_23.Name = "Slider"
      r12_23.Parent = r11_23
      r12_23.BackgroundColor3 = Color3.new(1, 1, 1)
      r12_23.BackgroundTransparency = 1
      r12_23.Size = UDim2.new(((r4_23 or r2_23) - r2_23) / (r3_23 - r2_23), 0, 0, 5)
      r12_23.Image = "rbxassetid://3570695787"
      r12_23.ScaleType = Enum.ScaleType.Slice
      r12_23.SliceCenter = Rect.new(100, 100, 100, 100)
      r12_23.SliceScale = 0.02
      local function r16_23(r0_24, ...)
        -- line: [0, 0] id: 24
        local r1_24 = UDim2.new(math.clamp((r0_24.Position.X - _u0.AbsolutePosition.X) / _u0.AbsoluteSize.X, 0, 1), 0, 1.15, 0)
        _u1:Create(_u2, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          Size = r1_24,
        }):Play()
        local r2_24 = math.floor(r1_24.X.Scale * _u3 / _u3 * (_u3 - _u4) + _u4)
        local r3_24 = r1_24.X.Scale * _u3 / _u3 * (_u3 - _u4) + _u4
        local r4_24 = _u5
        if not r4_24 then
          goto label_72
        else
          r4_24 = r3_24
          if r4_24 then
            ::label_72::
            ::label_72::
            r4_24 = r2_24
          end
        end
        r4_24 = tonumber(string.format("%.2f", r4_24))
        _u6.Text = tostring(r4_24)
        _u7(r4_24)
      end
      r0_23 = r11_23
      r0_23 = _u2
      r0_23 = r12_23
      r0_23 = r3_23
      r0_23 = r2_23
      r0_23 = r15_23
      r0_23 = r10_23
      r0_23 = r6_23
      r0_23 = r14_23
      r11_23.InputBegan:Connect(function(r0_25, ...)
        -- line: [0, 0] id: 25
        if r0_25.UserInputType == Enum.UserInputType.MouseButton1 then
          _u0 = true
        end
      end)
      r0_23 = r14_23
      r11_23.InputEnded:Connect(function(r0_26, ...)
        -- line: [0, 0] id: 26
        if r0_26.UserInputType == Enum.UserInputType.MouseButton1 then
          _u0 = false
        end
      end)
      r0_23 = r16_23
      r11_23.InputBegan:Connect(function(r0_27, ...)
        -- line: [0, 0] id: 27
        if r0_27.UserInputType == Enum.UserInputType.MouseButton1 then
          _u0(r0_27)
        end
      end)
      r0_23 = r14_23
      r0_23 = r16_23
      _u3.InputChanged:Connect(function(r0_28, ...)
        -- line: [0, 0] id: 28
        if _u0 and r0_28.UserInputType == Enum.UserInputType.MouseMovement then
          _u1(r0_28)
        end
      end)
      r0_23 = _u5
      r0_23 = _u6
      r0_23 = _u7
      r0_23 = _u8
      r0_23 = _u9
      _u4.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 29
        if _u0 then
          if _u0 then
            _u3(30)
            _u4(30)
          end
        else
          _u1(30)
          _u2(30)
        end
      end)
      r0_23 = _u11
      r0_23 = _u5
      r0_23 = _u7
      r0_23 = _u2
      r0_23 = _u4
      r0_23 = _u1
      r0_23 = _u9
      _u10.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 30
        if _u0 then
          if _u0 then
            if _u1 then
              _u6(30)
              _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Rotation = 0,
              }):Play()
              _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            elseif not _u1 then
              _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            end
          end
        elseif not _u1 then
          if not _u1 then
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          end
        else
          _u2(30)
          _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Rotation = 360,
          }):Play()
          _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0,
          }):Play()
        end
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u4.Visible = false
        repeat
          wait()
        until _u4.TextTransparency == 1
        _u4.Visible = true
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    r0_14 = _u0
    r0_14 = _u8
    r0_14 = r2_14
    r0_14 = _u2
    r0_14 = _u1
    r0_14 = _u9
    r0_14 = _u10
    r0_14 = _u11
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    function r13_14.CreateColorPicker(r0_31, r1_31, r2_31, r3_31, ...)
      -- line: [0, 0] id: 31
      local r4_31 = Instance.new("Frame")
      local r5_31 = Instance.new("Frame")
      local r6_31 = Instance.new("TextLabel")
      local r7_31 = Instance.new("ImageLabel")
      local r8_31 = Instance.new("ImageButton")
      local r9_31 = Instance.new("TextLabel")
      local r10_31 = Instance.new("ImageButton")
      local r11_31 = Instance.new("ImageLabel")
      local r12_31 = Instance.new("TextLabel")
      local r13_31 = Instance.new("ImageLabel")
      local r14_31 = Instance.new("TextLabel")
      local r15_31 = Instance.new("ImageLabel")
      local r16_31 = Instance.new("TextLabel")
      local r17_31 = Instance.new("ImageLabel")
      local r18_31 = Instance.new("ImageLabel")
      local r19_31 = Instance.new("ImageLabel")
      local r20_31 = Instance.new("Frame")
      local r21_31 = Instance.new("ImageLabel")
      local r22_31 = Instance.new("ImageLabel")
      local r23_31 = Instance.new("ImageLabel")
      local r24_31 = _u0(r1_31)
      _u1 = _u1 + 1
      local r25_31 = false
      local r26_31 = false
      local r27_31 = nil
      local r28_31 = 0
      local r29_31 = nil
      r4_31.Name = r24_31 .. "ColorPickerHolder"
      r4_31.Parent = _u2
      r4_31.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r4_31.BorderSizePixel = 0
      r4_31.Size = UDim2.new(0, 170, 0, 30)
      r9_31.Name = "ColorPickerTitle"
      r9_31.Parent = r4_31
      r9_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r9_31.BackgroundTransparency = 1
      r9_31.BorderSizePixel = 0
      r9_31.Position = UDim2.new(0.052941177, 0, 0, 0)
      r9_31.Size = UDim2.new(0, 125, 0, 30)
      r9_31.Font = Enum.Font.SourceSansBold
      r9_31.Text = r1_31
      r9_31.TextColor3 = Color3.new(1, 1, 1)
      r9_31.TextSize = 17
      r9_31.TextXAlignment = Enum.TextXAlignment.Left
      r10_31.Name = "ColorPickerToggle"
      r10_31.Parent = r4_31
      r10_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r10_31.BackgroundTransparency = 1
      r10_31.Position = UDim2.new(0.822000027, 0, 0.166999996, 0)
      r10_31.Size = UDim2.new(0, 22, 0, 20)
      r10_31.Image = "rbxassetid://3570695787"
      r10_31.ImageColor3 = r2_31
      r10_31.ScaleType = Enum.ScaleType.Slice
      r10_31.SliceCenter = Rect.new(100, 100, 100, 100)
      r10_31.SliceScale = 0.04
      r11_31.Name = "ColorPickerMain"
      r11_31.Parent = r4_31
      r11_31.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r11_31.BackgroundTransparency = 1
      r11_31.ClipsDescendants = true
      r11_31.BorderSizePixel = 0
      r11_31.Position = UDim2.new(1.04705882, 0, -1.36666667, 0)
      r11_31.Size = UDim2.new(0, 0, 0, 175)
      r11_31.Image = "rbxassetid://3570695787"
      r11_31.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r11_31.ScaleType = Enum.ScaleType.Slice
      r11_31.SliceCenter = Rect.new(100, 100, 100, 100)
      r11_31.SliceScale = 0.05
      r11_31.ZIndex = 1 + _u1
      r5_31.Name = "RainbowToggleHolder"
      r5_31.Parent = r11_31
      r5_31.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r5_31.BackgroundTransparency = 1
      r5_31.BorderSizePixel = 0
      r5_31.Position = UDim2.new(0, 0, 0.819999993, 0)
      r5_31.Size = UDim2.new(0, 170, 0, 30)
      r5_31.ZIndex = 1 + _u1
      r6_31.Name = "RainbowTitle"
      r6_31.Parent = r5_31
      r6_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r6_31.BackgroundTransparency = 1
      r6_31.BorderSizePixel = 0
      r6_31.Position = UDim2.new(0.052941177, 0, 0, 0)
      r6_31.Size = UDim2.new(0, 125, 0, 30)
      r6_31.Font = Enum.Font.SourceSansBold
      r6_31.Text = "Rainbow"
      r6_31.TextColor3 = Color3.new(1, 1, 1)
      r6_31.TextSize = 17
      r6_31.TextXAlignment = Enum.TextXAlignment.Left
      r6_31.ZIndex = 1 + _u1
      r7_31.Name = "RainbowBackground"
      r7_31.Parent = r5_31
      r7_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r7_31.BackgroundTransparency = 1
      r7_31.BorderSizePixel = 0
      r7_31.Position = UDim2.new(0.847058833, 0, 0.166666672, 0)
      r7_31.Size = UDim2.new(0, 20, 0, 20)
      r7_31.Image = "rbxassetid://3570695787"
      r7_31.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r7_31.ZIndex = 1 + _u1
      r8_31.Name = "RainbowToggleButton"
      r8_31.Parent = r7_31
      r8_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r8_31.BackgroundTransparency = 1
      r8_31.Position = UDim2.new(0, 2, 0, 2)
      r8_31.Size = UDim2.new(0, 16, 0, 16)
      r8_31.Image = "rbxassetid://3570695787"
      r8_31.ImageColor3 = Color3.new(1, 0.341176, 0.341176)
      r8_31.ImageTransparency = 1
      r8_31.ZIndex = 1 + _u1
      r12_31.Name = "ColorValueR"
      r12_31.Parent = r11_31
      r12_31.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r12_31.BackgroundTransparency = 1
      r12_31.BorderSizePixel = 0
      r12_31.ClipsDescendants = true
      r12_31.Position = UDim2.new(0, 7, 0, 127)
      r12_31.Size = UDim2.new(0, 50, 0, 16)
      r12_31.ZIndex = 2 + _u1
      r12_31.Font = Enum.Font.SourceSansBold
      r12_31.Text = "R: 000"
      r12_31.TextColor3 = Color3.new(1, 1, 1)
      r12_31.TextSize = 14
      r13_31.Name = "ColorValueRRound"
      r13_31.Parent = r12_31
      r13_31.Active = true
      r13_31.AnchorPoint = Vector2.new(0.5, 0.5)
      r13_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r13_31.BackgroundTransparency = 1
      r13_31.Position = UDim2.new(0.5, 0, 0.5, 0)
      r13_31.Selectable = true
      r13_31.Size = UDim2.new(1, 0, 1, 0)
      r13_31.Image = "rbxassetid://3570695787"
      r13_31.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r13_31.ScaleType = Enum.ScaleType.Slice
      r13_31.SliceCenter = Rect.new(100, 100, 100, 100)
      r13_31.SliceScale = 0.04
      r13_31.ZIndex = 1 + _u1
      r16_31.Name = "ColorValueG"
      r16_31.Parent = r11_31
      r16_31.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r16_31.BackgroundTransparency = 1
      r16_31.BorderSizePixel = 0
      r16_31.ClipsDescendants = true
      r16_31.Position = UDim2.new(0, 60, 0, 127)
      r16_31.Size = UDim2.new(0, 51, 0, 16)
      r16_31.ZIndex = 2 + _u1
      r16_31.Font = Enum.Font.SourceSansBold
      r16_31.Text = "G: 000"
      r16_31.TextColor3 = Color3.new(1, 1, 1)
      r16_31.TextSize = 14
      r17_31.Name = "ColorValueGRound"
      r17_31.Parent = r16_31
      r17_31.Active = true
      r17_31.AnchorPoint = Vector2.new(0.5, 0.5)
      r17_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r17_31.BackgroundTransparency = 1
      r17_31.Position = UDim2.new(0.5, 0, 0.5, 0)
      r17_31.Selectable = true
      r17_31.Size = UDim2.new(1, 0, 1, 0)
      r17_31.Image = "rbxassetid://3570695787"
      r17_31.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r17_31.ScaleType = Enum.ScaleType.Slice
      r17_31.SliceCenter = Rect.new(100, 100, 100, 100)
      r17_31.SliceScale = 0.04
      r17_31.ZIndex = 1 + _u1
      r14_31.Name = "ColorValueB"
      r14_31.Parent = r11_31
      r14_31.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r14_31.BackgroundTransparency = 1
      r14_31.BorderSizePixel = 0
      r14_31.ClipsDescendants = true
      r14_31.Position = UDim2.new(0, 114, 0, 127)
      r14_31.Size = UDim2.new(0, 50, 0, 16)
      r14_31.ZIndex = 2 + _u1
      r14_31.Font = Enum.Font.SourceSansBold
      r14_31.Text = "B: 000"
      r14_31.TextColor3 = Color3.new(1, 1, 1)
      r14_31.TextSize = 14
      r15_31.Name = "ColorValueBRound"
      r15_31.Parent = r14_31
      r15_31.Active = true
      r15_31.AnchorPoint = Vector2.new(0.5, 0.5)
      r15_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r15_31.BackgroundTransparency = 1
      r15_31.Position = UDim2.new(0.5, 0, 0.5, 0)
      r15_31.Selectable = true
      r15_31.Size = UDim2.new(1, 0, 1, 0)
      r15_31.Image = "rbxassetid://3570695787"
      r15_31.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r15_31.ScaleType = Enum.ScaleType.Slice
      r15_31.SliceCenter = Rect.new(100, 100, 100, 100)
      r15_31.SliceScale = 0.04
      r15_31.ZIndex = 1 + _u1
      r18_31.Name = "RoundHueHolder"
      r18_31.Parent = r11_31
      r18_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r18_31.BackgroundTransparency = 1
      r18_31.ClipsDescendants = true
      r18_31.Position = UDim2.new(0, 136, 0, 6)
      r18_31.Size = UDim2.new(0, 28, 0, 114)
      r18_31.ZIndex = 2 + _u1
      r18_31.Image = "rbxassetid://4695575676"
      r18_31.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r18_31.ScaleType = Enum.ScaleType.Slice
      r18_31.SliceCenter = Rect.new(128, 128, 128, 128)
      r18_31.SliceScale = 0.05
      r19_31.Name = "ColorHue"
      r19_31.Parent = r18_31
      r19_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r19_31.BackgroundTransparency = 1
      r19_31.BorderSizePixel = 0
      r19_31.Size = UDim2.new(0, 28, 0, 114)
      r19_31.Image = "http://www.roblox.com/asset/?id=4801885250"
      r19_31.ScaleType = Enum.ScaleType.Crop
      r19_31.ZIndex = 1 + _u1
      r20_31.Name = "HueMarker"
      r20_31.Parent = r18_31
      r20_31.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
      r20_31.BorderSizePixel = 0
      r20_31.Position = UDim2.new(-0.25, 0, 0, 0)
      r20_31.Size = UDim2.new(0, 42, 0, 5)
      r20_31.ZIndex = 1 + _u1
      r21_31.Name = "RoundSaturationHolder"
      r21_31.Parent = r11_31
      r21_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r21_31.BackgroundTransparency = 1
      r21_31.ClipsDescendants = true
      r21_31.Position = UDim2.new(0, 7, 0, 6)
      r21_31.Size = UDim2.new(0, 122, 0, 114)
      r21_31.ZIndex = 2 + _u1
      r21_31.Image = "rbxassetid://4695575676"
      r21_31.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r21_31.ScaleType = Enum.ScaleType.Slice
      r21_31.SliceCenter = Rect.new(128, 128, 128, 128)
      r21_31.SliceScale = 0.05
      r22_31.Name = "ColorSelector"
      r22_31.Parent = r21_31
      r22_31.BackgroundColor3 = r2_31
      r22_31.BorderSizePixel = 0
      r22_31.Size = UDim2.new(0, 122, 0, 114)
      r22_31.Image = "rbxassetid://4805274903"
      r22_31.ZIndex = 1 + _u1
      r23_31.Name = "SaturationMarker"
      r23_31.Parent = r21_31
      r23_31.BackgroundColor3 = Color3.new(1, 1, 1)
      r23_31.BackgroundTransparency = 1
      r23_31.Size = UDim2.new(0, 0, 0, 0)
      r23_31.Image = "http://www.roblox.com/asset/?id=4805639000"
      r23_31.ZIndex = 1 + _u1
      local function r30_31(...)
        -- line: [0, 0] id: 32
        _u1.Text = "R: " .. math.floor(_u0.ImageColor3.r * 255)
        _u2.Text = "G: " .. math.floor(_u0.ImageColor3.g * 255)
        _u3.Text = "B: " .. math.floor(_u0.ImageColor3.b * 255)
      end
      r0_31 = r10_31
      r0_31 = r12_31
      r0_31 = r16_31
      r0_31 = r14_31
      r30_31()
      r0_31 = r25_31
      r0_31 = _u3
      r0_31 = _u2
      r0_31 = _u4
      r0_31 = r11_31
      r10_31.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 33
        if _u0 then
          if _u0 then
            _u0 = false
            _u3:Create(_u4, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Size = UDim2.new(0, 0, 0, 175),
            }):Play()
          end
        else
          _u0 = true
          _u1.ClipsDescendants = false
          _u2.ClipsDescendants = false
          _u3:Create(_u4, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 171, 0, 175),
          }):Play()
        end
      end)
      local r31_31 = {
        H = 1,
        S = 1,
        V = 1,
      }
      local r32_31 = nil
      local r33_31 = nil
      local function r34_31(r0_34, ...)
        -- line: [0, 0] id: 34
        local r3_34 = r0_34.AbsoluteSize.X
        local r4_34 = r0_34.AbsoluteSize.Y
        return math.clamp((_u0.X - r0_34.AbsolutePosition.X), 0, r3_34) / r3_34, math.clamp((_u0.Y - r0_34.AbsolutePosition.Y), 0, r4_34) / r4_34
      end
      r0_31 = _u5
      local function r35_31(r0_35, ...)
        -- line: [0, 0] id: 35
        MaxY2 = r0_35.AbsoluteSize.Y
        return math.clamp((_u0.Y - r0_35.AbsolutePosition.Y), -10, MaxY2) / MaxY2
      end
      r0_31 = _u5
      local function r36_31(...)
        -- line: [0, 0] id: 36
        _u0()
        _u1 = Color3.fromHSV(_u2.H, _u2.S, _u2.V)
        _u3.ImageColor3 = _u1
        _u4.BackgroundColor3 = Color3.fromHSV(_u2.H, 1, 1)
        _u5(_u3.ImageColor3)
      end
      r0_31 = r30_31
      r0_31 = r27_31
      r0_31 = r31_31
      r0_31 = r10_31
      r0_31 = r22_31
      r0_31 = r3_31
      r0_31 = r32_31
      r0_31 = r33_31
      r22_31.MouseLeave:Connect(function(...)
        -- line: [0, 0] id: 37
        if _u0 then
          _u0:Disconnect()
          _u0 = nil
        end
        if _u1 then
          _u1:Disconnect()
          _u1 = nil
        end
      end)
      r0_31 = r32_31
      r0_31 = r33_31
      r19_31.MouseLeave:Connect(function(...)
        -- line: [0, 0] id: 38
        if _u0 then
          _u0:Disconnect()
          _u0 = nil
        end
        if _u1 then
          _u1:Disconnect()
          _u1 = nil
        end
      end)
      r0_31 = r26_31
      r0_31 = _u4
      r0_31 = r8_31
      r0_31 = r29_31
      r0_31 = _u6
      r0_31 = r10_31
      r0_31 = r22_31
      r0_31 = r3_31
      r0_31 = r30_31
      r8_31.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 39
        if not _u0 then
          _u0 = true
          _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ImageTransparency = 0,
          }):Play()
        elseif _u0 then
          _u0 = false
          _u1:Create(_u2, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ImageTransparency = 1,
          }):Play()
        end
        while _u0 do
          _u3 = Color3.fromHSV(_u4, 1, 1)
          _u5.ImageColor3 = _u3
          _u6.BackgroundColor3 = _u3
          _u7(_u3)
          _u8()
          wait()
        end
      end)
      r0_31 = r26_31
      r0_31 = r32_31
      r0_31 = _u7
      r0_31 = r34_31
      r0_31 = r21_31
      r0_31 = r23_31
      r0_31 = r31_31
      r0_31 = r36_31
      r22_31.InputBegan:Connect(function(r0_40, ...)
        -- line: [0, 0] id: 40
        if r0_40.UserInputType == Enum.UserInputType.MouseButton1 and not _u0 then
          if _u1 then
            _u1:Disconnect()
          end
          r0_40 = _u3
          r0_40 = _u4
          r0_40 = _u5
          r0_40 = _u6
          r0_40 = _u7
          _u1 = _u2.RenderStepped:Connect(function(...)
            -- line: [0, 0] id: 41
            local r2_41 = nil	-- notice: implicit variable refs by block#[0]
            local r0_41, r1_41 = _u0(_u1, r2_41)
            _u2.Position = UDim2.new(r0_41, 0, r1_41, 0)
            _u3.S = r0_41
            _u3.V = 1 - r1_41
            _u4()
          end)
        end
      end)
      r0_31 = r32_31
      r22_31.InputEnded:Connect(function(r0_42, ...)
        -- line: [0, 0] id: 42
        if r0_42.UserInputType == Enum.UserInputType.MouseButton1 and _u0 then
          _u0:Disconnect()
        end
      end)
      r0_31 = r26_31
      r0_31 = r33_31
      r0_31 = _u7
      r0_31 = r34_31
      r0_31 = r18_31
      r0_31 = r35_31
      r0_31 = r31_31
      r0_31 = _u4
      r0_31 = r20_31
      r0_31 = r36_31
      r19_31.InputBegan:Connect(function(r0_43, ...)
        -- line: [0, 0] id: 43
        if r0_43.UserInputType == Enum.UserInputType.MouseButton1 and not _u0 then
          if _u1 then
            _u1:Disconnect()
          end
          r0_43 = _u3
          r0_43 = _u4
          r0_43 = _u5
          r0_43 = _u6
          r0_43 = _u7
          r0_43 = _u8
          r0_43 = _u9
          _u1 = _u2.RenderStepped:Connect(function(...)
            -- line: [0, 0] id: 44
            local r2_44 = nil	-- notice: implicit variable refs by block#[0]
            local r0_44, r1_44 = _u0(_u1, r2_44)
            r2_44 = _u2(_u1)
            _u3.H = 1 - r1_44
            _u4:Create(_u5, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Position = UDim2.new(-0.25, 0, r2_44, 0),
            }):Play()
            _u6()
          end)
        end
      end)
      r0_31 = r33_31
      r19_31.InputEnded:Connect(function(r0_45, ...)
        -- line: [0, 0] id: 45
        if r0_45.UserInputType == Enum.UserInputType.MouseButton1 and _u0 then
          _u0:Disconnect()
        end
      end)
      r0_31 = _u9
      r0_31 = _u3
      r0_31 = _u2
      r0_31 = _u10
      r0_31 = _u11
      r0_31 = r25_31
      r0_31 = _u4
      r0_31 = r11_31
      r0_31 = _u12
      r0_31 = _u13
      _u8.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 46
        if not _u0 then
          _u1.ClipsDescendants = true
          _u2.ClipsDescendants = true
          _u3(30)
          _u4(30)
        elseif _u0 then
          _u5 = false
          _u6:Create(_u7, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, 175),
          }):Play()
          _u1.ClipsDescendants = true
          _u2.ClipsDescendants = true
          _u8(30)
          _u9(30)
        end
      end)
      r0_31 = r25_31
      r0_31 = _u4
      r0_31 = r11_31
      r0_31 = _u3
      r0_31 = _u2
      r0_31 = _u15
      r0_31 = _u9
      r0_31 = _u11
      r0_31 = _u8
      r0_31 = _u13
      _u14.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 47
        _u0 = false
        _u1:Create(_u2, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          Size = UDim2.new(0, 0, 0, 175),
        }):Play()
        _u3.ClipsDescendants = true
        _u4.ClipsDescendants = true
        if not _u5 then
          if _u6 then
            _u7(30)
            _u1:Create(_u8, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 360,
            }):Play()
            _u1:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          elseif not _u6 then
            _u1:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          end
        elseif _u5 then
          if not _u6 then
            if not _u6 then
              _u1:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            end
          else
            _u9(30)
            _u1:Create(_u8, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 0,
            }):Play()
            _u1:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          end
        end
        _u1:Create(_u8, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u8.Visible = false
        repeat
          wait()
        until _u8.TextTransparency == 1
        _u8.Visible = true
        _u1:Create(_u8, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    r0_14 = _u0
    r0_14 = r2_14
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    r0_14 = _u1
    function r13_14.CreateButton(r0_48, r1_48, r2_48, ...)
      -- line: [0, 0] id: 48
      local r3_48 = Instance.new("Frame")
      local r4_48 = Instance.new("TextButton")
      local r5_48 = Instance.new("ImageLabel")
      r3_48.Name = _u0(r1_48) .. "ButtonHolder"
      r3_48.Parent = _u1
      r3_48.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r3_48.BorderSizePixel = 0
      r3_48.Size = UDim2.new(0, 170, 0, 30)
      r4_48.Name = "Button"
      r4_48.Parent = r3_48
      r4_48.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r4_48.BackgroundTransparency = 1
      r4_48.BorderSizePixel = 0
      r4_48.Position = UDim2.new(0.052941177, 0, 0, 0)
      r4_48.Size = UDim2.new(0, 153, 0, 24)
      r4_48.ZIndex = 2
      r4_48.AutoButtonColor = false
      r4_48.Font = Enum.Font.SourceSansBold
      r4_48.Text = r1_48
      r4_48.TextColor3 = Color3.new(1, 1, 1)
      r4_48.TextSize = 14
      r5_48.Name = "ButtonRound"
      r5_48.Parent = r4_48
      r5_48.Active = true
      r5_48.AnchorPoint = Vector2.new(0.5, 0.5)
      r5_48.BackgroundColor3 = Color3.new(1, 1, 1)
      r5_48.BackgroundTransparency = 1
      r5_48.BorderSizePixel = 0
      r5_48.ClipsDescendants = true
      r5_48.Position = UDim2.new(0.5, 0, 0.5, 0)
      r5_48.Selectable = true
      r5_48.Size = UDim2.new(1, 0, 1, 0)
      r5_48.Image = "rbxassetid://3570695787"
      r5_48.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r5_48.ScaleType = Enum.ScaleType.Slice
      r5_48.SliceCenter = Rect.new(100, 100, 100, 100)
      r5_48.SliceScale = 0.04
      r0_48 = r2_48
      r0_48 = r4_48
      r4_48.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 49
        _u0(_u1)
      end)
      r0_48 = _u3
      r0_48 = _u4
      r0_48 = _u5
      r0_48 = _u6
      r0_48 = _u7
      _u2.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 50
        if not _u0 then
          _u1(30)
          _u2(30)
        elseif _u0 then
          _u3(30)
          _u4(30)
        end
      end)
      r0_48 = _u9
      r0_48 = _u3
      r0_48 = _u5
      r0_48 = _u10
      r0_48 = _u2
      r0_48 = _u1
      r0_48 = _u7
      _u8.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 51
        if _u0 and _u0 then
          if not _u1 then
            if not _u1 then
              _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            end
          else
            _u6(30)
            _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 0,
            }):Play()
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          end
        elseif _u1 then
          _u2(30)
          _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Rotation = 360,
          }):Play()
          _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0,
          }):Play()
        elseif not _u1 then
          _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0,
          }):Play()
        end
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u4.Visible = false
        repeat
          wait()
        until _u4.TextTransparency == 1
        _u4.Visible = true
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    r0_14 = _u0
    r0_14 = r2_14
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    r0_14 = _u1
    function r13_14.CreateTextbox(r0_52, r1_52, r2_52, ...)
      -- line: [0, 0] id: 52
      local r3_52 = Instance.new("Frame")
      local r4_52 = Instance.new("TextBox")
      local r5_52 = Instance.new("ImageLabel")
      r3_52.Name = _u0(r1_52) .. "TextBoxHolder"
      r3_52.Parent = _u1
      r3_52.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r3_52.BorderSizePixel = 0
      r3_52.Size = UDim2.new(0, 170, 0, 30)
      r4_52.Parent = r3_52
      r4_52.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r4_52.BackgroundTransparency = 1
      r4_52.ClipsDescendants = true
      r4_52.Position = UDim2.new(0.0529999994, 0, 0, 0)
      r4_52.Size = UDim2.new(0, 153, 0, 24)
      r4_52.ZIndex = 2
      r4_52.Font = Enum.Font.SourceSansBold
      r4_52.PlaceholderText = r1_52
      r4_52.Text = ""
      r4_52.TextColor3 = Color3.new(1, 1, 1)
      r4_52.TextSize = 14
      r5_52.Name = "TextBoxRound"
      r5_52.Parent = r4_52
      r5_52.Active = true
      r5_52.AnchorPoint = Vector2.new(0.5, 0.5)
      r5_52.BackgroundColor3 = Color3.new(1, 1, 1)
      r5_52.BackgroundTransparency = 1
      r5_52.BorderSizePixel = 0
      r5_52.ClipsDescendants = true
      r5_52.Position = UDim2.new(0.5, 0, 0.5, 0)
      r5_52.Selectable = true
      r5_52.Size = UDim2.new(1, 0, 1, 0)
      r5_52.Image = "rbxassetid://3570695787"
      r5_52.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r5_52.ScaleType = Enum.ScaleType.Slice
      r5_52.SliceCenter = Rect.new(100, 100, 100, 100)
      r5_52.SliceScale = 0.04
      r0_52 = r2_52
      r0_52 = r4_52
      r4_52.FocusLost:Connect(function(r0_53, ...)
        -- line: [0, 0] id: 53
        if r0_53 then
          _u0(_u1.Text)
        end
      end)
      r0_52 = _u3
      r0_52 = _u4
      r0_52 = _u5
      r0_52 = _u6
      r0_52 = _u7
      _u2.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 54
        if _u0 then
          if _u0 then
            _u3(30)
            _u4(30)
          end
        else
          _u1(30)
          _u2(30)
        end
      end)
      r0_52 = _u9
      r0_52 = _u3
      r0_52 = _u5
      r0_52 = _u10
      r0_52 = _u2
      r0_52 = _u1
      r0_52 = _u7
      _u8.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 55
        if _u0 then
          if _u0 then
            if not _u1 then
              if not _u1 then
                _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                  BackgroundTransparency = 1,
                }):Play()
              end
            else
              _u6(30)
              _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Rotation = 0,
              }):Play()
              _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            end
          end
        elseif not _u1 then
          if not _u1 then
            _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          end
        else
          _u2(30)
          _u3:Create(_u4, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Rotation = 360,
          }):Play()
          _u3:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0,
          }):Play()
        end
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u4.Visible = false
        repeat
          wait()
        until _u4.TextTransparency == 1
        _u4.Visible = true
        _u3:Create(_u4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    r0_14 = _u0
    r0_14 = r2_14
    r0_14 = _u1
    r0_14 = _u2
    r0_14 = r4_14
    r0_14 = r10_14
    r0_14 = r11_14
    r0_14 = _u3
    r0_14 = r12_14
    r0_14 = _u6
    r0_14 = _u4
    r0_14 = _u5
    function r13_14.CreateDropdown(r0_56, r1_56, r2_56, r3_56, r4_56, ...)
      -- line: [0, 0] id: 56
      local r5_56 = Instance.new("Frame")
      local r6_56 = Instance.new("TextLabel")
      local r7_56 = Instance.new("ImageLabel")
      local r8_56 = Instance.new("TextButton")
      local r9_56 = Instance.new("ImageLabel")
      local r10_56 = Instance.new("ScrollingFrame")
      local r11_56 = Instance.new("UIListLayout")
      local r12_56 = _u0(r1_56)
      local r13_56 = 1
      local r14_56 = false
      local r15_56 = r2_56[r3_56]
      local r16_56 = 0
      local r17_56 = 0
      local r18_56 = false
      r5_56.Name = r12_56 .. "DropdownHolder"
      r5_56.Parent = _u1
      r5_56.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r5_56.BorderSizePixel = 0
      r5_56.Size = UDim2.new(0, 170, 0, 30)
      r6_56.Name = "DropdownTitle"
      r6_56.Parent = r5_56
      r6_56.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r6_56.BackgroundTransparency = 1
      r6_56.BorderSizePixel = 0
      r6_56.Position = UDim2.new(0.0529999994, 0, 0, 0)
      r6_56.Size = UDim2.new(0, 153, 0, 24)
      r6_56.ZIndex = 2
      r6_56.Font = Enum.Font.SourceSansBold
      r6_56.Text = r15_56
      r6_56.TextColor3 = Color3.new(1, 1, 1)
      r6_56.TextSize = 14
      r7_56.Name = "DropdownRound"
      r7_56.Parent = r6_56
      r7_56.Active = true
      r7_56.AnchorPoint = Vector2.new(0.5, 0.5)
      r7_56.BackgroundColor3 = Color3.new(1, 1, 1)
      r7_56.BackgroundTransparency = 1
      r7_56.BorderSizePixel = 0
      r7_56.ClipsDescendants = true
      r7_56.Position = UDim2.new(0.5, 0, 0.5, 0)
      r7_56.Selectable = true
      r7_56.Size = UDim2.new(1, 0, 1, 0)
      r7_56.Image = "rbxassetid://3570695787"
      r7_56.ImageColor3 = Color3.new(0.254902, 0.254902, 0.254902)
      r7_56.ScaleType = Enum.ScaleType.Slice
      r7_56.SliceCenter = Rect.new(100, 100, 100, 100)
      r7_56.SliceScale = 0.04
      r8_56.Name = "DropdownToggle"
      r8_56.Parent = r6_56
      r8_56.BackgroundColor3 = Color3.new(1, 1, 1)
      r8_56.BackgroundTransparency = 1
      r8_56.Position = UDim2.new(0.816928029, 0, 0, 0)
      r8_56.Size = UDim2.new(0, 28, 0, 24)
      r8_56.AutoButtonColor = false
      r8_56.Font = Enum.Font.SourceSansBold
      r8_56.Text = ">"
      r8_56.TextColor3 = Color3.new(1, 1, 1)
      r8_56.TextSize = 15
      r9_56.Name = "DropdownMain"
      r9_56.Parent = r6_56
      r9_56.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r9_56.BackgroundTransparency = 1
      r9_56.ClipsDescendants = true
      r9_56.Position = UDim2.new(1.09275186, 0, -0.0336658955, 0)
      r9_56.Size = UDim2.new(0, 0, 0, r17_56)
      r9_56.Image = "rbxassetid://3570695787"
      r9_56.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
      r9_56.ScaleType = Enum.ScaleType.Slice
      r9_56.SliceCenter = Rect.new(100, 100, 100, 100)
      r9_56.SliceScale = 0.04
      r10_56.Parent = r9_56
      r10_56.BackgroundColor3 = Color3.new(1, 1, 1)
      r10_56.BackgroundTransparency = 1
      r10_56.BorderSizePixel = 0
      r10_56.Size = UDim2.new(0, 153, 0, r17_56)
      r10_56.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
      r10_56.CanvasSize = UDim2.new(0, 0, r13_56, 0)
      r10_56.ScrollBarThickness = 3
      r10_56.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
      r10_56.ScrollingDirection = "Y"
      r11_56.Name = "ButtonLayout"
      r11_56.Parent = r10_56
      r11_56.SortOrder = Enum.SortOrder.LayoutOrder
      local r20_56 = r2_56
      for r22_56, r23_56 in pairs() do
        local r24_56 = Instance.new("TextButton")
        r16_56 = r16_56 + 1
        r24_56.Name = _u0(r23_56) .. "Button"
        r24_56.Parent = r10_56
        r24_56.BackgroundColor3 = Color3.new(0.215686, 0.215686, 0.215686)
        r24_56.BackgroundTransparency = 1
        r24_56.BorderSizePixel = 0
        r24_56.Position = UDim2.new(0, 0, 0, 0)
        r24_56.Size = UDim2.new(0, 153, 0, 25)
        r24_56.AutoButtonColor = false
        r24_56.Font = Enum.Font.SourceSansBold
        r24_56.Text = r23_56
        r24_56.TextColor3 = Color3.new(1, 1, 1)
        r24_56.TextSize = 14
        if r16_56 <= 4 then
          r17_56 = r17_56 + 25
          r9_56.Size = UDim2.new(0, 0, 0, r17_56)
        elseif r16_56 >= 4 then
          r14_56 = true
        end
        if r14_56 then
          r13_56 = r13_56 + 0.25
          r10_56.CanvasSize = UDim2.new(0, 0, r13_56, 0)
        end
        r0_56 = _u2
        r0_56 = r24_56
        r24_56.InputBegan:Connect(function(r0_57, ...)
          -- line: [0, 0] id: 57
          if r0_57.UserInputType == Enum.UserInputType.MouseMovement then
            _u0:Create(_u1, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0.5,
            }):Play()
          end
        end)
        r0_56 = _u2
        r0_56 = r24_56
        r24_56.InputEnded:Connect(function(r0_58, ...)
          -- line: [0, 0] id: 58
          if r0_58.UserInputType == Enum.UserInputType.MouseMovement then
            _u0:Create(_u1, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          end
        end)
        r0_56 = r15_56
        r0_56 = r23_56
        r0_56 = r4_56
        r0_56 = r18_56
        r0_56 = r8_56
        r0_56 = _u2
        r0_56 = r6_56
        r0_56 = r10_56
        r0_56 = r17_56
        r0_56 = r9_56
        r24_56.MouseButton1Down:Connect(function(...)
          -- line: [0, 0] id: 59
          _u0 = _u1
          _u2(_u1)
          _u3 = false
          _u4.Text = ">"
          _u5:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Rotation = 0,
          }):Play()
          _u5:Create(_u6, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextColor3 = Color3.new(1, 1, 1),
          }):Play()
          _u6.Text = _u0
          _u5:Create(_u7, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ScrollBarImageTransparency = 1,
          }):Play()
          _u5:Create(_u7, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, _u8),
          }):Play()
          _u5:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, _u8),
          }):Play()
        end)
        -- close: r24_56
        -- close: r22_56
      end
      r0_56 = r18_56
      r0_56 = r8_56
      r0_56 = _u2
      r0_56 = r6_56
      r0_56 = r15_56
      r0_56 = r10_56
      r0_56 = r17_56
      r0_56 = r9_56
      r0_56 = _u3
      r0_56 = _u1
      r0_56 = r1_56
      r8_56.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 60
        if not _u0 then
          if not _u0 then
            _u8.ClipsDescendants = false
            _u9.ClipsDescendants = false
            _u0 = true
            _u1.Text = "<"
            _u2:Create(_u1, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = -360,
            }):Play()
            _u2:Create(_u3, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              TextColor3 = Color3.new(0.698039, 0.698039, 0.698039),
            }):Play()
            _u3.Text = _u10
            _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              ScrollBarImageTransparency = 0,
            }):Play()
            _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Size = UDim2.new(0, 153, 0, _u6),
            }):Play()
            _u2:Create(_u7, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Size = UDim2.new(0, 153, 0, _u6),
            }):Play()
          end
        else
          _u0 = false
          _u1.Text = ">"
          _u2:Create(_u1, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Rotation = 0,
          }):Play()
          _u2:Create(_u3, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            TextColor3 = Color3.new(1, 1, 1),
          }):Play()
          _u3.Text = _u4
          _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            ScrollBarImageTransparency = 1,
          }):Play()
          _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, _u6),
          }):Play()
          _u2:Create(_u7, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0, _u6),
          }):Play()
        end
      end)
      r0_56 = _u5
      r0_56 = _u6
      r0_56 = _u7
      r0_56 = r18_56
      r0_56 = r8_56
      r0_56 = _u2
      r0_56 = r6_56
      r0_56 = r15_56
      r0_56 = r10_56
      r0_56 = r9_56
      r0_56 = r17_56
      r0_56 = _u3
      r0_56 = _u1
      r0_56 = _u8
      r0_56 = _u9
      _u4.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 61
        if _u0 then
          if _u0 then
            _u3 = false
            _u4.Text = ">"
            _u5:Create(_u4, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 0,
            }):Play()
            _u5:Create(_u6, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              TextColor3 = Color3.new(1, 1, 1),
            }):Play()
            _u6.Text = _u7
            _u5:Create(_u8, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              ScrollBarImageTransparency = 1,
            }):Play()
            _u5:Create(_u8, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Size = UDim2.new(0, 0, 0, 0),
            }):Play()
            _u5:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Size = UDim2.new(0, 0, 0, _u10),
            }):Play()
            _u11.ClipsDescendants = true
            _u12.ClipsDescendants = true
            _u13(30)
            _u14(30)
          end
        else
          _u1(30)
          _u2(30)
        end
      end)
      r0_56 = r18_56
      r0_56 = r8_56
      r0_56 = _u2
      r0_56 = r6_56
      r0_56 = r15_56
      r0_56 = r10_56
      r0_56 = r17_56
      r0_56 = r9_56
      r0_56 = _u3
      r0_56 = _u1
      r0_56 = _u11
      r0_56 = _u5
      r0_56 = _u7
      r0_56 = _u4
      r0_56 = _u9
      _u10.MouseButton1Down:Connect(function(...)
        -- line: [0, 0] id: 62
        _u0 = false
        _u1.Text = ">"
        _u2:Create(_u1, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          Rotation = 0,
        }):Play()
        _u2:Create(_u3, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextColor3 = Color3.new(1, 1, 1),
        }):Play()
        _u3.Text = _u4
        _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          ScrollBarImageTransparency = 1,
        }):Play()
        _u2:Create(_u5, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          Size = UDim2.new(0, 0, 0, _u6),
        }):Play()
        _u2:Create(_u7, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          Size = UDim2.new(0, 0, 0, _u6),
        }):Play()
        _u8.ClipsDescendants = true
        _u9.ClipsDescendants = true
        if not _u10 then
          if _u11 then
            _u12(30)
            _u2:Create(_u13, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = -360,
            }):Play()
            _u2:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          elseif not _u11 then
            _u2:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 0,
            }):Play()
          end
        elseif _u10 then
          if not _u11 then
            if not _u11 then
              _u2:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 1,
              }):Play()
            end
          else
            _u14(30)
            _u2:Create(_u13, TweenInfo.new(0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              Rotation = 0,
            }):Play()
            _u2:Create(_u9, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
              BackgroundTransparency = 1,
            }):Play()
          end
        end
        _u2:Create(_u13, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 1,
        }):Play()
        _u13.Visible = false
        repeat
          wait()
        until _u13.TextTransparency == 1
        _u13.Visible = true
        _u2:Create(_u13, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
          TextTransparency = 0,
        }):Play()
      end)
    end
    return r13_14
  end
  return r15_10
end
return r12_0
