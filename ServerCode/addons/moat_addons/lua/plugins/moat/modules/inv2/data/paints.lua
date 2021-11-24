AddCSLuaFile()

MOAT_PAINT = MOAT_PAINT or {}

MOAT_PAINT.Colors = MOAT_PAINT.Colors or {
  {"Mint Green", {3, 255, 171}, 6},
  {"Joker Green", {2, 153, 57}, 3},
  {"Pindel Pink", {247, 136, 206}, 5},
  {"Bleek Banana", {236, 255, 140}, 3},
  {"Water Melon", {187, 235, 42}, 4},
  {"Magnetic Blue", {73, 76, 153}, 3},
  {"Aqua Blue", {66, 208, 255}, 4},
  {"Toxic Yellow", {221, 225, 3}, 6},
  {"Bright Purple", {96, 62, 148}, 4},
  {"Neon Pink", {255, 105, 180}, 5},
  {"Bright Gold", {227, 190, 70}, 7},
  {"Turkey Stuffer Green", {22, 161, 18}, 5},
  {"Neon Green", {5, 193, 25}, 4},
  {"Neon Purple", {27, 29, 163}, 6},
  {"Dark Gold Chrome", {251, 184, 41}, 7},
  {"Hot Pink", {255, 105, 180}, 7},
  {"Detox Purple", {157, 153, 188}, 3},
  {"Glossy Green", {0, 70, 0}, 3},
  {"Sky Blue", {127, 200, 255}, 5},
  {"Neon Sky Blue", {123, 255, 255}, 6},
  {"Pure Black", {0, 0, 0}, 6},
  {"Sharpe Yellow", {255, 255, 1}, 6},
  {"Bright Orange", {251, 86, 4}, 6},
  {"Cotton Candy Pink", {249, 82, 107}, 6},
  {"Deep Red", {229, 14, 6}, 3},
  {"Flueorescent Blue", {5, 193, 255}, 4},
  {"Freeze Green", {140, 255, 50}, 4},
  {"Red Bull Blue", {51, 51, 153}, 3},
  {"Monster Energy Neon Green", {51, 255, 153}, 3},
  {"Dr. Pepper Red", {153, 34, 34}, 3},
  {"Razer Green", {71, 225, 12}, 4},
  {"Electric Lime", {206, 250, 5}, 3},
  {"Blazing Blue", {44, 117, 255}, 3},
  {"Sunshine Orange", {255, 65, 5}, 4},
  {"Electric Indigo", {111, 0, 255}, 5},
  {"American Rose", {255, 3, 62}, 6},
  {"Lazer Blue", {0, 15, 255}, 4},
  {"Neon Aqua Blue", {123, 255,255}, 5},
  {"Bleak Banana", {236, 255, 140}, 3},
  {"Chameleon Green", {0, 43, 21}, 3},
  {"Perpiling Purple", {140, 138, 255}, 4},
  {"Serpentine Green", {64, 124, 132}, 3},
  {"Menacing Red", {52, 0, 17}, 4},
  {"Creamsicle Orange", {242, 80, 32}, 5},
  {"Glycerine Green", {3, 51, 9}, 3},
  {"Corrosive Green", {132, 255, 10}, 5},
  {"Electric Lime", {80, 100, 0}, 3},
  {"Deep Pink", {100, 0, 40}, 5},
  {"Pure Orange", {100, 60, 0}, 3},
  {"Very Soft Pink", {97, 69, 72}, 3},
  {"New Lime", {3, 39, 15}, 3},
  {"Brown Town", {39, 15, 3}, 4},
  {"Nardo Grey", {104, 106, 118}, 5},
  {"Light Teal", {103, 186, 181}, 4},
  {"Neon Mint", {0, 204, 120}, 5},
  {"Neon Lime", {0, 150, 45}, 4},
  {"Pure White", {255, 255, 255}, 6},
  {"George's Surprise", {115, 34, 136}, 7},
}
/*
MOAT_PAINT.Textures = {
  {"Flesh", "models/flesh", 7}
}
*/
MOAT_PAINT.Tints = MOAT_PAINT.Tints or {
	[6001] = {'Mint Green Tint', {3, 255, 171}, 6},
	[6002] = {'Joker Green Tint', {2, 153, 57}, 3},
	[6003] = {'Pindel Pink Tint', {247, 136, 206}, 5},
	[6004] = {'Bleek Banana Tint', {236, 255, 140}, 3},
	[6005] = {'Water Melon Tint', {187, 235, 42}, 4},
	[6006] = {'Magnetic Blue Tint', {73, 76, 153}, 3},
	[6007] = {'Aqua Blue Tint', {66, 208, 255}, 4},
	[6008] = {'Toxic Yellow Tint', {221, 225, 3}, 6},
	[6009] = {'Bright Purple Tint', {96, 62, 148}, 4},
	[6010] = {'Neon Pink Tint', {255, 105, 180}, 5},
	[6011] = {'Bright Gold Tint', {227, 190, 70}, 7},
	[6012] = {'Turkey Stuffer Green Tint', {22, 161, 18}, 5},
	[6013] = {'Neon Green Tint', {5, 193, 25}, 4},
	[6014] = {'Neon Purple Tint', {27, 29, 163}, 6},
	[6015] = {'Dark Gold Chrome Tint', {251, 184, 41}, 7},
	[6016] = {'Hot Pink Tint', {255, 105, 180}, 7},
	[6017] = {'Detox Purple Tint', {157, 153, 188}, 3},
	[6018] = {'Glossy Green Tint', {0, 70, 0}, 3},
	[6019] = {'Sky Blue Tint', {127, 200, 255}, 5},
	[6020] = {'Neon Sky Blue Tint', {123, 255, 255}, 6},
	[6021] = {'Pure Black Tint', {0, 0, 0}, 6},
	[6022] = {'Sharpe Yellow Tint', {255, 255, 1}, 6},
	[6023] = {'Bright Orange Tint', {251, 86, 4}, 6},
	[6024] = {'Cotton Candy Pink Tint', {249, 82, 107}, 6},
	[6025] = {'Deep Red Tint', {229, 14, 6}, 3},
	[6026] = {'Flueorescent Blue Tint', {5, 193, 255}, 4},
	[6027] = {'Freeze Green Tint', {140, 255, 50}, 4},
	[6028] = {'Red Bull Blue Tint', {51, 51, 153}, 3},
	[6029] = {'Monster Energy Neon Green Tint', {51, 255, 153}, 3},
	[6030] = {'Dr. Pepper Red Tint', {153, 34, 34}, 3},
	[6031] = {'Razer Green Tint', {71, 225, 12}, 4},
	[6032] = {'Electric Lime Tint', {206, 250, 5}, 3},
	[6033] = {'Blazing Blue Tint', {44, 117, 255}, 3},
	[6034] = {'Sunshine Orange Tint', {255, 65, 5}, 4},
	[6035] = {'Electric Indigo Tint', {111, 0, 255}, 5},
	[6036] = {'American Rose Tint', {255, 3, 62}, 6},
	[6037] = {'Lazer Blue Tint', {0, 15, 255}, 4},
	[6038] = {'Neon Aqua Blue Tint', {123, 255, 255}, 5},
	[6039] = {'Bleak Banana Tint', {236, 255, 140}, 3},
	[6040] = {'Chameleon Green Tint', {0, 43, 21}, 3},
	[6041] = {'Perpiling Purple Tint', {140, 138, 255}, 4},
	[6042] = {'Serpentine Green Tint', {64, 124, 132}, 3},
	[6043] = {'Menacing Red Tint', {52, 0, 17}, 4},
	[6044] = {'Creamsicle Orange Tint', {242, 80, 32}, 5},
	[6045] = {'Glycerine Green Tint', {3, 51, 9}, 3},
	[6046] = {'Corrosive Green Tint', {132, 255, 10}, 5},
	[6047] = {'Electric Lime Tint', {80, 100, 0}, 3},
	[6048] = {'Deep Pink Tint', {100, 0, 40}, 5},
	[6049] = {'Pure Orange Tint', {100, 60, 0}, 3},
	[6050] = {'Very Soft Pink Tint', {97, 69, 72}, 3},
	[6051] = {'New Lime Tint', {3, 39, 15}, 3},
	[6052] = {'Brown Town Tint', {39, 15, 3}, 4},
	[6053] = {'Nardo Grey Tint', {104, 106, 118}, 5},
	[6054] = {'Light Teal Tint', {103, 186, 181}, 4},
	[6055] = {'Neon Mint Tint', {0, 204, 120}, 5},
	[6056] = {'Neon Lime Tint', {0, 150, 45}, 4},
	[6057] = {'Pure White Tint', {255, 255, 255}, 6},
	[6058] = {'George\'s Surprise Tint', {115, 34, 136}, 7},
	[6566] = {'Infinity Tint', {255, 255, 255}, 9, 'https://tera.gg/ttt/drops/inf.png', Dream = true}
}

