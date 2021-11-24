local math = math
local table = table
local draw = draw
local team = team
local IsValid = IsValid
local CurTime = CurTime
local draw_SimpleText = draw.SimpleText
local draw_SimpleTextOutlined = draw.SimpleTextOutlined
local draw_RoundedBoxEx = draw.RoundedBoxEx
local draw_RoundedBox = draw.RoundedBox
local draw_DrawText = draw.DrawText
local surface_SetFont = surface.SetFont
local surface_DrawRect = surface.DrawRect
local surface_DrawLine = surface.DrawLine
local surface_GetTextSize = surface.GetTextSize
local surface_DrawTexturedRect = surface.DrawTexturedRect
local surface_DrawTexturedRectRotated = surface.DrawTexturedRectRotated
local surface_DrawOutlinedRect = surface.DrawOutlinedRect
local surface_SetDrawColor = surface.SetDrawColor
local surface_SetMaterial = surface.SetMaterial
local surface_DrawPoly = surface.DrawPoly
local surface_DrawCircle = surface.DrawCircle
local gradient_u = Material("vgui/gradient-u")
local gradient_d = Material("vgui/gradient-d")
local gradient_r = Material("vgui/gradient-r")
local blur = Material("pp/blurscreen")

local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface_SetDrawColor(255, 255, 255)
    surface_SetMaterial(blur)

    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface_DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

MOAT_COMP = MOAT_COMP or {}
MOAT_COMP.GunNames = MOAT_COMP.GunNames or {}
MOAT_COMP.DropTableNames = MOAT_COMP.DropTableNames or {}
MOAT_COMP.TalentNames = MOAT_COMP.TalentNames or {}
local n1 = 1
local n2 = 1
local n3 = 1

MOAT_COMP.RarityNames = {"30 Speed", "Insomnious", "HANDS OFF MY", "Airy", "Amateur", "Patriotic", "Military-Grade", "Military-Grade", "AMERICAN", "AMERICAN", "Patriotic", "Independent", "Independent", "Redneck", "Redneck", "Bombing", "Bombing", "Freedom", "Freedom", "Country", "Country", "Western", "Western", "Trumping", "Trumping", "Explosive", "Explosive", "Ammofull", "Angelic", "Apprentice", "Jokesters", "Astral", "Blissful", "Blooming", "Boston", "Bright", "Busted", "Celestial", "Chaotic", "Charismatic", "Authentic", "Community", "Kinship", "Young", "Mexican", "*Click*", "Cloudless", "Coal", "Soulbound", "Cozy", "Crisp", "Dashin", "Dashing", "Decorated", "Deranged", "Devoted", "Divine", "Dual", "Dynamic", "Eccentric", "Egg-Cellent", "Egg-Citing", "Egg-Sposed", "Egg-Straodinary", "Egg-Stravaganza", "Egg-Streme", "Energized", "Erratic", "Eternal", "Evergreen", "Expert", "Fair", "Faulty", "Fearful", "Feeble", "Festive", "Floral", "Flourishing", "Fluffy", "Fresh", "Friendly", "Frisky", "Gift-Wrapped", "Giving", "Global", "God", "Scary", "Creepy", "Haunting", "Mystical", "Moonlit", "Startling", "Bloody", "Ghostly", "Spooky", "Undead", "Ghoulish", "Spooktacular", "Supernatural", "Boo-tiful", "Harmful", "Haywire", "Heavenly", "Heroic", "Hippity", "Holiday", "Hoppity", "Immortal", "Incredible", "Infringed", "Intimidating", "Jolly", "Joyful", "Junky", "Kosher", "Legend", "Legendary", "Lightweight", "Copycat", "Assassin", "Wildcard", "Silenced", "Wild!", "Lovely", "Lush", "Magical", "Marvelous", "Master", "Mediocre", "Merry", "Moat's", "Moderate", "Mythical", "Celebratory", "Novice", "Odd", "Dedotated", "Brother, May I Have Some", "Donald Trump's", "Change My", "Bird Box", "Thank u, next", "Alexa play", "Despacito", "AirPods Compatible", "World Record", "End Game", "Slaps Roof of", "Boneless", "Delet This", "That's a Lotta", "Don't Say", "Is This Your", "Netflix n'", "Wooaah", "Ordinary", "Partisan", "Unpassable", "Passable", "Peppy", "Petty", "Pleasant", "Precise", "Priceless", "Professional", "Pure", "Quaint", "Rapid", "Recycled", "Remarkable", "Retracted", "Righteous", "Rough", "Sacred", "Saintlike", "Santa's own", "Satanic", "Self-Made", "Shabby", "Shiny", "Snowy", "Soft", "Spectacular", "Stable", "Steady", "Stock", "Strange", "Stunning", "Splashing", "Refreshing", "Delightful", "Scorching", "Soaking", "Juicy", "Sunburnt", "Aquaholic", "Paradise", "Backyard", "Tropical", "Slip-N-Slide", "Foreign", "Humid", "Squirt", "Beachy", "Umbrella", "Sizzling", "Breezy", "Fragrant", "Poolside", "Sunny", "Sustainable", "Sweet", "TalentTest", "Tattered", "Titan T0", "Titan T1", "Titan T2", "Titan T3", "Titan T4", "Tolerable", "Touted", "Trifling", "Turbid", "Uncanny", "Unusual", "Cover-Girl", "Splendid", "Amazing", "Prettier", "Gentle", "Cutie", "Scrumptious", "Ravishing", "Purty", "Dainty", "Handsome", "Nice", "Enchanting", "Charming", "Dreamy", "Yummy", "Fabulous", "Gorgeous", "Beautiful", "Adorable", "Lovable", "Vibrant", "Virtuous"}

