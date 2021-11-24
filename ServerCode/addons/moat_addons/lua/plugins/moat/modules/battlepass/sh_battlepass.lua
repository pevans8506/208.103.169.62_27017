/*AddCSLuaFile()

if not MOAT_BP then
    MOAT_BP = {}
end

MOAT_BP.Examples = {}
MOAT_BP.tiers = {}

--xp_needed = 2000
local function add_tier_item(name, rarity, model, ID, effect)
    table.insert(MOAT_BP.tiers, {
        name = name,
        rarity = rarity,
        model = model,
        effect = effect or "",
        ID = ID
    })
end

--[[
 for i = 1,100 do
     add_tier_item("Tiers so it doesnt error " .. i,math.random(4,9),"https://noahg.codes/s/noah/275476-PoliteViper.png",-2,"bounce")
 end
]]
--Custom itemids:
-- -1 = 5000 ic
-- -2 = 10000 ic
function MOAT_BP.AddExample(itemid, itemtbl)
    MOAT_BP.Examples[itemid] = itemtbl
end

if CLIENT then
    net.Receive("BP.ItemExample", function()
        MOAT_BP.AddExample(net.ReadInt(16), net.ReadTable())
    end)
end

add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- Level 1
add_tier_item("Random Eerie Weapon", 8, "tier", 0, "") -- 2
add_tier_item("Random Terrifying Weapon", 8, "tier", 0, "") -- 3
add_tier_item("Random Moonlit Weapon", 5, "tier", 0, "") -- 4
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 5
add_tier_item("Random Rattling Weapon", 8, "tier", 0, "") -- 6
add_tier_item("Random Creepy Weapon", 8, "tier", 0, "") -- 7
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 8
add_tier_item("Random Dreadful Weapon", 8, "tier", 0, "") -- 9
add_tier_item("5 #3 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -11, "") -- 10
add_tier_item("Random squeamish Weapon", 8, "tier", 0, "") -- 11
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "bounce") -- Level 12
add_tier_item("Leather Face Model", 4, "models/weapons/w_smg_mac10.mdl", 0, "") -- 13
add_tier_item("Random Mystical Weapon", 8, "tier", 0, "") -- 14
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "bounce") -- 15
add_tier_item("Freakshow", 8, "tier", 0, "") -- 16
add_tier_item("Random Eerie Weapon", 8, "tier", 0, "") -- 17
add_tier_item("Random Screaming Weapon", 5, "tier", 0, "") -- Level 18
add_tier_item("UNKNOWN SKIN", 8, "tier", 0, "") -- 19
add_tier_item("5 #1 Goodie Bags", 6, "tier", -12, "") -- 20
add_tier_item("Random Ghoulish Weapon", 8, "tier", 0, "") -- 21
add_tier_item("Pet Crow", 6, "tier", 0, "") -- Level 22
add_tier_item("Random Abominable Weapon", 8, "tier", 0, "") -- 23
add_tier_item("Random Wailing Weapon", 5, "tier", 0, "") -- 24
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 25
add_tier_item("10,000 Inventory Credits!", 6, "https://i.imgur.com/cGxlQEx.png", -1, "bounce") -- 26
add_tier_item("1 Random Goodie Bag", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -8, "") -- 27
add_tier_item("1 Random Goodie Bag", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -8, "") -- 28
add_tier_item("Random Spooky Weapon", 8, "tier", 51449, "") -- 29
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 30
add_tier_item("Random Howling Weapon", 6, "tier", 0, "") -- 31
add_tier_item("Random Decrepit Weapon", 8, "tier", 0, "") -- Level 32
add_tier_item("5 Random Goodie Bags", 6, "tier", -14, "") -- 33
add_tier_item("15,000 Inventory Credits", 6, "https://i.imgur.com/cGxlQEx.png", -2, "bounce") -- 34
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -6, "") -- 35
add_tier_item("Fang-Tastic Weapon", 8, "put custom model", 0, "") -- 36
add_tier_item("Headless Horseman Weapon", 8, "peacekeeper v model", 0, "") -- 37
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 38
add_tier_item("Monster Mash Skin", 5, "put skin link here", 0, "") -- 39
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 40
add_tier_item("Lady Boyle Model", 5, "put model here", 0, "") -- 41
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- Level 42
add_tier_item("7 #2 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -14, "") -- 43
add_tier_item("Random Spectral Weapon", 6, "tier", 0, "") -- 44
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 45
add_tier_item("20,000 Inventory Credits", 6, "https://i.imgur.com/cGxlQEx.png", -3, "") -- 46
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 47
add_tier_item("Random Terrifying Weapon", 6, "tier", 0, "") -- 48
add_tier_item("Micheal Meyers Model", 5, "Put model here", 0) -- 49
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 50
add_tier_item("Random Gruesome Weapon", 5, "tier", 0, "") -- 51
add_tier_item("1 Random Goodie Bag", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -8, "") -- 52
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 53
add_tier_item("Archane", 6, "Vir hasn't sent me this yet (:", 0, "") -- 56
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 57
add_tier_item("Pawprint Skin", 4, "Skin image link thing", 0, "") -- 58
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 59
add_tier_item("Random Creepy Weapon", 8, "tier", 0, "") -- 60
add_tier_item("Nihilophobia Skin", 8, "tier", 0, "") -- 61
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 62
add_tier_item("Random Superstitious Weapon", 8, "tier", 0, "") -- Level 63
add_tier_item("Pet Wolf", 7, "tier", 0, "") -- 64
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 65
add_tier_item("2 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -9, "") -- 66
add_tier_item("Random Full Moon Weapon", 7, "tier", 0, "") -- 67
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- 68
add_tier_item("Jason Model", 6, "models/weapons/w_rif_ak47.mdl", 10107, "electric") -- 69
add_tier_item("10 #1 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -16, "") -- 70
add_tier_item("10 #2 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -17, "") -- 71
add_tier_item("10 #3 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -18, "") -- 72
add_tier_item("25,000 Inventory Credits", 8, "https://i.imgur.com/cGxlQEx.png", -4, "bounce") -- Level 73
add_tier_item("Random Mystical Weapon", 5, "tier", 0, "")
add_tier_item("Random Bewitching Weapon", 8, "tier", 0, "")
add_tier_item("Earserhead", 7, "tier", 0, "")
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "")
add_tier_item("Random Moonlit Weapon", 5, "tier", 0, "") -- 74
add_tier_item("Zombie Tiger Skin", 6, "Put skin here alalala", 0, "") -- 75
add_tier_item("Random Nauseating Weapon", 5, "tier", 0, "") -- 76
add_tier_item("Random Bewitching Weapon", 5, "tier", 0, "") -- 77
add_tier_item("10 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -15, "") -- 78
add_tier_item("Random Possesed Weapon", 8, "tier", 0, "") -- 79
add_tier_item("Random Ghoulish Weapon", 8, "tier", 0, "") -- 80
add_tier_item("5 #2 Goodie Bags", 6, "tier", -13, "") -- 81
add_tier_item("30,000 Inventory Credits", 8, "https://i.imgur.com/cGxlQEx.png", -5, "bounce") -- level 82
add_tier_item("5 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -10, "") -- Level 83
add_tier_item("Cardboard Skin", 8, "skin thing AHHHHH", 0, "") -- 84
add_tier_item("Random Squeamish Weapon", 8, "tier", 0, "") -- 85
add_tier_item("10 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -15, "") -- 86
add_tier_item("Eliza Model", 7, "Model thing here fuck boy", 0, "") -- 87
add_tier_item("10 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -15, "") -- 88
add_tier_item("Random Sinister Weapon", 8, "tier", 0, "") -- 89
add_tier_item("Random Eerie Weapon", 8, "tier", 0, "") -- 90
add_tier_item("The end skin", 7, "You know the fuckin drill", 0, "") -- 91
add_tier_item("35,000 Inventory Credits", 8, "https://i.imgur.com/cGxlQEx.png", -6, "bounce") -- 92
add_tier_item("10 Random Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -15, "") -- Level 93
add_tier_item("Jeff Model", 7, "Put the fuckin thing", 0, "") -- 94
add_tier_item("Insidious Shooters", 7, "Put the model for m16 here", 0, "") -- 95
add_tier_item("15 #2 Goodie Bags", 6, "https://tera.gg/ttt/misc/gift_usable64.png", -4, "") -- 96
add_tier_item("Noxious", 8, "I dont know what the fuck this is, asked vir", 0, "") -- 97
add_tier_item("Pet Possum", 9, "tier", 0, "") -- 98
print(#MOAT_BP.tiers .. " tiers")

-- for i = #MOAT_BP.tiers + 1,100 do
--     add_tier_item("Tiers so it doesnt error " .. i,math.random(4,9),"https://i.imgur.com/cGxlQEx.png",-2,"bounce")
-- end
-- Default examples, save on networking