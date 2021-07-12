print("***************字典*************")


print("***************字典声明*************")
a={["name"]="chen",["age"]=14,["1"]=5}
print(a["name"])
print(a.age)
--print(a.1) --可以类似.成员变量的形式访问，但是不能是数字
a["test"]=test  --新增
a["test"]=nil	--删除

print("***************字典遍历*************")
--一定要用pairs遍历
for k,v in pairs(a) do
	print(k,v)
end
for k in pairs(a) do
	print(k)
end

print("***************类和结构体*************")
--lua中默认没有面向对象的，需要我们自己来实现
--成员变量，成员函数。。。。
Student ={
	age=1,
	sex=true,
	Up=function()
		--print(age)--这个age和表中的age没有任何关系
		print(Student.age)--必须要指定表名
		print("chengzhangle ")
	end,
	Learn=function(t) 
		print(t.sex)
		print("点和冒号调用的区别")
	end
	
}
--添加
Student.name="chenlf"
Student.Speek=function()
	print("shuohua ")
end
--c#使用类  实例化对象new 静态直接.
--lua中类的表现 更像是一个类中有很多 静态变量和函数
print(Student.age)
Student.Up()

print(Student.name)
Student.Speek()

--lua 中点和冒号调用的区别
Student.Learn(Student)
--冒号调用会默认把调用者作为第一个参数
Student:Learn()

--冒号声明
function Student:Speek2()
	--self表示第一个传入的参数
	print(self.name.."说话")
end
Student:Speek2()
Student.Speek2(Student)

print("***************表的公共操作*************")
--表中 table提供的一些公共方法

t1={{age=1,name="123"},{age=2,name="456"}}
t2={name="chenlf",sex=true}

--插入
print(#t1)
table.insert(t1,t2)--t2插入t1
print(#t1)
print(t1[1])
print(t1[1].name)
print(t1[3].name)

--删除指定元素
--remove方法 传表进去 会移除最后一个索引内容
table.remove(t1)
--第一个参数是要移除的表，第二个参数是要移除内容的索引
table.remove(t1,1)

--排序
t2={5,2,7,9,5}
table.sort(t2)
for k,v in pairs(t2) do
	print(k,v)
end


--拼接
tb={"123","456"}
str=table.concat( tb, ", ")
print(str)