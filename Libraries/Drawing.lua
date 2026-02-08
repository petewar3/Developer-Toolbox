-- in development
local Drawing = {}

local DrawingPrimitives = {
    Line = true,
    Square = true,
    Text = true,
    Triangle = true
}

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

local RenderContainer = {
    Objects = {}
}

local Renderers = {}

Renderers.Line = {}

function Renderers.Line:Create(obj)
    obj._backend = {
        From = obj.From,
        To = obj.To,
        Color = obj.Color,
        Thickness = obj.Thickness,
        Transparency = obj.Transparency,
        Visible = obj.Visible
    }
end

function Renderers.Line:Update(obj, property, value)
    local backend = obj._backend
    if backend then
        backend[property] = value
    end
end

function Renderers.Line:Destroy(obj)
    obj._backend = nil
end

Renderers.Square = {}

function Renderers.Square:Create(obj)
    obj._backend = {
        Position = obj.Position,
        Size = obj.Size,
        Filled = obj.Filled,
        Color = obj.Color,
        Thickness = obj.Thickness,
        Transparency = obj.Transparency,
        Visible = obj.Visible
    }
end

function Renderers.Square:Update(obj, property, value)
    local backend = obj._backend
    if backend then
        backend[property] = value
    end
end

function Renderers.Square:Destroy(obj)
    obj._backend = nil
end

Renderers.Text = {}

function Renderers.Text:Create(obj)
    obj._backend = {
        Text = obj.Text,
        Position = obj.Position,
        Size = obj.Size,
        Font = obj.Font,
        Center = obj.Center,
        Outline = obj.Outline,
        OutlineColor = obj.OutlineColor,
        Color = obj.Color,
        Transparency = obj.Transparency,
        Visible = obj.Visible
    }
end

function Renderers.Text:Update(obj, property, value)
    local backend = obj._backend
    if backend then
        backend[property] = value
    end
end

function Renderers.Text:Destroy(obj)
    obj._backend = nil
end

Renderers.Triangle = {}

function Renderers.Triangle:Create(obj)
    obj._backend = {
        PointA = obj.PointA,
        PointB = obj.PointB,
        PointC = obj.PointC,
        Filled = obj.Filled,
        Color = obj.Color,
        Thickness = obj.Thickness,
        Transparency = obj.Transparency,
        Visible = obj.Visible
    }
end

function Renderers.Triangle:Update(obj, property, value)
    local backend = obj._backend
    if backend then
        backend[property] = value
    end
end

function Renderers.Triangle:Destroy(obj)
    obj._backend = nil
end

local function ValidateType(expected, value)
    if expected == "Vector2" then
        return typeof(value) == "Vector2"
    elseif expected == "Color3" then
        return typeof(value) == "Color3"
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
    
    self.onPropertyChanged = function(_, key, value)
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
    obj.OutlineColor = Color3.new()
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

    object.Visible = false
    object.Color = Color3.new(1, 1, 1)
    object.Transparency = 1
    object.Thickness = 1
    
    local constructor = PrimitiveConstructors[drawing_type]
    constructor(object)
    
    local renderer = Renderers[drawing_type]
    if renderer then
        renderer:Create(obj)
    end
    
    RenderContainer.Objects[object] = true

    return object
end

return Drawing
