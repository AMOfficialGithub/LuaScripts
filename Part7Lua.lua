local function addTableValues(x, y)
    -- Multiply the values of x and y instead of adding them
    return x.num * y.num
end

-- Meta Table Part.

-- Define the metamethods in the metatable
local metatable = {
  __add = addTableValues, -- Comma was missing here
  __sub = function (x, y) -- Missing comma here as well
    -- Define the behavior for the subtraction operation
    return x.num - y.num
  end
}

local tb1 = {num = 50} -- Changed "-" to "=" to correctly assign the table
local tb2 = {num = 10}
-- Whenever table 1 is involved, execute with this value
setmetatable(tb1, metatable) -- Corrected "tbl1" to "tb1"

local ans = tb1 + tb2 -- Perform addition using the metamethod
local ans2 = addTableValues(tb1, tb2) -- Perform addition using the function

print(ans) -- Print the result of addition

--Return two values
local function addTableValues2(v1,v2)
  return v1.x + v2.x, v1.y + v2.y
end

local vex_x, vec_u = tb1 + tb2
print("x"..vec_x..."\
  ny:"..vec.y)