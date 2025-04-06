local jigUI = Instance.new("ScreenGui")

local TextChatService = game:GetService("TextChatService")

jigUI.Name = "jigUI"
jigUI.Parent = game.CoreGui
jigUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
jigUI.ResetOnSpawn = false

local __jig = {		}
__jig.Version = "v1.1"
__jig.User = game.Players.LocalPlayer.Name
__jig.Colors = {	}
__jig.Colors.Titles = Color3.fromRGB(179, 179, 179);
__jig.Colors.Menu = Color3.fromRGB(25, 25, 25);
__jig.Colors.MenuBorder = Color3.fromRGB(0,0,0);
__jig.Colors.DarkenMenuTabButton = Color3.fromRGB(120, 120, 120)
__jig.Colors.WhitenMenuTabButton = Color3.fromRGB(255, 255, 255)
__jig.Colors.Underline = Color3.fromRGB(186, 75, 255);
__jig.Colors.Text = Color3.fromRGB(255, 255, 255);
__jig.Colors.Button = Color3.fromRGB(186, 75, 255);
__jig.Colors.ButtonBackGround = Color3.fromRGB(39, 39, 39);
__jig.Colors.Dropdown = Color3.fromRGB(255, 255, 255);
__jig.Colors.Section = Color3.fromRGB(255, 255, 255);
__jig.Colors.PlaceholderText = Color3.fromRGB(60, 60, 60);
__jig.Colors.TextBoxBorder = Color3.fromRGB(60, 60, 60);

local ui = {		}
function ui.highlight(name)
	name.BorderColor3 = __jig.Colors.Button
end

function ui.unhighlight(name)
	name.BorderColor3 = __jig.Colors.TextBoxBorder
end

function ui.open(button)
	button.Visible = true
end

function ui.close(button)
	button.Visible = false
end
function ui.darken(button)
	button.ImageColor3 = __jig.Colors.DarkenMenuTabButton
end

function ui.white(button)
	button.ImageColor3 = __jig.Colors.WhitenMenuTabButton 
	end;



local reverse = false
local CopiedPlayers = {}
local function FindPlayer(namey)
	local name = string.lower(namey)
	local player = nil

	names = game.Players:GetChildren()                      
	for i,v in pairs(names) do
		strlower = string.lower(v.Name)
		sub = string.sub(strlower,1,#name)                                     
		if name == sub and v ~= game.Players.LocalPlayer then 
			player = v
		end
	end
	if player then 
		return player
	else
		return nil
	end
end
function IsInTable(table, tofind)
	local found = false
	for i,v in pairs(table) do
		if v == tofind then
			found = true
			break
		end
	end
	return found
end

local function Say(msg)
	print(msg)
	TextChatService.TextChannels.RBXGeneral:SendAsync(msg)
end

local Main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local underline = Instance.new("TextLabel")
local Buttons = Instance.new("Frame")
local Players = Instance.new("ImageButton")
local World = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local bar = Instance.new("TextLabel")
local WorldFrame = Instance.new("ScrollingFrame")
local SettingsFrame = Instance.new("ScrollingFrame")
local PlayerName = Instance.new("TextBox")
local Copy = Instance.new("TextButton")
local Uncopy = Instance.new("TextButton")
local Line = Instance.new("TextLabel")
local UnlagButton = Instance.new("TextButton")
local LagButton = Instance.new("TextButton")
local AnimSpeed = Instance.new("TextBox")
local Latency = Instance.new("TextBox")
local Frame = Instance.new("Frame")
local TextControl = Instance.new("TextBox")
local Max = Instance.new("TextButton")
local Bar = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local ChatLogs = Instance.new("TextButton")
local LocateAdmins = Instance.new("TextButton")
local PlayersFrame = Instance.new("ScrollingFrame")
local Access = Instance.new("TextLabel")
local Welcome = Instance.new("TextLabel")
local Date = Instance.new("TextLabel")
local Time = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Password = Instance.new("TextLabel")

Main.Name = "Main"
Main.Parent = jigUI
Main.Active = true
Main.BackgroundColor3 = __jig.Colors.Menu
Main.Draggable = true
Main.BorderColor3 = __jig.Colors.MenuBorder
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.262972742, 0, 0.390745491, 0)
Main.Size = UDim2.new(0, 211, 0, 218)

