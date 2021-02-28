MyVar = 10  -- Declare a variable and assign a value

Other = 40 -- Declare another variable

Result = MyVar * Other -- Declaring another variable to the two previous variables and assigning them an arithmetic operation 

print(Result) -- Prints the above arithmetic operation

--[[
    +: for addition
    -: for subtraction
    *: for multiplication
    /: for float division
    //: for floor division
    %: for modulo
    ^: for exponentiation
]]

part_1 = "Hello " -- In this instance we declared that 'part_1' is equal to the string '"Hello "' // notice the space at the end of the string for readability of the code when printed
part_2 = "World" -- In this instance we declared that 'part_2' is equal to the string '"World"' // we could put a space before World instead of at the end of Hello

full_text = part_1 .. part_2 -- We again assign another variable to our two variables and we 'Concatenate' them. This combines the two strings

print(full_text) -- Prints the above concatenation

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

var_1 = 100 -- We assign a value to this variable
var_2 = 32 -- We assign a different value to this variable

myBoolean = (var_1 == var_2) -- We assign the two previous variables to 'myBoolean' and compare them with a relational operator

--[[
    ==: checks for equality
    ~=: checks for inequality
    <: checks for less than
    >: check for greater than
    <=: checks for less than or equal to
    >=: checks for greater than or equal to
    
    These operators compare two variables or values and checks to see whether or not it is 'True' or 'False' // These are known as 'Booleans'
]]

print(myBoolean)

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

myString = "Hello!" -- This is a basic print command with normal quotations

otherString = 'You said, "Hello!"' -- This command uses single quotations so that double quotations can be used within the string

print(myString) -- Prints first string
print(otherString) -- Prints second string

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

print("type your name") -- Prompts the user for input
input = io.read() -- Calls the 'io.read' command to ask for user input, notice the '()' is empty
print(input) -- Prints whatever the user wrote back on the command line

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

print("Type your name: ")
name = io.read()

if name == "Walter" then
    print("Nice name yo!")
end

