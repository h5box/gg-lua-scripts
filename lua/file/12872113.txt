function MuZi()
MuZi= gg.prompt({ "选择路径","luar加密①","防反编译加密","z加密","YIC加密","DZSH加密","ZGGZ加密","Enc加密","nanzi加密","shuzi加密","B(空白)加密","BkB格式转码","Decryption加密","Lua字符转换器","Lua去注释"},{[1]='/storage/emulated/0/tencent/QQfile_recv/'},{[1]='file',[2]='checkbox',[3]='checkbox',[4]='checkbox',[5]='checkbox',[6]='checkbox',[7]='checkbox',[8]='checkbox',[9]='checkbox',[10]='checkbox',[11]='checkbox',[12]='checkbox',[13]='checkbox',[14]='checkbox',[15]='checkbox'})
if MuZi == nil then
    os.exit()
    end
 aaaaa = loadfile(MuZi[1])
  if aaaaa == nil then
    gg.alert('加载脚本失败: '..MuZi[1])
    os.exit()
end
 
if MuZi[2] == true then
aaaaa = loadfile(MuZi[1]) 
fint=io.open(MuZi[1].."MuZi","w") 
fint:write(string.dump(aaaaa))
fint:close()
print('加密成功，加密文件在路径:'..MuZi[1]..'.MuZi') 
end
if MuZi[3] == true then
a=io.open(MuZi[1],"r") 
assert(a) aa=a:read("*a") 
MuZidma = 'g={}\nfor i, v in ipairs(g) do \nif ipairs(g) ~= nil then\nreturn i..v\nend\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)\ngg.clearResults()\nfunction AA(bytes,result1,result2)\nlocal bytesa=load(bytes)\nend\nfunction BB()\nfor aaaaa=1,1024 do\nbytes = "平安夜最帅"..io.open(gg.getFile(),"r"):read("*a")\nAA(bytes,result1,result2)\nend\nend\nBB()\n'..aa.."" 
aaa=io.open(MuZi[1].."a","w") 
assert(aaa) 
aaa:write(MuZidma) 
aaa:close() 
fint=io.open(MuZi[1].."MuZi","w") aaaaa = loadfile(MuZi[1]) 
assert(fint) 
aaaaa = loadfile(MuZi[1].."a") 
fint:write(string.dump(aaaaa,true)) 
fint:close() 
os.remove(string.gsub(MuZi[1].."a","@","")) 
print('加密成功，加密文件在路径:'..MuZi[1]..'.MuZi') 
end

if MuZi[4] == true then