title.Name = "title"
title.Parent = Main
title.BackgroundColor3 = __jig.Colors.Menu
title.BorderColor3 = __jig.Colors.MenuBorder
title.BorderSizePixel = 2
title.Size = UDim2.new(0, 211, 0, 27)
title.Font = Enum.Font.Code
title.Text = "jigware "..__jig.Version
title.TextColor3 = __jig.Colors.Titles
title.TextSize = 14

underline.Name = "underline"
underline.Parent = Main
underline.BackgroundColor3 = __jig.Colors.Underline
underline.BorderSizePixel = 0
underline.Position = UDim2.new(0, 0,0.123853214, 0)
underline.Size = UDim2.new(0, 211, 0, 2)
underline.Font = Enum.Font.SourceSans
underline.Text = ""
underline.TextSize = 14

Buttons.Name = "Buttons"
Buttons.Parent = Main
Buttons.BackgroundColor3 = __jig.Colors.Menu
Buttons.BackgroundTransparency = 1
Buttons.BorderColor3 = __jig.Colors.MenuBorder
Buttons.Position = UDim2.new(0.0426540263, 0, 0.16055046, 0)
Buttons.Size = UDim2.new(0, 28, 0, 176)

Players.Name = "Players"
Players.Parent = Buttons
Players.BackgroundTransparency = 1
Players.BorderSizePixel = 0
Players.Position = UDim2.new(0.0357142873, 0, 0.642103434, 0)
Players.Size = UDim2.new(0, 26, 0, 23)
Players.Image = "rbxassetid://5611663966"
Players.ImageColor3 = __jig.Colors.DarkenMenuTabButton

World.Name = "World"
World.Parent = Buttons
World.BackgroundTransparency = 1
World.BorderSizePixel = 0
World.Position = UDim2.new(0.0873271376, 0, 0.227948129, 0)
World.Size = UDim2.new(0, 24, 0, 21)
World.Image = "rbxassetid://5611663575"
World.ImageColor3 = __jig.Colors.DarkenMenuTabButton

Settings.Name = "Settings"
Settings.Parent = Buttons
Settings.BackgroundTransparency = 1
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.123041436, 0, 0.441727728, 0)
Settings.Size = UDim2.new(0, 23, 0, 20)
Settings.Image = "http://www.roblox.com/asset/?id=5611583433"
Settings.ImageColor3 = __jig.Colors.DarkenMenuTabButton

bar.Name = "bar"
bar.Parent = Main
bar.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294) -- color will never change :3
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0.215094551, 0, 0.230898798, 0)
bar.Size = UDim2.new(0, 1, 0, 144)
bar.Font = Enum.Font.SourceSans
bar.Text = ""
bar.TextSize = 14

WorldFrame.Name = "WorldFrame"
WorldFrame.Parent = Main
WorldFrame.Active = true
WorldFrame.BackgroundColor3 = __jig.Colors.Menu
WorldFrame.BorderColor3 = __jig.Colors.MenuBorder
WorldFrame.Position = UDim2.new(0.274881482, 0, 0.252293617, 0)
WorldFrame.Size = UDim2.new(0, 140, 0, 134)
WorldFrame.Visible = false
WorldFrame.BottomImage = ""
WorldFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
WorldFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
WorldFrame.MidImage = "rbxasset://textures/blackBkg_square.png"
WorldFrame.ScrollBarThickness = 5
WorldFrame.TopImage = ""

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = Main
SettingsFrame.Active = true
SettingsFrame.BackgroundColor3 = __jig.Colors.Menu
SettingsFrame.BorderColor3 = __jig.Colors.MenuBorder
SettingsFrame.Position = UDim2.new(0.274881542, 0, 0.252293527, 0)
SettingsFrame.Size = UDim2.new(0, 140, 0, 134)
SettingsFrame.BottomImage = ""
SettingsFrame.CanvasSize = UDim2.new(0, 0, 1.60000002, 0)
SettingsFrame.MidImage = "rbxasset://textures/blackBkg_square.png"
SettingsFrame.ScrollBarThickness = 5
SettingsFrame.TopImage = ""

