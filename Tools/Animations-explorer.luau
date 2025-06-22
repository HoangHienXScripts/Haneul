-- HHxScript: Animations Finder --
local _CoreGui, _MarketplaceService, _ScreenGui, _DragF, _ContainerB, _CreditNCount
local _WhereIts, _Canvas, _H, _P, _Sn, _Totals

_CoreGui = game:GetService("CoreGui")
_MarketplaceService = game:GetService("MarketplaceService")

_WhereIts = _CoreGui
_Canvas = 0
_H = 10
_P = 2
_Sn = ""
_Totals = 0

_ScreenGui = Instance.new("ScreenGui", _WhereIts)
_DragF = Instance.new("Frame", _ScreenGui)
_ContainerB = Instance.new("ScrollingFrame", _DragF)
_CreditNCount = Instance.new("TextLabel", _DragF)

_DragF.Name = "HolderFrame_ArkXProject"
_DragF.BackgroundTransparency = 0.5
_DragF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_DragF.Position = UDim2.new(0.6, 0, 0.1, 0)
_DragF.Size = UDim2.new(0.25, 0, 0.45, 0)
_DragF.Active = true
_DragF.Draggable = true
_DragF.Visible = true

_ContainerB.Name = "CointainerButtons_ArkXProject"
_ContainerB.BackgroundTransparency = 0.5
_ContainerB.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_ContainerB.Position = UDim2.new(0.02, 0, 0.05, 0)
_ContainerB.Size = UDim2.new(0.96, 0, 0.85, 0)
_ContainerB.ScrollBarThickness = 0.1
_ContainerB.CanvasSize = UDim2.new(0, 0, 0, 0)
_ContainerB.Visible = true

_CreditNCount.Name = "CreditNCount_ArkXProject"
_CreditNCount.BackgroundTransparency = 0.5
_CreditNCount.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_CreditNCount.Position = UDim2.new(0, 0, -0.15, 0)
_CreditNCount.Size = UDim2.new(0.49, 0, 0.1, 0)
_CreditNCount.TextScaled = true
_CreditNCount.TextSize = 9
_CreditNCount.TextColor3 = Color3.fromRGB(0, 255, 0)
_CreditNCount.Text = ""
_CreditNCount.Font = Enum.Font.Code
_CreditNCount.Visible = true

function AddUIC(_name, radius)
    local RoundedUI = Instance.new("UICorner", _name)
    RoundedUI.CornerRadius = UDim.new(radius, 0)
end

function _MB1C(_name, scripts)
    _name.MouseButton1Click:Connect(scripts)
end

function _RunAnimations(ID)
    local _char, _hmoid
    _char = game:GetService("Players").LocalPlayer.Character
    _hmoid = _char:FindFirstChildOfClass("Humanoid")
    if not _hmoid then
        return 
    end
    
    for n, _track in pairs(_hmoid:GetPlayingAnimationTracks()) do
        _track:Stop()
    end
    
    local _newAnims, _playnewAnims
    _newAnims = Instance.new("Animation")
    _newAnims.AnimationId = ID
    _playnewAnims = _hmoid:LoadAnimation(_newAnims)
    _playnewAnims:Play()
end

function _Buttons(_namepar, _bText, scripts)
    local _Anims = Instance.new("TextButton", _namepar)
    _Anims.Name = "_SpecialButton_#" .. math.random(1, 9999)
    _Anims.BackgroundTransparency = 0
    _Anims.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    _Anims.Position = UDim2.new(0.02, 0, 0, _Canvas + _P)
    _Anims.Size = UDim2.new(0.96, 0, 0, _H)
    _Anims.TextScaled = true
    _Anims.TextSize = 9
    _Anims.TextColor3 = Color3.fromRGB(255, 255, 255)
    _Anims.Font = Enum.Font.Code
    _Anims.Text = _bText
    _Anims.Visible = true
    AddUIC(_Anims, 0.2)
    _MB1C(_Anims, scripts)
    _Canvas = _Canvas + _H + _P
    _ContainerB.CanvasSize = UDim2.new(0, 0, 0, _Canvas)
end

function _StartCreateList(_IsAWhat)
    for n, items in pairs(game:GetDescendants()) do
        if items:IsA(_IsAWhat) then
            local A1_AnimationId, A1Find
            A1_AnimationId = items.AnimationId
            A1Find = A1_AnimationId:find("rbxassetid://") and A1_AnimationId:match("%d+")
            if not string.find(A1_AnimationId, "507768375") and not string.find(A1_AnimationId, "180435571") then
                if A1Find then
                    local ss, op = pcall(function()
                        return _MarketplaceService:GetProductInfo(tonumber(A1Find)).Name
                    end)
                    _Sn = ss and op or "failed..."
                end
            end
            
            _Totals = _Totals + 1
            _CreditNCount.Text = "Credit: HoangHien, [" .. _Totals .. "] Animations"
            
            _Buttons(_ContainerB, items.Name .. " [PLAY]", function()
                print("AnimationId: " .. A1_AnimationId .. "\n • Animation Name: " .. items.Name .. "\n • Product Name: " .. _Sn .. " ☆")
                _RunAnimations(A1_AnimationId)
            end)
        end
    end
end

task.spawn(function()
    if game:IsLoaded() then
        AddUIC(_DragF, 0.1)
        AddUIC(_ContainerB, 0.2)
        AddUIC(_CreditNCount, 0.2)
        _StartCreateList("Animation")
    else
        print("Suspicious err...")
    end
end)
