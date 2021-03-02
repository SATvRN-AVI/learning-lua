
--[[
    This file is notes taken on learning functions and their uses.
    This file may be used as reference or edited upon and reuploaded for personal use.
]]



function printHelloWorld() -- This declares that 'printHelloWorld()' is a function
    print("Hello World!") -- Anything after the above line is part of the function and will be run in order of appearance when called
end -- This ends the declaration section of a function and returns us out of said chunk
printHelloWorld() -- This calls the function we just declared and it will run whatever code we assigned to the function

-- *******************************************************************

function getHello() -- Again we declare a function called 'getHello()'
    return "Hello World" -- In this case we have the function return a set of information, in this case a print function
end -- And again we end the function declaration

local messageToPrint = getHello() -- This sets a local variable 'messageToPrint' the value of the above stated function 'getHello()'
print(messageToPrint) -- This prints the variable

-- ********************************************************************

function getValues() -- Declaration of a function with name 'getValues()'
    return "yes","no" -- On this line we assign two different values each seperated by a ',' for the function to return 
end -- Closes the declaration chunk

local valY,valZ,valX = getValues() 

--[[ 
We assign a local variable for each value in the function above. 
It assigns the values of the function the variables in order of appearace.
Notice how we assign a third variable, 'valX' after both despite there only being two values in the function above.
--]]

print(valZ) -- This prints 'valZ' which in this case is "no", notice how it's printed before 'valY' and returns the latter value
print(valY) -- This prints 'valY' which was assigned "yes".
print(valX) -- This will print 'valX' which will return 'nil' when printed. This is because there are only two values in 'getValues()'   

--[[
    The variables 'valZ' and 'valY' are swapped from their assignment positioning intentionally 
    to demonstrate assignment properties of multiple values in a function. 
    
    The variable 'valX' is assigned to the function 'getValues()' but will return 'nil' because there was not a third
    value in the declaration of the function to be returned to the variable('valX')
--]]

-- ********************************************************************

function getAnotherValue() -- Declares another function
    return 1,2,3 -- We assign values for the function to return when called
end -- We end the declaration

local var1 = getAnotherValue() -- On this line we set a local variable to the function

print(var1) -- When printed, it will only return one value from the function because only one variable was assigned to it '1'

-- ********************************************************************

local meaningOfLife = 24 -- We assign a local variable called 'meaningOfLife' 

function calculateMeaningOfLife() -- We declare a function named 'calculateMeaningOfLife'
        local meaningOfLife = 42 -- In this case we declare another local variable and assign it '42' // NOTE: the scope of this variable is within the function
        print(meaningOfLife) -- Prints the value of the variable when the function is called
end -- Closes the declaration 

calculateMeaningOfLife() -- This calls the function we declared above // Notice it's called before our local variable above it

print(meaningOfLife) -- This prints the variable with the assigned value above

--[[
    The code on lines '60' and '62' are intentionally called in seperate order from their assignments. 
    This is to demonstrate the different scopes of the variables 'meaningOfLife'
    NOTE: the scope of variable 'meaningOfLife' is limited within the function and does not affect the previous variable
]]