PlayerName.Name = "PlayerName"
PlayerName.Parent = SettingsFrame
PlayerName.BackgroundColor3 = __jig.Colors.Menu
PlayerName.BorderColor3 = __jig.Colors.TextBoxBorder
PlayerName.Position = UDim2.new(0.0857142881, 0, 0.0345063694, 0)
PlayerName.Size = UDim2.new(0, 115, 0, 19)
PlayerName.Font = Enum.Font.Code
PlayerName.PlaceholderColor3 = __jig.Colors.PlaceholderText
PlayerName.PlaceholderText = "Player Name"
PlayerName.Text = ""
PlayerName.TextColor3 = __jig.Colors.Text
PlayerName.TextSize = 14

Copy.Name = "Copy"
Copy.Parent = SettingsFrame
Copy.BackgroundColor3 = __jig.Colors.ButtonBackGround
Copy.BorderColor3 = __jig.Colors.Button
Copy.Position = UDim2.new(0.0860000029, 0, 0.0820000023, 5)
Copy.Size = UDim2.new(0, 115, 0, 19)
Copy.Font = Enum.Font.Code
Copy.Text = "Copy"
Copy.TextColor3 = __jig.Colors.Text
Copy.TextSize = 14

Uncopy.Name = "Uncopy"
Uncopy.Parent = SettingsFrame
Uncopy.BackgroundColor3 = __jig.Colors.ButtonBackGround
Uncopy.BorderColor3 = __jig.Colors.Button
Uncopy.Position = UDim2.new(0.0860000029, 0, 0.152999997, 5)
Uncopy.Size = UDim2.new(0, 115, 0, 19)
Uncopy.Font = Enum.Font.Code
Uncopy.Text = "Stop Copying"
Uncopy.TextColor3 = __jig.Colors.Text
Uncopy.TextSize = 14

Line.Name = "Line"
Line.Parent = SettingsFrame
Line.BackgroundColor3 = __jig.Colors.Section
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.0857142955, 0, 0.239520103, 0)
Line.Size = UDim2.new(0, 115, 0, 0)
Line.Font = Enum.Font.SourceSans
Line.Text = ""
Line.TextSize = 14

UnlagButton.Name = "UnlagButton"
UnlagButton.Parent = SettingsFrame
UnlagButton.BackgroundColor3 = __jig.Colors.ButtonBackGround
UnlagButton.BorderColor3 = __jig.Colors.Button
UnlagButton.Position = UDim2.new(0.0790000036, 0, 0.381733924, 5)
UnlagButton.Size = UDim2.new(0, 115, 0, 19)
UnlagButton.Font = Enum.Font.Code
UnlagButton.Text = "Unlag"
UnlagButton.TextColor3 = __jig.Colors.Text
UnlagButton.TextSize = 14

LagButton.Name = "LagButton"
LagButton.Parent = SettingsFrame
LagButton.BackgroundColor3 = __jig.Colors.ButtonBackGround
LagButton.BorderColor3 = __jig.Colors.Button
LagButton.Position = UDim2.new(0.0860000029, 0, 0.310000002, 5)
LagButton.Size = UDim2.new(0, 114, 0, 19)
LagButton.Font = Enum.Font.Code
LagButton.Text = "Lag?"
LagButton.TextColor3 = __jig.Colors.Text
LagButton.TextSize = 14

