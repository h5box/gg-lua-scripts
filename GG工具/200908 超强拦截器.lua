if gg.alert("是否加入群聊","是","否") ~=1 then  os.exit() end gg.alert("已复制群号\n欢迎你的加入！！！")gg.copyText(973671359)

arm = string.char
--配置
ark,Ara={},{}
--路径
O="/sdcard/..STAR/"
U="/sdcard/..STAR/"
local file=io.open("/storage/emulated/0/tencent/.OO配置","r")
--拦截器配置
S=gg.prompt({
"📁载入文件",
"📂输送文件",
"Char",
"Log",
"Load",
"Table捕捉范围大小设置",
"Table捕捉",
"Os.exit跳过",
"感言"

},{
[1]=O,
[2]=U,
[3]=false,
[4]=true,
[5]=false,
[6]="3000",
[7]=false,
[8]=false,
[9]="SMZ"
},{
"file",
"path",
"checkbox",
"checkbox",
"checkbox",
"text",
"checkbox",
"checkbox",
"text"
})

if S==nil then os.exit() end

if S[3]==true then
local fnchar = S[2]..'[Char字符串劫持]'
local fof = io.open(fnchar, 'w')			
string.char = function (...)
local arg = {...}
local fof = io.open(fnchar, 'a')		
if arg[1] ~= nil then
fof:write((arm(arg[1])))		
end
return arm(...)
end
end
if S[4]==true then
awq=gg.setRanges
function gg.setRanges(...)


if true then
yx2={}
local orig = gg.multiChoice
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
table.insert(yx2,arg[1])
    print(arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
  end
  gg.multiChoice = hook--将hook函数应用到gg.searchNumber
  
  
  yx={}
  local orig = gg.choice
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
    table.insert(yx,arg[1])
--将可变参数转成一个表
    print(arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
  end
  gg.choice = hook--将hook函数应用到gg.searchNumber
  
  local orig = os.rename
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
    xy=gg.prompt({"原","重命名为"},{arg[1],arg[2]},{"text","text"})
    return true
  end
  os.rename = hook--将hook函数应用到gg.searchNumber





if yx or yx2 ~= nil then



local orig = gg.getValues
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
    return true
  end
  gg.getValues = hook--将hook函数应用到gg.searchNumber




	
 


local orig = debug.getinfo
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
    xy=gg.prompt({"返回"},nil,{"text"})
    a={short_src=xy[1]}
    return a--返回原函数效果
  end
  debug.getinfo = hook--将hook函数应用到gg.searchNumber
			

local orig = gg.setRanges
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
    
    print("gg.setRanges:"..arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
  end
  gg.setRanges = hook--将hook函数应用到gg.searchNumber



ss={}
local orig = gg.searchNumber
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
	if tonumber(arg[1]) ~= nil then
	print("gg.searchNumber"..arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
    else
	if string.find(arg[1],";") ~= nil then
    print("gg.searchNumber"..arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
  end
  end
  end
  gg.searchNumber = hook--将hook函数应用到gg.searchNumber
  
  
  
					
  
  
  xg={}
  local orig = gg.getResults
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表

    print("gg.getResults:"..arg[1])--打印第一个参数
    return orig(...)--返回原函数效果
  end
  gg.getResults = hook--将hook函数应用到gg.searchNumber
  
  
  
  
  local orig = gg.editAll
--创建原函数备份
  local hook = function (...)
--敲黑板，在这里，hook=function(...)其实就是相当于function hook(...)而括号内的三个点，指的是可变参数，这样就不需要一个一个输入参数了
    local arg = {...}
--将可变参数转成一个表
    if tonumber(arg[1]) ~= nil then
	print("gg.editAll"..arg[1].."\n----------------")--打印第一个参数
    return orig(...)--返回原函数效果
    else
	if string.find(arg[1],";") ~= nil then
    print("gg.editAll"..arg[1].."\n----------------")--打印第一个参数
    return orig(...)--返回原函数效果
  end
  end
  end
  gg.editAll = hook--将hook函数应用到gg.searchNumber
  end
  end
-----------
awq(...)
end
end
if S[5]==true then
mmss=gg.alert("选择方式","1","2")
if mmss==2 then
if true then
function LOAD()
a=debug.getinfo(load)
return a
end
Load=LOAD()
local xerox=debug.getinfo
local enyby=function(...)
local code=(...)
if code==load then
result=Load
end
return result
end
debug.getinfo=enyby
end
end
local SS = gg.alert
local io_open = io.open
local tr = {}
local load_cnt = 0
local fname = S[2]..'.[Load].lua'
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]
local hook = 1
local type = v
hook = function (...)
local arg = {...}
local content = arg[1]
if type == 0 then
content = nil
local f = io_open(arg[1], "rb")
if f ~= nil then
content = f:read("*a")
f:close()
end
end
if content ~= nil then
local file = fname..load_cnt..'.lua'
local f = io_open(file, 'w')
f:write(content)
print(content)
f:close()
SS('拦截文件：'..load_cnt.."次",'获取文件：'..#content..'字符\n',"继续")
print(arg[1])
load_cnt = load_cnt + 1
end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
end
if S[7]==true then
for i, v in pairs(gg) do
if type(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
gg[i] = function (...)
local f = io.open(S[2]..".table捕捉", 'a')
if string.find(i,'addListItems')==nil then
--f:write('gg.'..i..'：\n')
for j, a in ipairs({...}) do
if j ~= 1 then f:write(', ') end
if type(a) == 'string' then f:write('"') end
if string.len(tostring(a))< tonumber(S[6]) then f:write(tostring(a))
f:write(tostring(a)) end
if type(a) == 'string' then f:write('"') f:write('"')end
end
f:write("\n")
f:close()
end
return v(...)
end
end
end
end

if S[8]== true then
local orig = os.exit
local hook = 1
hook = function (...)
ggfh=gg.alert("是否允许退出", "允许", "不允许")
local arg = {...}					
if ggfh==1 then
select= orig(...)
else
select=gg.setVisible(true)
end
return select
end
os.exit	 = hook
end

if true then
local orig = gg.saveList
local hook = 1
hook = function (...)
local arg = {...}
zzir=str(arg[1])
TYU("尝试刷取:"..zzir)
return true
end
gg.saveList = hook
end
DOG=loadfile(S[1])()