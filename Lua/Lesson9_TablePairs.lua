a={[0]=1,2,[-1]=3,4,5,["name"]=123}
--ipairs还是从1开始，小于等于0的值得不到，只能找到连续缩印的值
for i,k in ipairs(a) do
	print("ipairs遍历"..i.."——"..k)
end

--他把所有键都找得到
for i,k in pairs(a) do
	print("pairs遍历"..i.."——"..k)
end

print("********************************")

a={1,2,4,nil,7}
--ipairs还是从1开始，小于等于0的值得不到，只能找到连续缩印的值
for i,k in ipairs(a) do
	print("ipairs遍历"..i.."——"..k)
end

--他把所有键都找得到
for i,k in pairs(a) do
	print("pairs遍历"..i.."——"..k)
end