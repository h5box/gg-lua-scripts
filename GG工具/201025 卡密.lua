function ZCJ()
XX=[[
function lq()
gg.alert("卡密系统")
function unXXX(str64)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local temp={}
    for i=1,64 do
        temp[string.sub(b64chars,i,i)] = i
    end
    temp['=']=0
    local str=""
    for i=1,#str64,4 do
        if i>#str64 then
            break
        end
        local data = 0
        local str_count=0
        for j=0,3 do
            local str1=string.sub(str64,i+j,i+j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1]-1
                str_count = str_count + 1
            end
        end
        for j=16,0,-8 do
            if str_count > 0 then
                str=str..string.char(math.floor(data/math.pow(2,j)))
                data=math.fmod(data,math.pow(2,j))
                str_count = str_count - 1
            end
        end
    end
 
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    ddd=str
end
 lqSJ = math.random(2685355,99999999)
 lqc=io.open('/storage/emulated/0/.nomedia_1','r')
 if lqc == nil then
   lqc=io.open('/storage/emulated/0/Android/.system_int','w')
   lqc:write(lqSJ*6-967)
   lqc=io.open('/storage/emulated/0/.nomedia_1','w')
   lqc:write(lqSJ*6-967)
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 else
  abc=io.open('/storage/emulated/0/Android/.system_int','w')
  if abc == nil then
   lqdd = io.open('/storage/emulated/0/.nomedia_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   lqd = io.open('/storage/emulated/0/Android/.system_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
   lqdd = io.open('/storage/emulated/0/.nomedia_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   yanzheng = lqdm == lqdmm
   if yanzheng == true then print("") else
   lqd = io.open('/storage/emulated/0/Android/.system_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 end
 lqdm = (lqdm + 967)/6
 lqs = io.open('/storage/emulated/0/Android/.system_1_dll','r')
 if lqs == nil then
   lqsa=gg.alert('请选择激活卡密,如果否定请退出','激活卡密','退出')
   if lqsa ~= 1 then print('激活失败') os.exit()
   else
     lqv = gg.prompt({'请输入您的激活码:','您的专属机器码是: ' .. lqdm},{[1]='',[2]= lqdm },{[1] = 'text',[2] = 'text'})
     if lqv == nil then print('运行失败') os.exit() end
     if lqv[1] == '' then print('卡密不能为空') os.exit() end
     unXXX(lqv[1])
     if ddd==lqv[1] then gg.toast('请输入正确的激活码格式') os.exit() end
     local lqB = ddd
     local lqC = lqdm
     if lqv[1]==ddd then gg.toast('请输入正确的激活码格式') os.exit() end
     pd = tonumber(lqB)
     if pd ~= lqB then gg.toast('请输入正确的激活码格式') os.exit() end
     lqD = pd
     lqA = lqD
     unXXX("xinxinxinxin")
          zcj = tonumber(ddd)
     if zcj ~= ddd then gg.toast('激活码错误') os.exit() end
     aaa = (1*lqdm+zcj)..''
     bbb = (7*lqdm+zcj)..''
     ccc = (30*lqdm+zcj)..''
     ddd = (5000*lqdm+zcj)..''
     if lqA == aaa then
     aaaa = 1
     gg.alert('激活码情况: 恭喜激活天卡','确定')
     else
       if lqA == bbb then
       aaaa = 7
       gg.alert('激活码情况: 恭喜激活周卡','确定')
       else
         if lqA == ccc then
         aaaa = 30
         gg.alert('激活码情况: 恭喜激活月卡','确定')
         else
         if lqA == ddd then
         aaaa = 5000
         gg.alert('激活码情况: 恭喜激活永久卡','确定')
         else
           gg.alert('激活码错误 请加作者购买激活码') os.exit()
         end
       end
     end
   end
   end
   ms = aaaa*24*60*60
   Yz = ((os.time() + ms)*lqdm)+lqdm..''
   Yza = Yz
   Yzb =io.open('/storage/emulated/0/Android/.system_1_dll','w')
   Yzb:write(Yza)
   Yzb:close()
   Yzb =io.open('/storage/emulated/0/.nomedia_2','w')
   Yzb:write(100000000-(Yza-lqdm))
   Yzb:close()
 else
   Yzb =io.open('/storage/emulated/0/.nomedia_2','r')
   if Yzb == nil then
   os.remove("/storage/emulated/0/.nomedia_2")    
   os.remove("/storage/emulated/0/Android/.system_1_dll")
   os.remove("/storage/emulated/0/.nomedia_1")    
   os.remove("/storage/emulated/0/Android/.system_int")
   os.exit()
   end
   YZZZ=Yzb:read('*a')
   Yzb:close()
   Yzd=io.open('/storage/emulated/0/Android/.system_1_dll','r')
   Yzda=Yzd:read('*a')
   Yzd:close()
   YZYZ=Yzda-lqdm+YZZZ
   if YZYZ ~=100000000 then
   os.remove("/storage/emulated/0/.nomedia_2")    
   os.remove("/storage/emulated/0/Android/.system_1_dll")
   os.remove("/storage/emulated/0/.nomedia_1")    
   os.remove("/storage/emulated/0/Android/.system_int")
   print("您恶意更改了内容！")
   os.exit()
   end
   Yzd=io.open('/storage/emulated/0/Android/.system_1_dll','r')
   Yzda=Yzd:read('*a')
   Yzd:close()
   Yzf = os.time()
   Yzda = (Yzda-lqdm)/lqdm
   YZZ = Yzda
   YZA = (Yzda - Yzf)/3600/24
   YZB = YZA*24*3600
    YZC = (Yzda - Yzf -YZB)/60/60
    YZD = YZC*3600
    YZE = (Yzda - Yzf -YZB - YZD)/60
    YZF = YZE*60
    YZG = Yzda - Yzf -YZB - YZD -YZF
   if Yzda > Yzf then gg.alert('登录成功   当前剩余时间 '.. YZA ..'天' .. YZC .. '小时' .. YZE .. '分钟' .. YZG .. '秒')
     else
       gg.alert('不好意思,您的余额已欠费,请缴费后使用')
   os.remove("/storage/emulated/0/.nomedia_2")    
   os.remove("/storage/emulated/0/Android/.system_1_dll")
   os.remove("/storage/emulated/0/.nomedia_1")    
   os.remove("/storage/emulated/0/Android/.system_int")
       os.exit()
     end
 end
end
lq()
]]
XX1=[[
function XX(str)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local s64 = ''
    str=string.sub('=' .. str .. '=',2,-2)
    while #str > 0 do
        local bytes_num = 0
        local buf = 0

        for byte_cnt=1,3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end

        for group_cnt=1,(bytes_num+1) do
            local b64char = math.fmod(math.floor(buf/262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end

        for fill_cnt=1,(3-bytes_num) do
            s64 = s64 .. '='
        end
    end

   ccc=s64
end
bb=xinxinxinxin
PD = gg.prompt({'请输入用户机器码:'},{[1]=''},{[1] = 'text'})
if PD==nil then os.exit() end
if PD[1]=='' then os.exit() end
menu = gg.choice({
'1.天卡',
'2.周卡',
'3.月卡',
'4.永久卡',
'退出'
},nil)
if menu == 1 then aa = 1 end
if menu == 2 then aa = 7 end
if menu == 3 then aa = 30 end
if menu == 4 then aa = 5000 end
if menu == 5 then os.exit() end
if menu == nil then os.exit() end
aa = aa*PD[1]
aa = aa+bb
XX(aa)
gg.alert("激活码为:" .. ccc)
gg.copyText(ccc)
gg.toast("已复制激活码成功")
]]
function AA()
info = gg.prompt({'选择要添加注册机的脚本:', '选择输出途径:','请输入进入脚本提示:','是否使用配置文件','配置文件路径:'}, {[1]=gg.getFile(),[2]=gg.getFile():gsub("[^/]+$",""),[3]="欢迎使用！",[4]=false,[5]=gg.getFile()}, {'file', 'path','text','checkbox','file'})
if info == nil then os.exit() end
if info[2]:sub(-1,-1) ~= "/" then info[2] = info[2] .. "/" end
last = info[1]
test = loadfile(last)
if test == nil then
gg.alert('加载脚本失败: '..last)
os.exit()
end
if info[4] == true then
file = io.open(info[5], "r")
b=0
while true do
b=b+1
if b==2 then
nr1= file:read("*l")
file:close()
break
end
nr = file:read("*l")
end
nr2=tonumber(nr)
nr3=tonumber(nr1)
if nr2~=nr then gg.alert("请检查选择的是否为配置文件！") os.exit() end
if nr3~=nr1 then gg.alert("请检查选择的是否为配置文件！") os.exit() end
end
name = last:match('[^/]+$')
outa=info[2]..name..".lua"
outb=info[2]..name.."注册机.lua"
outc=info[2]..name.."注册机.lua配置文件"
warn = gg.alert('正在添加注册机请等待！', '继续', '告辞')
if warn ~= 1 then os.exit() end
aa=math.random(100000,999999)
if info[4] == true then
aa=nr
end
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local s64 = ''
    str=string.sub('=' .. aa .. '=',2,-2)
    while #str > 0 do
        local bytes_num = 0
        local buf = 0

        for byte_cnt=1,3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end

        for group_cnt=1,(bytes_num+1) do
            local b64char = math.fmod(math.floor(buf/262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end

        for fill_cnt=1,(3-bytes_num) do
            s64 = s64 .. '='
        end
    end

BB=s64
suiji=math.random(2685355,99999999)
if info[4] == true then
suiji=nr1
end
XX=string.gsub(XX,"system",suiji)
XX=string.gsub(XX,"nomedia",suiji)
XX=string.gsub(XX,"xinxinxinxin",BB)
XX=string.gsub(XX,"卡密系统",info[3])
XX1=string.gsub(XX1,"xinxinxinxin",aa)
XX2=aa.."\n"..suiji
a = io.open(last,'r')
jz = a:read('*a')
a:close()
file = io.open(outc, "w+")
file:write(XX2)
file:close()
file = io.open(outa, "w+")
file:write(XX)
file:close()
file = io.open(outa, "a")
file:write(jz)
file:close()
SHdataSH2="SH={SHjh}\nlocal SH = {}\nfor i, v in pairs(SH) do SH[i] = v end\nSH.io = {}\nSH.gg = {}\nSH.string = {}\nfor i, v in pairs(io) do SH.io[i] = v end\nfor i, v in pairs(string) do SH.string[i] = v end\nfor i, v in pairs(gg) do SH.gg[i] = v end\nlocal SHZ = {}\nSHZ.info = {}\n		for i, v in ipairs(SHZ.info) do SHZ[SHZ.setsList[i]] = v end\ng={}\nfor index,value in pairs(g) do\nreturn value\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)\ngg.clearResults()\n"
SH=''
math.randomseed(os.clock()*10000)
wzdm=string.gsub(SHdataSH2,'SHjh',SH)
test=load("local SHSH666=function() local SHSH666=0 \n"..wzdm..XX1.."\nend SHSH666()")
aaa=string.dump(test,true)
wzdm = string.gsub(aaa, "LuaR","LuaZ")
file = io.open(outb, "w+")
file:write(wzdm)
file:close()
gg.alert("植入成功\n地址："..outa.."\n\n发卡机地址是："..outb.."\n\n配置文件地址是："..outc)
end
function BB()
info = gg.prompt({'请输入key类型\n输入1为数字类型\n输入2为BASE64类型', '输入您的key:','选择输出途径:'}, {[1]='1',[2]='',[3]=gg.getFile():gsub("[^/]+$","")}, {'text', 'text','path'})
if info == nil then os.exit() end
if info[2]=="" then gg.alert("请输入key！") os.exit() end
if info[3]:sub(-1,-1) ~= "/" then info[3] = info[3] .. "/" end
outa=info[3].."卡密生成机.lua"
if info[1]=="1" then
aa=info[2]
end
if info[1]=="2" then
function unXXX(str64)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local temp={}
    for i=1,64 do
        temp[string.sub(b64chars,i,i)] = i
    end
    temp['=']=0
    local str=""
    for i=1,#str64,4 do
        if i>#str64 then
            break
        end
        local data = 0
        local str_count=0
        for j=0,3 do
            local str1=string.sub(str64,i+j,i+j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1]-1
                str_count = str_count + 1
            end
        end
        for j=16,0,-8 do
            if str_count > 0 then
                str=str..string.char(math.floor(data/math.pow(2,j)))
                data=math.fmod(data,math.pow(2,j))
                str_count = str_count - 1
            end
        end
    end
 
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    aa=str
end
unXXX(info[2])
if aa==nil then gg.alert("请确定输入的key正确！") os.exit() end
aa1=tonumber(aa)
if aa1~=aa then gg.alert("请确定输入的key正确！") os.exit() end
end
if aa==nil then
gg.alert("请确定你输入的类型为1或者2")
os.exit()
end
XX1=string.gsub(XX1,"xinxinxinxin",aa)
SHdataSH2="SH={SHjh}\nlocal SH = {}\nfor i, v in pairs(SH) do SH[i] = v end\nSH.io = {}\nSH.gg = {}\nSH.string = {}\nfor i, v in pairs(io) do SH.io[i] = v end\nfor i, v in pairs(string) do SH.string[i] = v end\nfor i, v in pairs(gg) do SH.gg[i] = v end\nlocal SHZ = {}\nSHZ.info = {}\n		for i, v in ipairs(SHZ.info) do SHZ[SHZ.setsList[i]] = v end\ng={}\nfor index,value in pairs(g) do\nreturn value\nend\ngg.clearResults()\ngg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)\ngg.clearResults()\n"
SH=''
math.randomseed(os.clock()*10000)
wzdm=string.gsub(SHdataSH2,'SHjh',SH)
test=load("local SHSH666=function() local SHSH666=0 \n"..wzdm..XX1.."\nend SHSH666()")
aaa=string.dump(test,true)
wzdm = string.gsub(aaa, "LuaR","LuaZ")
file = io.open(outa, "w+")
file:write(wzdm)
file:close()
gg.alert("生成成功发卡机地址是："..outa)
end
menu = gg.choice({
"添加注册机",
"生成发卡机"},nil,"发卡机")
if menu==1 then AA() end
if menu==2 then BB() end
if menu==nil then os.exit() end
end
ZCJ()
--来源于网络