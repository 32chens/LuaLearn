--无参无返回值
function F1()
	print("函数")
end

F2=function()
	print("F2函数")
end


--有参数
function F3(a)
	print(a)
end
F3(1)
F3("123")
F3("123",true)
F3()--nil


--有返回值
function F4(a)
	return a,"123",true
end
temp,temp2,temp3,temp4=F4("123")
print(temp,temp2,temp3,temp4)


--函数类型
print(type(F4))


--不支持函数重载，默认调用最后一个声明的函数


--变长参数
function F6(...)
	--变长参数的使用  用一个表存起来 再用
	arg={...}
	for i=1,#arg do
		print(arg[i])
	end
end
F6(1,"123",true,4,5,6)

--函数嵌套
 function F8()
 	return function()
 		print("231")
 	end
 end
 f9=F8()
 f9()


 function F9(x)
 	return function(y)
 		return x+y
 	end
 end

 f10=F9(10)
 print(f10(5))



function F1(x)

	return function()

		return x

	end

end
f2=F1(5)
print(f2())