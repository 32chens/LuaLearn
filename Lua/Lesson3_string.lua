s="asd"
a="好"
--一个汉字占3个长度
--一个字母占1个长度
print(#s)
print(#a)

s=[[woshi
chen
lf
]]
print(s)

print("123".."123")--nil不支持string拼接

print(string.format("woshi chnelf,jinnian %d sui",18))


str="abCdefgCd"
print(string.find(str,"Cde"))
print(string.sub(str,3,4))
print(string.reverse(str))
print(string.rep(str,2))
print(string.gsub(str,"Cd","**"))