AnimSpeed.Name = "AnimSpeed"
AnimSpeed.Parent = SettingsFrame
AnimSpeed.BackgroundColor3 = __jig.Colors.Menu
AnimSpeed.BorderColor3 = __jig.Colors.TextBoxBorder
AnimSpeed.Position = UDim2.new(0.0857142955, 0, 0.260423809, 0)
AnimSpeed.Size = UDim2.new(0, 115, 0, 19)
AnimSpeed.Font = Enum.Font.Code
AnimSpeed.PlaceholderColor3 = __jig.Colors.PlaceholderText
AnimSpeed.PlaceholderText = "Anim Speed"
AnimSpeed.Text = ""
AnimSpeed.TextColor3 = __jig.Colors.Text
AnimSpeed.TextSize = 14

Latency.Name = "Latency"
Latency.Parent = SettingsFrame
Latency.BackgroundColor3 = __jig.Colors.Menu
Latency.BorderColor3 = __jig.Colors.MenuBorder
Latency.Position = UDim2.new(0.0860000029, 0, 0.459082574, 5)
Latency.Size = UDim2.new(0, 115, 0, 19)
Latency.Font = Enum.Font.Code
Latency.PlaceholderColor3 = __jig.Colors.PlaceholderText
Latency.PlaceholderText = "Latency"
Latency.Text = ""
Latency.TextColor3 = __jig.Colors.Text
Latency.TextSize = 14

Frame.Parent = SettingsFrame
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.315857142, 0, 0.998564184, 0)
Frame.Size = UDim2.new(0.367283314, 0, 0.0284833293, 0)

TextControl.Name = "TextControl"
TextControl.Parent = Frame
TextControl.AnchorPoint = Vector2.new(0.5, 0.5)
TextControl.BackgroundTransparency = 1
TextControl.BorderSizePixel = 0
TextControl.Position = UDim2.new(1.33374798, 0, -15.5093927, 0)
TextControl.Size = UDim2.new(1.05792785, 0, 2.03032017, 0)
TextControl.ClearTextOnFocus = false
TextControl.Font = Enum.Font.Code
TextControl.PlaceholderColor3 = __jig.Colors.Titles
TextControl.Text = "50"
TextControl.TextColor3 = __jig.Colors.Titles
TextControl.TextSize = 11
TextControl.TextWrapped = true

Max.Name = "Max"
Max.Parent = Frame
Max.AnchorPoint = Vector2.new(0.5, 0.5)
Max.BackgroundColor3 = __jig.Colors.Menu
Max.BorderColor3 = __jig.Colors.MenuBorder
Max.Position = UDim2.new(0.478432983, 0, -14.0677319, 0)
Max.Size = UDim2.new(2.03109622, 0, 0.853003323, 0)
Max.AutoButtonColor = false
Max.Font = Enum.Font.SourceSans
Max.Text = ""
Max.TextSize = 14

Bar.Name = "Bar"
Bar.Parent = Max
Bar.BackgroundColor3 = __jig.Colors.Button
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(-0.0002425313, 0, -0.00263786316, 0)
Bar.Size = UDim2.new(0.509578884, 0, 1.00263643, 0)

ImageLabel.Parent = Bar
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.000475945271, 0, -0.0278421249, 0)
ImageLabel.Size = UDim2.new(0, 53, 0, 8)
ImageLabel.Image = "rbxassetid://5611293244"
ImageLabel.ImageColor3 = __jig.Colors.MenuBorder
ImageLabel.ImageTransparency = 0.69999998807907

ChatLogs.Name = "ChatLogs"
ChatLogs.Parent = SettingsFrame
ChatLogs.BackgroundColor3 = __jig.Colors.ButtonBackGround
ChatLogs.BorderColor3 = __jig.Colors.Button
ChatLogs.Position = UDim2.new(0.0860000029, 0, 0.620990813, 5)
ChatLogs.Size = UDim2.new(0, 115, 0, 19)
ChatLogs.Font = Enum.Font.Code
ChatLogs.Text = "Chatlogs"
ChatLogs.TextColor3 = __jig.Colors.Text
ChatLogs.TextSize = 14

