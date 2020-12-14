--functions tha are uses sevaral times...
local floor = math.floor
local len, sub, rep = string.len, string.sub, string.rep
local insert, concat = table.insert, table.concat
function generatePattern(n,temp)
    -- Repeat template as many times as necessary to cover size and cut off what is not needed:
    local line = sub (rep (temp, floor (n / len (temp) ) + 1 ), 1, n)
    local lines = {}
    while (len (line) > 0) do
        insert (lines, line)
        line = sub (line, 1, -2)        -- cut the last character off.
    end
    return concat(lines, '\n')
end

-- read the test cases input
local tc = tonumber (io.read ())
local patterns = {}

for i = 1, tc do
   -- takes the value for number of raws
    n = tonumber(io.read())
    patterns[i] = generatePattern(n,'****#')
end

print (concat (patterns, '\n'))
