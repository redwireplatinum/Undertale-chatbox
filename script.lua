function onChatted(plr)
plr.Chatted:connect(function(msg)
-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local UTChatBox = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local PlayerIcon = Instance.new("ImageLabel")
local Message = Instance.new("TextLabel")
--Properties:
UTChatBox.Name = "UTChatBox"
UTChatBox.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Parent = UTChatBox
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(1, 1, 1)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.0911589488, 0, 0.0532612614, 0)
Frame.Size = UDim2.new(0, 1142, 0, 160)

PlayerIcon.Name = "PlayerIcon"
PlayerIcon.Parent = Frame
PlayerIcon.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerIcon.BackgroundTransparency = 1
PlayerIcon.Position = UDim2.new(0.0179487187, 0, 0.075000003, 0)
PlayerIcon.Size = UDim2.new(0, 136, 0, 136)

Message.Name = "Message"
Message.Parent = Frame
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.Position = UDim2.new(0.210256398, 0, 0.0692499876, 0)
Message.Size = UDim2.new(0, 606, 0, 136)
Message.Font = Enum.Font.Arcade
Message.Text = "* "
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextSize = 26
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left
Message.TextYAlignment = Enum.TextYAlignment.Top
local userId = plr.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
PlayerIcon.Image = content
for i = 1, msg:len() do
coroutine.resume(coroutine.create(function()
local s = Instance.new("Sound", workspace)
s.SoundId = "rbxassetid://5416666166"
repeat wait() until s.TimeLength ~= 0
s:Play()
wait(s.TimeLength)
s:Destroy()
end))
Message.Text = "* "..msg:sub(1,i)
wait()
end
wait(2)
UTChatBox:Destroy()
end)
end
for i,v in pairs(game.Players:GetPlayers()) do onChatted(v) end
game.Players.PlayerAdded:connect(onChatted)
