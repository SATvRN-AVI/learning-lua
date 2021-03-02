-- Plays music then makes the turtle dance

function startParty()
    local speaker = peripheral.wrap("right")
    speaker.playSound("minecraft:music_disc.cat")
    shell.run("dance")
end

function endParty()
    print("Press any key to end the party...")
-- endParty = danceParty ~= true
startParty()
