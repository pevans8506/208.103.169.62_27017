local moat_CurAdvert = 1

local moat_Adverts = {
	{ Color( 255, 255, 0 ), "VIP's receive 50% more IC when deconstructing, 17000 IC, and a fancy scoreboard tag!" },
	{ Color( 255, 255, 0 ), "MVP's receive 75% more IC when deconstructing, 32000 IC, and a fancy scoreboard tag!" },
        { Color( 255, 255, 0 ), "Want to help out the server? You can donate at https://tera.gg/store/ and recieve rewards for donating!" },
	{ Color( 255, 255, 0 ), "Almost everything is customizable inside the inventory settings, make sure to check them out!" },
	{ Color( 255, 255, 0 ), "If you would like to support the server through your Steam name, please add tera.gg to it to receive 25% more IC when deconstructing!" },
	{ Color( 255, 255, 0 ), "Don't like the custom HUD? You can press F6 while alive to use the menu bar and the top left of elements to move them around!" },
	--{ Color( 255, 255, 0 ), "Want some free credits? Type !rewards in the chat to open the rewards menu!" },
	--{ Color( 255, 255, 0 ), "Someone causing problems with no staff online? Make a player complaint on our forums." },
	{ Color( 255, 255, 0 ), "Have a suggestion for the server? Join our Discord! https://discord.tera.gg" },
	{ Color( 255, 255, 0 ), "Join our Discord (https://discord.tera.gg) for access to exclusive announcements and updates." },
}


timer.Create("moat_ChatAdverts", 360, 0, function()
	if (moat_CurAdvert > #moat_Adverts) then moat_CurAdvert = 1 end
	local chosen_advert = moat_Adverts[moat_CurAdvert]
	moat_CurAdvert = moat_CurAdvert + 1
	for k, v in pairs( player.GetAll() ) do
		v:SendLua( [[chat.AddText( Material( "icon16/information.png" ), Color( 255, 255, 0 ), "]] .. chosen_advert[2] .. [[" )]] )
	end
end)
