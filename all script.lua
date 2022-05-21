local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local OldNameCall 
OldNameCall = hookmetamethod(game, "__namecall", function(...) 
    local Self, Args = (...), ({select(2, ...)})

    if getnamecallmethod() == "Kick" and Self == Player then 
        return
    end

    return OldNameCall(...)
end)

if game.PlaceId == 5932564241 then
local Player = game:GetService('Players').LocalPlayer
Player.Idled:connect(function()
	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
if game.CoreGui:FindFirstChild("library") then
	game.CoreGui:FindFirstChild("library"):Destroy()
	getgenv().sword = false
	getgenv().sell = false
	getgenv().collect = false
	getgenv().buy = false
	getgenv().boss = false
end
local library = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local backgroundframe = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
----put here local button
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")
local button4 = Instance.new("TextButton")
local button5 = Instance.new("TextButton")
local button6 = Instance.new("TextButton")

---end
local UIGridLayout = Instance.new("UIGridLayout")
local playerframe = Instance.new("Frame")
local speedbox = Instance.new("TextBox")
local jumppowerbox = Instance.new("TextBox")
local speed = Instance.new("TextButton")
local jumppower = Instance.new("TextButton")
local menuframe = Instance.new("Frame")
local scriptframebutton = Instance.new("TextButton")
local playerbutton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local minimize = Instance.new("TextButton")
local close = Instance.new("TextButton")

library.Name = "library"
library.Parent = game.CoreGui
library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

topframe.Name = "topframe"
topframe.Parent = library
topframe.Active = true
topframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topframe.Position = UDim2.new(0.080862537, 0, 0.200000003, 0)
topframe.Size = UDim2.new(0, 300, 0, 30)

backgroundframe.Name = "background frame"
backgroundframe.Parent = topframe
backgroundframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
backgroundframe.Position = UDim2.new(0, 0, 1, 0)
backgroundframe.Size = UDim2.new(0, 300, 0, 200)

ScrollingFrame.Parent = backgroundframe
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.266666681, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 220, 0, 200)
ScrollingFrame.ScrollBarThickness = 5


---make new button dont put same name
button1.Name = "button1"
button1.Parent = ScrollingFrame
button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Font = Enum.Font.GothamBold
button1.Text = "Sword X"
button1.TextColor3 = Color3.fromRGB(0, 0, 0)
button1.TextSize = 13.000
button1.MouseButton1Click:Connect(function()
	if button1.Text == "Sword X" then
	    button1.Text = "Sword ✓"
	    getgenv().sword = true
while getgenv().sword do
wait()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChildOfClass('Tool'))
local A_1 =  {
	["Action"] = "Attack"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Weapon
Event:FireServer(A_1)
end
	    else
	        if button1.Text == "Sword ✓" then
	            button1.Text = "Sword X"
	        getgenv().sword = false
	end
end
end)

button2.Name = "button2"
button2.Parent = ScrollingFrame
button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Font = Enum.Font.GothamBold
button2.Text = "Sell X"
button2.TextColor3 = Color3.fromRGB(0, 0, 0)
button2.TextSize = 13.000
button2.MouseButton1Click:Connect(function()
	if button2.Text == "Sell X" then
	    button2.Text = "Sell ✓"
	    getgenv().sell = true
while getgenv().sell do
wait()
local A_1 = 
{
	["Action"] = "Sell", 
	["Request"] = "Sell"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
end
	    else
	        if button2.Text == "Sell ✓" then
	            button2.Text = "Sell X"
	            getgenv().sell = false
	end
end
end)


button3.Name = "button3"
button3.Parent = ScrollingFrame
button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button3.Size = UDim2.new(0, 200, 0, 50)
button3.Font = Enum.Font.GothamBold
button3.Text = "Buy X"
button3.TextColor3 = Color3.fromRGB(0, 0, 0)
button3.TextSize = 13.000
button3.Visible = true
button3.MouseButton1Click:Connect(function()
	if button3.Text == "Buy X" then
	    button3.Text = "Buy ✓"
	    getgenv().buy = true
while getgenv().buy do
wait(1)
local A_1 = 
{
	["Action"] = "Buy All", 
	["Category"] = "Weapons"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
local A_1 = 
{
	["Action"] = "Buy All", 
	["Category"] = "Genetics"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Shop
Event:FireServer(A_1)
local A_1 = 
{
	["Action"] = "Buy All", 
	["Category"] = "Double Jumps"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Skill
Event:FireServer(A_1)
local A_1 = 
{
	["Action"] = "Buy All", 
	["Category"] = "Boss Hits"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Skill
Event:FireServer(A_1)
end
	    else
	        if button3.Text == "Buy ✓" then
	            button3.Text = "Buy X"
	            getgenv().buy = false
	        end
	end
end)

button4.Name = "button4"

button4.Parent = ScrollingFrame

button4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button4.Size = UDim2.new(0, 200, 0, 50)
button4.Font = Enum.Font.GothamBold
button4.Text = "Coin X"
button4.TextColor3 = Color3.fromRGB(0, 0, 0)
button4.TextSize = 13.000
button4.MouseButton1Click:Connect(function()
	if button4.Text == "Coin X" then
	    button4.Text = "Coin ✓"
	    getgenv().collect = true
while getgenv().collect do
wait()
for i,v in pairs(game:GetService("Workspace").Client.Worlds.Overworld.Collectables.Projectiles:GetDescendants()) do
if v.Name == "Part" or v.Name == "Core" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end
	    else
	        if button4.Text == "Coin ✓" then
	            button4.Text = "Coin X"
	            getgenv().collect = false
	        end
	end
end)

button5.Name = "button5"
button5.Parent = ScrollingFrame
button5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button5.Size = UDim2.new(0, 200, 0, 50)
button5.Font = Enum.Font.GothamBold
button5.Text = "Unlock All Portal"
button5.TextColor3 = Color3.fromRGB(0, 0, 0)
button5.TextSize = 13.000
button5.MouseButton1Click:Connect(function()
	local oldposition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
wait(0.5)
plr.CFrame = CFrame.new(9.0741539, 901.82843, 11.6240978, -0.434346884, -3.08430579e-08, 0.90074569, -4.86680207e-08, 1, 1.07735794e-08, -0.90074569, -3.91580386e-08, -0.434346884)
wait(0.5)
plr.CFrame = CFrame.new(9.467206, 1902.0282, 10.3574095, 0.978650749, 7.25200663e-11, 0.205530316, -3.36456196e-09, 1, 1.56678155e-08, -0.205530316, -1.60248383e-08, 0.978650749)
wait(0.5)
plr.CFrame = CFrame.new(5.79413652, 3301.82788, 10.4492798, 0.932515264, -3.56518086e-08, 0.361130565, 5.54307427e-08, 1, -4.44111059e-08, -0.361130565, 6.14317699e-08, 0.932515264)
wait(0.5)
plr.CFrame = CFrame.new(-6.35711861, 5803.32666, 0.260148883, -0.880688012, 6.0480879e-08, 0.473696738, 5.75976813e-08, 1, -2.05939585e-08, -0.473696738, 9.14698184e-09, -0.880688012)
wait(0.5)
plr.CFrame = oldposition
end)

button6.Name = "button6"

button6.Parent = ScrollingFrame

button6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button6.Size = UDim2.new(0, 200, 0, 50)
button6.Font = Enum.Font.GothamBold
button6.Text = "Boss X"
button6.TextColor3 = Color3.fromRGB(0, 0, 0)
button6.TextSize = 13.000
button6.MouseButton1Click:Connect(function()
	if button6.Text == "Boss X" then
	    button6.Text = "Boss ✓"
	    local you = game.Players.LocalPlayer
getgenv().boss = true
while getgenv().boss do
wait()
if game:GetService("Workspace").Client.Worlds.Overworld.Boss["Earth's Guardian"] ~= nil then
				you.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Client.Worlds.Overworld.Boss["Earth's Guardian"].Head.CFrame
				for i,v in pairs(you.Backpack:GetChildren()) do
if v.ClassName == "Tool" then
you.Character.Humanoid:EquipTool(v)
end
end
				local A_1 = 
{
	["Action"] = "Attack"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events.Weapon
Event:FireServer(A_1)
			end
end
	    else
	        if button6.Text == "Boss ✓" then
	            button6.Text = "Boss X"
	            getgenv().boss = false
	        end
	end
end)















---end
UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 180, 0, 30)

playerframe.Name = "playerframe"
playerframe.Parent = backgroundframe
playerframe.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
playerframe.Position = UDim2.new(0.266666681, 0, 0, 0)
playerframe.Size = UDim2.new(0, 220, 0, 200)
playerframe.Visible = false

speedbox.Name = "speedbox"
speedbox.Parent = playerframe
speedbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speedbox.Position = UDim2.new(0.0818181857, 0, 0.0250000004, 0)
speedbox.Size = UDim2.new(0, 80, 0, 60)
speedbox.Font = Enum.Font.GothamBold
speedbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
speedbox.Text = ""
speedbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speedbox.TextScaled = true
speedbox.TextSize = 14.000
speedbox.TextWrapped = true

jumppowerbox.Name = "jumppowerbox"
jumppowerbox.Parent = playerframe
jumppowerbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppowerbox.Position = UDim2.new(0.545454502, 0, 0.0250000004, 0)
jumppowerbox.Size = UDim2.new(0, 80, 0, 60)
jumppowerbox.Font = Enum.Font.GothamBold
jumppowerbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.Text = ""
jumppowerbox.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.TextScaled = true
jumppowerbox.TextSize = 14.000
jumppowerbox.TextWrapped = true

speed.Name = "speed"
speed.Parent = playerframe
speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speed.Position = UDim2.new(0.0818181783, 0, 0.354999989, 0)
speed.Size = UDim2.new(0, 80, 0, 50)
speed.Font = Enum.Font.GothamBold
speed.Text = "speed"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
speed.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedbox.Text
end)

jumppower.Name = "jumppower"
jumppower.Parent = playerframe
jumppower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppower.Position = UDim2.new(0.545454562, 0, 0.375, 0)
jumppower.Size = UDim2.new(0, 80, 0, 50)
jumppower.Font = Enum.Font.GothamBold
jumppower.Text = "jump    power"
jumppower.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppower.TextScaled = true
jumppower.TextSize = 14.000
jumppower.TextWrapped = true
jumppower.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppowerbox.Text
end)

menuframe.Name = "menu frame"
menuframe.Parent = backgroundframe
menuframe.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
menuframe.Size = UDim2.new(0, 80, 0, 200)

scriptframebutton.Name = "scriptframebutton"
scriptframebutton.Parent = menuframe
scriptframebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptframebutton.Position = UDim2.new(0, 0, 0.0250000004, 0)
scriptframebutton.Size = UDim2.new(0, 80, 0, 30)
scriptframebutton.Font = Enum.Font.GothamBold
scriptframebutton.Text = "Main"
scriptframebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
scriptframebutton.TextScaled = true
scriptframebutton.TextSize = 14.000
scriptframebutton.TextWrapped = true
scriptframebutton.MouseButton1Click:Connect(function()
	ScrollingFrame.Visible = true
	playerframe.Visible = false
end)

playerbutton.Name = "playerbutton"
playerbutton.Parent = menuframe
playerbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerbutton.Position = UDim2.new(0, 0, 0.205000013, 0)
playerbutton.Size = UDim2.new(0, 80, 0, 30)
playerbutton.Font = Enum.Font.GothamBold
playerbutton.Text = "player setting"
playerbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
playerbutton.TextScaled = true
playerbutton.TextSize = 14.000
playerbutton.TextWrapped = true
playerbutton.MouseButton1Click:Connect(function()
	playerframe.Visible = true
	ScrollingFrame.Visible = false
end)

title.Name = "title"
title.Parent = topframe
title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
title.Size = UDim2.new(0, 220, 0, 30)
title.Font = Enum.Font.GothamBold
title.Text = "Adventure Simulator"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

minimize.Name = "minimize"
minimize.Parent = topframe
minimize.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimize.Position = UDim2.new(0.733333349, 0, 0, 0)
minimize.Size = UDim2.new(0, 40, 0, 30)
minimize.Font = Enum.Font.SourceSans
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 40.000
minimize.TextWrapped = true
minimize.MouseButton1Click:Connect(function()
	if backgroundframe.Visible == true then
		backgroundframe.Visible = false
	else
		if backgroundframe.Visible == false then
			backgroundframe.Visible = true
		end
	end
end)

close.Name = "close"
close.Parent = topframe
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.866666675, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 30)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
	game.CoreGui:FindFirstChild("library"):Destroy()
	getgenv().sword = false
	getgenv().sell = false
	getgenv().collect = false
	getgenv().buy = false
	getgenv().boss = false
end)

---draggable version 2
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', topframe)
local UserInputService,gui,dragging,dragInput,dragStart,startPos = game:GetService("UserInputService"),script.Parent

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
     
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end
coroutine.wrap(FQIK_fake_script)()
end

---autocanvas scrolling frame
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)
script.Parent.ChildAdded:Connect(function()
	script.Parent.CanvasSize = UDim2.new(0, 0, 0, script.Parent.UIGridLayout.AbsoluteContentSize.Y + script.Parent.Frame.Size.Y.Offset + script.Parent.UIGridLayout.CellPadding.Y.Offset)
end)
end
coroutine.wrap(FQIK_fake_script)()


