--To create a new file
--If it already exist, it will empty the file
--This will select the file
io.output("myFile.txt")
io.write("Hello World")

--this will close the file
io.close()

--This will input a file(put words in it)
io.input("MyFile2.txt")

--this will read the file up to 5 characters
local file = io.read(5)

--this will read it as a number, the number of characters in the file
local file = io.read("*number")

io.close()

print(file)

io.input("myFile3.txt")

--this will read the lines in the text file
print(io.read("*line"))
print(io.read("*line"))
io.close()

--this will read everything
local file = io.read("*all")

--this will open the file, then tell it to write afterwards with w
local file = io.open("myfile","w")

file:Write("My name is April")
--this will also close the file as well too
file:close()

--to overwrite
local file = io.open("myOtherFile.txt","r")
file:write("\nJack he is old\nAmy: Yes I know!")
file:close

local file = io.open("myOtherFile.txt", "r")
--Gets everything in the file
file:read("*all")
--Ability to read it line by line
file:read("*line")
file:close()
print(reads)

--The OS Module--

--This will return the time in seconds
print(os.time())
--Specify a specific date
print(os.time({
  year = 2000,
  month = 10,
  day = 1,
  min = 20,
  sec = 10
}) / 60) --Divided by 60 seconds

local past = os.time
  year = 2000,
  month = 10,
  day = 1,
  min = 20,
  sec = 10
}) / 60) 

--will give the same output but built for this equation
print(os.difftime(os.time(),past))

--Current date
print(os.date())

--The Evironment variables

--gets the environment
print(os.getenv("HOME"))

--get the user
print(os.getenv("USER"))

--Rename and remove files
--this renames the file, with the file first, then the new name
os.rename("myEmptyFile.txt","newName.js")
--remove this file
os.remove("newName.js")

--NEVER EVER use this unless you have no other choice.
--Executing terminal commands(Linux)
os.execute("whoami")
os.execute("cls")

--To time the code
local start = os.clock()

-- Calculates how long it takes for the code to happen
for i =1, 10 do
  local x = 10
end
print(os.clock()-start)

--To exit the program
for i = 1 , 10 do
  print(i)
  if i == 5 then
    
os.exit()
end
end


