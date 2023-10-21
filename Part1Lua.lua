print("Hello World!")
--To print out comments, use this. It will help print out the comments for you.
--[[ This is considered a multi line comment.]]
--To add multiple strings to a string, use cocatenation of two dots for the string
print("Hello ".." Johnathan ".." My name is April!")
--Basic Types and variables in Lua
--Tables are basicually the arrays of Lua and Dictionaries, nil which means nothing, number is 1- 1.24 and etc, string is like a word, like your name, booleans are true or false--

--To create a variable(cannot start with a quotation mark or a number)
local a = 5;
local b = 8;

print(a, b)

print(a)
--setting the variable to nil/null
local a = nil
print(a)
a = 7
print( a + 5)

local name = "Johnathan"
print(name)
--to change the variable data
name = "April"
print("Hello ", name)

--You want your program to be optimized as much as possible for speed.
name = false
print(name)
name = "Johnathan"
local surname = " Last name"

print(name..surname)

--To make a column description
local description = [[
Colo
Hello World
please
print out description]]
print(description)

--an empty string can also be true
--Think of variable being inside a box. Information can only be accessed inside of the box. If one comes outside of the box, aka, using a reference, it will return as nil because we don't want the variable to be used outside a local environment.

--A global scope variable can be accessed by anything outside of the box. Using the term Global means that it can be accessed outside by anything. Good programming does not rely on global variables.
--The bottom is a global scope variable
C = 79
print(C)
--Here is a local variable, it is case sensitive in lua
local c = 20
print(C,c)
--This is a global scope variable as well
_G.Hello = "Hello there!"
 x = 12
 --To know what variable is being used
 print(type(x))
 x = nil
 print(type(x))
 x = "string"
 print(type(x))
 
 --Math Portion of Lua
 
 local str = "22"
 print(type(str))
 --tonumber converts it to a number
 print(type(tonumber(str)))
 
 print(5+5+5)
 print(20-5-7)
 print(20+5+2)
 print(20-5+7/6)
 print(2^2)
 print(2 ^ 5)
 print(5 ^ 2)
 print( 5 * 5)
 --This shall do the inner curves before the outer curves PEMDAS
 print( 5 * (9 + 5))
 print(10 / 2)
 print(100/3.14)
 print(10 / 3)
 print(10 % 3)
 print(10 % 4)
 
 print( 5 + 10 * 2)
 print((5+2) * 10 / 2)
 
 --Printing out a variable with math
 x = 5
 y = 10
 z = x + y
 print(z)
 
 --to get a random number value
 print(math.random())
 --to make it more random do math.randomseed()
 
 --this stays as 4 but a little different
 print(math.randomseed(4))
 --prints out the time of reference memory in seconds
 print(os.time)
 --randomly prints out the memory os function
 math.randomseed(os.time())
 print(math.random(10))
 --to get the smallest number in a list
 print(math.min(1,5,0,87,99,100))
 --to get the max number on a list
 print(math.max(99,34,12,45,62))
 --to get the rounded down number
 print(math.floor(3.1902))
     --to get the up number
print(math.ceil(4.5690))

--Different Calculus/Algebra Math.
print(math.sin(20))
print(math.cos(20))
print(math.tan(20))

--How to work with strings.
--Strings are based on their data type. Can be double or
--single quotes

local str = "Hello World!"
print(str)
print(type(str))
--Strings are also single characters, such as "C"

--A string with multiple lines will be this. There will be a space here.
local str = [[
hello World!
My name is Johanathan
and I like Lua!
2+2 = 4]]