if game.PlaceId == 2619187362 then
local Player = game:GetService('Players').LocalPlayer



Player.Idled:connect(function()



	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)



	wait(1)



	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)



end)





local ScreenGui = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")

local TextLabel = Instance.new("TextLabel")

local button1 = Instance.new("TextButton")



--Properties:



ScreenGui.Parent = game.CoreGui

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Frame.Parent = ScreenGui

Frame.Active = true

Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Frame.Position = UDim2.new(0.141752586, 0, 0.472266257, 0)

Frame.Size = UDim2.new(0, 170, 0, 130)



TextLabel.Parent = Frame

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.Size = UDim2.new(0, 170, 0, 20)

TextLabel.Font = Enum.Font.GothamBold

TextLabel.Text = "Super Power Fighting"

TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.TextSize = 14.000

TextLabel.TextWrapped = true



button1.Name = "button1"

button1.Parent = Frame

button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

button1.Position = UDim2.new(0.146764696, 0, 0.298846155, 0)

button1.Size = UDim2.new(0, 120, 0, 70)

button1.Font = Enum.Font.SourceSans

button1.Text = "Active X"

button1.TextColor3 = Color3.fromRGB(0, 0, 0)

button1.TextScaled = true

button1.TextSize = 14.000

button1.TextWrapped = true

button1.MouseButton1Click:Connect(function()

	if button1.Text == "Active X" then
	    button1.Text = "Active ✓"
	    getgenv().stat = true
while getgenv().stat do
wait()
local A_1 = "Strength"
local Event = game:GetService("ReplicatedStorage").Events.Train
Event:FireServer(A_1)
local A_1 = "Endurance"
local Event = game:GetService("ReplicatedStorage").Events.Train
Event:FireServer(A_1)
local A_1 = "Psychic"
local Event = game:GetService("ReplicatedStorage").Events.Train
Event:FireServer(A_1)
end
	    else
	        if button1.Text == "Active ✓" then
	            button1.Text = "Active X"
	            getgenv().stat = false
	        end
	end

end)



-- Scripts:



local function LMQESFW_fake_script() -- Frame.LocalScript 

	local script = Instance.new('LocalScript', Frame)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(LMQESFW_fake_script)()

local function XAYA_fake_script() -- TextLabel.LocalScript 

	local script = Instance.new('LocalScript', TextLabel)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(XAYA_fake_script)()

local function GFNVNC_fake_script() -- button1.LocalScript 

	local script = Instance.new('LocalScript', button1)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(GFNVNC_fake_script)()

---draggable version 2
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
local UserInputService,gui,dragging,dragInput,dragStart,startPos = game:GetService("UserInputService"),script.Parent

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
     
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end
coroutine.wrap(FQIK_fake_script)()
end

local Player = game:GetService('Players').LocalPlayer
Player.Idled:connect(function()
	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
if game.PlaceId == 4042427666 then
if game.CoreGui:FindFirstChild("library") then
	game.CoreGui:FindFirstChild("library"):Destroy()
end
local library = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local backgroundframe = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
----put here local button
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")
local button4 = Instance.new("TextButton")
local button5 = Instance.new("TextButton")

---end
local UIGridLayout = Instance.new("UIGridLayout")
local playerframe = Instance.new("Frame")
local speedbox = Instance.new("TextBox")
local jumppowerbox = Instance.new("TextBox")
local speed = Instance.new("TextButton")
local jumppower = Instance.new("TextButton")
local menuframe = Instance.new("Frame")
local scriptframebutton = Instance.new("TextButton")
local playerbutton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local minimize = Instance.new("TextButton")
local close = Instance.new("TextButton")

library.Name = "library"
library.Parent = game.CoreGui
library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

topframe.Name = "topframe"
topframe.Parent = library
topframe.Active = true
topframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topframe.Position = UDim2.new(0.080862537, 0, 0.200000003, 0)
topframe.Size = UDim2.new(0, 300, 0, 30)

backgroundframe.Name = "background frame"
backgroundframe.Parent = topframe
backgroundframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
backgroundframe.Position = UDim2.new(0, 0, 1, 0)
backgroundframe.Size = UDim2.new(0, 300, 0, 200)

ScrollingFrame.Parent = backgroundframe
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.266666681, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 220, 0, 200)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 5


---make new button dont put same name
button1.Name = "button1"
button1.Parent = ScrollingFrame
button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Font = Enum.Font.GothamBold
button1.Text = "Strengh X"
button1.TextColor3 = Color3.fromRGB(0, 0, 0)
button1.TextSize = 13.000
button1.MouseButton1Click:Connect(function()
	if button1.Text == "Strengh X" then
	    button1.Text = "Strengh ✓"
	    getgenv().strengh = true
while getgenv().strengh do
wait()
local A_1 = "Stat"
local A_2 = "Strength"
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
Event:InvokeServer(A_1, A_2)
end
	    else
	        if button1.Text == "Strengh ✓" then
	            button1.Text = "Strengh X"
	            getgenv().strengh = false
	        end
	end
end)

button2.Name = "button2"
button2.Parent = ScrollingFrame
button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Font = Enum.Font.GothamBold
button2.Text = "Durabilty X"
button2.TextColor3 = Color3.fromRGB(0, 0, 0)
button2.TextSize = 13.000
button2.MouseButton1Click:Connect(function()
	if button2.Text == "Durabilty X" then
	    button2.Text = "Durabilty ✓"
	    getgenv().durabilty = true
while getgenv().durabilty do
wait()
local A_1 = "Stat"
local A_2 = "Durability"
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
Event:InvokeServer(A_1, A_2)
end
	    else
	        if button2.Text == "Durabilty ✓" then
	            button2.Text = "Durabilty X"
	            getgenv().durabilty = false
	        end
	end
end)


button3.Name = "button3"
button3.Parent = ScrollingFrame
button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button3.Size = UDim2.new(0, 200, 0, 50)
button3.Font = Enum.Font.GothamBold
button3.Text = "Chakra X"
button3.TextColor3 = Color3.fromRGB(0, 0, 0)
button3.TextSize = 13.000
button3.Visible = true
button3.MouseButton1Click:Connect(function()
	if button3.Text == "Chakra X" then
	    button3.Text = "Chakra ✓"
	    getgenv().chakra = true
while getgenv().chakra do
wait()
local A_1 = "Stat"
local A_2 = "Chakra"
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
Event:InvokeServer(A_1, A_2)
end
	    else
	        if button3.Text == "Chakra ✓" then
	            button3.Text = "Chakra X"
	            getgenv().chakra = false
	        end
	end
end)

button4.Name = "button4"

button4.Parent = ScrollingFrame

button4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button4.Size = UDim2.new(0, 200, 0, 50)
button4.Font = Enum.Font.GothamBold
button4.Text = "Sword X"
button4.TextColor3 = Color3.fromRGB(0, 0, 0)
button4.TextSize = 13.000
button4.MouseButton1Click:Connect(function()
	if button4.Text == "Sword X" then
	    button4.Text = "Sword ✓"
	    local A_1 = "SE"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent
Event:FireServer(A_1, A_2)
getgenv().sword = true
while getgenv().sword do
wait()
local A_1 = "Stat"
local A_2 = "Sword"
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction
Event:InvokeServer(A_1, A_2)
end
	    else
	        if button4.Text == "Sword ✓" then
	            button4.Text = "Sword X"
	            local A_1 = "SE"
local A_2 = false
local Event = game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent
Event:FireServer(A_1, A_2)
wait()
getgenv().sword = false
	        end
	end
end)

button5.Name = "button5"
button5.Parent = ScrollingFrame
button5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button5.Size = UDim2.new(0, 200, 0, 50)
button5.Font = Enum.Font.GothamBold
button5.Text = "Antilag/Fps Booster"
button5.TextColor3 = Color3.fromRGB(0, 0, 0)
button5.TextSize = 13.000
button5.MouseButton1Click:Connect(function()
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

















---end
UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 180, 0, 30)

