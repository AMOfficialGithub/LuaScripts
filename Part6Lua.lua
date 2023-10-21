--OOP
--Object Orientated Program, a way of thinking
--Can do procedule programming in game developement. The easiest way to think is object orentiated programming, where the player is a object, the houses are objects, etc.
--Functions shall simulate OOP. It will create a table, which will create a basic object.

local t {
  --Another item
  name = "Jack"
  age = "34"
  friends = "{Jasmine}"
}
print(t.name)
print(t.age)

--What is inside of this table
local function Pet(name)
  return {
    
    --can be equal to the name given
    name = "Luis"
    status = "hungry"
    
    --putting in a function
    feed function(self)
      print(name.."is fed")
      self.status = "Full"
      --Add to itself
      self.loyalty = self.loyalty + 5
    
  }
end

--this cat is part of the object
local cat = Pet("Kitty")
local dog = Pet() --Default name given

print(cat.name)
print(dog.name)

print(cat.status)
cat:feed()
print(cat.status)
print(dog.status)

--Sub classes for classes
--Let's say you have a dog class, you can inherit from a different object

local function Dog(name, breed)
  --This dog is inherting from the Pet function
  local dog = Pet(name)
  
  dog.breed = breed
  dog.loyalty = 0
  
  --A function that takes itself
  dog.isLoyal = function (self)
    return self.loyalty >= 10
end
--Increase loyalty 
--overwritting the other feed
dog.feed() = function(self)
--Now the dog will bark
dog.bark = function(self)
  print("Woof Woof")
end
 --Must return that table
return dog
end

local lassy = Dog("Lassy","Poodle")
lassy:feed()
print(lassy.status)
if lassy.isLoyal() then
  print("Will protect the family")
  else
    print("Hide under the table scared")
end

print(lassy.breed)
lassy.bark()

