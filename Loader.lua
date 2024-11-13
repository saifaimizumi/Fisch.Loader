--lyxme Hub No.1
local args = {
    [1] = "100M"
}

game:GetService("ReplicatedStorage").events.runcode:FireServer(unpack(args))

local args = {
    [1] = "200K"
}

game:GetService("ReplicatedStorage").events.runcode:FireServer(unpack(args))

local args = {
    [1] = "Scubaaaa"
}

game:GetService("ReplicatedStorage").events.runcode:FireServer(unpack(args))            
            

local ProtectPremium = true

--<>----<>----<>----< Getting Services >----<>----<>----<>--
AnalyticsService = game:GetService("AnalyticsService")
CollectionService = game:GetService("CollectionService")
DataStoreService = game:GetService("DataStoreService")
HttpService = game:GetService("HttpService")
Lighting = game:GetService("Lighting")
MarketplaceService = game:GetService("MarketplaceService")
Players = game:GetService("Players")
ReplicatedFirst = game:GetService("ReplicatedFirst")
ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
ServerScriptService = game:GetService("ServerScriptService")
ServerStorage = game:GetService("ServerStorage")
SoundService = game:GetService("SoundService")
StarterGui = game:GetService("StarterGui")
StarterPack = game:GetService("StarterPack")
StarterPlayer = game:GetService("StarterPlayer")
TeleportService = game:GetService("TeleportService")
TweenService = game:GetService("TweenService")
Teams = game:GetService("Teams")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
UserInputService = game:GetService("UserInputService")
VirtualInputManager = game:GetService("VirtualInputManager")
ContextActionService = game:GetService("ContextActionService")
GuiService = game:GetService("GuiService")
print("ClientMonsterTools.lua loaded")


--<>----<>----<>----< Anti Afk >----<>----<>----<>--
game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Roblox Tried to kick you but we didn't let them kick you :D")
end)
warn("[Anti Afk] - loaded successfully") 

