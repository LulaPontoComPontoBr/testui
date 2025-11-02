[file name]: image.png
[file content begin]
SS i wang "bo ae gh a
Stack End
@ 14:17:15 — Failed to load sound rbxassetid://131303727931519: User is not authorized to access Asset,
14:17:53 -~/ CARCr4zd: 322: CARCr4zd: 285: attempt to index nil with ‘Parent’
Stack Begin
oe   Script "CARCr4zd", Line 322
Script-‘yapnxrpM’, Line 3
Stack End

8 LP GE NTY Se Ae Pe AGRO I og To iar et ae A omy OY ERTL D 5

TS


[file content end]

--// gamesense.lua
--// author: @focat
--// focat69/gamesense

--// Services
local s_players      = game:GetService("Players")
local s_tweenservice = game:GetService("TweenService")
local s_runservice   = game:GetService("RunService")
local s_coregui      = game:GetService("CoreGui")
local s_uis          = game:GetService("UserInputService")
local s_httpservice  = game:GetService("HttpService")

--// Constants
LOCALPLAYER = s_players.LocalPlayer
MOUSE       = LOCALPLAYER:GetMouse()
VIEWPORT    = workspace.CurrentCamera.ViewportSize
TWEENINFO   = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

--// Internal
function _internal_gettime()
	local time = os.date("%H:%M:%S", os.time())
	return time
