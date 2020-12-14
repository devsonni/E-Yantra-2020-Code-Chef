--Localise for frequent performance
local insert, concat = table.insert, table.concat
local len, gmatch, sub = string.len, string.gmatch, string.sub


function countChar(str)
       local count = {}
	 while (sub(str, 1, 1) == '@') do --check whether the first letter is @ or not
        newstring = sub(str, 2, len(str)) --cut out the first letter means @ & make new-string
		  for word in newstring:gmatch '[%l%u]+' do  --allow the upper and lower case letters (ignore the space) & + increment
            insert (count, word:len())
          end
	  break
	  end
    return concat(count,',')  --concat the count table by comma
end


local s = {}
tc = tonumber(io.read())
for i=1,tc or 0
do
    str=io.read('*l')
    s[i] = countChar(str) --call countChar function and assign in-to table s
end

print(concat(s,'\n')) --concat the s table by next line ('\n')








