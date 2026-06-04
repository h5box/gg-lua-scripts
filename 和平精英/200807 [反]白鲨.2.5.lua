---------加密是本分，不加密是情分---------快猫白鲨配置照搬不@作者厉害
e1sj="30.5;25"
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
       
        if (#data > 0) then
           gg.toast("开启成功"..#data.."")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                  
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        
        else
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("很抱歉未找到游戏\n开启失败")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function encodes(code)
  return (code:gsub("..", function(h)
    return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256)
  end
  ))
end

gg.toast("Loading...")
do
  do
    for _FORV_3_ = 1, 2000 do
      load("local results = gg.getFile(5000)")()
    end
  end
end
gg.setRanges(16420)
local results = gg.getFile()
local results = gg.getResults(5000)
gg.setValues(results)
local results = gg.getFile()
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
else
return false
end
else
return false
end
end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."🌹开启成功🌹"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."🌹开启成功🌹"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."🌹开启失败🌹", false)  return false  end  else  gg.toast("🌹开启失败🌹")  return false  end end  
gg.alert("如果你是买来的就说明你被骗了，脚本完全免费")
e7sj="220"
function Main()
  menu = gg.choice({
    "😱透色😱",
    "😷加速😷",
    "😚️大厅😚️",
    "🙄落地🙄",
    "😏车辆😏",
    "😡范围🤬",
    "退出脚本"},
  2018,"模板来自香蕉君")
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then E() end
  if menu == 6 then F() end
  if menu == 7 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    "麒麟通用透视",
    "845透视",
    "855透",
    "P60透",
    "P35透",
    "返回上一页"},
  nil,"本模版来自快猫香蕉君")
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[12] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    "伤害修复",
    "全局不拉",
    "关闭加速",
    "人物加速",
    "加速关闭",
    "返回上一页"},
  nil,"跑毒专用")
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then e5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function C()
  menu1 = gg.multiChoice({
    "午后防抖聚点",
    "人物天线",    
    "返回上一页"},
  nil,"不好意思哈，这个暂时界面只有两功能")
  if menu1 == nil then else
    if menu1[1] == true then v1() end
    if menu1[2] == true then v2() end
    if menu1[12] == true then HOME() end
  end
  GLWW=-1
end



function D()
  menu1 = gg.multiChoice({
    "暴力自瞄",
    "步枪瞬机",
    "步枪加伤", 
    "杀人准星",
    "全屏准星",   
    "返回上一页"},
  nil,"二改倒卖死妈")
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function E()
  menu1 = gg.multiChoice({
    "吉普加速",
    "吉普浮空",
    "秒刹车",
    "蹦蹦穿墙",
    "全载具加速",
    "返回上一页"},
  nil,"部分来自网络")
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function F()
menu1 = gg.multiChoice({
"白鲨范围",
"众生范围",
"魔仙范围",
"头部范围",
"香蕉范围",
"全身范围",
"返回主页"},
nil,"源码大部分来自网络")
if menu1 == nil then else 
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end



function c1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.12103877e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.0}})
  end
  gg.toast("透视成功")
  gg.clearResults()
end



function c2()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5444", gg.TYPE_FLOAT)
  gg.toast("马赛克")
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5444", gg.TYPE_FLOAT)
  gg.toast("透视开启成功")
  qmnb = {
    {memory = 1048576},
    {
      name = "绿色上色"
    },
    {value = 8200, type = 4},
    {
      lv = 539246599,
      offset = -12,
      type = 4
    },
    {
      lv = 786441,
      offset = -8,
      type = 4
    },
    {
      lv = 1661239308,
      offset = -4,
      type = 4
    },
    {
      lv = 1194380045,
      offset = 4,
      type = 4
    },
    {
      lv = 786443,
      offset = 8,
      type = 4
    },
    {
      lv = 1661304844,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 6,
      offset = 0,
      type = 4
    }
  }
end

function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("马赛克开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("透明化开启成功")
end



function c4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 60}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
end



function c5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    var = gg.getResults(20)
    gg.editAll("2", gg.TYPE_FLOAT)
    var = gg.getResults(100)
    var[1].value = 2
    var[1].freeze = true
    var[2].value = 2
    var[2].freeze = true
    gg.addListItems(var)
    gg.clearResults()
    gg.toast("P60透视开启成功")
