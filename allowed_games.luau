local checkgames, dictory = {
  3808081382, 994732206, 1451439645, 3756501373
}, {["a"] = "Từ từ đang update... 💀"}

if table.find(checkgames, game.GameId) then
  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "😆 Thông báo 😆", Text = "📑 Trò này được đó... 📑", Duration = 2.5,})
else
  game:GetService("Players").LocalPlayer:Kick(dictory["a"])
end