LocateAdmins.Name = "Locate Admins"
LocateAdmins.Parent = SettingsFrame
LocateAdmins.BackgroundColor3 = __jig.Colors.ButtonBackGround
LocateAdmins.BorderColor3 = __jig.Colors.Button
LocateAdmins.Position = UDim2.new(0.0860000029, 0, 0.691990793, 5)
LocateAdmins.Size = UDim2.new(0, 115, 0, 19)
LocateAdmins.Font = Enum.Font.Code
LocateAdmins.Text = "Locate Admins"
LocateAdmins.TextColor3 = __jig.Colors.Text
LocateAdmins.TextSize = 14

PlayersFrame.Name = "PlayersFrame"
PlayersFrame.Parent = Main
PlayersFrame.Active = true
PlayersFrame.BackgroundColor3 = __jig.Colors.Menu
PlayersFrame.BorderColor3 = __jig.Colors.MenuBorder
PlayersFrame.Position = UDim2.new(0.274881482, 0, 0.252293617, 0)
PlayersFrame.Size = UDim2.new(0, 140, 0, 134)
PlayersFrame.Visible = false
PlayersFrame.BottomImage = ""
PlayersFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
PlayersFrame.MidImage = "rbxasset://textures/blackBkg_square.png"
PlayersFrame.ScrollBarThickness = 5
PlayersFrame.TopImage = ""

Access.Parent = jigUI
Access.BackgroundColor3 = __jig.Colors.Menu
Access.Visible = false
Access.BorderSizePixel = 0
Access.Position = UDim2.new(0.262093306, 0, 0.429351866, 0)
UDim2.new(0.262093306, 0, 0.429351866, 0)
Access.Size = UDim2.new(0, 210, 0, 187)
Access.Font = Enum.Font.SourceSans
Access.Text = ""
Access.TextSize = 14

Welcome.Name = "Welcome"
Welcome.Parent = Access
Welcome.BackgroundTransparency = 1
Welcome.BorderSizePixel = 0
Welcome.Position = UDim2.new(0.0238095243, 0, 0.164639741, 0)
Welcome.Size = UDim2.new(0, 200, 0, 30)
Welcome.Font = Enum.Font.Code
Welcome.Text = "Welcome, "..__jig.User
Welcome.TextColor3 = __jig.Colors.Text
Welcome.TextSize = 11

Date.Name = "Date"
Date.Parent = Access
Date.BackgroundTransparency = 1
Date.BorderSizePixel = 0
Date.Position = UDim2.new(0.0238095243, 0, 0.291670948, 0)
Date.Size = UDim2.new(0, 200, 0, 30)
Date.Font = Enum.Font.Code
Date.Text = "2/19/2021"
Date.TextColor3 = __jig.Colors.Text
Date.TextSize = 11

Time.Name = "Time"
Time.Parent = Access
Time.BackgroundTransparency = 1
Time.BorderSizePixel = 0
Time.Position = UDim2.new(0.0238095243, 0, 0.37904954, 0)
Time.Size = UDim2.new(0, 200, 0, 30)
Time.Font = Enum.Font.Code
Time.Text = "6:22"
Time.TextColor3 = __jig.Colors.Text
Time.TextSize = 11

TextBox.Parent = Access
TextBox.BackgroundColor3 = __jig.Colors.Menu
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.376190484, 0, 0.642105281, 0)
TextBox.Size = UDim2.new(0, 77, 0, 28)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.Text = ""
TextBox.TextColor3 = __jig.Colors.Text
TextBox.TextSize = 11
TextBox.TextXAlignment = Enum.TextXAlignment.Left

Password.Name = "Password"
Password.Parent = Access
Password.BackgroundTransparency = 1
Password.BorderSizePixel = 0
Password.Position = UDim2.new(0.0619047284, 0, 0.638323963, 0)
Password.Size = UDim2.new(0, 72, 0, 30)
Password.Font = Enum.Font.Code
Password.Text = "Password:"
Password.TextColor3 = __jig.Colors.Text
Password.TextSize = 11

