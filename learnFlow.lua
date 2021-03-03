--[[ This file is notes taken on learning flow control and their applications
     This file may be used as a reference or edited and reuploaded for personal use.
]]
-- *******************************************************************
--[[
    Below, we set a variable 'i' to abbreviate for iteration/index. This is standard practice for any sort of iteration function.
    The 'for' command will parse through a given set of information, in this case 1-3(that's 1,2,3) and do something which each value.
]]
for i = 1,3 do 
    print(i) -- We call the print command to print 'i'
end

-- *******************************************************************

--[[
    Notice that above we declared the variable 'i' within that for loop.
    This is because whatever variable is declared with a 'for' loop has its scope limited to that loop
    unless you previously declare it as a global variable before the 'for' loop.
]]
for i = 1,10,2 do --\\
    print(i) -- We call the print command to print our set of values
end

--[[
    \\-- Again we set 'i' as our variable and assign it the values of 1 through 10, and because its scope is limited
         to within the for loop, it will give us the values assigned to it within its corresponding loop. The third
         integer, '2', dictates how many the loop should count by to the end of the list I.E. (1, 3, 5, 7, 9)
         This is known as a STEPPING VALUE
]]

-- *******************************************************************

days = { "Monday", "Tuesday", "Wednesday","Thursday","Friday"} -- We assign a table with the days of the week. *SEE TABLE NOTES**

--[[
    Below we take 'i' which indexes the values of the array above. We then use the 'v' iterator
    which gives the corresponding values assigned to the indices. the special 'in pairs' function
    will then specify the the number/value pairs in the array 'days' set above and prints them. Notice
    we use 'print(v)' to print the values we assigned to the indices within the table.
]]
for i, v in pairs(days) do 
    print(v)
end

--[[
    The code below functions the same as the one above save for one key difference.
    the 'ipairs' command will return the values in the array in numerical order.
    This is most commonly used in numerical tables.
]]
for i, v in ipairs(days) do 
    print(v)
end

--[[
    The code below, again, functions the same as the ones on the top, but removed the 'v'
    to demonstrate how 'v' returns the values we assigned to the array. When you run the code
    this loop will print the number indicies of each value in the table above.
]]
for i in pairs(days) do
    print(i)
end

-- *******************************************************************

--[[ 
    The while function allows us to continuously test whether or not something is true or false based on the conditions inside.
    In the example below we define two local variables, one being 'isPlayerDead' to simulate the condition of the player's character.
    In this case we set it to false to tell the computer that the character is still alive. We declare another variable and set it to
    the player's supposed numerical hitpoint value. 
]]
local isPlayerDead = false
local playerHP = 42

while isPlayerDead == false do -- This will continuously test for this condition while the code within runs
    if playerHP  <= 0 then -- This line dictates what happens when the player's life reaches or falls below 0
        isPlayerDead = true -- This line tells the computer that the character is dead and the while loop will close
        print("Player is dead") -- This line prints the message and ends the loop
    else -- This statement effectively translates to "Otherwise"
        print("Not dead. Curr HP " .. playerHP) -- prints the current HP of the player
        playerHP = playerHP - 1 -- This line will remove one hit point from the players life total during the loop
    end
end

-- *******************************************************************
--[[
    The code below functions the same as the while loop above it, however, 'repeat/until' functions will always run whatever is 
    inside the bracket at least once.
]]
repeat
    if playerHP  <= 0 then -- This line dictates what happens when the player's life reaches or falls below 0
        isPlayerDead = true -- This line tells the computer that the character is dead and the while loop will close
        print("Player is dead") -- This line prints the message and ends the loop
    else -- This statement effectively translates to "Otherwise"
        print("Not dead. Curr HP " .. playerHP) -- prints the current HP of the player
        playerHP = playerHP - 1 -- This line will remove one hit point from the players life total during the loop
    end
until isPlayerDead == false

-- *******************************************************************


--This is just some examples of how powerful if statements are, and how to use if, elseif, else

if playersHP > 10 then
    print("Not bad")
elseif playersHP > 5 and playersHP < 10 then
    print("So so")
else
    print("Not good")
end