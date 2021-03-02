--[[
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
]]


--[[
    The function: 'wait(seconds)' written below declares a variable 'start' and sets it equal to the current os.time()
]]
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds   
end

function userInput()
    io.write("Please enter a password: ")
    answer_1=io.read()
    io.write("Please re-enter your password: ")
    answer_2=io.read()

    confirmed_answer = answer_1 == answer_2

    if confirmed_answer == true then
        print("Password created successfully!")
        wait(3)
        os.execute("cls")
    elseif confirmed_answer == false then
        print("Those passwords didn't match! Please try again.")
    end
end

if userInput(confirmed_answer == false) then
    repeat
        userInput()
    until(confirmed_answer == true)
end

userInput()


