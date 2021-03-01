-- ComputerCraftT Copy




function userInput()
    io.write("Please enter a password: ")
    answer_1=io.read()
    io.write("Please re-enter your password: ")
    answer_2=io.read()

    confirmed_answer = answer_1 == answer_2

    if confirmed_answer == true then
        print("Password created successfully!")
        print("Have a nice day!")
        os.startTimer(3)
        os.pullEvent()
        local event = os.pullEvent()
        if event == "timer" then
            shell.run("shell","bg")
            shell.exit()
        end
        return
    elseif confirmed_answer == false then
        textutils.slowPrint("Sorry that password was incorrect!")
        repeat
            userInput()
        until confirmed_answer == true
    end
end

userInput()
    