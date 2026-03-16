-- [[ Client-side Toggleable Script for "OG" Rarity ]]
-- [[ Kite's OG Visual ]]
-- [[ Credits to Gemini best ai lmfao ]]

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local selectedRarities = {
    ["Common"] = true,
    ["Rare"] = true,
    ["Epic"] = true,
    ["Legendary"] = true,
    ["Mythic"] = true,
    ["Secret"] = true
}

local activeGradients = {}
local originalStates = {} 
local isMasterEnabled = false

-- Keybinds and Settings
local uiKeybind = Enum.KeyCode.LeftControl
local masterKeybind = Enum.KeyCode.RightControl
local useMinimizeSquare = true 
local isBinding = false 
local bindingTarget = nil 

local richGold = Color3.fromRGB(255, 215, 0)
local darkGold = Color3.fromRGB(130, 100, 0)
local blackBand = Color3.fromRGB(20, 20, 20)

-- ==========================================
-- 1. CUSTOM DRAG CONTROLLER
-- ==========================================
local function makeDraggable(dragHandle, frameToMove)
    local dragging, dragInput, dragStart, startPos

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frameToMove.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            frameToMove.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

-- ==========================================
-- 2. UI SETUP 
-- ==========================================
local guiParent = pcall(function() return game:GetService("CoreGui") end) and game:GetService("CoreGui") or Players.LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KitesOGVisualUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = guiParent

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 160, 0, 220) 
MainFrame.Position = UDim2.new(0.8, -20, 0.4, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = MainFrame

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 25)
TopBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TopBar.Parent = MainFrame
makeDraggable(TopBar, MainFrame)

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 8)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -25, 1, 0)
Title.Position = UDim2.new(0, 8, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Kite's OG Visual"
Title.TextColor3 = Color3.fromRGB(255, 215, 0)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 11 
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 25, 0, 25)
MinimizeBtn.Position = UDim2.new(1, -25, 0, 0)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "X"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 50, 50)
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.TextSize = 14
MinimizeBtn.Parent = TopBar

local TabBar = Instance.new("Frame")
TabBar.Size = UDim2.new(1, 0, 0, 25)
TabBar.Position = UDim2.new(0, 0, 0, 25)
TabBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TabBar.BorderSizePixel = 0
TabBar.Parent = MainFrame

local TabListLayout = Instance.new("UIListLayout")
TabListLayout.FillDirection = Enum.FillDirection.Horizontal
TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabListLayout.Parent = TabBar

local ContentArea = Instance.new("Frame")
ContentArea.Size = UDim2.new(1, 0, 1, -50)
ContentArea.Position = UDim2.new(0, 0, 0, 50)
ContentArea.BackgroundTransparency = 1
ContentArea.Parent = MainFrame

local MinFrame = Instance.new("TextButton")
MinFrame.Size = UDim2.new(0, 45, 0, 45)
MinFrame.Position = UDim2.new(0.8, -20, 0.4, 0)
MinFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) 
MinFrame.Text = "OG"
MinFrame.TextColor3 = Color3.fromRGB(255, 215, 0) 
MinFrame.Font = Enum.Font.GothamBlack
MinFrame.TextSize = 18
MinFrame.Visible = false
MinFrame.AutoButtonColor = false 
MinFrame.Parent = ScreenGui
makeDraggable(MinFrame, MinFrame) 

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 8)
MinCorner.Parent = MinFrame

-- ==========================================
-- 3. TAB CREATION
-- ==========================================
local tabs = {}
local pages = {}

local function createTab(name, layoutOrder)
    local tabBtn = Instance.new("TextButton")
    tabBtn.Size = UDim2.new(0.333, 0, 1, 0)
    tabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    tabBtn.BorderSizePixel = 0
    tabBtn.Text = name
    tabBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
    tabBtn.Font = Enum.Font.GothamSemibold
    tabBtn.TextSize = 10 
    tabBtn.LayoutOrder = layoutOrder
    tabBtn.Parent = TabBar
    
    local page = Instance.new("ScrollingFrame")
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.ScrollBarThickness = 3
    page.AutomaticCanvasSize = Enum.AutomaticSize.Y
    page.CanvasSize = UDim2.new(0, 0, 0, 0)
    page.Visible = false
    page.Parent = ContentArea
    
    tabs[name] = tabBtn
    pages[name] = page
    
    tabBtn.MouseButton1Click:Connect(function()
        for tName, tBtn in pairs(tabs) do
            tBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            tBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
            pages[tName].Visible = false
        end
        tabBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        tabBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
        page.Visible = true
    end)
    
    return page
