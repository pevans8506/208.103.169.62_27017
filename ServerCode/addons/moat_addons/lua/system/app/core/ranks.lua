------------------------------------
--
-- 	Tera Ranks
--	
------------------------------------

moat.Ranks.Register(1, "user", "User")
	:SetColor {185, 187, 190, 0} -- #b9bbbe
	:SetWeight(1)
	:ForumSync(3)

moat.Ranks.Register(2, "vip", "VIP")
	:SetColor {61, 44, 255} -- #3d2cff
	:SetIcon "icon16/star.png"
	:SetFlags "+"
	:SetWeight(10)
	:ForumSync(17)

moat.Ranks.Register(3, "mvp", "MVP")
	:SetWeight(20)
	:ForumSync(16)
	:SetColor {0, 255, 19} -- #00ff13
	:SetIcon "icon16/bomb.png"
	:SetFlags "+$"

moat.Ranks.Register(4, "credible", "Credible Club")
	:SetWeight(30)
	:ForumSync(15)
	:SetColor {255, 167, 19} -- #ffa713
	:SetIcon "icon16/tick.png"
	:SetFlags "+$"

moat.Ranks.Register(5, "trialstaff", "Trial Staff")
	:SetWeight(40)
	:ForumSync(14)
	:SetColor {231, 99, 99} -- #e76363
	:SetIcon "icon16/shield.png"
	:SetFlags "+T"

moat.Ranks.Register(6, "moderator", "Moderator")
	:SetWeight(50)
	:ForumSync(13)
	:SetColor {53, 184, 114} -- #35b872
	:SetIcon "icon16/sheild_add.png"
	:SetFlags "+TM"

moat.Ranks.Register(7, "admin", "Administrator")
	:SetWeight(60)
	:ForumSync(12)
	:SetColor {75, 177, 240} -- #4bb1f0
	:SetIcon "icon16/lightning.png"
	:SetFlags "+TMA"

moat.Ranks.Register(8, "senioradmin", "Senior Administrator")
	:SetWeight(70)
	:ForumSync(11)
	:SetColor {106, 53, 255} -- #6a35ff
	:SetIcon "icon16/lightning_add.png"
	:SetFlags "+TMAS"

moat.Ranks.Register(9, "headadmin", "Head Administrator")
	:SetWeight(80)
	:ForumSync(10)
	:SetColor {224, 44, 139} -- #e02c8b
	:SetIcon "icon16/world.png"
	:SetFlags "+TMASH"

moat.Ranks.Register(10, "servermanager", "Server Manager")
	:SetWeight(100)
	:ForumSync(9)
	:SetColor {181, 74, 255} -- #b54aff
	:SetIcon "icon16/palette.png"
	:SetFlags "*"

moat.Ranks.Register(11, "communitymanager", "Community Manager")
	:SetWeight(100)
	:ForumSync(8)
	:SetColor {111, 0, 182} -- #6f00b6
	:SetIcon "icon16/rainbow.png"
	:SetFlags "*"

moat.Ranks.Register(12, "director", "Community Director")
	:SetWeight(100)
	:ForumSync(7)
	:SetColor {255, 0, 0} -- #ff0000
	:SetIcon "icon16/application_xp_terminal.png"
	:SetFlags "*"