hook.Add("InitPostEntity", "GetNiceFormattedGunNamesForComp", function()
    for k, v in pairs(weapons.GetList()) do
        if (v.Kind ~= WEAPON_HEAVY and v.Kind ~= WEAPON_PISTOL) then continue end
        if (v.Base ~= "weapon_tttbase" or v.ClassName:find("_oc") or not v.PrintName) then continue end
        MOAT_COMP.GunNames[n1] = {}
        MOAT_COMP.GunNames[n1].Name = v.PrintName
        n1 = n1 + 1
    end

    for k, v in pairs(MOAT_DROPTABLE) do
        if (not v.Name) then continue end
        MOAT_COMP.DropTableNames[n2] = {}
        MOAT_COMP.DropTableNames[n2].Name = v.Name
        n2 = n2 + 1
    end

    for k, v in pairs(MOAT_TALENTS) do
        if (not v.Name) then continue end
        MOAT_COMP.TalentNames[n3] = {}
        MOAT_COMP.TalentNames[n3].Name = v.Name
        n3 = n3 + 1
    end
end)

MOAT_COMP.Entries = {
    {"Item's evidence link", false, "Insert any evidence for the compensation ticket here."},
    {"Any tier / unique / item (ex. Aquaholic, Tropical, Turtle Hat)", false, "", MOAT_COMP.DropTableNames},
    {"Item's weapon class (ex. Deagle)", false, "", MOAT_COMP.GunNames},
    {"Requested Talent 1", false, "", MOAT_COMP.TalentNames},
    {"Requested Talent 2", false, "", MOAT_COMP.TalentNames},
    {"Requested Talent 3", false, "", MOAT_COMP.TalentNames},
    {"Requested Talent 4", false, "", MOAT_COMP.TalentNames},
    {"Additional Comments", false, "You may leave any additional comments here."}
}

