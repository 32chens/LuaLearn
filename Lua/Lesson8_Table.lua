print("**************数组************")
--所有的复杂类型本质都是table
a={}
a={1,2,nil,"21",true,5,nil}
print(a[1])

--打印长度时，nil和之后的长度被忽略
print(#a)


print("**************数组遍历************")
for i=1,#a do
	print(a[i])
end




print("**************二维数组************")
a={{1,2,3},{4,5,6}}
print(a[1][1])
print(a[1][2])
print(a[1][3])




print("**************二维数组遍历************")
for i=1,#a do
	b=a[i]
	for j=1,#b do
		print(b[j])
	end
end


print("**************自定义索引************")
aa={[0]=1,2,3,[-1]=4,5}
print(aa[0])
print(aa[-1])
print(#aa)
print(aa[1])
print(aa[2])
print(aa[3])