;

local app = {}
function Assert(data)   --判断
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)   --判断
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)   --把所有类型组成一个数组防不写类型
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)   --内存搜索，参数为(内存， 特征码数组， 类型(类型可空))
gg.setVisible(false)
local isok = mearrass(memory, array)
if isok then
local isok, datatype = typetab(array, type)
if isok then
if Assert(array[1].hv) then   --判断主特征码是否有hv，有即范围搜索
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])   --有hv进行范围搜索
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])   --普通搜索
end
if gg.getResultCount() == 0 then   --判断搜索到值没
return false   --没搜到值返回false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())   --保存搜索到的数据到data
gg.clearResults()
for i = 1, #data do
data[i].isok = true   --把搜索到的值，全部设置为true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do   --遍历内存
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then   --判断副特征码是否有hv参数
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
--↑↑↑进行范围判断
data[z].isok = false   --不符合条件的设置为false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then   --普通判断(没有hv参数)
data[z].isok = false   --不符合设置为false
end
end
end
end
for i = 1, #data do   --重新遍历数组
if data[i].isok then   --判断是否为true(符合条件的)
tab[#tab + 1] = data[i].address   --把符合条件的地址写入数组
end
end
if #tab > 0 then   --判断地址数组是否大于0，大于0就是搜到了符合条件的值，反之没搜到
return true, tab   --搜到返回true和地址数组
else
return false   --没搜到返回false
end
end
else
print("type参数错误")   --类型错误
gg.toast("type参数错误")
os.exit()
end
else
print("memory or array参数错误")   --内存或类型错误
gg.toast("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)   --读内存，参数为(地址，类型)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value   --读到返回true和读到得值
else
return false   --反之返回false
end
end
function app.memorywrite(addr, type, value, freeze)   --写内存，参数为(地址，类型，写入得值，是否冻结(可空))
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then   --判断是否有冻结参数
t[1].freeze = freeze
--gg.setValues(t)   --这行自行选择，如果有这行，false会修改并保存到列表，如果没这行，false只会保存到列表而不会修改
return gg.addListItems(t)   --成功返回true
else
return gg.setValues(t)   --成功返回true
end
else
return false   --失败
end
end



--↓↓↓用上边的代码进行二次封装出来的指针写法
qmnb = function(daarr)
local array = {}
for i = 1, #daarr["搜索数组"] do
local data = {["lv"] = daarr["搜索数组"][i][1], ["offset"] = daarr["搜索数组"][i][2], ["type"] = daarr["搜索类型"]}
table.insert(array, i, data)
end
local isok, data = app.memorysearch(daarr["搜索内存"], array)
if isok then
for i = 1, #data do
for x = 1, #daarr["修改数组"] do
app.memorywrite(data[i] + daarr["修改数组"][x][2], daarr["搜索类型"], daarr["修改数组"][x][1])
end
end
gg.toast(daarr["功能名称"] .. "开启成功，共修改" .. #data * #daarr["修改数组"] .. "条数据")
else
gg.toast(daarr["功能名称"] .. "开启失败")
end
end
gg.alert("1月6日，作者K6然后复制链接即可  作者QQ3461907963,  ！！！")


--↑↑↑
function yiyz_Main()
  SN = gg.multiChoice({
"K6已破解 必开 (登陆界面)1",
"下面的我没更新好2",
"请大家谅解3",
"我刚学做源码！(登陆界面)4",
"我会马上更新的(登陆界面)5",
"1月15日(登陆界面)6",
"我会全更新好的(登陆界面)7",
"K6顶尖无后座8",
"K6哥哥操妹妹9",
"不可用(靶场)10",
"不可用(靶场)11",
"不可用(靶场)12",
"不可用(靶场)13",
"不可用(靶场)14",
"不可用(靶场)15",
"可用(落地)16",
"必开义范围锁甲(出生岛)17",
"不可用(出生岛)18",
"不可用(出生岛)19",
"不可用(出生岛)20",
"不可用(出生岛)21",
"不可用(出生岛)22",
"不可用(出生岛)23",
"必开义大号禁止范围锁头大范围(出生岛)24",
"不可用(出生岛)25",
"不可用(出生岛)26",
"不可用(出生岛)27",
"不可用(登陆界面)28",
"不可用(出生岛)29",
"不可用(老图出生岛)30",
"不可用(新图出生岛)31",
"不可用(登陆界面)32",
"不可用(登陆界面)33",
"不可用(登陆界面)34",
"不可用(落地)35",
"不可用(落地)36",
"不可用(登陆界面)37",
"不可用(登陆界面)38",
"不可用(登陆界面)39",
"不可用(登陆界面)40",
"不可用53(登陆界面)41",
"不可用(登陆界面)42",
"不可用(登陆界面)43",
"不可用(靶场)44",
"加速可用(登陆界面)45",
"加速可用(登陆界面)46",
"不可用(大厅)47",
"不可用(捡去手雷前)48",
"不可用(随时)49",
"不可用(靶场)50",
"不可用(靶场)",
"不可用(飞机上开启)",
"不可用(登陆界面)53",
"不可用(落地)54",
"不可用(落地开启。不能坐车)55",
"不可用(落地)大号禁止56",
"不可用(登陆界面开启)57",
"不可用(靶场)58",
"不可用(出生岛)59",
"必开老防封(登陆界面)60",
"必开版锁甲锁头防(登陆界面)61",
"必开版本锁甲锁头防(登陆界面)62",
"必开(飞机上修改 详情请看提示)63",
"返回上一页"
}, nil, "K6自创脚本")
 if SN == nil then
  else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
    A()
  end
  if SN[3] == true then
    a3()
  end
  if SN[4] == true then
    a4()
  end
  if SN[5] == true then
    a5()
  end
  if SN[6] == true then
    a6()
  end
  if SN[7] == true then
    a7()
  end
  if SN[8] == true then
    a8()
  end
  if SN[9] == true then
    a9()
  end
  if SN[10] == true then
   a10()
  end
  if SN[11] == true then
   a11() b11() c11()
  end
  if SN[12] == true then
   a12() b12() c12()
  end
  if SN[13] == true then
   a13() b13() c13()
  end
  if SN[14] == true then
   a14() b14() 
  end
  if SN[15] == true then
   a15() b15()
  end
  if SN[16] == true then
   a16()
  end
  if SN[17] == true then
   a17()
  end
  if SN[18] == true then
   a18()
  end
  if SN[19] == true then
   a19()
  end
  if SN[20] == true then
   a20()
  end
  if SN[21] == true then
   a21()
  end
    if SN[22] == true then
   a22()
  end
  if SN[23] == true then
   a23() 
  end
  if SN[24] == true then
   a24() 
  end
  if SN[25] == true then
   a25() 
  end
    if SN[26] == true then
   a26() 
  end
  if SN[27] == true then
   a27() 
  end
  if SN[28] == true then
   a28()
  end
  if SN[29] == true then
   a29()
  end
  if SN[30] == true then
   a30()
  end
  if SN[31] == true then
   a31()
  end
  if SN[32] == true then
   a32()
  end        
   if SN[33] == true then
  a33() 
  end
  if SN[34] == true then
   a34()
  end
  if SN[35] == true then
   a35() 
  end  
  if SN[36] == true then
  a36()
  end
  if SN[37] == true then
  a37() 
 end
  if SN[38] == true then
   a38()
  end
   if SN[39] == true then
   a39()
  end
   if SN[40] == true then
   a40()
  end
  if SN[41] == true then
   a41()
  end
  if SN[42] == true then
   a42()
  end
   if SN[43] == true then
   a43()
  end
    if SN[44] == true then
   a44()
  end
  if SN[45] == true then
   a45()
  end
   if SN[46] == true then
   a46()
  end
   if SN[47] == true then
   a47()
  end
  if SN[48] == true then
   a48()
  end
  if SN[49] == true then
   a49()
  end
  if SN[50] == true then
   a50()
  end
   if SN[51] == true then
   a51()
  end
   if SN[52] == true then
   a52()
  end
   if SN[53] == true then
   a53()
  end
  if SN[54] == true then
   a54()
  end
  if SN[55] == true then
   a55()
  end  
   if SN[56] == true then
   a56()
  end  
   if SN[57] == true then
   a57()
  end    
  if SN[58] == true then
   a58()
  end  
  if SN[59] == true then
   a59()
  end  
  if SN[60] == true then
   a60() b60()
  end  
  if SN[61] == true then
   a61()
  end
  if SN[62] == true then
   a62()
  end
  if SN[63] == true then
   a63()
  end
  if SN[64] == true then
   exit()
  end
end
  XGCK = -1
end
function A1()
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A2()
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A3()
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A4() 
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A5() 
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A6()
 os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A7() 
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A8() 
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A9()
 os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A10() 
os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A11()
 os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A12()
 os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end

function A13()
 os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/UIScript/single_textures.json")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/UIScript/4051BDD0000f042.dat") end


function a1()
local memory = 4+1+32
local array = {
{["lv"] = 90308608, ["type"] = 4},
{["lv"] = 1728088958, ["offset"] = -8,["type"] = 4},
{["lv"] = 164608, ["offset"] = -12, ["type"] = 4},
{["lv"] = 140967941, ["offset"] = -16, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -8, 4, 1884972159)
end
gg.toast("K6操你防封第100步开启成功")
else
gg.toast("K6操你防封第100步开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 1048444928, ["type"] = 4},
{["lv"] = 1895851390, ["offset"] = -16, ["type"] = 4},
{["lv"] = 352768, ["offset"] = -20, ["type"] = 4},
{["lv"] = 90308613, ["offset"] = -24, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -16, 4, 1728055394)
end
gg.toast("K6操你防封第200步开启成功")
else
gg.toast("K6操你防封第200步开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 56754178, ["type"] = 4},
{["lv"] = 1946157196, ["offset"] = -4, ["type"] = 4},
{["lv"] = 287232, ["offset"] = -8, ["type"] = 4},
{["lv"] = 23199744, ["offset"] = -12, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -4, 4, 1882088818)
end
gg.toast("K6操你防封第500步开启成功")
else
gg.toast("K6操你防封第500步开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 352321667, ["type"] = 4},
{["lv"] = 23527425, ["offset"] = -32, ["type"] = 4},
{["lv"] = 357376, ["offset"] = -40, ["type"] = 4},
{["lv"] = 2003828737, ["offset"] = -44, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -44, 4, 1882088818)
end
gg.toast("K6防封第1000步开启成功")
else
gg.toast("K6防封第1000步开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 83886439, ["type"] = 4},
{["lv"] = 23527425, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1728081776, ["offset"] = -20, ["type"] = 4},
{["lv"] = 25344, ["offset"] = -24, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -20, 4, 1882088818)
end
gg.toast("防封K6哥哥操你妹妹开启成功")
else
gg.toast("防封K6操你妹妹开启失败")
end
end


function a3()
 a = gg.choice({
"K6操你4399客户端",
"K6操你网易客户端",
"K6操你Tt客户端",
"K6操你vivo客户端",
"K6操你九游客户端",
"K6操你一号玩家客户端",
"K6操你华为客户端",
"K6操你魅族客户端",
"K6操你一加和opp客户端",
"K6操你国际服客户端",
"K6操你小米客户端",
"K6操你7272客户端",
"bazhang客户端断"
}, 1, "请在登录游戏前或者游戏结束后，或者关闭游戏后执行，点击一下就执行成功了")
      if a == 1 then
        os.remove("rm-r/storage/emulated/0/Android/data/com.netease.hyxd.m4399/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 2 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.m4399/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 3 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.tzsy/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.tzsy/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 4 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.vivo/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.vivo/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 5 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.aligames/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.aligames/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 6 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.ewan/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 7 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.huawei/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.huawei/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 8 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.mz/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mz/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 9 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.nearme.gamecenter/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 10 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.ko/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.ko/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 11 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.mi/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.mi/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 12 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.qihoo/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.qihoo/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
      if a == 13 then
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/cache")
        os.remove("rm -r /storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Cache/LocalShaders")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/cache/crashHunter_compass.txt")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Config")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/NTDetectCache_temp")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/NTDetectCache")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Cache/LocalShaders/compiled.es3")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/UIScript/4040BDD0BA0f042.dat")
        os.remove("/storage/emulated/0/Android/data/com.netease.hyxd.ewan.bazhang/files/LocalData/Patch/UIScript/4051BDD0000f042.dat")
      end
    end
function a60()
local memory = 4+1+32
local array = {
{["lv"] = -1.54, ["type"] = 64},
{["lv"] = 1.823   , ["offset"] = 32, ["type"] = 64},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 32, 64, 5000)
end
gg.toast("K6操你防封第一步开启成功")
else
gg.toast("K6操你防封第一步开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 0.01, ["type"] = 64},
{["lv"] = 0.1   , ["offset"] = -16, ["type"] = 64},
{["lv"] = 1.1   , ["offset"] = -32, ["type"] = 64},
{["lv"] = 0.1  , ["offset"] = -48, ["type"] = 64},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + -48, 64, 1000000)
end
gg.toast("K6操你防封第二步A版本开启成功")
else
gg.toast("K6操你防封第二步A版本开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 5.4, ["type"] = 64},
{["lv"] = 1.0E-5  , ["offset"] = 80, ["type"] = 64},
{["lv"] = 0.8   , ["offset"] = 160, ["type"] = 64},
{["lv"] = 0.1  , ["offset"] = 176, ["type"] = 64},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 176, 64, 1000000)
end
gg.toast("K6操你防封第二步B版本开启成功")
else
gg.toast("K6操你防封第二步B版本开启失败")
end
end

function b60()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber('0.8;0.1;1.1::33', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() ==0 then
  gg.toast("K6操你防封开启失败  大退游戏")
else
gg.searchNumber('0.1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() ~=1 then
  gg.toast("K6操你防封开启失败  大退游戏")
else
gg.getResults(1)
gg.editAll('99999999999999', gg.TYPE_DOUBLE)
gg.toast('    K6操你防封第二步开启成功 低调，注意演戏')
gg.clearResults()
end
end
end

function a61()
local memory = 4+1+32
local array = {
{["lv"] = 1071434956, ["type"] = 4},
{["lv"] = 1073899110 , ["offset"] = 16, ["type"] = 4},
{["lv"] = 1072693248, ["offset"] = 32, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 12, 64, 1.2)
app.memorywrite(data[i] + 28, 64, 0.6)
end
gg.toast("K6锁甲锁头防开启成功")
else
gg.toast("K6锁甲锁头防开启失败")
end
end

function a62()
local memory = 4+1+32
local array = {
{["lv"] = 1071434956, ["type"] = 4},
{["lv"] = 1073899110 , ["offset"] = 24, ["type"] = 4},
{["lv"] = 1072693248, ["offset"] = 48, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 20, 64, 1.2)
app.memorywrite(data[i] + 44, 64, 0.6)
end
gg.toast("K6修改锁甲锁头防开启成功")
else
gg.toast("K6修改锁甲锁头防开启失败")
end
end

function a63()
gg.alert("可定义选取跳伞位置，只能选择航线的地方不要选择附近有房子的，离房子远点的地方不然容易拉回到房顶，然后点击跳伞了后，等待飞机快飞完的时候，断网重连即可落地，注意落地后不能跳，不能捡去物品。不然会锁血状态无效")
local memory = 4+1+32
local array = {
{["lv"] = 1073217536, ["type"] = 4},
{["lv"] = 1069128089 , ["offset"] = 16, ["type"] = 4},
{["lv"] = 1076756480, ["offset"] = 32, ["type"] = 4},
{["lv"] = 1077805056 , ["offset"] = 80, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 12, 64, -99)
end
gg.toast("K6研发锁血开启成功")
else
gg.toast("K6锁血开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 1073217536, ["type"] = 4},
{["lv"] = 1069128089 , ["offset"] = 24, ["type"] = 4},
{["lv"] = 1076756480, ["offset"] = 48, ["type"] = 4},
{["lv"] = 1077805056 , ["offset"] = 120, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 20, 64, -99)
end
gg.toast("K6哥哥锁血开启成功")
else
gg.toast("K6哥哥锁血开启失败")
end
gg.sleep(300000)
local memory = 4+1+32
local array = {
{["lv"] = 1073217536, ["type"] = 4},
{["lv"] = -1067925504 , ["offset"] = 16, ["type"] = 4},
{["lv"] = 1076756480, ["offset"] = 32, ["type"] = 4},
{["lv"] = 1077805056 , ["offset"] = 80, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 12, 64, 0.1)
end
gg.toast("K6哥哥锁血开启成功")
else
gg.toast("K6哥哥锁血开启失败")
end

local memory = 4+1+32
local array = {
{["lv"] = 1073217536, ["type"] = 4},
{["lv"] = -1067925504 , ["offset"] = 24, ["type"] = 4},
{["lv"] = 1076756480, ["offset"] = 48, ["type"] = 4},
{["lv"] = 1077805056 , ["offset"] = 120, ["type"] = 4},
}
local isok, data = app.memorysearch(memory, array)
if isok then
for i = 1, #data do
app.memorywrite(data[i] + 20, 64, 0.1)
end
gg.toast("K6哥哥锁血开启成功")
else
gg.toast("K6哥哥锁血开启失败")
end
end
    
function exit()
print("要最新框架联系作者:3461907963  请点击复制链接到浏览器即可")
 os.exit()
end
cs ="K6哥哥"

while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    yiyz_Main()
  end
end