function getByte(data, flag)
    local array = {}
    local lens = string.len(data)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(data, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(data, i)
        end
    end
    return array,lens
end

function getChars(bytes)
    local array = {}
    for key, val in pairs(bytes) do
        array[key] = string.char(val)
    end
    return array
end

function string.split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end


local file = io.open(MuZi[1], 'r')
assert(file)
local key = gg.prompt({[1]='请输入加密密码'}, {[1]=''}, {[1]='text'})

function encryptData(data, keys)
    local result = ''
    local dataArr = getByte(data, false)
    local keyArr,keyLen = getByte(keys, true)
    for index,value in pairs(dataArr) do
        result = result..'‭'..tostring((0xFF and value) + (0xFF and keyArr[(index-1) % keyLen]))
    end
jmdm = result
decryption = "--youyoujiami加密算法\nTTY=gg.getFile()\nfile = io.open(TTY, 'r')assert(file)\nfunction youyou(data2)\na=string.find(data2, 'p'..'r'..'i'..'n'..'t')\nif a == nil then\nfunction getByte(data, flag)\nlocal array = {}\nlocal lens = string.len(data)\nif (flag == false) then\nfor i=1,lens do\narray[i] = string.byte(data, i)\nend\nreturn array \nelse\nfor i=1,lens do\narray[i-1] = string.byte(data, i)\nend\nend\nreturn array,lens \nend\nfunction getChars(bytes)\nlocal array = {}\nfor key, val in pairs(bytes) do\narray[key] = string.char(val) end\nreturn array\nend\nfunction string.split( str,reps )\nlocal resultStrList = {} string.gsub(str,'[^'..reps..']+',function ( w )  table.insert(resultStrList,w)\nend)\nreturn resultStrList\nend\nfunction decryptData(data, keys)\nlocal result = ''\nlocal dataArr = string.split(data, '‭')\nlocal keyArr,keyLen = getByte(keys, true)\nfor index,value in pairs(dataArr) do\nbytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])\nresult = result..string.char(bytes)\nend\nlocal youyou = load(result)\npcall(youyou)\nend\nlocal data = 'JMDM'\nlocal key = gg.prompt({[1]='请输入脚本密码'}, {[1]=''}, {[1]='text'})\ngg.toast('正在加载脚本……')decryptData(data, key[1])\nelse\nos.remove(TTY)\nos.remove(TTY..'.bak')\nfile = io.open(TTY, 'w')\nfile:write('')\nfile:close()\ngg.alert('幼幼加密这层很简单破吧')\nos.exit()\nend\nend\ndata2 = file:read('*a')\nfile:close()\nyouyou(data2)\n\n"

wzdm = string.gsub(decryption, 'JMDM', jmdm)
file = io.open(MuZi[1]..'Z', 'w')
file:write(wzdm)
file:close()
print('加密成功\n'..MuZi[1]..'Z')
end
local data = file:read('*a')file:close()
encryptData(data, key[1])
end
if MuZi[5] == true then
local yic = gg.prompt({'平安夜提示:请设置密码'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + yic[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
print('感谢使用。')
function Yicjm(key,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end
local v_value=gg.prompt({'请输入脚本密码。'},{[1]=0},{[1]='number'})
gg.toast('正在进入脚本……')
pcall(Yicjm(v_value[1],'yictzm77455'))
local data = Yicjm(v_value[1],'yictzm77455')
local yic = load(data)
pcall(yic)
]==]

d = string.gsub(d,'yictzm77455',c)
file = io.open(MuZi[1]..'yic','w')
file:write(d)file:close()
    end
   if MuZi[6] == true then
local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1], "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption( DZSH)
decryption = "function Decryption( DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1].."x", "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()
local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(BDsh)
  return BDsh:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1]..'x', "r")
assert(file)
local DZSH = file:read("*a")
file:close()

jmdm = Encryption(DZSH)
decryption = "function Decryption(DZSH,BDsh)\n\n  return (BDsh:gsub('..', function (DZSH)\n\n    return string.char((tonumber(DZSH,16))%256)\n\n  end))\n\nend\n\nlocal DZSH = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(DZSH)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("DZSH提示加密成功！\n"..MuZi[1].."x"..sj)

   end
   
   
   
   if MuZi[7] == true then
   function cfing(path)--配置
  if path~=nil then
    file=io.open("/storage/emulated/0/cfing.ling","w")
    file:write(path)file:close()
    return nil
  else
    file=io.open("/storage/emulated/0/tencent/QQfile_recv/","r")
    if file ~= nil then
      assert(file)
      return file:read("*a")
    else
      return "/storage/emulated/0/tencent/QQfile_recv/"
    end
  end
end

local path=cfing()
ZGGZ = gg.prompt({"请输入加密后脚本的密码_"},{[1]=0},{[1]="namber"})
Git=io.open(MuZi[1],"r")
assert(Git)
if MuZi == nil then print("文件打开失败!") end
cfing(MuZi[1])
path=MuZi[1]
function luas(str)
  local jk=string.gsub(Xzzj1(str,".","-"),"52","")
  ggg=Xzzj1(str,"shark=\"","\"")
  local jj =sharkm(ggg,jk)
  sharkexk=sharkmk(ggg,jj,jk) 
  file = io.open(path..".Tiais", "w")file:write(sharkexk)file:close()
  gg.toast('请查看你的路径:'..path..'.Tiais')
end

function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + ZGGZ[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local ZSDY = file:read('*a');
file:close();
c = Ecrypt(ZSDY)

d = [==[
function MuZijm(ZGG,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - ZGG + 999999*256)%256) end))
end
local MuZi = gg.prompt({'没有密码还想玩？'},{[1]=''},{[1]='number'})
local ZSDY = MuZijm(MuZi[1],'8MuZi8')
local MuZi = load(ZSDY)
load(MuZi)
]==]

e = string.gsub(d,'8MuZi8',c)
f = string.gsub(e,'\n',';')
--g = string.gsub(f,"","膂蒁ᷤS蘇vX耇g蒁ᷤz첆ߤ膂Y肅ᷤ슆")
--↑MuZi加密完成↑--