------------------------------------------------------------------
Players.MouseEnter:connect(function()
	ui.white(Players)
end)
Settings.MouseEnter:connect(function()
	ui.white(Settings)
end)
World.MouseEnter:connect(function()
	ui.white(World)
end)

Players.MouseLeave:connect(function()
	ui.darken(Players)
end)
Settings.MouseLeave:connect(function()
	ui.darken(Settings)
end)
World.MouseLeave:connect(function()
	ui.darken(World)
end)
------------------------------------------------------------------
Players.MouseButton1Down:connect(function()
	ui.open(PlayersFrame)
	ui.close(SettingsFrame)
	ui.close(WorldFrame)
	ui.white(Players)
	ui.darken(Settings)
	ui.darken(World)
	
end)
Settings.MouseButton1Down:connect(function()
	ui.open(SettingsFrame)
	ui.close(WorldFrame)
	ui.close(PlayersFrame)
	ui.white(Settings)
	ui.darken(World)
	ui.darken(Players)
	
end)
World.MouseButton1Down:connect(function()
	ui.open(WorldFrame)
	ui.close(SettingsFrame)
	ui.close(PlayersFrame)
	ui.white(World)
	ui.darken(Settings)
	ui.darken(Players)
	
end)

PlayerName.MouseEnter:connect(function()
	ui.highlight(PlayerName)
end)

PlayerName.MouseLeave:connect(function()
	ui.unhighlight(PlayerName)
end)

AnimSpeed.MouseEnter:connect(function()
	ui.highlight(AnimSpeed)
end)
AnimSpeed.MouseLeave:connect(function()
	ui.unhighlight(AnimSpeed)
end)

Latency.MouseEnter:connect(function()
	ui.highlight(Latency)
end)
Latency.MouseLeave:connect(function()
	ui.unhighlight(Latency)
end)
------------------------------------------------------------------

AnimSpeed.FocusLost:connect(function(enterPressed)
	if enterPressed then
		if not game:GetService("Players").LocalPlayer.Character then
			game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
		end;
		local e = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()
		for f, g in pairs(e) do
			g:AdjustSpeed(AnimSpeed.Text)
		end
		end
	end)

Copy.MouseButton1Down:connect(function()
	if string.lower(PlayerName.Text) == "others" then
		for i,player in pairs(game.Players:GetPlayers()) do
			if CopiedPlayers[player.Name] == nil then
				CopiedPlayers[player.Name] = true
				player.Chatted:Connect(function(msg)
					if CopiedPlayers[player.Name] ~= nil then
						if CopiedPlayers[player.Name] == true then
							if reverse then
								Say(string.reverse(msg))
							else
								Say(msg)
							end
						end
					end
				end)
			elseif CopiedPlayers[player.Name] == false then
				CopiedPlayers[player.Name] = true
			end
		end
		return
	end
	local player = FindPlayer(PlayerName.Text)
	if player ~= nil then
		if CopiedPlayers[player.Name] == nil then
			CopiedPlayers[player.Name] = true
			player.Chatted:Connect(function(msg)
				if CopiedPlayers[player.Name] ~= nil then
					if CopiedPlayers[player.Name] == true then
						if reverse then
							Say(string.reverse(msg))
						else
							Say(msg)
						end
					end
				end
			end)
		elseif CopiedPlayers[player.Name] == false then
			CopiedPlayers[player.Name] = true
		end
	end 
end)

Uncopy.MouseButton1Down:connect(function()
	if string.lower(PlayerName.Text) == "others" then
		for i,v in pairs(CopiedPlayers) do
			CopiedPlayers[tostring(i)] = false
		end
		return
	end
	local player = FindPlayer(PlayerName.Text)
	if player ~= nil then
		if CopiedPlayers[player.Name] ~= nil then
			for i,v in pairs(CopiedPlayers) do
				if tostring(i) == player.Name then
					CopiedPlayers[player.Name] = false
				end
			end
		end
	end
end)