function MOAT_COMP:Open()
    if (IsValid(self.bg)) then
        self.bg:Remove()
    end

    self.bg = vgui.Create("DFrame")
    self.bg:SetSize(500, 475)
    self.bg:MakePopup()
    self.bg:Center()
    self.bg:SetTitle("")

    self.bg.Paint = function(s, w, h)
        DrawBlur(s, 5)
        draw_RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 100))
        draw_RoundedBox(0, 1, 1, w - 2, h - 2, Color(0, 0, 0, 50))
        surface_SetDrawColor(150, 150, 150, 50)
        surface_DrawRect(0, 0, w, 21)
        draw_SimpleText("Submit a New Compensation Ticket", "GModNotify", 4, 1, Color(255, 255, 255))
    end

    self.f = vgui.Create("DPanel", self.bg)
    self.f:Dock(FILL)
    self.f.Paint = function(s, w, h) end
    self.t = {}
    local cur_y = 0

    for i = 1, #self.Entries do
        local bp = vgui.Create("DPanel", self.f)
        bp:SetPos(0, cur_y)
        bp:SetSize(500, 40)

        bp.Paint = function(s, w, h)
            surface_SetDrawColor(0, 0, 0, 100)
            surface_DrawRect(0, 0, w, h)
            draw_SimpleText(self.Entries[i][1], "GModNotify", 2, 1, Color(255, 255, 255))
        end

        local last = i == #self.Entries

        if istable(self.Entries[i][4]) then
            self.t[i] = vgui.Create("DButton", bp)
            self.t[i]:SetText("")
            local button = self.t[i]

            self.t[i].DoClick = function()
                MOAT_COMP.SearchMenu = vgui.Create("Noahs_Search")
                MOAT_COMP.SearchMenu.Table = self.Entries[i][4]
                MOAT_COMP.SearchMenu.Button = button
            end
        else
            self.t[i] = vgui.Create("DTextEntry", bp)
        end

        self.t[i]:SetPos(0, 19)
        self.t[i]:SetSize(490, 21)
        self.t[i].st = 50

        self.t[i].Paint = function(s, w, h)
            surface_SetDrawColor(0, 150, 150, 50)
            surface_DrawOutlinedRect(0, 0, w, h)
            surface_SetDrawColor(0, 0, 0, 100)
            surface_DrawRect(1, 1, w - 2, h - 2)
            s:DrawTextEntryText(Color(255, 255, 255, 255), color_white, Color(255, 255, 255, 255))
            draw_SimpleText(self.Entries[i][3] or "Nothing", "DermaDefault", 3, last and 1 or 4, Color(255, 255, 255, s.st))
        end

        self.t[i].Think = function(s)
            s.st = s:GetValue() ~= "" and 0 or 50
        end

        if (self.Entries[i][2]) then
            self.t[i]:SetNumeric(true)
        end

        cur_y = cur_y + 43

        if (last) then
            bp:SetTall(80)
            self.t[i]:SetTall(61)
            self.t[i]:SetMultiline(true)
            cur_y = cur_y + 50
        end
    end

    self.s = vgui.Create("DButton", self.bg)
    self.s:SetSize(200, 26)
    self.s:SetPos(150, cur_y + 35)
    self.s:SetText("")
    self.s.LerpNum = 0

    self.s.Paint = function(s, w, h)
        if (s:IsHovered()) then
            s.LerpNum = Lerp(FrameTime() * 8, s.LerpNum, 1)
        else
            s.LerpNum = Lerp(FrameTime() * 8, s.LerpNum, 0)
        end

        surface_SetDrawColor(150 * s.LerpNum, 150 * s.LerpNum, 150 * s.LerpNum, 100)
        surface_DrawOutlinedRect(0, 0, w, h)
        surface_SetDrawColor(150 * s.LerpNum, 150 * s.LerpNum, 150 * s.LerpNum, 225)
        surface_DrawRect(1, 1, w - 2, h - 2)
        draw_SimpleText("Submit for Review", "GModNotify", (w / 2), (h / 2), Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    self.s.OnCursorEntered = function(s)
        surface.PlaySound("ui/buttonrollover.wav")
    end

    self.s.DoClick = function(s)
        surface.PlaySound("ui/buttonclickrelease.wav")
        net.Start("moat.comp.open")

        for i = 1, #self.t do
            net.WriteString(self.t[i]:GetValue() or self.t[i]:GetText() or "")
        end

        net.SendToServer()

        if (IsValid(self.bg)) then
            self.bg:Remove()
        end
    end
end

net.Receive("moat.comp.open", function()
    MOAT_COMP:Open()
end)

function MOAT_COMP.Chat()
    local str = net.ReadString()
    local e = net.ReadBool()
    chat.AddText(e and Color(255, 0, 0) or Color(0, 255, 0), str)
end

net.Receive("moat.comp.chat", MOAT_COMP.Chat)
local PANEL = {}

function PANEL:Init()
    timer.Simple(0.1, function()
        local W, H = ScreenScale(200), ScreenScale(80)
        -- Main Panel.
        self = vgui.Create("DFrame")
        self:SetSize(W, H)
        self:Center()
        self:MakePopup()
        self:SetTitle("Search")
        -- Search Bar
        self.Search = vgui.Create("DTextEntry", self)
        self.Search:Dock(TOP)
        self.Search:SetPlaceholderText("Unique Name Here")

        self.Search.OnEnter = function()
            for key, value in pairs(self.List:GetItems()) do
                value:Remove() -- Removing the current items on the list.
            end

            -- Replace with your actual weapon table.
            for key, value in pairs(MOAT_COMP.SearchMenu.Table or {}) do
                if string.find(string.lower(value.Name), string.lower(self.Search:GetValue())) then
                    self.List.CreateWeaponOption(value)
                end
            end
        end

        -- List
        self.List = vgui.Create("DPanelList", self)
        self.List:Dock(FILL)
        self.List:SetSpacing(5)
        self.List:EnableVerticalScrollbar()

        self.List.CreateWeaponOption = function(value)
            local panel = vgui.Create("DButton")
            panel:SetText(value.Name)

            panel.DoClick = function()
                self.SelectWeapon(value)
            end

            self.List:AddItem(panel)
        end

        self.SelectWeapon = function(value)
            MOAT_COMP.SearchMenu.Button:SetText(value.Name)
            self:Close()
        end
    end)
end

vgui.Register("Noahs_Search", PANEL)