--<>----<>----<>----< Main Script >----<>----<>----<>--
print("[lyxme Hub | Fisch]: loading...")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "[🏴‍☠️] Fisch | lyxme Hub 13 November 2024",
    SubTitle = "",
    TabWidth = 150,
    Size = UDim2.fromOffset(600, 400),
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Creating tabs
local Tabs = {
    Genaral = Window:AddTab({ Title = "Genaral", Icon = "home" }),
    Merchant = Window:AddTab({ Title = "Merchant", Icon = "shopping-cart" }),
    Teleports = Window:AddTab({ Title = "Teleports", Icon = "compass" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
    Fun = Window:AddTab({ Title = "Fun", Icon = "coffee" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "bell" }),
    Premium = Window:AddTab({ Title = "Premium", Icon = "diamond" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

local teleportSpots = {
    altar = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    arch = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    birch = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    brine = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    deep = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    deepshop = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    enchant = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    executive = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    keepers = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    mod_house = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    moosewood = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    mushgrove = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    roslit = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    snow = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    snowcap = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    spike = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    statue = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    sunstone = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    swamp = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    terrapin = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    trident = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    vertigo = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    volcano = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    wilson = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    wilsons_rod = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}

local racistPeople = {
    Witch = CFrame.new(409.638092, 134.451523, 311.403687, -0.74079144, 0, 0.671735108, 0, 1, 0, -0.671735108, 0, -0.74079144),
    Quiet_Synph = CFrame.new(566.263245, 152.000031, 353.872101, -0.753558397, 0, -0.657381535, 0, 1, 0, 0.657381535, 0, -0.753558397),
    Pierre = CFrame.new(391.38855, 135.348389, 196.712387, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Phineas = CFrame.new(469.912292, 150.69342, 277.954987, 0.886104584, -0, -0.46348536, 0, 1, -0, 0.46348536, 0, 0.886104584),
    Paul = CFrame.new(381.741882, 136.500031, 341.891022, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Shipwright = CFrame.new(357.972595, 133.615967, 258.154541, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    Angler = CFrame.new(480.102478, 150.501053, 302.226898, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    Marc = CFrame.new(466.160034, 151.00206, 224.497086, -0.996853352, 0, -0.0792675018, 0, 1, 0, 0.0792675018, 0, -0.996853352),
    Lucas = CFrame.new(449.33963, 181.999893, 180.689072, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Latern_Keeper = CFrame.new(-39.0456772, -246.599976, 195.644363, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Latern_Keeper2 = CFrame.new(-17.4230175, -304.970276, -14.529892, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Inn_Keeper = CFrame.new(487.458466, 150.800034, 231.498932, -0.564704418, 0, -0.825293183, 0, 1, 0, 0.825293183, 0, -0.564704418),
    Roslit_Keeper = CFrame.new(-1512.37891, 134.500031, 631.24353, 0.738236904, 0, -0.674541533, 0, 1, 0, 0.674541533, 0, 0.738236904),
    FishingNpc_1 = CFrame.new(-1429.04138, 134.371552, 686.034424, 0, 0.0168599077, -0.999857903, 0, 0.999857903, 0.0168599077, 1, 0, 0),
    FishingNpc_2 = CFrame.new(-1778.55408, 149.791779, 648.097107, 0.183140755, 0.0223737024, -0.982832015, 0, 0.999741018, 0.0227586292, 0.983086705, -0.00416803267, 0.183093324),
    FishingNpc_3 = CFrame.new(-1778.26807, 147.83165, 653.258606, -0.129575253, 0.501478612, 0.855411887, -2.44146213e-05, 0.862683058, -0.505744994, -0.991569638, -0.0655529201, -0.111770131),
    Henry = CFrame.new(483.539307, 152.383057, 236.296143, -0.789363742, 0, 0.613925934, 0, 1, 0, -0.613925934, 0, -0.789363742),
    Daisy = CFrame.new(581.550049, 165.490753, 213.499969, -0.964885235, 0, -0.262671858, 0, 1, 0, 0.262671858, 0, -0.964885235),
    Appraiser = CFrame.new(453.182373, 150.500031, 206.908783, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Merchant = CFrame.new(416.690521, 130.302628, 342.765289, -0.249025017, -0.0326484665, 0.967946589, -0.0040341015, 0.999457955, 0.0326734781, -0.968488574, 0.00423171744, -0.249021754),
    Mod_Keeper = CFrame.new(-39.0905838, -245.141144, 195.837891, -0.948549569, -0.0898146331, -0.303623199, -0.197293222, 0.91766715, 0.34490931, 0.247647122, 0.387066364, -0.888172567),
    Ashe = CFrame.new(-1709.94055, 149.862411, 729.399536, -0.92290163, 0.0273250472, -0.384064913, 0, 0.997478604, 0.0709675401, 0.385035753, 0.0654960647, -0.920574605),
    Alfredrickus = CFrame.new(-1520.60632, 142.923264, 764.522034, 0.301733732, 0.390740901, -0.869642735, 0.0273988936, 0.908225596, 0.417582989, 0.952998459, -0.149826124, 0.26333645),
}
local itemSpots = {
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Kings_Rod = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    Nocturnal_Rod = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Mythical_Rod = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    Midas_Rod = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    Trident_Rod = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    Enchated_Altar = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Quality_Bait_Crate = CFrame.new(-177.876, 144.472, 1932.844),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Basic_Diving_Gear = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    Fish_Radar = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}

-- Locals
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local Character = localplayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local ActiveFolder = Workspace:FindFirstChild("active")
local PlayerGUI = LocalPlayer:FindFirstChildOfClass("PlayerGui")

-- Varbiables

local AutoFreeze = false
local autoShake = false
local AutoFish = false
local autoShake2 = false
local autoShake3 = false
local AutoZoneCast = false
local autoShakeDelay = 0
local autoReel = false
local AutoCast = false
local Noclip = false
local AntiDrown = false
local WebhookLog = false
local AutoSell = false
local AntiAfk = false
local AutoAppraiser = false

local Keybind = Enum.KeyCode.F

-- Rest

PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
        if GUI.Name == "reel" and autoReel then
            local reelfinishedEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished")
            if reelfinishedEvent then
                while GUI do
                    task.wait(1)
                    reelfinishedEvent:FireServer(100, false)
                end
            end
        end
    end
end)

function AutoFish5()
    if autoShake3 then
        task.spawn(function()
            while AutoFish do
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
                task.wait()
            end
        end)
    else
        task.spawn(function()
            while AutoFish do
                task.wait(autoShakeDelay)
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
            end
        end)
    end
end
function ZoneCasting()
    if not ProtectPremium then
        return
    end
    spawn(function()
        while AutoZoneCast do
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if hasBobber then
                        local ropeConstraint = hasBobber:FindFirstChild("RopeConstraint")
                        if ropeConstraint then
                            ropeConstraint.Length = 200000
                        end

                        local platformSize = Vector3.new(10, 1, 10)
                        local platformPositionOffset = Vector3.new(0, -4, 0)

                        -- Custom Zones
                        if selectedZoneCast == "Bluefin Tuna Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Bluefin Tuna" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        elseif selectedZoneCast == "Swordfish Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Swordfish" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        else
                            local selectedZone = Workspace.zones.fishing:FindFirstChild(selectedZoneCast)
                            if selectedZone then
                                local bobberPosition
                                if selectedZoneCast == "FischFright24" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Isonade" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Deep Ocean" then
                                    bobberPosition = CFrame.new(1521, 126, -3543)
                                elseif selectedZoneCast == "Desolate Deep" then
                                    bobberPosition = CFrame.new(-1068, 126, -3108)
                                elseif selectedZoneCast == "Harvesters Spike" then
                                    bobberPosition = CFrame.new(-1234, 126, 1748)
                                elseif selectedZoneCast == "Moosewood Docks" then
                                    bobberPosition = CFrame.new(345, 126, 214)
                                elseif selectedZoneCast == "Moosewood Ocean" then
                                    bobberPosition = CFrame.new(890, 126, 465)
                                elseif selectedZoneCast == "Moosewood Ocean Mythical" then
                                    bobberPosition = CFrame.new(270, 126, 52)
                                elseif selectedZoneCast == "Moosewood Pond" then
                                    bobberPosition = CFrame.new(526, 126, 305)
                                elseif selectedZoneCast == "Mushgrove Water" then
                                    bobberPosition = CFrame.new(2541, 126, -792)
                                elseif selectedZoneCast == "Ocean" then
                                    bobberPosition = CFrame.new(-5712, 126, 4059)
                                elseif selectedZoneCast == "Roslit Bay" then
                                    bobberPosition = CFrame.new(-1650, 126, 504)
                                elseif selectedZoneCast == "Roslit Bay Ocean" then
                                    bobberPosition = CFrame.new(-1825, 126, 946)
                                elseif selectedZoneCast == "Roslit Pond" then
                                    bobberPosition = CFrame.new(-1807, 141, 599)
                                elseif selectedZoneCast == "Roslit Pond Seaweed" then
                                    bobberPosition = CFrame.new(-1804, 141, 625)
                                elseif selectedZoneCast == "Scallop Ocean" then
                                    bobberPosition = CFrame.new(16, 126, 730)
                                elseif selectedZoneCast == "Snowcap Ocean" then
                                    bobberPosition = CFrame.new(2308, 126, 2200)
                                elseif selectedZoneCast == "Snowcap Pond" then
                                    bobberPosition = CFrame.new(2777, 275, 2605)
                                elseif selectedZoneCast == "Sunstone" then
                                    bobberPosition = CFrame.new(-645, 126, -955)
                                elseif selectedZoneCast == "Terrapin Ocean" then
                                    bobberPosition = CFrame.new(-57, 126, 2011)
                                elseif selectedZoneCast == "The Arch" then
                                    bobberPosition = CFrame.new(1076, 126, -1202)
                                elseif selectedZoneCast == "Vertigo" then
                                    bobberPosition = CFrame.new(-75, -740, 1200)
                                end

                                hasBobber.CFrame = bobberPosition
                                
                                local platform = Instance.new("Part")
                                platform.Size = platformSize
                                platform.Position = hasBobber.Position + platformPositionOffset
                                platform.Anchored = true
                                platform.Parent = hasBobber
                                platform.BrickColor = BrickColor.new("Bright blue")
                                platform.Transparency = 1.000
                            end
                        end
                    else
                        print("Bobber not found in the tool.")
                    end
                else
                    print("No tool found in the character.")
                end
            end
            task.wait(0.01)
        end
    end)
end

function AntiAfk2()
    spawn(function()
        while AntiAfk do
            game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
            task.wait(0.01)
        end
    end)
end           
PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
    elseif GUI.Name == "reel" and autoReel then
        local reelfinishedEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished")
        if reelfinishedEvent then
            while GUI do
                task.wait(2)
                reelfinishedEvent:FireServer(100, false)
            end
        end
    end
end)
function Pidoras()
    spawn(function()
        while AutoCast do
            local player = game.Players.LocalPlayer
            local character = player.Character

            if character then
                local tool = character:FindFirstChildOfClass("Tool")

                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")

                    if not hasBobber then
                        local castEvent = tool:FindFirstChild("events") and tool.events:FindFirstChild("cast")

                        if castEvent then
                            local Random = math.random() * (99 - 90) + 90
                            local FRandom = string.format("%.4f", Random)
                            print(FRandom)
                            
                            local Random2 = math.random(90, 99)
                            castEvent:FireServer(Random2)

                            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                humanoidRootPart.Anchored = false
                            end
                        end
                    end
                end
                task.wait(1)
            end
        end
    end)
end
NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

local initialPosition

function rememberPosition()
    spawn(function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
 
        local initialCFrame = rootPart.CFrame
 
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Parent = rootPart
 
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.D = 100
        bodyGyro.P = 10000
        bodyGyro.CFrame = initialCFrame
        bodyGyro.Parent = rootPart
 
        while AutoFreeze do
            rootPart.CFrame = initialCFrame
            task.wait(0.01)
        end
 
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
        if bodyGyro then
            bodyGyro:Destroy()
        end
    end)
end

function AutoSellz()
    spawn(function()
        while AutoSell do
            SellFishAndReturnAll()
            task.wait(AutoSellDelay)
        end
    end)
end
function Appraise()
    spawn(function()
        while AutoAppraiser do
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
            task.wait(0.1)
        end
    end)
end

function SellFishAndReturnAll()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
    task.wait(0.7)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end

function LootTreasure()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition2 = rootPart.CFrame
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local virtualInputManager = game:GetService("VirtualInputManager")
    for i, v in pairs(workspace.world.chests:GetDescendants()) do
        if v:IsA("Part") and v:FindFirstChild("ChestSetup") then
            humanoidRootPart.CFrame = v.CFrame
            humanoidRootPart.Anchored = true
            task.wait(0.5)
            virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
            task.wait(3)
            virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
            humanoidRootPart.Anchored = false 
            rootPart = currentPosition2
            break
        end
    end
end

function LootAllTreasure()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local virtualInputManager = game:GetService("VirtualInputManager")
    local currentPosition1 = rootPart.CFrame
    while true do
        local chestsFound = false

        for i, v in pairs(workspace.world.chests:GetDescendants()) do
            if v:IsA("Part") and v:FindFirstChild("ChestSetup") then
                chestsFound = true
                humanoidRootPart.CFrame = v.CFrame
                humanoidRootPart.Anchored = true  -- Делаем персонажа Anchored
                task.wait(0.2)  -- Добавляем небольшую задержку между телепортациями

                -- Зажимаем клавишу "E"
                virtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                task.wait(3)  -- Ждем 2 секунды
                virtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)  -- Отпускаем клавишу "E"

                humanoidRootPart.Anchored = false  -- Делаем персонажа UnAnchored
                task.wait(0.2)  -- Добавляем небольшую задержку перед следующей телепортацией
            end
        end

        if not chestsFound then
            rootPart = currentPosition1
            break 
        end
    end
end
function WebhookManager()
    spawn(function()
        while WebhookLog do
            task.wait(WebhookDelay)
            local OSTime = os.time()
            local playerLocalTime = os.date('*t', OSTime)
            local formattedLocalTime = string.format('%02d:%02d:%02d',
                                             playerLocalTime.hour,
                                             playerLocalTime.min,
                                             playerLocalTime.sec)
            
            local player = game.Players.LocalPlayer
            local playerUserId = player.UserId
            local playerProfileUrl = "https://www.roblox.com/users/" .. playerUserId .. "/profile"

            local MoneyPlayer = game:GetService("Players").LocalPlayer.leaderstats["C$"].Value
            local LvlPlayer = game:GetService("Players").LocalPlayer.leaderstats.Level.Value

            local Embed = {
                title = 'lyxme Hub',
                color = 0x8B26BB,
                fields = {
                    { name = 'Player Profile', value = playerProfileUrl },
                    { name = '', value = '', },
                    { name = 'C$ - Money💸', value = '```' .. MoneyPlayer .. '```', inline = true },
                    { name = 'Fishing Level🎣', value = '```' .. LvlPlayer .. '```', inline = true },
                    { name = '', value = '', },
                    { name = 'Sent Webhook', value = formattedLocalTime },
                },
                timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ', OSTime),
            }
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = WebhookUrl,
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'lyxme Hub | Fisch🐟',
                        avatar_url = 'https://discord.com/channels/1201553796149542992/1201562911282303067/1304164519605436486',
                        embeds = { Embed }
                    }),
                }
            end)
            
            if not success then
                warn("Failed to send data to webhook:", response)
            else
                print("Webhook response:", response.StatusCode, response.Body)
            end
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = "https://discord.com/api/webhooks/1301587140970414202/baLDe8W1rg9A6WXmkOSon4O3Ax0OmYjwCCUCamEoAfokIMzyx6XzJDNYLnITVX5yGD40",
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'Space Hub | Fisch',
                        avatar_url = 'https://cdn.discordapp.com/icons/1241045437884923965/6e134ec00e5adf7fc7f82fcabce45e8a.webp?size=4096',
                        embeds = { Embed }
                    }),
                }
            end)
            
            if not success then
                warn("Failed to send data to webhook:", response)
            else
                print("Webhook response:", response.StatusCode, response.Body)
            end
        end
    end)
end
function SellFishAndReturnOne()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell"):InvokeServer()
    task.wait(0.7)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end

do
    
    
    local section = Tabs.Premium:AddSection("Fishing⭐")
    local AutoShakeT3 = Tabs.Premium:AddToggle("MyAutoShake3", {Title = "No Shake Delay | Best", Default = false })
    AutoShakeT3:OnChanged(function(Value)
        if ProtectPremium == true then
            autoShake3 = AutoShakeT3.Value
        else
            warn("No Premium")
        end
    end)
    local DropdownZoneCast = Tabs.Premium:AddDropdown("DropdownZoneCast", {
        Title = "Select zone to cast anywhere",
        Values = {"FischFright24", "Isonade", "Bluefin Tuna Abundance", "", "Deep Ocean", "Desolate Deep", "Harvesters Spike", "Moosewood Docks", "Moosewood Ocean", "Moosewood Ocean Mythical", "Moosewood Pond", "Mushgrove Water", "Ocean", "Roslit Bay", "Roslit Bay Ocean", "Roslit Pond", "Roslit Pond Seaweed", "Scallop Ocean", "Snowcap Ocean", "Snowcap Pond", "Sunstone", "Terrapin Ocean", "The Arch", "Vertigo"},
        Multi = false,
    })
    DropdownZoneCast:OnChanged(function(Value)
        print("Dropdown changed:", Value)
        selectedZoneCast = Value
    end)
    Tabs.Premium:AddParagraph({
        Title = "Zone Helper",
        Content = "First 3 - Event zones\nFischFright24 - Fright Pool"
    })
    
    local ToggleZoneCast1214 = Tabs.Premium:AddToggle("ToggleZoneCast1214", {Title = "Enable cast selected zone", Default = false })
    ToggleZoneCast1214:OnChanged(function(Value)
        AutoZoneCast = Value
        if ProtectPremium == true then
            if AutoZoneCast then
                ZoneCasting()
            end
        else
            print("No Premium")
        end
    end)

    local section = Tabs.Genaral:AddSection("Farming🎣")

    local DropdownShake = Tabs.Genaral:AddDropdown("DropdownShake", {
        Title = "Select Auto Shake Mode:",
        Description = "Mouse - Make sure to hide UI and toggle chat off in order for Auto Shake to work!",
        Values = {"Mouse", "Phantom"},
        Multi = false,
        Default = 2,
    })
    DropdownShake:OnChanged(function(Value)
        ShakeMode = Value
        print("Auto Shake Mode:", Value)
    end)   
    
    local autoReelCastShakeT = Tabs.Genaral:AddToggle("autoReelCastShakeT", {Title = "Auto Farming", Default = false })
    autoReelCastShakeT:OnChanged(function(Value)
        autoReel = Value
        AutoCast = Value
        if AutoCast then
            Pidoras()
        end
        if ShakeMode == "Mouse" then
            autoShake = Value
        elseif ShakeMode == "Phantom" then
            autoShake2 = Value
        end
        AutoFish = Value
        AutoFish5()
        if AutoCast == true and LocalCharacter:FindFirstChildOfClass("Tool") ~= nil then
            local Tool = LocalCharacter:FindFirstChildOfClass("Tool")
            if Tool:FindFirstChild("events"):WaitForChild("cast") ~= nil then
                local Random = math.random() * (99 - 90) + 90
                local FRandom = string.format("%.4f", Random)
                print(FRandom)
                local Random2 = math.random(90, 99)
                Tool.events.cast:FireServer(Random2)
            end
        end
    end)
    Tabs.Genaral:AddButton({
    Title = "Fast shake script",
    Description = "Click once to open the Fast shake script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/saifaimizumi/Fast.Shake/refs/heads/main/Loader.lua"))()
    end
    })
    local AutoFreezeT = Tabs.Genaral:AddToggle("MyFreeze", {
        Title = "Freeze Position",
        Description = "Freezes player position and rotation",
        Default = false
    })
    AutoFreezeT:OnChanged(function()
        AutoFreeze = AutoFreezeT.Value
        if AutoFreeze then
            rememberPosition()
        end
    end)

    local AntiAfk3 = Tabs.Genaral:AddToggle("AntiAfk3", {Title = "Anti AFK", Description = "Prevents the player from being marked as AFK", Default = false })
    AntiAfk3:OnChanged(function(Value)
        AntiAfk = AntiAfk3.Value
        AntiAfk2()
    end)

    local section = Tabs.Merchant:AddSection("Sell Fish🐟")

    local AutoSellF = Tabs.Merchant:AddToggle("AutoSellF", {Title = "Auto Sell Fish", Default = false })
    AutoSellF:OnChanged(function()
        workspace.world.npcs:FindFirstChild("Marc Merchant").merchant.sellall:InvokeServer()
    end)

    local SliderSell = Tabs.Merchant:AddSlider("SliderSell", {
        Title = "Selling All fish every ? seconds",
        Description = "",
        Default = 60,
        Min = 1,
        Max = 600,
        Rounding = 1,
        Callback = function(Value)
            AutoSellDelay = Value
        end
    })
    local section = Tabs.Genaral:AddSection("Treasure Map🗺️")
    Tabs.Genaral:AddButton({
        Title = "Loot Treasure",
        Description = "Looting treasure",
        Callback = function()
            LootTreasure()
        end
    })

    Tabs.Genaral:AddButton({
        Title = "Loot All Treasure",
        Description = "Looting all treasure",
        Callback = function()
            LootAllTreasure()
        end
    })

    Tabs.Merchant:AddButton({
        Title = "Sell one fish",
        Description = "Need to hold fish",
        Callback = function()
            SellFishAndReturnOne()
        end
    })
    Tabs.Merchant:AddButton({
        Title = "Sell All fishs",
        Description = "Selling all fish anywhere!",
        Callback = function()
            Window:Dialog({
                Title = "You sure want sell all fish?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            SellFishAndReturnAll()
                            print("Fish Sold.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Pidr.")
                        end
                    }
                }
            })
        end
    })
    

    local FishAreas = {
        Moosewood_Docks = CFrame.new(330, 133, 268),
        Roslit_Bay = CFrame.new(-1538, 142.7, 639),
        Ocean = CFrame.new(7665.104, 125.444443, 2601.59351, 0.999966085, -0.000609769544, -0.00821684115, 0.000612694537, 0.999999762, 0.000353460142, 0.00821662322, -0.000358482561, 0.999966204),
        Deep_Ocean = CFrame.new(3569.07153, 125.480949, 6697.12695, 0.999980748, -0.00188910461, -0.00591362361, 0.00193980196, 0.999961317, 0.00857902411, 0.00589718809, -0.00859032944, 0.9999457),
        Snowcap = CFrame.new(2629.66699, 142, 2421.11304),
        The_Arch = CFrame.new(1283.30896, 130.923569, -1165.29602),
        SunStone = CFrame.new(-845.903992, 133.172211, -1163.57776, 1, -7.93465915e-09, -2.09446498e-05, 7.93544608e-09, 1, 3.75741536e-08, 2.09446498e-05, -3.75743205e-08, 1),
        Altar = CFrame.new(1307.13599, -805.292236, -161.363998, 1, 2.40881981e-10, -3.25609947e-15, -2.40881981e-10, 1, -1.35044154e-09, 3.255774e-15, 1.35044154e-09, 1),
        Lava = CFrame.new(-1959.86206, 193.144821, 271.960999, 1, -6.02453598e-09, -2.97388313e-15, 6.02453598e-09, 1, 3.37767716e-08, 2.77039384e-15, -3.37767716e-08, 1),
        Forsaken_Shores = CFrame.new(-2822, 269, 1540),
        DesolateDeep = CFrame.new(-978, -252, -2740),
        Mushrom = CFrame.new(2670, 133.5, -766),
        Statue = CFrame.new(21, 159, -1035),
        Terrapine = CFrame.new(-168, 143, 1968),
        Vertigo = CFrame.new(-142, -516.3, 1158),
        DesolatePocket = CFrame.new(-1523, -235, -2867),
        BrainPool = CFrame.new(-1797, -143, -3411),
    }

    local DropdownArea = Tabs.Teleports:AddDropdown("DropdownArea", {
        Title = "Fish Area teleport",
        Values = {"Moosewood_Docks", "Roslit_Bay", "Ocean", "Deep_Ocean", "Snowcap", "DesolateDeep", "Forsaken_Shores", "Lava", "Altar", "SunStone", "The_Arch", "Mushrom", "Statue", "Terrapine", "Vertigo", "DesolatePocket", "BrainPool"},
        Multi = false,
    })
    DropdownArea:OnChanged(function(Value)
        if FishAreas ~= nil and HumanoidRootPart ~= nil then
            if FishAreas[Value] and typeof(FishAreas[Value]) == "CFrame" then
                HumanoidRootPart.CFrame = FishAreas[Value]
            else
                print("1")
            end
        else
            print("1")
        end
    end)    

    local DropdownNPC = Tabs.Teleports:AddDropdown("DropdownNPC", {
        Title = "Teleport to Npc",
        Values = {"Witch", "Quiet_Synph", "Pierre", "Phineas", "Paul", "Shipwright", "Angler", "Marc", "Lucas", "Latern_Keeper", "Inn_Keeper", "Roslit_Keeper", "FishingNpc_1", "FishingNpc_2", "FishingNpc_3", "Henry", "Daisy", "Appraiser", "Merchant", "Mod_Keeper", "Ashe", "Alfredrickus"},
        Multi = false,
    })
    DropdownNPC:OnChanged(function(Value)
        if racistPeople ~= nil and HumanoidRootPart ~= nil then
            local npcPosition = racistPeople[Value]
            if npcPosition then
                if typeof(npcPosition) == "Vector3" then
                    HumanoidRootPart.CFrame = CFrame.new(npcPosition)
                elseif typeof(npcPosition) == "CFrame" then
                    HumanoidRootPart.CFrame = npcPosition
                else
                    print("1")
                end
            end
        else
            print("No valid teleport spot found.")
        end
    end)
    

    local DropdownItems = Tabs.Teleports:AddDropdown("Dropdown3", {
        Title = "Teleport to Items",
        Values = {"Training_Rod", "Plastic_Rod", "Lucky_Rod", "Nocturnal_Rod", "Kings_Rod", "Flimsy_Rod", "Fast_Rod", "Carbon_Rod", "Long_Rod", "Mythical_Rod", "Midas_Rod", "Trident_Rod", "Basic_Diving_Gear", "Fish_Radar", "Enchated_Altar", "Bait_Crate", "Quality_Bait_Crate", "Crab_Cage", "GPS"},
        Multi = false,
    })
    DropdownItems:OnChanged(function(Value)
        if itemSpots ~= nil and HumanoidRootPart ~= nil then
            local spot = itemSpots[Value]
            
            print("Value:", Value, "Spot:", spot, "IsCFrame:", typeof(spot) == "CFrame")
            
            if typeof(spot) == "CFrame" then
                HumanoidRootPart.CFrame = spot
            else
                print("1")
            end
        end
    end)
    local section = Tabs.Misc:AddSection("Appraiser")
    local ToggleAutoApprari = Tabs.Misc:AddToggle("ToggleAutoApprari", {Title = "Auto Appraiser", Description = "Need to hold fish and be in / near moosewood", Default = false })
    ToggleAutoApprari:OnChanged(function()
        AutoAppraiser = ToggleAutoApprari.Value
        Appraise()
    end)

    local section = Tabs.Misc:AddSection("Halloween🎃")

    local DropdownH = Tabs.Misc:AddDropdown("Dropdown4", {
        Title = "Item Grabber",
        Values = {'Gaint Mushroom', 'Spiders Eye', 'Strange Root', 'Candy Corn', 'Dark Art Skull'},
        Multi = false,
    })
    DropdownH:OnChanged(function(Value)
        if Value == nil then
            return
        end
        if HumanoidRootPart ~= nil and ActiveFolder ~= nil then
            local oldpos = HumanoidRootPart.CFrame
            local EventItem = ActiveFolder:FindFirstChild(Value)

            if EventItem ~= nil and EventItem:FindFirstChild("PickupPrompt") ~= nil then
                HumanoidRootPart.CFrame = EventItem:FindFirstChildOfClass("MeshPart").CFrame + Vector3.new(3, 2, 0)
                Noclip = true
                task.wait(0.05)
                HumanoidRootPart.Anchored = true
                task.wait(0.5)
                fireproximityprompt(EventItem.PickupPrompt)
                task.wait(1)
                if Toggles.Noclip.Value == false then
                    Noclip = false
                else
                    Noclip = true
                end
                HumanoidRootPart.Anchored = false
                HumanoidRootPart.CFrame = oldpos
            else
                Fluent:Notify({
                    Title = "WARNING",
                    Content = string.format('There is no "%s" in workspace', Value),
                    Duration = 8
                })                
            end
        end
    end)

    local section = Tabs.Misc:AddSection("Player")

    local ToggleNoclip = Tabs.Misc:AddToggle("ToggleNoclip", {Title = "Noclip", Default = false })
    ToggleNoclip:OnChanged(function()
        Noclip = ToggleNoclip.Value
    end)

    local ToggleAntiDrown = Tabs.Misc:AddToggle("ToggleAntiDrown", {Title = "Disable Oxygen", Default = false })
    ToggleAntiDrown:OnChanged(function()
        AntiDrown = ToggleAntiDrown.Value
        if AntiDrown == true then
            if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == true then	
                LocalCharacter.client.oxygen.Enabled = false	
            end	
            CharAddedAntiDrownCon = LocalPlayer.CharacterAdded:Connect(function()	
                if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == true and AntiDrown == true then	
                    LocalCharacter.client.oxygen.Enabled = false	
                end	
            end)
        else	
            if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == false then	
                LocalCharacter.client.oxygen.Enabled = true	
            end	
        end
    end)

    local section = Tabs.Misc:AddSection("Fps Services")

    

    local BlackGui = Instance.new("ScreenGui")
    BlackGui.Name = "BlackGui"
    BlackGui.ResetOnSpawn = false
    local blackFrame = Instance.new("Frame")
    blackFrame.Name = "BlackFrame"
    blackFrame.Size = UDim2.new(1, 0, 1, 0)
    blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    blackFrame.BackgroundTransparency = 1
    blackFrame.Parent = BlackGui
    BlackGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local WhiteGui = Instance.new("ScreenGui")
    WhiteGui.Name = "WhiteGui"  -- Изменено здесь
    WhiteGui.ResetOnSpawn = false
    local whiteFrame = Instance.new("Frame") -- Изменено здесь
    whiteFrame.Name = "WhiteFrame" -- Изменено здесь
    whiteFrame.Size = UDim2.new(1, 0, 1, 0)
    whiteFrame.BackgroundColor3 = Color3.new(1, 1, 1)  -- Цвет белого фрейма
    whiteFrame.BackgroundTransparency = 1
    whiteFrame.Parent = WhiteGui
    WhiteGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local BlackGui5 = Tabs.Misc:AddToggle("BlackGui5", {Title = "Black Screen", Default = false })
    BlackGui5:OnChanged(function()
        local Black123 = BlackGui5.Value
        if Black123 then
            blackFrame.BackgroundTransparency = 0
        else
            blackFrame.BackgroundTransparency = 1
        end
    end)

    local WhiteGui5 = Tabs.Misc:AddToggle("WhiteGui5", {Title = "White Screen", Default = false })
    WhiteGui5:OnChanged(function()
        local White123 = WhiteGui5.Value
        if White123 then
            whiteFrame.BackgroundTransparency = 0  -- Изменено здесь
        else
            whiteFrame.BackgroundTransparency = 1  -- Изменено здесь
        end
    end)

    Tabs.Misc:AddButton({
        Title = "Delete flags",
        Callback = function()
            local flags = workspace.active.flags
            if flags then
                flags:Destroy()
            end
        end
    })
    Tabs.Misc:AddButton({
        Title = "Remove Textures",
        Description = "Very sus button",
        Callback = function()
            Window:Dialog({
                Title = "activate fps booster?",
                Content = "Pro",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/ScriptsRoblox/refs/heads/main/FpS'))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Fun:AddButton({
        Title = "Turn on the music",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/zv94NGMc'))()
        end
    })

    local section = Tabs.Fun:AddSection("Player")

    local ToggleWalkspeed = Tabs.Fun:AddToggle("Walk Speed", {Title = "Walk Speed", Default = false })
    local defaultWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
    
    local Input = Tabs.Fun:AddInput("Speed", {
        Title = "Speed",
        Default = "16",
        Placeholder = "Enter walk speed",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
        end
    })
    
    Input.OnChanged = function()
        if ToggleWalkspeed:Get() then
            local speedValue = Input.Value
            if tonumber(speedValue) then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speedValue)
            end
        end
    end
    
    ToggleWalkspeed:OnChanged(function(State)
        if State then
            local speedValue = Input.Value
            if speedValue and tonumber(speedValue) then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speedValue)
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = defaultWalkSpeed
        end
    end)
    
    local ToggleJumpPower = Tabs.Fun:AddToggle("Jump Power", {Title = "Jump Power", Default = false })
    local defaultJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
    
    local InputJump = Tabs.Fun:AddInput("Power", {
        Title = "Power",
        Default = "50",
        Placeholder = "Enter jump power",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
        end
    })
    
    InputJump.OnChanged = function()
        if ToggleJumpPower:Get() then
            local jumpValue = InputJump.Value
            if tonumber(jumpValue) then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(jumpValue)
            end
        end
    end
    
    ToggleJumpPower:OnChanged(function(State)
        if State then
            local jumpValue = InputJump.Value
            if jumpValue and tonumber(jumpValue) then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(jumpValue)
            else
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = defaultJumpPower
        end
    end)

    local section = Tabs.Webhook:AddSection("Webhook Stats Messages")
    local InputWebhook = Tabs.Webhook:AddInput("InputWebhook", {
        Title = "Webhook Url",
        Default = "",
        Placeholder = "URL",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            WebhookUrl = Value
        end
    })
    InputWebhook:OnChanged(function()
        print("Url Changed:", InputWebhook.Value)
    end)
    local SliderWebhook = Tabs.Webhook:AddSlider("SliderWebhook", {
        Title = "Send Messages every ? seconds",
        Description = "Prefer 60 seconds",
        Default = 60,
        Min = 1,
        Max = 600,
        Rounding = 1,
        Callback = function(Value)
            WebhookDelay = Value
        end
    })
    SliderWebhook:OnChanged(function(Value)
        print("Delay changed:", Value)
    end)

    local ToggleWebhook = Tabs.Webhook:AddToggle("ToggleWebhook", {Title = "Sent Webhook", Default = false })
    ToggleWebhook:OnChanged(function()
        WebhookLog = ToggleWebhook.Value
        WebhookManager()
    end)