end

local MainPage = createTab("Main", 1)
local RaritiesPage = createTab("Rarities", 2)
local SettingsPage = createTab("Settings", 3)

tabs["Main"].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
tabs["Main"].TextColor3 = Color3.fromRGB(255, 215, 0)
MainPage.Visible = true

-- ==========================================
-- 4. POPULATING THE PAGES
-- ==========================================
-- MAIN PAGE
local MasterBtn = Instance.new("TextButton")
MasterBtn.Size = UDim2.new(1, -20, 0, 40)
MasterBtn.Position = UDim2.new(0, 10, 0, 10)
MasterBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
MasterBtn.Text = "MASTER: OFF"
MasterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MasterBtn.Font = Enum.Font.GothamBold
MasterBtn.TextSize = 14
MasterBtn.Parent = MainPage
local MasterCorner = Instance.new("UICorner")
MasterCorner.CornerRadius = UDim.new(0, 6)
MasterCorner.Parent = MasterBtn

-- RARITIES PAGE
local RarityListLayout = Instance.new("UIListLayout")
RarityListLayout.Padding = UDim.new(0, 4)
RarityListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
RarityListLayout.Parent = RaritiesPage
local RarityPadding = Instance.new("UIPadding")
RarityPadding.PaddingTop = UDim.new(0, 5)
RarityPadding.PaddingBottom = UDim.new(0, 5)
RarityPadding.Parent = RaritiesPage

-- SETTINGS PAGE (Fixed Layout Order)
local SettingsLayout = Instance.new("UIListLayout")
SettingsLayout.Padding = UDim.new(0, 5)
SettingsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SettingsLayout.SortOrder = Enum.SortOrder.LayoutOrder -- Forces number order!
SettingsLayout.Parent = SettingsPage

local SettingsPadding = Instance.new("UIPadding")
SettingsPadding.PaddingTop = UDim.new(0, 5)
SettingsPadding.PaddingBottom = UDim.new(0, 5)
SettingsPadding.Parent = SettingsPage

-- Show/Hide UI Toggle
local UIKeyLabel = Instance.new("TextLabel")
UIKeyLabel.LayoutOrder = 1
UIKeyLabel.Size = UDim2.new(1, -20, 0, 15)
UIKeyLabel.BackgroundTransparency = 1
UIKeyLabel.Text = "Show/Hide UI:"
UIKeyLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
UIKeyLabel.Font = Enum.Font.Gotham
UIKeyLabel.TextSize = 11
UIKeyLabel.Parent = SettingsPage

local UIKeyBtn = Instance.new("TextButton")
UIKeyBtn.LayoutOrder = 2
UIKeyBtn.Size = UDim2.new(1, -20, 0, 22)
UIKeyBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UIKeyBtn.Text = uiKeybind.Name
UIKeyBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
UIKeyBtn.Font = Enum.Font.GothamBold
UIKeyBtn.TextSize = 11
UIKeyBtn.Parent = SettingsPage
local UIKeyCorner = Instance.new("UICorner")
UIKeyCorner.CornerRadius = UDim.new(0, 4)
UIKeyCorner.Parent = UIKeyBtn

-- Master Script Toggle
local MasterKeyLabel = Instance.new("TextLabel")
MasterKeyLabel.LayoutOrder = 3
MasterKeyLabel.Size = UDim2.new(1, -20, 0, 15)
MasterKeyLabel.BackgroundTransparency = 1
MasterKeyLabel.Text = "Start/Stop Script:"
MasterKeyLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
MasterKeyLabel.Font = Enum.Font.Gotham
MasterKeyLabel.TextSize = 11
MasterKeyLabel.Parent = SettingsPage

