local EagleSounds = {
    ["Eagle Aim"] = "https://tera.gg/ttt/misc/tttsounds/surreal-headshot-kill.wav",
    ["Eagle Kill"] = "https://tera.gg/ttt/misc/tttsounds/surreal-killshot.wav",
    ["Eagle Clack"] = "https://tera.gg/ttt/misc/tttsounds/metallic-headshot.wav",
    ["Arcade Tap"] = "https://tera.gg/ttt/misc/tttsounds/arcade-bodyshot.wav",
    ["Arcade Headshot"] = "https://tera.gg/ttt/misc/tttsounds/arcade-headshot.wav",
    ["Arcade Kill"] = "https://tera.gg/ttt/misc/tttsounds/arcade-headshot-kill.wav",
    ["Arcade Missed"] = "https://tera.gg/ttt/misc/tttsounds/arcade-killshot.wav",
    ["FPS Hitmarker"] = "https://tera.gg/ttt/misc/tttsounds/fps-bodyshot.wav",
    ["FPS Headshot"] = "https://tera.gg/ttt/misc/tttsounds/fps-headshot.wav",
    ["Rusty Aim"] = "https://tera.gg/ttt/misc/tttsounds/metallic-headshot.wav"
}

hook("Moat.Headshot", function()
    local snd = GetConVar("moat_headshot_sound"):GetString()

    if (not EagleSounds[snd]) then
        snd = "Eagle Aim"
    end

    cdn.PlayURL(EagleSounds[snd])
end)

net.Receive("Moat.Headshot.Sound", function()
    local vol = GetConVar("moat_headshot_sounds"):GetFloat()
    if (vol <= 0) then return end
    hook.Run"Moat.Headshot"
end)
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"
-- cdn.PlayURL "https://cdn.notfound.tech/55aLKs6xUXfnMseoc0eWDkcyWdMAJ9yF.mp3"