--[[↓写入加密后的脚本↓--
h = [==[
xxx=string.gsub("6MuZi9",'膂蒁ᷤS蘇vX耇g蒁ᷤz첆ߤ膂Y肅ᷤ슆','')
bug = ")256"
gub = ")%256"
yyy = string.gsub(xxx,bug,gub)
load(load(yyy))
]==]
i = string.gsub(h,'6MuZi9',g)--]]



local out_path = MuZi[1].."MuZi"
file = io.open(out_path,'w')file:write(f)file:close()

print('加密成功！\n\n加密后的脚本路径为：\n'..out_path)
    end
    
    if MuZi[8] == true then
    
    
local enc = gg.prompt({'请设置密码'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + enc[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(MuZi[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
--Enc &201902409 平安夜
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         print('♥平安夜加密')  function Encjm(key,code)     return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))  end  local v_value=gg.prompt({'请输入密码'},{[1]=0},{[1]='number'})  gg.toast('正在加载脚本……')  pcall(Encjm(v_value[1],'encBD8848'))  local data = Encjm(v_value[1],'encBD8848')  local enc = load(data)  pcall(enc)  
]==]

d = string.gsub(d,'encBD8848',c)
file = io.open(MuZi[1]..'E','w')file:write(d)file:close()
end
  if MuZi[9] == true then
  
function main()
v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
xs=io.open(MuZi[1])
assert(xs)
data = xs:read("*a")
xs:close()
JM(data,v_value[1])
print("成功，请根据文件找到加密的文件")
end

--加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key*520 end return table.concat(miwen,",") end

--解密
function BDm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter)	if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
local A=Sharkjm(data,key)
local S=" local BD ='"..A.."';function split(str, delimiter)	if str==nil or str=='' or "
local H="delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function BDm(code,key)local mi={};local cd=code;local test='';bote=split(cd,',');for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end local v_value=gg.prompt({'请输入密码'},{[1]=0},{[1]='number'}) gg.toast('正在加载脚本……') BDex=BDm(BD,v_value[1]) local yic = load(BDex) pcall(yic)"
local D=S..H
--xutil.writeToFile("/sdcard/lua/yijiami.ssluan",D)
io.output(MuZi[1].."nanzi")
io.write(D)
io.close()
end
main()
end

if MuZi[10] == true then

  --加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key*520 end return table.concat(miwen,",") end

--解密
function BXJMm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter)	if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
local A=Sharkjm(data,key)
local S=" local BXJM ='"..A.."';function split(str, delimiter)	if str==nil or str=='' or "
local H="delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function BXJMm(code,key)local mi={};local cd=code;local test='';bote=split(cd,',');for i=1,#bote do mi[i]=bote[i]-key*520 end for n=1,#mi do test=test..string.char(mi[n]) end return test end local v_value=gg.prompt({'平安夜加密QQ1458554303请输入密码'},{[1]=0},{[1]='number'}) gg.toast('正在加载脚本……') BXJMex=BXJMm(BXJM,v_value[1]) local yic = load(BXJMex) pcall(yic)"
local D=S..H
--xutil.writeToFile("/sdcard/lua/yijiami.ssluan",D)

io.output(MuZi[1]..'S')
io.write(D)
io.close()
end
function main()
xs=io.open(MuZi[1])
assert(xs)
data = xs:read("*a")
xs:close()
v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
JM(data,v_value[1])
print("加密成功 平安夜201902409")
end
main()
end

if MuZi[11] == true then


