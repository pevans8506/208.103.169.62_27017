-- todo replace relay
moat.cfg.webhook = "http://135.148.52.196:5069/"

moat.cfg.discord = {
    primarywebhook = "https://discordapp.com/api/webhooks/885455475821383710/NUj5MwTHyvL4S7TJe4Dv4sAzASO5RjiF14SLyJLeHOGZVBpcRq5zoXz3LNe4HsjaA-my" -- https://discord.com/api/webhooks/817342887054147611/Uy2ntBkKGSajO4VSErWJFhF4G7ptqDCVPDUBqH1yDYDceRAse_SZoJZrKySY-T2ZCM3Q
}

discord.AddChannels {
	["general"] = "https://discordapp.com/api/webhooks/885455475821383710/NUj5MwTHyvL4S7TJe4Dv4sAzASO5RjiF14SLyJLeHOGZVBpcRq5zoXz3LNe4HsjaA-my",
	["sex"] = "https://discordapp.com/api/webhooks/885455715622350869/M5fIZrmvr4XPmQixBMXrpZ6lNIbR5uHXCbw5l_5izRw4Fx32l370iK23lDOemFHA7rkM",
	["sex"] = "https://discordapp.com/api/webhooks/885455822325448735/CNGB7QBUjSGAHtB996REQQThOVoU8QLrj73MJ_JfLjsrhz9KcUT2f9P51NA16uKagfCM",
	["sex"] = "https://discordapp.com/api/webhooks/885455904575733821/G9h8-gyfta2r5wZKjl0OGVnynt-kP59ii6lImJGuxnrrAQhRcvYUITTJIPamLtpunqZx",
	["sex"] = "https://discordapp.com/api/webhooks/885455989829165076/NMOsTGn5jqLDxLEGCFep03ckq4AlADNnhe9aNmBpLZAo6axNW-HrCbyKW1HBjxHV6AQg",
	["sex"] = "https://discordapp.com/api/webhooks/885456059672723458/puZCJAXMXV6-ltKdWeS1TU-9aLUTngcSlO3n4mquRZzcsNb-C1oHzX_AsYRa4HPm4CS3",
    ["sex"] = "https://discordapp.com/api/webhooks/885456137934237707/Dae1c77McqkVn9yNXe4CQB6XvU0gNn5wuWqLBgWYlir8aB4oDlkpFKLRdTiEP1nTMFON",
    ["sex"] = "https://discordapp.com/api/webhooks/885456214765494272/o41eyZTdlvO09Nipyvfsi-DtgEQAzRwYqOMYmGlearkCgguLY-AQ7tVLjM4HA7edaHig",
    ["sex"] = "https://discordapp.com/api/webhooks/885456353257222174/PJjG1SdEEKMEW6bJqUmdM5JaVoNGifotOqbbzX2NpIJDuTA9kvMNTY4ogN5nv2rsDGG5",
    ["sex"] = "https://discordapp.tera.gg/api/webhooks/817455528627142676/cHGwbaqcs4wjFmN0vqshvFKgTUrX2YlZ-hxq0eS6kOCo2Hw1EvGf7Z-t0wYahMCmDz7K",
    ["sex"] = "https://discordapp.com/api/webhooks/885456353257222174/PJjG1SdEEKMEW6bJqUmdM5JaVoNGifotOqbbzX2NpIJDuTA9kvMNTY4ogN5nv2rsDGG5",
    ["sex"] = "https://discordapp.com/api/webhooks/885456498040397874/ZXG-LGMxQG1da6B8T4r7sE8CTxfqctGSbOFADsA-krpROjt4FF2dhK-gkbkni5mokU3d",
	["sex"] = "https://discordapp.tera.gg/api/webhooks/817454179941220352/brRzC6AZSsOKS4OkyRTPKGtBFzeWMwchF3rmSkQ4IlRhEWI6K28cufdyeNRR11L82BNf",
	["sex"] = "https://discordapp.com/api/webhooks/885456604261122048/sSph5-OQrbvFH0VHcQPHLRysijq1kUAp-4zZxGTPtNBHXnTqpNbdbGiq9mso8emUl7LG",
    ["sex"] = "https://discordapp.com/api/webhooks/885456731914764289/T7uyjIRPPnDYqu25cD2QVP7C-5HHc4yCW9oVIOrIiP8f4LyOTZbe_IDHdwTUQ1FMXrX_",
    ["sex"] = "https://discordapp.com/api/webhooks/885456835673460756/fieetro7hydIKZw0Auy7qPK7cis_V8wxPJbHP7V1DygDRdbfpKJrl94rlw5TbiCrTPkq",
    ["sex"] = "https://discordapp.com/api/webhooks/885456897531072542/6rNoRNmyAokfI9Hn-2hf6F9CRFAXl5ueJlyBl1OrM6hKtTxQPxradtZU51eOj_jd-C3I",
}

discord.AddUsers("sex", {"TERA TTT Announcements", "Lottery Announcements"}, true)
discord.AddUsers("sex", {"TERA TTT Announcement", "Lottery Announcement"}, true)
discord.AddUsers("sex", {"AntiCheat - Lua"}, true)
discord.AddUsers("sex", {"Event", "Drop"})
discord.AddUsers("sex", {"Events", "Drops"})
discord.AddUsers("sex", {"Contracts", "Bounties", "Lottery"})
discord.AddUsers("sex", {"Lottery Win", "Gamble Win"}, true)
discord.AddUsers("sex", {"Anti Cheat", "Past Offences", "Gamble Chat", "Gamble", "Server", "TTS"})
discord.AddUsers("sex", {"Snap", "Skid", "Gamble Log", "Trade", "Bad Map", "ASN Check"})
discord.AddUsers("sex", {"MGA Log"}, true)
discord.AddUsers("sex", {"Developer"})
discord.AddUsers("sex", {"Toxic TTT Loggers"})
discord.AddUsers("sex", {"Client Error Reports"}, true)
discord.AddUsers("sex", {"Server Error Reports"}, true)
discord.AddUsers("sex", {"Servers"})

function post_discord_server_list()
    Server.IsDev = false
    for k,v in pairs(Servers.Roster) do
        timer.Simple(0.5 * k,function()
            discord.Embed("Servers",{
                author = {
                    name = "★▶TERA ".. v.Name .. " ★ Official Inventory ★ Crates ★ Gambling ★ Lottery",
                    icon_url = "https://tera.gg/ttt/tera-i.png"
                },
                description = "Join: " .. v.ConnectURL,
            })
        end)
    end
end