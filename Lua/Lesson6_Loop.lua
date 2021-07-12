--while
testNum=0
while testNum<5 do
	print(testNum)
	testNum=testNum+1
end

--do while
testNum=0
repeat
	print(testNum)
	testNum=testNum+1
until testNum>5	--结束条件


--for
for i=1,5 do --默认i递增
	print(i)
end

for i=1,5,2 do --自定义增量2
	print(i)
end

for i=5,1,-1 do --自定义递减
	print(i)
end