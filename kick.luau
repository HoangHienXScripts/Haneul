-- Limit Playingtime {put into autoexec} --
-- Don't execute this script if u does not wanna lost your blox fruit df --
local _c, _p, _s, _txtlb, _txtlb1
_c = game:GetService("CoreGui")
_p = game:GetService("Players")
_s = Instance.new("ScreenGui", _c)
_txtlb = Instance.new("TextLabel", _s)
_txtlb1 = Instance.new("TextLabel", _s)

function _adduic(t, r)
    local a = Instance.new("UICorner", t)
    a.CornerRadius = UDim.new(r, 0)
end

_s.Name = "Countdown_Shown"
_txtlb.BackgroundTransparency = 0.8
_txtlb.BackgroundColor3 = Color3.new(0, 0, 0)
_txtlb.Position = UDim2.new(0.35, 0, -0.15, 0)
_txtlb.Size = UDim2.new(0.3, 0, 0.05, 0)
_txtlb.TextScaled = true
_txtlb.TextSize = 9
_txtlb.TextColor3 = Color3.new(0, 1, 0)
_txtlb.Font = Enum.Font.Arcade
_txtlb.Text = ""
_txtlb.Visible = true
_adduic(_txtlb, 0.15)

_txtlb1.BackgroundTransparency = 0.8
_txtlb1.BackgroundColor3 = Color3.new(0, 0, 0)
_txtlb1.Position = UDim2.new(0.68, 0, -0.15, 0)
_txtlb1.Size = UDim2.new(0.05, 0, 0.05, 0)
_txtlb1.TextScaled = true
_txtlb1.TextSize = 9
_txtlb1.TextColor3 = Color3.new(1, 1, 0)
_txtlb1.Font = Enum.Font.Arcade
_txtlb1.Text = ""
_txtlb1.Visible = true
_adduic(_txtlb1, 0.15)

local timecountdown, secrect_point, _its_enabled, kick_enabled = 350, 0, true, true
_txtlb1.Text = secrect_point

function _startcountdown(second)
    while _its_enabled do
        wait(second)
        timecountdown -= 1
        if kick_enabled then
            _txtlb.Text = "[" .. timecountdown .. "]"
        end
        
        if timecountdown <= 200 and timecountdown >= 195 then
            _txtlb.TextColor3 = Color3.new(1, 1, 0)
        elseif timecountdown <= 50 and timecountdown >= 45 then
            _txtlb.TextColor3 = Color3.new(1, 0, 0)
        elseif timecountdown <= 0 then
            _its_enabled = false
            if kick_enabled then
                _p.LocalPlayer:Kick("Hết thời gian chơi rồi, đi ngủ đi!")
            else
                _txtlb.TextColor3 = Color3.new(0, 1, 1)
                _txtlb.Text = "[ Ahhh hình như nó bị hỏng rùi... ]"
            end
        end
    end
end

_p.LocalPlayer.CharacterAdded:Connect(function()
    if _p.Character and _p.Character:FindFirstChild("HumanoidRootPart") then
        secrect_point += 1
        _txtlb1.Text = secrect_point
        if secrect_point >= 5 then
             kick_enabled = false
        end
    end
end)

_startcountdown(1)
-- This is just a script i used to trolling my little brother --
