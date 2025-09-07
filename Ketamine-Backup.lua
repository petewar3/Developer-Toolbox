--[[
Credits to my friend cherry that made this script.
Cherry Discord Server: https://discord.gg/7xYqrnwSWr
]]

-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.1

--

-- Create objects
local parent = nil;
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- Ketamine
    ["Instance1"] = Instance.new("TextButton"); -- Window
    ["Instance2"] = Instance.new("LocalScript"); -- UIControl
    ["Instance3"] = Instance.new("ModuleScript"); -- Settings
    ["Instance4"] = Instance.new("ModuleScript"); -- Shared
    ["Instance5"] = Instance.new("ModuleScript"); -- CodeBox
    ["Instance6"] = Instance.new("ModuleScript"); -- ToString
    ["Instance7"] = Instance.new("ModuleScript"); -- HookFunction
    ["Instance8"] = Instance.new("Folder"); -- PageControls
    ["Instance9"] = Instance.new("ModuleScript"); -- Settings
    ["Instance10"] = Instance.new("ModuleScript"); -- RSpy
    ["Instance11"] = Instance.new("ModuleScript"); -- ESpy
    ["Instance12"] = Instance.new("ModuleScript"); -- HTTPSpy
    ["Instance13"] = Instance.new("ModuleScript"); -- ScriptScanner
    ["Instance14"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance15"] = Instance.new("ImageLabel"); -- Shadow
    ["Instance16"] = Instance.new("Frame"); -- Main
    ["Instance17"] = Instance.new("Frame"); -- TopbarZone
    ["Instance18"] = Instance.new("ImageLabel"); -- Icon
    ["Instance19"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance20"] = Instance.new("ImageLabel"); -- Glow
    ["Instance21"] = Instance.new("TextLabel"); -- Title
    ["Instance22"] = Instance.new("Frame"); -- Separator
    ["Instance23"] = Instance.new("Frame"); -- Buttons
    ["Instance24"] = Instance.new("TextButton"); -- Minimize
    ["Instance25"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance26"] = Instance.new("ImageLabel"); -- Icon
    ["Instance27"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance28"] = Instance.new("TextButton"); -- Close
    ["Instance29"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance30"] = Instance.new("ImageLabel"); -- Icon
    ["Instance31"] = Instance.new("Frame"); -- Contents
    ["Instance32"] = Instance.new("Frame"); -- Buttons
    ["Instance33"] = Instance.new("Frame"); -- Separator
    ["Instance34"] = Instance.new("Frame"); -- Holder
    ["Instance35"] = Instance.new("Frame"); -- List
    ["Instance36"] = Instance.new("TextButton"); -- HTTPSpy
    ["Instance37"] = Instance.new("Frame"); -- Cut
    ["Instance38"] = Instance.new("ImageLabel"); -- Icon
    ["Instance39"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance40"] = Instance.new("TextLabel"); -- Label
    ["Instance41"] = Instance.new("TextButton"); -- Home
    ["Instance42"] = Instance.new("Frame"); -- Cut
    ["Instance43"] = Instance.new("ImageLabel"); -- Icon
    ["Instance44"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance45"] = Instance.new("TextLabel"); -- Label
    ["Instance46"] = Instance.new("TextButton"); -- RSpy
    ["Instance47"] = Instance.new("Frame"); -- Cut
    ["Instance48"] = Instance.new("TextLabel"); -- Label
    ["Instance49"] = Instance.new("ImageLabel"); -- Icon
    ["Instance50"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance51"] = Instance.new("TextButton"); -- ESpy
    ["Instance52"] = Instance.new("Frame"); -- Cut
    ["Instance53"] = Instance.new("TextLabel"); -- Label
    ["Instance54"] = Instance.new("ImageLabel"); -- Icon
    ["Instance55"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance56"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance57"] = Instance.new("TextButton"); -- Settings
    ["Instance58"] = Instance.new("Frame"); -- Cut
    ["Instance59"] = Instance.new("TextLabel"); -- Label
    ["Instance60"] = Instance.new("ImageLabel"); -- Icon
    ["Instance61"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance62"] = Instance.new("Frame"); -- Separator
    ["Instance63"] = Instance.new("TextLabel"); -- Label
    ["Instance64"] = Instance.new("Frame"); -- SeparatorLeft
    ["Instance65"] = Instance.new("Frame"); -- SeparatorRight
    ["Instance66"] = Instance.new("Frame"); -- Separator
    ["Instance67"] = Instance.new("TextLabel"); -- Label
    ["Instance68"] = Instance.new("Frame"); -- SeparatorLeft
    ["Instance69"] = Instance.new("Frame"); -- SeparatorRight
    ["Instance70"] = Instance.new("TextButton"); -- ScriptScanner
    ["Instance71"] = Instance.new("Frame"); -- Cut
    ["Instance72"] = Instance.new("ImageLabel"); -- Icon
    ["Instance73"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance74"] = Instance.new("TextLabel"); -- Label
    ["Instance75"] = Instance.new("Frame"); -- Pages
    ["Instance76"] = Instance.new("Frame"); -- NotFound
    ["Instance77"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance78"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance79"] = Instance.new("Frame"); -- RSpy
    ["Instance80"] = Instance.new("Frame"); -- Buttons
    ["Instance81"] = Instance.new("TextButton"); -- To
    ["Instance82"] = Instance.new("ImageLabel"); -- Icon
    ["Instance83"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance84"] = Instance.new("TextLabel"); -- Label
    ["Instance85"] = Instance.new("TextButton"); -- From
    ["Instance86"] = Instance.new("ImageLabel"); -- Icon
    ["Instance87"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance88"] = Instance.new("TextLabel"); -- Label
    ["Instance89"] = Instance.new("Frame"); -- Separator
    ["Instance90"] = Instance.new("Frame"); -- Separator
    ["Instance91"] = Instance.new("Frame"); -- Contents
    ["Instance92"] = Instance.new("Frame"); -- From
    ["Instance93"] = Instance.new("ScrollingFrame"); -- Logs
    ["Instance94"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance95"] = Instance.new("TextButton"); -- Log
    ["Instance96"] = Instance.new("Frame"); -- Contents
    ["Instance97"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance98"] = Instance.new("Frame"); -- Frame
    ["Instance99"] = Instance.new("TextLabel"); -- Label
    ["Instance100"] = Instance.new("Frame"); -- Selection
    ["Instance101"] = Instance.new("Frame"); -- Separator
    ["Instance102"] = Instance.new("Frame"); -- To
    ["Instance103"] = Instance.new("ScrollingFrame"); -- Logs
    ["Instance104"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance105"] = Instance.new("TextButton"); -- Log
    ["Instance106"] = Instance.new("Frame"); -- Contents
    ["Instance107"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance108"] = Instance.new("Frame"); -- Frame
    ["Instance109"] = Instance.new("TextLabel"); -- Label
    ["Instance110"] = Instance.new("Frame"); -- Selection
    ["Instance111"] = Instance.new("TextBox"); -- TextBox
    ["Instance112"] = Instance.new("Frame"); -- Separator
    ["Instance113"] = Instance.new("ScrollingFrame"); -- Buttons
    ["Instance114"] = Instance.new("UIGridLayout"); -- UIGridLayout
    ["Instance115"] = Instance.new("TextButton"); -- Button
    ["Instance116"] = Instance.new("Frame"); -- Contents
    ["Instance117"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance118"] = Instance.new("Frame"); -- Frame
    ["Instance119"] = Instance.new("TextLabel"); -- Label
    ["Instance120"] = Instance.new("Frame"); -- Selection
    ["Instance121"] = Instance.new("Frame"); -- Separator
    ["Instance122"] = Instance.new("ScrollingFrame"); -- Settings
    ["Instance123"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance124"] = Instance.new("TextButton"); -- boolean
    ["Instance125"] = Instance.new("Frame"); -- State
    ["Instance126"] = Instance.new("UICorner"); -- UICorner
    ["Instance127"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance128"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance129"] = Instance.new("Frame"); -- State
    ["Instance130"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance131"] = Instance.new("UICorner"); -- UICorner
    ["Instance132"] = Instance.new("TextLabel"); -- Label
    ["Instance133"] = Instance.new("Frame"); -- Frame
    ["Instance134"] = Instance.new("Frame"); -- table
    ["Instance135"] = Instance.new("Frame"); -- State
    ["Instance136"] = Instance.new("UICorner"); -- UICorner
    ["Instance137"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance138"] = Instance.new("Frame"); -- Pointer
    ["Instance139"] = Instance.new("UICorner"); -- UICorner
    ["Instance140"] = Instance.new("Frame"); -- Fill
    ["Instance141"] = Instance.new("UICorner"); -- UICorner
    ["Instance142"] = Instance.new("TextLabel"); -- Label
    ["Instance143"] = Instance.new("Frame"); -- Frame
    ["Instance144"] = Instance.new("TextButton"); -- Hitbox
    ["Instance145"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance146"] = Instance.new("Frame"); -- Separator
    ["Instance147"] = Instance.new("TextLabel"); -- Label
    ["Instance148"] = Instance.new("Frame"); -- FrameLeft
    ["Instance149"] = Instance.new("Frame"); -- FrameRight
    ["Instance150"] = Instance.new("Frame"); -- Home
    ["Instance151"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance152"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance153"] = Instance.new("Frame"); -- ESpy
    ["Instance154"] = Instance.new("ScrollingFrame"); -- Buttons
    ["Instance155"] = Instance.new("UIGridLayout"); -- UIGridLayout
    ["Instance156"] = Instance.new("TextButton"); -- Button
    ["Instance157"] = Instance.new("Frame"); -- Contents
    ["Instance158"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance159"] = Instance.new("Frame"); -- Frame
    ["Instance160"] = Instance.new("TextLabel"); -- Label
    ["Instance161"] = Instance.new("Frame"); -- Selection
    ["Instance162"] = Instance.new("Frame"); -- Separator
    ["Instance163"] = Instance.new("Frame"); -- Separator
    ["Instance164"] = Instance.new("ScrollingFrame"); -- Logs
    ["Instance165"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance166"] = Instance.new("TextButton"); -- Log
    ["Instance167"] = Instance.new("Frame"); -- Contents
    ["Instance168"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance169"] = Instance.new("Frame"); -- Frame
    ["Instance170"] = Instance.new("TextLabel"); -- Label
    ["Instance171"] = Instance.new("Frame"); -- Selection
    ["Instance172"] = Instance.new("TextBox"); -- TextBox
    ["Instance173"] = Instance.new("Frame"); -- Separator
    ["Instance174"] = Instance.new("Frame"); -- HTTPSpy
    ["Instance175"] = Instance.new("ScrollingFrame"); -- Buttons
    ["Instance176"] = Instance.new("UIGridLayout"); -- UIGridLayout
    ["Instance177"] = Instance.new("TextButton"); -- Button
    ["Instance178"] = Instance.new("Frame"); -- Contents
    ["Instance179"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance180"] = Instance.new("Frame"); -- Frame
    ["Instance181"] = Instance.new("TextLabel"); -- Label
    ["Instance182"] = Instance.new("Frame"); -- Selection
    ["Instance183"] = Instance.new("Frame"); -- Separator
    ["Instance184"] = Instance.new("Frame"); -- Separator
    ["Instance185"] = Instance.new("ScrollingFrame"); -- Logs
    ["Instance186"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance187"] = Instance.new("TextButton"); -- Log
    ["Instance188"] = Instance.new("Frame"); -- Contents
    ["Instance189"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance190"] = Instance.new("Frame"); -- Frame
    ["Instance191"] = Instance.new("TextLabel"); -- Label
    ["Instance192"] = Instance.new("Frame"); -- Selection
    ["Instance193"] = Instance.new("Frame"); -- Type
    ["Instance194"] = Instance.new("TextBox"); -- TextBox
    ["Instance195"] = Instance.new("Frame"); -- Separator
    ["Instance196"] = Instance.new("Frame"); -- ScriptScanner
    ["Instance197"] = Instance.new("Frame"); -- Contents
    ["Instance198"] = Instance.new("TextButton"); -- SearchBar
    ["Instance199"] = Instance.new("UICorner"); -- UICorner
    ["Instance200"] = Instance.new("ImageLabel"); -- Icon
    ["Instance201"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance202"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance203"] = Instance.new("Frame"); -- Field
    ["Instance204"] = Instance.new("TextBox"); -- TextBox
    ["Instance205"] = Instance.new("Frame"); -- View
    ["Instance206"] = Instance.new("Frame"); -- Editor
    ["Instance207"] = Instance.new("TextBox"); -- TextBox
    ["Instance208"] = Instance.new("Frame"); -- Separator
    ["Instance209"] = Instance.new("TextButton"); -- CopyCode
    ["Instance210"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance211"] = Instance.new("Frame"); -- Frame
    ["Instance212"] = Instance.new("TextButton"); -- Back
    ["Instance213"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance214"] = Instance.new("Frame"); -- Frame
    ["Instance215"] = Instance.new("TextButton"); -- CopyPath
    ["Instance216"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance217"] = Instance.new("Frame"); -- Frame
    ["Instance218"] = Instance.new("TextButton"); -- Enchant
    ["Instance219"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance220"] = Instance.new("Frame"); -- ScanResults
    ["Instance221"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance222"] = Instance.new("ScrollingFrame"); -- List
    ["Instance223"] = Instance.new("TextButton"); -- Log
    ["Instance224"] = Instance.new("Frame"); -- Contents
    ["Instance225"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance226"] = Instance.new("UICorner"); -- UICorner
    ["Instance227"] = Instance.new("TextLabel"); -- ScriptName
    ["Instance228"] = Instance.new("TextLabel"); -- Matches
    ["Instance229"] = Instance.new("TextLabel"); -- ScriptPath
    ["Instance230"] = Instance.new("ImageLabel"); -- Icon
    ["Instance231"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance232"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance233"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance234"] = Instance.new("Frame"); -- Separator
    ["Instance235"] = Instance.new("Frame"); -- Loading
    ["Instance236"] = Instance.new("CanvasGroup"); -- CanvasGroup
    ["Instance237"] = Instance.new("UICorner"); -- UICorner
    ["Instance238"] = Instance.new("Frame"); -- Frame
    ["Instance239"] = Instance.new("Frame"); -- Gradient
    ["Instance240"] = Instance.new("UIGradient"); -- UIGradient
    ["Instance241"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance242"] = Instance.new("Frame"); -- Separator
    ["Instance243"] = Instance.new("TextButton"); -- Start
    ["Instance244"] = Instance.new("UICorner"); -- UICorner
    ["Instance245"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance246"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance247"] = Instance.new("TextButton"); -- Hover
    ["Instance248"] = Instance.new("UICorner"); -- UICorner
    ["Instance249"] = Instance.new("Frame"); -- Overlay
    ["Instance250"] = Instance.new("UICorner"); -- UICorner
};

do -- Set properties
    objects["Instance0"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
    objects["Instance0"]["DisplayOrder"] = 999999999;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = true;
    objects["Instance0"]["Name"] = "Ketamine";
    objects["Instance0"]["ResetOnSpawn"] = false;

    objects["Instance1"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance1"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["Text"] = "";
    objects["Instance1"]["TextSize"] = 14;
    objects["Instance1"]["Name"] = "Window";
    objects["Instance1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["BackgroundTransparency"] = 1;
    objects["Instance1"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance1"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance1"]["Size"] = UDim2.new(0.400000006, 0, 0.400000006, 0);
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance2"]["Parent"] = objects["Instance1"];
    objects["Instance2"]["Name"] = "UIControl";

    objects["Instance3"]["Parent"] = objects["Instance2"];
    objects["Instance3"]["Name"] = "Settings";

    objects["Instance4"]["Parent"] = objects["Instance2"];
    objects["Instance4"]["Name"] = "Shared";

    objects["Instance5"]["Parent"] = objects["Instance2"];
    objects["Instance5"]["Name"] = "CodeBox";

    objects["Instance6"]["Parent"] = objects["Instance2"];
    objects["Instance6"]["Name"] = "ToString";

    objects["Instance7"]["Parent"] = objects["Instance2"];
    objects["Instance7"]["Name"] = "HookFunction";

    objects["Instance8"]["Name"] = "PageControls";
    objects["Instance8"]["Parent"] = objects["Instance2"];

    objects["Instance9"]["Parent"] = objects["Instance8"];
    objects["Instance9"]["Name"] = "Settings";

    objects["Instance10"]["Parent"] = objects["Instance8"];
    objects["Instance10"]["Name"] = "RSpy";

    objects["Instance11"]["Parent"] = objects["Instance8"];
    objects["Instance11"]["Name"] = "ESpy";

    objects["Instance12"]["Parent"] = objects["Instance8"];
    objects["Instance12"]["Name"] = "HTTPSpy";

    objects["Instance13"]["Parent"] = objects["Instance8"];
    objects["Instance13"]["Name"] = "ScriptScanner";

    objects["Instance14"]["Parent"] = objects["Instance1"];
    objects["Instance14"]["AspectRatio"] = 1.899999976158142;

    objects["Instance15"]["ImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance15"]["ImageTransparency"] = 0.20000000298023224;
    objects["Instance15"]["Parent"] = objects["Instance1"];
    objects["Instance15"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance15"]["Image"] = "rbxassetid://8774493213";
    objects["Instance15"]["ZIndex"] = 0;
    objects["Instance15"]["BorderSizePixel"] = 0;
    objects["Instance15"]["SliceCenter"] = --[[ Unknown type for ArgToString: "Rect" ; Trying the awful method: type.new(tostring(arg)) ]] Rect.new(135, 135, 889, 512);
    objects["Instance15"]["Localize"] = false;
    objects["Instance15"]["ScaleType"] = Enum.ScaleType.Slice;
    objects["Instance15"]["AutoLocalize"] = false;
    objects["Instance15"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance15"]["Name"] = "Shadow";
    objects["Instance15"]["Position"] = UDim2.new(0.512499988, 0, 0.524999976, 0);
    objects["Instance15"]["BackgroundTransparency"] = 1;
    objects["Instance15"]["Size"] = UDim2.new(1.10000002, 0, 1.14999998, 0);
    objects["Instance15"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance16"]["BackgroundTransparency"] = 0.20000000298023224;
    objects["Instance16"]["Name"] = "Main";
    objects["Instance16"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance16"]["Parent"] = objects["Instance1"];
    objects["Instance16"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance16"]["BorderSizePixel"] = 0;
    objects["Instance16"]["BackgroundColor3"] = Color3.new(0.105882, 0.105882, 0.105882);

    objects["Instance17"]["BackgroundTransparency"] = 1;
    objects["Instance17"]["Name"] = "TopbarZone";
    objects["Instance17"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["Parent"] = objects["Instance16"];
    objects["Instance17"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance17"]["BorderSizePixel"] = 0;
    objects["Instance17"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance18"]["Parent"] = objects["Instance17"];
    objects["Instance18"]["BackgroundTransparency"] = 1;
    objects["Instance18"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance18"]["Image"] = "rbxassetid://116368608257813";
    objects["Instance18"]["Name"] = "Icon";
    objects["Instance18"]["Position"] = UDim2.new(0.00999999978, 0, 0.5, 0);
    objects["Instance18"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance18"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance18"]["BorderSizePixel"] = 0;
    objects["Instance18"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance19"]["Parent"] = objects["Instance18"];

    objects["Instance20"]["ImageTransparency"] = 0.8849999904632568;
    objects["Instance20"]["Parent"] = objects["Instance18"];
    objects["Instance20"]["BackgroundTransparency"] = 1;
    objects["Instance20"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance20"]["Image"] = "rbxassetid://5538771868";
    objects["Instance20"]["Name"] = "Glow";
    objects["Instance20"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance20"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["Size"] = UDim2.new(1.20000005, 0, 1.20000005, 0);
    objects["Instance20"]["BorderSizePixel"] = 0;
    objects["Instance20"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance21"]["TextWrapped"] = true;
    objects["Instance21"]["Parent"] = objects["Instance17"];
    objects["Instance21"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance21"]["BorderSizePixel"] = 0;
    objects["Instance21"]["Size"] = UDim2.new(0.930000007, 0, 0.600000024, 0);
    objects["Instance21"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance21"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["Text"] = "Ketamine";
    objects["Instance21"]["Position"] = UDim2.new(0.0700000003, 0, 0.5, 0);
    objects["Instance21"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance21"]["BackgroundTransparency"] = 1;
    objects["Instance21"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance21"]["Name"] = "Title";
    objects["Instance21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance21"]["TextSize"] = 14;
    objects["Instance21"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance21"]["TextScaled"] = true;
    objects["Instance21"]["TextWrap"] = true;

    objects["Instance22"]["AnchorPoint"] = Vector2.new(0.5, 1);
    objects["Instance22"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance22"]["Name"] = "Separator";
    objects["Instance22"]["Position"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance22"]["Parent"] = objects["Instance17"];
    objects["Instance22"]["Size"] = UDim2.new(0.975000024, 0, 0, 1);
    objects["Instance22"]["BorderSizePixel"] = 0;
    objects["Instance22"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance23"]["Parent"] = objects["Instance17"];
    objects["Instance23"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance23"]["BackgroundTransparency"] = 1;
    objects["Instance23"]["Name"] = "Buttons";
    objects["Instance23"]["Position"] = UDim2.new(0.995000005, 0, 0, 0);
    objects["Instance23"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["Size"] = UDim2.new(0.5, 0, 1, -1);
    objects["Instance23"]["BorderSizePixel"] = 0;
    objects["Instance23"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance24"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance24"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance24"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance24"]["Text"] = "";
    objects["Instance24"]["AutoButtonColor"] = false;
    objects["Instance24"]["TextSize"] = 14;
    objects["Instance24"]["Name"] = "Minimize";
    objects["Instance24"]["BackgroundTransparency"] = 1;
    objects["Instance24"]["Parent"] = objects["Instance23"];
    objects["Instance24"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance24"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance24"]["BorderSizePixel"] = 0;
    objects["Instance24"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance25"]["Parent"] = objects["Instance24"];

    objects["Instance26"]["Parent"] = objects["Instance24"];
    objects["Instance26"]["BackgroundTransparency"] = 1;
    objects["Instance26"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance26"]["Image"] = "rbxassetid://16239957665";
    objects["Instance26"]["Name"] = "Icon";
    objects["Instance26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance26"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["Size"] = UDim2.new(0.349999994, 0, 0.699999988, 0);
    objects["Instance26"]["BorderSizePixel"] = 0;
    objects["Instance26"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance27"]["Parent"] = objects["Instance23"];
    objects["Instance27"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance27"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
    objects["Instance27"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance28"]["LayoutOrder"] = 1;
    objects["Instance28"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance28"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["Text"] = "";
    objects["Instance28"]["AutoButtonColor"] = false;
    objects["Instance28"]["TextSize"] = 14;
    objects["Instance28"]["Name"] = "Close";
    objects["Instance28"]["BackgroundTransparency"] = 1;
    objects["Instance28"]["Parent"] = objects["Instance23"];
    objects["Instance28"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance28"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance28"]["BorderSizePixel"] = 0;
    objects["Instance28"]["BackgroundColor3"] = Color3.new(1, 0, 0);

    objects["Instance29"]["Parent"] = objects["Instance28"];

    objects["Instance30"]["Parent"] = objects["Instance28"];
    objects["Instance30"]["BackgroundTransparency"] = 1;
    objects["Instance30"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance30"]["Image"] = "rbxassetid://10152135063";
    objects["Instance30"]["Name"] = "Icon";
    objects["Instance30"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance30"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance30"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance30"]["BorderSizePixel"] = 0;
    objects["Instance30"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance31"]["BackgroundTransparency"] = 1;
    objects["Instance31"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance31"]["Name"] = "Contents";
    objects["Instance31"]["Position"] = UDim2.new(0, 0, 0.100000001, 0);
    objects["Instance31"]["Parent"] = objects["Instance16"];
    objects["Instance31"]["Size"] = UDim2.new(1, 0, 0.899999976, 0);
    objects["Instance31"]["BorderSizePixel"] = 0;
    objects["Instance31"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance32"]["BackgroundTransparency"] = 1;
    objects["Instance32"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance32"]["Name"] = "Buttons";
    objects["Instance32"]["Position"] = UDim2.new(0, 0, 0.0250000004, 0);
    objects["Instance32"]["Parent"] = objects["Instance31"];
    objects["Instance32"]["Size"] = UDim2.new(0.200000003, 0, 0.949999988, 0);
    objects["Instance32"]["BorderSizePixel"] = 0;
    objects["Instance32"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance33"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance33"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance33"]["Name"] = "Separator";
    objects["Instance33"]["Position"] = UDim2.new(1, 0, -0.0250000004, -1);
    objects["Instance33"]["Parent"] = objects["Instance32"];
    objects["Instance33"]["Size"] = UDim2.new(0, 1, 1.02499998, 1);
    objects["Instance33"]["BorderSizePixel"] = 0;
    objects["Instance33"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance34"]["BackgroundTransparency"] = 1;
    objects["Instance34"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance34"]["Name"] = "Holder";
    objects["Instance34"]["ClipsDescendants"] = true;
    objects["Instance34"]["Parent"] = objects["Instance32"];
    objects["Instance34"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance34"]["BorderSizePixel"] = 0;
    objects["Instance34"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance35"]["Parent"] = objects["Instance34"];
    objects["Instance35"]["BackgroundTransparency"] = 1;
    objects["Instance35"]["Name"] = "List";
    objects["Instance35"]["Size"] = UDim2.new(1, 0, 1, 0);

    objects["Instance36"]["LayoutOrder"] = 5;
    objects["Instance36"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance36"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance36"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance36"]["Text"] = "";
    objects["Instance36"]["TextSize"] = 14;
    objects["Instance36"]["AutoButtonColor"] = false;
    objects["Instance36"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance36"]["Name"] = "HTTPSpy";
    objects["Instance36"]["BackgroundTransparency"] = 1;
    objects["Instance36"]["Parent"] = objects["Instance35"];
    objects["Instance36"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance36"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance36"]["BorderSizePixel"] = 0;
    objects["Instance36"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance37"]["Parent"] = objects["Instance36"];
    objects["Instance37"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance37"]["BackgroundTransparency"] = 1;
    objects["Instance37"]["Name"] = "Cut";
    objects["Instance37"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance37"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance37"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance37"]["BorderSizePixel"] = 0;
    objects["Instance37"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance38"]["ImageColor3"] = Color3.new(0.921569, 0.921569, 0.921569);
    objects["Instance38"]["Parent"] = objects["Instance37"];
    objects["Instance38"]["BackgroundTransparency"] = 1;
    objects["Instance38"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance38"]["Image"] = "rbxassetid://9940320365";
    objects["Instance38"]["Name"] = "Icon";
    objects["Instance38"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance38"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["Size"] = UDim2.new(0.649999976, 0, 0.649999976, 0);
    objects["Instance38"]["BorderSizePixel"] = 0;
    objects["Instance38"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance39"]["Parent"] = objects["Instance38"];

    objects["Instance40"]["TextWrapped"] = true;
    objects["Instance40"]["Parent"] = objects["Instance37"];
    objects["Instance40"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance40"]["BorderSizePixel"] = 0;
    objects["Instance40"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance40"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance40"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance40"]["Text"] = "HTTP reqs";
    objects["Instance40"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance40"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance40"]["BackgroundTransparency"] = 1;
    objects["Instance40"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance40"]["Name"] = "Label";
    objects["Instance40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance40"]["TextSize"] = 14;
    objects["Instance40"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance40"]["TextScaled"] = true;
    objects["Instance40"]["TextWrap"] = true;

    objects["Instance41"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance41"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["Text"] = "";
    objects["Instance41"]["TextSize"] = 14;
    objects["Instance41"]["AutoButtonColor"] = false;
    objects["Instance41"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance41"]["Name"] = "Home";
    objects["Instance41"]["BackgroundTransparency"] = 1;
    objects["Instance41"]["Parent"] = objects["Instance35"];
    objects["Instance41"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance41"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance41"]["BorderSizePixel"] = 0;
    objects["Instance41"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance42"]["Parent"] = objects["Instance41"];
    objects["Instance42"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance42"]["BackgroundTransparency"] = 1;
    objects["Instance42"]["Name"] = "Cut";
    objects["Instance42"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance42"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance42"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance42"]["BorderSizePixel"] = 0;
    objects["Instance42"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance43"]["ImageColor3"] = Color3.new(0.921569, 0.921569, 0.921569);
    objects["Instance43"]["Parent"] = objects["Instance42"];
    objects["Instance43"]["BackgroundTransparency"] = 1;
    objects["Instance43"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance43"]["Image"] = "rbxassetid://9920484374";
    objects["Instance43"]["Name"] = "Icon";
    objects["Instance43"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance43"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance43"]["Size"] = UDim2.new(0.600000024, 0, 0.600000024, 0);
    objects["Instance43"]["BorderSizePixel"] = 0;
    objects["Instance43"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance44"]["Parent"] = objects["Instance43"];

    objects["Instance45"]["TextWrapped"] = true;
    objects["Instance45"]["Parent"] = objects["Instance42"];
    objects["Instance45"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance45"]["BorderSizePixel"] = 0;
    objects["Instance45"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance45"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance45"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance45"]["Text"] = "Home";
    objects["Instance45"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance45"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance45"]["BackgroundTransparency"] = 1;
    objects["Instance45"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance45"]["Name"] = "Label";
    objects["Instance45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance45"]["TextSize"] = 14;
    objects["Instance45"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance45"]["TextScaled"] = true;
    objects["Instance45"]["TextWrap"] = true;

    objects["Instance46"]["LayoutOrder"] = 3;
    objects["Instance46"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance46"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance46"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance46"]["Text"] = "";
    objects["Instance46"]["TextSize"] = 14;
    objects["Instance46"]["AutoButtonColor"] = false;
    objects["Instance46"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance46"]["Name"] = "RSpy";
    objects["Instance46"]["BackgroundTransparency"] = 1;
    objects["Instance46"]["Parent"] = objects["Instance35"];
    objects["Instance46"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance46"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance46"]["BorderSizePixel"] = 0;
    objects["Instance46"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance47"]["Parent"] = objects["Instance46"];
    objects["Instance47"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance47"]["BackgroundTransparency"] = 1;
    objects["Instance47"]["Name"] = "Cut";
    objects["Instance47"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance47"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance47"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance47"]["BorderSizePixel"] = 0;
    objects["Instance47"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance48"]["TextWrapped"] = true;
    objects["Instance48"]["Parent"] = objects["Instance47"];
    objects["Instance48"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance48"]["BorderSizePixel"] = 0;
    objects["Instance48"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance48"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance48"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance48"]["Text"] = "Remotes";
    objects["Instance48"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance48"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance48"]["BackgroundTransparency"] = 1;
    objects["Instance48"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance48"]["Name"] = "Label";
    objects["Instance48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance48"]["TextSize"] = 14;
    objects["Instance48"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance48"]["TextScaled"] = true;
    objects["Instance48"]["TextWrap"] = true;

    objects["Instance49"]["Parent"] = objects["Instance47"];
    objects["Instance49"]["BackgroundTransparency"] = 1;
    objects["Instance49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance49"]["Image"] = "rbxassetid://9940330919";
    objects["Instance49"]["Name"] = "Icon";
    objects["Instance49"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance49"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance49"]["Size"] = UDim2.new(0.699999988, 0, 0.699999988, 0);
    objects["Instance49"]["BorderSizePixel"] = 0;
    objects["Instance49"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance50"]["Parent"] = objects["Instance49"];

    objects["Instance51"]["LayoutOrder"] = 4;
    objects["Instance51"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance51"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance51"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance51"]["Text"] = "";
    objects["Instance51"]["TextSize"] = 14;
    objects["Instance51"]["AutoButtonColor"] = false;
    objects["Instance51"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance51"]["Name"] = "ESpy";
    objects["Instance51"]["BackgroundTransparency"] = 1;
    objects["Instance51"]["Parent"] = objects["Instance35"];
    objects["Instance51"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance51"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance51"]["BorderSizePixel"] = 0;
    objects["Instance51"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance52"]["Parent"] = objects["Instance51"];
    objects["Instance52"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance52"]["BackgroundTransparency"] = 1;
    objects["Instance52"]["Name"] = "Cut";
    objects["Instance52"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance52"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance52"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance52"]["BorderSizePixel"] = 0;
    objects["Instance52"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance53"]["TextWrapped"] = true;
    objects["Instance53"]["Parent"] = objects["Instance52"];
    objects["Instance53"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance53"]["BorderSizePixel"] = 0;
    objects["Instance53"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance53"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance53"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance53"]["Text"] = "Events";
    objects["Instance53"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance53"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance53"]["BackgroundTransparency"] = 1;
    objects["Instance53"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance53"]["Name"] = "Label";
    objects["Instance53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance53"]["TextSize"] = 14;
    objects["Instance53"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance53"]["TextScaled"] = true;
    objects["Instance53"]["TextWrap"] = true;

    objects["Instance54"]["ImageColor3"] = Color3.new(0.921569, 0.921569, 0.921569);
    objects["Instance54"]["Parent"] = objects["Instance52"];
    objects["Instance54"]["BackgroundTransparency"] = 1;
    objects["Instance54"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance54"]["Image"] = "rbxassetid://11448533494";
    objects["Instance54"]["Name"] = "Icon";
    objects["Instance54"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance54"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance54"]["Size"] = UDim2.new(0.600000024, 0, 0.600000024, 0);
    objects["Instance54"]["BorderSizePixel"] = 0;
    objects["Instance54"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance55"]["Parent"] = objects["Instance54"];

    objects["Instance56"]["Parent"] = objects["Instance35"];
    objects["Instance56"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance56"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;

    objects["Instance57"]["LayoutOrder"] = 1;
    objects["Instance57"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance57"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance57"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance57"]["Text"] = "";
    objects["Instance57"]["TextSize"] = 14;
    objects["Instance57"]["AutoButtonColor"] = false;
    objects["Instance57"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance57"]["Name"] = "Settings";
    objects["Instance57"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance57"]["Parent"] = objects["Instance35"];
    objects["Instance57"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance57"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance57"]["BorderSizePixel"] = 0;
    objects["Instance57"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance58"]["Parent"] = objects["Instance57"];
    objects["Instance58"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance58"]["BackgroundTransparency"] = 1;
    objects["Instance58"]["Name"] = "Cut";
    objects["Instance58"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance58"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance58"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance58"]["BorderSizePixel"] = 0;
    objects["Instance58"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance59"]["TextWrapped"] = true;
    objects["Instance59"]["Parent"] = objects["Instance58"];
    objects["Instance59"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance59"]["BorderSizePixel"] = 0;
    objects["Instance59"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance59"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance59"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance59"]["Text"] = "UI Settings";
    objects["Instance59"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance59"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance59"]["BackgroundTransparency"] = 1;
    objects["Instance59"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance59"]["Name"] = "Label";
    objects["Instance59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance59"]["TextSize"] = 14;
    objects["Instance59"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance59"]["TextScaled"] = true;
    objects["Instance59"]["TextWrap"] = true;

    objects["Instance60"]["ImageColor3"] = Color3.new(0.921569, 0.921569, 0.921569);
    objects["Instance60"]["Parent"] = objects["Instance58"];
    objects["Instance60"]["BackgroundTransparency"] = 1;
    objects["Instance60"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance60"]["Image"] = "rbxassetid://17124529105";
    objects["Instance60"]["Name"] = "Icon";
    objects["Instance60"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance60"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance60"]["Size"] = UDim2.new(0.699999988, 0, 0.699999988, 0);
    objects["Instance60"]["BorderSizePixel"] = 0;
    objects["Instance60"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance61"]["Parent"] = objects["Instance60"];

    objects["Instance62"]["LayoutOrder"] = 2;
    objects["Instance62"]["BackgroundTransparency"] = 1;
    objects["Instance62"]["Name"] = "Separator";
    objects["Instance62"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance62"]["Parent"] = objects["Instance35"];
    objects["Instance62"]["Size"] = UDim2.new(1, 0, 0.075000003, 0);
    objects["Instance62"]["BorderSizePixel"] = 0;
    objects["Instance62"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance63"]["TextWrapped"] = true;
    objects["Instance63"]["Parent"] = objects["Instance62"];
    objects["Instance63"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance63"]["ZIndex"] = 2;
    objects["Instance63"]["BorderSizePixel"] = 0;
    objects["Instance63"]["Size"] = UDim2.new(0.300000012, 0, 0.75, 0);
    objects["Instance63"]["TextColor3"] = Color3.new(0.588235, 0.588235, 0.588235);
    objects["Instance63"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance63"]["Text"] = "Spy";
    objects["Instance63"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance63"]["BackgroundTransparency"] = 1;
    objects["Instance63"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance63"]["Name"] = "Label";
    objects["Instance63"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance63"]["TextSize"] = 14;
    objects["Instance63"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance63"]["TextScaled"] = true;
    objects["Instance63"]["TextWrap"] = true;

    objects["Instance64"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance64"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance64"]["Name"] = "SeparatorLeft";
    objects["Instance64"]["Position"] = UDim2.new(0.0599997565, 0, 0.500000477, 0);
    objects["Instance64"]["Parent"] = objects["Instance62"];
    objects["Instance64"]["Size"] = UDim2.new(0.280000001, 0, 0, 1);
    objects["Instance64"]["BorderSizePixel"] = 0;
    objects["Instance64"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance65"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance65"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance65"]["Name"] = "SeparatorRight";
    objects["Instance65"]["Position"] = UDim2.new(1, 0, 0.5, 0);
    objects["Instance65"]["Parent"] = objects["Instance62"];
    objects["Instance65"]["Size"] = UDim2.new(0.349999994, 0, 0, 1);
    objects["Instance65"]["BorderSizePixel"] = 0;
    objects["Instance65"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance66"]["LayoutOrder"] = 6;
    objects["Instance66"]["BackgroundTransparency"] = 1;
    objects["Instance66"]["Name"] = "Separator";
    objects["Instance66"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance66"]["Parent"] = objects["Instance35"];
    objects["Instance66"]["Size"] = UDim2.new(1, 0, 0.075000003, 0);
    objects["Instance66"]["BorderSizePixel"] = 0;
    objects["Instance66"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance67"]["TextWrapped"] = true;
    objects["Instance67"]["Parent"] = objects["Instance66"];
    objects["Instance67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance67"]["ZIndex"] = 2;
    objects["Instance67"]["BorderSizePixel"] = 0;
    objects["Instance67"]["Size"] = UDim2.new(0.449999988, 0, 0.75, 0);
    objects["Instance67"]["TextColor3"] = Color3.new(0.588235, 0.588235, 0.588235);
    objects["Instance67"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance67"]["Text"] = "Scanners";
    objects["Instance67"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance67"]["BackgroundTransparency"] = 1;
    objects["Instance67"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance67"]["Name"] = "Label";
    objects["Instance67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance67"]["TextSize"] = 14;
    objects["Instance67"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance67"]["TextScaled"] = true;
    objects["Instance67"]["TextWrap"] = true;

    objects["Instance68"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance68"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance68"]["Name"] = "SeparatorLeft";
    objects["Instance68"]["Position"] = UDim2.new(0.0599997565, 0, 0.500000477, 0);
    objects["Instance68"]["Parent"] = objects["Instance66"];
    objects["Instance68"]["Size"] = UDim2.new(0.170000002, 0, 0, 1);
    objects["Instance68"]["BorderSizePixel"] = 0;
    objects["Instance68"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance69"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance69"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance69"]["Name"] = "SeparatorRight";
    objects["Instance69"]["Position"] = UDim2.new(1, 0, 0.5, 0);
    objects["Instance69"]["Parent"] = objects["Instance66"];
    objects["Instance69"]["Size"] = UDim2.new(0.230000004, 0, 0, 1);
    objects["Instance69"]["BorderSizePixel"] = 0;
    objects["Instance69"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance70"]["LayoutOrder"] = 7;
    objects["Instance70"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance70"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance70"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance70"]["Text"] = "";
    objects["Instance70"]["TextSize"] = 14;
    objects["Instance70"]["AutoButtonColor"] = false;
    objects["Instance70"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance70"]["Name"] = "ScriptScanner";
    objects["Instance70"]["BackgroundTransparency"] = 1;
    objects["Instance70"]["Parent"] = objects["Instance35"];
    objects["Instance70"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance70"]["Size"] = UDim2.new(2, 0, 0.125, 0);
    objects["Instance70"]["BorderSizePixel"] = 0;
    objects["Instance70"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance71"]["Parent"] = objects["Instance70"];
    objects["Instance71"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance71"]["BackgroundTransparency"] = 1;
    objects["Instance71"]["Name"] = "Cut";
    objects["Instance71"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance71"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance71"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance71"]["BorderSizePixel"] = 0;
    objects["Instance71"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance72"]["ImageColor3"] = Color3.new(0.921569, 0.921569, 0.921569);
    objects["Instance72"]["Parent"] = objects["Instance71"];
    objects["Instance72"]["BackgroundTransparency"] = 1;
    objects["Instance72"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance72"]["Image"] = "rbxassetid://81513493696931";
    objects["Instance72"]["Name"] = "Icon";
    objects["Instance72"]["Position"] = UDim2.new(0.174999997, 0, 0.5, 0);
    objects["Instance72"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance72"]["Size"] = UDim2.new(0.649999976, 0, 0.649999976, 0);
    objects["Instance72"]["BorderSizePixel"] = 0;
    objects["Instance72"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance73"]["Parent"] = objects["Instance72"];

    objects["Instance74"]["TextWrapped"] = true;
    objects["Instance74"]["Parent"] = objects["Instance71"];
    objects["Instance74"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance74"]["BorderSizePixel"] = 0;
    objects["Instance74"]["Size"] = UDim2.new(0.649999976, 0, 0.449999988, 0);
    objects["Instance74"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance74"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance74"]["Text"] = "Script scan";
    objects["Instance74"]["Position"] = UDim2.new(0.349999994, 0, 0.5, 0);
    objects["Instance74"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance74"]["BackgroundTransparency"] = 1;
    objects["Instance74"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance74"]["Name"] = "Label";
    objects["Instance74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance74"]["TextSize"] = 14;
    objects["Instance74"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance74"]["TextScaled"] = true;
    objects["Instance74"]["TextWrap"] = true;

    objects["Instance75"]["BackgroundTransparency"] = 1;
    objects["Instance75"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance75"]["Name"] = "Pages";
    objects["Instance75"]["Position"] = UDim2.new(0.200000003, 0, 0, 0);
    objects["Instance75"]["Parent"] = objects["Instance31"];
    objects["Instance75"]["Size"] = UDim2.new(0.800000012, 0, 1, 0);
    objects["Instance75"]["BorderSizePixel"] = 0;
    objects["Instance75"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance76"]["Visible"] = false;
    objects["Instance76"]["BackgroundTransparency"] = 1;
    objects["Instance76"]["Name"] = "NotFound";
    objects["Instance76"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance76"]["Parent"] = objects["Instance75"];
    objects["Instance76"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance76"]["BorderSizePixel"] = 0;
    objects["Instance76"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance77"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance77"]["TextWrapped"] = true;
    objects["Instance77"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance77"]["Parent"] = objects["Instance76"];
    objects["Instance77"]["Text"] = "PAGE VIEW";
    objects["Instance77"]["TextSize"] = 14;
    objects["Instance77"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance77"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance77"]["Size"] = UDim2.new(1, 0, 0.19169879, 0);
    objects["Instance77"]["BackgroundTransparency"] = 1;
    objects["Instance77"]["Position"] = UDim2.new(0, 0, 0.31449604, 0);
    objects["Instance77"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance77"]["TextScaled"] = true;
    objects["Instance77"]["BorderSizePixel"] = 0;
    objects["Instance77"]["TextWrap"] = true;

    objects["Instance78"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance78"]["TextWrapped"] = true;
    objects["Instance78"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance78"]["Parent"] = objects["Instance76"];
    objects["Instance78"]["Text"] = "Contents will be added soon";
    objects["Instance78"]["TextSize"] = 14;
    objects["Instance78"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance78"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance78"]["Size"] = UDim2.new(1, 0, 0.0638996065, 0);
    objects["Instance78"]["BackgroundTransparency"] = 1;
    objects["Instance78"]["Position"] = UDim2.new(0, 0, 0.506194651, 0);
    objects["Instance78"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance78"]["TextScaled"] = true;
    objects["Instance78"]["BorderSizePixel"] = 0;
    objects["Instance78"]["TextWrap"] = true;

    objects["Instance79"]["Visible"] = false;
    objects["Instance79"]["BackgroundTransparency"] = 1;
    objects["Instance79"]["Name"] = "RSpy";
    objects["Instance79"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance79"]["Parent"] = objects["Instance75"];
    objects["Instance79"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance79"]["BorderSizePixel"] = 0;
    objects["Instance79"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance80"]["BackgroundTransparency"] = 1;
    objects["Instance80"]["Name"] = "Buttons";
    objects["Instance80"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance80"]["Parent"] = objects["Instance79"];
    objects["Instance80"]["Size"] = UDim2.new(1, 0, 0.0799999982, 0);
    objects["Instance80"]["BorderSizePixel"] = 0;
    objects["Instance80"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance81"]["LayoutOrder"] = 3;
    objects["Instance81"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance81"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance81"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance81"]["Text"] = "";
    objects["Instance81"]["AutoButtonColor"] = false;
    objects["Instance81"]["TextSize"] = 14;
    objects["Instance81"]["Name"] = "To";
    objects["Instance81"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance81"]["Parent"] = objects["Instance80"];
    objects["Instance81"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance81"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance81"]["BorderSizePixel"] = 0;
    objects["Instance81"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance82"]["Parent"] = objects["Instance81"];
    objects["Instance82"]["BackgroundTransparency"] = 1;
    objects["Instance82"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance82"]["Image"] = "rbxassetid://9692125126";
    objects["Instance82"]["Name"] = "Icon";
    objects["Instance82"]["Position"] = UDim2.new(0.100000001, 0, 0.5, 0);
    objects["Instance82"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance82"]["Size"] = UDim2.new(0.800000012, 0, 0.800000012, 0);
    objects["Instance82"]["BorderSizePixel"] = 0;
    objects["Instance82"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance83"]["Parent"] = objects["Instance82"];

    objects["Instance84"]["TextWrapped"] = true;
    objects["Instance84"]["Parent"] = objects["Instance81"];
    objects["Instance84"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance84"]["BorderSizePixel"] = 0;
    objects["Instance84"]["Size"] = UDim2.new(0.699999988, 0, 0.649999976, 0);
    objects["Instance84"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance84"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance84"]["Text"] = "Outcoming";
    objects["Instance84"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance84"]["BackgroundTransparency"] = 1;
    objects["Instance84"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance84"]["Name"] = "Label";
    objects["Instance84"]["Position"] = UDim2.new(0.200000063, 0, 0.49999997, 0);
    objects["Instance84"]["TextSize"] = 14;
    objects["Instance84"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance84"]["TextScaled"] = true;
    objects["Instance84"]["TextWrap"] = true;

    objects["Instance85"]["LayoutOrder"] = 3;
    objects["Instance85"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance85"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance85"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance85"]["Text"] = "";
    objects["Instance85"]["TextSize"] = 14;
    objects["Instance85"]["AutoButtonColor"] = false;
    objects["Instance85"]["Name"] = "From";
    objects["Instance85"]["Parent"] = objects["Instance80"];
    objects["Instance85"]["BackgroundTransparency"] = 1;
    objects["Instance85"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance85"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance85"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance85"]["BorderSizePixel"] = 0;
    objects["Instance85"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance86"]["Parent"] = objects["Instance85"];
    objects["Instance86"]["BackgroundTransparency"] = 1;
    objects["Instance86"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance86"]["Image"] = "rbxassetid://12684119225";
    objects["Instance86"]["Name"] = "Icon";
    objects["Instance86"]["Position"] = UDim2.new(0.100000001, 0, 0.5, 0);
    objects["Instance86"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance86"]["Size"] = UDim2.new(0.800000012, 0, 0.800000012, 0);
    objects["Instance86"]["BorderSizePixel"] = 0;
    objects["Instance86"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance87"]["Parent"] = objects["Instance86"];

    objects["Instance88"]["TextWrapped"] = true;
    objects["Instance88"]["Parent"] = objects["Instance85"];
    objects["Instance88"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance88"]["BorderSizePixel"] = 0;
    objects["Instance88"]["Size"] = UDim2.new(0.699999988, 0, 0.649999976, 0);
    objects["Instance88"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance88"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance88"]["Text"] = "Incoming";
    objects["Instance88"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance88"]["BackgroundTransparency"] = 1;
    objects["Instance88"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance88"]["Name"] = "Label";
    objects["Instance88"]["Position"] = UDim2.new(0.200000063, 0, 0.49999997, 0);
    objects["Instance88"]["TextSize"] = 14;
    objects["Instance88"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance88"]["TextScaled"] = true;
    objects["Instance88"]["TextWrap"] = true;

    objects["Instance89"]["BackgroundTransparency"] = 0.5;
    objects["Instance89"]["Name"] = "Separator";
    objects["Instance89"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance89"]["Parent"] = objects["Instance85"];
    objects["Instance89"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance89"]["BorderSizePixel"] = 0;
    objects["Instance89"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance90"]["BackgroundTransparency"] = 0.5;
    objects["Instance90"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance90"]["Name"] = "Separator";
    objects["Instance90"]["Position"] = UDim2.new(0, 0, 1.00000036, 0);
    objects["Instance90"]["Parent"] = objects["Instance80"];
    objects["Instance90"]["Size"] = UDim2.new(0.983500004, 0, 0, 1);
    objects["Instance90"]["BorderSizePixel"] = 0;
    objects["Instance90"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance91"]["BackgroundTransparency"] = 1;
    objects["Instance91"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance91"]["Name"] = "Contents";
    objects["Instance91"]["Position"] = UDim2.new(0, 0, 0.0799999982, 1);
    objects["Instance91"]["Parent"] = objects["Instance79"];
    objects["Instance91"]["Size"] = UDim2.new(1, 0, 0.920000017, -1);
    objects["Instance91"]["BorderSizePixel"] = 0;
    objects["Instance91"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance92"]["Visible"] = false;
    objects["Instance92"]["BackgroundTransparency"] = 1;
    objects["Instance92"]["Name"] = "From";
    objects["Instance92"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance92"]["Parent"] = objects["Instance91"];
    objects["Instance92"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance92"]["BorderSizePixel"] = 0;
    objects["Instance92"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance93"]["Parent"] = objects["Instance92"];
    objects["Instance93"]["ScrollBarThickness"] = 0;
    objects["Instance93"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance93"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance93"]["BackgroundTransparency"] = 1;
    objects["Instance93"]["Selectable"] = false;
    objects["Instance93"]["Name"] = "Logs";
    objects["Instance93"]["Position"] = UDim2.new(0, 0, 0.0120000001, 0);
    objects["Instance93"]["Size"] = UDim2.new(0.25, 0, 0.949999988, 1);
    objects["Instance93"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance93"]["BorderSizePixel"] = 0;
    objects["Instance93"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance94"]["Parent"] = objects["Instance93"];
    objects["Instance94"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance95"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance95"]["Active"] = false;
    objects["Instance95"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance95"]["Text"] = "";
    objects["Instance95"]["Selectable"] = false;
    objects["Instance95"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance95"]["TextSize"] = 14;
    objects["Instance95"]["Name"] = "Log";
    objects["Instance95"]["BackgroundTransparency"] = 1;
    objects["Instance95"]["Parent"] = objects["Instance93"];
    objects["Instance95"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance95"]["Size"] = UDim2.new(1, 0, 0.132499993, 0);
    objects["Instance95"]["BorderSizePixel"] = 0;
    objects["Instance95"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance96"]["Parent"] = objects["Instance95"];
    objects["Instance96"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance96"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance96"]["Name"] = "Contents";
    objects["Instance96"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance96"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance96"]["Size"] = UDim2.new(0.850000024, 0, 0.699999988, 0);
    objects["Instance96"]["BorderSizePixel"] = 0;
    objects["Instance96"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance97"]["Parent"] = objects["Instance96"];
    objects["Instance97"]["Transparency"] = 0.5;
    objects["Instance97"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance97"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance98"]["BackgroundTransparency"] = 0.25;
    objects["Instance98"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance98"]["Parent"] = objects["Instance96"];
    objects["Instance98"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance98"]["BorderSizePixel"] = 0;
    objects["Instance98"]["BackgroundColor3"] = Color3.new(1, 0.666667, 0);

    objects["Instance99"]["TextWrapped"] = true;
    objects["Instance99"]["Parent"] = objects["Instance96"];
    objects["Instance99"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance99"]["BorderSizePixel"] = 0;
    objects["Instance99"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance99"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance99"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance99"]["Text"] = "RemoteEvent";
    objects["Instance99"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance99"]["BackgroundTransparency"] = 1;
    objects["Instance99"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance99"]["Name"] = "Label";
    objects["Instance99"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance99"]["TextSize"] = 14;
    objects["Instance99"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance99"]["TextScaled"] = true;
    objects["Instance99"]["TextWrap"] = true;

    objects["Instance100"]["BackgroundTransparency"] = 1;
    objects["Instance100"]["Name"] = "Selection";
    objects["Instance100"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance100"]["Parent"] = objects["Instance96"];
    objects["Instance100"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance100"]["BorderSizePixel"] = 0;
    objects["Instance100"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance101"]["BackgroundTransparency"] = 0.5;
    objects["Instance101"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance101"]["Name"] = "Separator";
    objects["Instance101"]["Position"] = UDim2.new(0.25000003, -1, 0, 0);
    objects["Instance101"]["Parent"] = objects["Instance91"];
    objects["Instance101"]["Size"] = UDim2.new(0, 1, 0.97299999, 0);
    objects["Instance101"]["BorderSizePixel"] = 0;
    objects["Instance101"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance102"]["BackgroundTransparency"] = 1;
    objects["Instance102"]["Name"] = "To";
    objects["Instance102"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance102"]["Parent"] = objects["Instance91"];
    objects["Instance102"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance102"]["BorderSizePixel"] = 0;
    objects["Instance102"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance103"]["Parent"] = objects["Instance102"];
    objects["Instance103"]["ScrollBarThickness"] = 0;
    objects["Instance103"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance103"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance103"]["BackgroundTransparency"] = 1;
    objects["Instance103"]["Selectable"] = false;
    objects["Instance103"]["Name"] = "Logs";
    objects["Instance103"]["Position"] = UDim2.new(0, 0, 0.0120000001, 0);
    objects["Instance103"]["Size"] = UDim2.new(0.25, 0, 0.949999988, 1);
    objects["Instance103"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance103"]["BorderSizePixel"] = 0;
    objects["Instance103"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance104"]["Parent"] = objects["Instance103"];
    objects["Instance104"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance105"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance105"]["Active"] = false;
    objects["Instance105"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance105"]["Text"] = "";
    objects["Instance105"]["Selectable"] = false;
    objects["Instance105"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance105"]["TextSize"] = 14;
    objects["Instance105"]["Name"] = "Log";
    objects["Instance105"]["BackgroundTransparency"] = 1;
    objects["Instance105"]["Parent"] = objects["Instance103"];
    objects["Instance105"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance105"]["Size"] = UDim2.new(1, 0, 0.132499993, 0);
    objects["Instance105"]["BorderSizePixel"] = 0;
    objects["Instance105"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance106"]["Parent"] = objects["Instance105"];
    objects["Instance106"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance106"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance106"]["Name"] = "Contents";
    objects["Instance106"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance106"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance106"]["Size"] = UDim2.new(0.850000024, 0, 0.699999988, 0);
    objects["Instance106"]["BorderSizePixel"] = 0;
    objects["Instance106"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance107"]["Parent"] = objects["Instance106"];
    objects["Instance107"]["Transparency"] = 0.5;
    objects["Instance107"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance107"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance108"]["BackgroundTransparency"] = 0.25;
    objects["Instance108"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance108"]["Parent"] = objects["Instance106"];
    objects["Instance108"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance108"]["BorderSizePixel"] = 0;
    objects["Instance108"]["BackgroundColor3"] = Color3.new(1, 0.666667, 0);

    objects["Instance109"]["TextWrapped"] = true;
    objects["Instance109"]["Parent"] = objects["Instance106"];
    objects["Instance109"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance109"]["BorderSizePixel"] = 0;
    objects["Instance109"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance109"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance109"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance109"]["Text"] = "RemoteEventar";
    objects["Instance109"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance109"]["BackgroundTransparency"] = 1;
    objects["Instance109"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance109"]["Name"] = "Label";
    objects["Instance109"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance109"]["TextSize"] = 14;
    objects["Instance109"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance109"]["TextScaled"] = true;
    objects["Instance109"]["TextWrap"] = true;

    objects["Instance110"]["BackgroundTransparency"] = 1;
    objects["Instance110"]["Name"] = "Selection";
    objects["Instance110"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance110"]["Parent"] = objects["Instance106"];
    objects["Instance110"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance110"]["BorderSizePixel"] = 0;
    objects["Instance110"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance111"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance111"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance111"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance111"]["Text"] = "";
    objects["Instance111"]["Size"] = UDim2.new(0.75, 0, 0.600000024, 0);
    objects["Instance111"]["TextSize"] = 14;
    objects["Instance111"]["BackgroundTransparency"] = 0.9750000238418579;
    objects["Instance111"]["Position"] = UDim2.new(0.25, 0, 0, 0);
    objects["Instance111"]["Parent"] = objects["Instance102"];
    objects["Instance111"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance111"]["BorderSizePixel"] = 0;
    objects["Instance111"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance112"]["BackgroundTransparency"] = 0.5;
    objects["Instance112"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance112"]["Name"] = "Separator";
    objects["Instance112"]["Position"] = UDim2.new(0, 0, 1, 0);
    objects["Instance112"]["Parent"] = objects["Instance111"];
    objects["Instance112"]["Size"] = UDim2.new(0.978999972, 0, 0, 1);
    objects["Instance112"]["BorderSizePixel"] = 0;
    objects["Instance112"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance113"]["Parent"] = objects["Instance91"];
    objects["Instance113"]["ScrollBarThickness"] = 0;
    objects["Instance113"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance113"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance113"]["BackgroundTransparency"] = 1;
    objects["Instance113"]["Selectable"] = false;
    objects["Instance113"]["Name"] = "Buttons";
    objects["Instance113"]["Position"] = UDim2.new(0.25000006, 0, 0.625, 0);
    objects["Instance113"]["Size"] = UDim2.new(0.75, 0, 0.347720474, 0);
    objects["Instance113"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance113"]["BorderSizePixel"] = 0;
    objects["Instance113"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance114"]["Parent"] = objects["Instance113"];
    objects["Instance114"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance114"]["CellPadding"] = UDim2.new(0, 0, 0, 0);
    objects["Instance114"]["CellSize"] = UDim2.new(0.333000004, 0, 0.349999994, 0);

    objects["Instance115"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance115"]["Active"] = false;
    objects["Instance115"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance115"]["Text"] = "";
    objects["Instance115"]["Selectable"] = false;
    objects["Instance115"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance115"]["TextSize"] = 14;
    objects["Instance115"]["Name"] = "Button";
    objects["Instance115"]["BackgroundTransparency"] = 1;
    objects["Instance115"]["Parent"] = objects["Instance113"];
    objects["Instance115"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance115"]["Size"] = UDim2.new(1, 0, 0.132499993, 0);
    objects["Instance115"]["BorderSizePixel"] = 0;
    objects["Instance115"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance116"]["Parent"] = objects["Instance115"];
    objects["Instance116"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance116"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance116"]["Name"] = "Contents";
    objects["Instance116"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance116"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance116"]["Size"] = UDim2.new(0.899999976, 0, 0.649999976, 0);
    objects["Instance116"]["BorderSizePixel"] = 0;
    objects["Instance116"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance117"]["Parent"] = objects["Instance116"];
    objects["Instance117"]["Transparency"] = 0.5;
    objects["Instance117"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance117"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance118"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance118"]["BackgroundTransparency"] = 0.25;
    objects["Instance118"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance118"]["Parent"] = objects["Instance116"];
    objects["Instance118"]["ZIndex"] = 2;
    objects["Instance118"]["BorderSizePixel"] = 0;
    objects["Instance118"]["BackgroundColor3"] = Color3.new(0, 0.333333, 0.498039);

    objects["Instance119"]["TextWrapped"] = true;
    objects["Instance119"]["Parent"] = objects["Instance116"];
    objects["Instance119"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance119"]["ZIndex"] = 2;
    objects["Instance119"]["BorderSizePixel"] = 0;
    objects["Instance119"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance119"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance119"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance119"]["Text"] = "Button";
    objects["Instance119"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance119"]["BackgroundTransparency"] = 1;
    objects["Instance119"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance119"]["Name"] = "Label";
    objects["Instance119"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance119"]["TextSize"] = 14;
    objects["Instance119"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance119"]["TextScaled"] = true;
    objects["Instance119"]["TextWrap"] = true;

    objects["Instance120"]["BackgroundTransparency"] = 1;
    objects["Instance120"]["Name"] = "Selection";
    objects["Instance120"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance120"]["Parent"] = objects["Instance116"];
    objects["Instance120"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance120"]["BorderSizePixel"] = 0;
    objects["Instance120"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance121"]["Visible"] = false;
    objects["Instance121"]["Parent"] = objects["Instance115"];
    objects["Instance121"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance121"]["BackgroundTransparency"] = 0.5;
    objects["Instance121"]["Name"] = "Separator";
    objects["Instance121"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance121"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance121"]["Size"] = UDim2.new(0.800000012, 0, 0, 1);
    objects["Instance121"]["BorderSizePixel"] = 0;
    objects["Instance121"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance122"]["Visible"] = false;
    objects["Instance122"]["Active"] = true;
    objects["Instance122"]["Parent"] = objects["Instance75"];
    objects["Instance122"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance122"]["BorderSizePixel"] = 0;
    objects["Instance122"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
    objects["Instance122"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance122"]["ScrollBarThickness"] = 6;
    objects["Instance122"]["Size"] = UDim2.new(1, 0, 0.949999988, 0);
    objects["Instance122"]["Name"] = "Settings";
    objects["Instance122"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance122"]["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png";
    objects["Instance122"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance122"]["BackgroundTransparency"] = 1;
    objects["Instance122"]["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png";
    objects["Instance122"]["ScrollBarImageTransparency"] = 0.6000000238418579;
    objects["Instance122"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance123"]["Parent"] = objects["Instance122"];
    objects["Instance123"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance124"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance124"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance124"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance124"]["Text"] = "";
    objects["Instance124"]["AutoButtonColor"] = false;
    objects["Instance124"]["TextSize"] = 14;
    objects["Instance124"]["Name"] = "boolean";
    objects["Instance124"]["BackgroundTransparency"] = 1;
    objects["Instance124"]["Parent"] = objects["Instance122"];
    objects["Instance124"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance124"]["Size"] = UDim2.new(1, 0, 0.109999999, 0);
    objects["Instance124"]["BorderSizePixel"] = 0;
    objects["Instance124"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance125"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance125"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance125"]["Name"] = "State";
    objects["Instance125"]["Position"] = UDim2.new(0.949999988, 0, 0.5, 0);
    objects["Instance125"]["Parent"] = objects["Instance124"];
    objects["Instance125"]["Size"] = UDim2.new(1, 0, 0.5, 0);
    objects["Instance125"]["BorderSizePixel"] = 0;
    objects["Instance125"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance126"]["Parent"] = objects["Instance125"];
    objects["Instance126"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance127"]["Parent"] = objects["Instance125"];
    objects["Instance127"]["AspectRatio"] = 2;

    objects["Instance128"]["PaddingTop"] = UDim.new(0.150000006, 0);
    objects["Instance128"]["PaddingBottom"] = UDim.new(0.150000006, 0);
    objects["Instance128"]["PaddingRight"] = UDim.new(0.100000001, 0);
    objects["Instance128"]["PaddingLeft"] = UDim.new(0.100000001, 0);
    objects["Instance128"]["Parent"] = objects["Instance125"];

    objects["Instance129"]["Name"] = "State";
    objects["Instance129"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance129"]["Parent"] = objects["Instance125"];
    objects["Instance129"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance129"]["BorderSizePixel"] = 0;
    objects["Instance129"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance130"]["Parent"] = objects["Instance129"];

    objects["Instance131"]["Parent"] = objects["Instance129"];
    objects["Instance131"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance132"]["TextWrapped"] = true;
    objects["Instance132"]["Parent"] = objects["Instance124"];
    objects["Instance132"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance132"]["BorderSizePixel"] = 0;
    objects["Instance132"]["Size"] = UDim2.new(0.800000012, 0, 0.5, 0);
    objects["Instance132"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance132"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance132"]["Text"] = "Template";
    objects["Instance132"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance132"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance132"]["BackgroundTransparency"] = 1;
    objects["Instance132"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance132"]["Name"] = "Label";
    objects["Instance132"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance132"]["TextSize"] = 14;
    objects["Instance132"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance132"]["TextScaled"] = true;
    objects["Instance132"]["TextWrap"] = true;

    objects["Instance133"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance133"]["BackgroundTransparency"] = 0.5;
    objects["Instance133"]["Position"] = UDim2.new(0, 0, 0, -1);
    objects["Instance133"]["Parent"] = objects["Instance124"];
    objects["Instance133"]["Size"] = UDim2.new(0.985000014, 0, -0, 1);
    objects["Instance133"]["BorderSizePixel"] = 0;
    objects["Instance133"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance134"]["Active"] = true;
    objects["Instance134"]["Parent"] = objects["Instance122"];
    objects["Instance134"]["BackgroundTransparency"] = 1;
    objects["Instance134"]["Name"] = "table";
    objects["Instance134"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance134"]["Size"] = UDim2.new(1, 0, 0.109999999, 0);
    objects["Instance134"]["Selectable"] = true;
    objects["Instance134"]["BorderSizePixel"] = 0;
    objects["Instance134"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);

    objects["Instance135"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance135"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance135"]["Name"] = "State";
    objects["Instance135"]["Position"] = UDim2.new(0.949999988, 0, 0.5, 0);
    objects["Instance135"]["Parent"] = objects["Instance134"];
    objects["Instance135"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance135"]["BorderSizePixel"] = 0;
    objects["Instance135"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance136"]["Parent"] = objects["Instance135"];
    objects["Instance136"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance137"]["Parent"] = objects["Instance135"];
    objects["Instance137"]["AspectRatio"] = 40;

    objects["Instance138"]["Parent"] = objects["Instance135"];
    objects["Instance138"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance138"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance138"]["Name"] = "Pointer";
    objects["Instance138"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance138"]["Size"] = UDim2.new(0.0500000007, 0, 5, 0);
    objects["Instance138"]["ZIndex"] = 2;
    objects["Instance138"]["BorderSizePixel"] = 0;
    objects["Instance138"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance139"]["Parent"] = objects["Instance138"];
    objects["Instance139"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance140"]["Name"] = "Fill";
    objects["Instance140"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance140"]["Parent"] = objects["Instance135"];
    objects["Instance140"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance140"]["BorderSizePixel"] = 0;
    objects["Instance140"]["BackgroundColor3"] = Color3.new(0.588235, 0.588235, 0.588235);

    objects["Instance141"]["Parent"] = objects["Instance140"];
    objects["Instance141"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance142"]["TextWrapped"] = true;
    objects["Instance142"]["Parent"] = objects["Instance134"];
    objects["Instance142"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance142"]["BorderSizePixel"] = 0;
    objects["Instance142"]["Size"] = UDim2.new(0.800000012, 0, 0.5, 0);
    objects["Instance142"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance142"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance142"]["Text"] = "Template";
    objects["Instance142"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance142"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance142"]["BackgroundTransparency"] = 1;
    objects["Instance142"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance142"]["Name"] = "Label";
    objects["Instance142"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance142"]["TextSize"] = 14;
    objects["Instance142"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance142"]["TextScaled"] = true;
    objects["Instance142"]["TextWrap"] = true;

    objects["Instance143"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance143"]["BackgroundTransparency"] = 0.5;
    objects["Instance143"]["Position"] = UDim2.new(0, 0, 0, -1);
    objects["Instance143"]["Parent"] = objects["Instance134"];
    objects["Instance143"]["Size"] = UDim2.new(0.985000014, 0, -0, 1);
    objects["Instance143"]["BorderSizePixel"] = 0;
    objects["Instance143"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance144"]["Active"] = false;
    objects["Instance144"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance144"]["Text"] = "";
    objects["Instance144"]["Selectable"] = false;
    objects["Instance144"]["AutoButtonColor"] = false;
    objects["Instance144"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance144"]["Name"] = "Hitbox";
    objects["Instance144"]["BackgroundTransparency"] = 1;
    objects["Instance144"]["Position"] = UDim2.new(0.949999988, 0, 0.5, 0);
    objects["Instance144"]["Parent"] = objects["Instance134"];
    objects["Instance144"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance144"]["BorderSizePixel"] = 0;
    objects["Instance144"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance145"]["Parent"] = objects["Instance144"];
    objects["Instance145"]["AspectRatio"] = 8;

    objects["Instance146"]["Active"] = true;
    objects["Instance146"]["Parent"] = objects["Instance122"];
    objects["Instance146"]["BackgroundTransparency"] = 1;
    objects["Instance146"]["Name"] = "Separator";
    objects["Instance146"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance146"]["Size"] = UDim2.new(1, 0, 0.0399999991, 0);
    objects["Instance146"]["Selectable"] = true;
    objects["Instance146"]["BorderSizePixel"] = 0;
    objects["Instance146"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);

    objects["Instance147"]["TextWrapped"] = true;
    objects["Instance147"]["Parent"] = objects["Instance146"];
    objects["Instance147"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance147"]["BorderSizePixel"] = 0;
    objects["Instance147"]["Size"] = UDim2.new(0.800000012, 0, 1, 0);
    objects["Instance147"]["TextColor3"] = Color3.new(0.392157, 0.392157, 0.392157);
    objects["Instance147"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance147"]["Text"] = "Template";
    objects["Instance147"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance147"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance147"]["BackgroundTransparency"] = 1;
    objects["Instance147"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance147"]["Name"] = "Label";
    objects["Instance147"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance147"]["TextSize"] = 14;
    objects["Instance147"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance147"]["TextScaled"] = true;
    objects["Instance147"]["TextWrap"] = true;

    objects["Instance148"]["Parent"] = objects["Instance146"];
    objects["Instance148"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance148"]["BackgroundTransparency"] = 0.5;
    objects["Instance148"]["Name"] = "FrameLeft";
    objects["Instance148"]["Position"] = UDim2.new(0, 0, 0.5, -1);
    objects["Instance148"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance148"]["Size"] = UDim2.new(0.0350000001, 0, 0, 1);
    objects["Instance148"]["BorderSizePixel"] = 0;
    objects["Instance148"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance149"]["Visible"] = false;
    objects["Instance149"]["Parent"] = objects["Instance146"];
    objects["Instance149"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance149"]["BackgroundTransparency"] = 0.5;
    objects["Instance149"]["Name"] = "FrameRight";
    objects["Instance149"]["Position"] = UDim2.new(0.985000014, 0, 0.5, -1);
    objects["Instance149"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance149"]["Size"] = UDim2.new(0.939999998, 0, 0, 1);
    objects["Instance149"]["BorderSizePixel"] = 0;
    objects["Instance149"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance150"]["Visible"] = false;
    objects["Instance150"]["BackgroundTransparency"] = 1;
    objects["Instance150"]["Name"] = "Home";
    objects["Instance150"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance150"]["Parent"] = objects["Instance75"];
    objects["Instance150"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance150"]["BorderSizePixel"] = 0;
    objects["Instance150"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance151"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance151"]["TextWrapped"] = true;
    objects["Instance151"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance151"]["Parent"] = objects["Instance150"];
    objects["Instance151"]["Text"] = "HOME PAGE";
    objects["Instance151"]["TextSize"] = 14;
    objects["Instance151"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance151"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance151"]["Size"] = UDim2.new(1, 0, 0.19169879, 0);
    objects["Instance151"]["BackgroundTransparency"] = 1;
    objects["Instance151"]["Position"] = UDim2.new(0, 0, 0.31449604, 0);
    objects["Instance151"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance151"]["TextScaled"] = true;
    objects["Instance151"]["BorderSizePixel"] = 0;
    objects["Instance151"]["TextWrap"] = true;

    objects["Instance152"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance152"]["TextWrapped"] = true;
    objects["Instance152"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance152"]["Parent"] = objects["Instance150"];
    objects["Instance152"]["Text"] = "I'll add changelogs later here!";
    objects["Instance152"]["TextSize"] = 14;
    objects["Instance152"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance152"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance152"]["Size"] = UDim2.new(1, 0, 0.0638996065, 0);
    objects["Instance152"]["BackgroundTransparency"] = 1;
    objects["Instance152"]["Position"] = UDim2.new(0, 0, 0.506194651, 0);
    objects["Instance152"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance152"]["TextScaled"] = true;
    objects["Instance152"]["BorderSizePixel"] = 0;
    objects["Instance152"]["TextWrap"] = true;

    objects["Instance153"]["Visible"] = false;
    objects["Instance153"]["BackgroundTransparency"] = 1;
    objects["Instance153"]["Name"] = "ESpy";
    objects["Instance153"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance153"]["Parent"] = objects["Instance75"];
    objects["Instance153"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance153"]["BorderSizePixel"] = 0;
    objects["Instance153"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance154"]["Parent"] = objects["Instance153"];
    objects["Instance154"]["ScrollBarThickness"] = 0;
    objects["Instance154"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance154"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance154"]["BackgroundTransparency"] = 1;
    objects["Instance154"]["Selectable"] = false;
    objects["Instance154"]["Name"] = "Buttons";
    objects["Instance154"]["Position"] = UDim2.new(0.25000006, 0, 0.625, 0);
    objects["Instance154"]["Size"] = UDim2.new(0.75, 0, 0.347720474, 0);
    objects["Instance154"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance154"]["BorderSizePixel"] = 0;
    objects["Instance154"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance155"]["Parent"] = objects["Instance154"];
    objects["Instance155"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance155"]["CellPadding"] = UDim2.new(0, 0, 0, 0);
    objects["Instance155"]["CellSize"] = UDim2.new(0.333000004, 0, 0.330000013, 0);

    objects["Instance156"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance156"]["Active"] = false;
    objects["Instance156"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance156"]["Text"] = "";
    objects["Instance156"]["Selectable"] = false;
    objects["Instance156"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance156"]["TextSize"] = 14;
    objects["Instance156"]["Name"] = "Button";
    objects["Instance156"]["BackgroundTransparency"] = 1;
    objects["Instance156"]["Parent"] = objects["Instance154"];
    objects["Instance156"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance156"]["Size"] = UDim2.new(1, 0, 0.132499993, 0);
    objects["Instance156"]["BorderSizePixel"] = 0;
    objects["Instance156"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance157"]["Parent"] = objects["Instance156"];
    objects["Instance157"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance157"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance157"]["Name"] = "Contents";
    objects["Instance157"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance157"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance157"]["Size"] = UDim2.new(0.899999976, 0, 0.649999976, 0);
    objects["Instance157"]["BorderSizePixel"] = 0;
    objects["Instance157"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance158"]["Parent"] = objects["Instance157"];
    objects["Instance158"]["Transparency"] = 0.5;
    objects["Instance158"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance158"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance159"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance159"]["BackgroundTransparency"] = 0.25;
    objects["Instance159"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance159"]["Parent"] = objects["Instance157"];
    objects["Instance159"]["ZIndex"] = 2;
    objects["Instance159"]["BorderSizePixel"] = 0;
    objects["Instance159"]["BackgroundColor3"] = Color3.new(0, 0.333333, 0.498039);

    objects["Instance160"]["TextWrapped"] = true;
    objects["Instance160"]["Parent"] = objects["Instance157"];
    objects["Instance160"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance160"]["ZIndex"] = 2;
    objects["Instance160"]["BorderSizePixel"] = 0;
    objects["Instance160"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance160"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance160"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance160"]["Text"] = "Button";
    objects["Instance160"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance160"]["BackgroundTransparency"] = 1;
    objects["Instance160"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance160"]["Name"] = "Label";
    objects["Instance160"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance160"]["TextSize"] = 14;
    objects["Instance160"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance160"]["TextScaled"] = true;
    objects["Instance160"]["TextWrap"] = true;

    objects["Instance161"]["BackgroundTransparency"] = 1;
    objects["Instance161"]["Name"] = "Selection";
    objects["Instance161"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance161"]["Parent"] = objects["Instance157"];
    objects["Instance161"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance161"]["BorderSizePixel"] = 0;
    objects["Instance161"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance162"]["Visible"] = false;
    objects["Instance162"]["Parent"] = objects["Instance156"];
    objects["Instance162"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance162"]["BackgroundTransparency"] = 0.5;
    objects["Instance162"]["Name"] = "Separator";
    objects["Instance162"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance162"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance162"]["Size"] = UDim2.new(0.800000012, 0, 0, 1);
    objects["Instance162"]["BorderSizePixel"] = 0;
    objects["Instance162"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance163"]["BackgroundTransparency"] = 0.5;
    objects["Instance163"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance163"]["Name"] = "Separator";
    objects["Instance163"]["Position"] = UDim2.new(0.25000003, -1, 0, 0);
    objects["Instance163"]["Parent"] = objects["Instance153"];
    objects["Instance163"]["Size"] = UDim2.new(0, 1, 0.97299999, 0);
    objects["Instance163"]["BorderSizePixel"] = 0;
    objects["Instance163"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance164"]["Parent"] = objects["Instance153"];
    objects["Instance164"]["ScrollBarThickness"] = 0;
    objects["Instance164"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance164"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance164"]["BackgroundTransparency"] = 1;
    objects["Instance164"]["Selectable"] = false;
    objects["Instance164"]["Name"] = "Logs";
    objects["Instance164"]["Position"] = UDim2.new(0, 0, 0.0120000001, 0);
    objects["Instance164"]["Size"] = UDim2.new(0.25, 0, 0.949999988, 1);
    objects["Instance164"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance164"]["BorderSizePixel"] = 0;
    objects["Instance164"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance165"]["Parent"] = objects["Instance164"];
    objects["Instance165"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance166"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance166"]["Active"] = false;
    objects["Instance166"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance166"]["Text"] = "";
    objects["Instance166"]["Selectable"] = false;
    objects["Instance166"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance166"]["TextSize"] = 14;
    objects["Instance166"]["Name"] = "Log";
    objects["Instance166"]["BackgroundTransparency"] = 1;
    objects["Instance166"]["Parent"] = objects["Instance164"];
    objects["Instance166"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance166"]["Size"] = UDim2.new(1, 0, 0.122000001, 0);
    objects["Instance166"]["BorderSizePixel"] = 0;
    objects["Instance166"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance167"]["Parent"] = objects["Instance166"];
    objects["Instance167"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance167"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance167"]["Name"] = "Contents";
    objects["Instance167"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance167"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance167"]["Size"] = UDim2.new(0.850000024, 0, 0.699999988, 0);
    objects["Instance167"]["BorderSizePixel"] = 0;
    objects["Instance167"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance168"]["Parent"] = objects["Instance167"];
    objects["Instance168"]["Transparency"] = 0.5;
    objects["Instance168"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance168"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance169"]["BackgroundTransparency"] = 0.25;
    objects["Instance169"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance169"]["Parent"] = objects["Instance167"];
    objects["Instance169"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance169"]["BorderSizePixel"] = 0;
    objects["Instance169"]["BackgroundColor3"] = Color3.new(1, 0.666667, 0);

    objects["Instance170"]["TextWrapped"] = true;
    objects["Instance170"]["Parent"] = objects["Instance167"];
    objects["Instance170"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance170"]["BorderSizePixel"] = 0;
    objects["Instance170"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance170"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance170"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance170"]["Text"] = "RemoteEventar";
    objects["Instance170"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance170"]["BackgroundTransparency"] = 1;
    objects["Instance170"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance170"]["Name"] = "Label";
    objects["Instance170"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance170"]["TextSize"] = 14;
    objects["Instance170"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance170"]["TextScaled"] = true;
    objects["Instance170"]["TextWrap"] = true;

    objects["Instance171"]["BackgroundTransparency"] = 1;
    objects["Instance171"]["Name"] = "Selection";
    objects["Instance171"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance171"]["Parent"] = objects["Instance167"];
    objects["Instance171"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance171"]["BorderSizePixel"] = 0;
    objects["Instance171"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance172"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance172"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance172"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance172"]["Text"] = "";
    objects["Instance172"]["Size"] = UDim2.new(0.75, 0, 0.600000024, 0);
    objects["Instance172"]["TextSize"] = 14;
    objects["Instance172"]["BackgroundTransparency"] = 0.9750000238418579;
    objects["Instance172"]["Position"] = UDim2.new(0.25, 0, 0, 0);
    objects["Instance172"]["Parent"] = objects["Instance153"];
    objects["Instance172"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance172"]["BorderSizePixel"] = 0;
    objects["Instance172"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance173"]["BackgroundTransparency"] = 0.5;
    objects["Instance173"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance173"]["Name"] = "Separator";
    objects["Instance173"]["Position"] = UDim2.new(0, 0, 1, 0);
    objects["Instance173"]["Parent"] = objects["Instance172"];
    objects["Instance173"]["Size"] = UDim2.new(0.978999972, 0, 0, 1);
    objects["Instance173"]["BorderSizePixel"] = 0;
    objects["Instance173"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance174"]["BackgroundTransparency"] = 1;
    objects["Instance174"]["Name"] = "HTTPSpy";
    objects["Instance174"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance174"]["Parent"] = objects["Instance75"];
    objects["Instance174"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance174"]["BorderSizePixel"] = 0;
    objects["Instance174"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance175"]["Parent"] = objects["Instance174"];
    objects["Instance175"]["ScrollBarThickness"] = 0;
    objects["Instance175"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance175"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance175"]["BackgroundTransparency"] = 1;
    objects["Instance175"]["Selectable"] = false;
    objects["Instance175"]["Name"] = "Buttons";
    objects["Instance175"]["Position"] = UDim2.new(0.25000006, 0, 0.625, 0);
    objects["Instance175"]["Size"] = UDim2.new(0.75, 0, 0.347720474, 0);
    objects["Instance175"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance175"]["BorderSizePixel"] = 0;
    objects["Instance175"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance176"]["Parent"] = objects["Instance175"];
    objects["Instance176"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance176"]["CellPadding"] = UDim2.new(0, 0, 0, 0);
    objects["Instance176"]["CellSize"] = UDim2.new(0.333000004, 0, 0.330000013, 0);

    objects["Instance177"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance177"]["Active"] = false;
    objects["Instance177"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance177"]["Text"] = "";
    objects["Instance177"]["Selectable"] = false;
    objects["Instance177"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance177"]["TextSize"] = 14;
    objects["Instance177"]["Name"] = "Button";
    objects["Instance177"]["BackgroundTransparency"] = 1;
    objects["Instance177"]["Parent"] = objects["Instance175"];
    objects["Instance177"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance177"]["Size"] = UDim2.new(1, 0, 0.132499993, 0);
    objects["Instance177"]["BorderSizePixel"] = 0;
    objects["Instance177"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance178"]["Parent"] = objects["Instance177"];
    objects["Instance178"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance178"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance178"]["Name"] = "Contents";
    objects["Instance178"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance178"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance178"]["Size"] = UDim2.new(0.899999976, 0, 0.649999976, 0);
    objects["Instance178"]["BorderSizePixel"] = 0;
    objects["Instance178"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance179"]["Parent"] = objects["Instance178"];
    objects["Instance179"]["Transparency"] = 0.5;
    objects["Instance179"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance179"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance180"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance180"]["BackgroundTransparency"] = 0.25;
    objects["Instance180"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance180"]["Parent"] = objects["Instance178"];
    objects["Instance180"]["ZIndex"] = 2;
    objects["Instance180"]["BorderSizePixel"] = 0;
    objects["Instance180"]["BackgroundColor3"] = Color3.new(0, 0.333333, 0.498039);

    objects["Instance181"]["TextWrapped"] = true;
    objects["Instance181"]["Parent"] = objects["Instance178"];
    objects["Instance181"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance181"]["ZIndex"] = 2;
    objects["Instance181"]["BorderSizePixel"] = 0;
    objects["Instance181"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance181"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance181"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance181"]["Text"] = "Button";
    objects["Instance181"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance181"]["BackgroundTransparency"] = 1;
    objects["Instance181"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance181"]["Name"] = "Label";
    objects["Instance181"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance181"]["TextSize"] = 14;
    objects["Instance181"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance181"]["TextScaled"] = true;
    objects["Instance181"]["TextWrap"] = true;

    objects["Instance182"]["BackgroundTransparency"] = 1;
    objects["Instance182"]["Name"] = "Selection";
    objects["Instance182"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance182"]["Parent"] = objects["Instance178"];
    objects["Instance182"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance182"]["BorderSizePixel"] = 0;
    objects["Instance182"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance183"]["Visible"] = false;
    objects["Instance183"]["Parent"] = objects["Instance177"];
    objects["Instance183"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance183"]["BackgroundTransparency"] = 0.5;
    objects["Instance183"]["Name"] = "Separator";
    objects["Instance183"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance183"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance183"]["Size"] = UDim2.new(0.800000012, 0, 0, 1);
    objects["Instance183"]["BorderSizePixel"] = 0;
    objects["Instance183"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance184"]["BackgroundTransparency"] = 0.5;
    objects["Instance184"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance184"]["Name"] = "Separator";
    objects["Instance184"]["Position"] = UDim2.new(0.25000003, -1, 0, 0);
    objects["Instance184"]["Parent"] = objects["Instance174"];
    objects["Instance184"]["Size"] = UDim2.new(0, 1, 0.97299999, 0);
    objects["Instance184"]["BorderSizePixel"] = 0;
    objects["Instance184"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance185"]["Parent"] = objects["Instance174"];
    objects["Instance185"]["ScrollBarThickness"] = 0;
    objects["Instance185"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);
    objects["Instance185"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance185"]["BackgroundTransparency"] = 1;
    objects["Instance185"]["Selectable"] = false;
    objects["Instance185"]["Name"] = "Logs";
    objects["Instance185"]["Position"] = UDim2.new(0, 0, 0.0120000001, 0);
    objects["Instance185"]["Size"] = UDim2.new(0.25, 0, 0.949999988, 1);
    objects["Instance185"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance185"]["BorderSizePixel"] = 0;
    objects["Instance185"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance186"]["Parent"] = objects["Instance185"];
    objects["Instance186"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance187"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance187"]["Active"] = false;
    objects["Instance187"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance187"]["Text"] = "";
    objects["Instance187"]["Selectable"] = false;
    objects["Instance187"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance187"]["TextSize"] = 14;
    objects["Instance187"]["Name"] = "Log";
    objects["Instance187"]["BackgroundTransparency"] = 1;
    objects["Instance187"]["Parent"] = objects["Instance185"];
    objects["Instance187"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance187"]["Size"] = UDim2.new(1, 0, 0.122000001, 0);
    objects["Instance187"]["BorderSizePixel"] = 0;
    objects["Instance187"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance188"]["Parent"] = objects["Instance187"];
    objects["Instance188"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance188"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance188"]["Name"] = "Contents";
    objects["Instance188"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance188"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance188"]["Size"] = UDim2.new(0.850000024, 0, 0.699999988, 0);
    objects["Instance188"]["BorderSizePixel"] = 0;
    objects["Instance188"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance189"]["Parent"] = objects["Instance188"];
    objects["Instance189"]["Transparency"] = 0.5;
    objects["Instance189"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance189"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance190"]["BackgroundTransparency"] = 0.25;
    objects["Instance190"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance190"]["Parent"] = objects["Instance188"];
    objects["Instance190"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance190"]["BorderSizePixel"] = 0;
    objects["Instance190"]["BackgroundColor3"] = Color3.new(0.333333, 1, 0.498039);

    objects["Instance191"]["TextWrapped"] = true;
    objects["Instance191"]["Parent"] = objects["Instance188"];
    objects["Instance191"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance191"]["BorderSizePixel"] = 0;
    objects["Instance191"]["Size"] = UDim2.new(0.800000012, 0, 0.649999976, 0);
    objects["Instance191"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance191"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance191"]["Text"] = "example.org";
    objects["Instance191"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance191"]["BackgroundTransparency"] = 1;
    objects["Instance191"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance191"]["Name"] = "Label";
    objects["Instance191"]["Position"] = UDim2.new(0.125, 0, 0.5, 0);
    objects["Instance191"]["TextSize"] = 14;
    objects["Instance191"]["FontFace"] = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance191"]["TextScaled"] = true;
    objects["Instance191"]["TextWrap"] = true;

    objects["Instance192"]["BackgroundTransparency"] = 1;
    objects["Instance192"]["Name"] = "Selection";
    objects["Instance192"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance192"]["Parent"] = objects["Instance188"];
    objects["Instance192"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance192"]["BorderSizePixel"] = 0;
    objects["Instance192"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance193"]["Visible"] = false;
    objects["Instance193"]["Parent"] = objects["Instance188"];
    objects["Instance193"]["BackgroundTransparency"] = 0.25;
    objects["Instance193"]["Name"] = "Type";
    objects["Instance193"]["Position"] = UDim2.new(0.0500000007, 0, 0, 0);
    objects["Instance193"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance193"]["Size"] = UDim2.new(0.0500000007, 0, 1, 0);
    objects["Instance193"]["BorderSizePixel"] = 0;
    objects["Instance193"]["BackgroundColor3"] = Color3.new(1, 0.333333, 0.498039);

    objects["Instance194"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance194"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance194"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance194"]["Text"] = "";
    objects["Instance194"]["Size"] = UDim2.new(0.75, 0, 0.600000024, 0);
    objects["Instance194"]["TextSize"] = 14;
    objects["Instance194"]["BackgroundTransparency"] = 0.9750000238418579;
    objects["Instance194"]["Position"] = UDim2.new(0.25, 0, 0, 0);
    objects["Instance194"]["Parent"] = objects["Instance174"];
    objects["Instance194"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance194"]["BorderSizePixel"] = 0;
    objects["Instance194"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance195"]["BackgroundTransparency"] = 0.5;
    objects["Instance195"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance195"]["Name"] = "Separator";
    objects["Instance195"]["Position"] = UDim2.new(0, 0, 1, 0);
    objects["Instance195"]["Parent"] = objects["Instance194"];
    objects["Instance195"]["Size"] = UDim2.new(0.978999972, 0, 0, 1);
    objects["Instance195"]["BorderSizePixel"] = 0;
    objects["Instance195"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance196"]["Visible"] = false;
    objects["Instance196"]["ClipsDescendants"] = true;
    objects["Instance196"]["Parent"] = objects["Instance75"];
    objects["Instance196"]["Name"] = "ScriptScanner";
    objects["Instance196"]["BackgroundTransparency"] = 1;
    objects["Instance196"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance196"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance196"]["BorderSizePixel"] = 0;
    objects["Instance196"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance197"]["BackgroundTransparency"] = 1;
    objects["Instance197"]["Name"] = "Contents";
    objects["Instance197"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance197"]["Parent"] = objects["Instance196"];
    objects["Instance197"]["Size"] = UDim2.new(1, 0, 0.850000024, 0);
    objects["Instance197"]["BorderSizePixel"] = 0;
    objects["Instance197"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance198"]["Active"] = false;
    objects["Instance198"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance198"]["Text"] = "";
    objects["Instance198"]["Selectable"] = false;
    objects["Instance198"]["AutoButtonColor"] = false;
    objects["Instance198"]["TextTransparency"] = 0.25;
    objects["Instance198"]["Name"] = "SearchBar";
    objects["Instance198"]["BackgroundTransparency"] = 0.5;
    objects["Instance198"]["Position"] = UDim2.new(0.0159999616, 0, 0.0249999426, 0);
    objects["Instance198"]["Parent"] = objects["Instance197"];
    objects["Instance198"]["Size"] = UDim2.new(0.968374968, 0, 0.100000001, 0);
    objects["Instance198"]["BorderSizePixel"] = 0;
    objects["Instance198"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance199"]["Parent"] = objects["Instance198"];
    objects["Instance199"]["CornerRadius"] = UDim.new(0.200000003, 0);

    objects["Instance200"]["Parent"] = objects["Instance198"];
    objects["Instance200"]["BackgroundTransparency"] = 1;
    objects["Instance200"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance200"]["Image"] = "rbxassetid://93748616033191";
    objects["Instance200"]["Name"] = "Icon";
    objects["Instance200"]["Position"] = UDim2.new(0.0125000002, 0, 0.5, 0);
    objects["Instance200"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance200"]["Size"] = UDim2.new(0.600000024, 0, 0.600000024, 0);
    objects["Instance200"]["BorderSizePixel"] = 0;
    objects["Instance200"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance201"]["Parent"] = objects["Instance200"];

    objects["Instance202"]["Parent"] = objects["Instance198"];
    objects["Instance202"]["Transparency"] = 0.5;
    objects["Instance202"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance202"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance203"]["Active"] = true;
    objects["Instance203"]["Parent"] = objects["Instance198"];
    objects["Instance203"]["BackgroundTransparency"] = 1;
    objects["Instance203"]["ClipsDescendants"] = true;
    objects["Instance203"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance203"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance203"]["Name"] = "Field";
    objects["Instance203"]["Position"] = UDim2.new(0.0599999987, 0, 0.5, 0);
    objects["Instance203"]["Size"] = UDim2.new(0.920000017, 0, 0.600000024, 0);
    objects["Instance203"]["Selectable"] = true;
    objects["Instance203"]["BorderSizePixel"] = 0;
    objects["Instance203"]["BackgroundColor3"] = Color3.new(0.972549, 0.972549, 0.972549);

    objects["Instance204"]["TextWrapped"] = true;
    objects["Instance204"]["Parent"] = objects["Instance203"];
    objects["Instance204"]["PlaceholderText"] = "Type here keywords to find in game scripts. \";\" to separate keywords";
    objects["Instance204"]["BorderSizePixel"] = 0;
    objects["Instance204"]["Size"] = UDim2.new(999, 0, 1, 0);
    objects["Instance204"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance204"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance204"]["Text"] = "";
    objects["Instance204"]["TextSize"] = 14;
    objects["Instance204"]["FontFace"] = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance204"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance204"]["BackgroundTransparency"] = 1;
    objects["Instance204"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance204"]["TextWrap"] = true;
    objects["Instance204"]["ClearTextOnFocus"] = false;
    objects["Instance204"]["TextScaled"] = true;
    objects["Instance204"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance205"]["BackgroundTransparency"] = 1;
    objects["Instance205"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance205"]["Name"] = "View";
    objects["Instance205"]["Position"] = UDim2.new(0, 0, 0.150000021, 0);
    objects["Instance205"]["Parent"] = objects["Instance197"];
    objects["Instance205"]["Size"] = UDim2.new(1, 0, 0.850000024, 0);
    objects["Instance205"]["BorderSizePixel"] = 0;
    objects["Instance205"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance206"]["Visible"] = false;
    objects["Instance206"]["BackgroundTransparency"] = 1;
    objects["Instance206"]["Name"] = "Editor";
    objects["Instance206"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance206"]["Parent"] = objects["Instance205"];
    objects["Instance206"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance206"]["BorderSizePixel"] = 0;
    objects["Instance206"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance207"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance207"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance207"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance207"]["Text"] = "cod editor zon :)))";
    objects["Instance207"]["Size"] = UDim2.new(1, 0, 0.899999976, 0);
    objects["Instance207"]["TextSize"] = 14;
    objects["Instance207"]["BackgroundTransparency"] = 0.9750000238418579;
    objects["Instance207"]["Position"] = UDim2.new(0, 0, 0.100000001, 0);
    objects["Instance207"]["Parent"] = objects["Instance206"];
    objects["Instance207"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance207"]["BorderSizePixel"] = 0;
    objects["Instance207"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance208"]["BackgroundTransparency"] = 0.5;
    objects["Instance208"]["Name"] = "Separator";
    objects["Instance208"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance208"]["Parent"] = objects["Instance207"];
    objects["Instance208"]["Size"] = UDim2.new(0.984000027, 0, 0, 1);
    objects["Instance208"]["BorderSizePixel"] = 0;
    objects["Instance208"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance209"]["TextWrap"] = true;
    objects["Instance209"]["TextWrapped"] = true;
    objects["Instance209"]["TextSize"] = 14;
    objects["Instance209"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance209"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance209"]["Text"] = "Copy text to clipboard";
    objects["Instance209"]["Name"] = "CopyCode";
    objects["Instance209"]["Parent"] = objects["Instance206"];
    objects["Instance209"]["FontFace"] = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance209"]["TextScaled"] = true;
    objects["Instance209"]["BackgroundTransparency"] = 0.8999999761581421;
    objects["Instance209"]["Position"] = UDim2.new(0.150000006, 0, 0, 0);
    objects["Instance209"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance209"]["Size"] = UDim2.new(0.425000012, 0, 0.100000001, 0);
    objects["Instance209"]["BorderSizePixel"] = 0;
    objects["Instance209"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance210"]["Parent"] = objects["Instance209"];
    objects["Instance210"]["PaddingTop"] = UDim.new(0.200000003, 0);
    objects["Instance210"]["PaddingBottom"] = UDim.new(0.200000003, 0);

    objects["Instance211"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance211"]["BackgroundTransparency"] = 0.5;
    objects["Instance211"]["Position"] = UDim2.new(1, -1, 0, 0);
    objects["Instance211"]["Parent"] = objects["Instance209"];
    objects["Instance211"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance211"]["BorderSizePixel"] = 0;
    objects["Instance211"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance212"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance212"]["TextWrap"] = true;
    objects["Instance212"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance212"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance212"]["Text"] = "< Back";
    objects["Instance212"]["TextSize"] = 14;
    objects["Instance212"]["Name"] = "Back";
    objects["Instance212"]["Parent"] = objects["Instance206"];
    objects["Instance212"]["FontFace"] = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance212"]["BackgroundTransparency"] = 0.8999999761581421;
    objects["Instance212"]["TextScaled"] = true;
    objects["Instance212"]["TextWrapped"] = true;
    objects["Instance212"]["Size"] = UDim2.new(0.150000006, 0, 0.100000001, 0);
    objects["Instance212"]["BorderSizePixel"] = 0;
    objects["Instance212"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance213"]["Parent"] = objects["Instance212"];
    objects["Instance213"]["PaddingTop"] = UDim.new(0.200000003, 0);
    objects["Instance213"]["PaddingBottom"] = UDim.new(0.200000003, 0);

    objects["Instance214"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance214"]["BackgroundTransparency"] = 0.5;
    objects["Instance214"]["Position"] = UDim2.new(1, -1, 0, 0);
    objects["Instance214"]["Parent"] = objects["Instance212"];
    objects["Instance214"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance214"]["BorderSizePixel"] = 0;
    objects["Instance214"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance215"]["TextWrap"] = true;
    objects["Instance215"]["TextWrapped"] = true;
    objects["Instance215"]["TextSize"] = 14;
    objects["Instance215"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance215"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance215"]["Text"] = "Copy path to clipboard";
    objects["Instance215"]["Name"] = "CopyPath";
    objects["Instance215"]["Parent"] = objects["Instance206"];
    objects["Instance215"]["FontFace"] = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance215"]["TextScaled"] = true;
    objects["Instance215"]["BackgroundTransparency"] = 0.8999999761581421;
    objects["Instance215"]["Position"] = UDim2.new(0.574999988, 0, 0, 0);
    objects["Instance215"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance215"]["Size"] = UDim2.new(0.425000012, 0, 0.100000001, 0);
    objects["Instance215"]["BorderSizePixel"] = 0;
    objects["Instance215"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance216"]["Parent"] = objects["Instance215"];
    objects["Instance216"]["PaddingTop"] = UDim.new(0.200000003, 0);
    objects["Instance216"]["PaddingBottom"] = UDim.new(0.200000003, 0);

    objects["Instance217"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance217"]["BackgroundTransparency"] = 0.5;
    objects["Instance217"]["Position"] = UDim2.new(1, -1, 0, 0);
    objects["Instance217"]["Parent"] = objects["Instance215"];
    objects["Instance217"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance217"]["BorderSizePixel"] = 0;
    objects["Instance217"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance218"]["Visible"] = false;
    objects["Instance218"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance218"]["Parent"] = objects["Instance206"];
    objects["Instance218"]["BorderSizePixel"] = 0;
    objects["Instance218"]["Size"] = UDim2.new(0.249999911, 0, 0.100000016, 0);
    objects["Instance218"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance218"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance218"]["Text"] = "Enchant code";
    objects["Instance218"]["TextWrap"] = true;
    objects["Instance218"]["TextWrapped"] = true;
    objects["Instance218"]["TextSize"] = 14;
    objects["Instance218"]["BackgroundTransparency"] = 0.8999999761581421;
    objects["Instance218"]["Position"] = UDim2.new(0.750000238, 0, 0, 0);
    objects["Instance218"]["Name"] = "Enchant";
    objects["Instance218"]["FontFace"] = Font.new("rbxasset://fonts/families/Roboto.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance218"]["TextScaled"] = true;
    objects["Instance218"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance219"]["Parent"] = objects["Instance218"];
    objects["Instance219"]["PaddingTop"] = UDim.new(0.200000003, 0);
    objects["Instance219"]["PaddingBottom"] = UDim.new(0.200000003, 0);

    objects["Instance220"]["BackgroundTransparency"] = 1;
    objects["Instance220"]["Name"] = "ScanResults";
    objects["Instance220"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance220"]["Parent"] = objects["Instance205"];
    objects["Instance220"]["Size"] = UDim2.new(0.98437506, 0, 1, 0);
    objects["Instance220"]["BorderSizePixel"] = 0;
    objects["Instance220"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance221"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance221"]["TextWrapped"] = true;
    objects["Instance221"]["TextColor3"] = Color3.new(0.392157, 0.392157, 0.392157);
    objects["Instance221"]["Parent"] = objects["Instance220"];
    objects["Instance221"]["Text"] = "Matches";
    objects["Instance221"]["TextSize"] = 14;
    objects["Instance221"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance221"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance221"]["Size"] = UDim2.new(0.200000003, 0, 0.0599999987, 0);
    objects["Instance221"]["BackgroundTransparency"] = 1;
    objects["Instance221"]["Position"] = UDim2.new(0.774999976, 0, 0, 0);
    objects["Instance221"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance221"]["TextScaled"] = true;
    objects["Instance221"]["BorderSizePixel"] = 0;
    objects["Instance221"]["TextWrap"] = true;

    objects["Instance222"]["ScrollBarImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance222"]["Active"] = true;
    objects["Instance222"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance222"]["ScrollBarThickness"] = 0;
    objects["Instance222"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance222"]["Size"] = UDim2.new(0.984000027, 0, 0.939999998, 0);
    objects["Instance222"]["BackgroundTransparency"] = 1;
    objects["Instance222"]["Name"] = "List";
    objects["Instance222"]["Position"] = UDim2.new(0.0160000008, 0, 0.0599999987, 0);
    objects["Instance222"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance222"]["Parent"] = objects["Instance220"];
    objects["Instance222"]["BorderSizePixel"] = 0;
    objects["Instance222"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance223"]["Visible"] = false;
    objects["Instance223"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance223"]["Active"] = false;
    objects["Instance223"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance223"]["Text"] = "";
    objects["Instance223"]["Selectable"] = false;
    objects["Instance223"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance223"]["TextSize"] = 14;
    objects["Instance223"]["Name"] = "Log";
    objects["Instance223"]["BackgroundTransparency"] = 1;
    objects["Instance223"]["Parent"] = objects["Instance222"];
    objects["Instance223"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance223"]["Size"] = UDim2.new(1, 0, 0.200000003, 0);
    objects["Instance223"]["BorderSizePixel"] = 0;
    objects["Instance223"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance224"]["Parent"] = objects["Instance223"];
    objects["Instance224"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance224"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance224"]["Name"] = "Contents";
    objects["Instance224"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance224"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance224"]["Size"] = UDim2.new(1, -2, 0.699999988, 0);
    objects["Instance224"]["BorderSizePixel"] = 0;
    objects["Instance224"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance225"]["Parent"] = objects["Instance224"];
    objects["Instance225"]["Transparency"] = 0.5;
    objects["Instance225"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance225"]["Color"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance226"]["Parent"] = objects["Instance224"];
    objects["Instance226"]["CornerRadius"] = UDim.new(0.200000003, 0);

    objects["Instance227"]["TextWrapped"] = true;
    objects["Instance227"]["Parent"] = objects["Instance224"];
    objects["Instance227"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance227"]["BorderSizePixel"] = 0;
    objects["Instance227"]["Size"] = UDim2.new(0.699999988, 0, 0.75, 0);
    objects["Instance227"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance227"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance227"]["Text"] = "LocalScript";
    objects["Instance227"]["Position"] = UDim2.new(0.100000001, 0, 0.349999994, 0);
    objects["Instance227"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance227"]["BackgroundTransparency"] = 1;
    objects["Instance227"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance227"]["Name"] = "ScriptName";
    objects["Instance227"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance227"]["TextSize"] = 14;
    objects["Instance227"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    objects["Instance227"]["TextScaled"] = true;
    objects["Instance227"]["TextWrap"] = true;

    objects["Instance228"]["TextWrapped"] = true;
    objects["Instance228"]["Parent"] = objects["Instance224"];
    objects["Instance228"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance228"]["BorderSizePixel"] = 0;
    objects["Instance228"]["Size"] = UDim2.new(0.200000003, 0, 0.649999976, 0);
    objects["Instance228"]["TextColor3"] = Color3.new(0.168627, 0.694118, 1);
    objects["Instance228"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance228"]["Text"] = "6";
    objects["Instance228"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance228"]["BackgroundTransparency"] = 1;
    objects["Instance228"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance228"]["Name"] = "Matches";
    objects["Instance228"]["Position"] = UDim2.new(0.774999976, 0, 0.5, 0);
    objects["Instance228"]["TextSize"] = 14;
    objects["Instance228"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance228"]["TextScaled"] = true;
    objects["Instance228"]["TextWrap"] = true;

    objects["Instance229"]["TextWrapped"] = true;
    objects["Instance229"]["Parent"] = objects["Instance224"];
    objects["Instance229"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance229"]["BorderSizePixel"] = 0;
    objects["Instance229"]["Size"] = UDim2.new(0.699999988, 0, 0.400000006, 0);
    objects["Instance229"]["TextColor3"] = Color3.new(0.784314, 0.784314, 0.784314);
    objects["Instance229"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance229"]["Text"] = "workspace.LocalScript";
    objects["Instance229"]["Position"] = UDim2.new(0.100000001, 0, 0.75, 0);
    objects["Instance229"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance229"]["BackgroundTransparency"] = 1;
    objects["Instance229"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance229"]["Name"] = "ScriptPath";
    objects["Instance229"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance229"]["TextSize"] = 14;
    objects["Instance229"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance229"]["TextScaled"] = true;
    objects["Instance229"]["TextWrap"] = true;

    objects["Instance230"]["Parent"] = objects["Instance224"];
    objects["Instance230"]["BackgroundTransparency"] = 1;
    objects["Instance230"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance230"]["Image"] = "rbxassetid://120549633847891";
    objects["Instance230"]["Name"] = "Icon";
    objects["Instance230"]["Position"] = UDim2.new(0.0250000004, 0, 0.5, 0);
    objects["Instance230"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance230"]["Size"] = UDim2.new(0.899999976, 0, 0.899999976, 0);
    objects["Instance230"]["BorderSizePixel"] = 0;
    objects["Instance230"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance231"]["Parent"] = objects["Instance230"];

    objects["Instance232"]["Parent"] = objects["Instance222"];
    objects["Instance232"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance232"]["Padding"] = UDim.new(-0.0350000001, 0);

    objects["Instance233"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance233"]["TextWrapped"] = true;
    objects["Instance233"]["TextColor3"] = Color3.new(0.392157, 0.392157, 0.392157);
    objects["Instance233"]["Parent"] = objects["Instance220"];
    objects["Instance233"]["Text"] = "Script name";
    objects["Instance233"]["TextSize"] = 14;
    objects["Instance233"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance233"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance233"]["Size"] = UDim2.new(0.400000006, 0, 0.0599999987, 0);
    objects["Instance233"]["BackgroundTransparency"] = 1;
    objects["Instance233"]["Position"] = UDim2.new(0.0250000004, 0, 0, 0);
    objects["Instance233"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance233"]["TextScaled"] = true;
    objects["Instance233"]["BorderSizePixel"] = 0;
    objects["Instance233"]["TextWrap"] = true;

    objects["Instance234"]["BackgroundTransparency"] = 0.5;
    objects["Instance234"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance234"]["Name"] = "Separator";
    objects["Instance234"]["Position"] = UDim2.new(0, 0, 0, -1);
    objects["Instance234"]["Parent"] = objects["Instance205"];
    objects["Instance234"]["Size"] = UDim2.new(0.984000027, 0, 0, 1);
    objects["Instance234"]["BorderSizePixel"] = 0;
    objects["Instance234"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance235"]["BackgroundTransparency"] = 1;
    objects["Instance235"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance235"]["Name"] = "Loading";
    objects["Instance235"]["Position"] = UDim2.new(0, 0, 0.850000024, 0);
    objects["Instance235"]["Parent"] = objects["Instance196"];
    objects["Instance235"]["Size"] = UDim2.new(1, 0, 0.125, 0);
    objects["Instance235"]["BorderSizePixel"] = 0;
    objects["Instance235"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance236"]["Visible"] = false;
    objects["Instance236"]["Parent"] = objects["Instance235"];
    objects["Instance236"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance236"]["BackgroundTransparency"] = 0.5;
    objects["Instance236"]["Position"] = UDim2.new(0.0160000008, 0, 0.75, 0);
    objects["Instance236"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance236"]["Size"] = UDim2.new(0.967999995, 0, 0.5, 0);
    objects["Instance236"]["BorderSizePixel"] = 0;
    objects["Instance236"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance237"]["Parent"] = objects["Instance236"];
    objects["Instance237"]["CornerRadius"] = UDim.new(1, 0);

    objects["Instance238"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance238"]["Position"] = UDim2.new(-0.5, 0, 0, 0);
    objects["Instance238"]["Parent"] = objects["Instance236"];
    objects["Instance238"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance238"]["BorderSizePixel"] = 0;
    objects["Instance238"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance239"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance239"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance239"]["Name"] = "Gradient";
    objects["Instance239"]["Position"] = UDim2.new(1, 0, 0.5, 0);
    objects["Instance239"]["Parent"] = objects["Instance238"];
    objects["Instance239"]["Size"] = UDim2.new(0.100000001, 0, 1, 0);
    objects["Instance239"]["BorderSizePixel"] = 0;
    objects["Instance239"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance240"]["Parent"] = objects["Instance239"];
    objects["Instance240"]["Transparency"] = NumberSequence.new({
    [1] = NumberSequenceKeypoint.new(0, 0.5, 0);
    [2] = NumberSequenceKeypoint.new(1, 1, 0);
});

    objects["Instance241"]["Visible"] = false;
    objects["Instance241"]["FontFace"] = Font.new("rbxasset://fonts/families/HighwayGothic.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance241"]["Parent"] = objects["Instance235"];
    objects["Instance241"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance241"]["BorderSizePixel"] = 0;
    objects["Instance241"]["Size"] = UDim2.new(1, 0, 0.349999994, 0);
    objects["Instance241"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance241"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance241"]["Text"] = "The tool is loading...";
    objects["Instance241"]["TextSize"] = 14;
    objects["Instance241"]["TextWrapped"] = true;
    objects["Instance241"]["BackgroundTransparency"] = 1;
    objects["Instance241"]["Position"] = UDim2.new(0, 0, 0.25, 0);
    objects["Instance241"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance241"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance241"]["TextScaled"] = true;
    objects["Instance241"]["TextWrap"] = true;

    objects["Instance242"]["BackgroundTransparency"] = 0.5;
    objects["Instance242"]["Name"] = "Separator";
    objects["Instance242"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance242"]["Parent"] = objects["Instance235"];
    objects["Instance242"]["Size"] = UDim2.new(0.984000027, 0, 0, 1);
    objects["Instance242"]["BorderSizePixel"] = 0;
    objects["Instance242"]["BackgroundColor3"] = Color3.new(0.294118, 0.294118, 0.294118);

    objects["Instance243"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance243"]["Active"] = false;
    objects["Instance243"]["Parent"] = objects["Instance235"];
    objects["Instance243"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance243"]["BorderSizePixel"] = 0;
    objects["Instance243"]["Size"] = UDim2.new(0.967999995, 0, 0.800000012, 0);
    objects["Instance243"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance243"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance243"]["Text"] = "Start Scanning";
    objects["Instance243"]["Selectable"] = false;
    objects["Instance243"]["TextWrap"] = true;
    objects["Instance243"]["ClipsDescendants"] = true;
    objects["Instance243"]["BackgroundTransparency"] = 0.949999988079071;
    objects["Instance243"]["Position"] = UDim2.new(0.0160000008, 0, 0.574999988, 0);
    objects["Instance243"]["TextWrapped"] = true;
    objects["Instance243"]["Name"] = "Start";
    objects["Instance243"]["TextScaled"] = true;
    objects["Instance243"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance244"]["Parent"] = objects["Instance243"];
    objects["Instance244"]["CornerRadius"] = UDim.new(0.200000003, 0);

    objects["Instance245"]["Parent"] = objects["Instance243"];
    objects["Instance245"]["Transparency"] = 0.5;
    objects["Instance245"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance246"]["Parent"] = objects["Instance243"];
    objects["Instance246"]["PaddingTop"] = UDim.new(0.100000001, 0);
    objects["Instance246"]["PaddingBottom"] = UDim.new(0.100000001, 0);

    objects["Instance247"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance247"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance247"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance247"]["Text"] = "";
    objects["Instance247"]["AutoButtonColor"] = false;
    objects["Instance247"]["TextSize"] = 14;
    objects["Instance247"]["Name"] = "Hover";
    objects["Instance247"]["BackgroundTransparency"] = 1;
    objects["Instance247"]["Parent"] = objects["Instance31"];
    objects["Instance247"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance247"]["Size"] = UDim2.new(0.075000003, 0, 1, 0);
    objects["Instance247"]["BorderSizePixel"] = 0;
    objects["Instance247"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance248"]["Parent"] = objects["Instance16"];
    objects["Instance248"]["CornerRadius"] = UDim.new(0.00999999978, 0);

    objects["Instance249"]["Visible"] = false;
    objects["Instance249"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance249"]["Name"] = "Overlay";
    objects["Instance249"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance249"]["Parent"] = objects["Instance16"];
    objects["Instance249"]["ZIndex"] = 999999999;
    objects["Instance249"]["BorderSizePixel"] = 0;
    objects["Instance249"]["BackgroundColor3"] = Color3.new(0.105882, 0.105882, 0.105882);

    objects["Instance250"]["Parent"] = objects["Instance249"];
    objects["Instance250"]["CornerRadius"] = UDim.new(0.0149999997, 0);
end;

-- Set modules
local o_require = require; local require;
local modules do
    modules = {};
    require = function(object)
        if modules[object] then
            return modules[object]();
        end
        return o_require(object);
    end;

    getfenv().require = require;

    modules[objects["Instance12"]] = function()
        local script = objects["Instance12"];
return function(shared, page)
    local cons = shared.Connections
    local hooks = shared.HookFunction -- custom safe hooks
    local settings = shared.Settings

    local logExample = page.Logs.Log
    logExample.Visible = false

    local methodColors = {
        ["GET"] = Color3.fromRGB(85, 255, 127),
        ["POST"] = Color3.fromRGB(85, 255, 255),
        ["PUT"] = Color3.fromRGB(200, 200, 200),
        ["DELETE"] = Color3.fromRGB(255, 0, 0),
        ["HEADERS"] = Color3.fromRGB(255, 170, 127),
        ["TRACE"] = Color3.fromRGB(255, 0, 127),
        ["OPTIONS"] = Color3.fromRGB(100, 100, 100),
        ["PATCH"] = Color3.fromRGB(170, 170, 0),
        ["HEAD"] = Color3.fromRGB(85, 85, 127),
        ["Unknown"] = Color3.fromRGB(85, 0, 255),
    }

    local function surl(url)
        local s1 = url:split("://")
        local protocol = s1[1]
        local page = (s1[2] or "unknown"):split("/")[1]:split(".")
        local shortUrl = ""

        if #page > 1 then
            shortUrl = page[#page - 1] .. "." .. page[#page]
        else
            shortUrl = page[1] or "unknown"
        end

        return protocol, shortUrl
    end

    local order = ((2 ^ 31) - 1)
    local selection = shared:AddObject({ })
    local ignore = shared:AddObject({ })
    local logSpeed = shared:AddObject({ })
    local logs = shared:AddObject({ })
    local limit = 4

    local codeBox = shared.CodeBox(page.TextBox, shared.UseEnv)
    codeBox.Text = "Welcome to Ketamine - HTTP Spy!\n-- Waiting for HTTP requests --"

    local function addLog(realUrl, method, func, headers, body, result)
        realUrl = realUrl:gsub("\\", "/")

        local success, protocol, url = pcall(surl, realUrl)
        if not success then
            protocol = "unknown"
            url = realUrl
        end
        
        if ignore[url] or settings.Ignore_spammy_logs and (tonumber(logSpeed[url]) or 0) > limit then return end

        local log = shared:AddButton(logExample:Clone())
        log.Parent = page.Logs
        log.Visible = true

        table.insert(logs, 1, log)
        while #logs > math.max(settings.Maximum_log_amount * 5, 1) do
            local log = table.remove(logs, #logs)
            log:Destroy()
        end

        local shortUrl = url
        if #shortUrl > 13 then
            shortUrl = shortUrl:sub(1, 11) .. "..."
        end

        log.Contents.Label.Text = shortUrl
        log.LayoutOrder = order
        log.Contents.Frame.BackgroundColor3 = methodColors[method] or methodColors.Unknown
        log.Contents.Type.BackgroundColor3 = protocol == "http" and Color3.fromRGB(255, 85, 127) or protocol ~= "https" and Color3.fromRGB(85, 85, 255) or Color3.new()
        if protocol ~= "https" then
            log.Contents.Type.Visible = true
        end

        cons[#cons + 1] = log.MouseButton1Click:Connect(function()
            for _, log in logs do
                if log and log.Parent then
                    log.Contents.Selection.BackgroundTransparency = 1
                end
            end

            log.Contents.Selection.BackgroundTransparency = 0.9

            selection[1] = realUrl
            selection[2] = url
            selection[3] = protocol
            selection[4] = func
            selection[5] = method
            selection[6] = headers
            selection[7] = body
            selection[8] = result

            local s = url:split("/")

            codeBox.Text = "Method: " .. (method or "Unknown") .. "\nProtocol: " .. (protocol or "Unknown") .. "\nUrl: \"" .. s[1] .. "\"\n" .. (s[2] and "Path: \"" .. table.concat(s, "/", 2) .. "\"\n" or "") .. "Function: " .. func .. "\n\n-- Click buttons under to get more info --"
        end)

        order -= 1
    end

    local hooksAvailable = type(getfenv().hookmetamethod) == "function"
        and type(getfenv().hookfunction) == "function"
        and type(getfenv().getnamecallmethod) == "function"

    local http = game:GetService("HttpService")

    local genv = (getfenv().getgenv or getfenv)()
    if hooksAvailable then
        task.spawn(function()
            if genv.request then
                hooks.HookFunction(genv.request, function(old, options)
                    local result = shared:AddObject({ })
                    task.spawn(addLog, options.Url, options.Method or "GET", "request", options.Headers, options.Body, result)

                    result[1] = old(options)
                    return result[1]
                end)
            end

            local getnamecall = getfenv().getnamecallmethod

            hooks.HookMetaMethod("__namecall", function(old, self, ...)
                if typeof(self) ~= "Instance" then
                    return old(self, ...)
                end

                local method = getnamecall()
                method = method:sub(1, 1):upper() .. method:sub(2)

                if self == game and (method == "HttpGet" or method == "HttpGetAsync") then -- I've planned to add support for RequestInternal and requests from HttpService, but nah
                    local result = shared:AddObject({ })
                    task.spawn(addLog, select(1, ...), "GET", "game:HttpGet", select(3, ...), nil, result)

                    result[1] = old(self, ...)
                    return result[1]
                elseif self == game and (method == "HttpPost" or method == "HttpPostAsync") then
                    local result = shared:AddObject({ })
                    task.spawn(addLog, select(1, ...), "POST", "game:HttpPost", select(5, ...), select(2, ...), result)

                    result[1] = old(self, ...)
                    return result[1]
                end

                return old(self, ...)
            end)
        end)
    else
        local originalReq = genv.request
        if originalReq then
            genv.request = function(options)
                local result = shared:AddObject({ })
                task.spawn(addLog, options.Url, options.Method, "request", options.Headers, options.Body, result)

                result[1] = originalReq(options)
                return result[1]
            end

            shared.OnCloseEvent:Connect(function()
                genv.request = originalReq
            end)
        end
    end

    local button = page.Buttons.Button
    button.Visible = false

    local function addButton(text, callback)
        local button = button:Clone()
        button.Parent = page.Buttons
        button.Visible = true
        button.Name = text

        if typeof(text) == "string" and text ~= "" then
            shared:AddButton(button)

            button.Separator:Destroy()
            button.Contents.Label.Text = text
            cons[#cons + 1] = button.MouseButton1Click:Connect(function()
                callback(button)
            end)
        else
            button.Contents:Destroy()
            button.Separator.Visible = true
        end

        return button
    end

    local clipboard = shared.Clipboard
    addButton("Copy text to clipboard", function()
        clipboard(codeBox.Text)
    end)

    addButton("Copy url to clipboard", function()
        if selection[1] then
            clipboard(selection[1])
        end
    end)

    addButton("Clear logs", function()
        for _, log in logs do
            log:Destroy()
        end

        table.clear(logs)
    end)

    addButton("Get request headers", function()
        if selection[6] then
            codeBox.Text = shared.ToString.ToString(selection[6])
        end
    end)
    addButton("Get request body", function()
        if selection[7] then
            codeBox.Text = shared.ToString.ToString(selection[7])
        end
    end)
    addButton("Get request result", function()
        if selection[8] and selection[8][1] then
            codeBox.Text = typeof(selection[8][1]) ~= "string" and shared.ToString.ToString(selection[8][1]) or selection[8][1]
        end
    end)
    addButton("Get body as lua table", function()
        if selection[7] then
            codeBox.Text = shared.ToString.ToString(http:JSONDecode(selection[7]))
        end
    end)

    addButton("Generate code", function()
        codeBox.Text = "local result = request({ -- " .. selection[4] .. "\n\t[\"Url\"] = \"" .. selection[1] .. "\",\n\t[\"Method\"] = \"" .. selection[5] .. "\",\n\t[\"Headers\"] = " .. shared.ToString.ToString(selection[6], 1) .. ",\n\t[\"Body\"] = " .. shared.ToString.ToString(selection[7], 1) .. "\n})"
    end)
end
    end;

    modules[objects["Instance6"]] = function()
        local script = objects["Instance6"];
local function normalize(str)
    return (str:gsub("\n", "\\n"):gsub("\t", "\\t"):gsub("\r", "\\r"):gsub("\"", "\\\""):gsub("\0", "\\0"))
end

local function escapePattern(str)
    return str:gsub("%%", "%%%%")
        :gsub("%.", "%%.")
        :gsub("%?", "%%?")
        :gsub("%!", "%%!")
        :gsub("%,", "%%,")
        :gsub("%[", "%%[")
        :gsub("%]", "%%]")
        :gsub("%(", "%%(")
        :gsub("%)", "%%)")
        :gsub("%{", "%%{")
        :gsub("%}", "%%}")
end

local alphabet = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm_1234567890"
local function isValidSymbol(s)
    return alphabet:find(escapePattern(s)) ~= nil
end

local function isValidVariableName(var)
    var = tostring(var)
    if not var or tonumber(var:sub(1,1)) then
        return false
    end

    for char in var:gmatch(".") do
        if not isValidSymbol(char) then
            return false
        end
    end

    return true
end

local function getPath(obj, normalNil, dontGetService)
    if not obj then
        return "nil"
    elseif obj == workspace.Parent or obj == game then
        return "game"
    elseif obj and not obj.Parent then
        local env = getfenv()
        local name = env.getnilinstances and "getnilinstances" or env.getnils and "getnils"
        if not normalNil and name then
            return ("(function()\n  local function getNil(objType, objName)\n    for _, v in %s() do\n      if v.ClassName == objType and v.Name == objName then\n        return v\n      end\n    end\n  end\n  return getNil(\"%s\", \"%s\")\nend)()")
                :format(name, obj.ClassName, normalize(obj.Name))
        elseif normalNil then
            return "(nil)[\"" .. normalize(obj.Name) .. "\"]"
        else
            return "(nil)[\"" .. normalize(obj.Name) .. "\"] --[[ Object is parented to nil; getnilinstances does not exist ]]"
        end
    end

    local path = ""
    while obj.Parent do
        if (obj.Parent == game or obj.Parent == workspace.Parent) and not dontGetService and pcall(game.GetService, game, obj.ClassName) and game:GetService(obj.ClassName) then
            path = "game:GetService(\"" .. obj.ClassName:gsub(" ", "") .. "\")" .. path
            break
        elseif (obj.Parent == game or obj.Parent == workspace.Parent) and obj == workspace or obj == game:GetService("Workspace") then
            path = "workspace" .. path
            break
        end

        local siblings = obj.Parent:GetChildren()
        local sameNameCount = 0
        local index = nil

        for i, v in siblings do
            if v.Name == obj.Name then
                sameNameCount = sameNameCount + 1
                if v == obj then
                    index = i
                end
            end
        end

        if sameNameCount > 1 and index and index ~= 1 and not dontGetService then
            path = ":GetChildren()[" .. index .. "]" .. path
        else
            local notInstance = typeof(obj.Parent[obj.Name]) ~= "Instance"
            if not isValidVariableName(obj.Name) or notInstance then
                if notInstance then
                    path = ":FindFirstChild(\"" .. normalize(obj.Name) .. "\")" .. path
                else
                    path = "[\"" .. normalize(obj.Name) .. "\"]"
                end
            else
                path = "." .. obj.Name .. path
            end
        end

        obj = obj.Parent
    end

    if not obj.Parent then
        path = "game" .. path
    end

    return (path:gsub("game:GetService%(\"Workspace\"%)", "workspace"))
end

local http = game:GetService("HttpService")
local tostr
local function convertArg(arg, indent)
    local t = typeof(arg)
    if t == "string" then
        local success, decoded = pcall(http.JSONDecode, http, arg)
        if success and not tonumber(arg) then
            return "game:GetService(\"HttpService\"):JSONEncode(" .. tostr(decoded) .. ")"
        else
            if #arg == 38 and arg:sub(1, 1) == "{" and arg:sub(-1) == "}" and arg:sub(10, 10) == "-" and arg:sub(15, 15) == "-" and arg:sub(20, 20) == "-" and arg:sub(25, 25) == "-" then
                return "game:GetService(\"HttpService\"):GenerateGUID(true) --[[" .. arg .. "]]"
            elseif #arg == 36 and arg:sub(9, 9) == "-" and arg:sub(14, 14) == "-" and arg:sub(19, 19) == "-" and arg:sub(24, 24) == "-" then
                return "game:GetService(\"HttpService\"):GenerateGUID(false) --[[" .. arg .. "]]"
            end
            
            return "\"" .. normalize(arg) .. "\""
        end
    elseif t == "number" then
        if arg == math.huge then
            return "math.huge"
        elseif arg == -math.huge then
            return "-math.huge"
        elseif arg ~= arg then
            return "(0 / 0) -- [[ nan ]]"
        elseif math.abs(tick() - arg) <= 2.5 then
            if math.floor(arg) == arg then
                return "os.time() --[[" .. arg .. "]]"
            else
                return "tick() --[[" .. arg .. "]]"
            end
        elseif math.abs(workspace:GetServerTimeNow() - arg) <= 2.5 then
            return "workspace:GetServerTimeNow() --[[" .. arg .. "]]"
        elseif math.abs(os.clock() - arg) <= 2.5 then
            return "os.clock() --[[" .. arg .. "]]"
        elseif math.abs(time() - arg) <= 2.5 and math.floor(arg) ~= arg then
            return "time() --[[" .. arg .. "]]"
        end
        
        return tostring(arg)
    elseif t == "boolean" or t == "nil" then
        return tostring(arg)
    elseif t == "Color3" then
        local r255 = arg.R * 255
        local g255 = arg.G * 255
        local b255 = arg.B * 255

        if math.abs(r255 - math.floor(r255 + 0.5)) < 1e-6 and math.abs(g255 - math.floor(g255 + 0.5)) < 1e-6 and math.abs(b255 - math.floor(b255 + 0.5)) < 1e-6 then
            return string.format("Color3.fromRGB(%d, %d, %d)", math.round(r255), math.round(g255), math.round(b255))
        else
            return string.format("Color3.new(%f, %f, %f)", arg.R, arg.G, arg.B)
        end
    elseif t == "BrickColor" then
        return "BrickColor.new(\"" .. arg.Name .. "\")"
    elseif t == "UDim" then
        if arg.Scale == 0 and arg.Offset == 0 then
            return "UDim.new()"
        end
        return string.format("UDim.new(%f, %d)", arg.Scale, arg.Offset)
    elseif t == "UDim2" then
        if arg.X.Scale == 0 and arg.X.Offset == 0 and arg.Y.Scale == 0 and arg.Y.Offset == 0 then
            return "UDim2.new()"
        elseif arg.X.Scale == 0 and arg.Y.Scale == 0 then
            return string.format("UDim2.fromOffset(%d, %d)", arg.X.Offset, arg.Y.Offset)
        elseif arg.X.Offset == 0 and arg.Y.Offset == 0 then
            return string.format("UDim2.fromScale(%f, %f)", arg.X.Scale, arg.Y.Scale)
        else
            return string.format("UDim2.new(%f, %d, %f, %d)", arg.X.Scale, arg.X.Offset, arg.Y.Scale, arg.Y.Offset)
        end
    elseif t == "Ray" then
        return "Ray.new(" .. convertArg(arg.Origin, indent) .. ", " .. convertArg(arg.Direction, indent) .. ")"
    elseif t == "EnumItem" then
        return "Enum." .. arg.EnumType.Name .. "." .. arg.Name
    elseif t == "Enum" then
        return "Enum." .. arg.Name
    elseif t == "NumberRange" then
        return string.format("NumberRange.new(%f, %f)", arg.Min, arg.Max)
    elseif t == "NumberSequenceKeypoint" then
        return string.format("NumberSequenceKeypoint.new(%f, %f, %f)", arg.Time, arg.Value, arg.Envelope)
    elseif t == "ColorSequenceKeypoint" then
        return string.format("ColorSequenceKeypoint.new(%f, Color3.new(%f, %f, %f))", arg.Time, arg.Value.R, arg.Value.G, arg.Value.B)
    elseif t == "PhysicalProperties" then
        return string.format("PhysicalProperties.new(%f, %f, %f, %f, %f)", arg.Density, arg.Friction, arg.Elasticity, arg.FrictionWeight, arg.ElasticityWeight)
    elseif t == "Rect" then
        return string.format("Rect.new(Vector2.new(%f, %f), Vector2.new(%f, %f))", arg.Min.X, arg.Min.Y, arg.Max.X, arg.Max.Y)
    elseif t == "Region3" then
        return string.format("Region3.new(Vector3.new(%f, %f, %f), Vector3.new(%f, %f, %f))", arg.CFrame.Position.X, arg.CFrame.Position.Y, arg.CFrame.Position.Z, arg.CFrame.Position.X, arg.CFrame.Position.Y, arg.CFrame.Position.Z)
    elseif t == "Region3int16" then
        return string.format("Region3int16.new(Vector3int16.new(%d, %d, %d), Vector3int16.new(%d, %d, %d))", arg.Min.X, arg.Min.Y, arg.Min.Z, arg.Max.X, arg.Max.Y, arg.Max.Z)
    elseif t == "TweenInfo" then
        return string.format("TweenInfo.new(%f, Enum.EasingStyle.%s, Enum.EasingDirection.%s, %d, %s, %f)", arg.Time, arg.EasingStyle.Name, arg.EasingDirection.Name, arg.RepeatCount, tostring(arg.Reverses), arg.DelayTime)
    elseif t == "function" then
        return "function() end"
    elseif t == "thread" then
        return "coroutine.create(function() --[[ Unable to get content ]] end)"
    elseif t == "userdata" then
        return "newproxy()"
    elseif t == "buffer" then
        local s1 = buffer.tostring(arg)
        local s2 = ""
        local allZeros = true
        
        for i = 1, #s1 do
            local v = s1:sub(i, i)
            local byte = string.byte(v)
            
            if byte ~= 0 then
                allZeros = false
            end
            
            if byte <= 31 or byte >= 127 then
                if byte == 10 then
                    s2 ..= "\\n"
                elseif byte == 13 then
                    s2 ..= "\\r"
                elseif byte == 9 then
                    s2 ..= "\\t"
                else
                    s2 ..= "\\" .. byte
                end
            else
                s2 ..= v:gsub("\"", "\\\"")
            end
        end
        
        if allZeros then
            return "buffer.create(" .. #s1 .. ")"
        end
        
        return "buffer.fromstring(\"" .. s2 .. "\")"
    elseif t == "Instance" then
        return getPath(arg)
    elseif t == "table" then
        return tostr(arg, indent)
    else
        local obj = getfenv()[t]

        if typeof(obj) == "table" and obj.new then
            if pcall(obj.new) and tostring(obj.new()) == tostring(arg) then
                return t .. ".new()"
            end

            return t .. ".new(" .. tostring(arg) .. ")"
        else
            return "--[[ unknown type: " .. t .. "; values: " .. tostring(arg):gsub("%]%]", "] ]") .. " ]]"
        end
    end
end

local function isArray(tbl)
    if typeof(tbl) ~= "table" then
        return false
    end
    
    local isArray = true
    local allValid = true
    local count = 0

    for k in tbl do
        if typeof(k) ~= "number" or math.floor(k) ~= k then
            isArray = false
            break
        end

        count = math.max(count, k)
    end

    if isArray then
        isArray = #tbl == count
        allValid = false

        if isArray then
            for i = 1, count do
                if tbl[i] == nil then
                    isArray = false
                    break
                end
            end
        end
    else
        for k in tbl do
            if typeof(k) ~= "string" or not isValidVariableName(k) then
                allValid = false
                break
            end
        end
    end
    
    return isArray, allValid, count
end

function tostr(tbl, indent)
    indent = indent or 0
    
    local indentStr = string.rep("    ", math.max(indent, 0))
    local indentStrNext = string.rep("    ", math.max(indent, 0) + 1)

    if typeof(tbl) ~= "table" then
        return convertArg(tbl, math.max(indent, 0))
    end

    local isArray, allValid, count = isArray(tbl)

    if isArray then
        if count == 0 then
            return "{ }"
        end

        local result = "{" .. (indent == -1 and "" or " ")
        for i = 1, count do
            result ..= (indent == -1 and "\n" .. indentStrNext or "") .. tostr(tbl[i], math.max(indent, 0) + 1)
            if i < count then
                result ..= ","
            end
            result ..= indent == -1 and "" or " "
        end

        return result .. (indent == -1 and "\n" or "") .. "}"
    else
        local result = "{\n"
        local first = true

        for k, v in tbl do
            if not first then
                result ..= ",\n"
            end

            first = false
            result ..= indentStrNext .. (allValid and k or "[" .. tostr(k, math.max(indent, 0) + 1) .. "]") .. " = " .. tostr(v, math.max(indent, 0) + 1)
        end

        return result .. "\n" .. indentStr .. "}"
    end
end

local function createArgs(tbl)
    local isArray = isArray(tbl)
    local str = tostr(tbl)
    
    if isArray then
        if #tbl == 0 then
            return "()"
        end
        
        return "(" .. str:sub(3):sub(1, #str - 4) .. ")"
    else
        return (("(" .. str .. ")"):gsub("%(nil%)", "()"))
    end
end

return {
    ToString = tostr,
    CreateArguments = createArgs,
    EscapePattern = escapePattern,
    GetPath = getPath
}
    end;

    modules[objects["Instance3"]] = function()
        local script = objects["Instance3"];
local tweenService = game:GetService("TweenService")
local http = game:GetService("HttpService")

local event = Instance.new("BindableEvent", script)
event.Name = "SettingChange"

local metatable

local settings = {
    {"SEPARATOR", "UI Settings"},
    {"Transparent", false, function(state)
        tweenService:Create(script.Parent.Parent.Main, TweenInfo.new(1), {BackgroundTransparency = not state and 0 or metatable.Has_shadow and 0.2 or 0.05}):Play()
    end},
    {"Rounded_corners", false, function(state)
        tweenService:Create(script.Parent.Parent.Main.UICorner, TweenInfo.new(1), {CornerRadius = UDim.new(state and 0.025 or 0.01)}):Play()
    end},
    {"Always_show_side_panel", {1, 1, 3}, function(state, instance)
        if instance then
            instance.Label.Text = state == 1 and "Dynamic side panel" or state == 2 and "Never show side panel" or "Always show side panel"
        end
    end},
    {"Window_scale", {100, 75, 155}},
    {"SEPARATOR", "UI Shadow Settings"},
    {"Has_shadow", true, function(state)
        metatable.Transparent = metatable.Transparent
        tweenService:Create(script.Parent.Parent.Shadow, TweenInfo.new(state and 0.75 or 1.25), {ImageTransparency = state and 0.2 or 1}):Play()
    end},
    {"Shadow_centered", false, function(state)
        script.Parent.Parent.Shadow:TweenPosition(state and UDim2.fromScale(0.5, 0.5) or UDim2.fromScale(0.515, 0.525), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
    end},
    {"SEPARATOR", "Log Settings"},
    {"Log_executor_function_calls", {1, 1, 3}, function(state, instance)
        if instance then
            instance.Label.Text = state == 1 and "Log calls called only by game scripts" or state == 2 and "Log calls called by game & executor scripts" or "Log calls called only by executor scripts"
        end
    end},
    {"Create_arguments_as_variable", false},
    {"Create_event_as_variable", false},
    {"Maximum_log_amount", {10, 0, 20}, function(state, instance)
        if instance then
            instance.Label.Text = "Maximum log amount [ " .. math.max(1, state * 5) .. " ]"
        end
    end},
    {"Decompile_limit", {1, 1, 50}, function(state, instance)
        if instance then
            instance.Label.Text = "Decompile limit [ " .. state .. " / 50 scripts at the same time ]"
        end
    end},
    {"Ignore_spammy_logs", true}
}

local function find(index)
    for _, v in settings do
        if v[1] == index then
            return v
        end
    end
    return nil
end

local files = getfenv().writefile and getfenv().readfile and getfenv().makefolder
metatable = setmetatable({ }, {
    __index = function(self, index)
        index = index:sub(1,1):upper() .. index:sub(2)

        if index == "Values" then
            local vals = { }
            
            for _, v in settings do
                vals[#vals+1] = { v[1], v[2] }
            end
            
            return vals
        elseif index == "Event" or index == "Signal" or index == "Changed" then
            return event.Event
        elseif index == "Find" then
            return find
        else
            local setting = find(index)
            if setting then
                return typeof(setting[2]) == "table" and setting[2][1] or setting[2]
            else
                error("Unable to get value for setting: " .. tostring(index), 0)
            end
        end
    end,
    __newindex = function(self, index, value)
        index = index:sub(1, 1):upper() .. index:sub(2)
        local setting = find(index)
        assert(setting, "Setting not found: " .. tostring(index))
        assert(typeof(value) == typeof(setting[2]) or typeof(value) == "number" and typeof(setting[2]) == "table", ("Type mismatch for setting %s: expected %s got %s"):format(index, typeof(setting[2]), typeof(value)))

        local val = typeof(value) == "table" and value[1] or value

        setting[2] = value
        event:Fire(index, val)

        if setting[3] then
            task.spawn(setting[3], val, setting[4])
        end
        
        local auto = find("Auto_load_settings")
        if auto and auto[2] then
            if files then
                local saveFile = { }
                for _, v in self.Values do
                    local i = v[1]
                    local v = v[2]

                    if i ~= "SEPARATOR" then
                        saveFile[i] = v
                    end
                end

                task.spawn(getfenv().writefile, "CDT/Settings.json", http:JSONEncode(saveFile))
            end
        end
    end
})

if files then
    getfenv().makefolder("CDT")
    getfenv().writefile("CDT/CSpy.txt", "Yeah, If you wonder what CDT is, it is CSpy")

    table.insert(settings, 1, {"Auto_load_settings", false, function(state)
        task.spawn(getfenv().writefile, "CDT/Settings.bool", state and "1" or "0")

        if state then
            local success, json = pcall(getfenv().readfile, "CDT/Settings.json")
            if success then
                for index, value in http:JSONDecode(json) do
                    if index ~= "Auto_load_settings" then
                        metatable[index] = typeof(value) == "table" and value[1] or value
                    end
                end
            end
        end
    end})
    
    table.insert(settings, 1, {"SEPARATOR", "Saves"})
    
    local success, value = pcall(getfenv().readfile, "CDT/Settings.bool")
    if success then
        task.delay(5, function()
            metatable.Auto_load_settings = value == "1"
        end)
    end
end

return metatable
    end;

    modules[objects["Instance4"]] = function()
        local script = objects["Instance4"];
local global = typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G -- I never made normal require in my plugin, so thats a reason why I made that
local idx = "__CSpyShared"

if global[idx] then
    return global[idx]
end

local useEnv = getfenv().getgenv ~= nil
if useEnv then
    local found = {
        ["print"] = false,
        ["getgenv"] = false,
        ["vector"] = false,
        ["error"] = false,
        ["loadstring"] = false
    }

    for i, _ in getfenv().getgenv() do
        if typeof(found[i]) ~= "nil" then
            found[i] = true
        end
    end

    for _, v in found do
        if not v then
            useEnv = false
            break
        end
    end
end

local function pressKey(isDown, key)
    game:GetService("VirtualInputManager"):SendKeyEvent(isDown, Enum.KeyCode[key], false, game)
    for i=1, 2 do game:GetService("RunService").RenderStepped:Wait() end
end

local shared = {
    Version = "BETA",
    Connections = { },
    SidePanelEvent = Instance.new("BindableEvent", script),
    Settings = require(script.Parent.Settings),
    CodeBox = require(script.Parent.CodeBox),
    Global = global,
    _idx = idx,
    UseEnv = useEnv and getfenv().getgenv,
    OnCloseEvent = Instance.new("BindableEvent", script),
    ToString = require(script.Parent.ToString),
    CSpyObjects = { },
    AddObject = function(self, tbl)
        if (typeof(tbl) == "table" or typeof(tbl) == "function") and not self:IsCSpy(tbl) then
            table.insert(self.CSpyObjects, tbl)
            if typeof(tbl) == "table" then
                for i, v in tbl do
                    self:AddObject(i) -- who knows, mb "i" is not a number or string
                    self:AddObject(v)
                end
            end
        end
        
        return tbl
    end,
    Clipboard = getfenv().toclipboard or getfenv().setclipboard or function(text)
        local ui = Instance.new("ScreenGui", game:GetService("CoreGui"))
        task.delay(1, ui.Destroy, ui)
        
        local tb = Instance.new("TextBox", ui)
        tb.Size = UDim2.fromOffset(1, 1)
        tb.BackgroundTransparency = 1
        tb.TextTransparency = 1
        tb.Text = text
        
        tb:CaptureFocus()

        for i=1, 2 do game:GetService("RunService").RenderStepped:Wait() end
        pressKey(true, "LeftControl")
        pressKey(true, "A")
        pressKey(false, "A")
        pressKey(true, "C")
        pressKey(false, "C")
        pressKey(false, "LeftControl")
        
        tb:ReleaseFocus()
    end,
    IsCSpy = function(self, obj)
        return table.find(self.CSpyObjects, obj)
    end,
    AddButton = function(self, button)
        local cont = button.Contents
        local source = cont.BackgroundTransparency
        local In = false

        button.MouseEnter:Connect(function()
            In = true
            cont.BackgroundTransparency = source + 0.025
        end)
        button.MouseLeave:Connect(function()
            In = false
            cont.BackgroundTransparency = source
        end)
        button.MouseButton1Down:Connect(function()
            cont.BackgroundTransparency = source - 0.05
        end)
        button.MouseButton1Up:Connect(function()
            cont.BackgroundTransparency = source + (In and 0.025 or 0)
        end)
        
        return button
    end
}

shared:AddObject(shared.Connections)
shared:AddObject(shared.Settings)
shared:AddObject(shared.ToString)
shared:AddObject(shared.CodeBox)
shared:AddObject(shared.CSpyObjects)

shared.HookFunction = require(script.Parent.HookFunction)(shared)
shared.SidePanelEvent.Name = "SidePanel"
shared.OnCloseEvent.Name = "OnClose"

global[idx] = shared

return shared
    end;

    modules[objects["Instance10"]] = function()
        local script = objects["Instance10"];
return function(shared, page)
    local cons = shared.Connections
    local hooks = shared.HookFunction -- custom safe hooks
    local settings = shared.Settings
    
    local codeBox = shared.CodeBox(page.Contents.To.TextBox, shared.UseEnv)
    codeBox.Text = "Welcome to Ketamine - Remote Spy!\n-- Waiting for Remotes --"

    local logExample = page.Contents.To.Logs.Log
    logExample.Parent = page
    logExample.Visible = false

    page.Contents.From.Logs.Log:Destroy()

    local hooksAvailable = type(getfenv().hookmetamethod) == "function"
        and type(getfenv().hookfunction) == "function"
        and type(getfenv().getnamecallmethod) == "function"
    
    if not hooksAvailable then
        codeBox.Text = "Welcome to CSpy - Remote Spy!\n-- Waiting for Remotes --\n\n--[[\n    Why Outcoming mode is unavailable?\n\n    -- -- -- -- --\n\n    Your executor is missing one or more of these functions:\n    hookmetamethod, hookfunction, getnamecallmethod\n]]--"
    end

    local ptype = hooksAvailable -- true
    local function update()
        page.Contents.From.Visible = not ptype
        page.Contents.To.Visible = ptype
        page.Buttons.From.BackgroundTransparency = ptype and 1 or 0.95
        page.Buttons.To.BackgroundTransparency = ptype and 0.95 or 1
        codeBox.Parent = page.Contents[ptype and "To" or "From"]
    end

    update()

    local logStack = shared:AddObject({ })
    local logs = shared:AddObject({
        From = shared:AddObject({ }),
        To = shared:AddObject({ })
    })

    local function append(list, ...)
        for i = 1, select("#", ...) do
            list[i] = select(i, ...) or false
        end
    end

    local stack = shared:AddObject({ })
    local function pop()
        table.clear(stack)

        for i = 1, 6 do
            table.insert(stack, logStack[1])
            table.remove(logStack, 1)
        end

        return unpack(stack)
    end

    local order = ((2 ^ 31) - 1)
    local selection = shared:AddObject({ })
    local ignore = shared:AddObject({ })
    local block = shared:AddObject({ })
    local hookArgs = shared:AddObject({ })
    local logSpeed = shared:AddObject({ })
    local limit = 4
    
    local function appendLog() -- never call that function inside the hooked function, because it will lack capabilities and cause an error
        if #logStack == 0 then return end

        local success, name, event, from, args, caller, got = pcall(pop)
        if not success or ignore[event.Name] or ignore[event] or settings.Ignore_spammy_logs and ((tonumber(logSpeed[event]) or 0) > limit or (tonumber(logSpeed[event.Name]) or 0) > limit) then return end
        local n = event.Name

        logSpeed[event] = (tonumber(logSpeed[event]) or 0) + 1
        logSpeed[n] = (tonumber(logSpeed[event]) or 0) + 1

        local log = shared:AddButton(logExample:Clone())
        local s = from and "From" or "To"

        table.insert(logs[s], 1, log)
        while #logs[s] > math.max(settings.Maximum_log_amount * 5, 1) do
            local log = table.remove(logs[s], #logs[s])
            log:Destroy()
        end
        
        local sArgs = "-- Failed to convert arguments to string (somehow)"
        local path = shared.ToString.ToString(event)
        
        if not settings.Create_arguments_as_variable then
            if not from then
                sArgs = "-- " .. event.ClassName .. "\n\n" .. (event:IsA("RemoteFunction") and "local result = " .. path .. ":InvokeServer" or path .. ":FireServer") .. shared.ToString.CreateArguments(args)
            else
                local createdArgs = shared.ToString.CreateArguments(args)
                sArgs = "-- " .. event.ClassName .. "\n\n" .. (event:IsA("RemoteFunction") and "getcallbackvalue(" .. path .. ", \"OnClientInvoke\")" .. shared.ToString.CreateArguments(args) or "firesignal(" .. path .. ".OnClientEvent, "  .. (createdArgs ~= "()" and createdArgs:sub(2) or "nil)"))
            end
        else
            if not from then
                sArgs = "-- " .. event.ClassName .. "\n\nlocal args = " .. shared.ToString.ToString(args, -1) .. "\n\n" .. (event:IsA("RemoteFunction") and "local result = " .. path .. ":InvokeServer" or path .. ":FireServer") .. "(unpack(args))"
            else
                sArgs = "-- " .. event.ClassName .. "\n\nlocal args = " .. shared.ToString.ToString(args, -1) .. "\n\n" .. (event:IsA("RemoteFunction") and "getcallbackvalue(" .. path .. ", \"OnClientInvoke\")(unpack(args))" or "firesignal(" .. path .. ".OnClientEvent, unpack(args))")
            end
        end
        
        local eArgs, changes = sArgs:gsub(shared.ToString.EscapePattern("game:GetService(\"HttpService\")"), "http")
        if changes >= 2 then
            local split = eArgs:split("\n")
            table.insert(split, 3, "local http = game:GetService(\"HttpService\")")
            
            sArgs = table.concat(split, "\n")
        end
        
        if settings.Create_event_as_variable then
            local split = sArgs:gsub(shared.ToString.EscapePattern(path), "object"):split("\n")
            table.insert(split, 3, "local object = " .. path)

            sArgs = table.concat(split, "\n")
        end

        log.Parent = page.Contents[s].Logs
        log.Visible = true
        log.LayoutOrder = order
        log.Contents.Frame.BackgroundColor3 = event:IsA("RemoteFunction") and Color3.fromRGB(170, 85, 255) or event:IsA("UnreliableRemoteEvent") and Color3.fromRGB(255, 85) or Color3.fromRGB(255, 170)
        log.Contents.Label.Text = name
        log.Contents.Label.TextColor3 = Color3.new(1, 1, 1):Lerp(Color3.new(0.8), (block[event] or block[event.Name]) and (not from or event:IsA("RemoteFunction")) and 0.2 or 0):Lerp(Color3.new(0, 0.8, 0.4), hookArgs[event] or hookArgs[event.Name] and 0.2 or 0)
        cons[#cons + 1] = log.MouseButton1Click:Connect(function()
            for _, log in logs[s] do
                if log and log.Parent then
                    log.Contents.Selection.BackgroundTransparency = 1
                end
            end
            
            log.Contents.Selection.BackgroundTransparency = 0.9
            
            selection[1] = event
            selection[2] = from
            selection[3] = args
            selection[4] = got
            selection[5] = caller

            print(selection[5])
            
            codeBox.Text = sArgs
        end)
        
        order -= 1

        if event:IsA("RemoteFunction") then
            while log.Parent and got and not got[1] do task.wait() end
            if got and got[1] then
                sArgs ..= "\n-- Got:\n--[[" .. shared.ToString.ToString(got[1]) .. "]]--" or ""
            end
        end
    end
    
    task.spawn(function()
        while task.wait(5) do
            for i in logSpeed do
                logSpeed[i] = 0
            end
        end
    end)

    cons[#cons + 1] = game:GetService("RunService").RenderStepped:Connect(function()
        while #logStack > 0 do
            task.spawn(appendLog)
        end
    end)

    local function addLogToStack(event, from, args, caller, got)
        local name = event.Name or tostring(event)
        if #name > 13 then
            name = name:sub(1, 11) .. "..."
        end

        append(logStack, name, event, from, args, caller or false, got or false)
    end
    
    local checkcaller = getfenv().checkcaller or function()
        return true
    end

    local caller
    local getcaller = getfenv().getcallingscript
    
    local function callcheck()
        local caller = checkcaller()
        if settings.Log_executor_function_calls == 1 and not caller or settings.Log_executor_function_calls == 2 or settings.Log_executor_function_calls == 3 and caller then
            return true
        end

        return false
    end
    
    task.spawn(function()
        local setUp = shared:AddObject({ })
        local getcb = getfenv().getcallbackvalue

        local function setup(instance: Instance)
            if not instance or setUp[instance] then return end
            setUp[instance] = true
            
            if instance:IsA("RemoteEvent") or instance:IsA("UnreliableRemoteEvent") then
                cons[#cons + 1] = instance.OnClientEvent:Connect(function(...)
                    if settings.Log_executor_function_calls <= 2 then
                        addLogToStack(instance, true, shared:AddObject({ ... }), nil, nil)
                    end
                end)
            elseif instance:IsA("RemoteFunction") and getcb then
                local success, value = pcall(getcb, instance, "OnClientInvoke")
                if success and typeof(value) == "function" then
                    hooks.HookFunction(value, function(old, ...)
                        if settings.Log_executor_function_calls <= 2 then
                            local got = shared:AddObject({ })
                            
                            addLogToStack(instance, true, shared:AddObject({ ... }), nil, got)
                            append(got, { old(...) })

                            return unpack(got[1])
                        else
                            return old(...)
                        end
                    end)
                end
            end
        end

        if getfenv().getinstances then
            for _, v in getfenv().getinstances() do
                task.spawn(setup, v)
            end
        end
        if getfenv().getnilinstances then
            for _, v in getfenv().getnilinstances() do
                task.spawn(setup, v)
            end
        end
        
        for _, v in game:GetDescendants() do
            task.spawn(setup, v)
        end
        cons[#cons + 1] = game.DescendantAdded:Connect(setup)
    end)

    if hooksAvailable then
        cons[#cons + 1] = page.Buttons.From.MouseButton1Click:Connect(function()
            ptype = false
            update()
        end)
        cons[#cons + 1] = page.Buttons.To.MouseButton1Click:Connect(function()
            ptype = true
            update()
        end)

        task.spawn(function()
            local fireServer = hooks.HookFunction(Instance.new("RemoteEvent").FireServer, function(old, self, ...)
                local cllr = caller
                caller = nil
                
                if typeof(self) ~= "Instance" or self.ClassName ~= "RemoteEvent" then
                    return old(self, ...)
                end
                
                local args = shared:AddObject({ ... })
                local newArgs = hookArgs[self] or hookArgs[self.Name]
                if newArgs then
                    local max = 0
                    for idx, val in newArgs do
                        args[idx] = val
                    end
                end

                if callcheck() then
                    addLogToStack(self, false, args, cllr or getcaller(), nil)
                end; if block[self] or block[self.Name] then return end

                return old(self, unpack(args))
            end)

            local fireServer2 = hooks.HookFunction(Instance.new("UnreliableRemoteEvent").FireServer, function(old, self, ...)
                local cllr = caller
                caller = nil

                if typeof(self) ~= "Instance" or self.ClassName ~= "UnreliableRemoteEvent" then
                    return old(self, ...)
                end
                
                local args = shared:AddObject({ ... })
                local newArgs = hookArgs[self] or hookArgs[self.Name]
                if newArgs then
                    local max = 0
                    for idx, val in newArgs do
                        args[idx] = val
                    end
                end

                if callcheck() then
                    addLogToStack(self, false, cllr or getcaller(), args, nil)
                end; if block[self] or block[self.Name] then return end

                return old(self, unpack(args))
            end)

            local invokeServer = hooks.HookFunction(Instance.new("RemoteFunction").InvokeServer, function(old, self, ...)
                local cllr = caller
                caller = nil

                if typeof(self) ~= "Instance" or self.ClassName ~= "RemoteFunction" then
                    return old(self, ...)
                end

                local args = shared:AddObject({ ... })
                local newArgs = hookArgs[self] or hookArgs[self.Name]
                if newArgs then
                    local max = 0
                    for idx, val in newArgs do
                        args[idx] = val
                    end
                end

                if not block[self] and not block[self.Name] then
                    local got = shared:AddObject({ })
                    if callcheck() then
                        addLogToStack(self, false, cllr or getcaller(), args, got)
                    end

                    append(got, { old(self, unpack(args)) })
                    
                    return unpack(got[1])
                else
                    if callcheck() then
                        addLogToStack(self, false, cllr or getcaller(), args, nil)
                    end
                end
            end)
            
            local getnamecall = getfenv().getnamecallmethod
            hooks.HookMetaMethod("__namecall", function(old, self, ...)
                if typeof(self) ~= "Instance" then
                    return old(self, ...)
                end
                
                local method = getnamecall()
                method = method:sub(1, 1):upper() .. method:sub(2)
                
                if getcaller then
                    caller = getcaller()
                end
                
                if method == "FireServer" and self.ClassName == "RemoteEvent" then
                    return fireServer(self, ...)
                elseif method == "FireServer" and self.ClassName == "UnreliableRemoteEvent" then
                    return fireServer2(self, ...)
                elseif method == "InvokeServer" and self.ClassName == "RemoteFunction" then
                    return invokeServer(self, ...)
                end
                
                return old(self, ...)
            end)
        end)
    else
        page.Buttons.To.Label.Text = "Outcoming [Unavailable]"
    end
    
    local button = page.Contents.Buttons.Button
    button.Visible = false
    
    local function addButton(text, callback)
        local button = button:Clone()
        button.Parent = page.Contents.Buttons
        button.Visible = true
        button.Name = text
        
        if typeof(text) == "string" and text ~= "" then
            shared:AddButton(button)

            button.Separator:Destroy()
            button.Contents.Label.Text = text
            cons[#cons + 1] = button.MouseButton1Click:Connect(function()
                callback(button)
            end)
        else
            button.Contents:Destroy()
            button.Separator.Visible = true
        end
        
        return button
    end
    
    local clipboard = shared.Clipboard
    addButton("Copy code to clipboard", function()
        clipboard(codeBox.Text)
    end)
    addButton("Copy path to clipboard", function()
        if selection[1] then
            clipboard(shared.ToString.ToString(selection[1]))
        end
    end)
    addButton("Copy args to clipboard", function()
        if selection[1] then
            clipboard(shared.ToString.ToString(selection[3]))
        end
    end)
    addButton("Copy result to clipboard", function()
        if selection[4] and selection[4][1] then
            clipboard(shared.ToString.ToString(selection[4][1]))
        end
    end)
    addButton("Copy caller to clipboard", function()
        if selection[5] then
            clipboard(shared.ToString.ToString(selection[5]))
        end
    end)
    addButton("Run code", function()
        if selection[1] then
            if not selection[2] then
                if selection[1]:IsA("RemoteFunction") then
                    selection[1]:InvokeServer(unpack(selection[3]))
                else
                    selection[1]:FireServer(unpack(selection[3]))
                end
            else
                if selection[1]:IsA("RemoteFunction") then
                    getfenv().getcallbackvalue(selection[1], "OnClientInvoke")(unpack(selection[3]))
                else
                    getfenv().firesignal(selection[1].OnClientEvent, unpack(selection[3]))
                end
            end
        end
    end)

    addButton("Block remote [Object]", function()
        if selection[1] then
            block[selection[1]] = true
        end
    end)
    addButton("Block remote [Name]", function()
        if selection[1] then
            block[selection[1].Name] = true
        end
    end)
    
    addButton("Clear logs", function()
        for _, log in logs.From do
            log:Destroy()
        end

        for _, log in logs.To do
            log:Destroy()
        end

        table.clear(logs.From)        
        table.clear(logs.To)
    end)

    addButton("Ignore remote [Object]", function()
        if selection[1] then
            ignore[selection[1]] = true
        end
    end)
    addButton("Ignore remote [Name]", function()
        if selection[1] then
            ignore[selection[1].Name] = true
        end
    end)

    addButton("Decompile", function()
        if selection[5] then
            codeBox.Text = "local script = " .. shared.ToString.ToString(selection[5]) .. "\n" .. getfenv().decompile(selection[5])
        end
    end)
    
    local hooking = shared:AddObject({ false })
    addButton("Hook args [Object]", function(button)
        if hooking[1] and hooking[1] ~= button.Name then return end

        if not hooking[1] and selection[1] then
            hooking[1] = button.Name
            hooking[2] = selection[1]
            hooking[3] = codeBox.Text

            button.Contents.Label.Text = "HOOK"
            codeBox.Text = "return " .. shared.ToString.ToString(selection[3], -1)
        elseif hooking[1] then
            button.Contents.Label.Text = button.Name

            local su, func = pcall(loadstring, codeBox.Text)
            if su then
                local s, hookedResult = pcall(func)
                if typeof(hookedResult) == "table" then
                    hookArgs[hooking[2]] = hookedResult
                else
                    hookArgs[hooking[2]] = nil
                end
            else
                hookArgs[hooking[2]] = nil
            end

            codeBox.Text = hooking[3]

            hooking[1] = false
            hooking[2] = nil
            hooking[3] = nil
        end
    end)
    
    addButton("Hook args [Name]", function(button)
        if hooking[1] and hooking[1] ~= button.Name then return end
        
        if not hooking[1] and selection[1] then
            hooking[1] = button.Name
            hooking[2] = selection[1]
            hooking[3] = codeBox.Text
            
            button.Contents.Label.Text = "HOOK"
            codeBox.Text = "return " .. shared.ToString.ToString(selection[3], -1)
        elseif hooking[1] then
            button.Contents.Label.Text = button.Name
            
            local su, func = pcall(loadstring, codeBox.Text)
            if su then
                local s, hookedResult = pcall(func)
                if typeof(hookedResult) == "table" then
                    hookArgs[hooking[2].Name] = hookedResult
                else
                    hookArgs[hooking[2].Name] = nil
                end
            else
                hookArgs[hooking[2].Name] = nil
            end
            
            codeBox.Text = hooking[3]

            hooking[1] = false
            hooking[2] = nil
            hooking[3] = nil
        end
    end)

    addButton("return nil = unhook", pcall)
end
    end;

    modules[objects["Instance13"]] = function()
        local script = objects["Instance13"];
return function(shared, page)
    local cons = shared.Connections
    local hooks = shared.HookFunction -- custom safe hooks
    local settings = shared.Settings

    local codeBox = shared.CodeBox(page.Contents.View.Editor.TextBox, shared.UseEnv)
    codeBox.Text = ""

    local gsbc = getfenv().getscriptbytecode or function(scr)
        return "\0"
    end

    local badDecompile = function(scr)
        return-- scr.Name .. " " ..
            "-- \"decompile\" does not exist or failed"
    end

    local _decompile = getfenv().decompile or badDecompile
    local decompiling = 0
    
    local decompile = function(scr)
        while task.wait() do
            if decompiling <= settings.Decompile_limit then
                decompiling += 1
                local decompiled = _decompile(scr)
                decompiling -= 1
                
                return decompiled
            end
        end
    end

    local decompiled = { }
    local scripts, decompil = 1, 0

    local stuff = {
        ModuleScript = {
            Color3.fromRGB(165, 105, 255),
            "rbxassetid://72574623675660"
        },

        LocalScript = {
            Color3.fromRGB(43, 177, 255),
            "rbxassetid://120549633847891"
        }
    }

    local log = page.Contents.View.ScanResults.List.Log

    local path
    local logs = { }

    local function keywordScan(scr, keywords)
        local _path = scr:IsDescendantOf(game) and "game." .. scr:GetFullName() or "(nil)[\"" .. scr.Name:gsub("\"", "\\\"") .. "\")"
        local src = _path .. "\n" .. decompiled[scr]:lower()
        local matches = 0

        for _, keyword in keywords do
            matches += (#src:split(keyword)) - 1
        end

        if matches > 0 then
            local tbl = (stuff[scr.ClassName] or stuff.LocalScript)
            local log = shared:AddButton(log:Clone())
            log.Parent = page.Contents.View.ScanResults.List
            log.Visible = true
            log.Contents.ScriptName.Text = scr.Name
            log.Contents.ScriptPath.Text = _path
            log.Contents.Matches.Text = matches
            log.LayoutOrder = matches
            log.Contents.Matches.TextColor3 = tbl[1]
            log.Contents.Icon.Image = tbl[2]
            logs[#logs + 1] = log

            cons[#cons + 1] = log.MouseButton1Click:Connect(function()
                page.Contents.View.ScanResults.Visible = false
                page.Contents.View.Editor.Visible = true

                codeBox.Text = decompiled[scr]
                path = _path
            end)

            cons[#cons + 1] = scr.Destroying:Connect(function()
                table.remove(logs, table.find(logs, log))
                log:Destroy()
            end)
        end
    end

    task.spawn(function()
        local function dec(scr)
            if (game:GetService("CoreGui") and not scr:IsDescendantOf(game:GetService("CoreGui")) and not scr:IsDescendantOf(game:GetService("CorePackages")) or not game:GetService("CoreGui")) and (scr:IsA("LocalScript") or scr:IsA("ModuleScript") or scr:IsA("Script") and scr.RunContext == Enum.RunContext.Client) and not decompiled[scr] and #gsbc(scr) ~= 0 then
                scripts += 1
                local decompi = decompile(scr)
                decompiled[scr] = decompi
                decompil += 1

                local text = page.Contents.SearchBar.Field.TextBox.Text:lower()

                if text:gsub(" ", ""):gsub("\t", ""):gsub("\r", ""):gsub("\n", "") ~= "" then
                    keywordScan(scr, text:gsub("; ", ";"):split(";"))
                end
            end
        end

        local started = false
        local function start()
            if started then return end
            started = true
            
            task.spawn(function()
                while scripts ~= decompil do
                    local max = math.max(#tostring(scripts), #tostring(decompil))
                    page.Loading.TextLabel.Text = "[ " .. string.format("%0" .. max .. "d", scripts) .. " / " .. string.format("%0" .. max .. "d", decompil) .. " ] The tool is loading..."
                    page.Loading.CanvasGroup.Frame.Position = UDim2.fromScale((decompil / scripts) - 1, 0)

                    task.wait()
                end

                page.Loading:TweenPosition(UDim2.fromScale(0, 1), nil, nil, 1, true)
                page.Contents:TweenSize(UDim2.fromScale(1, 1), nil, nil, 1, true)

                task.wait(1)

                page.Loading:Destroy()
            end)

            page.Loading.Start.Visible = false
            page.Loading.TextLabel.Visible = true
            page.Loading.CanvasGroup.Visible = true
            
            for i, v in (getfenv().getnilinstances and getfenv().getnilinstances() or { }) do
                task.spawn(dec, v)

                if i % 350 == 0 then
                    task.wait()
                end
            end

            for i, v in (getfenv().getinstances and getfenv().getinstances() or { }) do
                task.spawn(dec, v)

                if i % 350 == 0 then
                    task.wait()
                end
            end

            for i, v in game:GetDescendants() do
                task.spawn(dec, v)

                if i % 350 == 0 then
                    task.wait()
                end
            end

            cons[#cons + 1] = game.DescendantAdded:Connect(dec)

            task.wait(2.5)

            decompil += 1
        end
        
        page.Loading.Start.MouseButton1Click:Connect(start)
    end)

    local clipboard = shared.Clipboard

    cons[#cons + 1] = page.Contents.View.Editor.Back.MouseButton1Click:Connect(function()
        page.Contents.View.ScanResults.Visible = true
        page.Contents.View.Editor.Visible = false
    end)

    cons[#cons + 1] = page.Contents.View.Editor.CopyPath.MouseButton1Click:Connect(function()
        clipboard(path)
    end)

    cons[#cons + 1] = page.Contents.View.Editor.CopyCode.MouseButton1Click:Connect(function()
        clipboard(codeBox.Text)
    end)

    cons[#cons + 1] = page.Contents.SearchBar.Field.TextBox.FocusLost:Connect(function()
        local text = page.Contents.SearchBar.Field.TextBox.Text:lower()

        for _, v in logs do
            v:Destroy()
        end

        table.clear(logs)

        if text:gsub(" ", ""):gsub("\t", ""):gsub("\r", ""):gsub("\n", "") ~= "" then
            local keywords = text:gsub("; ", ";"):split(";")
            for scr in decompiled do
                keywordScan(scr, keywords)
            end
        end
    end)
end
    end;

    modules[objects["Instance11"]] = function()
        local script = objects["Instance11"];
return function(shared, page)
    local ui = page:FindFirstAncestorOfClass("ScreenGui")
    local cons = shared.Connections
    local hooks = shared.HookFunction -- custom safe hooks
    local settings = shared.Settings
    
    local codeBox = shared.CodeBox(page.TextBox, shared.UseEnv)
    codeBox.Text = "Welcome to Ketamine - Event Spy!\n-- Waiting for Bindables --"

    local logExample = page.Logs.Log
    logExample.Parent = page
    logExample.Visible = false


    local hooksAvailable = type(getfenv().hookmetamethod) == "function"
        and type(getfenv().hookfunction) == "function"
        and type(getfenv().getnamecallmethod) == "function"

    local logStack = shared:AddObject({ })
    local function append(list, ...)
        for i = 1, select("#", ...) do
            list[i] = select(i, ...) or false
        end
    end

    local stack = shared:AddObject({ })
    local function pop()
        table.clear(stack)

        for i = 1, 5 do
            table.insert(stack, logStack[1])
            table.remove(logStack, 1)
        end

        return unpack(stack)
    end

    local order = ((2 ^ 31) - 1)
    local selection = shared:AddObject({ })
    local ignore = shared:AddObject({ })
    local block = shared:AddObject({ })
    local hookArgs = shared:AddObject({ })
    local logSpeed = shared:AddObject({ })
    local logs = shared:AddObject({ })
    local limit = 4
    
    local function appendLog() -- never call that function inside the hooked function, because it will lack capabilities and cause an error
        if #logStack == 0 then return end

        local success, name, event, args, caller, got = pcall(pop)
        if not success or ignore[event.Name] or ignore[event] or settings.Ignore_spammy_logs and ((tonumber(logSpeed[event]) or 0) > limit or (tonumber(logSpeed[event.Name]) or 0) > limit) then return end
        local n = event.Name

        logSpeed[event] = (tonumber(logSpeed[event]) or 0) + 1
        logSpeed[n] = (tonumber(logSpeed[event]) or 0) + 1

        local log = shared:AddButton(logExample:Clone())

        table.insert(logs, 1, log)
        while #logs > math.max(settings.Maximum_log_amount * 5, 1) do
            local log = table.remove(logs, #logs)
            log:Destroy()
        end
        
        local sArgs = "-- Failed to convert arguments to string (somehow)"
        local path = shared.ToString.ToString(event)
        
        if not settings.Create_arguments_as_variable then
            sArgs = "-- " .. event.ClassName .. "\n\n" .. (event:IsA("BindableFunction") and "local result = " .. path .. ":Invoke" or path .. ":Fire") .. shared.ToString.CreateArguments(args)
        else
            sArgs = "-- " .. event.ClassName .. "\n\nlocal args = " .. shared.ToString.ToString(args, -1) .. "\n\n" .. (event:IsA("BindableFunction") and "local result = " .. path .. ":Invoke" or path .. ":Fire") .. "(unpack(args))"
        end
        
        local eArgs, changes = sArgs:gsub(shared.ToString.EscapePattern("game:GetService(\"HttpService\")"), "http")
        if changes >= 2 then
            local split = eArgs:split("\n")
            table.insert(split, 3, "local http = game:GetService(\"HttpService\")")
            
            sArgs = table.concat(split, "\n")
        end
        
        if settings.Create_event_as_variable then
            local split = sArgs:gsub(shared.ToString.EscapePattern(path), "object"):split("\n")
            table.insert(split, 3, "local object = " .. path)

            sArgs = table.concat(split, "\n")
        end

        log.Parent = page.Logs
        log.Visible = true
        log.LayoutOrder = order
        log.Contents.Frame.BackgroundColor3 = event:IsA("BindalbeFunction") and Color3.fromRGB(170, 85, 255) or Color3.fromRGB(255, 200)
        log.Contents.Label.Text = name
        log.Contents.Label.TextColor3 = Color3.new(1, 1, 1):Lerp(Color3.new(0.8), (block[event] or block[event.Name]) and event:IsA("BindableFunction") and 0.2 or 0):Lerp(Color3.new(0, 0.8, 0.4), hookArgs[event] or hookArgs[event.Name] and 0.2 or 0)
        cons[#cons + 1] = log.MouseButton1Click:Connect(function()
            for _, log in logs do
                if log and log.Parent then
                    log.Contents.Selection.BackgroundTransparency = 1
                end
            end
            
            log.Contents.Selection.BackgroundTransparency = 0.9
            
            selection[1] = event
            selection[2] = args
            selection[3] = got
            selection[4] = caller
            
            print(selection[4])
            
            codeBox.Text = sArgs
        end)
        
        order -= 1
        
        if event:IsA("BindableFunction") then
            while log.Parent and got and not got[1] do task.wait() end
            if got and got[1] then
                sArgs ..= "\n-- Got:\n--[[" .. shared.ToString.ToString(got[1]) .. "]]--" or ""
            end
        end
    end
    
    task.spawn(function()
        while task.wait(5) do
            for i in logSpeed do
                logSpeed[i] = 0
            end
        end
    end)

    cons[#cons + 1] = game:GetService("RunService").RenderStepped:Connect(function()
        while #logStack > 0 do
            task.spawn(appendLog)
        end
    end)

    local function addLogToStack(event, args, caller, got)
        local name = event.Name or tostring(event)
        if #name > 13 then
            name = name:sub(1, 11) .. "..."
        end

        append(logStack, name, event, args, caller or false, got or false)
    end
    
    local checkcaller = getfenv().checkcaller or function()
        return true
    end

    local caller
    local getcaller = getfenv().getcallingscript
    
    local function callcheck()
        local caller = checkcaller()
        if settings.Log_executor_function_calls == 1 and not caller or settings.Log_executor_function_calls == 2 or settings.Log_executor_function_calls == 3 and caller then
            return true
        end

        return false
    end

    if hooksAvailable then
        task.spawn(function()
            local fire = hooks.HookFunction(Instance.new("BindableEvent").Fire, function(old, self, ...)
                local cllr = caller
                caller = nil
                
                if typeof(self) ~= "Instance" or self.ClassName ~= "BindableEvent" then
                    return old(self, ...)
                end
                
                local args = shared:AddObject({ ... })
                local newArgs = hookArgs[self] or hookArgs[self.Name]
                if newArgs then
                    local max = 0
                    for idx, val in newArgs do
                        args[idx] = val
                    end
                end

                if callcheck() then
                    addLogToStack(self, args, cllr or getcaller(), nil)
                end; if block[self] or block[self.Name] then return end

                return old(self, unpack(args))
            end)

            local invoke = hooks.HookFunction(Instance.new("BindableFunction").Invoke, function(old, self, ...)
                local cllr = caller
                caller = nil

                if typeof(self) ~= "Instance" or self.ClassName ~= "BindableFunction" then
                    return old(self, ...)
                end

                local args = shared:AddObject({ ... })
                local newArgs = hookArgs[self] or hookArgs[self.Name]
                if newArgs then
                    local max = 0
                    for idx, val in newArgs do
                        args[idx] = val
                    end
                end

                if not block[self] and not block[self.Name] then
                    local got = shared:AddObject({ })
                    if callcheck() then
                        addLogToStack(self, cllr or getcaller(), args, got)
                    end

                    append(got, { old(self, unpack(args)) })
                    
                    return unpack(got[1])
                else
                    if callcheck() then
                        addLogToStack(self, cllr or getcaller(), args, nil)
                    end
                end
            end)
            
            local getnamecall = getfenv().getnamecallmethod
            hooks.HookMetaMethod("__namecall", function(old, self, ...)
                if typeof(self) ~= "Instance" then
                    return old(self, ...)
                end
                
                local method = getnamecall():gsub("\0", "")
                method = method:sub(1, 1):upper() .. method:sub(2)
                
                if getcaller then
                    caller = getcaller()
                end
                
                if method == "Fire" and self.ClassName == "BindableEvent" then
                    return fire(self, ...)
                elseif method == "Invoke" and self.ClassName == "BindableFunction" then
                    return invoke(self, ...)
                end
                
                return old(self, ...)
            end)
        end)
    else
        task.spawn(function()
            local setUp = shared:AddObject({ })
            local getcb = getfenv().getcallbackvalue

            local function setup(instance: Instance)
                if not instance or setUp[instance] then return end
                setUp[instance] = true

                if instance:IsA("BindableEvent") then
                    cons[#cons + 1] = instance.Event:Connect(function(...)
                        if settings.Log_executor_function_calls == 2 or instance:IsDescendantOf(ui) and settings.Log_executor_function_calls == 3 or not instance:IsDescendantOf(ui) and settings.Log_executor_function_calls == 1 then
                            addLogToStack(instance, shared:AddObject({ ... }), nil, nil)
                        end
                    end)
                elseif instance:IsA("BindableFunction") and getcb then
                    local success, value = pcall(getcb, instance, "OnInvoke")
                    if success and typeof(value) == "function" then
                        hooks.HookFunction(value, function(old, ...)
                            if settings.Log_executor_function_calls <= 2 then
                                local got = shared:AddObject({ })

                                addLogToStack(instance, shared:AddObject({ ... }), nil, got)
                                append(got, { old(...) })

                                return unpack(got[1])
                            else
                                return old(...)
                            end
                        end)
                    end
                end
            end

            if getfenv().getinstances then
                for _, v in getfenv().getinstances() do
                    task.spawn(setup, v)
                end
            end
            if getfenv().getnilinstances then
                for _, v in getfenv().getnilinstances() do
                    task.spawn(setup, v)
                end
            end

            for _, v in game:GetDescendants() do
                task.spawn(setup, v)
            end
            cons[#cons + 1] = game.DescendantAdded:Connect(setup)
        end)
    end
    
    local button = page.Buttons.Button
    button.Visible = false
    
    local function addButton(text, callback)
        local button = button:Clone()
        button.Parent = page.Buttons
        button.Visible = true
        button.Name = text
        
        if typeof(text) == "string" and text ~= "" then
            shared:AddButton(button)

            button.Separator:Destroy()
            button.Contents.Label.Text = text
            cons[#cons + 1] = button.MouseButton1Click:Connect(function()
                callback(button)
            end)
        else
            button.Contents:Destroy()
            button.Separator.Visible = true
        end
        
        return button
    end
    
    local clipboard = shared.Clipboard
    addButton("Copy code to clipboard", function()
        clipboard(codeBox.Text)
    end)
    addButton("Copy path to clipboard", function()
        if selection[1] then
            clipboard(shared.ToString.ToString(selection[1]))
        end
    end)
    addButton("Copy args to clipboard", function()
        if selection[1] then
            clipboard(shared.ToString.ToString(selection[2]))
        end
    end)
    addButton("Copy result to clipboard", function()
        if selection[3] and selection[3][1] then
            clipboard(shared.ToString.ToString(selection[3][1]))
        end
    end)
    addButton("Copy caller to clipboard", function()
        if selection[4] then
            clipboard(shared.ToString.ToString(selection[4]))
        end
    end)
    addButton("Run code", function()
        if selection[1] then
            if selection[1]:IsA("BindableFunction") then
                selection[1]:Invoke(unpack(selection[2]))
            else
                selection[1]:Fire(unpack(selection[2]))
            end
        end
    end)

    addButton("Block remote [Object]", function()
        if selection[1] then
            block[selection[1]] = true
        end
    end)
    addButton("Block remote [Name]", function()
        if selection[1] then
            block[selection[1].Name] = true
        end
    end)
    
    addButton("Clear logs", function()
        for _, log in logs do
            log:Destroy()
        end

        table.clear(logs)
    end)

    addButton("Ignore remote [Object]", function()
        if selection[1] then
            ignore[selection[1]] = true
        end
    end)
    addButton("Ignore remote [Name]", function()
        if selection[1] then
            ignore[selection[1].Name] = true
        end
    end)

    addButton("Decompile", function()
        if selection[4] then
            codeBox.Text = "local script = " .. shared.ToString.ToString(selection[4]) .. "\n" .. getfenv().decompile(selection[4])
        end
    end)
    
    local hooking = shared:AddObject({ false })
    addButton("Hook args [Object]", function(button)
        if hooking[1] and hooking[1] ~= button.Name then return end

        if not hooking[1] and selection[1] then
            hooking[1] = button.Name
            hooking[2] = selection[1]
            hooking[3] = codeBox.Text

            button.Contents.Label.Text = "HOOK"
            codeBox.Text = "return " .. shared.ToString.ToString(selection[2], -1)
        elseif hooking[1] then
            button.Contents.Label.Text = button.Name

            local su, func = pcall(loadstring, codeBox.Text)
            if su then
                local s, hookedResult = pcall(func)
                if typeof(hookedResult) == "table" then
                    hookArgs[hooking[2]] = hookedResult
                else
                    hookArgs[hooking[2]] = nil
                end
            else
                hookArgs[hooking[2]] = nil
            end

            codeBox.Text = hooking[3]

            hooking[1] = false
            hooking[2] = nil
            hooking[3] = nil
        end
    end)
    
    addButton("Hook args [Name]", function(button)
        if hooking[1] and hooking[1] ~= button.Name then return end
        
        if not hooking[1] and selection[1] then
            hooking[1] = button.Name
            hooking[2] = selection[1]
            hooking[3] = codeBox.Text
            
            button.Contents.Label.Text = "HOOK"
            codeBox.Text = "return " .. shared.ToString.ToString(selection[2], -1)
        elseif hooking[1] then
            button.Contents.Label.Text = button.Name
            
            local su, func = pcall(loadstring, codeBox.Text)
            if su then
                local s, hookedResult = pcall(func)
                if typeof(hookedResult) == "table" then
                    hookArgs[hooking[2].Name] = hookedResult
                else
                    hookArgs[hooking[2].Name] = nil
                end
            else
                hookArgs[hooking[2].Name] = nil
            end
            
            codeBox.Text = hooking[3]

            hooking[1] = false
            hooking[2] = nil
            hooking[3] = nil
        end
    end)

    addButton("return nil = unhook", pcall)
end
    end;

    modules[objects["Instance9"]] = function()
        local script = objects["Instance9"];
return function(shared, page)
    local settings = shared.Settings
    local cons = shared.Connections
    local TweenService = game:GetService("TweenService")

    local settingTypes = shared:AddObject({
        boolean = function(instance, setting)
            local function updateState()
                local state = settings[setting]
                TweenService:Create(instance.State, TweenInfo.new(0.35), shared:AddObject({BackgroundColor3 = state and Color3.new(1, 1, 1) or Color3.fromRGB(50, 50, 50)})):Play()
                TweenService:Create(instance.State.State, TweenInfo.new(0.35), shared:AddObject({
                    BackgroundColor3 = state and Color3.fromRGB(50, 50, 50) or Color3.new(1, 1, 1),
                    AnchorPoint = Vector2.new(state and 1 or 0, 0),
                    Position = UDim2.fromScale(state and 1 or 0, 0)
                })):Play()
            end

            updateState()
            cons[#cons+1] = instance.MouseButton1Click:Connect(function()
                settings[setting] = not settings[setting]
            end)
            
            shared.Settings.Event:Connect(updateState)
        end,
        
        table = function(instance, setting)
            local data = settings.Find(setting)[2]
            local val = data[1]
            local min = data[2]
            local max = data[3]

            local dragDetector = instance.Hitbox
            local stateFrame = instance.State
            local fill = stateFrame.Fill
            local pointer = stateFrame.Pointer

            local prevVal = val
            local sliderDrag = instance.Hitbox
            local sliderBar = instance.State.Fill
            local pointer = instance.State.Pointer
            local dragging = false

            cons[#cons+1] = sliderDrag.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
                    dragging = true 
                end 
            end)
            cons[#cons+1] = sliderDrag.InputEnded:Connect(function(input) 
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
                    dragging = false 
                end 
            end)

            local newVal
            local function set(num)
                newVal = math.round((math.clamp(math.max(math.floor(num + (math.sign(num) * 0.5)), 0), min, max)) * 1000) / 1000
                sliderBar:TweenSize(UDim2.fromScale((newVal - min) / (max - min), 1), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
                pointer:TweenPosition(UDim2.fromScale((newVal - min) / (max - min), 0.5), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
                val = newVal
                if newVal ~= prevVal then
                    prevVal = newVal
                    settings[setting] = newVal
                end
            end

            cons[#cons+1] = game:GetService("UserInputService").InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or Enum.UserInputType.Touch) then 
                    local sizeScale = math.clamp((input.Position.X - sliderBar.Parent.AbsolutePosition.X) / sliderBar.Parent.AbsoluteSize.X, 0, 1)
                    local pval = prevVal
                    set(min + ((max - min) * sizeScale))
                end
            end)

            task.spawn(set, val)

            shared.Settings.Event:Connect(function()
                set(settings[setting])
            end)
        end,
    })

    for i, v in page:GetChildren() do
        if not v:IsA("UIListLayout") then
            v.Visible = false
        end
    end

    local prevSeparator = false
    local separators = shared:AddObject({ })
    
    for _, v in settings.Values do
        local i = v[1]
        local v = v[2]
        
        if i ~= "SEPARATOR" then
            if settingTypes[typeof(v)] and page:FindFirstChild(typeof(v)) then
                local obj = page:FindFirstChild(typeof(v)):Clone()
                obj.Parent = page
                obj.Name = i
                obj.Label.Text = i:gsub("_", " ")
                obj.Visible = true
                
                if prevSeparator then
                    obj.Frame:Destroy()
                    prevSeparator = false
                end

                settings.Find(i)[4] = obj
                task.spawn(settingTypes[typeof(v)], obj, i)
            end
        else
            prevSeparator = true
            
            local obj = page.Separator:Clone()
            obj.Parent = page
            obj.Name = v
            obj.Label.Text = v
            obj.Visible = true
            obj.FrameRight.Size = UDim2.new(0.94 - (#v * 0.01), 0, 0, 1)
            
            table.insert(separators, obj)
        end
    end
    
    shared.SidePanelEvent.Event:Connect(function(visible)
        for _, obj in separators do
            obj.FrameRight:TweenSize(UDim2.new(0.96 - (#obj.Name * (visible and 0.01 or 0.0125)), 0, 0, 1), nil, nil, 0.15, true)
        end
    end)
end
    end;

    modules[objects["Instance7"]] = function()
        local script = objects["Instance7"];
return function(shared)
    local onClose = shared.OnCloseEvent.Event
    local hooks = shared:AddObject({ })

    onClose:Connect(function()
        for _, v in hooks do
            if v[1] == "F" then
                getfenv().hookfunction(v[2], v[3])
            else
                getfenv().hookmetamethod(game, v[2], v[3])
            end
        end
    end)

    local function isc(f)
        return (getfenv().iscclosure and getfenv().iscclosure(f) or not getfenv().iscclosure) and debug.info(f, "s") == "[C]" and (debug.getinfo and debug.getinfo(f).what == "C" and debug.getinfo(f).source:match("%[C%]") or not debug.getinfo)
    end

    local function newc(closure)
        return getfenv().newcclosure and getfenv().newcclosure(closure) or getfenv().clonefunction and getfenv().clonefunction(closure) or function(...) return closure(...) end
    end
    local function newl(closure)
        local cloned = getfenv().clonefunction and getfenv().clonefunction(function(...) return closure(...) end) or function(...) return closure(...) end
        return function(...) return cloned(...) end
    end

    local function safeClosure(original, hooked)
        if isc(original) then
            return newc(newl(hooked))
        else
            return newl(newc(hooked))
        end
    end
    
    local loggedMetaMethod = false
    return shared:AddObject({
        HookFunction = function(target, new)
            local old
            local function hooked(...)
                return new(old, ...)
            end

            old = getfenv().hookfunction(target, safeClosure(target, hooked))
            table.insert(hooks, shared:AddObject({ "F", target, old }))

            return target -- we don't need to slide the old function
        end,
        UnHookFunction = function(target)
            while true do
                local found = false
                for idx, hook in hooks do
                    if hook[1] == "F" and hook[2] == target then
                        found = idx
                        break
                    end
                end
                
                if found then
                    local found = table.remove(hooks, found)
                    getfenv().hookfunction(found[2], found[3])
                else
                    break
                end
            end
        end,
        HookMetaMethod = function(method, new)
            local old
            local function hooked(...)
                return new(old, ...)
            end
            
            old = getfenv().hookmetamethod(game, method, safeClosure(pcall, hooked)) -- used pcall as random C closure; pcall was not affected
            if not loggedMetaMethod then
                loggedMetaMethod = true
                table.insert(hooks, shared:AddObject({ "MM", method, old }))
            end
            
            -- we don't need to return function
        end
    })
end
    end;

    modules[objects["Instance5"]] = function()
        local script = objects["Instance5"];
local Lib = {}
local function getFunc(name)
    return getfenv()[name]
end
local ENV = {
    game=game,
    Instance=Instance,
    type=type,
    typeof=typeof,
    wait=wait,
    workspace=workspace,
    Wait=wait,
    Workspace=workspace,
    Enum=Enum,
    ElapsedTime=getFunc("elapsedTime"),
    elapsedTime=getFunc("elapsedTime"),
    require=require,
    Random=Random,
    RaycastParams=RaycastParams,
    Region3=Region3,
    Ray=Ray,
    Rect=Rect,
    RotationCurveKey=RotationCurveKey,
    Region3int16=Region3int16,
    rawget=rawget,
    rawlen=rawlen,
    rawset=rawset,
    rawequal=rawequal,
    task=task,
    TweenInfo=TweenInfo,
    tostring=tostring,
    tonumber=tonumber,
    table=table,
    time=time,
    tick=tick,
    ypcall=pcall,
    UDim2=UDim2,
    utf8=utf8,
    unpack=unpack,
    UDim=UDim,
    UserSettings=UserSettings,
    ipairs=ipairs,
    os=os,
    OverlapParams=OverlapParams,
    pairs=pairs,
    pcall=pcall,
    plugin=plugin,
    PhysicalProperties=PhysicalProperties,
    PathWaypoint=PathWaypoint,
    printidentity=getFunc("printidentity"),
    Axes=Axes,
    assert=assert,
    script=nil,
    string=string,
    select=select,
    settings=settings,
    spawn=spawn,
    Secret=Secret,
    shared=shared,
    setfenv=setfenv,
    SharedTable=SharedTable,
    setmetatable=setmetatable,
    Spawn=spawn,
    Stats=getFunc("stats"),
    stats=getFunc("stats"),
    DateTime=DateTime,
    debug=debug,
    DockWidgetPluginGuiInfo=DockWidgetPluginGuiInfo,
    delay=delay,
    Delay=delay,
    Font=Font,
    Faces=Faces,
    File=File,
    FloatCurveKey=FloatCurveKey,
    getfenv=getfenv,
    getmetatable=getmetatable,
    gcinfo=gcinfo,
    Game=getFunc("Game"),
    loadstring=loadstring,
    xpcall=xpcall,
    CFrame=CFrame,
    Color3=Color3,
    coroutine=coroutine,
    ColorSequenceKeypoint=ColorSequenceKeypoint,
    ColorSequence=ColorSequence,
    CatalogSearchParams=CatalogSearchParams,
    collectgarbage=getFunc("collectgarbage"),
    Vector3=Vector3,
    Vector2=Vector2,
    Vector2int16=Vector2int16,
    Vector3int16=Vector3int16,
    Version=getFunc("version"),
    version=getFunc("version"),
    BrickColor=BrickColor,
    bit32=bit32,
    buffer=buffer,
    newproxy=newproxy,
    NumberSequence=NumberSequence,
    NumberSequenceKeypoint=NumberSequenceKeypoint,
    NumberRange=NumberRange,
    next=next,
    math=math,
    _G={},
    _VERSION=_VERSION,
    print=print,
    warn=warn,
    error=error,
    vector=vector
}
local Main = {}
local plr = game:GetService("Players").LocalPlayer
Main.Mouse = plr and plr:GetMouse()
local service = setmetatable({},{
    __index = function(self,name)
        return game:FindFirstChild(name) or game:GetService(name)
    end,
})
local cloneref = function(...)return...end
local clonerefs = cloneref
local create = function(data)
    local insts = {}
    for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end
    for _,v in pairs(data) do
        for prop,val in pairs(v[3]) do
            if type(val) == "table" then
                insts[v[1]][prop] = insts[val[1]]
            else
                insts[v[1]][prop] = val
            end
        end
    end
    return insts[1]
end
local createSimple = function(class,props)
    local inst = Instance.new(class)
    for i,v in next,props do
        inst[i] = v
    end
    return inst
end
local Settings = {
    Explorer = {
        _Recurse = true,
        Sorting = true,
        TeleportToOffset = Vector3.new(0,0,0),
        ClickToRename = true,
        AutoUpdateSearch = true,
        AutoUpdateMode = 0, -- 0 Default, 1 no tree update, 2 no descendant events, 3 frozen
        PartSelectionBox = true,
        GuiSelectionBox = true,
        CopyPathUseGetChildren = true
    },
    Properties = {
        _Recurse = true,
        MaxConflictCheck = 50,
        ShowDeprecated = false,
        ShowHidden = false,
        ClearOnFocus = false,
        LoadstringInput = true,
        NumberRounding = 3,
        ShowAttributes = false,
        MaxAttributes = 50,
        ScaleType = 1 -- 0 Full Name Shown, 1 Equal Halves
    },
    Theme = {
        _Recurse = true,
        Main1 = Color3.fromRGB(52,52,52),
        Main2 = Color3.fromRGB(45,45,45),
        Outline1 = Color3.fromRGB(33,33,33), -- Mainly frames
        Outline2 = Color3.fromRGB(55,55,55), -- Mainly button
        Outline3 = Color3.fromRGB(30,30,30), -- Mainly textbox
        TextBox = Color3.fromRGB(38,38,38),
        Menu = Color3.fromRGB(32,32,32),
        ListSelection = Color3.fromRGB(199,154,40),
        Button = Color3.fromRGB(60,60,60),
        ButtonHover = Color3.fromRGB(68,68,68),
        ButtonPress = Color3.fromRGB(40,40,40),
        Highlight = Color3.fromRGB(75,75,75),
        Text = Color3.fromRGB(255,255,255),
        PlaceholderText = Color3.fromRGB(100,100,100),
        Important = Color3.fromRGB(255,0,0),
        ExplorerIconMap = "",
        MiscIconMap = "",
        Syntax = {
            Text = Color3.fromRGB(230, 230, 230), -- Light Gray
            Background = Color3.fromRGB(255, 255, 255), -- Darker background for contrast
            Selection = Color3.fromRGB(200, 200, 255), -- Light blue for selection
            SelectionBack = Color3.fromRGB(40, 40, 60), -- Darker blue for selection background
            Operator = Color3.fromRGB(180, 180, 255), -- Light blue for operators
            Number = Color3.fromRGB(150, 200, 255), -- Pastel Blue
            String = Color3.fromRGB(150, 120, 180), -- Purple-Gray for strings
            Comment = Color3.fromRGB(100, 100, 130), -- Muted Purple for comments
            Keyword = Color3.fromRGB(180, 120, 200), -- Purple for keywords
            Error = Color3.fromRGB(255, 50, 100), -- Pink-Red for errors (still avoiding pure red)
            FindBackground = Color3.fromRGB(150, 255, 150), -- Light Green for FindBackground
            MatchingWord = Color3.fromRGB(70, 70, 100), -- Darker Purple-Gray for matching words
            BuiltIn = Color3.fromRGB(160, 160, 220), -- Light Blue for built-in functions
            CurrentLine = Color3.fromRGB(40, 40, 50), -- Darker shade for current line
            LocalMethod = Color3.fromRGB(200, 180, 220), -- Light Purple for local methods
            LocalProperty = Color3.fromRGB(220, 200, 240), -- Pastel Purple for local properties
            Nil = Color3.fromRGB(255, 255, 255), -- White for nil
            Bool = Color3.fromRGB(180, 255, 180), -- Light Green for booleans
            Function = Color3.fromRGB(150, 200, 150), -- Green for functions
            Local = Color3.fromRGB(160, 160, 220), -- Light Blue for locals
            Self = Color3.fromRGB(200, 200, 200),  -- Light Gray for self
            FunctionName = Color3.fromRGB(255, 255, 255), -- White for function name
            Bracket = Color3.fromRGB(180, 180, 220) -- Light Blue for brackets
        },
    }
}
local function signalWait(s)return s:Wait()end
local renderStepped = game:GetService("RunService").RenderStepped
Lib.FastWait = function(s)
    if not s then return signalWait(renderStepped) end
    local start = tick()
    while tick() - start < s do signalWait(renderStepped) end
end
Lib.CheckMouseInGui = function(gui)
    if gui == nil then return false end
    Main.Mouse = Main.Mouse or plr and plr:GetMouse()
    local mouse = Main.Mouse
    local guiPosition = gui.AbsolutePosition
    local guiSize = gui.AbsoluteSize    

    return mouse.X >= guiPosition.X and mouse.X < guiPosition.X + guiSize.X and mouse.Y >= guiPosition.Y and mouse.Y < guiPosition.Y + guiSize.Y
end
Lib.CreateArrow = function(size,num,dir)
    local max = num
    local arrowFrame = createSimple("Frame",{
        BackgroundTransparency = 1,
        Name = "Arrow",
        Size = UDim2.new(0,size,0,size)
    })
    if dir == "up" then
        for i = 1,num do
            local newLine = createSimple("TextButton",{
                BackgroundColor3 = Color3.new(220/255,220/255,220/255),
                BorderSizePixel = 0,
                Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)+i-math.floor(max/2)-1),
                Size = UDim2.new(0,i+(i-1),0,1),
                Parent = arrowFrame,
                Text = "",
                AutoButtonColor = false
            })
        end
        return arrowFrame
    elseif dir == "down" then
        for i = 1,num do
            local newLine = createSimple("TextButton",{
                BackgroundColor3 = Color3.new(220/255,220/255,220/255),
                BorderSizePixel = 0,
                Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)-i+math.floor(max/2)+1),
                Size = UDim2.new(0,i+(i-1),0,1),
                Parent = arrowFrame,
                Text = "",
                AutoButtonColor = false
            })
        end
        return arrowFrame
    elseif dir == "left" then
        for i = 1,num do
            local newLine = createSimple("TextButton",{
                BackgroundColor3 = Color3.new(220/255,220/255,220/255),
                BorderSizePixel = 0,
                Position = UDim2.new(0,math.floor(size/2)+i-math.floor(max/2)-1,0,math.floor(size/2)-(i-1)),
                Size = UDim2.new(0,1,0,i+(i-1)),
                Parent = arrowFrame,
                Text = "",
                AutoButtonColor = false
            })
        end
        return arrowFrame
    elseif dir == "right" then
        for i = 1,num do
            local newLine = createSimple("TextButton",{
                BackgroundColor3 = Color3.new(220/255,220/255,220/255),
                BorderSizePixel = 0,
                Position = UDim2.new(0,math.floor(size/2)-i+math.floor(max/2)+1,0,math.floor(size/2)-(i-1)),
                Size = UDim2.new(0,1,0,i+(i-1)),
                Parent = arrowFrame,
                Text = "",
                AutoButtonColor = false
            })
        end
        return arrowFrame
    end
    error("r u ok")
end
Lib.Signal = (function()
    local funcs = {}

    local disconnect = function(con)
        local pos = table.find(con.Signal.Connections,con)
        if pos then table.remove(con.Signal.Connections,pos) end
    end

    funcs.Connect = function(self,func)
        if type(func) ~= "function" then error("Attempt to connect a non-function") end        
        local con = {
            Signal = self,
            Func = func,
            Disconnect = disconnect
        }
        self.Connections[#self.Connections+1] = con
        return con
    end

    funcs.Fire = function(self,...)
        for i,v in next,self.Connections do
            xpcall(coroutine.wrap(v.Func),function(e) warn(e.."\n"..debug.traceback()) end,...)
        end
    end

    local mt = {
        __index = funcs,
        __tostring = function(self)
            return "Signal: " .. tostring(#self.Connections) .. " Connections"
        end
    }

    local function new()
        local obj = {}
        obj.Connections = {}

        return setmetatable(obj,mt)
    end

    return {new = new}
end)()
Lib.ScrollBar = (function()
    local funcs = {}
    local user = service.UserInputService
    local mouse = Main.Mouse or plr and plr:GetMouse()
    local checkMouseInGui = Lib.CheckMouseInGui
    local createArrow = Lib.CreateArrow

    local function drawThumb(self)
        local total = self.TotalSpace
        local visible = self.VisibleSpace
        local index = self.Index
        local scrollThumb = self.GuiElems.ScrollThumb
        local scrollThumbFrame = self.GuiElems.ScrollThumbFrame

        if not (self:CanScrollUp()    or self:CanScrollDown()) then
            scrollThumb.Visible = false
        else
            scrollThumb.Visible = true
        end

        if self.Horizontal then
            scrollThumb.Size = UDim2.new(visible/total,0,1,0)
            if scrollThumb.AbsoluteSize.X < 16 then
                scrollThumb.Size = UDim2.new(0,16,1,0)
            end
            local fs = scrollThumbFrame.AbsoluteSize.X
            local bs = scrollThumb.AbsoluteSize.X
            scrollThumb.Position = UDim2.new(self:GetScrollPercent()*(fs-bs)/fs,0,0,0)
        else
            scrollThumb.Size = UDim2.new(1,0,visible/total,0)
            if scrollThumb.AbsoluteSize.Y < 16 then
                scrollThumb.Size = UDim2.new(1,0,0,16)
            end
            local fs = scrollThumbFrame.AbsoluteSize.Y
            local bs = scrollThumb.AbsoluteSize.Y
            scrollThumb.Position = UDim2.new(0,0,self:GetScrollPercent()*(fs-bs)/fs,0)
        end
    end

    local function createFrame(self)
        local newFrame = createSimple("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollBar",})
        local button1 = nil
        local button2 = nil

        if self.Horizontal then
            newFrame.Size = UDim2.new(1,0,0,16)
            button1 = createSimple("ImageButton",{
                Parent = newFrame,
                Name = "Left",
                Size = UDim2.new(0,16,0,16),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                AutoButtonColor = false
            })
            createArrow(16,4,"left").Parent = button1
            button2 = createSimple("ImageButton",{
                Parent = newFrame,
                Name = "Right",
                Position = UDim2.new(1,-16,0,0),
                Size = UDim2.new(0,16,0,16),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                AutoButtonColor = false
            })
            createArrow(16,4,"right").Parent = button2
        else
            newFrame.Size = UDim2.new(0,16,1,0)
            button1 = createSimple("ImageButton",{
                Parent = newFrame,
                Name = "Up",
                Size = UDim2.new(0,16,0,16),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                AutoButtonColor = false
            })
            createArrow(16,4,"up").Parent = button1
            button2 = createSimple("ImageButton",{
                Parent = newFrame,
                Name = "Down",
                Position = UDim2.new(0,0,1,-16),
                Size = UDim2.new(0,16,0,16),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                AutoButtonColor = false
            })
            createArrow(16,4,"down").Parent = button2
        end

        local scrollThumbFrame = createSimple("Frame",{
            BackgroundTransparency = 1,
            Parent = newFrame,
        })
        if self.Horizontal then
            scrollThumbFrame.Position = UDim2.new(0,16,0,0)
            scrollThumbFrame.Size = UDim2.new(1,-32,1,0)
        else
            scrollThumbFrame.Position = UDim2.new(0,0,0,16)
            scrollThumbFrame.Size = UDim2.new(1,0,1,-32)
        end

        local scrollThumb = createSimple("TextButton",{
            BackgroundColor3 = Color3.new(120/255,120/255,120/255),
            BorderSizePixel = 0,
            Parent = scrollThumbFrame,
            Text = "",
            AutoButtonColor = false,
        })

        local markerFrame = createSimple("Frame",{
            BackgroundTransparency = 1,
            Name = "Markers",
            Size = UDim2.new(1,0,1,0),
            Parent = scrollThumbFrame
        })

        local buttonPress = false
        local thumbPress = false
        local thumbFramePress = false

        --local thumbColor = Color3.new(120/255,120/255,120/255)
        --local thumbSelectColor = Color3.new(140/255,140/255,140/255)
        button1.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 end
            if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or not self:CanScrollUp() then return end
            buttonPress = true
            button1.BackgroundTransparency = 0.5
            if self:CanScrollUp() then self:ScrollUp() self.Scrolled:Fire() end
            local buttonTick = tick()
            local releaseEvent
            releaseEvent = user.InputEnded:Connect(function(input)
                if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
                releaseEvent:Disconnect()
                if checkMouseInGui(button1) and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 else button1.BackgroundTransparency = 1 end
                buttonPress = false
            end)
            while buttonPress do
                if tick() - buttonTick >= 0.3 and self:CanScrollUp() then
                    self:ScrollUp()
                    self.Scrolled:Fire()
                end
                wait()
            end
        end)
        button1.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button1.BackgroundTransparency = 1 end
        end)
        button2.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 end
            if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or not self:CanScrollDown() then return end
            buttonPress = true
            button2.BackgroundTransparency = 0.5
            if self:CanScrollDown() then self:ScrollDown() self.Scrolled:Fire() end
            local buttonTick = tick()
            local releaseEvent
            releaseEvent = user.InputEnded:Connect(function(input)
                if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
                releaseEvent:Disconnect()
                if checkMouseInGui(button2) and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 else button2.BackgroundTransparency = 1 end
                buttonPress = false
            end)
            while buttonPress do
                if tick() - buttonTick >= 0.3 and self:CanScrollDown() then
                    self:ScrollDown()
                    self.Scrolled:Fire()
                end
                wait()
            end
        end)
        button2.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not buttonPress then button2.BackgroundTransparency = 1 end
        end)

        scrollThumb.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0.2 scrollThumb.BackgroundColor3 = self.ThumbSelectColor end
            if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end

            local dir = self.Horizontal and "X" or "Y"
            local lastThumbPos = nil

            buttonPress = false
            thumbFramePress = false            
            thumbPress = true
            scrollThumb.BackgroundTransparency = 0
            local mouseOffset = mouse[dir] - scrollThumb.AbsolutePosition[dir]
            local mouseStart = mouse[dir]
            local releaseEvent
            local mouseEvent
            releaseEvent = user.InputEnded:Connect(function(input)
                if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
                releaseEvent:Disconnect()
                if mouseEvent then mouseEvent:Disconnect() end
                if checkMouseInGui(scrollThumb) then scrollThumb.BackgroundTransparency = 0.2 else scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
                thumbPress = false
            end)
            self:Update()

            mouseEvent = user.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement and thumbPress and releaseEvent.Connected then
                    local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
                    local pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - mouseOffset
                    if pos > thumbFrameSize then
                        pos = thumbFrameSize
                    elseif pos < 0 then
                        pos = 0
                    end
                    if lastThumbPos ~= pos then
                        lastThumbPos = pos
                        self:ScrollTo(math.floor(0.5+pos/thumbFrameSize*(self.TotalSpace-self.VisibleSpace)))
                    end
                    wait()
                end
            end)
        end)
        scrollThumb.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement and not thumbPress then scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
        end)
        scrollThumbFrame.InputBegan:Connect(function(input)
            if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or checkMouseInGui(scrollThumb) then return end

            local dir = self.Horizontal and "X" or "Y"
            local scrollDir = 0
            if mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
                scrollDir = 1
            end

            local function doTick()
                local scrollSize = self.VisibleSpace - 1
                if scrollDir == 0 and mouse[dir] < scrollThumb.AbsolutePosition[dir] then
                    self:ScrollTo(self.Index - scrollSize)
                elseif scrollDir == 1 and mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
                    self:ScrollTo(self.Index + scrollSize)
                end
            end

            thumbPress = false            
            thumbFramePress = true
            doTick()
            local thumbFrameTick = tick()
            local releaseEvent
            releaseEvent = user.InputEnded:Connect(function(input)
                if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
                releaseEvent:Disconnect()
                thumbFramePress = false
            end)
            while thumbFramePress do
                if tick() - thumbFrameTick >= 0.3 and checkMouseInGui(scrollThumbFrame) then
                    doTick()
                end
                wait()
            end
        end)

        newFrame.MouseWheelForward:Connect(function()
            self:ScrollTo(self.Index - self.WheelIncrement)
        end)

        newFrame.MouseWheelBackward:Connect(function()
            self:ScrollTo(self.Index + self.WheelIncrement)
        end)

        self.GuiElems.ScrollThumb = scrollThumb
        self.GuiElems.ScrollThumbFrame = scrollThumbFrame
        self.GuiElems.Button1 = button1
        self.GuiElems.Button2 = button2
        self.GuiElems.MarkerFrame = markerFrame

        return newFrame
    end

    funcs.Update = function(self,nocallback)
        local total = self.TotalSpace
        local visible = self.VisibleSpace
        local index = self.Index
        local button1 = self.GuiElems.Button1
        local button2 = self.GuiElems.Button2

        self.Index = math.clamp(self.Index,0,math.max(0,total-visible))

        if self.LastTotalSpace ~= self.TotalSpace then
            self.LastTotalSpace = self.TotalSpace
            self:UpdateMarkers()
        end

        if self:CanScrollUp() then
            for i,v in pairs(button1.Arrow:GetChildren()) do
                v.BackgroundTransparency = 0
            end
        else
            button1.BackgroundTransparency = 1
            for i,v in pairs(button1.Arrow:GetChildren()) do
                v.BackgroundTransparency = 0.5
            end
        end
        if self:CanScrollDown() then
            for i,v in pairs(button2.Arrow:GetChildren()) do
                v.BackgroundTransparency = 0
            end
        else
            button2.BackgroundTransparency = 1
            for i,v in pairs(button2.Arrow:GetChildren()) do
                v.BackgroundTransparency = 0.5
            end
        end

        drawThumb(self)
    end

    funcs.UpdateMarkers = function(self)
        local markerFrame = self.GuiElems.MarkerFrame
        markerFrame:ClearAllChildren()

        for i,v in pairs(self.Markers) do
            if i < self.TotalSpace then
                createSimple("TextButton",{
                    BackgroundTransparency = 0,
                    BackgroundColor3 = v,
                    BorderSizePixel = 0,
                    Position = self.Horizontal and UDim2.new(i/self.TotalSpace,0,1,-6) or UDim2.new(1,-6,i/self.TotalSpace,0),
                    Size = self.Horizontal and UDim2.new(0,1,0,6) or UDim2.new(0,6,0,1),
                    Name = "Marker"..tostring(i),
                    Parent = markerFrame,
                    Text = "",
                    AutoButtonColor = false,
                })
            end
        end
    end

    funcs.AddMarker = function(self,ind,color)
        self.Markers[ind] = color or Color3.new(0,0,0)
    end
    funcs.ScrollTo = function(self,ind,nocallback)
        self.Index = ind
        self:Update()
        if not nocallback then
            self.Scrolled:Fire()
        end
    end
    funcs.ScrollUp = function(self)
        self.Index = self.Index - self.Increment
        self:Update()
    end
    funcs.ScrollDown = function(self)
        self.Index = self.Index + self.Increment
        self:Update()
    end
    funcs.CanScrollUp = function(self)
        return self.Index > 0
    end
    funcs.CanScrollDown = function(self)
        return self.Index + self.VisibleSpace < self.TotalSpace
    end
    funcs.GetScrollPercent = function(self)
        return self.Index/(self.TotalSpace-self.VisibleSpace)
    end
    funcs.SetScrollPercent = function(self,perc)
        self.Index = math.floor(perc*(self.TotalSpace-self.VisibleSpace))
        self:Update()
    end

    funcs.Texture = function(self,data)
        self.ThumbColor = data.ThumbColor or Color3.new(0,0,0)
        self.ThumbSelectColor = data.ThumbSelectColor or Color3.new(0,0,0)
        self.GuiElems.ScrollThumb.BackgroundColor3 = data.ThumbColor or Color3.new(0,0,0)
        self.Gui.BackgroundColor3 = data.FrameColor or Color3.new(0,0,0)
        self.GuiElems.Button1.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
        self.GuiElems.Button2.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
        for i,v in pairs(self.GuiElems.Button1.Arrow:GetChildren()) do
            v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
        end
        for i,v in pairs(self.GuiElems.Button2.Arrow:GetChildren()) do
            v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
        end
    end

    funcs.SetScrollFrame = function(self,frame)
        if self.ScrollUpEvent then self.ScrollUpEvent:Disconnect() self.ScrollUpEvent = nil end
        if self.ScrollDownEvent then self.ScrollDownEvent:Disconnect() self.ScrollDownEvent = nil end
        self.ScrollUpEvent = frame.MouseWheelForward:Connect(function() self:ScrollTo(self.Index - self.WheelIncrement) end)
        self.ScrollDownEvent = frame.MouseWheelBackward:Connect(function() self:ScrollTo(self.Index + self.WheelIncrement) end)
    end

    local mt = {}
    mt.__index = funcs

    local function new(hor)
        local obj = setmetatable({
            Index = 0,
            VisibleSpace = 0,
            TotalSpace = 0,
            Increment = 1,
            WheelIncrement = 1,
            Markers = {},
            GuiElems = {},
            Horizontal = hor,
            LastTotalSpace = 0,
            Scrolled = Lib.Signal.new()
        },mt)
        obj.Gui = createFrame(obj)
        obj:Texture({
            ThumbColor = Color3.fromRGB(60,60,60),
            ThumbSelectColor = Color3.fromRGB(75,75,75),
            ArrowColor = Color3.new(1,1,1),
            FrameColor = Color3.fromRGB(40,40,40),
            ButtonColor = Color3.fromRGB(75,75,75)
        })
        return obj
    end

    return {new = new}
end)()
Lib.CodeFrame = (function()
    local funcs = {}

    local typeMap = {
        [0] = "String",
        [1] = "String",
        [2] = "String",
        [3] = "String",
        [4] = "Comment",
        [5] = "Operator",
        [6] = "Number",
        [7] = "Keyword",
        [8] = "BuiltIn",
        [9] = "LocalMethod",
        [10] = "LocalProperty",
        [11] = "Nil",
        [12] = "Bool",
        [13] = "Function",
        [14] = "Local",
        [15] = "Self",
        [16] = "FunctionName",
        [17] = "Bracket"
    }

    local specialKeywordsTypes = {
        ["nil"] = 11,
        ["true"] = 12,
        ["false"] = 12,
        ["function"] = 13,
        ["local"] = 14
    }

    local keywords = {
        ["and"] = true,
        ["break"] = true, 
        ["do"] = true,
        ["else"] = true,
        ["elseif"] = true,
        ["end"] = true,
        ["false"] = true,
        ["for"] = true,
        ["function"] = true,
        ["if"] = true,
        ["in"] = true,
        ["local"] = true,
        ["nil"] = true,
        ["not"] = true,
        ["or"] = true,
        ["repeat"] = true,
        ["return"] = true,
        ["then"] = true,
        ["true"] = true,
        ["until"] = true,
        ["while"] = true,
        ["type"] = true,
        ["typeof"] = true,
        ["self"] = true,
        ["export"] = true,
        ["continue"] = true,
        ["CSpy"] = true,
        ["Spy"] = true
    }

    local builtIns = {}
    for i,_ in pairs(ENV) do
        builtIns[i] = true
    end

    local builtInInited = false

    local richReplace = {
        ["'"] = "&apos;",
        ["\""] = "&quot;",
        ["<"] = "&lt;",
        [">"] = "&gt;",
        ["&"] = "&amp;"
    }

    local tabSub = "\205"
    local tabReplacement = (" %s%s "):format(tabSub,tabSub)

    local tabJumps = {
        [("[^%s] %s"):format(tabSub,tabSub)] = 0,
        [(" %s%s"):format(tabSub,tabSub)] = -1,
        [("%s%s "):format(tabSub,tabSub)] = 2,
        [("%s [^%s]"):format(tabSub,tabSub)] = 1,
    }

    local tweenService = service.TweenService
    local lineTweens = {}

    local function initBuiltIn()
        local env = getfenv()
        local type = type
        local tostring = tostring
        for name,_ in next,builtIns do
            local envVal = env[name]
            if type(envVal) == "table" and name ~= "_G" then
                local items = {}
                for i,v in next,envVal do
                    items[i] = true
                end
                builtIns[name] = items
            end
        end

        local enumEntries = {}
        local enums = Enum:GetEnums()
        for i = 1,#enums do
            enumEntries[tostring(enums[i])] = true
        end
        builtIns["Enum"] = enumEntries

        builtInInited = true
    end

    local function setupEditBox(obj)
        local editBox = obj.GuiElems.EditBox

        editBox.Focused:Connect(function()
            obj:ConnectEditBoxEvent()
            obj.Editing = true
        end)

        editBox.FocusLost:Connect(function()
            obj:DisconnectEditBoxEvent()
            obj.Editing = false
        end)

        editBox:GetPropertyChangedSignal("Text"):Connect(function()
            local text:string = editBox.Text
            if #text == 0 or obj.EditBoxCopying then return end
            editBox.Text = ""
            obj:AppendText(text:gsub("    ","    ").."")
        end)
    end

    local function setupMouseSelection(obj)
        local mouse = plr and plr:GetMouse()
        local codeFrame = obj.GuiElems.LinesFrame
        local lines = obj.Lines

        codeFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                local fontSizeX,fontSizeY = math.ceil(obj.FontSize/2),obj.FontSize

                local relX = mouse.X - codeFrame.AbsolutePosition.X
                local relY = mouse.Y - codeFrame.AbsolutePosition.Y
                local selX = math.round(relX / fontSizeX) + obj.ViewX
                local selY = math.floor(relY / fontSizeY) + obj.ViewY
                local releaseEvent,mouseEvent,scrollEvent
                local scrollPowerV,scrollPowerH = 0,0
                selY = math.min(#lines-1,selY)
                local relativeLine = lines[selY+1] or ""
                selX = math.min(#relativeLine, selX + obj:TabAdjust(selX,selY))

                obj.SelectionRange = {{-1,-1},{-1,-1}}
                obj:MoveCursor(selX,selY)
                obj.FloatCursorX = selX

                local function updateSelection()
                    local relX = mouse.X - codeFrame.AbsolutePosition.X
                    local relY = mouse.Y - codeFrame.AbsolutePosition.Y
                    local sel2X = math.max(0,math.round(relX / fontSizeX) + obj.ViewX)
                    local sel2Y = math.max(0,math.floor(relY / fontSizeY) + obj.ViewY)

                    sel2Y = math.min(#lines-1,sel2Y)
                    local relativeLine = lines[sel2Y+1] or ""
                    sel2X = math.min(#relativeLine, sel2X + obj:TabAdjust(sel2X,sel2Y))

                    if sel2Y < selY or (sel2Y == selY and sel2X < selX) then
                        obj.SelectionRange = {{sel2X,sel2Y},{selX,selY}}
                    else                        
                        obj.SelectionRange = {{selX,selY},{sel2X,sel2Y}}
                    end

                    obj:MoveCursor(sel2X,sel2Y)
                    obj.FloatCursorX = sel2X
                    obj:Refresh()
                end

                releaseEvent = service.UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        releaseEvent:Disconnect()
                        mouseEvent:Disconnect()
                        scrollEvent:Disconnect()
                        obj:SetCopyableSelection()
                        --updateSelection()
                    end
                end)

                mouseEvent = service.UserInputService.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        local upDelta = mouse.Y - codeFrame.AbsolutePosition.Y
                        local downDelta = mouse.Y - codeFrame.AbsolutePosition.Y - codeFrame.AbsoluteSize.Y
                        local leftDelta = mouse.X - codeFrame.AbsolutePosition.X
                        local rightDelta = mouse.X - codeFrame.AbsolutePosition.X - codeFrame.AbsoluteSize.X
                        scrollPowerV = 0
                        scrollPowerH = 0
                        if downDelta > 0 then
                            scrollPowerV = math.floor(downDelta*0.05) + 1
                        elseif upDelta < 0 then
                            scrollPowerV = math.ceil(upDelta*0.05) - 1
                        end
                        if rightDelta > 0 then
                            scrollPowerH = math.floor(rightDelta*0.05) + 1
                        elseif leftDelta < 0 then
                            scrollPowerH = math.ceil(leftDelta*0.05) - 1
                        end
                        updateSelection()
                    end
                end)

                scrollEvent = clonerefs(game:GetService("RunService")).RenderStepped:Connect(function()
                    if scrollPowerV ~= 0 or scrollPowerH ~= 0 then
                        obj:ScrollDelta(scrollPowerH,scrollPowerV)
                        updateSelection()
                    end
                end)

                obj:Refresh()
            end
        end)
    end

    local function makeFrame(obj)
        local frame = create({
            {1,"TextButton",{AutoButtonColor=false,Text="",BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel = 0,Position=UDim2.new(0.5,-300,0.5,-200),Size=UDim2.new(0,600,0,400)}},
        })
        local elems = {}

        local linesFrame = Instance.new("Frame")
        linesFrame.Name = "Lines"
        linesFrame.BackgroundTransparency = 1
        linesFrame.Size = UDim2.new(1,0,1,0)
        linesFrame.ClipsDescendants = true
        linesFrame.Parent = frame

        local lineNumbersLabel = Instance.new("TextLabel")
        lineNumbersLabel.Name = "LineNumbers"
        lineNumbersLabel.BackgroundTransparency = 1
        lineNumbersLabel.Font = Enum.Font.Code
        lineNumbersLabel.TextXAlignment = Enum.TextXAlignment.Right
        lineNumbersLabel.TextYAlignment = Enum.TextYAlignment.Top
        lineNumbersLabel.ClipsDescendants = true
        lineNumbersLabel.RichText = true
        lineNumbersLabel.Parent = frame

        local cursor = Instance.new("TextButton")
        cursor.Name = "Cursor"
        cursor.BackgroundColor3 = Color3.fromRGB(220,220,220)
        cursor.BorderSizePixel = 0
        cursor.Parent = frame
        cursor.Text = ""
        cursor.AutoButtonColor = false

        local editBox = Instance.new("TextBox")
        editBox.Name = "EditBox"
        editBox.MultiLine = true
        editBox.Visible = false
        editBox.Parent = frame

        lineTweens.Invis = tweenService:Create(cursor,TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 1})
        lineTweens.Vis = tweenService:Create(cursor,TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 0})

        elems.LinesFrame = linesFrame
        elems.LineNumbersLabel = lineNumbersLabel
        elems.Cursor = cursor
        elems.EditBox = editBox
        elems.ScrollCorner = create({{1,"TextButton",{BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="ScrollCorner",Position=UDim2.new(1,-16,1,-16),Size=UDim2.new(0,16,0,16),Visible=false,Text="",AutoButtonColor=false}}})

        elems.ScrollCorner.Parent = frame
        linesFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                obj:SetEditing(true,input)
            end
        end)

        obj.Frame = frame
        obj.Gui = frame
        obj.GuiElems = elems
        setupEditBox(obj)
        setupMouseSelection(obj)

        return frame
    end

    funcs.GetSelectionText = function(self)
        if not self:IsValidRange() then return "" end

        local selectionRange = self.SelectionRange
        local selX,selY = selectionRange[1][1], selectionRange[1][2]
        local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]
        local deltaLines = sel2Y-selY
        local lines = self.Lines

        if not lines[selY+1] or not lines[sel2Y+1] then return "" end

        if deltaLines == 0 then
            return self:ConvertText(lines[selY+1]:sub(selX+1,sel2X), false)
        end

        local leftSub = lines[selY+1]:sub(selX+1)
        local rightSub = lines[sel2Y+1]:sub(1,sel2X)

        local result = leftSub.."\n" 
        for i = selY+1,sel2Y-1 do
            result = result..lines[i+1].."\n"
        end
        result = result..rightSub

        return self:ConvertText(result,false)
    end

    funcs.SetCopyableSelection = function(self)
        local text = self:GetSelectionText()
        local editBox = self.GuiElems.EditBox

        self.EditBoxCopying = true
        editBox.Text = text
        editBox.SelectionStart = 1
        editBox.CursorPosition = #editBox.Text + 1
        self.EditBoxCopying = false
    end

    funcs.ConnectEditBoxEvent = function(self)
        if self.EditBoxEvent then
            self.EditBoxEvent:Disconnect()
        end

        self.EditBoxEvent = service.UserInputService.InputBegan:Connect(function(input)
            if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

            local keycodes = Enum.KeyCode
            local keycode = input.KeyCode

            local function setupMove(key,func)
                local endCon,finished
                endCon = service.UserInputService.InputEnded:Connect(function(input)
                    if input.KeyCode ~= key then return end
                    endCon:Disconnect()
                    finished = true
                end)
                func()
                Lib.FastWait(0.5)
                while not finished do func() Lib.FastWait(0.03) end
            end

            if keycode == keycodes.Down then
                setupMove(keycodes.Down,function()
                    self.CursorX = self.FloatCursorX
                    self.CursorY = self.CursorY + 1
                    self:UpdateCursor()
                    self:JumpToCursor()
                end)
            elseif keycode == keycodes.Up then
                setupMove(keycodes.Up,function()
                    self.CursorX = self.FloatCursorX
                    self.CursorY = self.CursorY - 1
                    self:UpdateCursor()
                    self:JumpToCursor()
                end)
            elseif keycode == keycodes.Left then
                setupMove(keycodes.Left,function()
                    local line = self.Lines[self.CursorY+1] or ""
                    self.CursorX = self.CursorX - 1 - (line:sub(self.CursorX-3,self.CursorX) == tabReplacement and 3 or 0)
                    if self.CursorX < 0 then
                        self.CursorY = self.CursorY - 1
                        local line2 = self.Lines[self.CursorY+1] or ""
                        self.CursorX = #line2
                    end
                    self.FloatCursorX = self.CursorX
                    self:UpdateCursor()
                    self:JumpToCursor()
                end)
            elseif keycode == keycodes.Right then
                setupMove(keycodes.Right,function()
                    local line = self.Lines[self.CursorY+1] or ""
                    self.CursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
                    if self.CursorX > #line then
                        self.CursorY = self.CursorY + 1
                        self.CursorX = 0
                    end
                    self.FloatCursorX = self.CursorX
                    self:UpdateCursor()
                    self:JumpToCursor()
                end)
            elseif keycode == keycodes.Backspace then
                setupMove(keycodes.Backspace,function()
                    local startRange,endRange
                    if self:IsValidRange() then
                        startRange = self.SelectionRange[1]
                        endRange = self.SelectionRange[2]
                    else
                        endRange = {self.CursorX,self.CursorY}
                    end

                    if not startRange then
                        local line = self.Lines[self.CursorY+1] or ""
                        self.CursorX = self.CursorX - 1 - (line:sub(self.CursorX-3,self.CursorX) == tabReplacement and 3 or 0)
                        if self.CursorX < 0 then
                            self.CursorY = self.CursorY - 1
                            local line2 = self.Lines[self.CursorY+1] or ""
                            self.CursorX = #line2
                        end
                        self.FloatCursorX = self.CursorX
                        self:UpdateCursor()

                        startRange = startRange or {self.CursorX,self.CursorY}
                    end

                    self:DeleteRange({startRange,endRange},false,true)
                    self:ResetSelection(true)
                    self:JumpToCursor()
                end)
            elseif keycode == keycodes.Delete then
                setupMove(keycodes.Delete,function()
                    local startRange,endRange
                    if self:IsValidRange() then
                        startRange = self.SelectionRange[1]
                        endRange = self.SelectionRange[2]
                    else
                        startRange = {self.CursorX,self.CursorY}
                    end

                    if not endRange then
                        local line = self.Lines[self.CursorY+1] or ""
                        local endCursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
                        local endCursorY = self.CursorY
                        if endCursorX > #line then
                            endCursorY = endCursorY + 1
                            endCursorX = 0
                        end
                        self:UpdateCursor()

                        endRange = endRange or {endCursorX,endCursorY}
                    end

                    self:DeleteRange({startRange,endRange},false,true)
                    self:ResetSelection(true)
                    self:JumpToCursor()
                end)
            elseif service.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                if keycode == keycodes.A then
                    self.SelectionRange = {{0,0},{#self.Lines[#self.Lines],#self.Lines-1}}
                    self:SetCopyableSelection()
                    self:Refresh()
                end
            end
        end)
    end

    funcs.DisconnectEditBoxEvent = function(self)
        if self.EditBoxEvent then
            self.EditBoxEvent:Disconnect()
        end
    end

    funcs.ResetSelection = function(self,norefresh)
        self.SelectionRange = {{-1,-1},{-1,-1}}
        if not norefresh then self:Refresh() end
    end

    funcs.IsValidRange = function(self,range)
        local selectionRange = range or self.SelectionRange
        local selX,selY = selectionRange[1][1], selectionRange[1][2]
        local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]

        if selX == -1 or (selX == sel2X and selY == sel2Y) then return false end

        return true
    end

    funcs.DeleteRange = function(self,range,noprocess,updatemouse)
        range = range or self.SelectionRange
        if not self:IsValidRange(range) then return end

        local lines = self.Lines
        local selX,selY = range[1][1], range[1][2]
        local sel2X,sel2Y = range[2][1], range[2][2]
        local deltaLines = sel2Y-selY

        if not lines[selY+1] or not lines[sel2Y+1] then return end

        local leftSub = lines[selY+1]:sub(1,selX)
        local rightSub = lines[sel2Y+1]:sub(sel2X+1)
        lines[selY+1] = leftSub..rightSub

        local remove = table.remove
        for i = 1,deltaLines do
            remove(lines,selY+2)
        end

        if range == self.SelectionRange then self.SelectionRange = {{-1,-1},{-1,-1}} end
        if updatemouse then
            self.CursorX = selX
            self.CursorY = selY
            self:UpdateCursor()
        end

        if not noprocess then
            self:ProcessTextChange()
        end
    end

    funcs.AppendText = function(self,text)
        self:DeleteRange(nil,true,true)
        local lines,cursorX,cursorY = self.Lines,self.CursorX,self.CursorY
        local line = lines[cursorY+1]
        local before = line:sub(1,cursorX)
        local after = line:sub(cursorX+1)

        text = text:gsub("\r\n","\n")
        text = self:ConvertText(text,true) -- Tab Convert

        local textLines = text:split("\n")
        local insert = table.insert

        for i = 1,#textLines do
            local linePos = cursorY+i
            if i > 1 then insert(lines,linePos,"") end

            local textLine = textLines[i]
            local newBefore = (i == 1 and before or "")
            local newAfter = (i == #textLines and after or "")

            lines[linePos] = newBefore..textLine..newAfter
        end

        if #textLines > 1 then cursorX = 0 end

        self:ProcessTextChange()
        self.CursorX = cursorX + #textLines[#textLines]
        self.CursorY = cursorY + #textLines-1
        self:UpdateCursor()
    end

    funcs.ScrollDelta = function(self,x,y)
        self.ScrollV:ScrollTo(self.ScrollV.Index + y)
        self.ScrollH:ScrollTo(self.ScrollH.Index + x)
    end

    -- x and y starts at 0
    funcs.TabAdjust = function(self,x,y)
        local lines = self.Lines
        local line = lines[y+1]
        x=x+1

        if line then
            local left = line:sub(x-1,x-1)
            local middle = line:sub(x,x)
            local right = line:sub(x+1,x+1)
            local selRange = (#left > 0 and left or " ") .. (#middle > 0 and middle or " ") .. (#right > 0 and right or " ")

            for i,v in pairs(tabJumps) do
                if selRange:find(i) then
                    return v
                end
            end
        end
        return 0
    end

    funcs.SetEditing = function(self,on,input)            
        self:UpdateCursor(input)

        if on then
            if self.Editable then
                self.GuiElems.EditBox.Text = ""
                self.GuiElems.EditBox:CaptureFocus()
            end
        else
            self.GuiElems.EditBox:ReleaseFocus()
        end
    end

    funcs.CursorAnim = function(self,on)
        local cursor = self.GuiElems.Cursor
        local animTime = tick()
        self.LastAnimTime = animTime

        if not on then return end

        lineTweens.Invis:Cancel()
        lineTweens.Vis:Cancel()
        cursor.BackgroundTransparency = 0

        coroutine.wrap(function()
            while self.Editable do
                Lib.FastWait(0.5)
                if self.LastAnimTime ~= animTime then return end
                lineTweens.Invis:Play()
                Lib.FastWait(0.4)
                if self.LastAnimTime ~= animTime then return end
                lineTweens.Vis:Play()
                Lib.FastWait(0.2)
            end
        end)()
    end

    funcs.MoveCursor = function(self,x,y)
        self.CursorX = x
        self.CursorY = y
        self:UpdateCursor()
        self:JumpToCursor()
    end

    funcs.JumpToCursor = function(self)
        self:Refresh()
    end

    funcs.UpdateCursor = function(self,input)
        local linesFrame = self.GuiElems.LinesFrame
        local cursor = self.GuiElems.Cursor            
        local hSize = math.max(0,linesFrame.AbsoluteSize.X)
        local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
        local maxLines = math.ceil(vSize / self.FontSize)
        local maxCols = math.ceil(hSize / math.ceil(self.FontSize/2))
        local viewX,viewY = self.ViewX,self.ViewY
        local totalLinesStr = tostring(#self.Lines)
        local fontWidth = math.ceil(self.FontSize / 2)
        local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

        if input then
            local linesFrame = self.GuiElems.LinesFrame
            local frameX,frameY = linesFrame.AbsolutePosition.X,linesFrame.AbsolutePosition.Y
            local mouseX,mouseY = input.Position.X,input.Position.Y
            local fontSizeX,fontSizeY = math.ceil(self.FontSize/2),self.FontSize

            self.CursorX = self.ViewX + math.round((mouseX - frameX) / fontSizeX)
            self.CursorY = self.ViewY + math.floor((mouseY - frameY) / fontSizeY)
        end

        local cursorX,cursorY = self.CursorX,self.CursorY

        local line = self.Lines[cursorY+1] or ""
        if cursorX > #line then cursorX = #line
        elseif cursorX < 0 then cursorX = 0 end

        if cursorY >= #self.Lines then
            cursorY = math.max(0,#self.Lines-1)
        elseif cursorY < 0 then
            cursorY = 0
        end

        cursorX = cursorX + self:TabAdjust(cursorX,cursorY)

        -- Update modified
        self.CursorX = cursorX
        self.CursorY = cursorY

        local cursorVisible = (cursorX >= viewX) and (cursorY >= viewY) and (cursorX <= viewX + maxCols) and (cursorY <= viewY + maxLines)
        if cursorVisible then
            local offX = (cursorX - viewX)
            local offY = (cursorY - viewY)
            cursor.Position = UDim2.new(0,linesOffset + offX*math.ceil(self.FontSize/2) - 1,0,offY*self.FontSize)
            cursor.Size = UDim2.new(0,1,0,self.FontSize+2)
            cursor.Visible = true
            self:CursorAnim(true)
        else
            cursor.Visible = false
        end
    end

    funcs.MapNewLines = function(self)
        local newLines = {}
        local count = 1
        local text = self.Text
        local find = string.find
        local init = 1

        local pos = find(text,"\n",init,true)
        while pos do
            newLines[count] = pos
            count = count + 1
            init = pos + 1
            pos = find(text,"\n",init,true)
        end

        self.NewLines = newLines
    end

    funcs.PreHighlight = function(self)
        local start = tick()
        local text = self.Text:gsub("\\\\","  ")
        --print("BACKSLASH SUB",tick()-start)
        local textLen = #text
        local found = {}
        local foundMap = {}
        local extras = {}
        local find = string.find
        local sub = string.sub
        self.ColoredLines = {}

        local function findAll(str,pattern,typ,raw)
            local count = #found+1
            local init = 1
            local x,y,extra = find(str,pattern,init,raw)
            while x do
                found[count] = x
                foundMap[x] = typ
                if extra then
                    extras[x] = extra
                end

                count = count+1
                init = y+1
                x,y,extra = find(str,pattern,init,raw)
            end
        end
        local start = tick()
        findAll(text,"`",0,true)
        findAll(text,'"',1,true)
        findAll(text,"'",2,true)
        findAll(text,"%[(=*)%[",3)
        findAll(text,"--",4,true)
        table.sort(found)

        local newLines = self.NewLines
        local curLine = 0
        local lineTableCount = 1
        local lineStart = 0
        local lineEnd = 0
        local lastEnding = 0
        local foundHighlights = {}

        for i = 1,#found do
            local pos = found[i]
            if pos <= lastEnding then continue end

            local ending = pos
            local typ = foundMap[pos]
            if typ == 0 then
                ending = find(text,"`",pos+1,true)
                while ending and sub(text,ending-1,ending-1) == "\\" do
                    ending = find(text,"`",ending+1,true)
                end
                if not ending then ending = textLen end
            elseif typ == 1 then
                ending = find(text,'"',pos+1,true)
                while ending and sub(text,ending-1,ending-1) == "\\" do
                    ending = find(text,'"',ending+1,true)
                end
                if not ending then ending = textLen end
            elseif typ == 2 then
                ending = find(text,"'",pos+1,true)
                while ending and sub(text,ending-1,ending-1) == "\\" do
                    ending = find(text,"'",ending+1,true)
                end
                if not ending then ending = textLen end
            elseif typ == 3 then
                _,ending = find(text,"]"..extras[pos].."]",pos+1,true)
                if not ending then ending = textLen end
            elseif typ == 4 then
                local ahead = foundMap[pos+2]

                if ahead == 3 then
                    _,ending = find(text,"]"..extras[pos+2].."]",pos+1,true)
                    if not ending then ending = textLen end
                else
                    ending = find(text,"\n",pos+1,true) or textLen
                end
            end

            while pos > lineEnd do
                curLine = curLine + 1
                --lineTableCount = 1
                lineEnd = newLines[curLine] or textLen+1
            end
            while true do
                local lineTable = foundHighlights[curLine]
                if not lineTable then lineTable = {} foundHighlights[curLine] = lineTable end
                lineTable[pos] = {typ,ending}
                --lineTableCount = lineTableCount + 1

                if ending > lineEnd then
                    curLine = curLine + 1
                    lineEnd = newLines[curLine] or textLen+1
                else
                    break
                end
            end

            lastEnding = ending
            --if i < 200 then print(curLine) end
        end
        self.PreHighlights = foundHighlights
        --print(tick()-start)
        --print(#found,curLine)
    end

    funcs.HighlightLine = function(self,line)
        local cached = self.ColoredLines[line]
        if cached then return cached end

        local sub = string.sub
        local find = string.find
        local match = string.match
        local highlights = {}
        local preHighlights = self.PreHighlights[line] or {}
        local lineText = self.Lines[line] or ""
        local lineLen = #lineText
        local lastEnding = 0
        local currentType = 0
        local lastWord = nil
        local wordBeginsDotted = false
        local funcStatus = 0
        local lineStart = self.NewLines[line-1] or 0

        local preHighlightMap = {}
        for pos,data in next,preHighlights do
            local relativePos = pos-lineStart
            if relativePos < 1 then
                currentType = data[1]
                lastEnding = data[2] - lineStart
                --warn(pos,data[2])
            else
                preHighlightMap[relativePos] = {data[1],data[2]-lineStart}
            end
        end

        for col = 1,#lineText do
            if col <= lastEnding then highlights[col] = currentType continue end

            local pre = preHighlightMap[col]
            if pre then
                currentType = pre[1]
                lastEnding = pre[2]
                highlights[col] = currentType
                wordBeginsDotted = false
                lastWord = nil
                funcStatus = 0
            else
                local char = sub(lineText,col,col)
                if find(char,"[%a_]") then
                    local word = match(lineText,"[%a%d_]+",col)
                    local wordType = (keywords[word] and 7) or (builtIns[word] and 8)

                    lastEnding = col+#word-1

                    if wordType ~= 7 then
                        if wordBeginsDotted then
                            local prevBuiltIn = lastWord and builtIns[lastWord]
                            wordType = (prevBuiltIn and type(prevBuiltIn) == "table" and prevBuiltIn[word] and 8) or 10
                        end

                        if wordType ~= 8 then
                            local x,y,br = find(lineText,"^%s*([%({\"'])",lastEnding+1)
                            if x then
                                wordType = (funcStatus > 0 and br == "(" and 16) or 9
                                funcStatus = 0
                            end
                        end
                    else
                        wordType = specialKeywordsTypes[word] or wordType
                        funcStatus = (word == "function" and 1 or 0)
                    end

                    lastWord = word
                    wordBeginsDotted = false
                    if funcStatus > 0 then funcStatus = 1 end

                    if wordType then
                        currentType = wordType
                        highlights[col] = currentType
                    else
                        currentType = nil
                    end
                elseif find(char,"%p") then
                    local isDot = (char == ".")
                    local isNum = isDot and find(sub(lineText,col+1,col+1),"%d")
                    highlights[col] = (isNum and 6 or 5)

                    if not isNum then
                        local dotStr = isDot and match(lineText,"%.%.?%.?",col)
                        if dotStr and #dotStr > 1 then
                            currentType = 5
                            lastEnding = col+#dotStr-1
                            wordBeginsDotted = false
                            lastWord = nil
                            funcStatus = 0
                        else
                            if isDot then
                                if wordBeginsDotted then
                                    lastWord = nil
                                else
                                    wordBeginsDotted = true
                                end
                            else
                                wordBeginsDotted = false
                                lastWord = nil
                            end

                            funcStatus = ((isDot or char == ":") and funcStatus == 1 and 2) or 0
                        end
                    end
                elseif find(char,"%d") then
                    local _,endPos = find(lineText,"%x+",col)
                    local endPart = sub(lineText,endPos,endPos+1)
                    if (endPart == "e+" or endPart == "e-") and find(sub(lineText,endPos+2,endPos+2),"%d") then
                        endPos = endPos + 1
                    end
                    currentType = 6
                    lastEnding = endPos
                    highlights[col] = 6
                    wordBeginsDotted = false
                    lastWord = nil
                    funcStatus = 0
                else
                    highlights[col] = currentType
                    local _,endPos = find(lineText,"%s+",col)
                    if endPos then
                        lastEnding = endPos
                    end
                end
            end
        end

        self.ColoredLines[line] = highlights
        return highlights
    end

    funcs.Refresh = function(self)
        local start = tick()

        local linesFrame = self.Frame.Lines
        local hSize = math.max(0,linesFrame.AbsoluteSize.X)
        local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
        local maxLines = math.ceil(vSize / self.FontSize)
        local maxCols = math.ceil(hSize / math.ceil(self.FontSize/2))
        local gsub = string.gsub
        local sub = string.sub

        local viewX,viewY = self.ViewX,self.ViewY

        local lineNumberStr = ""

        for row = 1,maxLines do
            local lineFrame = self.LineFrames[row]
            if not lineFrame then
                lineFrame = Instance.new("Frame")
                lineFrame.Name = "Line"
                lineFrame.Position = UDim2.new(0,0,0,(row-1)*self.FontSize)
                lineFrame.Size = UDim2.new(1,0,0,self.FontSize)
                lineFrame.BorderSizePixel = 0
                lineFrame.BackgroundTransparency = 1

                local selectionHighlight = Instance.new("Frame")
                selectionHighlight.Name = "SelectionHighlight"
                selectionHighlight.BorderSizePixel = 0
                selectionHighlight.BackgroundColor3 = Settings.Theme.Syntax.SelectionBack
                selectionHighlight.Parent = lineFrame

                local label = Instance.new("TextLabel")
                label.Name = "Label"
                label.BackgroundTransparency = 1
                label.Font = Enum.Font.Code
                label.TextSize = self.FontSize
                label.Size = UDim2.new(1,0,0,self.FontSize)
                label.RichText = true
                label.TextXAlignment = Enum.TextXAlignment.Left
                label.TextColor3 = self.Colors.Text
                label.ZIndex = 2
                label.Parent = lineFrame

                lineFrame.Parent = linesFrame
                self.LineFrames[row] = lineFrame
            end

            local relaY = viewY + row
            local lineText = self.Lines[relaY] or ""
            local resText = ""
            local highlights = self:HighlightLine(relaY)
            local colStart = viewX + 1

            local richTemplates = self.RichTemplates
            local textTemplate = richTemplates.Text
            local selectionTemplate = richTemplates.Selection
            local curType = highlights[colStart]
            local curTemplate = richTemplates[typeMap[curType]] or textTemplate

            -- Selection Highlight
            local selectionRange = self.SelectionRange
            local selPos1 = selectionRange[1]
            local selPos2 = selectionRange[2]
            local selRow,selColumn = selPos1[2],selPos1[1]
            local sel2Row,sel2Column = selPos2[2],selPos2[1]
            local selRelaX,selRelaY = viewX,relaY-1

            if selRelaY >= selPos1[2] and selRelaY <= selPos2[2] then
                local fontSizeX = math.ceil(self.FontSize/2)
                local posX = (selRelaY == selPos1[2] and selPos1[1] or 0) - viewX
                local sizeX = (selRelaY == selPos2[2] and selPos2[1]-posX-viewX or maxCols+viewX)

                lineFrame.SelectionHighlight.Position = UDim2.new(0,posX*fontSizeX,0,0)
                lineFrame.SelectionHighlight.Size = UDim2.new(0,sizeX*fontSizeX,1,0)
                lineFrame.SelectionHighlight.Visible = true
            else
                lineFrame.SelectionHighlight.Visible = false
            end

            -- Selection Text Color for first char
            local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and viewX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and viewX < sel2Column or selRelaY ~= sel2Row)
            if inSelection then
                curType = -999
                curTemplate = selectionTemplate
            end

            for col = 2,maxCols do
                local relaX = viewX + col
                local selRelaX = relaX-1
                local posType = highlights[relaX]

                -- Selection Text Color
                local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and selRelaX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and selRelaX < sel2Column or selRelaY ~= sel2Row)
                if inSelection then
                    posType = -999
                end

                if posType ~= curType then
                    local template = (inSelection and selectionTemplate) or richTemplates[typeMap[posType]] or textTemplate

                    if template ~= curTemplate then
                        local nextText = gsub(sub(lineText,colStart,relaX-1),"['\"<>&]",richReplace)
                        resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. nextText .. "</font>") or nextText)
                        colStart = relaX
                        curTemplate = template
                    end
                    curType = posType
                end
            end

            local lastText = gsub(sub(lineText,colStart,viewX+maxCols),"['\"<>&]",richReplace)
            --warn("SUB",colStart,viewX+maxCols-1)
            if #lastText > 0 then
                resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. lastText .. "</font>") or lastText)
            end

            if self.Lines[relaY] then
                lineNumberStr = lineNumberStr .. (relaY-1 == self.CursorY and ("<b>"..relaY.."</b>\n") or relaY .. "\n")
            end

            lineFrame.Label.Text = resText
        end

        for i = maxLines+1,#self.LineFrames do
            self.LineFrames[i]:Destroy()
            self.LineFrames[i] = nil
        end

        self.Frame.LineNumbers.Text = lineNumberStr
        self:UpdateCursor()

        --print("REFRESH TIME",tick()-start)
    end

    funcs.UpdateView = function(self)
        local totalLinesStr = tostring(#self.Lines)
        local fontWidth = math.ceil(self.FontSize / 2)
        local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

        local linesFrame = self.Frame.Lines
        local hSize = linesFrame.AbsoluteSize.X
        local vSize = linesFrame.AbsoluteSize.Y
        local maxLines = math.ceil(vSize / self.FontSize)
        local totalWidth = self.MaxTextCols*fontWidth
        local scrollV = self.ScrollV
        local scrollH = self.ScrollH

        scrollV.VisibleSpace = maxLines
        scrollV.TotalSpace = #self.Lines + 1
        scrollH.VisibleSpace = math.ceil(hSize/fontWidth)
        scrollH.TotalSpace = self.MaxTextCols + 1

        scrollV.Gui.Visible = #self.Lines + 1 > maxLines
        scrollH.Gui.Visible = totalWidth > hSize

        local oldOffsets = self.FrameOffsets
        self.FrameOffsets = Vector2.new(scrollV.Gui.Visible and -16 or 0, scrollH.Gui.Visible and -16 or 0)
        if oldOffsets ~= self.FrameOffsets then
            self:UpdateView()
        else
            scrollV:ScrollTo(self.ViewY,true)
            scrollH:ScrollTo(self.ViewX,true)

            if scrollV.Gui.Visible and scrollH.Gui.Visible then
                scrollV.Gui.Size = UDim2.new(0,16,1,-16)
                scrollH.Gui.Size = UDim2.new(1,-16,0,16)
                self.GuiElems.ScrollCorner.Visible = true
            else
                scrollV.Gui.Size = UDim2.new(0,16,1,0)
                scrollH.Gui.Size = UDim2.new(1,0,0,16)
                self.GuiElems.ScrollCorner.Visible = false
            end

            self.ViewY = scrollV.Index
            self.ViewX = scrollH.Index
            self.Frame.Lines.Position = UDim2.new(0,linesOffset,0,0)
            self.Frame.Lines.Size = UDim2.new(1,-linesOffset+oldOffsets.X,1,oldOffsets.Y)
            self.Frame.LineNumbers.Position = UDim2.new(0,fontWidth,0,0)
            self.Frame.LineNumbers.Size = UDim2.new(0,#totalLinesStr*fontWidth,1,oldOffsets.Y)
            self.Frame.LineNumbers.TextSize = self.FontSize
        end
    end

    funcs.ProcessTextChange = function(self)
        local maxCols = 0
        local lines = self.Lines

        for i = 1,#lines do
            local lineLen = #lines[i]
            if lineLen > maxCols then
                maxCols = lineLen
            end
        end

        self.MaxTextCols = maxCols
        self:UpdateView()    
        self.Text = table.concat(self.Lines,"\n")
        self:MapNewLines()
        self:PreHighlight()
        self:Refresh()
        --self.TextChanged:Fire()
    end

    funcs.ConvertText = function(self,text,toEditor)
        if toEditor then
            return text:gsub("\t",(" %s%s "):format(tabSub,tabSub))
        else
            return text:gsub((" %s%s "):format(tabSub,tabSub),"\t")
        end
    end

    funcs.GetText = function(self) -- TODO: better (use new tab format)
        local source = table.concat(self.Lines,"\n")
        return self:ConvertText(source,false) -- Tab Convert
    end

    funcs.SetText = function(self,txt)
        txt = self:ConvertText(txt,true) -- Tab Convert
        local lines = self.Lines
        table.clear(lines)
        local count = 1

        for line in txt:gmatch("([^\n\r]*)[\n\r]?") do
            local len = #line
            lines[count] = line
            count = count + 1
        end

        self:ProcessTextChange()
    end

    funcs.MakeRichTemplates = function(self)
        local floor = math.floor
        local templates = {}

        for name,color in pairs(self.Colors) do
            templates[name] = ('<font color="rgb(%s,%s,%s)">'):format(floor(color.r*255),floor(color.g*255),floor(color.b*255))
        end

        self.RichTemplates = templates
    end

    funcs.ApplyTheme = function(self)
        local colors = Settings.Theme.Syntax
        self.Colors = colors
        self.Frame.LineNumbers.TextColor3 = colors.Text
        self.Frame.BackgroundTransparency = 0.975
        self.Frame.BackgroundColor3 = colors.Background
    end

    local mt = {__index = funcs}

    local function new()
        if not builtInInited then initBuiltIn() end

        local scrollV = Lib.ScrollBar.new()
        local scrollH = Lib.ScrollBar.new(true)
        scrollH.Gui.Position = UDim2.new(0,0,1,-16)
        local obj = setmetatable({
            FontSize = 15,
            ViewX = 0,
            ViewY = 0,
            Colors = Settings.Theme.Syntax,
            ColoredLines = {},
            Lines = {""},
            LineFrames = {},
            Editable = true,
            Editing = false,
            CursorX = 0,
            CursorY = 0,
            FloatCursorX = 0,
            Text = "",
            PreHighlights = {},
            SelectionRange = {{-1,-1},{-1,-1}},
            NewLines = {},
            FrameOffsets = Vector2.new(0,0),
            MaxTextCols = 0,
            ScrollV = scrollV,
            ScrollH = scrollH
        },mt)

        scrollV.WheelIncrement = 3
        scrollH.Increment = 2
        scrollH.WheelIncrement = 7

        scrollV.Scrolled:Connect(function()
            obj.ViewY = scrollV.Index
            obj:Refresh()
        end)

        scrollH.Scrolled:Connect(function()
            obj.ViewX = scrollH.Index
            obj:Refresh()
        end)

        makeFrame(obj)
        obj:MakeRichTemplates()
        obj:ApplyTheme()
        scrollV:SetScrollFrame(obj.Frame.Lines)
        scrollV.Gui.Parent = obj.Frame
        scrollH.Gui.Parent = obj.Frame

        obj:UpdateView()
        obj.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            obj:UpdateView()
            obj:Refresh()
        end)

        return obj
    end

    return {new = new}
end)()

return function(textbox,env)
    ENV = env or ENV
    local par = textbox.Parent
    local new = Lib.CodeFrame.new()
    new.Gui.Parent = par
    for i,v in pairs(textbox:GetChildren()) do
        if v then
            v.Parent = new.Gui
        end
    end
    new.Gui.Size = textbox.Size
    new.Gui.Position = textbox.Position
    new.Gui.AnchorPoint = textbox.AnchorPoint
    new.Gui.Visible = textbox.Visible
    textbox:Destroy()
    return setmetatable({},{
        __index = function(self,name)
            if name == "Text" then
                return new:GetText()
            else
                return new.Gui[name]
            end
        end,
        __newindex = function(self,name,val)
            if name == "Text" then
                new:SetText(val:gsub("\t", "    "))
            else
                new.Gui[name] = val
            end
        end,
    })
end
    end;
end;

-- Set scripts
do
    task.spawn(function() -- Instance2
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance2"];
print("loading", script)
script:FindFirstAncestorOfClass("ScreenGui").Parent = getfenv().gethui and getfenv().gethui() or pcall(game.GetFullName, game:GetService("CoreGui")) and game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 9e9)
script:FindFirstAncestorOfClass("ScreenGui").Enabled = true
pcall(function()
    script.Parent.Parent.OnTopOfCoreBlur = true
end)

local shared = require(script.Shared)
local settings = shared.Settings
local cons = shared.Connections

local tweens = { }
local tweenService = game:GetService("TweenService")
local switchPage

for i, v in script.Parent.Main.Contents.Buttons.Holder.List:GetChildren() do
    if v and v:IsA("TextButton") then
        tweens[v.Name] = {
            tweenService:Create(v, TweenInfo.new(0.35), {BackgroundTransparency = 0.95}),
            tweenService:Create(v, TweenInfo.new(0.35), {BackgroundTransparency = 1})
        }
        
        cons[#cons+1] = v.MouseButton1Click:Connect(function()
            switchPage(v.Name)
        end)
    end
end

local delta, dragInput
local function makeDraggable(gui)
    local dragging, dragStart, startPos, delta

    cons[#cons+1] = gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            cons[#cons+1] = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    cons[#cons+1] = gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    cons[#cons+1] = game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            delta = input.Position - dragStart
            gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), nil, nil, 0.3, true)
            delta = nil
        end
    end)
end

local currentPage
function switchPage(name)
    currentPage = name
    script.Parent.Main.Contents.Pages.NotFound.Visible = not name or script.Parent.Main.Contents.Pages:FindFirstChild(name) == nil

    for i, v in tweens do
        v[i == name and 1 or 2]:Play()
        
        if script.Parent.Main.Contents.Pages:FindFirstChild(i) then
            script.Parent.Main.Contents.Pages[i].Visible = i == name
        end
    end
end

switchPage("Home")
makeDraggable(script.Parent)

for i, v in script.PageControls:GetChildren() do
    local page = script.Parent.Main.Contents.Pages:FindFirstChild(v.Name)
    if page then
        task.spawn(require(v), shared, page)
    end
end

local visible = true
local function show()
    visible = true
    
    shared.SidePanelEvent:Fire(true)
    
    script.Parent.Main.Contents.Buttons:TweenSize(UDim2.fromScale(0.2, 0.95), nil, nil, 0.5, true)
    script.Parent.Main.Contents.Buttons.Holder.List:TweenPosition(UDim2.fromScale(0, 0), nil, nil, 0.5, true)
    script.Parent.Main.Contents.Pages:TweenSizeAndPosition(UDim2.fromScale(0.8, 1), UDim2.fromScale(0.2, 0), nil, nil, 0.5, true)
    
    task.wait(0.3)
    
    if visible then
        for i, v in script.Parent.Main.Contents.Buttons.Holder.List:GetChildren() do
            if v then
                if v:IsA("TextButton") then
                    v.Cut.Label.Visible = true
                elseif v:IsA("Frame") then
                    v.Visible = true
                end
            end
        end
    end
end

local function hide()
    visible = false
    
    script.Parent.Main.Contents.Buttons:TweenSize(UDim2.fromScale(0.075, 0.95), nil, nil, 0.5, true)
    script.Parent.Main.Contents.Buttons.Holder.List:TweenPosition(UDim2.fromScale(0.325, 0), nil, nil, 0.5, true)
    script.Parent.Main.Contents.Pages:TweenSizeAndPosition(UDim2.fromScale(0.925, 1), UDim2.fromScale(0.075, 0), nil, nil, 0.5, true)
    
    shared.SidePanelEvent:Fire(false)
    
    for i, v in script.Parent.Main.Contents.Buttons.Holder.List:GetChildren() do
        if v then
            if v:IsA("TextButton") then
                v.Cut.Label.Visible = false
            elseif v:IsA("Frame") then
                v.Visible = false
            end
        end
    end
end

task.spawn(hide)

local hover = script.Parent.Main.Contents.Hover
local con
local hoverFunc, leaveFunc

leaveFunc = function()
    hover.Position = UDim2.fromScale(0, 0)
    hover.Size = UDim2.fromScale(0.075, 1)
    con:Disconnect()
    con = hover.MouseEnter:Connect(hoverFunc)
    cons[#cons+1] = con
    hide()
end

hoverFunc = function()
    hover.Position = UDim2.fromScale(0.2, 0)
    hover.Size = UDim2.fromScale(0.8, 1)
    con:Disconnect()
    con = hover.MouseEnter:Connect(leaveFunc)
    cons[#cons+1] = con
    show()
end

con = hover.MouseEnter:Connect(hoverFunc)
cons[#cons+1] = con

cons[#cons+1] = settings.Event:Connect(function(idx, val)
    if idx == "Always_show_side_panel" then
        if val == 2 then
            con:Disconnect()
            task.spawn(leaveFunc)
            hover.Visible = false
        elseif val == 3 then
            con:Disconnect()
            task.spawn(hoverFunc)
            hover.Visible = false
        else
            con:Disconnect()
            task.spawn(leaveFunc)
            hover.Visible = true
        end
    end
end)

local uis = game:GetService("UserInputService")

if uis.TouchEnabled and not uis.KeyboardEnabled then
    script.Parent.Size = UDim2.fromScale(0.65, 0.65)
    script.Parent.Main.TopbarZone.Buttons.Minimize.Visible = false
end

local oldRatio = script.Parent.UIAspectRatioConstraint.AspectRatio
local oldSize = script.Parent.Size

local isMinimized = true
local cooldown = false

local function minimize()
    if cooldown or isMinimized then return end
    
    isMinimized = true
    cooldown = true
    
    tweenService:Create(script.Parent.Main.Overlay, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
    
    task.wait(0.5)

    script.Parent.Main.Contents.Visible = false
    script.Parent.Main.TopbarZone.Visible = false
    
    tweenService:Create(script.Parent.UIAspectRatioConstraint, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {AspectRatio = 1}):Play()
    script.Parent:TweenSize(UDim2.fromScale(0.01, 0.01), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 1, true)
    
    task.wait(1)
    
    script.Parent.Visible = false

    isMinimized = true
    cooldown = false
end

cons[#cons + 1] = settings.Event:Connect(function(setting, value)
    if setting == "Window_scale" then
        script.Parent:TweenSize(UDim2.fromScale(oldSize.X.Scale * (value / 100), oldSize.Y.Scale * (value / 100)), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1, true)
    end
end)

local function maximize()
    if cooldown or not isMinimized then return end

    isMinimized = false
    cooldown = true
    
    script.Parent.Visible = true
    script.Parent.Main.Overlay.Visible = false
    script.Parent.Main.Contents.Visible = false
    script.Parent.Main.TopbarZone.Visible = false

    script.Parent:TweenSize(UDim2.fromScale(oldSize.X.Scale * (settings.Window_scale / 100), oldSize.Y.Scale * (settings.Window_scale / 100)), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1, true)
    tweenService:Create(script.Parent.Main, TweenInfo.new(0.75), {BackgroundTransparency = 0}):Play()

    task.wait(1)

    tweenService:Create(script.Parent.UIAspectRatioConstraint, TweenInfo.new(1.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {AspectRatio = oldRatio}):Play()

    task.wait(0.35)

    script.Parent.Main.Contents.Visible = true
    script.Parent.Main.TopbarZone.Visible = true
    script.Parent.Main.Overlay.Visible = true

    tweenService:Create(script.Parent.Main.Overlay, TweenInfo.new(2), {BackgroundTransparency = 1}):Play()

    isMinimized = false
    cooldown = false

    for _, v in settings.Values do
        local i = v[1]
        local v = v[2]

        if i ~= "SEPARATOR" then
            settings[i] = v
        end
    end
end

local files = getfenv().writefile and getfenv().readfile and getfenv().makefolder
local http = game:GetService("HttpService")

cons[#cons+1] = script.Parent.Main.TopbarZone.Buttons.Minimize.MouseButton1Click:Connect(minimize)
cons[#cons+1] = script.Parent.Main.TopbarZone.Buttons.Close.MouseButton1Click:Connect(function()
    if files then
        local saveFile = { }
        for _, v in settings.Values do
            local i = v[1]
            local v = v[2]

            if i ~= "SEPARATOR" then
                saveFile[i] = v
            end
        end

        task.spawn(getfenv().writefile, "CDT/Settings.json", http:JSONEncode(saveFile))
    end
    
    shared.OnCloseEvent:Fire()
    shared.Global[shared._idx] = nil
    
    minimize()
    script.Parent:Destroy()
    for i, v in cons do
        if v and v.Connected then
            v:Disconnect()
        end
    end
end)

cons[#cons + 1] = game:GetService("Players").PlayerRemoving:Connect(function(plr)
    if plr == game:GetService("Players").LocalPlayer then
        if files then
            local saveFile = { }
            for _, v in settings.Values do
                local i = v[1]
                local v = v[2]

                if i ~= "SEPARATOR" then
                    saveFile[i] = v
                end
            end

            task.spawn(getfenv().writefile, "CDT/Settings.json", http:JSONEncode(saveFile))
        end
    end
end)

cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input, buzy)
    if buzy or input.KeyCode ~= Enum.KeyCode.LeftControl and input.KeyCode ~= Enum.KeyCode.RightControl then return end
    maximize()
end)

task.spawn(function()
    script.Parent.Shadow.ImageTransparency = 1
    script.Parent.UIAspectRatioConstraint.AspectRatio = 1
    script.Parent.Size = UDim2.fromScale(0.05, 0.05)
    script.Parent.Main.BackgroundTransparency = 1
    script.Parent.Main.Contents.Visible = false
    script.Parent.Main.Overlay.Visible = false
    script.Parent.Main.TopbarZone.Visible = false
    script.Parent.Visible = false

    repeat task.wait() until game:IsLoaded() and workspace.CurrentCamera and task.wait(1)

    script.Parent.Visible = true

    maximize()
end)
    end);
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
