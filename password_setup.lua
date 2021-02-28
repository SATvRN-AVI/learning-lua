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
        print("Sorry please try again")
    end
end

if userInput(confirmed_answer == false) then
    repeat
        userInput()
    until(confirmed_answer == true)
end

userInput()


