-- for sql config
local mysql = {
	host = SERVER and "208.103.169.52", -- "cp-dal-web01.gmchosting.com",
	database = SERVER and "mgmt",
	username = SERVER and "swag",
	password = SERVER and "swag",
	port = SERVER and 3306 or ""
}

moat.cfg.sql = mysql