end

Tabs.Settings:AddButton({
    Title = "rejoin server",
    Description = "",
    Callback = function()
        local ts = game:GetService("TeleportService")

        local p = game:GetService("Players").LocalPlayer
        
         
        
        ts:Teleport(game.PlaceId, p)
    end
})


--hopServerto low


Tabs.Settings:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end
        
        local Server, Next; repeat
           local Servers = ListServers(Next)
           Server = Servers.data[1]
           Next = Servers.nextPageCursor
        until Server
        
        TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    end
})

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("lyxmeHub")
SaveManager:SetFolder("lyxmeHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Notification",
    Content = "The script has been loading",
    Duration = 5
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

--uitoggle

do
    local ToggleUI = game.CoreGui:FindFirstChild("MyToggle") 
    if ToggleUI then 
    ToggleUI:Destroy() 
    end
end

local MyToggle = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

--Properties:

MyToggle.Name = "MyToggle"
MyToggle.Parent = game.CoreGui
MyToggle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = MyToggle
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.156000003, 0, -0, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://96764407519217"
ImageButton.MouseButton1Click:Connect(function()
game.CoreGui:FindFirstChild("ScreenGui").Enabled = not game.CoreGui:FindFirstChild("ScreenGui").Enabled
end)


UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = ImageButton

--EquipRod 
