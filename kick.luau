-- Don't execute this script if u does not wanna lost your blox fruit df --
local countdown_point = 60
_G.Enabled = _G.Enabled or true
while _G.Enabled do
    wait(1)
    countdown_point -= 1
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "《Đếm ngược thời gian đá》",
        Text = "Bạn sẽ bị đá sau " .. countdown_point .. " giây nữa =))",
        Duration = 2,
        Button1 = "Ô KÊ",
        Callback = function()
            countdown_point += 2
            --game:GetService("Players").LocalPlayer.Character.Humanoid.Health -= 10
        end,
    })
    if countdown_point <= 0 then
        game:GetService("Players").LocalPlayer:Kick("Trái ác quỷ của bạn đã bị xóa =))))")
    end
end
-- This is just a script i used to trolling my little brother --
