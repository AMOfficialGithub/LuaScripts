--Create your own math module for the table

mmath = {
 
}

 --To make this a part of the module
 
 --it must be a global function
function mmath.adds(x,y)
  return x + y


function mmath.power(num1,num2)
  return num1 ^ num2
end
return mmath


--to add it from another file (importing a file to another file(inheritance))
local mod = require("Main.lua")

--The below are the created classes
print(mod.add(5,10))
print(mod.power(8,9))

--OOP
