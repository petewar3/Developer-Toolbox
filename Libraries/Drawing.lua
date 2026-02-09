local Drawing = {}

local DrawingPrimitives = {
    Line = true,
    Square = true,
    Text = true,
    Triangle = true
}

local gethui = gethui or function()
    return game:GetService("CoreGui")
end

local game, Instance, Enum, math, Vector2, Color3, typeof, assert, string, pairs = game, Instance, Enum, math, Vector2, Color3, typeof, assert, string, pairs

local drawing_ui_container = Instance.new("ScreenGui", gethui())
drawing_ui_container.Name = "DrawingContainer"
drawing_ui_container.IgnoreGuiInset = true
drawing_ui_container.ResetOnSpawn = false
drawing_ui_container.ZIndexBehavior = Enum.ZIndexBehavior.Global

local container_priority_conn

local function MoveContainerPriority()
    local children = gethui():GetChildren()
    if children[#children] ~= drawing_ui_container then
        if typeof(container_priority_conn) == "RBXScriptConnection" then
            container_priority_conn:Disconnect()
        end
        
        drawing_ui_container.Parent = nil
        drawing_ui_container.Parent = gethui()
        container_priority_conn = gethui().ChildAdded:Connect(function(child)
            if typeof(drawing_ui_container) ~= "Instance" then
                if typeof(container_priority_conn) == "RBXScriptConnection" then
                    container_priority_conn:Disconnect()
                end
                
                return
            end
            
            if child ~= drawing_ui_container then
                task.defer(MoveContainerPriority)
            end
        end)
    end
end

MoveContainerPriority()

local function Rotate(vector)
    return math.deg(math.atan2(vector.Y, vector.X))
end

local function Magnitude(vector)
    return math.sqrt(vector.X ^ 2 + vector.Y ^ 2)
end

local ZIndexCounter = 0

local function NextZIndex()
    ZIndexCounter = ZIndexCounter + 1
    return ZIndexCounter
end

local FontMap = {
    UI = Enum.Font.SourceSans, -- UI
    Monospace = Enum.Font.Code, -- Monospace
    Plex = Enum.Font.Gotham, -- Plex
    System = Enum.Font.Gotham -- System 
}

local function ResolveFont(name)
    return FontMap[name] or Enum.Font.SourceSans
end

local RenderContainer = {
    Objects = {}
}

local function CacheCheck(backend, key, value)
    if backend._cache[key] == value then
        return true
    end
    
    backend._cache[key] = value
    return false
end

local Renderers = {}

Renderers.Line = {}

function Renderers.Line:Create(obj)
    local frame = Instance.new("Frame", drawing_ui_container)
    frame.BorderSizePixel = 0
    frame.AnchorPoint = Vector2.new(0, 0.5)
    frame.BackgroundColor3 = obj.Color
    frame.BackgroundTransparency = 1 - obj.Transparency
    frame.Visible = obj.Visible
    frame.ZIndex = NextZIndex()

    obj._backend = {
        Frame = frame,
        _cache = {}
    }
    
    print(obj._backend.Frame)

    self:Update(obj, "From", obj.From)
    self:Update(obj, "To", obj.To)
    self:Update(obj, "Thickness", obj.Thickness)
end

function Renderers.Line:Update(obj, property, value)
    local frame = obj._backend.Frame
    
    if property == "Color" then
        if not CacheCheck(obj._backend, "Color", value) then
            frame.BackgroundColor3 = value
        end
    elseif property == "Transparency" then
        if not CacheCheck(obj._backend, "Transparency", value) then
            frame.BackgroundTransparency = 1 - value
        end
    elseif property == "Visible" then
        if not CacheCheck(obj._backend, "Visible", value) then
            frame.Visible = value
        end
    elseif property == "Thickness" or property == "From" or property == "To" then
        local from = obj.From
        local to = obj.To
        local dir = to - from
        local length = Magnitude(dir)
        local angle = Rotate(dir)

        if not CacheCheck(obj._backend, "Size", length .. "," .. obj.Thickness) then
            frame.Size = UDim2.fromOffset(length, obj.Thickness)
        end
        if not CacheCheck(obj._backend, "Position", from) then
            frame.Position = UDim2.fromOffset(from.X, from.Y)
        end
        if not CacheCheck(obj._backend, "Rotation", angle) then
            frame.Rotation = angle
        end
    end
end

function Renderers.Line:Destroy(obj)
    obj._backend.Frame:Destroy()
    obj._backend = nil
end

Renderers.Square = {}

function Renderers.Square:Create(obj)
    local frame = Instance.new("Frame", drawing_ui_container)
    frame.BorderSizePixel = 0
    frame.BackgroundColor3 = obj.Color
    frame.BackgroundTransparency = 1 - obj.Transparency
    frame.Visible = obj.Visible
    frame.Position = UDim2.fromOffset(obj.Position.X, obj.Position.Y)
    frame.Size = UDim2.fromOffset(obj.Size.X, obj.Size.Y)
    frame.ZIndex = NextZIndex()

    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Thickness = obj.Thickness
    stroke.Color = obj.Color
    stroke.Transparency = 0
    stroke.ZIndex = frame.ZIndex

    obj._backend = {
        Frame = frame,
        Stroke = stroke,
        _cache = {}
    }

    self:Update(obj, "Filled", obj.Filled)
end

function Renderers.Square:Update(obj, property, value)
    local frame = obj._backend.Frame
    local stroke = obj._backend.Stroke
    
    if property == "Position" then
        if not CacheCheck(obj._backend, "Position", value) then
            frame.Position = UDim2.fromOffset(value.X, value.Y)
        end
    elseif property == "Size" then
        if not CacheCheck(obj._backend, "Size", value) then
            frame.Size = UDim2.fromOffset(value.X, value.Y)
        end
    elseif property == "Color" then
        if not CacheCheck(obj._backend, "Color", value) then
            frame.BackgroundColor3 = value
            stroke.Color = value
        end
    elseif property == "Transparency" then
        if not CacheCheck(obj._backend, "Transparency", value) then
            frame.BackgroundTransparency = 1 - value
        end
    elseif property == "Thickness" then
        if not CacheCheck(obj._backend, "Thickness", value) then
            stroke.Thickness = value
        end
    elseif property == "Visible" then
        if not CacheCheck(obj._backend, "Visible", value) then
            frame.Visible = value
        end
    elseif property == "Filled" then
        if not CacheCheck(obj._backend, "Filled", value) then
            if value then
                frame.BackgroundTransparency = 1 - obj.Transparency
                stroke.Enabled = false
            else
                frame.BackgroundTransparency = 1
                stroke.Enabled = true
            end
        end
    end
end

function Renderers.Square:Destroy(obj)
    obj._backend.Frame:Destroy()
    obj._backend = nil
end

Renderers.Text = {}

local function DrawText(obj)
    local container = obj._backend.Container
    container:ClearAllChildren()
    
    local function DrawSingleText(pos_x, pos_y, color, transparency)
        local label = Instance.new("TextLabel", container)
        label.BackgroundTransparency = 1
        label.BorderSizePixel = 0
        label.RichText = false
        label.Text = obj.Text
        label.TextSize = obj.Size
        label.Font = ResolveFont(obj.Font)
        label.TextColor3 = color
        label.TextTransparency = transparency
        label.Position = UDim2.fromOffset(pos_x, pos_y)
        label.AnchorPoint = obj.Center and Vector2.new(0.5, 0.5) or Vector2.zero
        label.TextXAlignment = obj.Center and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
        label.TextYAlignment = obj.Center and Enum.TextYAlignment.Center or Enum.TextYAlignment.Top
    end
    
    local alpha = 1 - obj.Transparency
    local x, y = obj.Position.X, obj.Position.Y
    
    if obj.Outline then
        local outline_color = obj.OutlineColor
        
        for dx = -1, 1 do
            for dy = -1, 1 do
                if dx ~= 0 or dy ~= 0 then
                    DrawSingleText(x + dx, y + dy, outline_color, alpha)
                end
            end
        end
    end
    
    DrawSingleText(x, y, obj.Color, alpha)
end

function Renderers.Text:Create(obj)
    local container = Instance.new("Folder", drawing_ui_container)
    container.Name = "TextContainer"

    obj._backend = {
        Container = container,
        _cache = {}
    }
    
    DrawText(obj)
end

function Renderers.Text:Update(obj, property, value)
    DrawText(obj)
end

function Renderers.Text:Destroy(obj)
    obj._backend.Container:Destroy()
    obj._backend = nil
end

Renderers.Triangle = {}

function Renderers.Triangle:Create(obj)
    local left_image = Instance.new("ImageLabel")
    local right_image = Instance.new("ImageLabel")
    
    for _, image in pairs({left_image, right_image}) do
        image.BackgroundTransparency = 1
        image.AnchorPoint = Vector2.new(0.5, 0.5)
        image.BorderSizePixel = 0
    end
    
    left_image.Image = "rbxassetid://319692151"
    right_image.Image = "rbxassetid://319692171"
    
    obj._backend = {
        Left = left_image,
        Right = right_image,
        Parent = nil,
        _cache = {}
    }
    
    if typeof(obj.Parent) == "Instance" then
        left_image.Parent = obj.Parent
        right_image.Parent = obj.Parent
        obj._backend.Parent = obj.Parent
    end

    self:Update(obj)
end

function Renderers.Triangle:Update(obj)
    local left_image, right_image = obj._backend.Left, obj._backend.Right
    local point_a, point_b, point_c = obj.PointA, obj.PointB, obj.PointC
    local visible, zindex, color, parent = obj.Visible, obj.ZIndex, obj.Color, obj.Parent
    
    if obj._backend.Parent ~= parent then
        if typeof(parent) == "Instance" then
            left_image.Parent = parent
            right_image.Parent = parent
            obj._backend.Parent = parent
        else
            left_image.Parent = nil
            right_image.Parent = nil
            obj._backend.Parent = nil
        end
    end

    if not CacheCheck(obj._backend, "Visible", visible) then
        left_image.Visible = visible
        right_image.Visible = visible
    end
    if not CacheCheck(obj._backend, "ZIndex", zindex) then
        left_image.ZIndex = zindex
        right_image.ZIndex = zindex
    end
    if not CacheCheck(obj._backend, "Color", color) then
        left_image.ImageColor3 = color
        right_image.ImageColor3 = color
    end

    if not visible then return end

    local edges = {
        {Start = point_a, End = point_b, Opposite = point_c},
        {Start = point_b, End = point_c, Opposite = point_a},
        {Start = point_c, End = point_a, Opposite = point_b}
    }
    
    local longest_edge = edges[1]
    for i = 2, 3 do
        if (edges[i].End - edges[i].Start).Magnitude > (longest_edge.End - longest_edge.Start).Magnitude then
            longest_edge = edges[i]
        end
    end

    local edge_vector = longest_edge.End - longest_edge.Start
    local to_opposite = longest_edge.Opposite - longest_edge.Start
    local projected_length = edge_vector.Unit:Dot(to_opposite)
    local perpendicular_vector = to_opposite - (edge_vector.Unit * projected_length)
    local perpendicular_length = perpendicular_vector.Magnitude
    local rotation_angle = math.deg(math.atan2(perpendicular_vector.Y, perpendicular_vector.X)) - 90

    local base_point = longest_edge.Start + (edge_vector.Unit * projected_length)
    local other_point = (-edge_vector:Cross(perpendicular_vector) < 0) and (base_point - perpendicular_vector) or (base_point + (edge_vector - perpendicular_vector))
    local width1 = base_point - other_point
    local width2 = width1.Unit * (edge_vector.Magnitude - width1.Magnitude)
    local center1 = base_point + (width2 + perpendicular_vector) * 0.5
    local center2 = other_point + (width1 + perpendicular_vector) * 0.5

    if not CacheCheck(obj._backend, "LeftPosition", center2) then
        left_image.Position = UDim2.fromOffset(center2.X - 1, center2.Y - 1)
    end
    if not CacheCheck(obj._backend, "LeftSize", UDim2.fromOffset(width1.Magnitude + 2, perpendicular_length + 2)) then
        left_image.Size = UDim2.fromOffset(width1.Magnitude + 2, perpendicular_length + 2)
    end
    if not CacheCheck(obj._backend, "LeftRotation", rotation_angle) then
        left_image.Rotation = rotation_angle
    end

    if not CacheCheck(obj._backend, "RightPosition", center1) then
        right_image.Position = UDim2.fromOffset(center1.X - 1, center1.Y - 1)
    end
    if not CacheCheck(obj._backend, "RightSize", UDim2.fromOffset(width2.Magnitude + 2, perpendicular_length + 2)) then
        right_image.Size = UDim2.fromOffset(width2.Magnitude + 2, perpendicular_length + 2)
    end
    if not CacheCheck(obj._backend, "RightRotation", rotation_angle) then
        right_image.Rotation = rotation_angle
    end
end

function Renderers.Triangle:Destroy(obj)
    obj._backend.Left:Destroy()
    obj._backend.Right:Destroy()
    obj._backend = nil
end

local BaseObject = {}
BaseObject.__index = BaseObject

function BaseObject:Remove()
    if self._removed then
        return
    end

    self._removed = true

    local renderer = Renderers[self._type]
    if renderer then
        renderer:Destroy(self)
    end
    
    RenderContainer.Objects[self] = nil
end

local function ValidateType(expected, value)
    if expected == "Vector2" then
        return typeof(value) == "Vector2"
    elseif expected == "Color3" then
        return typeof(value) == "Color3"
    elseif expected == "Font" then
        return typeof(value) == "number"
    else
        return typeof(value) == expected
    end
end

local PropertySchemas = {
    Line = {
        From = "Vector2",
        To = "Vector2",
        Thickness = "number",
        Color = "Color3",
        Transparency = "number",
        Visible = "boolean",
    },

    Square = {
        Position = "Vector2",
        Size = "Vector2",
        Filled = "boolean",
        Thickness = "number",
        Color = "Color3",
        Transparency = "number",
        Visible = "boolean",
    },

    Text = {
        Text = "string",
        Position = "Vector2",
        Size = "number",
        Font = "number",
        Center = "boolean",
        Outline = "boolean",
        OutlineColor = "Color3",
        Color = "Color3",
        Transparency = "number",
        Visible = "boolean",
    },

    Triangle = {
        PointA = "Vector2",
        PointB = "Vector2",
        PointC = "Vector2",
        Filled = "boolean",
        Thickness = "number",
        Color = "Color3",
        Transparency = "number",
        Visible = "boolean",
    }
}

local function CreateObject(object_type)
    local properties = {}

    local self = {
        _type = object_type,
        _removed = false
    }
    
    self._onPropertyChanged = function(_, key, value)
        local renderer = Renderers[self._type]
        if renderer then
            renderer:Update(self, key, value)
        end
    end

    return setmetatable(self, {
        __index = function(_, key)
            if BaseObject[key] then
                return BaseObject[key]
            end
            return properties[key]
        end,

        __newindex = function(_, key, value)
            if self._removed or key == "_type" then
                return
            end
            
            local schema = PropertySchemas[self._type]
            local expected = schema and schema[key]
            
            if expected and not ValidateType(expected, value) then
                error(string.format("Unable to assign property %s. %s expected, got %s", key, expected, typeof(value)), 2)
            end

            properties[key] = value

            if self._onPropertyChanged then
                self:_onPropertyChanged(key, value)
            end
        end
    })
end

local PrimitiveConstructors = {}

PrimitiveConstructors.Line = function(obj)
    obj.From = Vector2.zero
    obj.To = Vector2.zero
end

PrimitiveConstructors.Square = function(obj)
    obj.Position = Vector2.zero
    obj.Size = Vector2.zero
    obj.Filled = false
end

PrimitiveConstructors.Text = function(obj)
    obj.Text = ""
    obj.Position = Vector2.zero
    obj.Size = 13
    obj.Font = 2
    obj.Center = false
    obj.Outline = false
    obj.OutlineColor = Color3.new(0, 0, 0)
end

PrimitiveConstructors.Triangle = function(obj)
    obj.PointA = Vector2.zero
    obj.PointB = Vector2.zero
    obj.PointC = Vector2.zero
    obj.Filled = false
end

function Drawing.new(drawing_type)
    assert(typeof(drawing_type) == "string", string.format("bad argument #1 to 'Drawing.new' (string expected, got %s)", typeof(drawing_type)))
    assert(DrawingPrimitives[drawing_type], string.format("bad argument #1 to 'Drawing.new' (invalid drawing type: %s)", drawing_type))

    local object = CreateObject(drawing_type)
    
    local old_onPropertyChanged = object._onPropertyChanged
    object._onPropertyChanged = nil

    object.Visible = false
    object.Color = Color3.new(1, 1, 1)
    object.Transparency = 1
    
    if drawing_type ~= "Text" then
        object.Thickness = 1
    end
    
    local constructor = PrimitiveConstructors[drawing_type]
    constructor(object)
    
    local renderer = Renderers[drawing_type]
    if renderer then
        renderer:Create(object)
    end
    
    RenderContainer.Objects[object] = true
    object._onPropertyChanged = old_onPropertyChanged

    return object
end

function Drawing.clear()
    for obj in pairs(RenderContainer.Objects) do
        obj:Remove()
    end
end

Drawing.Fonts = {
    "UI",
    "Monospace",
    "Plex",
    "System"
}

return Drawing