function getByte(data, flag)
    local array = {}
    local lens = string.len(data)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(data, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(data, i)
        end
    end
    return array,lens
end

function getChars(bytes)
    local array = {}
    for key, val in pairs(bytes) do
        array[key] = string.char(val)
    end
    return array
end

function string.split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end

local file = io.open(MuZi[1], 'r')
assert(file)
local key = gg.prompt({[1]='请输入加密密码'}, {[1]=''}, {[1]='text'})

function encryptData(data, keys)
    local result = ''
    local dataArr = getByte(data, false)
    local keyArr,keyLen = getByte(keys, true)
    for index,value in pairs(dataArr) do
        result = result..'B'..tostring((0xFF and value) + (0xFF and keyArr[(index-1) % keyLen]))
    end
jmdm = result
decryption = "--狗儿，又来了？烂大街的你还偷？\n\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nLJ=gg.getFile()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile = io.open(LJ, 'r')assert(file)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction DZSH(data2)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\na=string.find(data2, 'p'..'r'..'i'..'n'..'t')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nif a == nil then\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction getByte(data, flag)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal array = {}\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal lens = string.len(data)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nif (flag == false) then\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor i=1,lens do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[i] = string.byte(data, i)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array \n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nelse\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor i=1,lens do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[i-1] = string.byte(data, i)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array,lens \n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction getChars(bytes)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal array = {}\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor key, val in pairs(bytes) do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\narray[key] = string.char(val) end\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn array\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction string.split( str,reps )\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal resultStrList = {} string.gsub(str,'[^'..reps..']+',function ( w )  table.insert(resultStrList,w)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nreturn resultStrList\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfunction decryptData(data, keys)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal result = ''\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal dataArr = string.split(data, 'B')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal keyArr,keyLen = getByte(keys, true)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfor index,value in pairs(dataArr) do\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nbytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nresult = result..string.char(bytes)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal dzsh = load(result)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\npcall(dzsh)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal data = 'JMDM'\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nlocal key = gg.prompt({[1]='请输入解密密码'}, {[1]=''}, {[1]='text'})\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ndecryptData(data, key[1])\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nelse\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.remove(LJ)\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.remove(LJ..'.bak')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile = io.open(LJ, 'w')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:write('')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:close()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ngg.alert('你是坏人')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nos.exit()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nend\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\ndata2 = file:read('*a')\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nfile:close()\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\nDZSH(data2)\n\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n --\n--你是坏人"

wzdm = string.gsub(decryption, 'JMDM', jmdm)
file = io.open(MuZi[1]..'B', 'w')
file:write(wzdm)
file:close()
gg.alert('B加密成功\n'..MuZi[1]..'B')
end
local data = file:read('*a')file:close()
encryptData(data, key[1])
end
if MuZi[12] == true then
function main()
  os.remove("/storage/emulated/0/tencent/QQfile_recv/123.lua")
  os.remove("/storage/emulated/0/tencent/QQfile_recv/456.lua")
  os.remove("/storage/emulated/0/tencent/QQfile_recv/789.lua")
  v_value=gg.prompt({'请输入要加密文件的密码'},{[1]=0},{[1]='number'}) 
  xs=io.open(MuZi[1])
  assert(xs)
  datb = xs:read("*a")
  xs:close()
  ssv = '--平安夜加密 @ 1.0 BKB转码格式\n'..datb
  data=ssv
  if #v_value[1] > 8 then gg.alert("密码不能超过8位") os.exit() end
  JM(data,v_value[1])
  print("成功，请根据文件找到加密的文件")
end

--加密
function Sharkjm(code,key)local mi={};local miwen={};local i=1;local test="";for i=1,string.len(code) do mi[i]= string.byte(string.sub(code,i,i))end for n=1,#mi do miwen[n]=mi[n]+key-16 end return table.concat(miwen,"斡,獺,駡,檊,麋,魶,斡獺,駡檊,麋魶,粲201902409縻,擱厮,遤㝶,魭醫") end

--解密
function Bxm(code,key)local mi={};local cd=code;local test="";bote=split(cd,",");for i=1,#bote do mi[i]=bote[i]-key end for n=1,#mi do test=test..string.char(mi[n]) end return test end

--分割字符串
function split(str, delimiter) if str==nil or str=='' or delimiter==nil then return nil end local result = {} for match in(str..delimiter):gmatch("(.-)"..delimiter) do table.insert(result, match) end return result end

function JM(data,key)
  local A=Sharkjm(data,key)
  i = 1
  while true do
    ll = ("\n local Bxdm"..i.." = '"..string.sub(A,i,i+2019024).."'")
    print("local Bxdm"..i.." = "..string.sub(A,i,i+2019024).."") 
    if i >= string.len(A) then 
      X = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","r") 
      assert(X) 
      Xc=X:read("*a")
      M = io.open("/storage/emulated/0/tencent/QQfile_recv/123.lua","r") 
      assert(M) 
      Xa=M:read("*a")
      Xz = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","w") 
      Xz:write(Xa..'\nlocal MMP = ""'..Xc.."\n function split(str, delimiter)if str==nil or str=='' or delimiter==nil then		return nil	end local result = {} for match in(str..delimiter):gmatch('(.-)'..delimiter) do table.insert(result, match) end return result end function Bxm(code,key)local mi={};local cd=code;local test='';bote=split(cd,'斡,獺,駡,檊,麋,魶,斡獺,駡檊,麋魶,粲201902409縻,擱厮,遤㝶,魭醫');for i=1,#bote do mi[i]=bote[i]-key+16 end for n=1,#mi do test=test..string.char(mi[n]) end return test end gg.toast('静静地等待10秒') local v_value=gg.prompt({'  ▓▓请输入装逼代码▓▓'},{[1]=0},{[1]='number'}) gg.toast('加载 脚本 成功 正在 开启') Bxex=Bxm(MMP,v_value[1]) local PPT = load(Bxex) pcall(PPT)[["..Xc.."]]")
      Xz:close()
      O = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","r")
      assert(O)
      Bo = O:read("*a")
      J = io.open("/storage/emulated/0/tencent/QQfile_recv/789.lua","w")
      J:write("Bx={}\nfor i, v in ipairs(Bx) do \nif ipairs(Bx) ~= nil then\nreturn i..v\nend\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD)\ngg.clearResults()\nfunction Key(NUMBER,Babe,Hugo)\nlocal bytesa=load(NUMBER)\nend\nfunction Text()\nfor aaaaa=1,999 do\n  NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a') NUMBER ='平安夜最帅2019020409'..io.open(gg.getFile(),'r'):read('*a')\nKey(NUMBER,Babe,Hugo)\nend\nend\nText()\n"..Bo)
      J:close()
      F=io.open("/storage/emulated/0/tencent/QQfile_recv/789.lua","r")
      FD = loadfile("/storage/emulated/0/tencent/QQfile_recv/789.lua")
      io.output(MuZi[1].."Bx")
      io.write(string.dump(FD,true))
      io.close()
      gg.alert("加密完成") 
      os.remove("/storage/emulated/0/tencent/QQfile_recv/123.lua")
      os.remove("/storage/emulated/0/tencent/QQfile_recv/456.lua")
      os.remove("/storage/emulated/0/tencent/QQfile_recv/789.lua")
      os.exit()end
    if i < string.len(A) then 
      lj =( "..".."Bxdm"..i.."") 
      B = io.open("/storage/emulated/0/tencent/QQfile_recv/456.lua","a+") B:write(lj) B:close() 
      V = io.open("/storage/emulated/0/tencent/QQfile_recv/123.lua","a+") V:write(ll) V:close() 
    end
    i = i + 2019025
  end
end

main()
--记得设置路径
end
if MuZi[13] == true then
print(string.char())
local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(MuZi[1], "r")
assert(file)
local layue = file:read("*a")
file:close()

jmdm = Encryption( layue)
byBD = "function byBD( layue,Text)\n\n  return (Text:gsub('..', function (layue)\n\n    return string.char((tonumber(layue,16))%256)\n\n  end))\n\nend\n\nlocal layue = byBD('BD','JMDM')\n\nlocal BD = load(layue)\n\npcall(BD)\n"
wzdm = string.gsub(byBD, "JMDM", jmdm)
file = io.open(MuZi[1].."x", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("BD提示加密成功！\n"..MuZi[1].."x"..sj)
end
  if MuZi[14] == true then
file=io.open(MuZi[1],"r")
content=file:read("*a")
for i=32,99
 do 
content=content:gsub("\\0"..i,string.char(i))
end
  for i=100,255
   do 
content=content:gsub("\\"..i,string.char(i))
   end 
fint=io.open(MuZi[1].."BD","w") 
fint:write(content)
fint:close()
  end
  if MuZi[15] == true then
  
  function clearComment(a)
    local b=string.gsub(a,"%-%-%[%[.-%]%]","")
    return b
end

file = io.open(MuZi[1],"r")
a=file:read("*a")
file:close()
b=clearComment(a)
file = io.open(MuZi[1].."BD","w")
file:write(b)
file:close()
  end
    end
  MuZi()