end



function e1()
  gg.setRanges(16384)
  SearchWrite({
    {-1.0530367E28, -12},
    {-5.8454586E27, -8},
    {-2.7860151E28, 0},
    {-3.7444097E28, 4},
    {-2.793752E28, 296}
  }, {
    {0, 0},
    {0, 4},
    {0, 296}
  }, 16)
  gg.setRanges(16384)
  SearchWrite({
    {6.1630904E-33, -4},
    {-9.9839328E27, 4},
    {-1.0070975E28, 16}
  }, {
    {0, 0}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {-980, -296},
    {800000, -240},
    {1.4125089E-40, 60}
  }, {
    {1.96, -20},
    {1.96, -16},
    {1.96, -12}
  }, 16)
  gg.setRanges(16384)
  SearchWrite({
    {-36028732594454528, -276},
    {0.00999999978, 76}
  }, {
    {10.19, 0}
  }, 16)
  gg.toast("团队加速开启成功")
end

function e2()
  gg.setRanges(16384)
  SearchWrite({
    {-1.0530367E28, -12},
    {-5.8454586E27, -8},
    {0, 0},
    {0, 4},
    {0, 296}
  }, {
    {
      -2.7860151E28,
      0,
      0
    },
    {-3.7444097E28, 4},
    {-2.793752E28, 296}
  }, 16)
  gg.setRanges(16384)
  SearchWrite({
    {6.1630904E-33, -4},
    {-9.9839328E27, 4},
    {-1.0070975E28, 16}
  }, {
    {-6.1526231E27, 0}
  }, 16)
  gg.setRanges(16384)
  SearchWrite({
    {-36028732594454528, -276},
    {0.00999999978, 76}
  }, {
    {10.90734863281, 0}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {-980, -296},
    {800000, -240},
    {1.4125089E-40, 60}
  }, {
    {1, -20},
    {1, -16},
    {1, -12}
  }, 16)
  gg.toast("关闭成功")
end



function e3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("34567", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("34567", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("34567", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("34567", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end



function e4()
  gg.alert("加速更快")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("加速开启成功")
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {name = "翻倍中"},
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1.49,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.toast("加速翻倍开启成功")
end

function e5()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("加速关闭成功")
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "关闭翻倍中"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.toast("翻倍关闭成功")
end




function v1()
Name = "全枪无后" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = "全枪防抖"
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0}, {-499122175, 4}, {-481296380, 8}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0}, {-2.8111605430681328E28, -12}, {-1476732160.0, -8}, {-3.7444097189855772E28, -4}, {128.0, 4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "全枪聚点"
gg.setRanges(16384)
local dataType = 16
local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
local modify = {{0, -8},{0, 4},}
SearchWrite(search,modify,dataType,Name)
end



function v2()------这是
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线开启成功")
  gg.clearResults()
end



function a1()--------这是白鲨的?
Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-5.902958103587057E21, -36},

}
local modify = {{-5.9029587e21 ,-36},}
SearchWrite(search,modify,dataType,Name)

Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "全图距离"
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.80536412832557E26, 0},
{1.6615353908719574E35, -8},

}

local modify = {{1.6615352e35, -8},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.811636980541323E27, 0},
{-2.739592370665271E28, 24},

}
local modify = {{-2.7395468e28, 24},}
SearchWrite(search,modify,dataType,Name)

fuName = "频率自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.154955385029188E27, 0},
{-9.983932770753347E27, -8},

}
local modify = {{-3.8685631e25, -4},{-9.9839906e27, -8},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.152666808172427E27, 0},
{-3.8685626227668134E25, -4},

}
local modify = {{-3.8685631e25, -4},}
SearchWrite(search,modify,dataType,Name)
--[[
Name = "近战自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},

}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)
]]

Name = "超大预判" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.8048944742214536E26, 0},
{1.6615353908719574E35, -8},

}
local modify = {{1.6615352e35, -8},}
SearchWrite(search,modify,dataType,Name)  
end