MOAT_PAINT.Paints = MOAT_PAINT.Paints or {
	[6059] = {'Mint Green Paint', {3, 255, 171}, 6},
	[6060] = {'Joker Green Paint', {2, 153, 57}, 3},
	[6061] = {'Pindel Pink Paint', {247, 136, 206}, 5},
	[6062] = {'Bleek Banana Paint', {236, 255, 140}, 3},
	[6063] = {'Water Melon Paint', {187, 235, 42}, 4},
	[6064] = {'Magnetic Blue Paint', {73, 76, 153}, 3},
	[6065] = {'Aqua Blue Paint', {66, 208, 255}, 4},
	[6066] = {'Toxic Yellow Paint', {221, 225, 3}, 6},
	[6067] = {'Bright Purple Paint', {96, 62, 148}, 4},
	[6068] = {'Neon Pink Paint', {255, 105, 180}, 5},
	[6069] = {'Bright Gold Paint', {227, 190, 70}, 7},
	[6070] = {'Turkey Stuffer Green Paint', {22, 161, 18}, 5},
	[6071] = {'Neon Green Paint', {5, 193, 25}, 4},
	[6072] = {'Neon Purple Paint', {27, 29, 163}, 6},
	[6073] = {'Dark Gold Chrome Paint', {251, 184, 41}, 7},
	[6074] = {'Hot Pink Paint', {255, 105, 180}, 7},
	[6075] = {'Detox Purple Paint', {157, 153, 188}, 3},
	[6076] = {'Glossy Green Paint', {0, 70, 0}, 3},
	[6077] = {'Sky Blue Paint', {127, 200, 255}, 5},
	[6078] = {'Neon Sky Blue Paint', {123, 255, 255}, 6},
	[6079] = {'Pure Black Paint', {0, 0, 0}, 6},
	[6080] = {'Sharpe Yellow Paint', {255, 255, 1}, 6},
	[6081] = {'Bright Orange Paint', {251, 86, 4}, 6},
	[6082] = {'Cotton Candy Pink Paint', {249, 82, 107}, 6},
	[6083] = {'Deep Red Paint', {229, 14, 6}, 3},
	[6084] = {'Flueorescent Blue Paint', {5, 193, 255}, 4},
	[6085] = {'Freeze Green Paint', {140, 255, 50}, 4},
	[6086] = {'Red Bull Blue Paint', {51, 51, 153}, 3},
	[6087] = {'Monster Energy Neon Green Paint', {51, 255, 153}, 3},
	[6088] = {'Dr. Pepper Red Paint', {153, 34, 34}, 3},
	[6089] = {'Razer Green Paint', {71, 225, 12}, 4},
	[6090] = {'Electric Lime Paint', {206, 250, 5}, 3},
	[6091] = {'Blazing Blue Paint', {44, 117, 255}, 3},
	[6092] = {'Sunshine Orange Paint', {255, 65, 5}, 4},
	[6093] = {'Electric Indigo Paint', {111, 0, 255}, 5},
	[6094] = {'American Rose Paint', {255, 3, 62}, 6},
	[6095] = {'Lazer Blue Paint', {0, 15, 255}, 4},
	[6096] = {'Neon Aqua Blue Paint', {123, 255, 255}, 5},
	[6097] = {'Bleak Banana Paint', {236, 255, 140}, 3},
	[6098] = {'Chameleon Green Paint', {0, 43, 21}, 3},
	[6099] = {'Perpiling Purple Paint', {140, 138, 255}, 4},
	[6100] = {'Serpentine Green Paint', {64, 124, 132}, 3},
	[6101] = {'Menacing Red Paint', {52, 0, 17}, 4},
	[6102] = {'Creamsicle Orange Paint', {242, 80, 32}, 5},
	[6103] = {'Glycerine Green Paint', {3, 51, 9}, 3},
	[6104] = {'Corrosive Green Paint', {132, 255, 10}, 5},
	[6105] = {'Electric Lime Paint', {80, 100, 0}, 3},
	[6106] = {'Deep Pink Paint', {100, 0, 40}, 5},
	[6107] = {'Pure Orange Paint', {100, 60, 0}, 3},
	[6108] = {'Very Soft Pink Paint', {97, 69, 72}, 3},
	[6109] = {'New Lime Paint', {3, 39, 15}, 3},
	[6110] = {'Brown Town Paint', {39, 15, 3}, 4},
	[6111] = {'Nardo Grey Paint', {104, 106, 118}, 5},
	[6112] = {'Light Teal Paint', {103, 186, 181}, 4},
	[6113] = {'Neon Mint Paint', {0, 204, 120}, 5},
	[6114] = {'Neon Lime Paint', {0, 150, 45}, 4},
	[6115] = {'Pure White Paint', {255, 255, 255}, 6},
	[6116] = {'George\'s Surprise Paint', {115, 34, 136}, 7},
	[6565] = {'Infinity Paint', {255, 255, 255}, 9, 'https://tera.gg/ttt/drops/inf.png', Dream = true}
}

