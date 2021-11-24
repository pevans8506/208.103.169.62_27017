local JSONToTable = util.JSONToTable
local post = http.Post
local len = string.len
local sub = string.sub
local log = ServerLog
local MaxLength = 2000 - 50
local PreLoadQueue = {}
local Webhooks = {}
local Users = {}

local ErrorCodes = {
    [400] = "The request was improperly formatted, or the server couldn't understand it",
    [401] = "The Authorization header was missing or invalid",
    [40001] = "Unauthorized",
    [50001] = "Missing access",
    [50006] = "Cannot send an empty message",
    [50013] = "Missing permissions",
    [50015] = "Note is too long",
    [50035] = "Invalid Form Body",
    [50010] = "OAuth2 application does not have a bot"
}

local function AddChannel(channel, url)
    Webhooks[channel] = url
end

local function AddChannels(tbl)
    for k, v in pairs(tbl) do
        AddChannel(k, v)
    end
end

local function AddUser(channel, user, no_suffix, avatar)
    local name = user and user:gsub("^.", string.upper)

    if (not no_suffix) then
        name = name .. " Bot"
    end

    if not avatar then
        avatar = "https://tera.gg/assets/img/thesloth.jpg"
    end

    Users[user] = {
        Channel = channel,
        Name = name,
        Avatar = avatar
    }
end

local function AddUsers(channel, tbl, no_suffix)
    for _, user in pairs(tbl) do
        AddUser(channel, user, no_suffix)
    end
end

local function ErrorCode(code, msg)
    print("Discord http error code " .. (code or "unknown") .. ": " .. (ErrorCodes[code] or "" .. "\n"))

    if (msg) then
        log(msg)
        log"\n"
    end

    return false
end

local function PostSuccess(msg, body, length, headers, code)
    code = ErrorCodes[code]
    if (code) then return ErrorCode(code, msg) end
    body = JSONToTable(body)
    if (body and body.code) then return ErrorCode(code, msg) end

    return true
end

local function Send(user, msg, userName, no_suffix)
    if string.find(string.lower(GetHostName()), "dev") then return end
    assert(user and (Users[user] or Webhooks[user]), "Discord failed to send webhook.")
    msg = string.gsub(msg, "(@everyone)", "everyone")
    msg = string.gsub(msg, "(@here)", "here")
    local Info, URL, Name, Avatar = Users[user]

    if (Info) then
        URL = Webhooks[Info.Channel]
        Name = Info.Name
        Avatar = Info.Avatar
    else
        AddUser(user, userName or user, no_suffix)

        return Send(user, msg)
    end

    assert(URL and msg, "Discord failed to get webhook URL or msg.")

    if (len(msg) > MaxLength) then
        msg = sub(msg, 1, MaxLength)
    end

    print(msg)

    HTTP({
        url = URL,
        method = 'POST',
        headers = {
            ['Content-Type'] = 'application/json'
        },
        type = "application/json; charset=utf-8",
        body = util.TableToJSON({
            content = msg,
            username = Name,
            avatar_url = Avatar
        }),
        success = PostSuccess,
        failed = ErrorCode
    })
end

local function Embed(user, msg, userName, no_suffix, fields)
    if string.find(string.lower(GetHostName()), "dev") then return end
    assert(user and (Users[user] or Webhooks[user]), "Discord failed to send webhook.")

    if (msg.description) then
        msg.description = string.gsub(msg.description, "(@everyone)", "everyone")
        msg.description = string.gsub(msg.description, "(@here)", "here")
    end

    -- Since the embeds are in tables we will need to check everything manually before sending
    local Info, URL, Name, Avatar = Users[user]

    if (Info) then
        URL = Webhooks[Info.Channel]
        Name = Info.Name
        Avatar = Info.Avatar
    else
        AddUser(user, userName or user, no_suffix)

        return Embed(user, msg)
    end

    assert(URL and msg, "Discord failed to get webhook URL or msg.")

    -- if (len(msg) > MaxLength) then
    -- 	msg = sub(msg, 1, MaxLength)
    -- end
    -- Since the embeds are in tables we will need to check everything manually before sending
    HTTP({
        url = URL,
        method = 'POST',
        headers = {
            ['Content-Type'] = 'application/json'
        },
        body = '{"username": "' .. Name .. '", "avatar_url": "' .. Avatar .. '", "embeds": [' .. util.TableToJSON(msg, true) .. "]}", -- tabletojson doesn't work because it doesn't include the square brackets??
        type = "application/json; charset=utf-8",
        success = PostSuccess,
        failed = ErrorCode
    })
end

local function SendQueue()
    for k, v in ipairs(PreLoadQueue) do
        Send(v.User, v.Message, v.UserName, v.NoSuffix)
    end
end

hook.Add("HTTPLoaded", "Discord.PreLoadQueue", SendQueue)

discord = setmetatable({
    Send = Send,
    Embed = Embed,
    AddChannel = AddChannel,
    AddChannels = AddChannels,
    AddUser = AddUser,
    AddUsers = AddUsers
}, {
    __call = function(self, ...) return self.Send(...) end
})