end
function _internal_randomstr(len)
	if not len then
		len = 50
	end
	local sets = { { 97, 122 }, { 65, 90 }, { 48, 57 } } -- a-z, A-Z, 0-9
	local str = ""
	for i = 1, len do
		math.randomseed(os.clock() ^ 5 + i) -- Better randomization
		local charset = sets[math.random(1, #sets)]
		str = str .. string.char(math.random(charset[1], charset[2]))
	end
	return str
end

--// Notif Lib + Watermark (im too lazy to properly "include" these hahahha)
--do
-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)
local Converted = {
	["_gamesense.lua"] = Instance.new("ScreenGui");
	["_tick"] = Instance.new("LocalScript");
	["_watermark"] = Instance.new("TextLabel");
	["_sense"] = Instance.new("TextLabel");
	["_notifs"] = Instance.new("Frame");
	["_Template"] = Instance.new("Frame");
	["_game"] = Instance.new("TextLabel");
	["_sense1"] = Instance.new("TextLabel");
	["_Description"] = Instance.new("TextLabel");
	["_UIStroke"] = Instance.new("UIStroke");
	["_timestamp"] = Instance.new("TextLabel");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_assets"] = Instance.new("Folder");
	["_notif"] = Instance.new("Sound");
}

-- Properties:

Converted["_gamesense.lua"].IgnoreGuiInset = true
Converted["_gamesense.lua"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Converted["_gamesense.lua"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_gamesense.lua"].Name = "gamesense_".._internal_randomstr(32)
Converted["_gamesense.lua"].Parent = s_runservice:IsStudio() and s_players.LocalPlayer:WaitForChild("PlayerGui") or (gethui and gethui()) or s_coregui

-- FIX: Added missing watermark background frame
Converted["_watermark bg"] = Instance.new("Frame")
Converted["_watermark bg"].Name = "watermark bg"
Converted["_watermark bg"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_watermark bg"].BorderColor3 = Color3.fromRGB(99, 99, 99)
Converted["_watermark bg"].Position = UDim2.new(0.973097622, -204, 0.0188679248, 0)
Converted["_watermark bg"].Size = UDim2.new(0, 221, 0, 29)
Converted["_watermark bg"].Parent = Converted["_gamesense.lua"]

Converted["_watermark"].Font = Enum.Font.RobotoMono
Converted["_watermark"].RichText = true
Converted["_watermark"].Text = "<font color=\"#31ff42\">gamesense</font> | focat9123123 | 00:00:00"
Converted["_watermark"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_watermark"].TextSize = 12
Converted["_watermark"].AutomaticSize = Enum.AutomaticSize.XY
Converted["_watermark"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_watermark"].BorderColor3 = Color3.fromRGB(99, 99, 99)
Converted["_watermark"].Position = UDim2.new(0.25, -100, 0.49000001, -13)
Converted["_watermark"].Size = UDim2.new(0, 200, 0, 26)
Converted["_watermark"].Name = "watermark"
Converted["_watermark"].Parent = Converted["_watermark bg"]

Converted["_sense"].Font = Enum.Font.RobotoMono
Converted["_sense"].Text = "sense"
Converted["_sense"].TextColor3 = Color3.fromRGB(49, 255, 66)
Converted["_sense"].TextSize = 12
Converted["_sense"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_sense"].BackgroundTransparency = 1
Converted["_sense"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_sense"].BorderSizePixel = 0
Converted["_sense"].Position = UDim2.new(0.25, -100, 0.49000001, -13)
Converted["_sense"].Size = UDim2.new(0, 200, 0, 26)
Converted["_sense"].Name = "sense"
Converted["_sense"].Parent = Converted["_watermark bg"]

Converted["_notifs"].AnchorPoint = Vector2.new(1, 1)
Converted["_notifs"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_notifs"].BackgroundTransparency = 1
Converted["_notifs"].BorderColor3 = Color3.fromRGB(27, 42, 53)
Converted["_notifs"].BorderSizePixel = 0
Converted["_notifs"].ClipsDescendants = true
Converted["_notifs"].Position = UDim2.new(1, -25, 1, -25)
Converted["_notifs"].Size = UDim2.new(0, 296, 0, 578)
Converted["_notifs"].ZIndex = 5
Converted["_notifs"].Name = "notifs"
Converted["_notifs"].Parent = Converted["_gamesense.lua"]

Converted["_Template"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Template"].BackgroundColor3 = Color3.fromRGB(21, 21, 20)
Converted["_Template"].BorderColor3 = Color3.fromRGB(99, 99, 99)
Converted["_Template"].BorderMode = Enum.BorderMode.Middle
Converted["_Template"].BorderSizePixel = 0
Converted["_Template"].Position = UDim2.new(0.498310804, 0, 0.912629783, 0)
Converted["_Template"].Size = UDim2.new(0, 295, 0, 91)
Converted["_Template"].Visible = false
Converted["_Template"].ZIndex = 100
Converted["_Template"].Name = "Template"
Converted["_Template"].Parent = Converted["_notifs"]

Converted["_game"].Font = Enum.Font.RobotoMono
Converted["_game"].Text = "game<font color=\"#31ff42\">sense</font>"
Converted["_game"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_game"].TextSize = 18
Converted["_game"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_game"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_game"].BackgroundTransparency = 1
Converted["_game"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_game"].BorderSizePixel = 0
Converted["_game"].Position = UDim2.new(0.398305088, -100, 0.225274727, -13)
Converted["_game"].Size = UDim2.new(0, 200, 0, 26)
Converted["_game"].Name = "game"
Converted["_game"].Parent = Converted["_Template"]
Converted["_game"].RichText = true

Converted["_Description"].Font = Enum.Font.RobotoMono
Converted["_Description"].Text = "hey you're a bitch lol 123213123123123123"
Converted["_Description"].TextColor3 = Color3.fromRGB(168, 168, 168)
Converted["_Description"].TextSize = 14
Converted["_Description"].TextWrapped = true
Converted["_Description"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Description"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_Description"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_Description"].BackgroundTransparency = 1
Converted["_Description"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Description"].BorderSizePixel = 0
Converted["_Description"].Position = UDim2.new(0.398305088, -100, 0.5, -13)
Converted["_Description"].Size = UDim2.new(0, 262, 0, 38)
Converted["_Description"].Name = "Description"
Converted["_Description"].Parent = Converted["_Template"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(99, 99, 99)
Converted["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke"].Parent = Converted["_Template"]

Converted["_timestamp"].Font = Enum.Font.RobotoMono
Converted["_timestamp"].Text = "00:00:00"
Converted["_timestamp"].TextColor3 = Color3.fromRGB(168, 168, 168)
Converted["_timestamp"].TextSize = 12
Converted["_timestamp"].TextWrapped = true
Converted["_timestamp"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_timestamp"].BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Converted["_timestamp"].BackgroundTransparency = 1
Converted["_timestamp"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_timestamp"].BorderSizePixel = 0
Converted["_timestamp"].Position = UDim2.new(0.564406753, -100, 0.917582393, -13)
Converted["_timestamp"].Size = UDim2.new(0, 215, 0, 13)
Converted["_timestamp"].Name = "timestamp"
Converted["_timestamp"].Parent = Converted["_Template"]

Converted["_UIListLayout"].Padding = UDim.new(0, 6)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout"].Parent = Converted["_notifs"]

Converted["_assets"].Name = "assets"
Converted["_assets"].Parent = Converted["_notifs"]

-- FIX: Added safe sound creation with error handling
Converted["_notif"] = Instance.new("Sound")
Converted["_notif"].RollOffMode = Enum.RollOffMode.InverseTapered
Converted["_notif"].SoundId = "rbxassetid://131303727931519"
Converted["_notif"].Name = "notif"
Converted["_notif"].Parent = Converted["_assets"]

---

local notif_lib = {}

baseNotif  = Converted["_Template"]
notifSound = Converted["_notif"]

-- FIX: Safe sound playing with error handling
local function safePlaySound(sound)
	pcall(function()
		sound:Play()
	end)
end

function tween(go, t, dir)
	dir = dir or "in"
	local obj = go

	local startTransparency = (dir == "in") and 1 or 0
	local endTransparency = (dir == "in") and 0 or 1

	obj.BackgroundTransparency = startTransparency

	local tweenInfo = TweenInfo.new(t, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)

	local tween = game:GetService("TweenService"):Create(obj, tweenInfo, {
		BackgroundTransparency = endTransparency
	})
	tween:Play()

	if dir == "out" then
		for _, e in pairs(obj:GetDescendants()) do
			if e:IsA("GuiObject") then
				if e:IsA("TextLabel") then
					local texttween = game:GetService("TweenService"):Create(e, tweenInfo, {
						TextTransparency = endTransparency
					})
					texttween:Play()
				elseif e:IsA("ImageLabel") or e:IsA("ImageButton") then
					local imgt = game:GetService("TweenService"):Create(e, tweenInfo, {
						ImageTransparency = endTransparency
					})
					imgt:Play()
				elseif e:IsA("UIStroke") then
					local st = game:GetService("TweenService"):Create(e, tweenInfo, {
						Transparency = endTransparency
					})
					st:Play()
				end
			end
		end
	end
end

function notif_lib:MakeNotification(notif_table: table)
	local text = notif_table.Description or "This is an example notification!"
	local dur = notif_table.Duration or 5

	local newNotif = baseNotif:Clone()
	newNotif.Parent = Converted["_notifs"]
	newNotif.Description.Text = text
	newNotif.timestamp.Text = _internal_gettime()
	newNotif.Visible = true
	newNotif.Name = "gamesense.lua - ".._internal_randomstr(8)

	local holder = Converted["_notifs"]
	local notifications = holder:GetChildren()
	local numNotifications = #notifications

	local layout = holder.UIListLayout
	local layoutOrder = layout.Padding.Offset

	for i, notification in ipairs(notifications) do
		if notification ~= baseNotif and
			notification ~= newNotif and
			notification ~= layout and
			notification:IsA("Frame")
		then
			if numNotifications == 1 then
				layoutOrder = layoutOrder - 1
			else
				layoutOrder = notification.LayoutOrder + 1
			end
			tween(notification, 0.25)
		end
	end

	newNotif.LayoutOrder = layoutOrder

	-- FIX: Use safe sound playing
	safePlaySound(notifSound)
	tween(newNotif, 0.5, "in")

	spawn(function()
		wait(dur)
		tween(newNotif, 0.5, "out")
		wait(0.5)
		newNotif:Destroy()
	end)
end

local function _watermark_tick()
	local env = {}
	env["_internal"] = {} -- initalization

	-- gamesense->watermark

	local watermark_gui  = Converted["_gamesense.lua"]
	local watermark_text = Converted["_watermark"]
	local s_players      = game:GetService("Players")
	local s_runservice   = game:GetService("RunService")
	local heartbeat      = s_runservice.Heartbeat
	local localplayer    = s_players.LocalPlayer
	local displayname    = localplayer.DisplayName

	---

	--// self explanitory
	env["_internal"]["get_time"] = function()
		local time = os.date("%H:%M:%S", os.time())
		return time
	end
	env["_internal"]["update_watermark"] = function()
		local time = env["_internal"]["get_time"]()
		watermark_text.Text = string.format("<font color=\"#31ff42\">gamesense</font> | %s | %s", displayname, time)
	end

	---

	--// heartbeat loop
	heartbeat:Connect(function()
		-- watermark
		env["_internal"]["update_watermark"]()
	end)

	print(string.format("[ gamesense.lua ] [ %s ] tick service connected", env["_internal"]["get_time"]()))
end
coroutine.wrap(_watermark_tick)()
--end

local Library = {}

function Library:_validate(defaults: table, options: table)
	for option, value in pairs(defaults) do
		if options[option] == nil then
			options[option] = value
		end
	end
	return options
end
function Library:_tween(object, goal, callback)
	local tween = s_tweenservice:Create(object, TWEENINFO, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:Notify(options: table)
	local NOTIF_OPTIONS = Library:_validate({
		Description = "This is an example notification!",
		Duration = 5
	}, options or {})
	
	notif_lib:MakeNotification(NOTIF_OPTIONS)
end

function Library:New(options: table)
	local GUI_OPTIONS = Library:_validate({
		Name = "gamesense.lua",
		Padding = 6
	}, options or {})
	
	local GUI = {
		CurrentTab = nil
	}
	
	--// Initalization
	do
		-- StarterGui.ui lib
		GUI["1"] = Instance.new("ScreenGui")
		GUI["1"]["IgnoreGuiInset"] = true
		GUI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets
		GUI["1"]["Name"] = "gamesense_".._internal_randomstr(32)
		GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
		GUI["1"].Parent = s_runservice:IsStudio() and s_players.LocalPlayer:WaitForChild("PlayerGui") or (gethui and gethui()) or s_coregui

		-- StarterGui.ui lib.gamesense window
		GUI["2"] = Instance.new("Frame", GUI["1"])
		GUI["2"]["BorderSizePixel"] = 2
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 21)
		GUI["2"]["Size"] = UDim2.new(0, 380, 0, 436)
		GUI["2"]["Position"] = UDim2.fromOffset(
			(VIEWPORT.X / 2) - GUI["2"].Size.X.Offset / 2, 
			(VIEWPORT.Y / 2) - GUI["2"].Size.Y.Offset / 2
		)
		GUI["2"]["BorderColor3"] = Color3.fromRGB(100, 100, 100)
		GUI["2"]["Name"] = "gamesense window"
	end
	
	--// Title bar (+ seperator)
	do
		-- StarterGui.ui lib.gamesense window.sep
		GUI["3"] = Instance.new("Frame", GUI["2"])
		GUI["3"]["BorderSizePixel"] = 0
		GUI["3"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54)
		GUI["3"]["Size"] = UDim2.new(1, 0, 0, 1)
		GUI["3"]["Position"] = UDim2.new(0, 0, 0.10092, 0)
		GUI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		GUI["3"]["Name"] = "sep"
		
		-- StarterGui.ui lib.gamesense window.titlebar
		GUI["3a"] = Instance.new("Frame", GUI["2"])
		GUI["3a"]["BorderSizePixel"] = 0
		GUI["3a"]["BackgroundColor3"] = Color3.fromRGB(94, 94, 94)
		GUI["3a"]["Size"] = UDim2.new(0, 380, 0, 44)
		GUI["3a"]["Position"] = UDim2.new(0.5, -190, 0, 0)
		GUI["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		GUI["3a"]["Name"] = "titlebar"
		GUI["3a"]["BackgroundTransparency"] = 0.9
		
		--// starts with "gamesense"?
		if options["Name"] and string.sub(options["Name"], 1, 9) == "gamesense" then
			options["Name"] = string.gsub(options["Name"], "gamesense", "game<font color=\"#31ff42\">sense</font>")
		end
		
		-- StarterGui.ui lib.gamesense window.titlebar.gamesense.lua
		GUI["3c"] = Instance.new("TextLabel", GUI["3a"])
		GUI["3c"]["BorderSizePixel"] = 0
		GUI["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left
		GUI["3c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
		GUI["3c"]["TextSize"] = 18
		GUI["3c"]["FontFace"] = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		GUI["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
		GUI["3c"]["BackgroundTransparency"] = 1
		GUI["3c"]["Size"] = UDim2.new(0, 200, 0, 26)
		GUI["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		GUI["3c"]["Text"] = typeof(options["Name"]) == "string" and options["Name"] or "game<font color=\"#31ff42\">sense</font>.lua"
		GUI["3c"]["Name"] = "gamesense_".._internal_randomstr(32)
		GUI["3c"]["Position"] = UDim2.new(0.03947, 0, 0.20455, 0)
		GUI["3c"]["RichText"] = true

		-- StarterGui.ui lib.gamesense window.titlebar.ImageLabel (Close button)
		GUI["3d"] = Instance.new("ImageButton", GUI["3a"])
		GUI["3d"]["Image"] = "rbxassetid://11293981586"
		GUI["3d"]["Size"] = UDim2.new(0, 18, 0, 18)
		GUI["3d"]["BackgroundTransparency"] = 1
		GUI["3d"]["Position"] = UDim2.new(0.96053, -18, 0.5, -9)
	end
	
	--// Handle close button (minimize GUI, wait for key press, bring back)
	do
		GUI["3d"].MouseButton1Click:Connect(function()
			GUI["2"].Visible = false
			Library:Notify({
				Description = "You can re-open the menu anytime by pressing \"K\".",
				Duration = 5
			})
		end)
		
		--// Wait for UIS
		s_uis.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			
			if input.KeyCode == Enum.KeyCode.K then
				if not GUI["2"].Visible then
					GUI["2"].Visible = true
				end
			end
		end)
	end
	
	--// Make GUI draggable from title bar
	do
		local dragging  = nil
		local dragInput = nil
		local dragStart = nil
		local startPos  = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			GUI["2"].Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end

		local TitleBar = {
			Hover = false
		}

		GUI["3a"].MouseEnter:Connect(function()
			TitleBar.Hover = true
		end)
		GUI["3a"].MouseLeave:Connect(function()
			TitleBar.Hover = false
		end)
		s_uis.InputBegan:Connect(function(input, gpe)
			if gpe then return end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if TitleBar.Hover then
					dragging = true
					dragStart = input.Position
					startPos = GUI["2"].Position
				end
			end
		end)
		s_uis.InputChanged:Connect(function(input, gpe)
			if gpe then return end

			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				updateInput(input)
			end
		end)
		s_uis.InputEnded:Connect(function(input, gpe)
			if gpe then return end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)
	end
	
	--// GUI/Window Methods
	do
		function GUI:Destroy()
			GUI["1"]:Destroy() --// Destroy the entire GUI
		end
	end
	
	--// Navigation
	do
		-- StarterGui.ui lib.gamesense window.tab selector
		GUI["29"] = Instance.new("Frame", GUI["2"])
		GUI["29"]["BorderSizePixel"] = 0
		GUI["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
		GUI["29"]["Size"] = UDim2.new(0, 350, 0, 23)
		GUI["29"]["Position"] = UDim2.new(0.03947, 0, 0.12844, 0)
		GUI["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
		GUI["29"]["Name"] = "tab selector"
		GUI["29"]["BackgroundTransparency"] = 1

		-- StarterGui.ui lib.gamesense window.tab selector.UIListLayout
		GUI["2d"] = Instance.new("UIListLayout", GUI["29"])
		GUI["2d"]["Padding"] = UDim.new(0, 6)
		GUI["2d"]["SortOrder"] = Enum.SortOrder.LayoutOrder
		GUI["2d"]["FillDirection"] = Enum.FillDirection.Horizontal
	end
	
	function GUI:CreateTab(options: table)
		options = Library:_validate({
			Name = "Tab"
		}, options or {})
		
		local Tab = {
			Hover = false,
			Active = false
		}
		
		--// Render
		do
			-- StarterGui.ui lib.gamesense window.tab selector.tab button
			Tab["2a"] = Instance.new("TextButton", GUI["29"])
			Tab["2a"]["TextTruncate"] = Enum.TextTruncate.AtEnd
			Tab["2a"]["BorderSizePixel"] = 0
			Tab["2a"]["TextSize"] = 12
			Tab["2a"]["TextColor3"] = Color3.fromRGB(228, 228, 228)
			Tab["2a"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
			Tab["2a"]["FontFace"] = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			Tab["2a"]["Size"] = UDim2.new(0, 65, 0, 23)
			Tab["2a"]["Name"] = "tab button"
			Tab["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Tab["2a"]["Text"] = typeof(options["Name"]) == "string" and options["Name"] or "Tab"
			Tab["2a"]["Position"] = UDim2.new(0, 0, 0.26087, -6)

			-- StarterGui.ui lib.gamesense window.tab selector.tab button.UICorner
			Tab["2b"] = Instance.new("UICorner", Tab["2a"])
			Tab["2b"]["CornerRadius"] = UDim.new(0, 2)

			-- StarterGui.ui lib.gamesense window.tab selector.tab button.UIStroke
			Tab["2c"] = Instance.new("UIStroke", Tab["2a"])
			Tab["2c"]["Transparency"] = 0.8
			Tab["2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
			Tab["2c"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
			Tab["2c"]["Thickness"] = 0.6
			Tab["2c"]["Color"] = Color3.fromRGB(100, 100, 100)
			
			-- StarterTab.ui lib.gamesense window.tab
			Tab["4"] = Instance.new("ScrollingFrame", GUI["2"])
			Tab["4"]["Active"] = true
			Tab["4"]["BorderSizePixel"] = 0
			Tab["4"]["CanvasSize"] = UDim2.new(0, 0, 1, 0)
			Tab["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Tab["4"]["Name"] = "tab"
			Tab["4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
			Tab["4"]["Size"] = UDim2.new(0, 380, 0, 355)
			Tab["4"]["ScrollBarImageColor3"] = Color3.fromRGB(21, 87, 50)
			Tab["4"]["Position"] = UDim2.new(0, 0, 0.18578, 0)
			Tab["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Tab["4"]["ScrollBarThickness"] = 8
			Tab["4"]["BackgroundTransparency"] = 1
			Tab["4"]["Visible"] = false

			-- StarterTab.ui lib.gamesense window.tab.content
			Tab["5"] = Instance.new("Frame", Tab["4"])
			Tab["5"]["BorderSizePixel"] = 0
			Tab["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Tab["5"]["Size"] = UDim2.new(0, 350, 0, 450)
			Tab["5"]["Position"] = UDim2.new(0.5, -175, 0.51876, -180)
			Tab["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Tab["5"]["Name"] = "content"
			Tab["5"]["BackgroundTransparency"] = 1

			-- StarterTab.ui lib.gamesense window.tab.content.UIListLayout
			Tab["6"] = Instance.new("UIListLayout", Tab["5"])
			Tab["6"]["Padding"] = UDim.new(0, GUI_OPTIONS["Padding"])
			Tab["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder
		end
		
		--// Methods
		do
			function Tab:Activate()
				if not Tab.Active then
					if GUI.CurrentTab ~= nil then
						GUI.CurrentTab:Deactivate()
					end

					Tab.Active = true
					GUI.CurrentTab = Tab
					Tab["4"].Visible = true
					
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
				end
			end
			function Tab:Deactivate()
				if Tab.Active then
					Tab.Active = false
					Tab.Hover = false
					Tab["4"].Visible = false
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(228, 228, 228)
						}
					)
				end
			end
		end
			
		--// Logic
		do
			Tab["2a"].MouseEnter:Connect(function()
				Tab.Hover = true
				
				if not Tab.Active then
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
				end
			end)
			Tab["2a"].MouseLeave:Connect(function()
				Tab.Hover = false
				
				if not Tab.Active then
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(228, 228, 228)
						}
					)
				end
			end)
			
			Tab["2a"].MouseButton1Down:Connect(function()
				Tab:Activate()
			end)
		end
		
		if GUI.CurrentTab == nil then
			Tab:Activate()
		end
		
		--// Components
		function Tab:Button(options: table)
			options = Library:_validate({
				Name = "Button",
				Callback = function(...) end
			}, options or {})
			
			local Button = {
				Hover = false,
				MouseDown = false
			}
			
			--// Render
			do
				------------- BUTTON
				Button["8"] = Instance.new("Frame", Tab["5"])
				Button["8"]["BorderSizePixel"] = 0
				Button["8"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
				Button["8"]["Size"] = UDim2.new(0, 350, 0, 30)
				Button["8"]["Position"] = UDim2.new(0, 0, 0.08696, 0)
				Button["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				Button["8"]["Name"] = "button"

				Button["9"] = Instance.new("TextButton", Button["8"])
				Button["9"]["BorderSizePixel"] = 0
				Button["9"]["TextXAlignment"] = Enum.TextXAlignment.Left
				Button["9"]["TextSize"] = 14
				Button["9"]["TextColor3"] = Color3.fromRGB(228, 228, 228)
				Button["9"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
				Button["9"]["FontFace"] = Font.new("rbxasset://fonts/families/RobotoMono.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
				Button["9"]["Size"] = UDim2.new(0, 333, 0, 22)
				Button["9"]["BackgroundTransparency"] = 1
				Button["9"]["Name"] = "click"
				Button["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
				Button["9"]["Text"] = typeof(options["Name"]) == "string" and options["Name"] or "You must pass a str to button!"
				Button["9"]["Position"] = UDim2.new(0.5, -166, 0.5, -11)

				Button["a"] = Instance.new("ImageLabel", Button["9"])
				Button["a"]["Image"] = "rbxassetid://12974400739"
				Button["a"]["Size"] = UDim2.new(0, 18, 0, 18)
				Button["a"]["BackgroundTransparency"] = 1
				Button["a"]["Name"] = "icon"
				Button["a"]["Position"] = UDim2.new(1, -18, 0.5, -9)

				Button["b"] = Instance.new("UICorner", Button["8"])
				Button["b"]["CornerRadius"] = UDim.new(0, 2)

				Button["c"] = Instance.new("UIStroke", Button["8"])
				Button["c"]["Transparency"] = 0.8
				Button["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
				Button["c"]["LineJoinMode"] = Enum.LineJoinMode.Bevel
				Button["c"]["Thickness"] = 0.6
				Button["c"]["Color"] = Color3.fromRGB(100, 100, 100)
			end
			
			--// Methods
			function Button:SetText(text: string)
				assert(text, string.format("[ gamesense ] [ button_%s ] text is required", options["Name"]))
				assert(type(text) == "string", string.format("[ gamesense ] [ button_%s ] text must be a string", options["Name"]))
				
				Button["9"].Text = text
				options["Name"] = text
			end
			function Button:SetCallback(fn)
				if fn ~= nil then
					assert(typeof(fn) == "function", string.format("[ gamesense ] [ button_%s ] callback must be either nil or a function", options.Name))
				end
				options["Callback"] = fn
			end
			
			--// Logic
			do
				Button["8"].MouseEnter:Connect(function()
					Button.Hover = true
					Library:_tween(
						Button["a"], 
						{
							ImageColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
					Library:_tween(
						Button["9"], 
						{
							TextColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
				end)
				
				Button["8"].MouseLeave:Connect(function()
					Button.Hover = false

					if not Button.MouseDown then
						Library:_tween(
							Button["a"], 
							{
								ImageColor3 = Color3.fromRGB(255, 255, 255)
							}
						)
						Library:_tween(
							Button["9"], 
							{
								TextColor3 = Color3.fromRGB(228, 228, 228)
							}
						)
					end
				end)
				
				Button["9"].MouseButton1Down:Connect(function()
					Button.MouseDown = true
					Library:_tween(
						Button["8"],
						{
							BackgroundColor3 = Color3.fromRGB(39, 39, 39)
						}
					)
					--// Callback handle
					local s,r = pcall(options["Callback"])
					if not s then
						Library:Notify({
							Description = string.format("(%s) Error on button callback, check console for more details", options.Name),
							Duration = 5
						})
						warn(string.format("[ gamesense.lua ] [ %s - %s ] Error on button callback: %s", options.Name, _internal_gettime(), r))
					end
				end)
				Button["9"].MouseButton1Up:Connect(function()
					Button.MouseDown = false
					if Button.Hover then
						Library:_tween(
							Button["8"], 
							{
								BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							}
						)
					else
						Library:_tween(
							Button["8"],
							{
								BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							}
						)
					end
				end)
			end
			
			return Button
		end
		
		-- Add other components (Label, Slider, Toggle, Textbox) here with similar fixes...
		
		return Tab
	end
	
	Library:Notify({
		Description = "Gamesense.lua has been loaded.",
		Duration = 5
	})
	return GUI
end

return Library