function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000292", gg.TYPE_FLOAT)
  gg.toast("M4射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000083", gg.TYPE_FLOAT)
  gg.toast("Scar射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.00100000005", gg.TYPE_FLOAT)
  gg.toast("AK射速开启成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("166000", gg.TYPE_FLOAT)
  gg.toast("25%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140000", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("167000", gg.TYPE_FLOAT)
  gg.toast("75%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("180000", gg.TYPE_FLOAT)
  gg.toast("100%")
end



function a4()
qmnb = {
{["memory"] = 32},--自创
{["name"] = "全屏屠心"},
{["value"] = 16, ["type"] = 16},
{["lv"] = 4, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 669, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function a5()
qmnb = {
{["memory"] = 16384},
{["name"] = "全屏准心"},--叶巷离
{["value"] = -486534859, ["type"] = 4},
{["lv"] = -481230848, ["offset"] = 172, ["type"] = 4},
{["lv"] = -481230847, ["offset"] = 536, ["type"] = 4},
{["lv"] = -308299093, ["offset"] = 2444, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 172, ["type"] = 4},
{["value"] = 0, ["offset"] = 536, ["type"] = 4},
{["value"] = 0, ["offset"] = 2444, ["type"] = 4},
}
xqmnb(qmnb)
end



function d1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速")
end



function d2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("吉普浮空")
end



function d3()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function d4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end



function qc10()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end



function f1()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {name = "Head range"},
    {
      value = 9.203507E-5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 25,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 30.5,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 295,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      value = 295,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "Whole body range"
    },
    {
      value = 69.5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 33,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 35,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 260,
      offset = 0,
      type = gg.TYPE_FLOAT
    },
    {
      value = 120,
      offset = -4,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end




function f2()
  
Name = "大大子弹" 
gg.setRanges(16384)--Cd内存
local dataType = 16
local search = {{-1.2516221238243211E23, 0},}
local modify = {{-1.98130876e28, 8},{-2.78596955e28, 16},}
SearchWrite(search,modify,dataType,Name)

gg.setRanges(32)--A内存
local dataType = 16
local Name ="子弹范围" 
local tb1 = {{90.775703430176, 0}, {0, 0}, {8, 0}, {16, 2}, }
local tb2 = {{150, 2}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(32)--A内存
local dataType = 16
local Name ="稳定范围" 
local tb1 = {{30.5, 0}, {25, 2}, }
local tb2 = {{888, 2}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(32)--A内存
local dataType = 16
local Name ="头部范围" 
local tb1 = {{9.20161819458, 0}, {23, 2}, {25, 10}, {30.5, 16}, }
local tb2 = {{240, 10},{240, 16}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end





function f3()
gg.setRanges(131072)
    gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("26", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-89999960", 16)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("28", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-99999960", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
    gg.searchNumber("16", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
    gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("245", 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
    gg.searchNumber("45", 16, false, 536870912, 0, -1)
    gg.getResults(30)
    gg.editAll("999999", 16)
    gg.toast("范围追踪打击")
    
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;25;30.5::", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("魔仙范围1已开启")
else
gg.searchNumber("30.5;25.0:385", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("240", 16)
gg.toast("魔仙范围2已开启")
end
end

  function f4()
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("20.51941871643"),
        tonumber("-24")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("200"),
        tonumber("0")
      },
      {
        tonumber("-200"),
        tonumber("4")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.66608428955"),
        tonumber("-4")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("88.66608"),
        tonumber("0")
      },
      {
        tonumber("-56"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.73961639404"),
        tonumber("-8")
      },
      {
        tonumber("28"),
        tonumber("0")
      }
    }, {
      {
        tonumber("-560"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("9.20161819458"),
        tonumber("-28")
      },
      {
        tonumber("23"),
        tonumber("-4")
      },
      {
        tonumber("25"),
        tonumber("0")
      },
      {
        tonumber("30.5"),
        tonumber("4")
      }
    }, {
      {
        tonumber("300"),
        tonumber("0")
      },
      {
        tonumber("300"),
        tonumber("4")
      }
    }, (tonumber("16")))
  end
  
 function f5()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君增伤🍌")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君独家追踪范围开启成功🍌")
end


  
  function f6()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "超大范围"},
{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 155, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = true},
{["value"] = 155, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = false},
{["value"] = 155, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] = 155, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function Exit()
  print("作者快猫白鲨，此脚本免费禁止倒卖")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "白鲨"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end