-- ================= KEY SYSTEM =================
local REQUIRED_KEY = "CELLO STUDIO" -- Ganti key di sini kalau mau beda
local isVerified = false

local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "Cello_KeySystem"
KeyGui.ResetOnSpawn = false
KeyGui.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 250, 0, 120)
Frame.Position = UDim2.new(0.5, -125, 0.5, -60)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = KeyGui
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Title.Text = "  Cello Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.Parent = Frame
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 8)

local Box = Instance.new("TextBox")
Box.Size = UDim2.new(1, -20, 0, 30)
Box.Position = UDim2.new(0, 10, 0, 45)
Box.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Box.PlaceholderText = "Masukkan Key..."
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(200, 200, 200)
Box.Font = Enum.Font.Gotham
Box.TextSize = 12
Box.Parent = Frame
Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 6)

local Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(1, -20, 0, 30)
Btn.Position = UDim2.new(0, 10, 0, 85)
Btn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
Btn.Text = "Submit"
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 12
Btn.Parent = Frame
Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 6)

Btn.MouseButton1Click:Connect(function()
    if Box.Text == REQUIRED_KEY then
        isVerified = true
        KeyGui:Destroy()
    else
        Box.Text = ""
        Box.PlaceholderText = "Key Salah!"
    end
end)

-- Tahan script biar gak lanjut sebelum key bener
while not isVerified do
    task.wait(0.1)
end
-- ==============================================

-- ================= SCRIPT REPLACER =================
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local function getGuiParent()
    local success, executorGui = pcall(function() return gethui and gethui() end)
    if success and executorGui then return executorGui end
    return CoreGui
end

if getGuiParent():FindFirstChild("Cello_Replacer") then getGuiParent():FindFirstChild("Cello_Replacer"):Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Cello_Replacer"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = getGuiParent()

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(0, 40, 0, 40)
ToggleBtn.Position = UDim2.new(0, 20, 0, 100)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
ToggleBtn.Text = "⚙"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.TextSize = 24
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Active = true
ToggleBtn.Draggable = true
ToggleBtn.Parent = ScreenGui
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 20)

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 280, 0, 270)
MainFrame.Position = UDim2.new(0.5, -140, 0.3, -135)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 8)

local isOpen = true
ToggleBtn.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    MainFrame.Visible = isOpen
    ToggleBtn.Text = isOpen and "⚙" or "☰"
end)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Title.Text = "  Replacer BY Cello"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.Parent = MainFrame
Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 8)

local SrcBox = Instance.new("TextBox")
SrcBox.Size = UDim2.new(1, -20, 0, 30)
SrcBox.Position = UDim2.new(0, 10, 0, 45)
SrcBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
SrcBox.PlaceholderText = "Nama folder source..."
SrcBox.Text = ""
SrcBox.TextColor3 = Color3.fromRGB(200, 200, 200)
SrcBox.Font = Enum.Font.Gotham
SrcBox.TextSize = 12
SrcBox.Parent = MainFrame
Instance.new("UICorner", SrcBox).CornerRadius = UDim.new(0, 6)

local TgtBox = Instance.new("TextBox")
TgtBox.Size = UDim2.new(1, -20, 0, 30)
TgtBox.Position = UDim2.new(0, 10, 0, 95)
TgtBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
TgtBox.PlaceholderText = "Nama folder target..."
TgtBox.Text = ""
TgtBox.TextColor3 = Color3.fromRGB(200, 200, 200)
TgtBox.Font = Enum.Font.Gotham
TgtBox.TextSize = 12
TgtBox.Parent = MainFrame
Instance.new("UICorner", TgtBox).CornerRadius = UDim.new(0, 6)

local SrcLabel = Instance.new("TextLabel")
SrcLabel.Size = UDim2.new(1, -20, 0, 15)
SrcLabel.Position = UDim2.new(0, 10, 0, 30)
SrcLabel.BackgroundTransparency = 1
SrcLabel.Text = "SOURCE"
SrcLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
SrcLabel.Font = Enum.Font.Gotham
SrcLabel.TextSize = 10
SrcLabel.TextXAlignment = Enum.TextXAlignment.Left
SrcLabel.Parent = MainFrame

local TgtLabel = Instance.new("TextLabel")
TgtLabel.Size = UDim2.new(1, -20, 0, 15)
TgtLabel.Position = UDim2.new(0, 10, 0, 80)
TgtLabel.BackgroundTransparency = 1
TgtLabel.Text = "TARGET"
TgtLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
TgtLabel.Font = Enum.Font.Gotham
TgtLabel.TextSize = 10
TgtLabel.TextXAlignment = Enum.TextXAlignment.Left
TgtLabel.Parent = MainFrame

