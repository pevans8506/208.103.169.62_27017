util.AddNetworkString("moat.comp.open")
util.AddNetworkString("moat.comp.chat")
MOAT_COMP = MOAT_COMP or {}

MOAT_COMP.Staff = {
    ["senioradmin"] = true,
    ["headadmin"] = true,
    ["servermanager"] = true,
    ["communitymanager"] = true,
    ["director"] = true,
}

concommand.Add("moat_comp", function(pl, cmd, args)
    -- if (not MOAT_COMP.Staff[pl:GetUserGroup()] and not moat.is(pl)) then return end
    net.Start("moat.comp.open")
    net.Send(pl)
end)

net.Receive("moat.comp.open", function(l, pl)
    -- if (not MOAT_COMP.Staff[pl:GetUserGroup()] and not moat.is(pl)) then return end
    if (pl.CompensationCooldown and pl.CompensationCooldown > CurTime()) then return end

    local comp = {
        ticket = net.ReadString(),
        steamid = pl:SteamID(),
        item = net.ReadString(),
        class = net.ReadString(),
        talent1 = net.ReadString(),
        talent2 = net.ReadString(),
        talent3 = net.ReadString(),
        talent4 = net.ReadString(),
        comments = net.ReadString(),
        admin = pl:Nick() .. "(" .. pl:SteamID() .. ")"
    }

    m_InsertCompTicket(comp, function(d)
        net.Start("moat.comp.chat")
        net.WriteString("Successfully added compensation ticket review request.")
        net.WriteBool(false)
        net.Send(pl)

    end, function(e)
        net.Start("moat.comp.chat")
        net.WriteString("Error: " .. e .. " - Try re-submitting ticket in a few seconds.")
        net.WriteBool(true)
        net.Send(pl)
    end)

    pl.CompensationCooldown = CurTime() + 1
end)