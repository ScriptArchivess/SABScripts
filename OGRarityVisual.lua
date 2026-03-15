-- Client-side toggleable script for "OG" rarity with custom UI

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local targetRarities = {
    ["Common"] = true,
    ["Rare"] = true,
    ["Epic"] = true,
    ["Legendary"] = true,
    ["Mythic"] = true,
    ["Secret"] = true
}

local activeGradients = {}
local originalStates = {} -- This will remember the original text and colors
local isEnabled = false

-- ==========================================
-- 1. UI SETUP
-- ==========================================
-- Tries to put it in CoreGui (hidden from game) or PlayerGui as a backup
local guiParent = pcall(function() return game:GetService("CoreGui") end) and game:GetService("CoreGui") or Players.LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "OGToggleUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = guiParent

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 150, 0, 50)
Frame.Position = UDim2.new(0.5, -75, 0.8, 0) -- Near the bottom middle
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true -- Lets you move it around the screen
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(1, -10, 1, -10)
ToggleButton.Position = UDim2.new(0, 5, 0, 5)
ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50) -- Starts Red (OFF)
ToggleButton.Text = "OG Rarity: OFF"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 14
ToggleButton.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = ToggleButton

-- ==========================================
-- 2. TOGGLE LOGIC
-- ==========================================
local function applyOG()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("TextLabel") and targetRarities[obj.Text] then
            -- Save its original state before we mess with it
            if not originalStates[obj] then
                originalStates[obj] = {
                    Text = obj.Text,
                    TextColor3 = obj.TextColor3,
                    TextStrokeTransparency = obj.TextStrokeTransparency,
                    TextStrokeColor3 = obj.TextStrokeColor3
                }
            end
            
            -- Apply the OG visual changes
            obj.Text = "OG"
            obj.TextColor3 = Color3.fromRGB(255, 255, 255) 
            obj.TextStrokeTransparency = 0 
            obj.TextStrokeColor3 = Color3.fromRGB(0, 0, 0) 
            
            if not obj:FindFirstChild("OGGradient") then
                local gradient = Instance.new("UIGradient")
                gradient.Name = "OGGradient"
                
                local richGold = Color3.fromRGB(255, 215, 0)
                local darkGold = Color3.fromRGB(130, 100, 0)     
                local blackenedTrail = Color3.fromRGB(60, 45, 0) 
                local blackBand = Color3.fromRGB(25, 25, 25)
                
                gradient.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, richGold),
                    ColorSequenceKeypoint.new(0.35, richGold),       
                    ColorSequenceKeypoint.new(0.40, blackenedTrail), 
                    ColorSequenceKeypoint.new(0.50, blackBand),      
                    ColorSequenceKeypoint.new(0.60, blackBand),      
                    ColorSequenceKeypoint.new(0.62, darkGold),       
                    ColorSequenceKeypoint.new(0.65, richGold),       
                    ColorSequenceKeypoint.new(1, richGold)
                }
                
                gradient.Rotation = 90
                gradient.Parent = obj
                
                table.insert(activeGradients, gradient)
            end
        end
    end
end

local function restoreOriginals()
    for obj, state in pairs(originalStates) do
        -- If the text object still exists in the world, revert it
        if obj and obj.Parent then
            obj.Text = state.Text
            obj.TextColor3 = state.TextColor3
            obj.TextStrokeTransparency = state.TextStrokeTransparency
            obj.TextStrokeColor3 = state.TextStrokeColor3
            
            local grad = obj:FindFirstChild("OGGradient")
            if grad then
                grad:Destroy()
            end
        end
    end
    -- Clear our tracking tables so it's fully reset
    table.clear(activeGradients)
end

-- ==========================================
-- 3. ANIMATION & LOOPING
-- ==========================================
RunService.RenderStepped:Connect(function()
    if not isEnabled then return end -- Don't animate if turned off
    
    local timer = (os.clock() * 0.6) % 1 
    local sweepOffset = (timer * 1.35) - 0.65
    
    for i = #activeGradients, 1, -1 do
        local grad = activeGradients[i]
        if grad and grad.Parent then
            grad.Offset = Vector2.new(0, sweepOffset) 
        else
            table.remove(activeGradients, i)
        end
    end
end)

task.spawn(function()
    while task.wait(2) do
        if isEnabled then
            applyOG()
        end
    end
end)

-- Button Click Event
ToggleButton.MouseButton1Click:Connect(function()
    isEnabled = not isEnabled
    
    if isEnabled then
        ToggleButton.Text = "OG Rarity: ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50) -- Green
        applyOG()
    else
        ToggleButton.Text = "OG Rarity: OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50) -- Red
        restoreOriginals()
    end
end)