print(str)
--To get length of a string
print(#str)

--This can also be done with the container variable
local str = #"Hello World"
print(str)

--to concatenate a string
local str = "Hello"
print(str.."World")

local x = 22
--prints the type
print(type(x))

local x = "22"

--prints the type
print(type(x))

--Converting a type to a string
local y = tostring(x)

print(type(x), type(y))
print(type(x))

local y = 22
--Another way to convert
print(type(tostring(x)))

--Escape characters
--This creates a new line with World on it
--\t does a tab or a comma, or a verticle
print("Hello\nWorld\t!!!, \v I am Johnathan\\Lua Programmer\\")

--convert to lowercase
print(string.lower(str))
--convert to upper
print(string.upper(str))

--Get the length of the string
print(string.len(str))
--To get a certain length of the string
print(string.sub(str,1,5))
--to conver this
print(string.sub(str,7,99))
--to get a character
print(string.char(65))

--to get a ascii
print(string.byte("A"))
print(string.byte("a"))

--Convert this 
print(string.byte(str,1,99))

--To repeat something
print(string.rep("Hello!",10, ","))

--to format a string to a pie using a float and format
print(string.format("pi: % .2f\nMy age: %i", math.pi,18))
--to match something. If it doesn't find it, it will be null
print(string.match(str,"orl"))

local str = "Hello World"
--Two strings seperated by a comma to find the index
local begin, ending = string.find(str, "orl")
print("Begin:"..begin.."\nEnd: "..ending)

local start_val, end_val, step_val = 10, 1, -2

for i = start_val, end_val, step_val do
    print(i)
end

-- Tables
local arr = {2, 3, 45, 38393, 34, 21, 2, 34}

-- i starts at one, print out the array
for i = 1, #arr do
    print(arr[i])
end

local peeps = 10
-- Doing a while loop while subtracting from 10
while peeps > 0 do
    peeps = peeps - 1
    print("The number left at the party is " .. peeps)
end

--[[ while true do print("Loop") will be a forever loop that will crash the terminal. Do not do this]]

local run = true
local runtime = 0
while run do
    print("Loop")
    
    -- This will break out of the loop when runtime reaches 10
    if runtime >= 10 then
        run = false
    end
    
    runtime = runtime + 1
end

-- Repeat repeats the line until it reaches a stopping value
local x = 1
repeat
    print("Hey there!")
    x = x + 1
until x > 10

--[[This is a forever loop because it will not end
repeat
    print("Hello")
    until false]]
    
-- User Input
print("What is 10 + 5?")
local ans = io.read()
print("\nYour answer is " .. ans)

-- How to print an input next to an output
io.write("Input 10 + 5: ")
local ans = io.read()
print("Your answer is: " .. ans)

-- Make it equal to 10 and 5 on one line. Make a math game.
local num1, num2 = 10, 5
local true_ans = num1 + num2
io.write("Input " .. num1 .. " + " .. num2 .. ": ")

local ans = io.read()
if tonumber(ans) == true_ans then
    print("You are Correct!")
else
    print("Your answer is " .. ans)
end

-- Tables
-- Represent things as arrays, records, sets, queues.

local arr = {10, 15, 20}

print(arr)
print(arr[2])

-- An array is just a variable that contains multiple values.
-- There is no limit to a specific length.

local arr = {10, true, "Hello World", 2.4}
print(arr[4])

-- To get the length of an array
print(#arr)

-- To get the last index printed
print(arr[#arr])

-- Sorting values
table.sort(arr)
print(arr)

for i = 1, #arr do
    print(arr[i])
end

-- Insert data into an array
-- Syntax: table.insert(array, position, value)
table.insert(arr, 2, "Yes")
print(arr)

-- Remove a value
-- Syntax: table.remove(array, position)
table.remove(arr, 2)

-- Concatenate an array
print(table.concat(arr, "!!!!"))

-- A multi-dimensional array
local arr = {
    {1, 2, 3, 4},
    {5, 6, 7, 8},
    {9, 10, 11, 12}
}
print(arr[3][2])

for i = 1, #arr do
    for j = 1, #arr[i] do
        print(arr[i][j])
    end
end

-- Functions

-- A block of code that can be copied and pasted without massive repercussions.
print("You are 5 years old")

-- A local function can only be accessed locally, a global function can be accessed anywhere
local function displayAge()
    print("You are 5 years old!")
    print("You are 7 years old!")
    print("You are 10 years old!")
end

displayAge()

-- Improving the code above with a parameter. This parameter is called within the function
local function displayAge(age)
    age = age or 5 -- will default to 5 if not assigned
    print("You are " .. age .. " years old!")
    print("You are " .. age + 2 .. " years old!")
    print("You are " .. age - 1 .. " years old!")
end

displayAge(7)
displayAge(15)
displayAge(40)

-- sum will take in the following parameters
local function sum(num1, num2)
    -- Return means to put it in a variable and return it
    return num1 + num2 -- This cannot be accessed outside the method.
end

-- Call the method with the supplied parameters
local x = sum(2, 3)
print(x)

-- To access with a global scope variable (keep it as local unless you want it to access outside)
local function globalScope(num1, num2)
    _G.y = num1 + num2
    return y
end

sum(2, 3)
print(y)

-- How to print with a valid function outside of it (can be accessed z)
local z = 10
local function sum(num1, num2)
    local y = num1 + z
    return y
end

print(sum(2, 3))

local add10 = function(number)
    return 10 + number
end

print(add10(5))

-- Accept multiple values
local add10 = function(number)
    local outcome = 10 + number
    return outcome
end

print(add10(5))

-- Return something extra
local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

-- Underscore means it's not being used
local _, stored, output = add10(20)
print(stored .. " had 10 added to it: " .. output)

-- Recursion, a function calls itself until it reaches the answer that it wants
-- Recursive function to count from 'number' to 'endnum'
local function counter(number, endnum)
    local count = number + 1

    if count < endnum then
        return counter(count, endnum)
    end

    return count
end

print(counter(10, 15))

-- Function to sum variable arguments
local function sum(...)
    local result = 0

    for i, v in ipairs { ... } do
        result = result + v
    end

    return result
end

print(sum(10, 5))

-- Function to sum values in a table and print keys
local function sum2(...)
    local sums = 0
    for _, value in pairs({ ... }) do
        sums = sums + value
    end

    return sums
end

print(sum2(10, 3, 4, 5, 7))

--2:13:52