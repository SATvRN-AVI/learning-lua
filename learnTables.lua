--[[ 
     This file is notes taken on learning tables and their applications
     This file may be used as a reference or edited and reuploaded for personal use.
]]

-- *******************************************************************

--[[
    DESCRIPTION: Tables are the most important part of lua for structuring and organzing complex programs. They
    can be made up of integers, strings, functions, commands, other tables... They are essentially like classes 
    from other languages. They have two primary characteristics. The first is a key, some type of identifier for 
    whatever set of data within the table for the array to find if it is called to do so. The key can be a number, 
    character, another function, etc. Keys are like the keys to your PO box. 
]]
-- *******************************************************************

local monsters = {}  -- This is the start of a table called 'monsters'
local meaningOfLife = 42 -- we set a local variable within the table and assign an integer: '42'
print(monsters) -- We print the table
print(type(meaningOfLife)) -- We print the variable with the table and use the 'type' command to identify what it is, in this case 'number'

-- *******************************************************************

local creatures = {} -- Declare a table name

creatures[1] = "Orc" -- So we assign the first position with the table to the string "Orc" // the '[]' assign what position to put the value

print(creatures[1]) -- We then print the first position in the table 'monster'

-- NOTE: the value within '[]' can be almost anything. I.E. (numbers, letters, function names, etc.)

-- *******************************************************************

local hostile = {}

hostile[1] = "Orc"
hostile[2] = "Skeleton"

for k,v in pairs(hostile) do -- Above we declared a table and put two data pairs inside. 'k'ey '1' with 'v' of 'Orc' etc.
    print(k .. " , " .. v) -- this line prints both the key and value we assigned. The 
end


