-- Don't execute this script if u does not wanna lost your blox fruit df --
local _c, _p, _s, _txtlb
_c = game:GetService("CoreGui")
_p = game:GetService("Players")
_s = Instance.new("ScreenGui", _c)
_txtlb = Instance.new("TextLabel", _s)

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
_txtlb.Font = Enum.Font.Code
_txtlb.Text = ""
_txtlb.Visible = true
_adduic(_txtlb, 0.15)

local timecountdown, _its_enabled = 320, true

function _startcountdown(second)
    while _its_enabled do
        wait(second)
        timecountdown -= 1
        _txtlb.Text = "[" .. timecountdown .. "]"
        if timecountdown <= 200 and timecountdown >= 195 then
            _txtlb.TextColor3 = Color3.new(1, 1, 0)
        elseif timecountdown <= 50 and timecountdown >= 45 then
            _txtlb.TextColor3 = Color3.new(1, 0, 0)
        elseif timecountdown <= 0 then
            _its_enabled = false
            _p.LocalPlayer:Kick("Hết thời gian chơi rồi, đi ngủ đi!")
        end
    end
end

_startcountdown(0.5)
-- This is just a script i used to trolling my little brother --