playerframe.Name = "playerframe"
playerframe.Parent = backgroundframe
playerframe.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
playerframe.Position = UDim2.new(0.266666681, 0, 0, 0)
playerframe.Size = UDim2.new(0, 220, 0, 200)
playerframe.Visible = false

speedbox.Name = "speedbox"
speedbox.Parent = playerframe
speedbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speedbox.Position = UDim2.new(0.0818181857, 0, 0.0250000004, 0)
speedbox.Size = UDim2.new(0, 80, 0, 60)
speedbox.Font = Enum.Font.GothamBold
speedbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
speedbox.Text = ""
speedbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speedbox.TextScaled = true
speedbox.TextSize = 14.000
speedbox.TextWrapped = true

jumppowerbox.Name = "jumppowerbox"
jumppowerbox.Parent = playerframe
jumppowerbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppowerbox.Position = UDim2.new(0.545454502, 0, 0.0250000004, 0)
jumppowerbox.Size = UDim2.new(0, 80, 0, 60)
jumppowerbox.Font = Enum.Font.GothamBold
jumppowerbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.Text = ""
jumppowerbox.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.TextScaled = true
jumppowerbox.TextSize = 14.000
jumppowerbox.TextWrapped = true

speed.Name = "speed"
speed.Parent = playerframe
speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speed.Position = UDim2.new(0.0818181783, 0, 0.354999989, 0)
speed.Size = UDim2.new(0, 80, 0, 50)
speed.Font = Enum.Font.GothamBold
speed.Text = "speed"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
speed.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedbox.Text
end)

jumppower.Name = "jumppower"
jumppower.Parent = playerframe
jumppower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppower.Position = UDim2.new(0.545454562, 0, 0.375, 0)
jumppower.Size = UDim2.new(0, 80, 0, 50)
jumppower.Font = Enum.Font.GothamBold
jumppower.Text = "jump    power"
jumppower.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppower.TextScaled = true
jumppower.TextSize = 14.000
jumppower.TextWrapped = true
jumppower.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppowerbox.Text
end)

menuframe.Name = "menu frame"
menuframe.Parent = backgroundframe
menuframe.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
menuframe.Size = UDim2.new(0, 80, 0, 200)

scriptframebutton.Name = "scriptframebutton"
scriptframebutton.Parent = menuframe
scriptframebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptframebutton.Position = UDim2.new(0, 0, 0.0250000004, 0)
scriptframebutton.Size = UDim2.new(0, 80, 0, 30)
scriptframebutton.Font = Enum.Font.GothamBold
scriptframebutton.Text = "Main"
scriptframebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
scriptframebutton.TextScaled = true
scriptframebutton.TextSize = 14.000
scriptframebutton.TextWrapped = true
scriptframebutton.MouseButton1Click:Connect(function()
	ScrollingFrame.Visible = true
	playerframe.Visible = false
end)

playerbutton.Name = "playerbutton"
playerbutton.Parent = menuframe
playerbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerbutton.Position = UDim2.new(0, 0, 0.205000013, 0)
playerbutton.Size = UDim2.new(0, 80, 0, 30)
playerbutton.Font = Enum.Font.GothamBold
playerbutton.Text = "player setting"
playerbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
playerbutton.TextScaled = true
playerbutton.TextSize = 14.000
playerbutton.TextWrapped = true
playerbutton.MouseButton1Click:Connect(function()
	playerframe.Visible = true
	ScrollingFrame.Visible = false
end)

title.Name = "title"
title.Parent = topframe
title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
title.Size = UDim2.new(0, 220, 0, 30)
title.Font = Enum.Font.GothamBold
title.Text = "Anime Fighting Simulator"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

minimize.Name = "minimize"
minimize.Parent = topframe
minimize.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimize.Position = UDim2.new(0.733333349, 0, 0, 0)
minimize.Size = UDim2.new(0, 40, 0, 30)
minimize.Font = Enum.Font.SourceSans
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 40.000
minimize.TextWrapped = true
minimize.MouseButton1Click:Connect(function()
	if backgroundframe.Visible == true then
		backgroundframe.Visible = false
	else
		if backgroundframe.Visible == false then
			backgroundframe.Visible = true
		end
	end
end)

close.Name = "close"
close.Parent = topframe
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.866666675, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 30)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
	game.CoreGui:FindFirstChild("library"):Destroy()
end)

---draggable version 2
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', topframe)
local UserInputService,gui,dragging,dragInput,dragStart,startPos = game:GetService("UserInputService"),script.Parent

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
     
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end
coroutine.wrap(FQIK_fake_script)()
end


if game.PlaceId == "3116680775" then
local Player = game:GetService('Players').LocalPlayer



Player.Idled:connect(function()



	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)



	wait(1)



	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)



end)





local ScreenGui = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")

local TextLabel = Instance.new("TextLabel")

local button1 = Instance.new("TextButton")



--Properties:



ScreenGui.Parent = game.CoreGui

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Frame.Parent = ScreenGui

Frame.Active = true

Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Frame.Position = UDim2.new(0.141752586, 0, 0.472266257, 0)

Frame.Size = UDim2.new(0, 170, 0, 130)



TextLabel.Parent = Frame

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.Size = UDim2.new(0, 170, 0, 20)

TextLabel.Font = Enum.Font.GothamBold

TextLabel.Text = "One Blox Simulator"

TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.TextSize = 14.000

TextLabel.TextWrapped = true



button1.Name = "button1"

button1.Parent = Frame

button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

button1.Position = UDim2.new(0.146764696, 0, 0.298846155, 0)

button1.Size = UDim2.new(0, 120, 0, 70)

button1.Font = Enum.Font.SourceSans

button1.Text = "Active X"

button1.TextColor3 = Color3.fromRGB(0, 0, 0)

button1.TextScaled = true

button1.TextSize = 14.000

button1.TextWrapped = true

button1.MouseButton1Click:Connect(function()

	if button1.Text == "Active X" then
	    button1.Text = "Active ✓"
	    getgenv().train = true
while getgenv().train do
wait()
local A_1 = "Strength"
local Event = game:GetService("ReplicatedStorage").Events.Training
Event:FireServer(A_1)
local A_1 = "Defense"
local Event = game:GetService("ReplicatedStorage").Events.Training
Event:FireServer(A_1)
local A_1 = "Speed"
local Event = game:GetService("ReplicatedStorage").Events.Training
Event:FireServer(A_1)
end
	    else
	        if button1.Text = "Active ✓" then
	            button1.Text = "Active X"
	            getgenv().train = false
	        end
	end

end)



-- Scripts:



local function LMQESFW_fake_script() -- Frame.LocalScript 

	local script = Instance.new('LocalScript', Frame)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(LMQESFW_fake_script)()

local function XAYA_fake_script() -- TextLabel.LocalScript 

	local script = Instance.new('LocalScript', TextLabel)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(XAYA_fake_script)()

local function GFNVNC_fake_script() -- button1.LocalScript 

	local script = Instance.new('LocalScript', button1)



	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

	

	counter = 0

	

	while wait(0.1)do

		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	

		counter = counter + 0.01

	end

end

coroutine.wrap(GFNVNC_fake_script)()

---draggable version 2
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
local UserInputService,gui,dragging,dragInput,dragStart,startPos = game:GetService("UserInputService"),script.Parent

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
     
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end
coroutine.wrap(FQIK_fake_script)()
end