local MasterKeyBtn = Instance.new("TextButton")
MasterKeyBtn.LayoutOrder = 4
MasterKeyBtn.Size = UDim2.new(1, -20, 0, 22)
MasterKeyBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MasterKeyBtn.Text = masterKeybind.Name
MasterKeyBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
MasterKeyBtn.Font = Enum.Font.GothamBold
MasterKeyBtn.TextSize = 11
MasterKeyBtn.Parent = SettingsPage
local MasterKeyCorner = Instance.new("UICorner")
MasterKeyCorner.CornerRadius = UDim.new(0, 4)
MasterKeyCorner.Parent = MasterKeyBtn

-- Minimize Square Toggle
local MinSquareBtn = Instance.new("TextButton")
MinSquareBtn.LayoutOrder = 5
MinSquareBtn.Size = UDim2.new(1, -20, 0, 26)
MinSquareBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
MinSquareBtn.Text = "Min. Square: ON"
MinSquareBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinSquareBtn.Font = Enum.Font.GothamSemibold
MinSquareBtn.TextSize = 11
MinSquareBtn.Parent = SettingsPage
local MinSquareCorner = Instance.new("UICorner")
MinSquareCorner.CornerRadius = UDim.new(0, 4)
MinSquareCorner.Parent = MinSquareBtn

-- ==========================================
-- 5. SLIMMED DYNAMIC WAVE GENERATOR & LOGIC
-- ==========================================
local function getOGSequence(shift)
    local keypoints = {}
    local cycle = 0.85 
    
    for i = 0, 15 do
        local x = i / 15
        local phase = ((x - shift) % cycle) / cycle
        
        local c
        if phase < 0.05 then
            c = richGold
        elseif phase < 0.15 then
            c = richGold:Lerp(darkGold, (phase - 0.05) / 0.10)
        elseif phase < 0.25 then
            c = darkGold:Lerp(blackBand, (phase - 0.15) / 0.10)
        elseif phase < 0.50 then 
            c = blackBand 
        elseif phase < 0.60 then 
            c = blackBand:Lerp(darkGold, (phase - 0.50) / 0.10)
        elseif phase < 0.70 then 
            c = darkGold:Lerp(richGold, (phase - 0.60) / 0.10)
        else
            c = richGold
        end
        
        table.insert(keypoints, ColorSequenceKeypoint.new(x, c))
    end
    return ColorSequence.new(keypoints)
end

local function applyOG()
    if not isMasterEnabled then return end
    
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("TextLabel") then
            local rawText = originalStates[obj] and originalStates[obj].OriginalText or obj.Text
            if selectedRarities[rawText] then
                if not originalStates[obj] then
                    originalStates[obj] = {
                        OriginalText = obj.Text,
                        TextColor3 = obj.TextColor3,
                        TextStrokeTransparency = obj.TextStrokeTransparency,
                        TextStrokeColor3 = obj.TextStrokeColor3
                    }
                end
                
                obj.Text = "OG"
                obj.TextColor3 = Color3.fromRGB(255, 255, 255) 
                obj.TextStrokeTransparency = 0 
                obj.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) 
                
                if not obj:FindFirstChild("OGGradient") then
                    local gradient = Instance.new("UIGradient")
                    gradient.Name = "OGGradient"
                    gradient.Rotation = 90
                    gradient.Parent = obj
                    table.insert(activeGradients, gradient)
                end
            end
        end
    end
end

local function revertSpecific(rarityName)
    for obj, state in pairs(originalStates) do
        if state.OriginalText == rarityName then
            if obj and obj.Parent then
                obj.Text = state.OriginalText
                obj.TextColor3 = state.TextColor3
                obj.TextStrokeTransparency = state.TextStrokeTransparency
                obj.TextStrokeColor3 = state.TextStrokeColor3
                local grad = obj:FindFirstChild("OGGradient")
                if grad then grad:Destroy() end
            end
            originalStates[obj] = nil
        end
    end
end

