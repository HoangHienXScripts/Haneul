local checkgames, dictory = {
  3808081382, 994732206, 1451439645, 3756501373
}, {
    ["a"] = {
             "Từ từ đang update!",
             "Gần xong rùi nha!",
             "Đang update còn " .. math.random(1, 60) .. " phút nữa thôi!",
             "Bạn đã bị đá khỏi trò chơi bởi Admin!",
             "Có thể là do... tôi lười!"
   },
    ["b"] = {
             -- quên ghi cmt 30 câu nói đùa của phần b này là do Artifact Generate --
             "Bạn vừa bị đá khỏi server vì... quá đẹp trai!",
             "Chúng tôi không chịu nổi tài năng của bạn!",
             "Đá chơi thôi chứ không có lý do gì đâu!",
             "Máy chủ đang tạm nghỉ đi uống trà sữa!",
             "Bạn bị kick vì chơi hay hơn cả admin!",
             "Lỗi không xác định, nhưng lỗi không phải do bạn!",
             "Game đang dỗi bạn, quay lại sau nhé!",
             "Một thế lực bí ẩn vừa đá bạn ra ngoài!",
             "Bạn bị đá khỏi trò chơi vì cười quá to!",
             "Kick vì... bạn quá pro!",
             "Đá nhẹ thôi, lần sau nhớ mang quà vào game!",
             "Game sập, đổ lỗi cho bạn nhen!",
             "Bạn bị đá ra do quá đáng yêu!",
             "Game đang ghen tị với bạn!",
             "Do mạng bạn... à không, do game!",
             "Bạn bị đá do không nạp Robux đủ!",
             "Bị kick vì lý do không liên quan!",
             "Bạn vừa được chọn trúng... vé đá khỏi game!",
             "Chúng tôi đang test chức năng kick ngẫu nhiên!",
             "Bạn bị đá vì không share link game cho bạn bè!",
             "Đá ra để bạn nghỉ ngơi, đừng chơi nhiều quá!",
             "Admin đang troll bạn thôi!",
             "Đây là cú đá mang tính giáo dục!",
             "Bạn bị đá vì... hôm nay là thứ 7!",
             "Lỗi 404: Lý do đá không tồn tại!"
   }
}

if table.find(checkgames, game.GameId) then
  game:GetService("StarterGui"):SetCore("SendNotification", {Title = "😆 Thông báo 😆", Text = "📑 Trò này được đó... 📑", Duration = 2.5,})
else
  game:GetService("Players").LocalPlayer:Kick(dictory["b"][math.random(1, #dictory["b"])])
end
