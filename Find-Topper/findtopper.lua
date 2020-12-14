function getTheTopper(score_list)
	local topper,highest = {}, 0  --initial assigning for highest and empty topper table
    for name, score in pairs(score_list) do
	    if score > highest then
		   topper,highest = {name},score   --If value is greater then highest then highest became value and name passes in topper table
		elseif score == highest then
           table.insert(topper,name)
		end
    end
	return table.concat(topper,'\n')
end


function readScoreList(N)
    local scorelist={}
	for i=1,N or 0 do
	local name, score  = io.read():match '^([^%d%s]+)%s*([%d%.%d]+)$' --Takes string and match it as Name-space-no-.-no formate
	scorelist [name] = tonumber (score)                               -- assign No. as value and name as key of table
    end
	print(table.concat(scorelist,'\n'))
	return scorelist                    --return scorelist for getTheTopperfunction
end

tc = tonumber(io.read())
for i=1,tc or 0                    --Runs as many times as Testcases
do
    local N=tonumber(io.read())    --Takes the no. of students for specific Testcase
    score_list=readScoreList(N);
    print(getTheTopper(score_list))
end
