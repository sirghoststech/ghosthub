local Authorized = nil
local AuthorizationList = {4365267751}
if table.find(AuthorizationList,game.Players.LocalPlayer.UserId) then 
	Authorized = true
else
	Authorized = false
end
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source') or game:HttpGet('https://raw.githubusercontent.com/sirghoststech/ghosthub/main/backuporionlib'))()
OrionLib:MakeNotification({
	Name = "Ghost Hub Loader",
	Content = "Checking authorization...",
	Image = "rbxassetid://6031154871",
	Time = 3
})
wait(1)
if Authorized then
	OrionLib:MakeNotification({
		Name = "Ghost Hub Loader",
		Content = "You are authorized to use Ghost Hub\nby CyberShark LLC",
		Image = "rbxassetid://6023426909",
		Time = 4.5
	})
	local Window = OrionLib:MakeWindow({Name = "Ghost Hub", HidePremium = true, SaveConfig = true, ConfigFolder = "GhostHub_Config:OrionLib"})
	local Information = Window:MakeTab({
		Name = "Information",
		Icon = "rbxassetid://6026568210",
		PremiumOnly = false
	})
	local Welcome = Information:AddSection({
		Name = "Welcome"
	})
	local Credits = Information:AddSection({
		Name = "Credits"
	})
	Credits:AddParagraph('UI Design','Orion UI Library')
	Information:AddButton({
		Name = "Copy UI Lib Documentation Link\n(This UI Library not created by us)",
		Callback = function()
			local succ,results = pcall(function()
				setclipboard("https://github.com/shlexware/Orion/blob/main/Documentation.md")
			end)
			if not succ then 
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Failed to copy link to clipboard.",
					Image = "rbxassetid://6031071057",
					Time = 4.5
				})
			else
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Successfully copied link",
					Image = "rbxassetid://6035053278",
					Time = 4.5
				})
			end
		end    
	})
	Credits:AddParagraph('Scripting/Programming','SirGhosts')
	Credits:AddParagraph('Ghost Hub Ownership','CyberShark LLC')
	Information:AddButton({
		Name = "CyberShark LLC Website",
		Callback = function()
			local succ,results = pcall(function()
				setclipboard("cybersharklllc.com")
			end)
			if not succ then 
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Failed to copy link to clipboard.",
					Image = "rbxassetid://6031071057",
					Time = 4.5
				})
			else
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Successfully copied link",
					Image = "rbxassetid://6035053278",
					Time = 4.5
				})
			end
		end    
	})
	Information:AddButton({
		Name = "Roblox Exploits Section of CyberShark LLC Website",
		Callback = function()
			local succ,results = pcall(function()
				setclipboard("robloxexploits.cybersharklllc.com")
			end)
			if not succ then 
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Failed to copy link to clipboard.",
					Image = "rbxassetid://6031071057",
					Time = 4.5
				})
			else
				OrionLib:MakeNotification({
					Name = "Ghost Hub",
					Content = "Successfully copied link",
					Image = "rbxassetid://6035053278",
					Time = 4.5
				})
			end
		end    
	})
	Welcome:AddParagraph("Welcome to Ghost Hub, by CyberShark LLC","Thank you for using our script hub. You can either use a universal-script hub, or one for the current game.")
	local Game = Window:MakeTab({
		Name = "Game",
		Icon = "rbxassetid://6034837803",
		PremiumOnly = false
	})
	local CurrGame = Game:AddSection("Current Game")
else
	OrionLib:MakeNotification({
		Name = "Ghost Hub Loader",
		Content = "Authorization Denied",
		Image = "rbxassetid://6035047387",
		Time = 4.5
	})
end
