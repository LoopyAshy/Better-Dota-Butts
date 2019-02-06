require('internal/split')

ChatCommand = ChatCommand or {}

function ChatCommand:Init()
	ListenToGameEvent("player_chat", Dynamic_Wrap(ChatCommand, 'OnPlayerChat'), self)
	self.initialised = true
end

if not ChatCommand.initialised then
    ChatCommand:Init()
end

function ChatCommand:LinkCommand(command, funcName, obj, perm)
	self.commands = self.commands or {}
	self.commands[command] = {funcName, obj, perm}
end

function ChatCommand:OnPlayerChat(keys)
	if IsServer() then
	self.commands = self.commands or {}
	local text = keys.text
	local teamonly = keys.teamonly
  	local userID = keys.userid

	local splitted = split(text, " ")
		if self.commands[splitted[1]] ~= nil then
			if self.commands[splitted[1]][3] == "hostonly" and GetListenServerHost():GetPlayerID() ~= GameMode.vUserIds[userID]:GetPlayerID() then
				return nil
			end
			local location = self.commands[splitted[1]]
			funcName = location[1]

			if location[2] == nil then
				_G[funcName](keys)
			else
				local obj = location[2]
				obj[funcName](obj, keys)
			end
		end
	end
end