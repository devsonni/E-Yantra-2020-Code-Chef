function palindrome(str)
local pin = {}  --assigning empty table
local x = string.upper(str) --convert capital for for case making it insensitive
   if x == string.reverse(x) then --reverse string and compare it to it-self
      table.insert(pin,"It is a palindrome")
   else
	  table.insert(pin,"It is not a palindrome")
end
	return table.concat(pin, '\n') --concat table pin by next line '\n'
end

-- for each case, call the palindrome function to check whether the input string is a palindrome or not with case insensitive
tc = tonumber(io.read())
local palindromes = {}
for i=1,tc or 0
do
	   str=io.read()
       palindromes[i] = palindrome(str) --call function palindrome
end
print(table.concat(palindromes,'\n')) --concat table palindromes by next line '\n'
