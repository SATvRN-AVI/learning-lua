-- ComputerCraftT Copy

--[[function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end
]]


function userInput()
    io.write("Please enter a password: ")
    answer_1=io.read()
    io.write("Please re-enter your password: ")
    answer_2=io.read()

    confirmed_answer = answer_1 == answer_2

    if confirmed_answer == true then
        print("Password created successfully!")
        os.startTimer(3)
        os.pullEvent()
        local event = os.pullEvent()
        if event == "timer" then
            os.execute(exitcode)
        end
    elseif confirmed_answer == false then
        print("Sorry please try again")
    end
end

if userInput(false) then
    repeat
        userInput()
    until(confirmed_answer == true)
end

userInput()