local holidays = 'Holiday Collection'
local easter = 'Easter Collection'
local halloween = 'Pumpkin Collection'
local paper = 'Paper Tiqers Collection'
MOAT_PAINT.Skins = {
	[6117] = {'Flesh Skin', 'https://tera.gg/ttt/skins/vtf/flesh.vtf', 7, 'https://tera.gg/ttt/skins/img/flesh.png', 15},
	[6119] = {'Test Skin', 'https://i.imgur.com/dvRkf9t.png'/*'https://cdn.notfound.tech/b4573.vtf'*/, 8, nil, 'Testing Collection', 15},
	[6120] = {'Merry Poops Skin', 'https://tera.gg/ttt/skins/vtf/merry_poops.vtf', 3, 'https://tera.gg/ttt/skins/img/merrypoops.png', holidays, 12},
	[6123] = {'Blizzard Skin', 'https://tera.gg/ttt/skins/vtf/blizzard.vtf', 4, 'https://tera.gg/ttt/skins/img/blizzard.png', holidays, 30},
	[6127] = {'Pokemon Skin', 'https://tera.gg/ttt/skins/vtf/pokemon.vtf', 4, 'https://tera.gg/ttt/skins/img/pokemon.png', holidays, 11},
	[6128] = {'Playful Skin', 'https://tera.gg/ttt/skins/vtf/playful.vtf', 4, 'https://tera.gg/ttt/skins/img/playful.png', holidays, 24},
	[6129] = {'Xmas Skin', 'https://tera.gg/ttt/skins/vtf/xmas.vtf', 5, 'https://tera.gg/ttt/skins/img/xmas.png', holidays, 81},
	[6131] = {'Stickers Skin', 'https://tera.gg/ttt/skins/vtf/stickers.vtf', 5, 'https://tera.gg/ttt/skins/img/stickers.png', holidays, 28},
	[6132] = {'Warrior Skin', 'https://tera.gg/ttt/skins/vtf/warrior.vtf', 5, 'https://tera.gg/ttt/skins/img/warrior.png', holidays, 42},
	[6133] = {'Scales Skin','https://tera.gg/ttt/skins/vtf/scales.vtf', 5, 'https://tera.gg/ttt/skins/img/scales.png', holidays, 50},
	[6151] = {'Polkadot Skin', 'https://tera.gg/ttt/skins/vtf/polkadot.vtf', 5, 'https://tera.gg/ttt/skins/img/polkadot.png', holidays, 60},
	[6140] = {'Flourish Skin', 'https://tera.gg/ttt/skins/vtf/flourish.vtf', 6, 'https://tera.gg/ttt/skins/img/flourish.png', holidays, 115},
	[6136] = {'Riptide Skin', 'https://tera.gg/ttt/skins/vtf/riptide.vtf', 5, 'https://tera.gg/ttt/skins/img/riptide.png', holidays, 32},
	[6135] = {'Lightning Skin', 'https://tera.gg/ttt/skins/vtf/lightning.vtf', 6, 'https://tera.gg/ttt/skins/img/lightning.png', holidays, 22},
	[6137] = {'Magma Skin', 'https://tera.gg/ttt/skins/vtf/magma.vtf', 6, 'https://tera.gg/ttt/skins/img/magma.png', holidays, 135},
	[6138] = {'Polygon Skin', 'https://tera.gg/ttt/skins/vtf/polygon.vtf', 6, 'https://tera.gg/ttt/skins/img/polygon.png', holidays, 135},
	[6139] = {'Comic Skin', 'https://tera.gg/ttt/skins/vtf/comic.vtf', 5, 'https://tera.gg/ttt/skins/img/comic.png', holidays, 33},
	[6141] = {'Zebra Skin', 'https://tera.gg/ttt/skins/vtf/zebra.vtf', 6, 'https://tera.gg/ttt/skins/img/zebra.png', holidays, 42},
	[6130] = {'Hype Skin', 'https://tera.gg/ttt/skins/vtf/hype.vtf', 6, 'https://tera.gg/ttt/skins/img/hype.png', holidays, 5},
	[6142] = {'Sherbert Skin', 'https://tera.gg/ttt/skins/vtf/sherbert.vtf', 7, 'https://tera.gg/ttt/skins/img/sherbert.png', holidays, 130},
	[6143] = {'Trippin Skin', 'https://tera.gg/ttt/skins/vtf/trippin.vtf', 7, 'https://tera.gg/ttt/skins/img/trippin.png', holidays, 40},
	[6134] = {'Holo Skin', 'https://tera.gg/ttt/skins/vtf/holo.vtf', 7, 'https://tera.gg/ttt/skins/img/holo.png', holidays, 50},
	[6144] = {'Gold Skin', 'https://tera.gg/ttt/skins/vtf/gold.vtf', 7, 'https://tera.gg/ttt/skins/img/gold.png', holidays, 40},
	[6149] = {'Skrilla Skin', 'https://tera.gg/ttt/skins/vtf/skrilla.vtf', 7, 'https://tera.gg/ttt/skins/img/skrilla.png', holidays, 58},
	[6145] = {'Hotline Skin', 'https://tera.gg/ttt/skins/vtf/hotline.vtf', 9, 'https://tera.gg/ttt/skins/img/hotline.png', holidays, 35},
	[6146] = {'Galaxy Skin', 'https://tera.gg/ttt/skins/vtf/galaxy.vtf', 9, 'https://tera.gg/ttt/skins/img/galaxy.png', holidays, 255},
	[6154] = {'Elevate Skin', 'https://tera.gg/ttt/skins/vtf/elevate.vtf', 7, 'https://tera.gg/ttt/skins/img/elevate.png', holidays, 90},
	[6200] = {'Blurred Neon Skin', 'https://tera.gg/ttt/skins/vtf/blurred_neon.vtf', 5, 'https://tera.gg/ttt/skins/img/blurred_neon.png', easter, 135},
	[6201] = {'Bubbles Skin','https://tera.gg/ttt/skins/vtf/bubbles.vtf', 5, 'https://tera.gg/ttt/skins/img/bubbles.png', easter, 72},
	[6202] = {'Butterflies Skin', 'https://tera.gg/ttt/skins/vtf/butterflies.vtf', 4, 'https://tera.gg/ttt/skins/img/butterflies.png', easter, 90},
	[6203] = {'Camo Skin', 'https://tera.gg/ttt/skins/vtf/camo.vtf', 3, 'https://tera.gg/ttt/skins/img/camo.png', easter, 70},
	[6204] = {'Caution Skin', 'https://tera.gg/ttt/skins/vtf/caution.vtf', 5, 'https://tera.gg/ttt/skins/img/caution.png', easter, 120},
	[6205] = {'Cheetah Skin', 'https://tera.gg/ttt/skins/vtf/cheetah.vtf', 4, 'https://tera.gg/ttt/skins/img/cheeta.png', easter, 57},
	[6206] = {'Dew Skin', 'https://tera.gg/ttt/skins/vtf/dew.vtf', 4, 'https://tera.gg/ttt/skins/img/dew.png', easter, 28},
	[6207] = {'Electric Current Skin', 'https://tera.gg/ttt/skins/vtf/electric_current.vtf', 5, 'https://tera.gg/ttt/skins/img/electric_current.png', easter, 62},
	[6208] = {'Encrypted Skin','https://tera.gg/ttt/skins/vtf/encrypted.vtf', 6, 'https://tera.gg/ttt/skins/img/encrypted.png', easter, 42},
	[6209] = {'Energy Flower Skin', 'https://tera.gg/ttt/skins/vtf/energy_flower.vtf', 5, 'https://tera.gg/ttt/skins/img/energy_flower.png', easter, 100},
	[6210] = {'Energy Skin', 'https://tera.gg/ttt/skins/vtf/energy.vtf', 4, 'https://tera.gg/ttt/skins/img/energy.png', easter, 200},
	[6211] = {'Fantasy Skin','https://tera.gg/ttt/skins/vtf/fantasy.vtf', 7, 'https://tera.gg/ttt/skins/img/fantasy.png', easter, 90},
	[6212] = {'Glitch Skin','https://tera.gg/ttt/skins/vtf/glitch.vtf', 7, 'https://tera.gg/ttt/skins/img/glitch.png', easter, 100},
	[6213] = {'Hairy Dragon Skin', 'https://tera.gg/ttt/skins/vtf/hairy_dragon.vtf', 6, 'https://tera.gg/ttt/skins/img/hairy_dragon.png', easter, 75},
	[6214] = {'Halo Skin', 'https://tera.gg/ttt/skins/vtf/halo.vtf', 4, 'https://tera.gg/ttt/skins/img/halo.png', easter, 135},
	[6215] = {'Heatwave Skin','https://tera.gg/ttt/skins/vtf/heatwave.vtf', 5, 'https://tera.gg/ttt/skins/img/heatwave.png', easter, 69},
	[6216] = {'Hyperdrive Skin', 'https://tera.gg/ttt/skins/vtf/hyperdrive.vtf', 6, 'https://tera.gg/ttt/skins/img/hyperdrive.png', easter, 100},
	[6217] = {'Hypno Skin', 'https://tera.gg/ttt/skins/vtf/hypno.vtf', 5, 'https://tera.gg/ttt/skins/img/hypno.png', easter, 100},
	[6218] = {'Illusion Skin', 'https://tera.gg/ttt/skins/vtf/illusion.vtf', 5, 'https://tera.gg/ttt/skins/img/illusion.png', easter, 140},
	[6219] = {'Kaleidoscope Skin', 'https://tera.gg/ttt/skins/vtf/kaleidoscope.vtf', 5, 'https://tera.gg/ttt/skins/img/kaleidoscope.png', easter, 120},
	[6220] = {'Kali Skin', 'https://tera.gg/ttt/skins/vtf/kali.vtf', 5, 'https://tera.gg/ttt/skins/img/kali.png', easter, 17},
	[6221] = {'Lava Lamp Skin', 'https://tera.gg/ttt/skins/vtf/lava_lamp.vtf', 4, 'https://tera.gg/ttt/skins/img/lava_lamp.png', easter, 120},
	[6222] = {'Light Show Skin','https://tera.gg/ttt/skins/vtf/light_show.vtf', 6, 'https://tera.gg/ttt/skins/img/light_show.png', easter, 120},
	[6223] = {'Loofa Skin', 'https://tera.gg/ttt/skins/vtf/loofa.vtf', 5, 'https://tera.gg/ttt/skins/img/loofa.png', easter, 75},
	[6224] = {'Lunar Skin','https://tera.gg/ttt/skins/vtf/lunar.vtf', 6, 'https://tera.gg/ttt/skins/img/lunar.png', easter, 40},
	[6225] = {'Magikarp Skin', 'https://tera.gg/ttt/skins/vtf/magikarp.vtf', 7, 'https://tera.gg/ttt/skins/img/magikarp.png', easter, 45},
	[6226] = {'Mirrored Skin', 'https://tera.gg/ttt/skins/vtf/mirrored.vtf', 3, 'https://tera.gg/ttt/skins/img/mirrored.png', easter, 140},
	[6227] = {'Missing Green Skin', 'https://tera.gg/ttt/skins/vtf/missing_green.vtf', 5, 'https://tera.gg/ttt/skins/img/missing_green.png', easter, 110},
	[6228] = {'Mosaic Skin','https://tera.gg/ttt/skins/vtf/mosaic.vtf', 5, 'https://tera.gg/ttt/skins/img/mosaic.png', easter, 75},
	[6229] = {'Motherboard Skin','https://tera.gg/ttt/skins/vtf/motherboard.vtf', 5, 'https://tera.gg/ttt/skins/img/motherboard.png', easter, 168},
	[6230] = {'Neon Rider Skin','https://tera.gg/ttt/skins/vtf/neon_rider.vtf', 6, 'https://tera.gg/ttt/skins/img/neon_rider.png', easter, 85},
	[6231] = {'Pattern Skin', 'https://tera.gg/ttt/skins/vtf/pattern.vtf', 6, 'https://tera.gg/ttt/skins/img/pattern.png', easter, 15},
	[6232] = {'Penguins Skin','https://tera.gg/ttt/skins/vtf/penguins.vtf', 5, 'https://tera.gg/ttt/skins/img/penguins.png', easter, 70},
	[6233] = {'Refraction Skin', 'https://tera.gg/ttt/skins/vtf/refraction.vtf', 6, 'https://tera.gg/ttt/skins/img/refraction.png', easter, 150},
	[6234] = {'Splat Skin', 'https://tera.gg/ttt/skins/vtf/splat.vtf', 4, 'https://tera.gg/ttt/skins/img/splat.png', easter, 90},
	[6235] = {'Starry Skin', 'https://tera.gg/ttt/skins/vtf/starry.vtf', 6, 'https://tera.gg/ttt/skins/img/starry.jpg', easter, 75},
	[6236] = {'Stem Skin', 'https://tera.gg/ttt/skins/vtf/stem.vtf', 6, 'https://tera.gg/ttt/skins/img/stem.png', easter, 12},
	[6237] = {'Sunflower Skin', 'https://tera.gg/ttt/skins/vtf/sunflower.vtf', 4, 'https://tera.gg/ttt/skins/img/sunflower.png', easter, 65},
	[6238] = {'Pink Sky Skin', 'https://tera.gg/ttt/skins/vtf/sunset.vtf', 6, 'https://tera.gg/ttt/skins/img/sunset.png', easter, 140},
	[6239] = {'Swirls Skin', 'https://tera.gg/ttt/skins/vtf/swirls.vtf', 6, 'https://tera.gg/ttt/skins/img/swirls.png', easter, 85},
	[6240] = {'Techno Skin', 'https://tera.gg/ttt/skins/vtf/techno.vtf', 6, 'https://tera.gg/ttt/skins/img/techno.png', easter, 120},
	[6241] = {'Tiles Skin', 'https://tera.gg/ttt/skins/vtf/tiles.vtf', 4, 'https://tera.gg/ttt/skins/img/tiles.png', easter, 60},
	[6242] = {'Triangles Skin', 'https://tera.gg/ttt/skins/vtf/triangles.vtf', 5, 'https://tera.gg/ttt/skins/img/triangles.png', easter, 110},
	[6243] = {'Void Skin', 'https://tera.gg/ttt/skins/vtf/void.vtf', 6, 'https://tera.gg/ttt/skins/img/void.png', easter, 125},
	[6244] = {'Watery Night Skin', 'https://tera.gg/ttt/skins/vtf/watery_night.vtf', 5, 'https://tera.gg/ttt/skins/img/watery_night.png', easter, 125},
	[6245] = {'Yellow Bricks Skin', 'https://tera.gg/ttt/skins/vtf/yellow_bricks.vtf', 3, 'https://tera.gg/ttt/skins/img/yellow_bricks.png', easter, 80},
	[6246] = {'Yellow Flower Skin', 'https://tera.gg/ttt/skins/vtf/yellow_flower.vtf', 3, 'https://tera.gg/ttt/skins/img/yellow_flower.png', easter, 55},

	[6247] = {'Acid Crater Skin', 'https://tera.gg/ttt/skins/vtf/acid_crater.vtf', 8, 'https://tera.gg/ttt/skins/img/acid_crater.png', halloween, 47},
	[6248] = {'Alduinity Skin', 'https://tera.gg/ttt/skins/vtf/alduinity.vtf', 8, 'https://tera.gg/ttt/skins/img/alduinity.png', halloween, 90},
	[6249] = {'Archaic Arcade Skin', 'https://tera.gg/ttt/skins/vtf/archaic_arcade.vtf', 8, 'https://tera.gg/ttt/skins/img/archaic_arcade.png', halloween, 34},
	[6250] = {'Burple Skin', 'https://tera.gg/ttt/skins/vtf/burple.vtf', 8, 'https://tera.gg/ttt/skins/img/burple.png', halloween, 105},
	[6251] = {'Californication Skin', 'https://tera.gg/ttt/skins/vtf/californication.vtf', 8, 'https://tera.gg/ttt/skins/img/californication.png', halloween, 55},
	[6252] = {'Candypot Skin', 'https://tera.gg/ttt/skins/vtf/candypot.vtf', 8, 'https://tera.gg/ttt/skins/img/candypot.png', halloween, 40},
	[6253] = {'Choropleth Skin', 'https://tera.gg/ttt/skins/vtf/choropleth.vtf', 8, 'https://tera.gg/ttt/skins/img/choropleth.png', halloween, 115},
	[6254] = {'Cuddly Skin', 'https://tera.gg/ttt/skins/vtf/cuddly.vtf', 8, 'https://tera.gg/ttt/skins/img/cuddly.png', halloween, 115},
	[6255] = {'Cyter Skin', 'https://tera.gg/ttt/skins/vtf/cyter.vtf', 8, 'https://tera.gg/ttt/skins/img/cyter.png', halloween, 55},
	[6256] = {'Daydream Skin', 'https://tera.gg/ttt/skins/vtf/daydream.vtf', 8, 'https://tera.gg/ttt/skins/img/daydream.png', halloween, 115},
	[6257] = {'Deep Journey Skin', 'https://tera.gg/ttt/skins/vtf/deep_journey.vtf', 8, 'https://tera.gg/ttt/skins/img/deep_journey.png', halloween, 60},
	[6258] = {'Deluded Skin', 'https://tera.gg/ttt/skins/vtf/deluded.vtf', 8, 'https://tera.gg/ttt/skins/img/deluded.png', halloween, 22},
	[6259] = {'Driptina Skin', 'https://tera.gg/ttt/skins/vtf/driptina.vtf', 8, 'https://tera.gg/ttt/skins/img/driptina.png', halloween, 60},
	[6260] = {'Eighteye Skin', 'https://tera.gg/ttt/skins/vtf/eighteye.vtf', 8, 'https://tera.gg/ttt/skins/img/eighteye.png', halloween, 15},
	[6261] = {'Factorion Skin', 'https://tera.gg/ttt/skins/vtf/factorion.vtf', 8, 'https://tera.gg/ttt/skins/img/factorian.png', halloween, 20},
	[6262] = {'Felice Skin', 'https://tera.gg/ttt/skins/vtf/felice.vtf', 8, 'https://tera.gg/ttt/skins/img/felice.png', halloween, 85},
	[6263] = {'Gatsby Skin', 'https://tera.gg/ttt/skins/vtf/gatsby.vtf', 8, 'https://tera.gg/ttt/skins/img/gatsby.png', halloween, 104},
	[6264] = {'Granbow Skin', 'https://tera.gg/ttt/skins/vtf/granbow.vtf', 8, 'https://tera.gg/ttt/skins/img/granbow.png', halloween, 50},
	[6265] = {'Heavens Skin', 'https://tera.gg/ttt/skins/vtf/heavens.vtf', 8, 'https://tera.gg/ttt/skins/img/heavens.png', halloween, 35},
	[6266] = {'Hellbolt Skin', 'https://tera.gg/ttt/skins/vtf/hellbolt.vtf', 8, 'https://tera.gg/ttt/skins/img/hellbolt.png', halloween, 100},
	[6267] = {'Krakatoa Skin', 'https://tera.gg/ttt/skins/vtf/krakatoa.vtf', 8, 'https://tera.gg/ttt/skins/img/krakatoa.png', halloween, 55},
	[6268] = {'Lost in Divine Skin', 'https://tera.gg/ttt/skins/vtf/lost_in_divine.vtf', 8, 'https://tera.gg/ttt/skins/img/lost_in_divine.png', halloween, 45},
	[6269] = {'Matrix Skin', 'https://tera.gg/ttt/skins/vtf/matrix.vtf', 8, 'https://tera.gg/ttt/skins/img/matrix.png', halloween, 85},
	[6270] = {'Neuralite Skin', 'https://tera.gg/ttt/skins/vtf/neuralite.vtf', 8, 'https://tera.gg/ttt/skins/img/neauralite.png', halloween, 30},
	[6271] = {'Nightmare Skin', 'https://tera.gg/ttt/skins/vtf/nightmare.vtf', 8, 'https://tera.gg/ttt/skins/img/nightmare.png', halloween, 72},
	[6272] = {'Ōkami Skin', 'https://tera.gg/ttt/skins/vtf/okami.vtf', 8, 'https://tera.gg/ttt/skins/img/okami.png', halloween, 30},
	[6273] = {'Parallel Cosmos Skin', 'https://tera.gg/ttt/skins/vtf/parallel_cosmos.vtf', 8, 'https://tera.gg/ttt/skins/img/parallel_cosmos.png', halloween, 51},
	[6274] = {'Party City Skin', 'https://tera.gg/ttt/skins/vtf/party_city.vtf', 8, 'https://tera.gg/ttt/skins/img/partycity.png', halloween, 10},
	[6275] = {'Phoenix Feather Skin', 'https://tera.gg/ttt/skins/vtf/phoenix_feather.vtf', 8, 'https://tera.gg/ttt/skins/img/phoenix_feather.png', halloween, 32},
	[6276] = {'Pringle Skin', 'https://tera.gg/ttt/skins/vtf/pringle.vtf', 8, 'https://tera.gg/ttt/skins/img/pringle.png', halloween, 65},
	[6277] = {'Pumpzag Skin', 'https://tera.gg/ttt/skins/vtf/pumpzag.vtf', 8, 'https://tera.gg/ttt/skins/img/pumpzag.png', halloween, 28},
	[6278] = {'Pupa Skin', 'https://tera.gg/ttt/skins/vtf/pupa.vtf', 8, 'https://tera.gg/ttt/skins/img/pupa.png', halloween, 18},
	[6279] = {'Purpendicular Skin', 'https://tera.gg/ttt/skins/vtf/purpendicular.vtf', 8, 'https://tera.gg/ttt/skins/img/purpendicular.png', halloween, 50},
	[6280] = {'Quantum Realm Skin', 'https://tera.gg/ttt/skins/vtf/quantum_realm.vtf', 8, 'https://tera.gg/ttt/skins/img/quantum_realm.png', halloween, 145},
	[6281] = {'Rajah Skin', 'https://tera.gg/ttt/skins/vtf/rajah.vtf', 8, 'https://tera.gg/ttt/skins/img/rajah.png', halloween, 45},
	[6282] = {'Reppit Skin', 'https://tera.gg/ttt/skins/vtf/reppit.vtf', 8, 'https://tera.gg/ttt/skins/img/reppit.png', halloween, 120},
	[6283] = {'Rygan Skin', 'https://tera.gg/ttt/skins/vtf/rygan.vtf', 8, 'https://tera.gg/ttt/skins/img/rygan.png', halloween, 39},
	[6284] = {'Splatter Space Skin', 'https://tera.gg/ttt/skins/vtf/splatter_space.vtf', 8, 'https://tera.gg/ttt/skins/img/splatter_space.png', halloween, 55},
	[6285] = {'Stained Glass Skin', 'https://tera.gg/ttt/skins/vtf/stained_glass.vtf', 8, 'https://tera.gg/ttt/skins/img/stained_glass.png', halloween, 22},
	[6286] = {'Tiki Oasis Skin', 'https://tera.gg/ttt/skins/vtf/tiki_oasis.vtf', 8, 'https://tera.gg/ttt/skins/img/tiki_oasis.png', halloween, 22},
	[6287] = {'Trilogy Skin', 'https://tera.gg/ttt/skins/vtf/trilogy.vtf', 8, 'https://tera.gg/ttt/skins/img/trilogy.png', halloween, 60},
	[6288] = {'Ultrabeam Skin', 'https://tera.gg/ttt/skins/vtf/ultrabeam.vtf', 8, 'https://tera.gg/ttt/skins/img/ultrabeam.png', halloween, 73},
	[6289] = {'Untouched Skin', 'https://tera.gg/ttt/skins/vtf/untouched.vtf', 8, 'https://tera.gg/ttt/skins/img/untouched.png', halloween, 57},
	[6290] = {'Vibestrus Skin', 'https://tera.gg/ttt/skins/vtf/vibestrus.vtf', 8, 'https://tera.gg/ttt/skins/img/vibestrus.png', halloween, 20},
	[6291] = {'Wavelength Skin', 'https://tera.gg/ttt/skins/vtf/wavelength.vtf', 8, 'https://tera.gg/ttt/skins/img/wavelength.png', halloween, 42},
	[6292] = {'Witchpink Skin', 'https://tera.gg/ttt/skins/vtf/witchpink.vtf', 8, 'https://tera.gg/ttt/skins/img/witchpink.png', halloween, 32},
	[6293] = {'Zygzag Skin', 'https://tera.gg/ttt/skins/vtf/zygzag.vtf', 8, 'https://tera.gg/ttt/skins/img/zygzag.png', halloween, 6},

	[6294] = {'Alabaster Skin', 'https://tera.gg/ttt/skins/vtf/alabaster.vtf', 1, 'https://tera.gg/ttt/skins/img/alabaster.png',paper, 85},
	[6324] = {'Amaterasu Skin', 'https://tera.gg/ttt/skins/vtf/amaterasu.vtf', 5, 'https://tera.gg/ttt/skins/img/amaterasu.png',paper, 105},
	[6325] = {'Contrast Skin', 'https://tera.gg/ttt/skins/vtf/contrast.vtf', 4, 'https://tera.gg/ttt/skins/img/contrast.png',paper, 120},
	[6326] = {'Crepuscule Skin', 'https://tera.gg/ttt/skins/vtf/crepuscule.vtf', 2, 'https://tera.gg/ttt/skins/img/crepuscule.png',paper, 145},
	[6327] = {'Daybreak Skin', 'https://tera.gg/ttt/skins/vtf/daybreak.vtf', 6, 'https://tera.gg/ttt/skins/img/daybreak.png',paper, 90},
	[6328] = {'Descent Skin', 'https://tera.gg/ttt/skins/vtf/descent.vtf', 6, 'https://tera.gg/ttt/skins/img/descent.png',paper, 155},
	[6329] = {'Drift Skin', 'https://tera.gg/ttt/skins/vtf/drift.vtf', 7, 'https://tera.gg/ttt/skins/img/drift.png',paper, 120},
	[6330] = {'Ethereal Skin', 'https://tera.gg/ttt/skins/vtf/ethereal.vtf', 6, 'https://tera.gg/ttt/skins/img/ethereal.png',paper, 75},
	[6331] = {'Frigid Skin', 'https://tera.gg/ttt/skins/vtf/frigid.vtf', 3, 'https://tera.gg/ttt/skins/img/frigid.png',paper, 24},
	[6332] = {'Gaia Skin', 'https://tera.gg/ttt/skins/vtf/gaia.vtf', 7, 'https://tera.gg/ttt/skins/img/gaia.png',paper, 110},
	[6295] = {'Gleam Skin', 'https://tera.gg/ttt/skins/vtf/gleam.vtf', 5, 'https://tera.gg/ttt/skins/img/gleam.png',paper, 86},
	[6296] = {'Good Fortune Skin', 'https://tera.gg/ttt/skins/vtf/good_fortune.vtf', 3, 'https://tera.gg/ttt/skins/img/good_fortune.png',paper, 50},
	[6297] = {'Heavenly Body Skin', 'https://tera.gg/ttt/skins/vtf/heavenly_body.vtf', 6, 'https://tera.gg/ttt/skins/img/heavenly_body.png',paper, 80},
	[6298] = {'Hellbent Skin', 'https://tera.gg/ttt/skins/vtf/hellbent.vtf', 4, 'https://tera.gg/ttt/skins/img/hellbent.png',paper, 100},
	[6299] = {'Hyper Skin', 'https://tera.gg/ttt/skins/vtf/hyper.vtf', 3, 'https://tera.gg/ttt/skins/img/hyper.png',paper, 59},
	[6300] = {'Ignite Skin', 'https://tera.gg/ttt/skins/vtf/ignite.vtf', 2, 'https://tera.gg/ttt/skins/img/ignite.png',paper, 115},
	[6301] = {'Interconnected Skin', 'https://tera.gg/ttt/skins/vtf/interconnected.vtf', 1, 'https://tera.gg/ttt/skins/img/interconnected.png',paper, 110},
	[6302] = {'Manic Skin', 'https://tera.gg/ttt/skins/vtf/manic.vtf', 7, 'https://tera.gg/ttt/skins/img/manic.png',paper, 125},
	[6303] = {'Megatherm Skin', 'https://tera.gg/ttt/skins/vtf/megatherm.vtf', 5, 'https://tera.gg/ttt/skins/img/megatherm.png',paper, 27},
	[6304] = {'Midnight Sun Skin', 'https://tera.gg/ttt/skins/vtf/midnight_sun.vtf', 1, 'https://tera.gg/ttt/skins/img/midnight_sun.png',paper, 115},
	[6305] = {'Milky Way Skin', 'https://tera.gg/ttt/skins/vtf/milky_way.vtf', 2, 'https://tera.gg/ttt/skins/img/milky_way.png',paper, 20},
	[6306] = {'Nemesis Skin', 'https://tera.gg/ttt/skins/vtf/nemesis.vtf', 4, 'https://tera.gg/ttt/skins/img/nemesis.png',paper, 145},
	[6307] = {'Nimbus Skin', 'https://tera.gg/ttt/skins/vtf/nimbus.vtf', 1, 'https://tera.gg/ttt/skins/img/nimbus.png',paper, 56},
	[6308] = {'Nippon Skin', 'https://tera.gg/ttt/skins/vtf/nippon.vtf', 2, 'https://tera.gg/ttt/skins/img/nippon.png',paper, 17},
	[6309] = {'Overwrought Skin', 'https://tera.gg/ttt/skins/vtf/overwrought.vtf', 3, 'https://tera.gg/ttt/skins/img/overwrought.png',paper, 30},
	[6310] = {'Pollution Skin', 'https://tera.gg/ttt/skins/vtf/pollution.vtf', 2, 'https://tera.gg/ttt/skins/img/pollution.png',paper, 35},
	[6311] = {'Sardonyx Skin', 'https://tera.gg/ttt/skins/vtf/sardonyx.vtf', 5, 'https://tera.gg/ttt/skins/img/sardonyx.png',paper, 78},
	[6312] = {'Scintilla Skin', 'https://tera.gg/ttt/skins/vtf/scintilla.vtf', 2, 'https://tera.gg/ttt/skins/img/scintilla.png',paper, 80},
	[6313] = {'Spectrum Skin', 'https://tera.gg/ttt/skins/vtf/spectrum.vtf', 9, 'https://tera.gg/ttt/skins/img/spectrum.png',paper, 120},
	[6314] = {'Stigma Skin', 'https://tera.gg/ttt/skins/vtf/stigma.vtf', 4, 'https://tera.gg/ttt/skins/img/stigma.png',paper, 135},
	[6315] = {'The Starry Night Skin', 'https://tera.gg/ttt/skins/vtf/the_starry_night.vtf', 6, 'https://tera.gg/ttt/skins/img/the_starry_night.png',paper, 24},
	[6316] = {'Tsunami Skin', 'https://tera.gg/ttt/skins/vtf/tsunami.vtf', 2, 'https://tera.gg/ttt/skins/img/tsunami.png',paper, 30},
	[6317] = {'Verge Skin', 'https://tera.gg/ttt/skins/vtf/verge.vtf', 3, 'https://tera.gg/ttt/skins/img/verge.png',paper, 26},
	[6318] = {'Viscous Skin', 'https://tera.gg/ttt/skins/vtf/viscous.vtf', 4, 'https://tera.gg/ttt/skins/img/viscous.png',paper, 30},
	[6319] = {'Whimsical Skin', 'https://tera.gg/ttt/skins/vtf/whimsical.vtf', 5, 'https://tera.gg/ttt/skins/img/whimsical.png',paper, 64},
	[6320] = {'Yore Skin', 'https://tera.gg/ttt/skins/vtf/yore.vtf', 1, 'https://tera.gg/ttt/skins/img/yore.png',paper, 28},
	[6321] = {'Zed Skin', 'https://tera.gg/ttt/skins/vtf/zed.vtf', 9, 'https://tera.gg/ttt/skins/img/zed.png',paper, 65},
	[6322] = {'Zircon Skin', 'https://tera.gg/ttt/skins/vtf/zircon.vtf', 4, 'https://tera.gg/ttt/skins/img/zircon.png',paper, 40},
	[6323] = {'Zodiac Skin', 'https://tera.gg/ttt/skins/vtf/zodiac.vtf', 2, 'https://tera.gg/ttt/skins/img/zodiac.png',paper, 65},
	[10150] = {'Ahegao Skin', 'https://tera.gg/ttt/skins/vtf/ahego.vtf', 7, 'https://tera.gg/ttt/skins/img/ahego.png', 'Lust Collection', 65},
	[11000] = {'Cosmos Skin', 'https://tera.gg/ttt/skins/vtf/cosmos_space.vtf', 6, 'https://tera.gg/ttt/skins/img/cosmos_space.jpg', 'Space Collection', 65},
	[11001] = {'Dreamy Skin', 'https://tera.gg/ttt/skins/vtf/dreamy_space.vtf', 6, 'https://tera.gg/ttt/skins/img/dreamy_sapce.jpg', 'Space Collection', 65},
	[11002] = {'Split Skin', 'https://tera.gg/ttt/skins/vtf/split_space.vtf', 7, 'https://tera.gg/ttt/skins/img/split_space.jpg', 'Space Collection', 65},
	[11003] = {'Sunset Skin', 'https://tera.gg/ttt/skins/vtf/sunset_space.vtf', 6, 'https://tera.gg/ttt/skins/img/sunset_sapce.jpg', 'Space Collection', 65},
	[11004] = {'Flower Skin', 'https://tera.gg/ttt/skins/vtf/flower_flower.vtf', 4, 'https://tera.gg/ttt/skins/img/flower_flower.jpg', 'Flower Collection', 65},
	[11005] = {'Cherry Stick Skin', 'https://tera.gg/ttt/skins/vtf/cherrystick_flower.vtf', 4, 'https://tera.gg/ttt/skins/img/cherrystick_flower.png', 'Flower Collection', 65},
	[11006] = {'Blooming Skin', 'https://tera.gg/ttt/skins/vtf/blooming_flower.vtf', 5, 'https://tera.gg/ttt/skins/img/blooming_flower.jpg', 'Flower Collection', 65},
	[11007] = {'Cherry Blossom Skin', 'https://tera.gg/ttt/skins/vtf/cherryblossom_flower.vtf', 6, 'https://tera.gg/ttt/skins/img/cherryblossom_flower.jpg', 'Flower Collection', 65},
	[11008] = {'Water Cup Skin', 'https://noahg.codes/s/noah/788476-LightblueDuck.vtf', 6, 'https://noahg.codes/s/noah/352510-AgedCoyote.png', 'Retro Collection', 65},
	[11009] = {'Hot Rod Skin', 'https://noahg.codes/s/noah/493917-GrandioseIbis.vtf', 5, 'https://noahg.codes/s/noah/750869-DisastrousAmericancrow.png', 'Retro Collection', 65},
	[11010] = {'Stripes Skin', 'https://noahg.codes/s/noah/410867-MediumforestgreenNewt.vtf', 4, 'https://noahg.codes/s/noah/923124-LividAsianelephant.jpg', 'Retro Collection', 65},
	[11011] = {'Retro Sunrise Skin', 'https://noahg.codes/s/noah/706582-EverlastingGrebe.vtf', 6, 'https://noahg.codes/s/noah/003801-CruelPeacock.jpg', 'Retro Collection', 65},
	[11012] = {'Brushed Skin', 'https://noahg.codes/s/noah/354154-WryMerlin.vtf', 5, 'https://noahg.codes/s/noah/985018-HungryAffenpinscher.jpg', 'Retro Collection', 65},

	-- https://cdn.notfound.tech/8e376.png
	--[6120] = {'Puppy Skin', 'https://cdn.notfound.tech/dbd23.png', 8}, --'https://cdn.notfound.tech/91548.png', 8},
	--[6121] = {'Dev Team Stalker Skin', 'https://cdn.notfound.tech/b8271.png', 8}
}