local function revertAll()
    for rarityName, _ in pairs(selectedRarities) do
        revertSpecific(rarityName)
    end
    table.clear(activeGradients)
end

-- ==========================================
-- 6. CONNECTIONS & UI LOGIC
-- ==========================================
local function toggleMaster()
    isMasterEnabled = not isMasterEnabled
    if isMasterEnabled then
        MasterBtn.Text = "MASTER: ON"
        MasterBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        applyOG()
    else
        MasterBtn.Text = "MASTER: OFF"
        MasterBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        revertAll()
    end
end

local function toggleMinimize()
    if useMinimizeSquare then
        if MainFrame.Visible then
            MainFrame.Visible = false
            MinFrame.Visible = true
            MinFrame.Position = MainFrame.Position
        else
            MainFrame.Visible = true
            MinFrame.Visible = false
            MainFrame.Position = MinFrame.Position
        end
    else
        MainFrame.Visible = not MainFrame.Visible
        MinFrame.Visible = false 
    end
end

local order = {"Common", "Rare", "Epic", "Legendary", "Mythic", "Secret"}
for _, rarity in ipairs(order) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -16, 0, 26) 
    btn.BackgroundColor3 = Color3.fromRGB(50, 200, 50) 
    btn.Text = rarity .. ": ON"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 11
    btn.Parent = RaritiesPage
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = btn
    
    btn.MouseButton1Click:Connect(function()
        selectedRarities[rarity] = not selectedRarities[rarity]
        if selectedRarities[rarity] then
            btn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
            btn.Text = rarity .. ": ON"
            applyOG() 
        else
            btn.BackgroundColor3 = Color3.fromRGB(100, 100, 100) 
            btn.Text = rarity .. ": OFF"
            revertSpecific(rarity) 
        end
    end)
end

MasterBtn.MouseButton1Click:Connect(toggleMaster)
MinimizeBtn.MouseButton1Click:Connect(toggleMinimize)

local dragStartClickPos
MinFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStartClickPos = input.Position
    end
end)

MinFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if (input.Position - dragStartClickPos).Magnitude < 10 then
            toggleMinimize()
        end
    end
end)

MinSquareBtn.MouseButton1Click:Connect(function()
    useMinimizeSquare = not useMinimizeSquare
    if useMinimizeSquare then
        MinSquareBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        MinSquareBtn.Text = "Min. Square: ON"
    else
        MinSquareBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        MinSquareBtn.Text = "Min. Square: OFF"
        if MinFrame.Visible then MinFrame.Visible = false end
    end
end)

UIKeyBtn.MouseButton1Click:Connect(function()
    isBinding = true
    bindingTarget = "UI"
    UIKeyBtn.Text = "..."
    UIKeyBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
end)

MasterKeyBtn.MouseButton1Click:Connect(function()
    isBinding = true
    bindingTarget = "Master"
    MasterKeyBtn.Text = "..."
    MasterKeyBtn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if isBinding and input.UserInputType == Enum.UserInputType.Keyboard then
        if bindingTarget == "UI" then
            uiKeybind = input.KeyCode
            UIKeyBtn.Text = uiKeybind.Name
            UIKeyBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        elseif bindingTarget == "Master" then
            masterKeybind = input.KeyCode
            MasterKeyBtn.Text = masterKeybind.Name
            MasterKeyBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        end
        isBinding = false
        bindingTarget = nil
        
    elseif not gameProcessed and not isBinding then
        if input.KeyCode == uiKeybind then
            toggleMinimize()
        elseif input.KeyCode == masterKeybind then
            toggleMaster()
        end
    end
end)

-- ==========================================
-- 7. RENDER LOOP
-- ==========================================
RunService.RenderStepped:Connect(function()
    if not isMasterEnabled then return end
    
    local timer = os.clock() * 0.4
    local shift = timer % 0.85 
    
    local newSequence = getOGSequence(shift)
    
    for i = #activeGradients, 1, -1 do
        local grad = activeGradients[i]
        if grad and grad.Parent then
            grad.Color = newSequence 
        else
            table.remove(activeGradients, i)
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        applyOG()
    end
end)
