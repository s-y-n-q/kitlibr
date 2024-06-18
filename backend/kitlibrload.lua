local Instances = {
	kitlibrload = Instance.new("ScreenGui"),
	Background = Instance.new("ImageLabel"),
	UICorner = Instance.new("UICorner"),
	loadedtext = Instance.new("TextLabel"),
	title = Instance.new("TextLabel"),
	description = Instance.new("TextLabel"),
}

Instances.kitlibrload.Name = "kitlibrload"
Instances.kitlibrload.Parent = game.CoreGui

Instances.Background.Name = "Background"
Instances.Background.Parent = Instances.kitlibrload
Instances.Background.Size = UDim2.new(0, 392, 0, 306)
Instances.Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Background.BackgroundTransparency = 1
Instances.Background.Position = UDim2.new(0.356725156, 0, 0.31017369, 0)
Instances.Background.BorderSizePixel = 0
Instances.Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.Background.Image = "rbxassetid://18101371191"

Instances.UICorner.Name = "UICorner"
Instances.UICorner.Parent = Instances.Background
Instances.UICorner.CornerRadius = UDim.new(0, 6)

Instances.loadedtext.Name = "loadedtext"
Instances.loadedtext.Parent = Instances.Background
Instances.loadedtext.Size = UDim2.new(0, 392, 0, 21)
Instances.loadedtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.loadedtext.BackgroundTransparency = 1
Instances.loadedtext.Position = UDim2.new(0, 0, 0.46405229, 0)
Instances.loadedtext.BorderSizePixel = 0
Instances.loadedtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.loadedtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.loadedtext.Text = "loaded"
Instances.loadedtext.TextSize = 16
Instances.loadedtext.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

Instances.title.Name = "title"
Instances.title.Parent = Instances.Background
Instances.title.Size = UDim2.new(0, 392, 0, 21)
Instances.title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.title.BackgroundTransparency = 1
Instances.title.Position = UDim2.new(0, 0, 0.359477133, 0)
Instances.title.BorderSizePixel = 0
Instances.title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.title.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.title.Text = "kitiana 1.0.0 (kitlibr)"
Instances.title.TextSize = 16
Instances.title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

Instances.description.Name = "description"
Instances.description.Parent = Instances.Background
Instances.description.Size = UDim2.new(0, 392, 0, 21)
Instances.description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.description.BackgroundTransparency = 1
Instances.description.Position = UDim2.new(0, 0, 0.86601305, 0)
Instances.description.BorderSizePixel = 0
Instances.description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Instances.description.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.description.Text = "thank you for using kitlib :3"
Instances.description.TextSize = 16
Instances.description.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

task.spawn(function()
	local script = Instance.new("LocalScript", Instances.Background)
	local TweenService = game:GetService("TweenService")
	
	script.Parent.Position = UDim2.new(0.5, -script.Parent.AbsoluteSize.X/2, 0.5, -script.Parent.AbsoluteSize.Y/2)
	script.Parent.ImageTransparency = 1
	script.Parent.title.TextTransparency = 1
	script.Parent.description.TextTransparency = 1
	TweenService:Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
	wait(0.4)
	TweenService:Create(script.Parent.loadedtext, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	wait(0.4)
	TweenService:Create(script.Parent.title, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	wait(0.4)
	TweenService:Create(script.Parent.description, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	wait(1)
	TweenService:Create(script.Parent.description, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	wait(0.4)
	TweenService:Create(script.Parent.title, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
	wait(0.4)
	TweenService:Create(script.Parent.loadedtext, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
	wait(0.4)
	TweenService:Create(script.Parent, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
	wait(1)
	script.Parent.Parent.Enabled = false
	
	
end)()
