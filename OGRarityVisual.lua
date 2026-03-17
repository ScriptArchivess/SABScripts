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
    ["Brainrot God"] = true,
    ["Secret"] = true
}

local originalStates = {}
local originalPriceStates = {}
local watchedLabels = {}
local isMasterEnabled = false
local luckyBlockOnly = false

local customPriceNumber = ""
local customPriceUnit = "M"
local dropdownOpen = false

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
MainFrame.Size = UDim2.new(0, 160, 0, 260)
MainFrame.Position = UDim2.new(0.8, -20, 0.4, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = false
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
ContentArea.ClipsDescendants = false
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
    page.ClipsDescendants = false
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
local MainListLayout = Instance.new("UIListLayout")
MainListLayout.Padding = UDim.new(0, 6)
MainListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
MainListLayout.SortOrder = Enum.SortOrder.LayoutOrder
MainListLayout.Parent = MainPage

local MainPadding = Instance.new("UIPadding")
MainPadding.PaddingTop = UDim.new(0, 8)
MainPadding.PaddingBottom = UDim.new(0, 8)
MainPadding.Parent = MainPage

local MasterBtn = Instance.new("TextButton")
MasterBtn.LayoutOrder = 1
MasterBtn.Size = UDim2.new(1, -20, 0, 40)
MasterBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
MasterBtn.Text = "MASTER: OFF"
MasterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MasterBtn.Font = Enum.Font.GothamBold
MasterBtn.TextSize = 14
MasterBtn.Parent = MainPage
local MasterCorner = Instance.new("UICorner")
MasterCorner.CornerRadius = UDim.new(0, 6)
MasterCorner.Parent = MasterBtn

local LBOnlyBtn = Instance.new("TextButton")
LBOnlyBtn.LayoutOrder = 2
LBOnlyBtn.Size = UDim2.new(1, -20, 0, 34)
LBOnlyBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
LBOnlyBtn.Text = "Lucky Block Only: OFF"
LBOnlyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LBOnlyBtn.Font = Enum.Font.GothamSemibold
LBOnlyBtn.TextSize = 11
LBOnlyBtn.TextWrapped = true
LBOnlyBtn.Parent = MainPage
local LBOnlyCorner = Instance.new("UICorner")
LBOnlyCorner.CornerRadius = UDim.new(0, 6)
LBOnlyCorner.Parent = LBOnlyBtn

local PriceLabel = Instance.new("TextLabel")
PriceLabel.LayoutOrder = 3
PriceLabel.Size = UDim2.new(1, -20, 0, 14)
PriceLabel.BackgroundTransparency = 1
PriceLabel.Text = "LB Price Override:"
PriceLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
PriceLabel.Font = Enum.Font.Gotham
PriceLabel.TextSize = 11
PriceLabel.TextXAlignment = Enum.TextXAlignment.Left
PriceLabel.Parent = MainPage

local PriceRow = Instance.new("Frame")
PriceRow.LayoutOrder = 4
PriceRow.Size = UDim2.new(1, -20, 0, 28)
PriceRow.BackgroundTransparency = 1
PriceRow.ClipsDescendants = false
PriceRow.Parent = MainPage

local PriceBox = Instance.new("TextBox")
PriceBox.Size = UDim2.new(0, 90, 1, 0)
PriceBox.Position = UDim2.new(0, 0, 0, 0)
PriceBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
PriceBox.PlaceholderText = "e.g. 2.5"
PriceBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
PriceBox.Text = ""
PriceBox.TextColor3 = Color3.fromRGB(255, 255, 255)
PriceBox.Font = Enum.Font.GothamSemibold
PriceBox.TextSize = 12
PriceBox.ClearTextOnFocus = false
PriceBox.Parent = PriceRow
local PriceBoxCorner = Instance.new("UICorner")
PriceBoxCorner.CornerRadius = UDim.new(0, 4)
PriceBoxCorner.Parent = PriceBox

local UnitBtn = Instance.new("TextButton")
UnitBtn.Size = UDim2.new(0, 42, 1, 0)
UnitBtn.Position = UDim2.new(0, 96, 0, 0)
UnitBtn.BackgroundColor3 = Color3.fromRGB(50, 130, 200)
UnitBtn.Text = "M ▾"
UnitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
UnitBtn.Font = Enum.Font.GothamBold
UnitBtn.TextSize = 12
UnitBtn.Parent = PriceRow
local UnitBtnCorner = Instance.new("UICorner")
UnitBtnCorner.CornerRadius = UDim.new(0, 4)
UnitBtnCorner.Parent = UnitBtn

local DropdownFrame = Instance.new("Frame")
DropdownFrame.Size = UDim2.new(0, 42, 0, 84)
DropdownFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DropdownFrame.BorderSizePixel = 0
DropdownFrame.Visible = false
DropdownFrame.ZIndex = 10
DropdownFrame.Parent = MainFrame
local DropdownCorner = Instance.new("UICorner")
DropdownCorner.CornerRadius = UDim.new(0, 4)
DropdownCorner.Parent = DropdownFrame

local DropdownLayout = Instance.new("UIListLayout")
DropdownLayout.SortOrder = Enum.SortOrder.LayoutOrder
DropdownLayout.Parent = DropdownFrame

local units = {"M", "B", "T"}
local unitOptionBtns = {}
for i, unit in ipairs(units) do
    local optBtn = Instance.new("TextButton")
    optBtn.LayoutOrder = i
    optBtn.Size = UDim2.new(1, 0, 0, 28)
    optBtn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    optBtn.Text = unit
    optBtn.TextColor3 = Color3.fromRGB(255, 215, 0)
    optBtn.Font = Enum.Font.GothamBold
    optBtn.TextSize = 12
    optBtn.ZIndex = 11
    optBtn.Parent = DropdownFrame
    unitOptionBtns[unit] = optBtn
end

-- RARITIES PAGE
local RarityListLayout = Instance.new("UIListLayout")
RarityListLayout.Padding = UDim.new(0, 4)
RarityListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
RarityListLayout.Parent = RaritiesPage
local RarityPadding = Instance.new("UIPadding")
RarityPadding.PaddingTop = UDim.new(0, 5)
RarityPadding.PaddingBottom = UDim.new(0, 5)
RarityPadding.Parent = RaritiesPage

-- SETTINGS PAGE
local SettingsLayout = Instance.new("UIListLayout")
SettingsLayout.Padding = UDim.new(0, 5)
SettingsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SettingsLayout.SortOrder = Enum.SortOrder.LayoutOrder
SettingsLayout.Parent = SettingsPage

local SettingsPadding = Instance.new("UIPadding")
SettingsPadding.PaddingTop = UDim.new(0, 5)
SettingsPadding.PaddingBottom = UDim.new(0, 5)
SettingsPadding.Parent = SettingsPage

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
-- 5. LUCKY BLOCK DETECTION HELPERS
-- ==========================================
local function isPartOfLuckyBlock(obj)
    local current = obj.Parent
    for _ = 1, 4 do
        if not current then break end
        for _, sibling in pairs(current:GetChildren()) do
            if sibling ~= obj and sibling:IsA("TextLabel") then
                if sibling.Text:find("Lucky Block") then return true end
            end
            for _, grandchild in pairs(sibling:GetChildren()) do
                if grandchild:IsA("TextLabel") and grandchild.Text:find("Lucky Block") then
                    return true
                end
            end
        end
        current = current.Parent
    end
    return false
end

local function findLuckyBlockPriceLabels()
    local results = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("TextLabel") and obj.Text:find("Lucky Block") then
            local parent = obj.Parent
            if parent then
                for _, sibling in pairs(parent:GetChildren()) do
                    if sibling ~= obj and sibling:IsA("TextLabel") and sibling.Text:match("^%$") then
                        table.insert(results, sibling)
                    end
                    for _, gc in pairs(sibling:GetChildren()) do
                        if gc:IsA("TextLabel") and gc.Text:match("^%$") then
                            table.insert(results, gc)
                        end
                    end
                end
            end
        end
    end
    return results
end

local function applyCustomPrice()
    if not isMasterEnabled then return end
    local num = customPriceNumber
    if num == "" or not tonumber(num) then return end
    local priceText = "$" .. num .. customPriceUnit
    for _, label in pairs(findLuckyBlockPriceLabels()) do
        if label and label.Parent then
            if not originalPriceStates[label] then
                originalPriceStates[label] = label.Text
            end
            label.Text = priceText
        end
    end
end

local function revertCustomPrices()
    for label, originalText in pairs(originalPriceStates) do
        if label and label.Parent then
            label.Text = originalText
        end
    end
    table.clear(originalPriceStates)
end

-- ==========================================
-- 6. WAVE GENERATOR & OG LOGIC (THE EXILE METHOD)
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
                if luckyBlockOnly and not isPartOfLuckyBlock(obj) then
                    continue
                end
                
                -- Track the object and its original properties
                if not originalStates[obj] then
                    local state = {
                        OriginalText           = obj.Text,
                        TextColor3             = obj.TextColor3,
                        TextStrokeTransparency = obj.TextStrokeTransparency,
                        TextStrokeColor3       = obj.TextStrokeColor3,
                        OriginalGradients      = {}, 
                        OriginalStrokes        = {}, 
                        CreatedGradient        = nil,
                        CreatedStroke          = nil, 
                    }
                    originalStates[obj] = state
                end
                
                obj.Text = "OG"
                obj.TextColor3 = Color3.fromRGB(255, 255, 255)
                obj.TextStrokeTransparency = 1 -- Hide native 1px border so our thick outline is flawless
                
                watchedLabels[obj] = true
            end
        end
    end
end

local function revertObj(obj, state)
    watchedLabels[obj] = nil
    obj.Text = state.OriginalText
    obj.TextColor3 = state.TextColor3
    obj.TextStrokeTransparency = state.TextStrokeTransparency
    obj.TextStrokeColor3 = state.TextStrokeColor3
    
    -- Destroy our custom elements
    if state.CreatedGradient then state.CreatedGradient:Destroy() end
    if state.CreatedStroke then state.CreatedStroke:Destroy() end

    -- Pull the game's original files out of the void and put them back in the TextLabel
    for _, grad in ipairs(state.OriginalGradients) do
        if grad then pcall(function() grad.Parent = obj end) end
    end
    for _, stroke in ipairs(state.OriginalStrokes) do
        if stroke then pcall(function() stroke.Parent = obj end) end
    end
end

local function revertSpecific(rarityName)
    for obj, state in pairs(originalStates) do
        if state.OriginalText == rarityName then
            if obj and obj.Parent then
                revertObj(obj, state)
            end
            originalStates[obj] = nil
        end
    end
end

local function revertAll()
    for obj, state in pairs(originalStates) do
        if obj and obj.Parent then
            revertObj(obj, state)
        end
    end
    table.clear(originalStates)
    table.clear(watchedLabels)
end

local function revertNonLuckyBlocks()
    for obj, state in pairs(originalStates) do
        if obj and obj.Parent then
            if not isPartOfLuckyBlock(obj) then
                revertObj(obj, state)
                originalStates[obj] = nil
            end
        else
            watchedLabels[obj] = nil
            originalStates[obj] = nil
        end
    end
end

-- ==========================================
-- 7. CONNECTIONS & UI LOGIC
-- ==========================================
local function toggleMaster()
    isMasterEnabled = not isMasterEnabled
    if isMasterEnabled then
        MasterBtn.Text = "MASTER: ON"
        MasterBtn.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        applyOG()
        applyCustomPrice()
    else
        MasterBtn.Text = "MASTER: OFF"
        MasterBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        revertAll()
        revertCustomPrices()
    end
end

local function toggleLuckyBlockOnly()
    luckyBlockOnly = not luckyBlockOnly
    if luckyBlockOnly then
        LBOnlyBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
        LBOnlyBtn.Text = "Lucky Block Only: ON"
        if isMasterEnabled then revertNonLuckyBlocks() end
    else
        LBOnlyBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        LBOnlyBtn.Text = "Lucky Block Only: OFF"
        if isMasterEnabled then applyOG() end
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

local function closeDropdown()
    dropdownOpen = false
    DropdownFrame.Visible = false
end

local function openDropdown()
    local absBtn = UnitBtn.AbsolutePosition
    local absFrame = MainFrame.AbsolutePosition
    local relX = absBtn.X - absFrame.X
    local relY = absBtn.Y - absFrame.Y + UnitBtn.AbsoluteSize.Y + 2
    DropdownFrame.Position = UDim2.new(0, relX, 0, relY)
    DropdownFrame.Visible = true
    dropdownOpen = true
end

UnitBtn.MouseButton1Click:Connect(function()
    if dropdownOpen then closeDropdown() else openDropdown() end
end)

for _, unit in ipairs(units) do
    unitOptionBtns[unit].MouseButton1Click:Connect(function()
        customPriceUnit = unit
        UnitBtn.Text = unit .. " ▾"
        closeDropdown()
        if isMasterEnabled then
            revertCustomPrices()
            applyCustomPrice()
        end
    end)
end

PriceBox.FocusLost:Connect(function()
    local input = PriceBox.Text:gsub("%s+", "")
    if input == "" or tonumber(input) then
        customPriceNumber = input
        if isMasterEnabled then
            revertCustomPrices()
            applyCustomPrice()
        end
    else
        PriceBox.BackgroundColor3 = Color3.fromRGB(150, 40, 40)
        task.delay(0.5, function()
            PriceBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        end)
    end
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
        if dropdownOpen and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            closeDropdown()
        end
    end
end)

MasterBtn.MouseButton1Click:Connect(toggleMaster)
LBOnlyBtn.MouseButton1Click:Connect(toggleLuckyBlockOnly)
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

local order = {"Common", "Rare", "Epic", "Legendary", "Mythic", "Brainrot God", "Secret"}
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

-- ==========================================
-- 8. RENDER LOOP (THE EXILE METHOD)
-- ==========================================
-- Helper function to prevent memory leaks when archiving game effects
local function cacheOriginal(tbl, item)
    for _, v in ipairs(tbl) do
        if v == item then return end
    end
    table.insert(tbl, item)
end

RunService:BindToRenderStep("OGVisual", Enum.RenderPriority.Last.Value + 100, function()
    if not isMasterEnabled then return end
    local timer = os.clock() * 0.4
    local shift = timer % 0.85
    local newSequence = getOGSequence(shift)

    for obj in pairs(watchedLabels) do
        if obj and obj.Parent then
            obj.TextColor3 = Color3.fromRGB(255, 255, 255)
            obj.TextStrokeTransparency = 1 
            
            local state = originalStates[obj]
            if state then
                -- Sweep for any strokes/gradients the game tries to add, and exile them to the void.
                -- They keep running their tweens invisibly, causing no errors and stopping the fights.
                for _, child in pairs(obj:GetChildren()) do
                    if child:IsA("UIGradient") and child.Name ~= "OGCreated" then
                        cacheOriginal(state.OriginalGradients, child)
                        child.Parent = nil
                    elseif child:IsA("UIStroke") and child.Name ~= "OGCreatedStroke" then
                        cacheOriginal(state.OriginalStrokes, child)
                        child.Parent = nil
                    end
                end

                -- Ensure our custom gradient is present and animating
                if state.CreatedGradient and state.CreatedGradient.Parent then
                    state.CreatedGradient.Color = newSequence
                    state.CreatedGradient.Rotation = 90
                else
                    local g = Instance.new("UIGradient")
                    g.Name = "OGCreated"
                    g.Rotation = 90
                    g.Color = newSequence
                    g.Parent = obj
                    state.CreatedGradient = g
                end

                -- Ensure our thick outline is present and uncontested
                if state.CreatedStroke and state.CreatedStroke.Parent then
                    state.CreatedStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                    state.CreatedStroke.LineJoinMode = Enum.LineJoinMode.Round
                    state.CreatedStroke.Color = Color3.fromRGB(0, 0, 0)
                    state.CreatedStroke.Thickness = 3.0
                    state.CreatedStroke.Transparency = 0.15
                else
                    local s = Instance.new("UIStroke")
                    s.Name = "OGCreatedStroke"
                    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                    s.LineJoinMode = Enum.LineJoinMode.Round
                    s.Color = Color3.fromRGB(0, 0, 0)
                    s.Thickness = 3.0
                    s.Transparency = 0.15
                    s.Parent = obj
                    state.CreatedStroke = s
                end
            end
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        applyOG()
        applyCustomPrice()
    end
end)
