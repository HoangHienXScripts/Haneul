local checkgames, dictory = {
  3808081382, 994732206, 1451439645, 3756501373
}, {
["a"] = {"Từ từ đang update!",
         "Gần xong rùi nha!",
         "Đang update còn " .. math.random(1, 60) .. " phút nữa thôi!",
         "Bạn đã bị đá khỏi trò chơi bởi Admin!",
         "Có thể là do... tôi lười!"
        }
}

if table.find(checkgames, game.GameId) then
  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "😆 Thông báo 😆", Text = "📑 Trò này được đó... 📑", Duration = 2.5,})
else
  game:GetService("Players").LocalPlayer:Kick(dictory["a"][math.random(1, #dictory["a"])])
end