function GetPaintColor(id)
	return MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id]
end

function ItemIsPaint(id)
	return id and MOAT_PAINT.Paints[id]
end

function ItemIsTint(id)
	return id and MOAT_PAINT.Tints[id]
end

function ItemIsSkin(id)
	return id and MOAT_PAINT.Skins[id]
end

function ItemPaints(id)
	return id and (MOAT_PAINT.Paints[id] or MOAT_PAINT.Tints[id] or MOAT_PAINT.Skins[id])
end

MOAT_PAINT.SkinCache = {}
function LoadSkin(id, cb)
	if (MOAT_PAINT.SkinCache[id]) then
		return cb(MOAT_PAINT.SkinCache[id])
	end
end

concommand.Add("moat_paint", function()
	local last_id = 6001
	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Tint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Colors do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Colors[i][1] .. " Paint', {" .. MOAT_PAINT.Colors[i][2][1] .. ", " .. MOAT_PAINT.Colors[i][2][2] .. ", " .. MOAT_PAINT.Colors[i][2][3] .. "}, " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end

	for i = 1, #MOAT_PAINT.Skins do
		print("    ", "[" .. last_id .. "] = {'" .. MOAT_PAINT.Skins[i][1] .. " Texture', '" .. MOAT_PAINT.Skins[i][2] .. "', " .. MOAT_PAINT.Colors[i][3] .. "}")
		last_id = last_id + 1
    end
end)