
if getgenv().beachwave then
    getgenv().beachwave.Unload()
end

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local BaseTweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

--// Loader
local function CreateObject(Object, Properties)
    local NewObject = Instance.new(Object)

    for Property, Value in pairs(Properties) do
        NewObject[Property] = Value
    end

    return NewObject
end

local function WaitForTweenToEnd(Tween)
    Tween:Play()
    Tween.Completed:Wait()
end

local UI = CreateObject("ScreenGui", {
	Name = "Loader",
	DisplayOrder = 1,
	ZIndexBehavior = Enum.ZIndexBehavior.Global,
})

if syn.protect_gui then
	syn.protect_gui(UI)
elseif get_hidden_gui then
	get_hidden_gui(UI)
end

if gethui then
	UI.Parent = gethui()
else
	UI.Parent = CoreGui
end

local Holder = CreateObject("Frame", {
	Name = "Holder",
	Parent = UI,
	BackgroundColor3 = Color3.fromRGB(33, 33, 33),
	BorderSizePixel = 0,
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(0, 0, 0, 0)
})

local UICorner = CreateObject("UICorner", {
	CornerRadius = UDim.new(1, 0),
	Parent = Holder
})

local Dots = CreateObject("Folder", {
	Name = "Dots",
	Parent = Holder
})

local Dot1 = CreateObject("ImageLabel", {
	Name = "Dot1",
	Parent = Dots,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.5, -29, 0.5, -50),
	Size = UDim2.new(0, 18, 0, 100),
	ZIndex = 2,
	Image = "rbxassetid://10139590085",
	ScaleType = Enum.ScaleType.Crop,
	ImageTransparency = 1
})

local Dot2 = CreateObject("ImageLabel", {
	Name = "Dot2",
	Parent = Dots,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.5, -9, 0.5, -50),
	Size = UDim2.new(0, 18, 0, 100),
	ZIndex = 2,
	Image = "rbxassetid://10139590085",
	ScaleType = Enum.ScaleType.Crop,
	ImageTransparency = 1
})

local Dot3 = CreateObject("ImageLabel", {
	Name = "Dot3",
	Parent = Dots,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.5, 11, 0.5, -50),
	Size = UDim2.new(0, 18, 0, 100),
	ZIndex = 2,
	Image = "rbxassetid://10139590085",
	ScaleType = Enum.ScaleType.Crop,
	ImageTransparency = 1
})

local exec = identifyexecutor()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

setclipboard("**Executor:** ``"..exec.."``\n**Hwid:** ``"..hwid.."``")
   
   game.StarterGui:SetCore("SendNotification",  {
    Title = "Please Hit CTRL + V";
    Text = "In Car's DMS";
    Duration = 5;
    Callback = NotificationBindable;
   })

local Status = CreateObject("TextLabel", {
	Name = "Status",
	Parent = Holder,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	Position = UDim2.new(0.5, -100, 0.5, -14),
	Size = UDim2.new(0, 200, 0, 28),
	Font = Enum.Font.Oswald,
	Text = "Successfully Copied Info!",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 28,
	TextStrokeTransparency = 0.8999999761581421,
	TextTransparency = 1
})

local Border = CreateObject("Frame", {
	Name = "Border",
	Parent = Holder,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Position = UDim2.new(0, -1, 0, -1),
	Size = UDim2.new(1, 2, 1, 2),
	ZIndex = 0
})

local BorderUICorner = CreateObject("UICorner", {
	CornerRadius = UDim.new(0, 6),
	Parent = Border
})

local BorderUIGradient = CreateObject("UIGradient", {
	Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 75, 75)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(238, 92, 192)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(171, 105, 202)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(120, 118, 252)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(116, 168, 246))},
	Parent = Border
})

TweenService:Create(Holder, BaseTweenInfo, {Position = UDim2.new(0.5, -112, 0.5, -50), Size = UDim2.new(0, 225, 0, 100)}):Play()
WaitForTweenToEnd(TweenService:Create(UICorner, BaseTweenInfo, {CornerRadius = UDim.new(0, 6)}))

spawn(function()
	while task.wait(0.5) do
		if Dot1.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			WaitForTweenToEnd(TweenService:Create(Dot1, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -29, 0.5, -60), ImageTransparency = 0}))
			WaitForTweenToEnd(TweenService:Create(Dot1, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -29, 0.5, -50)}))
		end

		if Dot2.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			WaitForTweenToEnd(TweenService:Create(Dot2, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -9, 0.5, -60), ImageTransparency = 0}))
			WaitForTweenToEnd(TweenService:Create(Dot2, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -9, 0.5, -50)}))
		end

		if Dot3.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			WaitForTweenToEnd(TweenService:Create(Dot3, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 11, 0.5, -60), ImageTransparency = 0}))
			WaitForTweenToEnd(TweenService:Create(Dot3, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 11, 0.5, -50)}))
		else
			break
		end
	end
end)

spawn(function()
	while task.wait() do
        if not UI then break end
		BorderUIGradient.Rotation= BorderUIGradient.Rotation + (1 % 360)
	end
end)

WaitForTweenToEnd(TweenService:Create(Border, BaseTweenInfo, {BackgroundTransparency = 0}))
task.wait(2)



local function WaitForTweenToEnd(Tween)
	Tween:Play()
	Tween.Completed:Wait()
end

local function CreateObject(Type, Properties)
	local Object = Instance.new(Type)

	for Name, Value in pairs(Properties) do
		Object[Name] = Value
	end

	return Object
end


TweenService:Create(Dot1, BaseTweenInfo, {ImageColor3 = Color3.fromRGB(116, 255, 132)}):Play()
TweenService:Create(Dot2, BaseTweenInfo, {ImageColor3 = Color3.fromRGB(116, 255, 132)}):Play()
WaitForTweenToEnd(TweenService:Create(Dot3, BaseTweenInfo, {ImageColor3 = Color3.fromRGB(116, 255, 132)}))

TweenService:Create(Dot1, BaseTweenInfo, {ImageTransparency = 1}):Play()
TweenService:Create(Dot2, BaseTweenInfo, {ImageTransparency = 1}):Play()
WaitForTweenToEnd(TweenService:Create(Dot3, BaseTweenInfo, {ImageTransparency = 1}))
WaitForTweenToEnd(TweenService:Create(Status, BaseTweenInfo, {TextTransparency = 0}))

task.wait(2)
TweenService:Create(Status, BaseTweenInfo, {TextTransparency = 1, TextStrokeTransparency = 1}):Play()
WaitForTweenToEnd(TweenService:Create(Border, BaseTweenInfo, {BackgroundTransparency = 1}))
TweenService:Create(Holder, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.new(0, 0, 0, 0)}):Play()
WaitForTweenToEnd(TweenService:Create(UICorner, TweenInfo.new(0.75, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {CornerRadius = UDim.new(1, 0)}))
