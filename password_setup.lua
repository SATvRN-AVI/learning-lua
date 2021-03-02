-- ComputerCraftT Copy

--[[
    **************************************************************************************
    The overall function of this program is to ask a user for a password
    and then asks to confirm said password. If the user enters a password
    that was different from the first it will alert the user of the mistake
    and loop the program back to the start, clearing the data stored. If the 
    user successfully creates a password, the program confirms this and closes
    the program.

    IDEAS: Used upon boot of a program to ask for some user generated info (password)
    then stores it for further use in another program.

    NOTE: This program is absent of ComputerCraftT syntax for debug use in a lua shell.
          The proper syntax and function, for that matter, of this program is stored in 
          the git branch 'computercraft_t' under the same name.
    **************************************************************************************      
]]

-- Function: 'accessGranted' plays a sound when the player successfully creates a password

function accessGranted() 
    local speaker = peripheral.wrap("bottom")
    speaker.playSound("minecraft:entity.player.levelup")
end

-- Function: 'accessDenied' plays a sound when the player enters mismatching passwords

function accessDenied()
    local speaker = peripheral.wrap("bottom")
    speaker.playSound("minecraft:block.redstone_torch.burnout")
end

-- Function: 'userInput' asks player to create a password, and confirms their entry. If their passwords don't match it will repeat the function until 'true'

function userInput(confirmed_answer)
    io.write("Please enter a password: ")
    local answer_1=io.read()
    io.write("Please re-enter your password: ")
    local answer_2=io.read()

    confirmed_answer = answer_1 == answer_2

    if confirmed_answer == true then
        print("Password created successfully!")
        print("Have a nice day!")
        accessGranted()
        os.startTimer(3)
        os.pullEvent()
        local event = os.pullEvent()
        if event == "timer" then
            shell.run("shell","bg")
            shell.exit()
        end
        return 
    elseif confirmed_answer == false then
        accessDenied()
        textutils.slowPrint("Sorry that password was incorrect!")
        repeat
            userInput()
        until confirmed_answer == true
    end
end

userInput()