local ReplaceBtn = Instance.new("TextButton")
ReplaceBtn.Size = UDim2.new(1, -20, 0, 35)
ReplaceBtn.Position = UDim2.new(0, 10, 0, 140)
ReplaceBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
ReplaceBtn.Text = "⚡ REPLACE ALL"
ReplaceBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ReplaceBtn.Font = Enum.Font.GothamBold
ReplaceBtn.TextSize = 14
ReplaceBtn.Parent = MainFrame
Instance.new("UICorner", ReplaceBtn).CornerRadius = UDim.new(0, 6)

local ClearBtn = Instance.new("TextButton")
ClearBtn.Size = UDim2.new(1, -20, 0, 30)
ClearBtn.Position = UDim2.new(0, 10, 0, 185)
ClearBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
ClearBtn.Text = "✖ CLEAR / RESTORE ORIGINAL"
ClearBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearBtn.Font = Enum.Font.GothamBold
ClearBtn.TextSize = 12
ClearBtn.Parent = MainFrame
Instance.new("UICorner", ClearBtn).CornerRadius = UDim.new(0, 6)

-- FUNGSI FIX POSISI (PAKAI PIVOT BOUNDING BOX)
local function fixPosition(clone, targetObj)
    local targetPivot
    if targetObj:IsA("BasePart") then
        targetPivot = targetObj.CFrame
    else
        local ok, pivot = pcall(function() return targetObj:GetPivot() end)
        if ok then
            targetPivot = pivot
        else
            local part = targetObj:FindFirstChildWhichIsA("BasePart", true)
            targetPivot = part and part.CFrame or CFrame.new()
        end
    end

    if clone:IsA("Model") then
        local ok = pcall(function()
            clone:PivotTo(targetPivot)
        end)
        
        if not ok then
            local clonePivot
            local ok2, pivot2 = pcall(function() return clone:GetPivot() end)
            if ok2 then clonePivot = pivot2 else clonePivot = CFrame.new() end
            
            local offsetPos = targetPivot.Position - clonePivot.Position
            for _, v in ipairs(clone:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CFrame = v.CFrame + offsetPos
                end
            end
        end
    elseif clone:IsA("BasePart") then
        clone.CFrame = targetPivot
    end
end

local originalBackup = {}

ReplaceBtn.MouseButton1Click:Connect(function()
    local srcName = SrcBox.Text
    local tgtName = TgtBox.Text

    if srcName == "" or tgtName == "" then
        ReplaceBtn.Text = "Isi nama folder dulu!"
        task.wait(2)
        ReplaceBtn.Text = "⚡ REPLACE ALL"
        return
    end

    local sourceFolder, targetFolder = nil, nil
    for _, obj in ipairs(game:GetDescendants()) do
        if obj.Name:lower() == srcName:lower() and (obj:IsA("Folder") or obj:IsA("Model")) then sourceFolder = obj end
        if obj.Name:lower() == tgtName:lower() and (obj:IsA("Folder") or obj:IsA("Model")) then targetFolder = obj end
        if sourceFolder and targetFolder then break end
    end

    if not sourceFolder or not targetFolder then
        ReplaceBtn.Text = "Folder tidak ditemukan!"
        task.wait(2)
        ReplaceBtn.Text = "⚡ REPLACE ALL"
        return
    end

    local sourceItems = {}
    for _, v in ipairs(sourceFolder:GetChildren()) do
        if v:IsA("Model") or v:IsA("BasePart") then table.insert(sourceItems, v) end
    end

    if #sourceItems == 0 then
        ReplaceBtn.Text = "Folder source kosong!"
        task.wait(2)
        ReplaceBtn.Text = "⚡ REPLACE ALL"
        return
    end

    local count = 0
    for _, obj in ipairs(targetFolder:GetDescendants()) do
        if obj:IsA("Model") or obj:IsA("BasePart") then
            
            table.insert(originalBackup, {Name = obj.Name, Parent = obj.Parent, Obj = obj})

            local randomModel = sourceItems[math.random(#sourceItems)]
            local clone = randomModel:Clone()
            clone.Name = "Cello_Clone"

            pcall(function()
                fixPosition(clone, obj)
            end)

            clone.Parent = obj.Parent
            obj:Destroy()
            count = count + 1
        end
    end

    ReplaceBtn.Text = "Berhasil: " .. count .. " diganti!"
    task.wait(2)
    ReplaceBtn.Text = "⚡ REPLACE ALL"
end)

ClearBtn.MouseButton1Click:Connect(function()
    if #originalBackup == 0 then
        ClearBtn.Text = "Belum ada yang di-replace!"
        task.wait(2)
        ClearBtn.Text = "✖ CLEAR / RESTORE ORIGINAL"
        return
    end

    for _, data in ipairs(originalBackup) do
        for _, child in ipairs(data.Parent:GetChildren()) do
            if child.Name == "Cello_Clone" then
                child:Destroy()
            end
        end
        if data.Obj and not data.Obj.Parent then
            data.Obj.Parent = data.Parent
        end
    end

    originalBackup = {}
    ClearBtn.Text = "Berhasil dikembalikan!"
    task.wait(2)
    ClearBtn.Text = "✖ CLEAR / RESTORE ORIGINAL"
end)
