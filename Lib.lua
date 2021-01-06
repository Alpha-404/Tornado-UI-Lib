local lib = {};

function lib:Create(gui_name)
	local ScreenGui = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local topframe = Instance.new("Frame")
	local ExitB = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local bluestripthingyes = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Area = Instance.new("Frame")
	local MainUI = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	
	if syn and syn.protect_gui then
		syn.protect_gui(ScreenGui)
	end
	
	ScreenGui.Parent = game:GetService("CoreGui")
	
	main.Name = "main"
	main.Parent = ScreenGui
	main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	main.BorderSizePixel = 0
	main.ClipsDescendants = true
	main.Position = UDim2.new(0.372866899, 0, 0.315533996, 0)
	main.Size = UDim2.new(0, 298, 0, 303)

	topframe.Name = "top frame"
	topframe.Parent = main
	topframe.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
	topframe.BorderSizePixel = 0
	topframe.Position = UDim2.new(0, 0, -0.00129765179, 0)
	topframe.Size = UDim2.new(0, 298, 0, 17)

	ExitB.Name = "ExitB"
	ExitB.Parent = topframe
	ExitB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ExitB.BackgroundTransparency = 1.000
	ExitB.BorderSizePixel = 0
	ExitB.Position = UDim2.new(0.946308732, 0, 0, 0)
	ExitB.Size = UDim2.new(0, 16, 0, 16)
	ExitB.Font = Enum.Font.GothamBold
	ExitB.Text = "X"
	ExitB.TextColor3 = Color3.fromRGB(255, 255, 255)
	ExitB.TextScaled = true
	ExitB.TextSize = 14.000
	ExitB.TextWrapped = true

	TextLabel.Parent = topframe
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 256, 0, 16)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = gui_name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000

	bluestripthingyes.Name = "blue strip thing yes"
	bluestripthingyes.Parent = main
	bluestripthingyes.BackgroundColor3 = Color3.fromRGB(54, 40, 250)
	bluestripthingyes.BorderSizePixel = 0
	bluestripthingyes.Position = UDim2.new(0, 0, 0.985501051, 0)
	bluestripthingyes.Size = UDim2.new(0, 298, 0, 4)

	UIListLayout.Parent = MenuSlide
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	Area.Name = "Area"
	Area.Parent = main
	Area.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Area.BorderSizePixel = 0
	Area.Position = UDim2.new(0.335570484, 0, 0.0528052822, 0)
	Area.Size = UDim2.new(0, 198, 0, 281)

	MainUI.Name = "MainUI"
	MainUI.Parent = Area
	MainUI.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	MainUI.BorderSizePixel = 0
	MainUI.Position = UDim2.new(-0.00281333923, 0, 0.00298321992, 0)
	MainUI.Size = UDim2.new(0, 198, 0, 281)

	UIListLayout_2.Parent = MainUI
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 6)
	
	local L_1_ = game:GetService("UserInputService")
	function drag(L_2_arg1)
		dragToggle = nil
		local dragSpeed = 0.23
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(L_3_arg1)
			local Delta = L_3_arg1.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(L_2_arg1, TweenInfo.new(0.25), {
				Position = Position
			}):Play()
		end
		L_2_arg1.InputBegan:Connect(function(L_4_arg1)
			if (L_4_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_4_arg1.UserInputType == Enum.UserInputType.Touch) and L_1_:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = L_4_arg1.Position
				startPos = L_2_arg1.Position
				L_4_arg1.Changed:Connect(function()
					if L_4_arg1.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		L_2_arg1.InputChanged:Connect(function(L_5_arg1)
			if L_5_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_5_arg1.UserInputType == Enum.UserInputType.Touch then
				dragInput = L_5_arg1
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(L_6_arg1)
			if L_6_arg1 == dragInput and dragToggle then
				updateInput(L_6_arg1)
			end
		end)
	end
	drag(main)
	
	local obj = {};
	
	function obj:CreateButton(text, func)
		local Button1 = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")

		Button1.Name = "Button1"
		Button1.Parent = MainUI
		Button1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		Button1.BorderSizePixel = 0
		Button1.Position = UDim2.new(0.207070708, 0, 0.0498220623, 0)
		Button1.Size = UDim2.new(0, 116, 0, 27)
		Button1.Font = Enum.Font.GothamBold
		Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button1.TextSize = 14.000
		Button1.Text = text
		Button1.MouseButton1Click:Connect(func)

		UICorner.Parent = Button1
	end
	
	function obj:CreateTBox(placeholdertext, startertext, func)
		local TextBox1 = Instance.new("TextBox")
		local UICorner_2 = Instance.new("UICorner")

		TextBox1.Name = "TextBox1"
		TextBox1.Parent = MainUI
		TextBox1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		TextBox1.BorderSizePixel = 0
		TextBox1.Position = UDim2.new(0.186868683, 0, 0.227758005, 0)
		TextBox1.Size = UDim2.new(0, 125, 0, 33)
		TextBox1.Font = Enum.Font.GothamBold
		TextBox1.Text = startertext
		TextBox1.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextBox1.TextSize = 14.000
		TextBox1.PlaceholderText = placeholdertext
		TextBox1.FocusLost:Connect(func)

		UICorner_2.Parent = TextBox1
	end
	
	function obj:CreateMenu(name)
		local MenuSlide = Instance.new("Frame")
		local MenuSlideButton = Instance.new("TextButton")
		
		MenuSlide.Name = "MenuSlide"
		MenuSlide.Parent = main
		MenuSlide.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
		MenuSlide.BorderSizePixel = 0
		MenuSlide.Position = UDim2.new(0, 0, 0.0548079573, 0)
		MenuSlide.Size = UDim2.new(0, 100, 0, 281)

		MenuSlideButton.Name = "MenuSlideButton"
		MenuSlideButton.Parent = MenuSlide
		MenuSlideButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuSlideButton.BackgroundTransparency = 1.000
		MenuSlideButton.BorderSizePixel = 0
		MenuSlideButton.Size = UDim2.new(0, 100, 0, 15)
		MenuSlideButton.Font = Enum.Font.GothamBold
		MenuSlideButton.Text = name
		MenuSlideButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		MenuSlideButton.TextSize = 14.000
	end
	return obj;
end
return lib;