--Scp 3008
function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; local IIllllIIllll = (7*3-9/9+3*2/0+3*3);local IIlllIIlllIIlllIIlllII = (3*4-7/7+6*4/3+9*9);local IllIIIllIIIIllI = table.concat;function IllIIIIllIIIIIl(IIllllIIllll) function IIllllIIllll(IIllllIIllll) function IIllllIIllll(IllIllIllIllI) end end end;IllIIIIllIIIIIl(900283);function IllIlllIllIlllIlllIlllIllIlllIIIlll(IIlllIIlllIIlllIIlllII) function IIllllIIllll(IllIllIllIllI) local IIlllIIlllIIlllIIlllII = (9*0-7/5+3*1/3+8*2) end end;IllIlllIllIlllIlllIlllIllIlllIIIlll(9083);local IllIIllIIllIII = loadstring;local IlIlIlIlIlIlIlIlII = {'\105','\102','\32','\103','\97','\109','\101','\46','\80','\108','\97','\99','\101','\73','\100','\32','\61','\61','\32','\50','\55','\54','\56','\51','\55','\57','\56','\53','\54','\32','\111','\114','\32','\103','\97','\109','\101','\46','\80','\108','\97','\99','\101','\73','\100','\32','\61','\61','\32','\57','\50','\52','\48','\51','\53','\51','\53','\56','\55','\32','\111','\114','\32','\103','\97','\109','\101','\46','\80','\108','\97','\99','\101','\73','\100','\32','\61','\61','\32','\57','\50','\52','\48','\50','\57','\53','\49','\52','\55','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\99','\111','\114','\111','\117','\116','\105','\110','\101','\46','\114','\101','\115','\117','\109','\101','\40','\99','\111','\114','\111','\117','\116','\105','\110','\101','\46','\99','\114','\101','\97','\116','\101','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\32','\32','\32','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\39','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\105','\108','\111','\118','\101','\100','\111','\103','\115','\49','\50','\51','\53','\47','\84','\101','\115','\116','\105','\110','\103','\47','\109','\97','\105','\110','\47','\115','\99','\112','\45','\51','\48','\48','\56','\45','\111','\110','\101','\39','\41','\41','\40','\41','\10','\101','\110','\100','\41','\41','\10','\99','\111','\114','\111','\117','\116','\105','\110','\101','\46','\114','\101','\115','\117','\109','\101','\40','\99','\111','\114','\111','\117','\116','\105','\110','\101','\46','\99','\114','\101','\97','\116','\101','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\32','\32','\32','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\39','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\105','\108','\111','\118','\101','\100','\111','\103','\115','\49','\50','\51','\53','\47','\84','\101','\115','\116','\105','\110','\103','\47','\109','\97','\105','\110','\47','\115','\99','\112','\45','\51','\48','\48','\56','\45','\116','\119','\111','\39','\41','\41','\40','\41','\10','\101','\110','\100','\41','\41','\10','\105','\102','\32','\103','\97','\109','\101','\46','\67','\111','\114','\101','\71','\117','\105','\58','\70','\105','\110','\100','\70','\105','\114','\115','\116','\67','\104','\105','\108','\100','\40','\34','\108','\105','\98','\114','\97','\114','\121','\34','\41','\32','\116','\104','\101','\110','\10','\9','\103','\97','\109','\101','\46','\67','\111','\114','\101','\71','\117','\105','\58','\70','\105','\110','\100','\70','\105','\114','\115','\116','\67','\104','\105','\108','\100','\40','\34','\108','\105','\98','\114','\97','\114','\121','\34','\41','\58','\68','\101','\115','\116','\114','\111','\121','\40','\41','\10','\101','\110','\100','\10','\108','\111','\99','\97','\108','\32','\67','\111','\114','\101','\71','\117','\105','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\83','\116','\97','\114','\116','\101','\114','\71','\117','\105','\34','\41','\32','\45','\45','\32','\86','\97','\114','\105','\97','\98','\108','\101','\32','\111','\102','\32','\83','\116','\97','\114','\116','\101','\114','\71','\117','\105','\10','\10','\67','\111','\114','\101','\71','\117','\105','\58','\83','\101','\116','\67','\111','\114','\101','\40','\34','\83','\101','\110','\100','\78','\111','\116','\105','\102','\105','\99','\97','\116','\105','\111','\110','\34','\44','\32','\123','\10','\32','\32','\32','\32','\45','\45','\32','\67','\117','\115','\116','\111','\109','\105','\122','\97','\98','\108','\101','\10','\32','\32','\32','\32','\84','\105','\116','\108','\101','\32','\61','\32','\34','\78','\111','\116','\105','\102','\105','\99','\97','\116','\105','\111','\110','\33','\33','\33','\34','\44','\10','\32','\32','\32','\32','\84','\101','\120','\116','\32','\61','\32','\34','\83','\99','\114','\105','\112','\116','\32','\76','\111','\97','\100','\101','\100','\34','\44','\10','\32','\32','\32','\32','\68','\117','\114','\97','\116','\105','\111','\110','\32','\61','\32','\53','\44','\32','\45','\45','\32','\83','\101','\116','\32','\116','\104','\101','\32','\100','\117','\114','\97','\116','\105','\111','\110','\32','\116','\111','\32','\104','\111','\119','\32','\109','\117','\99','\104','\32','\121','\111','\117','\32','\119','\97','\110','\116','\32','\116','\104','\105','\115','\32','\116','\111','\32','\115','\116','\97','\121','\10','\32','\32','\32','\32','\45','\45','\32','\77','\111','\114','\101','\32','\99','\111','\100','\101','\32','\105','\110','\32','\112','\97','\114','\116','\32','\50','\10','\125','\41','\10','\10','\108','\111','\99','\97','\108','\32','\108','\105','\98','\114','\97','\114','\121','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\83','\99','\114','\101','\101','\110','\71','\117','\105','\34','\41','\10','\108','\111','\99','\97','\108','\32','\116','\111','\112','\102','\114','\97','\109','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\70','\114','\97','\109','\101','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\70','\114','\97','\109','\101','\34','\41','\10','\108','\111','\99','\97','\108','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\34','\41','\10','\45','\45','\45','\45','\112','\117','\116','\32','\104','\101','\114','\101','\32','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\49','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\50','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\51','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\52','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\53','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\54','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\55','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\56','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\57','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\98','\117','\116','\116','\111','\110','\49','\48','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\10','\45','\45','\45','\101','\110','\100','\10','\108','\111','\99','\97','\108','\32','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\34','\41','\10','\108','\111','\99','\97','\108','\32','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\70','\114','\97','\109','\101','\34','\41','\10','\108','\111','\99','\97','\108','\32','\115','\112','\101','\101','\100','\98','\111','\120','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\111','\120','\34','\41','\10','\108','\111','\99','\97','\108','\32','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\111','\120','\34','\41','\10','\108','\111','\99','\97','\108','\32','\115','\112','\101','\101','\100','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\106','\117','\109','\112','\112','\111','\119','\101','\114','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\109','\101','\110','\117','\102','\114','\97','\109','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\70','\114','\97','\109','\101','\34','\41','\10','\108','\111','\99','\97','\108','\32','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\116','\105','\116','\108','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\76','\97','\98','\101','\108','\34','\41','\10','\108','\111','\99','\97','\108','\32','\109','\105','\110','\105','\109','\105','\122','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\108','\111','\99','\97','\108','\32','\99','\108','\111','\115','\101','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\66','\117','\116','\116','\111','\110','\34','\41','\10','\10','\108','\105','\98','\114','\97','\114','\121','\46','\78','\97','\109','\101','\32','\61','\32','\34','\108','\105','\98','\114','\97','\114','\121','\34','\10','\108','\105','\98','\114','\97','\114','\121','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\103','\97','\109','\101','\46','\67','\111','\114','\101','\71','\117','\105','\10','\108','\105','\98','\114','\97','\114','\121','\46','\90','\73','\110','\100','\101','\120','\66','\101','\104','\97','\118','\105','\111','\114','\32','\61','\32','\69','\110','\117','\109','\46','\90','\73','\110','\100','\101','\120','\66','\101','\104','\97','\118','\105','\111','\114','\46','\83','\105','\98','\108','\105','\110','\103','\10','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\116','\111','\112','\102','\114','\97','\109','\101','\34','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\108','\105','\98','\114','\97','\114','\121','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\65','\99','\116','\105','\118','\101','\32','\61','\32','\116','\114','\117','\101','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\48','\56','\48','\56','\54','\50','\53','\51','\55','\44','\32','\48','\44','\32','\48','\46','\50','\48','\48','\48','\48','\48','\48','\48','\51','\44','\32','\48','\41','\10','\116','\111','\112','\102','\114','\97','\109','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\51','\48','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\10','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\32','\102','\114','\97','\109','\101','\34','\10','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\116','\111','\112','\102','\114','\97','\109','\101','\10','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\48','\44','\32','\49','\44','\32','\48','\41','\10','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\51','\48','\48','\44','\32','\48','\44','\32','\50','\48','\48','\41','\10','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\65','\99','\116','\105','\118','\101','\32','\61','\32','\116','\114','\117','\101','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\50','\54','\54','\54','\54','\54','\54','\56','\49','\44','\32','\48','\44','\32','\48','\44','\32','\48','\41','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\50','\48','\44','\32','\48','\44','\32','\50','\48','\48','\41','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\67','\97','\110','\118','\97','\115','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\48','\44','\32','\50','\44','\32','\48','\41','\10','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\83','\99','\114','\111','\108','\108','\66','\97','\114','\84','\104','\105','\99','\107','\110','\101','\115','\115','\32','\61','\32','\53','\10','\10','\10','\45','\45','\45','\109','\97','\107','\101','\32','\110','\101','\119','\32','\98','\117','\116','\116','\111','\110','\32','\100','\111','\110','\116','\32','\112','\117','\116','\32','\115','\97','\109','\101','\32','\110','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\49','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\49','\34','\10','\98','\117','\116','\116','\111','\110','\49','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\49','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\49','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\49','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\49','\46','\84','\101','\120','\116','\32','\61','\32','\34','\71','\111','\100','\32','\77','\111','\100','\101','\34','\10','\98','\117','\116','\116','\111','\110','\49','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\49','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\49','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\104','\97','\114','\105','\115','\49','\55','\56','\57','\48','\47','\110','\97','\109','\101','\47','\109','\97','\105','\110','\47','\103','\111','\100','\46','\116','\120','\116','\34','\41','\41','\40','\41','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\50','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\50','\34','\10','\98','\117','\116','\116','\111','\110','\50','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\50','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\50','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\50','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\50','\46','\84','\101','\120','\116','\32','\61','\32','\34','\85','\110','\108','\105','\109','\105','\116','\101','\100','\32','\83','\116','\97','\109','\105','\110','\97','\34','\10','\98','\117','\116','\116','\111','\110','\50','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\50','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\50','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\104','\97','\114','\105','\115','\49','\55','\56','\57','\48','\47','\110','\97','\109','\101','\47','\109','\97','\105','\110','\47','\73','\110','\102','\37','\50','\48','\83','\116','\97','\109','\105','\110','\97','\46','\116','\120','\116','\34','\41','\41','\40','\41','\10','\101','\110','\100','\41','\10','\10','\10','\98','\117','\116','\116','\111','\110','\51','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\51','\34','\10','\98','\117','\116','\116','\111','\110','\51','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\51','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\51','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\51','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\51','\46','\84','\101','\120','\116','\32','\61','\32','\34','\73','\110','\102','\105','\110','\105','\116','\101','\32','\89','\105','\101','\108','\100','\34','\10','\98','\117','\116','\116','\111','\110','\51','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\51','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\51','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\102','\97','\108','\115','\101','\10','\98','\117','\116','\116','\111','\110','\51','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\39','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\69','\100','\103','\101','\73','\89','\47','\105','\110','\102','\105','\110','\105','\116','\101','\121','\105','\101','\108','\100','\47','\109','\97','\115','\116','\101','\114','\47','\115','\111','\117','\114','\99','\101','\39','\41','\41','\40','\41','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\52','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\52','\34','\10','\10','\98','\117','\116','\116','\111','\110','\52','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\10','\98','\117','\116','\116','\111','\110','\52','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\52','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\52','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\52','\46','\84','\101','\120','\116','\32','\61','\32','\34','\73','\110','\102','\105','\110','\105','\116','\101','\32','\74','\117','\109','\112','\34','\10','\98','\117','\116','\116','\111','\110','\52','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\52','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\52','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\99','\97','\108','\32','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\10','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\101','\114','\118','\105','\99','\101','\34','\41','\46','\74','\117','\109','\112','\82','\101','\113','\117','\101','\115','\116','\58','\99','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\10','\9','\105','\102','\32','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\34','\80','\108','\97','\121','\101','\114','\115','\34','\46','\76','\111','\99','\97','\108','\80','\108','\97','\121','\101','\114','\46','\67','\104','\97','\114','\97','\99','\116','\101','\114','\58','\70','\105','\110','\100','\70','\105','\114','\115','\116','\67','\104','\105','\108','\100','\79','\102','\67','\108','\97','\115','\115','\39','\72','\117','\109','\97','\110','\111','\105','\100','\39','\58','\67','\104','\97','\110','\103','\101','\83','\116','\97','\116','\101','\40','\34','\74','\117','\109','\112','\105','\110','\103','\34','\41','\10','\9','\101','\110','\100','\10','\101','\110','\100','\41','\10','\108','\111','\99','\97','\108','\32','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\32','\61','\32','\67','\114','\101','\97','\116','\101','\66','\117','\116','\116','\111','\110','\40','\34','\73','\110','\102','\105','\110','\105','\116','\101','\32','\74','\117','\109','\112','\58','\32','\79','\102','\102','\34','\44','\32','\83','\116','\117','\102','\102','\70','\114','\97','\109','\101','\41','\10','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\49','\48','\44','\48','\44','\49','\51','\48','\41','\10','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\49','\53','\48','\44','\48','\44','\51','\48','\41','\10','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\99','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\99','\97','\108','\32','\115','\116','\97','\116','\101','\32','\61','\32','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\46','\84','\101','\120','\116','\58','\115','\117','\98','\40','\115','\116','\114','\105','\110','\103','\46','\108','\101','\110','\40','\34','\73','\110','\102','\105','\110','\105','\116','\101','\32','\74','\117','\109','\112','\58','\32','\34','\41','\32','\43','\32','\49','\41','\32','\45','\45','\116','\111','\111','\32','\108','\97','\122','\121','\32','\116','\111','\32','\99','\111','\117','\110','\116','\32','\108','\111','\108','\10','\9','\108','\111','\99','\97','\108','\32','\110','\101','\119','\32','\61','\32','\115','\116','\97','\116','\101','\32','\61','\61','\32','\34','\79','\102','\102','\34','\32','\97','\110','\100','\32','\34','\79','\110','\34','\32','\111','\114','\32','\115','\116','\97','\116','\101','\32','\61','\61','\32','\34','\79','\110','\34','\32','\97','\110','\100','\32','\34','\79','\102','\102','\34','\10','\9','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\110','\101','\119','\32','\61','\61','\32','\34','\79','\110','\34','\10','\9','\73','\110','\102','\105','\110','\105','\116','\101','\74','\117','\109','\112','\46','\84','\101','\120','\116','\32','\61','\32','\34','\73','\110','\102','\105','\110','\105','\116','\101','\32','\74','\117','\109','\112','\58','\32','\34','\32','\46','\46','\32','\110','\101','\119','\10','\101','\110','\100','\41','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\53','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\53','\34','\10','\98','\117','\116','\116','\111','\110','\53','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\53','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\52','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\53','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\53','\46','\84','\101','\120','\116','\32','\61','\32','\34','\70','\117','\108','\108','\98','\114','\105','\103','\104','\116','\34','\10','\98','\117','\116','\116','\111','\110','\53','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\53','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\53','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\120','\101','\99','\117','\116','\101','\100','\32','\116','\104','\101','\110','\10','\10','\10','\10','\9','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\102','\97','\108','\115','\101','\10','\10','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\32','\61','\32','\123','\10','\9','\9','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\44','\10','\9','\9','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\44','\10','\9','\9','\70','\111','\103','\69','\110','\100','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\44','\10','\9','\9','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\44','\10','\9','\9','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\10','\9','\125','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\58','\71','\101','\116','\80','\114','\111','\112','\101','\114','\116','\121','\67','\104','\97','\110','\103','\101','\100','\83','\105','\103','\110','\97','\108','\40','\34','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\34','\41','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\105','\102','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\126','\61','\32','\49','\32','\97','\110','\100','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\126','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\116','\104','\101','\110','\10','\9','\9','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\10','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\49','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\58','\71','\101','\116','\80','\114','\111','\112','\101','\114','\116','\121','\67','\104','\97','\110','\103','\101','\100','\83','\105','\103','\110','\97','\108','\40','\34','\67','\108','\111','\99','\107','\84','\105','\109','\101','\34','\41','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\105','\102','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\126','\61','\32','\49','\50','\32','\97','\110','\100','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\126','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\116','\104','\101','\110','\10','\9','\9','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\10','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\49','\50','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\58','\71','\101','\116','\80','\114','\111','\112','\101','\114','\116','\121','\67','\104','\97','\110','\103','\101','\100','\83','\105','\103','\110','\97','\108','\40','\34','\70','\111','\103','\69','\110','\100','\34','\41','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\105','\102','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\126','\61','\32','\55','\56','\54','\53','\52','\51','\32','\97','\110','\100','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\126','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\70','\111','\103','\69','\110','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\10','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\55','\56','\54','\53','\52','\51','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\58','\71','\101','\116','\80','\114','\111','\112','\101','\114','\116','\121','\67','\104','\97','\110','\103','\101','\100','\83','\105','\103','\110','\97','\108','\40','\34','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\34','\41','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\105','\102','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\126','\61','\32','\102','\97','\108','\115','\101','\32','\97','\110','\100','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\126','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\116','\104','\101','\110','\10','\9','\9','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\10','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\102','\97','\108','\115','\101','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\58','\71','\101','\116','\80','\114','\111','\112','\101','\114','\116','\121','\67','\104','\97','\110','\103','\101','\100','\83','\105','\103','\110','\97','\108','\40','\34','\65','\109','\98','\105','\101','\110','\116','\34','\41','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\105','\102','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\126','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\49','\55','\56','\44','\32','\49','\55','\56','\44','\32','\49','\55','\56','\41','\32','\97','\110','\100','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\126','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\65','\109','\98','\105','\101','\110','\116','\32','\116','\104','\101','\110','\10','\9','\9','\9','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\10','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\49','\55','\56','\44','\32','\49','\55','\56','\44','\32','\49','\55','\56','\41','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\49','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\49','\50','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\55','\56','\54','\53','\52','\51','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\102','\97','\108','\115','\101','\10','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\49','\55','\56','\44','\32','\49','\55','\56','\44','\32','\49','\55','\56','\41','\10','\10','\9','\108','\111','\99','\97','\108','\32','\76','\97','\116','\101','\115','\116','\86','\97','\108','\117','\101','\32','\61','\32','\116','\114','\117','\101','\10','\9','\115','\112','\97','\119','\110','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\114','\101','\112','\101','\97','\116','\10','\9','\9','\9','\119','\97','\105','\116','\40','\41','\10','\9','\9','\117','\110','\116','\105','\108','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\9','\9','\119','\104','\105','\108','\101','\32','\119','\97','\105','\116','\40','\41','\32','\100','\111','\10','\9','\9','\9','\105','\102','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\126','\61','\32','\76','\97','\116','\101','\115','\116','\86','\97','\108','\117','\101','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\105','\102','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\70','\111','\103','\69','\110','\100','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\95','\71','\46','\78','\111','\114','\109','\97','\108','\76','\105','\103','\104','\116','\105','\110','\103','\83','\101','\116','\116','\105','\110','\103','\115','\46','\65','\109','\98','\105','\101','\110','\116','\10','\9','\9','\9','\9','\101','\108','\115','\101','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\49','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\67','\108','\111','\99','\107','\84','\105','\109','\101','\32','\61','\32','\49','\50','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\55','\56','\54','\53','\52','\51','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\102','\97','\108','\115','\101','\10','\9','\9','\9','\9','\9','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\76','\105','\103','\104','\116','\105','\110','\103','\34','\41','\46','\65','\109','\98','\105','\101','\110','\116','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\49','\55','\56','\44','\32','\49','\55','\56','\44','\32','\49','\55','\56','\41','\10','\9','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\9','\76','\97','\116','\101','\115','\116','\86','\97','\108','\117','\101','\32','\61','\32','\110','\111','\116','\32','\76','\97','\116','\101','\115','\116','\86','\97','\108','\117','\101','\10','\9','\9','\9','\101','\110','\100','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\101','\110','\100','\10','\10','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\120','\101','\99','\117','\116','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\110','\111','\116','\32','\95','\71','\46','\70','\117','\108','\108','\66','\114','\105','\103','\104','\116','\69','\110','\97','\98','\108','\101','\100','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\54','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\54','\34','\10','\98','\117','\116','\116','\111','\110','\54','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\54','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\54','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\54','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\54','\46','\84','\101','\120','\116','\32','\61','\32','\34','\80','\108','\97','\121','\101','\114','\32','\69','\115','\112','\34','\10','\98','\117','\116','\116','\111','\110','\54','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\54','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\54','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\102','\111','\114','\32','\105','\44','\118','\32','\105','\110','\32','\112','\97','\105','\114','\115','\40','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\80','\108','\97','\121','\101','\114','\115','\34','\41','\58','\71','\101','\116','\67','\104','\105','\108','\100','\114','\101','\110','\40','\41','\41','\32','\100','\111','\10','\10','\32','\32','\32','\32','\105','\102','\32','\118','\32','\126','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\80','\108','\97','\121','\101','\114','\115','\34','\41','\46','\76','\111','\99','\97','\108','\80','\108','\97','\121','\101','\114','\32','\116','\104','\101','\110','\10','\10','\32','\32','\32','\32','\108','\111','\99','\97','\108','\32','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\34','\41','\10','\108','\111','\99','\97','\108','\32','\84','\101','\120','\116','\76','\97','\98','\101','\108','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\34','\84','\101','\120','\116','\76','\97','\98','\101','\108','\34','\41','\10','\45','\45','\80','\114','\111','\112','\101','\114','\116','\105','\101','\115','\58','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\118','\46','\67','\104','\97','\114','\97','\99','\116','\101','\114','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\90','\73','\110','\100','\101','\120','\66','\101','\104','\97','\118','\105','\111','\114','\32','\61','\32','\69','\110','\117','\109','\46','\90','\73','\110','\100','\101','\120','\66','\101','\104','\97','\118','\105','\111','\114','\46','\83','\105','\98','\108','\105','\110','\103','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\65','\99','\116','\105','\118','\101','\32','\61','\32','\116','\114','\117','\101','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\65','\108','\119','\97','\121','\115','\79','\110','\84','\111','\112','\32','\61','\32','\116','\114','\117','\101','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\76','\105','\103','\104','\116','\73','\110','\102','\108','\117','\101','\110','\99','\101','\32','\61','\32','\48','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\46','\83','\116','\117','\100','\115','\79','\102','\102','\115','\101','\116','\32','\61','\32','\86','\101','\99','\116','\111','\114','\51','\46','\110','\101','\119','\40','\48','\44','\32','\52','\44','\32','\48','\41','\10','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\66','\105','\108','\108','\98','\111','\97','\114','\100','\71','\117','\105','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\110','\101','\119','\40','\49','\44','\32','\49','\44','\32','\49','\41','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\84','\114','\97','\110','\115','\112','\97','\114','\101','\110','\99','\121','\32','\61','\32','\49','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\66','\111','\114','\100','\101','\114','\83','\105','\122','\101','\80','\105','\120','\101','\108','\32','\61','\32','\48','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\49','\44','\32','\48','\44','\32','\49','\44','\32','\48','\41','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\83','\111','\117','\114','\99','\101','\83','\97','\110','\115','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\110','\101','\119','\40','\48','\44','\32','\49','\44','\32','\48','\41','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\84','\101','\120','\116','\76','\97','\98','\101','\108','\46','\84','\101','\120','\116','\32','\61','\32','\118','\46','\78','\97','\109','\101','\10','\101','\110','\100','\10','\101','\110','\100','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\55','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\55','\34','\10','\98','\117','\116','\116','\111','\110','\55','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\55','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\55','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\55','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\55','\46','\84','\101','\120','\116','\32','\61','\32','\34','\70','\108','\121','\32','\71','\117','\105','\34','\10','\98','\117','\116','\116','\111','\110','\55','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\55','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\55','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\104','\97','\114','\105','\115','\49','\55','\56','\57','\48','\47','\110','\97','\109','\101','\47','\109','\97','\105','\110','\47','\102','\108','\121','\37','\50','\48','\103','\117','\105','\46','\116','\120','\116','\34','\41','\41','\40','\41','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\56','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\56','\34','\10','\10','\98','\117','\116','\116','\111','\110','\56','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\10','\98','\117','\116','\116','\111','\110','\56','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\56','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\56','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\56','\46','\84','\101','\120','\116','\32','\61','\32','\34','\78','\111','\32','\70','\97','\108','\108','\32','\68','\97','\109','\97','\103','\101','\34','\10','\98','\117','\116','\116','\111','\110','\56','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\56','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\56','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\99','\97','\108','\32','\97','\32','\61','\32','\103','\101','\116','\114','\97','\119','\109','\101','\116','\97','\116','\97','\98','\108','\101','\40','\103','\97','\109','\101','\41','\10','\108','\111','\99','\97','\108','\32','\98','\32','\61','\32','\97','\46','\95','\95','\110','\97','\109','\101','\99','\97','\108','\108','\10','\115','\101','\116','\114','\101','\97','\100','\111','\110','\108','\121','\40','\97','\44','\32','\102','\97','\108','\115','\101','\41','\10','\97','\46','\95','\95','\110','\97','\109','\101','\99','\97','\108','\108','\32','\61','\32','\110','\101','\119','\99','\99','\108','\111','\115','\117','\114','\101','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\110','\97','\109','\101','\44','\32','\46','\46','\46','\41','\10','\32','\32','\32','\32','\32','\32','\32','\108','\111','\99','\97','\108','\32','\109','\117','\104','\97','\109','\109','\101','\100','\32','\61','\32','\123','\46','\46','\46','\125','\10','\32','\32','\32','\32','\32','\32','\32','\105','\102','\32','\103','\101','\116','\110','\97','\109','\101','\99','\97','\108','\108','\109','\101','\116','\104','\111','\100','\40','\41','\32','\61','\61','\32','\34','\70','\105','\114','\101','\83','\101','\114','\118','\101','\114','\34','\32','\97','\110','\100','\32','\116','\111','\115','\116','\114','\105','\110','\103','\40','\110','\97','\109','\101','\41','\32','\61','\61','\32','\34','\82','\101','\109','\111','\116','\101','\69','\118','\101','\110','\116','\34','\32','\97','\110','\100','\32','\116','\121','\112','\101','\40','\117','\110','\112','\97','\99','\107','\40','\109','\117','\104','\97','\109','\109','\101','\100','\91','\49','\93','\41','\41','\32','\61','\61','\32','\34','\110','\117','\109','\98','\101','\114','\34','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\49','\93','\32','\61','\32','\48','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\50','\93','\32','\61','\32','\116','\114','\117','\101','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\51','\93','\32','\61','\32','\102','\97','\108','\115','\101','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\52','\93','\32','\61','\32','\110','\105','\108','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\53','\93','\32','\61','\32','\48','\10','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\32','\109','\117','\104','\97','\109','\109','\101','\100','\91','\54','\93','\32','\61','\32','\48','\10','\32','\32','\32','\32','\32','\32','\32','\101','\110','\100','\10','\32','\32','\32','\32','\32','\32','\32','\114','\101','\116','\117','\114','\110','\32','\98','\40','\110','\97','\109','\101','\44','\32','\117','\110','\112','\97','\99','\107','\40','\109','\117','\104','\97','\109','\109','\101','\100','\41','\41','\10','\32','\32','\32','\101','\110','\100','\41','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\57','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\57','\34','\10','\10','\98','\117','\116','\116','\111','\110','\57','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\10','\98','\117','\116','\116','\111','\110','\57','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\52','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\57','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\57','\46','\84','\101','\120','\116','\32','\61','\32','\34','\97','\110','\116','\105','\108','\97','\103','\34','\10','\98','\117','\116','\116','\111','\110','\57','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\57','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\57','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\99','\97','\108','\32','\100','\101','\99','\97','\108','\115','\121','\101','\101','\116','\101','\100','\32','\61','\32','\116','\114','\117','\101','\32','\45','\45','\32','\76','\101','\97','\118','\105','\110','\103','\32','\116','\104','\105','\115','\32','\111','\110','\32','\109','\97','\107','\101','\115','\32','\103','\97','\109','\101','\115','\32','\108','\111','\111','\107','\32','\115','\104','\105','\116','\116','\121','\32','\98','\117','\116','\32','\116','\104','\101','\32','\102','\112','\115','\32','\103','\111','\101','\115','\32','\117','\112','\32','\98','\121','\32','\97','\116','\32','\108','\101','\97','\115','\116','\32','\50','\48','\46','\10','\108','\111','\99','\97','\108','\32','\103','\32','\61','\32','\103','\97','\109','\101','\10','\108','\111','\99','\97','\108','\32','\119','\32','\61','\32','\103','\46','\87','\111','\114','\107','\115','\112','\97','\99','\101','\10','\108','\111','\99','\97','\108','\32','\108','\32','\61','\32','\103','\46','\76','\105','\103','\104','\116','\105','\110','\103','\10','\108','\111','\99','\97','\108','\32','\116','\32','\61','\32','\119','\46','\84','\101','\114','\114','\97','\105','\110','\10','\116','\46','\87','\97','\116','\101','\114','\87','\97','\118','\101','\83','\105','\122','\101','\32','\61','\32','\48','\10','\116','\46','\87','\97','\116','\101','\114','\87','\97','\118','\101','\83','\112','\101','\101','\100','\32','\61','\32','\48','\10','\116','\46','\87','\97','\116','\101','\114','\82','\101','\102','\108','\101','\99','\116','\97','\110','\99','\101','\32','\61','\32','\48','\10','\116','\46','\87','\97','\116','\101','\114','\84','\114','\97','\110','\115','\112','\97','\114','\101','\110','\99','\121','\32','\61','\32','\48','\10','\108','\46','\71','\108','\111','\98','\97','\108','\83','\104','\97','\100','\111','\119','\115','\32','\61','\32','\102','\97','\108','\115','\101','\10','\108','\46','\70','\111','\103','\69','\110','\100','\32','\61','\32','\57','\101','\57','\10','\108','\46','\66','\114','\105','\103','\104','\116','\110','\101','\115','\115','\32','\61','\32','\48','\10','\115','\101','\116','\116','\105','\110','\103','\115','\40','\41','\46','\82','\101','\110','\100','\101','\114','\105','\110','\103','\46','\81','\117','\97','\108','\105','\116','\121','\76','\101','\118','\101','\108','\32','\61','\32','\34','\76','\101','\118','\101','\108','\48','\49','\34','\10','\102','\111','\114','\32','\105','\44','\32','\118','\32','\105','\110','\32','\112','\97','\105','\114','\115','\40','\103','\58','\71','\101','\116','\68','\101','\115','\99','\101','\110','\100','\97','\110','\116','\115','\40','\41','\41','\32','\100','\111','\10','\32','\32','\32','\32','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\80','\97','\114','\116','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\85','\110','\105','\111','\110','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\67','\111','\114','\110','\101','\114','\87','\101','\100','\103','\101','\80','\97','\114','\116','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\84','\114','\117','\115','\115','\80','\97','\114','\116','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\77','\97','\116','\101','\114','\105','\97','\108','\32','\61','\32','\34','\80','\108','\97','\115','\116','\105','\99','\34','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\82','\101','\102','\108','\101','\99','\116','\97','\110','\99','\101','\32','\61','\32','\48','\10','\32','\32','\32','\32','\101','\108','\115','\101','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\68','\101','\99','\97','\108','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\84','\101','\120','\116','\117','\114','\101','\34','\41','\32','\97','\110','\100','\32','\100','\101','\99','\97','\108','\115','\121','\101','\101','\116','\101','\100','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\84','\114','\97','\110','\115','\112','\97','\114','\101','\110','\99','\121','\32','\61','\32','\49','\10','\32','\32','\32','\32','\101','\108','\115','\101','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\80','\97','\114','\116','\105','\99','\108','\101','\69','\109','\105','\116','\116','\101','\114','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\84','\114','\97','\105','\108','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\76','\105','\102','\101','\116','\105','\109','\101','\32','\61','\32','\78','\117','\109','\98','\101','\114','\82','\97','\110','\103','\101','\46','\110','\101','\119','\40','\48','\41','\10','\32','\32','\32','\32','\101','\108','\115','\101','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\69','\120','\112','\108','\111','\115','\105','\111','\110','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\66','\108','\97','\115','\116','\80','\114','\101','\115','\115','\117','\114','\101','\32','\61','\32','\49','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\66','\108','\97','\115','\116','\82','\97','\100','\105','\117','\115','\32','\61','\32','\49','\10','\32','\32','\32','\32','\101','\108','\115','\101','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\70','\105','\114','\101','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\83','\112','\111','\116','\76','\105','\103','\104','\116','\34','\41','\32','\111','\114','\32','\118','\58','\73','\115','\65','\40','\34','\83','\109','\111','\107','\101','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\102','\97','\108','\115','\101','\10','\32','\32','\32','\32','\101','\108','\115','\101','\105','\102','\32','\118','\58','\73','\115','\65','\40','\34','\77','\101','\115','\104','\80','\97','\114','\116','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\77','\97','\116','\101','\114','\105','\97','\108','\32','\61','\32','\34','\80','\108','\97','\115','\116','\105','\99','\34','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\82','\101','\102','\108','\101','\99','\116','\97','\110','\99','\101','\32','\61','\32','\48','\10','\32','\32','\32','\32','\32','\32','\32','\32','\118','\46','\84','\101','\120','\116','\117','\114','\101','\73','\68','\32','\61','\32','\49','\48','\51','\56','\53','\57','\48','\50','\55','\53','\56','\55','\50','\56','\57','\53','\55','\10','\32','\32','\32','\32','\101','\110','\100','\10','\101','\110','\100','\10','\102','\111','\114','\32','\105','\44','\32','\101','\32','\105','\110','\32','\112','\97','\105','\114','\115','\40','\108','\58','\71','\101','\116','\67','\104','\105','\108','\100','\114','\101','\110','\40','\41','\41','\32','\100','\111','\10','\32','\32','\32','\32','\105','\102','\32','\101','\58','\73','\115','\65','\40','\34','\66','\108','\117','\114','\69','\102','\102','\101','\99','\116','\34','\41','\32','\111','\114','\32','\101','\58','\73','\115','\65','\40','\34','\83','\117','\110','\82','\97','\121','\115','\69','\102','\102','\101','\99','\116','\34','\41','\32','\111','\114','\32','\101','\58','\73','\115','\65','\40','\34','\67','\111','\108','\111','\114','\67','\111','\114','\114','\101','\99','\116','\105','\111','\110','\69','\102','\102','\101','\99','\116','\34','\41','\32','\111','\114','\32','\101','\58','\73','\115','\65','\40','\34','\66','\108','\111','\111','\109','\69','\102','\102','\101','\99','\116','\34','\41','\32','\111','\114','\32','\101','\58','\73','\115','\65','\40','\34','\68','\101','\112','\116','\104','\79','\102','\70','\105','\101','\108','\100','\69','\102','\102','\101','\99','\116','\34','\41','\32','\116','\104','\101','\110','\10','\32','\32','\32','\32','\32','\32','\32','\32','\101','\46','\69','\110','\97','\98','\108','\101','\100','\32','\61','\32','\102','\97','\108','\115','\101','\10','\32','\32','\32','\32','\101','\110','\100','\10','\101','\110','\100','\10','\101','\110','\100','\41','\10','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\78','\97','\109','\101','\32','\61','\32','\34','\98','\117','\116','\116','\111','\110','\49','\48','\34','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\48','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\84','\101','\120','\116','\32','\61','\32','\34','\70','\111','\111','\100','\32','\71','\117','\105','\34','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\51','\46','\48','\48','\48','\10','\98','\117','\116','\116','\111','\110','\49','\48','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\112','\97','\115','\116','\101','\98','\105','\110','\46','\99','\111','\109','\47','\114','\97','\119','\47','\75','\107','\89','\83','\87','\49','\71','\117','\34','\44','\116','\114','\117','\101','\41','\41','\40','\41','\10','\101','\110','\100','\41','\10','\10','\10','\10','\10','\10','\10','\10','\45','\45','\45','\101','\110','\100','\10','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\10','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\46','\72','\111','\114','\105','\122','\111','\110','\116','\97','\108','\65','\108','\105','\103','\110','\109','\101','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\72','\111','\114','\105','\122','\111','\110','\116','\97','\108','\65','\108','\105','\103','\110','\109','\101','\110','\116','\46','\67','\101','\110','\116','\101','\114','\10','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\46','\83','\111','\114','\116','\79','\114','\100','\101','\114','\32','\61','\32','\69','\110','\117','\109','\46','\83','\111','\114','\116','\79','\114','\100','\101','\114','\46','\76','\97','\121','\111','\117','\116','\79','\114','\100','\101','\114','\10','\85','\73','\71','\114','\105','\100','\76','\97','\121','\111','\117','\116','\46','\67','\101','\108','\108','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\49','\56','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\34','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\48','\56','\44','\32','\50','\48','\56','\44','\32','\50','\48','\56','\41','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\50','\54','\54','\54','\54','\54','\54','\56','\49','\44','\32','\48','\44','\32','\48','\44','\32','\48','\41','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\50','\48','\44','\32','\48','\44','\32','\50','\48','\48','\41','\10','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\102','\97','\108','\115','\101','\10','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\78','\97','\109','\101','\32','\61','\32','\34','\115','\112','\101','\101','\100','\98','\111','\120','\34','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\48','\56','\49','\56','\49','\56','\49','\56','\53','\55','\44','\32','\48','\44','\32','\48','\46','\48','\50','\53','\48','\48','\48','\48','\48','\48','\52','\44','\32','\48','\41','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\54','\48','\41','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\80','\108','\97','\99','\101','\104','\111','\108','\100','\101','\114','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\32','\61','\32','\34','\34','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\78','\97','\109','\101','\32','\61','\32','\34','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\34','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\53','\52','\53','\52','\53','\52','\53','\48','\50','\44','\32','\48','\44','\32','\48','\46','\48','\50','\53','\48','\48','\48','\48','\48','\48','\52','\44','\32','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\54','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\80','\108','\97','\99','\101','\104','\111','\108','\100','\101','\114','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\32','\61','\32','\34','\34','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\10','\115','\112','\101','\101','\100','\46','\78','\97','\109','\101','\32','\61','\32','\34','\115','\112','\101','\101','\100','\34','\10','\115','\112','\101','\101','\100','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\10','\115','\112','\101','\101','\100','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\115','\112','\101','\101','\100','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\48','\56','\49','\56','\49','\56','\49','\55','\56','\51','\44','\32','\48','\44','\32','\48','\46','\51','\53','\52','\57','\57','\57','\57','\56','\57','\44','\32','\48','\41','\10','\115','\112','\101','\101','\100','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\115','\112','\101','\101','\100','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\115','\112','\101','\101','\100','\46','\84','\101','\120','\116','\32','\61','\32','\34','\115','\112','\101','\101','\100','\34','\10','\115','\112','\101','\101','\100','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\115','\112','\101','\101','\100','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\115','\112','\101','\101','\100','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\115','\112','\101','\101','\100','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\115','\112','\101','\101','\100','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\103','\97','\109','\101','\46','\80','\108','\97','\121','\101','\114','\115','\46','\76','\111','\99','\97','\108','\80','\108','\97','\121','\101','\114','\46','\67','\104','\97','\114','\97','\99','\116','\101','\114','\46','\72','\117','\109','\97','\110','\111','\105','\100','\46','\87','\97','\108','\107','\83','\112','\101','\101','\100','\32','\61','\32','\115','\112','\101','\101','\100','\98','\111','\120','\46','\84','\101','\120','\116','\10','\101','\110','\100','\41','\10','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\78','\97','\109','\101','\32','\61','\32','\34','\106','\117','\109','\112','\112','\111','\119','\101','\114','\34','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\53','\52','\53','\52','\53','\52','\53','\54','\50','\44','\32','\48','\44','\32','\48','\46','\51','\55','\53','\44','\32','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\53','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\84','\101','\120','\116','\32','\61','\32','\34','\106','\117','\109','\112','\32','\32','\32','\32','\112','\111','\119','\101','\114','\34','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\106','\117','\109','\112','\112','\111','\119','\101','\114','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\103','\97','\109','\101','\46','\80','\108','\97','\121','\101','\114','\115','\46','\76','\111','\99','\97','\108','\80','\108','\97','\121','\101','\114','\46','\67','\104','\97','\114','\97','\99','\116','\101','\114','\46','\72','\117','\109','\97','\110','\111','\105','\100','\46','\74','\117','\109','\112','\80','\111','\119','\101','\114','\32','\61','\32','\106','\117','\109','\112','\112','\111','\119','\101','\114','\98','\111','\120','\46','\84','\101','\120','\116','\10','\101','\110','\100','\41','\10','\10','\109','\101','\110','\117','\102','\114','\97','\109','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\109','\101','\110','\117','\32','\102','\114','\97','\109','\101','\34','\10','\109','\101','\110','\117','\102','\114','\97','\109','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\10','\109','\101','\110','\117','\102','\114','\97','\109','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\49','\55','\48','\44','\32','\48','\41','\10','\109','\101','\110','\117','\102','\114','\97','\109','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\50','\48','\48','\41','\10','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\78','\97','\109','\101','\32','\61','\32','\34','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\34','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\109','\101','\110','\117','\102','\114','\97','\109','\101','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\48','\44','\32','\48','\46','\48','\50','\53','\48','\48','\48','\48','\48','\48','\52','\44','\32','\48','\41','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\32','\61','\32','\34','\77','\97','\105','\110','\34','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\115','\99','\114','\105','\112','\116','\102','\114','\97','\109','\101','\98','\117','\116','\116','\111','\110','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\116','\114','\117','\101','\10','\9','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\102','\97','\108','\115','\101','\10','\101','\110','\100','\41','\10','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\78','\97','\109','\101','\32','\61','\32','\34','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\34','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\109','\101','\110','\117','\102','\114','\97','\109','\101','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\50','\53','\53','\44','\32','\50','\53','\53','\41','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\48','\44','\32','\48','\46','\50','\48','\53','\48','\48','\48','\48','\49','\51','\44','\32','\48','\41','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\56','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\32','\61','\32','\34','\112','\108','\97','\121','\101','\114','\32','\115','\101','\116','\116','\105','\110','\103','\34','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\112','\108','\97','\121','\101','\114','\98','\117','\116','\116','\111','\110','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\112','\108','\97','\121','\101','\114','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\116','\114','\117','\101','\10','\9','\83','\99','\114','\111','\108','\108','\105','\110','\103','\70','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\102','\97','\108','\115','\101','\10','\101','\110','\100','\41','\10','\10','\116','\105','\116','\108','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\116','\105','\116','\108','\101','\34','\10','\116','\105','\116','\108','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\116','\111','\112','\102','\114','\97','\109','\101','\10','\116','\105','\116','\108','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\48','\44','\32','\48','\41','\10','\116','\105','\116','\108','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\50','\50','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\116','\105','\116','\108','\101','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\71','\111','\116','\104','\97','\109','\66','\111','\108','\100','\10','\116','\105','\116','\108','\101','\46','\84','\101','\120','\116','\32','\61','\32','\34','\83','\99','\112','\32','\51','\48','\48','\56','\34','\10','\116','\105','\116','\108','\101','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\116','\105','\116','\108','\101','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\109','\105','\110','\105','\109','\105','\122','\101','\34','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\116','\111','\112','\102','\114','\97','\109','\101','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\48','\44','\32','\48','\41','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\55','\51','\51','\51','\51','\51','\51','\52','\57','\44','\32','\48','\44','\32','\48','\44','\32','\48','\41','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\52','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\83','\111','\117','\114','\99','\101','\83','\97','\110','\115','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\84','\101','\120','\116','\32','\61','\32','\34','\45','\34','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\52','\48','\46','\48','\48','\48','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\109','\105','\110','\105','\109','\105','\122','\101','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\105','\102','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\61','\32','\116','\114','\117','\101','\32','\116','\104','\101','\110','\10','\9','\9','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\102','\97','\108','\115','\101','\10','\9','\101','\108','\115','\101','\10','\9','\9','\105','\102','\32','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\61','\32','\102','\97','\108','\115','\101','\32','\116','\104','\101','\110','\10','\9','\9','\9','\98','\97','\99','\107','\103','\114','\111','\117','\110','\100','\102','\114','\97','\109','\101','\46','\86','\105','\115','\105','\98','\108','\101','\32','\61','\32','\116','\114','\117','\101','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\10','\101','\110','\100','\41','\10','\10','\99','\108','\111','\115','\101','\46','\78','\97','\109','\101','\32','\61','\32','\34','\99','\108','\111','\115','\101','\34','\10','\99','\108','\111','\115','\101','\46','\80','\97','\114','\101','\110','\116','\32','\61','\32','\116','\111','\112','\102','\114','\97','\109','\101','\10','\99','\108','\111','\115','\101','\46','\66','\97','\99','\107','\103','\114','\111','\117','\110','\100','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\48','\44','\32','\48','\41','\10','\99','\108','\111','\115','\101','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\46','\56','\54','\54','\54','\54','\54','\54','\55','\53','\44','\32','\48','\44','\32','\48','\44','\32','\48','\41','\10','\99','\108','\111','\115','\101','\46','\83','\105','\122','\101','\32','\61','\32','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\48','\44','\32','\52','\48','\44','\32','\48','\44','\32','\51','\48','\41','\10','\99','\108','\111','\115','\101','\46','\70','\111','\110','\116','\32','\61','\32','\69','\110','\117','\109','\46','\70','\111','\110','\116','\46','\83','\111','\117','\114','\99','\101','\83','\97','\110','\115','\10','\99','\108','\111','\115','\101','\46','\84','\101','\120','\116','\32','\61','\32','\34','\88','\34','\10','\99','\108','\111','\115','\101','\46','\84','\101','\120','\116','\67','\111','\108','\111','\114','\51','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\48','\41','\10','\99','\108','\111','\115','\101','\46','\84','\101','\120','\116','\83','\99','\97','\108','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\99','\108','\111','\115','\101','\46','\84','\101','\120','\116','\83','\105','\122','\101','\32','\61','\32','\49','\52','\46','\48','\48','\48','\10','\99','\108','\111','\115','\101','\46','\84','\101','\120','\116','\87','\114','\97','\112','\112','\101','\100','\32','\61','\32','\116','\114','\117','\101','\10','\99','\108','\111','\115','\101','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\67','\108','\105','\99','\107','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\103','\97','\109','\101','\46','\67','\111','\114','\101','\71','\117','\105','\58','\70','\105','\110','\100','\70','\105','\114','\115','\116','\67','\104','\105','\108','\100','\40','\34','\108','\105','\98','\114','\97','\114','\121','\34','\41','\58','\68','\101','\115','\116','\114','\111','\121','\40','\41','\10','\101','\110','\100','\41','\10','\10','\45','\45','\32','\83','\99','\114','\105','\112','\116','\115','\58','\10','\10','\108','\111','\99','\97','\108','\32','\102','\117','\110','\99','\116','\105','\111','\110','\32','\70','\81','\73','\75','\95','\102','\97','\107','\101','\95','\115','\99','\114','\105','\112','\116','\40','\41','\32','\45','\45','\32','\116','\111','\112','\102','\114','\97','\109','\101','\46','\76','\111','\99','\97','\108','\83','\99','\114','\105','\112','\116','\32','\10','\9','\108','\111','\99','\97','\108','\32','\115','\99','\114','\105','\112','\116','\32','\61','\32','\73','\110','\115','\116','\97','\110','\99','\101','\46','\110','\101','\119','\40','\39','\76','\111','\99','\97','\108','\83','\99','\114','\105','\112','\116','\39','\44','\32','\116','\111','\112','\102','\114','\97','\109','\101','\41','\10','\10','\9','\45','\45','\32','\68','\114','\97','\103','\103','\98','\108','\101','\10','\9','\45','\45','\32','\67','\114','\101','\100','\105','\116','\115','\58','\32','\86','\101','\107','\121','\10','\9','\10','\9','\108','\111','\99','\97','\108','\32','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\101','\114','\118','\105','\99','\101','\32','\61','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\101','\114','\118','\105','\99','\101','\34','\41','\10','\9','\10','\9','\108','\111','\99','\97','\108','\32','\103','\117','\105','\32','\61','\32','\115','\99','\114','\105','\112','\116','\46','\80','\97','\114','\101','\110','\116','\10','\9','\10','\9','\108','\111','\99','\97','\108','\32','\100','\114','\97','\103','\103','\105','\110','\103','\10','\9','\108','\111','\99','\97','\108','\32','\100','\114','\97','\103','\73','\110','\112','\117','\116','\10','\9','\108','\111','\99','\97','\108','\32','\100','\114','\97','\103','\83','\116','\97','\114','\116','\10','\9','\108','\111','\99','\97','\108','\32','\115','\116','\97','\114','\116','\80','\111','\115','\10','\9','\10','\9','\108','\111','\99','\97','\108','\32','\102','\117','\110','\99','\116','\105','\111','\110','\32','\117','\112','\100','\97','\116','\101','\40','\105','\110','\112','\117','\116','\41','\10','\9','\9','\108','\111','\99','\97','\108','\32','\100','\101','\108','\116','\97','\32','\61','\32','\105','\110','\112','\117','\116','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\45','\32','\100','\114','\97','\103','\83','\116','\97','\114','\116','\10','\9','\9','\103','\117','\105','\46','\80','\111','\115','\105','\116','\105','\111','\110','\32','\61','\32','\103','\117','\105','\58','\84','\119','\101','\101','\110','\80','\111','\115','\105','\116','\105','\111','\110','\40','\85','\68','\105','\109','\50','\46','\110','\101','\119','\40','\115','\116','\97','\114','\116','\80','\111','\115','\46','\88','\46','\83','\99','\97','\108','\101','\44','\32','\115','\116','\97','\114','\116','\80','\111','\115','\46','\88','\46','\79','\102','\102','\115','\101','\116','\32','\43','\32','\100','\101','\108','\116','\97','\46','\88','\44','\32','\115','\116','\97','\114','\116','\80','\111','\115','\46','\89','\46','\83','\99','\97','\108','\101','\44','\32','\115','\116','\97','\114','\116','\80','\111','\115','\46','\89','\46','\79','\102','\102','\115','\101','\116','\32','\43','\32','\100','\101','\108','\116','\97','\46','\89','\41','\44','\32','\39','\79','\117','\116','\39','\44','\32','\39','\76','\105','\110','\101','\97','\114','\39','\44','\32','\48','\44','\32','\116','\114','\117','\101','\41','\59','\32','\45','\45','\32','\100','\114','\97','\103','\32','\115','\112','\101','\101','\100','\10','\9','\101','\110','\100','\10','\9','\10','\9','\103','\117','\105','\46','\73','\110','\112','\117','\116','\66','\101','\103','\97','\110','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\105','\110','\112','\117','\116','\41','\10','\9','\9','\105','\102','\32','\105','\110','\112','\117','\116','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\32','\61','\61','\32','\69','\110','\117','\109','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\46','\77','\111','\117','\115','\101','\66','\117','\116','\116','\111','\110','\49','\32','\111','\114','\32','\105','\110','\112','\117','\116','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\32','\61','\61','\32','\69','\110','\117','\109','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\46','\84','\111','\117','\99','\104','\32','\116','\104','\101','\110','\10','\9','\9','\9','\100','\114','\97','\103','\103','\105','\110','\103','\32','\61','\32','\116','\114','\117','\101','\10','\9','\9','\9','\100','\114','\97','\103','\83','\116','\97','\114','\116','\32','\61','\32','\105','\110','\112','\117','\116','\46','\80','\111','\115','\105','\116','\105','\111','\110','\10','\9','\9','\9','\115','\116','\97','\114','\116','\80','\111','\115','\32','\61','\32','\103','\117','\105','\46','\80','\111','\115','\105','\116','\105','\111','\110','\10','\9','\10','\9','\9','\9','\105','\110','\112','\117','\116','\46','\67','\104','\97','\110','\103','\101','\100','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\41','\10','\9','\9','\9','\9','\105','\102','\32','\105','\110','\112','\117','\116','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\116','\97','\116','\101','\32','\61','\61','\32','\69','\110','\117','\109','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\116','\97','\116','\101','\46','\69','\110','\100','\32','\116','\104','\101','\110','\10','\9','\9','\9','\9','\9','\100','\114','\97','\103','\103','\105','\110','\103','\32','\61','\32','\102','\97','\108','\115','\101','\10','\9','\9','\9','\9','\101','\110','\100','\10','\9','\9','\9','\101','\110','\100','\41','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\9','\10','\9','\103','\117','\105','\46','\73','\110','\112','\117','\116','\67','\104','\97','\110','\103','\101','\100','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\105','\110','\112','\117','\116','\41','\10','\9','\9','\105','\102','\32','\105','\110','\112','\117','\116','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\32','\61','\61','\32','\69','\110','\117','\109','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\46','\77','\111','\117','\115','\101','\77','\111','\118','\101','\109','\101','\110','\116','\32','\111','\114','\32','\105','\110','\112','\117','\116','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\32','\61','\61','\32','\69','\110','\117','\109','\46','\85','\115','\101','\114','\73','\110','\112','\117','\116','\84','\121','\112','\101','\46','\84','\111','\117','\99','\104','\32','\116','\104','\101','\110','\10','\9','\9','\9','\100','\114','\97','\103','\73','\110','\112','\117','\116','\32','\61','\32','\105','\110','\112','\117','\116','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\9','\10','\9','\85','\115','\101','\114','\73','\110','\112','\117','\116','\83','\101','\114','\118','\105','\99','\101','\46','\73','\110','\112','\117','\116','\67','\104','\97','\110','\103','\101','\100','\58','\67','\111','\110','\110','\101','\99','\116','\40','\102','\117','\110','\99','\116','\105','\111','\110','\40','\105','\110','\112','\117','\116','\41','\10','\9','\9','\105','\102','\32','\105','\110','\112','\117','\116','\32','\61','\61','\32','\100','\114','\97','\103','\73','\110','\112','\117','\116','\32','\97','\110','\100','\32','\100','\114','\97','\103','\103','\105','\110','\103','\32','\116','\104','\101','\110','\10','\9','\9','\9','\117','\112','\100','\97','\116','\101','\40','\105','\110','\112','\117','\116','\41','\10','\9','\9','\101','\110','\100','\10','\9','\101','\110','\100','\41','\10','\101','\110','\100','\10','\99','\111','\114','\111','\117','\116','\105','\110','\101','\46','\119','\114','\97','\112','\40','\70','\81','\73','\75','\95','\102','\97','\107','\101','\95','\115','\99','\114','\105','\112','\116','\41','\40','\41','\10','\10','\101','\108','\115','\101','\10','\32','\32','\32','\32','\103','\97','\109','\101','\58','\71','\101','\116','\83','\101','\114','\118','\105','\99','\101','\40','\34','\80','\108','\97','\121','\101','\114','\115','\34','\41','\46','\76','\111','\99','\97','\108','\80','\108','\97','\121','\101','\114','\58','\75','\105','\99','\107','\40','\34','\87','\114','\111','\110','\103','\32','\71','\97','\109','\101','\34','\41','\10','\32','\32','\32','\32','\101','\110','\100','\10',}IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))()