-------脚本功能来源于网络
-------额
-------m
-------m




gg.alert("祝你游戏愉快，请耐心等待")
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
           gg.toast("搜索η"..#data.."条ΔΘ")
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
        gg.toast("开启失败")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end               


function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end

xs=os.date("%Y年%m月%d日%H时%M分%S")
e5sj="的"


function Main()
  menu = gg.choice({
"😂变态功能😂",
"☺范围自瞄😂",
"😖车辆功能🐮",
"😒加速功能😝",
"😁透色功能😂",
"😥装逼功能😱",
"😭全部天线😝",
"🐤美化功能🐟",
"😇防封功能🤑",
"🐙退出辅助"},
nil,"二改狗或倒卖狗死妈，部分代码来源网络'")
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then H() end
if menu == 9 then J() end
if menu == 10 then Exit() end
XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    "1无后",
    "2防抖",
    "3除草除树",
    "4击杀特效",
    "5下蹲路飞",
    "6全屏准心",
    "7香蕉君自抓伸缩头(香蕉君原创)",
    "8上帝视角开启",
    "9上帝视角关闭",
    "10跳跃爬墙",
    "11高跳防摔",
    "12新高跳",
    "13人物穿墙",
    "14扩大视角",
    "15足球子弹",
    "16快速翻墙",
    "17全枪瞬🐔",
    "18聚点",
    "19雨林下蹲路飞",
    "20海岛下蹲路飞",
    "21全图除草(开车加速的建议只开这个)",
    "22天空黑色",
    "23sg小黑人",
    "24午后防抖",
    "25瞬鸡🐔2",
    "26秒开倍镜",
    "27红点倍镜修改",
    "28爬墙开",
    "29爬墙关",
    "人物踏空",
    "返回上一页"},
  nil,"当前时间:%Y年-%m月-%d日 %H时 %M'")
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then a6() end
    if menu1[7] == true then a7() end
    if menu1[8] == true then a8() end
    if menu1[9] == true then a9() end
    if menu1[10] == true then a10() end
    if menu1[11] == true then a11() end
    if menu1[12] == true then a12() end
    if menu1[13] == true then a13() end
    if menu1[14] == true then a14() end
    if menu1[15] == true then a15() end
    if menu1[16] == true then a16() end
    if menu1[17] == true then a17() end
    if menu1[18] == true then a18() end
    if menu1[19] == true then a19() end
    if menu1[20] == true then a20() end
    if menu1[21] == true then a21() end
    if menu1[22] == true then a22() end
    if menu1[23] == true then a23() end
    if menu1[24] == true then a24() end
    if menu1[25] == true then a25() end
    if menu1[26] == true then a26() end
    if menu1[27] == true then a27() end
    if menu1[28] == true then a28() end
    if menu1[29] == true then a29() end
    if menu1[30] == true then a30() end
    if menu1[31] == true then a31() end
    if menu1[31] == true then HOME() end
  end
  GLWW=-1
  end



function B()
  menu1 = gg.multiChoice({
    "1锁头自瞄",
    "2全屏自瞄",
    "3p92自瞄",
    "4香蕉君范围(香蕉君原创🍌)",
    "5超大范围",
    "6头部不减伤范围",
    "7魔仙子弹追踪",
    "8锁头自瞄",
    "9仿鸡腿自瞄",
    "10仿鸡腿锁头",
    "11近战自瞄",
    "12锁死自瞄",
    "13150强力自瞄",
    "14超强自瞄",
    "15新子弹锁头",
    "16全屏磁性自瞄",
    "17老外磁性自瞄",
    "18全身大范围",
    "19老外自瞄",
    "20诛仙超级大范围",
    "21持枪自瞄",    
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then b11() end
    if menu1[12] == true then b12() end
    if menu1[13] == true then b13() end
    if menu1[14] == true then b14() end
    if menu1[15] == true then b15() end
    if menu1[16] == true then b16() end
    if menu1[17] == true then b17() end
    if menu1[18] == true then b18() end
    if menu1[19] == true then b19() end
    if menu1[20] == true then b20() end
    if menu1[21] == true then b21() end
    if menu1[21] == true then HOME() end
  end
  GLWW=-1
end




function C()
  menu1 = gg.multiChoice({
    "吉普加速",
    "全车加速",
    "秒刹车",
    "蹦蹦穿墙",
    "吉普超级加速",
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[4] == true then HOME() end
  end
  GLWW=-1
end




function D()
  menu1 = gg.multiChoice({
    "变态加速(不是直接封🐶)",
    "关闭加速",
    "秒落地",
    "香蕉君加速",
    "关闭加速";
    "新版秒下飞机",
    "雨林超级加速开",
    "雨林超级加速关",
    "伤害修复",
    "三秒落地",
    "防拉回",
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then d6() end
    if menu1[7] == true then d7() end
    if menu1[8] == true then d8() end
    if menu1[9] == true then d9() end
    if menu1[10] == true then d10() end
    if menu1[11] == true then d11() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end




function E()
  menu1 = gg.multiChoice({
    "联发科p70",
    "骁龙625",
    "通用防闪",
    "联发科百变色(通用)",
    "联发科蓝色",
    "联发科红色",
    "物品发光",
    "骁龙660",
    "车绿",
    "麒麟透视",
    "430透第一步",
    "430透第二步",
    "710透视",
    "835透色",
    "人物通用白色(大厅开)",
    "人物通用黑色(大厅开)",
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then e5() end
    if menu1[6] == true then e6() end
    if menu1[7] == true then e7() end
    if menu1[8] == true then e8() end
    if menu1[9] == true then e9() end
    if menu1[10] == true then e10() end
    if menu1[11] == true then e11() end
    if menu1[12] == true then e12() end
    if menu1[13] == true then e13() end
    if menu1[14] == true then e14() end
    if menu1[15] == true then e15() end
    if menu1[16] == true then e16() end
    if menu1[16] == true then HOME() end
  end
  GLWW=-1
end



function F()
  menu1 = gg.multiChoice({
    "蚁人",
    "巨人",
    "人物飞天开",
    "人物飞天关",
    "大头儿子",
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then f1() end
    if menu1[2] == true then f2() end
    if menu1[3] == true then f3() end
    if menu1[4] == true then f4() end
    if menu1[5] == true then f5() end
    if menu1[6] == true then f6() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end




function G()
  menu1 = gg.multiChoice({
    "脖子天线",
    "头盔天线",
    "盒子天线",
    "持枪天线",
    "人物地线",
    "头发天线",
    "三级套，556子弹天线",
    "返回上一页"},
  nil,"落地开😘")
  if menu1 == nil then else
    if menu1[1] == true then g1() end
    if menu1[2] == true then g2() end
    if menu1[3] == true then g3() end
    if menu1[4] == true then g4() end
    if menu1[5] == true then g5() end
    if menu1[6] == true then g6() end
    if menu1[7] == true then g7() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function H()
  menu1 = gg.multiChoice({
    "猩猩",
    "木乃伊",
    "蝙蝠侠",
    "scar赤诚",
    "ak赤诚",
    "scar狂怒",
    "ump45赤城",
    "返回上一页"},
  nil,"大厅开😘")
  if menu1 == nil then else
    if menu1[1] == true then h1() end
    if menu1[2] == true then h2() end
    if menu1[3] == true then h3() end
    if menu1[4] == true then h4() end
    if menu1[5] == true then h5() end
    if menu1[6] == true then h6() end
    if menu1[7] == true then h7() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end

function J()
  menu1 = gg.multiChoice({
    "防举报",
    "防十年",
    "新防十年",
    "返回上一页"},
  nil,"大厅开😘")
  if menu1 == nil then else
    if menu1[1] == true then j1() end
    if menu1[2] == true then j2() end
    if menu1[3] == true then j3() end
    if menu1[3] == true then HOME() end
  end
  GLWW=-1
end




function a1()
  qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
Name = "超级无后" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.171954133480088E27, 0},
{-2.78698202667584E28, -12},
{-3.7444097189855772E28, -8},
{-1.1368873507541788E-13, -4},

}
local modify = {{0, -12},}
SearchWrite(search,modify,dataType,Name)
end

function a2()
qmnb = {
{["memory"] = 16384},
{["name"] = "防抖开启中"},
{["value"] = -1476732160.0, ["type"] = 16},
{["lv"] = -3.7444097189855772E28, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.114450155758339E28, ["offset"] = 8, ["type"] = 16},
{["lv"] = 128.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "全枪防抖开启成功"},
{["value"] = -6.154945350000412E27, ["type"] = 16},
{["lv"] = -2.656333398413989E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.114450155758339E28, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function a3()
qmnb = {
{["memory"] = 16384},
{["name"] = "除草除树"},
{["value"] = -1.2537165e28, ["type"] = 16},
{["lv"] = -3.1863806e30, ["offset"] = 4, ["type"] = 16},
{["lv"] = -3.8685677e25, ["offset"] = 8, ["type"] = 16},
{["lv"] = 9.9999999e-9, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = -1.2537316e28, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end
function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("击杀特效开启成功")
end

function a5()
  qmnb = {
{["memory"] = 32},
{["name"] = "下蹲路飞"},
{["value"] = -0.90990304947, ["type"] = 16},
{["lv"] = 18.38787841797, ["offset"] = 8, ["type"] = 16},
{["lv"] = -3.42231750488, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 140, ["offset"] = 8, ["type"] = 16},
{["value"] = 250, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
function a6()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},--全屏准星
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


function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("666", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功🍌香蕉君自抓🍌")
  gg.toast("开始装逼")
end

function a8()
gg.setRanges(32) 
local tb1 = {{ ("3.3579315e-41"), ("-136")}, { ("3.6025982e-41"), ("-128")}, } 	
local tb2 = {{ ("500"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function a9()
gg.setRanges(32) 
local tb1 = {{tonumber("3.3579315e-41"),tonumber("-136")}, {tonumber("3.6025982e-41"),tonumber("-128")}, } 	
local tb2 = {{tonumber("220"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5032462e-44F;10.0F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("跳跃爬墙开启成功")
end

function a11()
  gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("1;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("3",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("443",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("2500",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0;0.05",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_FLOAT)
gg.toast("高跳防摔开启成功")
end

function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("22", gg.TYPE_FLOAT)
  gg.toast("超级高跳开启成功")
end
function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10.0;45.0;40.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(150)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("人物穿墙术开启成功")
end
function a14()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启成功")
end

function a15()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.2179556e21;0.0;-8.5223958e22:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.8", gg.TYPE_FLOAT)
  gg.toast("足球子弹")
end
function a16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5032462e-44F;10.0F;40F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1250", gg.TYPE_FLOAT)
gg.toast("翻墙开启成功")
end
function a17()
gg.clearResults()
gg.toast("M416子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AKM子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M16子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.toast("SC瞬击开启成功")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(800)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.toast("冲锋枪子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.toast("MiNi瞬击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("80000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.toast("SKS瞬击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(800)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("冲锋枪子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("98K子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M24子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AWM子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("VSS子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("弓弩瞬击开启成功")
end
function a18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("聚点开启成功")
end
function a19()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38787841797;0.53869867325;0.61770325899;13.27982902527:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("雨林下蹲路飞开启")
end
function a20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38787841797;0.53869867325;0.61770325899;13.27982902527:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("330", gg.TYPE_FLOAT)
gg.toast("海岛下蹲路飞开启")
end
function a21()
  gg.clearResults()
  gg.searchNumber("8;1.2;1.2;0.8;1.5;0.8;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("全图除草开启成功")
end
function a22()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("黑夜模式开启成功")
end
function a23() 
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-443281372, 0}, {-577553919, -88}, {-567137789, -84}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("SG小黑人–开启成功")
Voice('SG小黑人开启')
end
function a24()
  qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "防抖"},
    {["value"] = -1476732160.0, ["type"] = 16},
    {["lv"] = -3.7444097189855772E28, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -1.114450155758339E28, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 128.0, ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "全局防抖"},
    {["value"] = -6.154945350000412E27, ["type"] = 16},
    {["lv"] = -2.656333398413989E21, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -1.114450155758339E28, ["offset"] = 12, ["type"] = 16},
    {["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 12, ["type"] = 16},
  }
end
function a25()
   gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("33000~99999;30D;10D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("33000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("100000", gg.TYPE_FLOAT)
    gg.toast("瞬击开启成功")
end
function a26()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.37999999523,0xEAE0}, {6.16031837463, 0xEAD4},{6.1603140831,0xEACC}, }
    local tb2 = {{0, 0xEAE0},}
    SearchWrite(tb1, tb2, dataType)
  gg.toast("🌹秒开倍镜已开启🌹")
end
function a27()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{55,0x284C}, {-2.7864239e-12, 0x2840},{-2.7863753e-12,0x2830}, }
    local tb2 = {{20, 0x284C},}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("🌹红点倍镜修改成功🌹")
end
function a28()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1F;35F;443F;55F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("♡爬墙开启成功℃")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5032462e-44F;10.0F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("♡翻墙开启成功℃")
end
  function a29()
Fxs({{443,0,16},{2,-8,16},{220,-4,16},},{{35,-4,16},{1,-8,16},},32,"Fxs")
  end
function a30()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("踏空开启成功")
  gg.searchNumber("0.03E;0.6E;1.0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.0001", gg.TYPE_DOUBLE)
  gg.toast("防摔开启成功")                 
end

function b1()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("锁头开启成功")
end
function b2()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏自瞄开启成功")
end

function b3()
  Name = "P92自瞄"
  gg.setRanges(32)
  SearchWrite({
    {8000, 0},
    {3.5, -64},
    {0.5, -44},
    {200, -12},
    {100, -4}
  }, {
    {99999, -48},
    {99999, -52},
    {99999, -56},
    {99999, -60}
  }, 16, Name)
  gg.setRanges(gg.REGION_CODE_APP)
  SearchWrite({
    {-2.8488793E28, 0},
    {-5.4827808E27, 4},
    {-1.2464639E28, 8},
    {-2.7270195E28, 12}
  }, {
    {0, 4},
    {0, 0}
  }, gg.TYPE_FLOAT)
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功")
end
function b4()
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
  function b5()
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
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;27;2D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15;27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("全新不减伤头部范围开启成功")
end

function b7()
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
end
function b8()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast(" 自瞄锁头开启")
  gg.clearResults()
end
function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;1.19193046077e-40;1;-9.6172094345093e-05;1.6815581571898e-44::384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("131,120.0", gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功，请打开辅助瞄准")
end
function b10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("自瞄锁头已开启")
end
function b11()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("近战自瞄开启成功👀")
end
function b12()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("20000000000000", gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功，请打开设置里面的辅助瞄准")
end
function b13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(100)

gg.editAll('0.03', gg.TYPE_FLOAT)

gg.toast("150米强力自瞄已开启")

end
function b14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6.0;2.0;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
gg.searchNumber("1", gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll("20000000000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("全屏磁性自瞄")

Name = "无视队友自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
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

Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "频率自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)

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
Voice('超级自瞄开启成功')
end
function b15()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("子弹锁头-开启成功")
end
function b16()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6.0;2.0;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("101", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("20000000000000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏磁性自瞄")
end
function b17()
gg.clearResults()
  gg.setRanges(8)
  gg.setRanges(8)
  gg.searchNumber("360;0.0001;1478828288", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", 16)
  gg.clearResults()
  gg.toast("☬ Aimbot Super ☬")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999999999", 16)
  gg.clearResults()
  gg.toast("☬ Aimbot Sniper ☬")
  gg.clearResults()
  gg.searchNumber("3.5;1;0.5;200;20::", 16, false, 536870912, 0, -1)
  gg.searchNumber("1", 16, false, 536870912, 0, -1)
  gg.getResults(600)
  gg.editAll("999", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("-88.82363891602F;15.0F;1", 16)
  gg.searchNumber("1", 16)
  gg.getResults(2000)
  gg.editAll("20000000000000", 16)
  gg.clearResults()
  gg.toast("☬ Ultra Aimbot ☬")
  gg.setRanges(16384)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828.616.0", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
  gg.getResults(2)
  gg.editAll("5000", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(35000, 16)
  gg.searchNumber(35000, 16)
  gg.getResults(20)
  gg.toast("☬ Aimlock ☬")
  gg.clearResults()
  gg.setRanges(32)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;53;30;1::", 16)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;1::", 16)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", 16)
  gg.toast("☬ Anti Shake ☬")
end
function b18()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("147", gg.TYPE_FLOAT)
    gg.toast("范围开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("147", gg.TYPE_FLOAT)
    gg.toast("新版范围开启成功 ")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("150", gg.TYPE_FLOAT)
    gg.toast("全身大范围开启成功")
end
function b19()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.toast("Auto HeadShot 99% activated!")
end
function b20()
gg.setRanges(32) 
local tb1 = {{tonumber("16"),tonumber("-4")}, {tonumber("26"),tonumber("0")}, {tonumber("-86.45767974854"),tonumber("-12")} } 	
local tb2 = {{tonumber("99"),tonumber("0")}, } 
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("✨10%✨")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "✨20%✨"},
{["value"] = tonumber("9.20161819458"), ["type"] = gg.TYPE_FLOAT},
{["lv"] = tonumber("25"), ["offset"] = tonumber("28"), ["type"] = gg.TYPE_FLOAT},
{["lv"] = tonumber("30.5"), ["offset"] = tonumber("32"), ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = tonumber("240"), ["offset"] = tonumber("28"), ["type"] = gg.TYPE_FLOAT},
{["value"] = tonumber("240"), ["offset"] = tonumber("32"), ["type"] = gg.TYPE_FLOAT},
}
gg.toast("✨30%✨")
xqmnb(qmnb)
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨40%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨50%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨60%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("✨70%✨")
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-460", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("✨80%✨")
    gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-560", gg.TYPE_FLOAT)
  gg.toast("✨90%✨")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;27;2D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15;27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("✨100%✨")
  gg.toast("✨诛仙超大范围✨")
end
function b21()
Name = "无视队友自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
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

Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "频率自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)

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

Name = "自瞄" 
gg.setRanges(32)
local dataType = 16
local search = {{8000.0, 0},{3.5, -64},{0.5, -44},{200.0, -12},{100.0, -4},}
local modify = {{99999, -48},{99999, -52},{99999, -56},{99999, -60},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(16384)
Name="距离"
local dataType = 32
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="趴锁"
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="加载判断"--/-3.9291568e21;2.6469862e-23;-8.736414e22;-3.8369228e21
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{-3.9291565e21,0x6D58}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name="超强判断"--/1.6615354e35;-1.1221873e28;-5.8048698e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7A38}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="全图距离"--/1.6615354e35;-1.1144502e28;-5.8053394e26;-1.0525532e28
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x6654}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="270℃范围"--/1.6615354e35;-1.1221873e28;-5.8049129e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7864}}SearchWrite(tb1,tb2,dataType)
end


function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速")
end

function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end

function c3()
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

function c4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end
function c5()
        gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.76000005007;1;0.96078431606;0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("88888", gg.TYPE_FLOAT)
gg.toast("普超级加速开启成功")
end

function d1()
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
gg.setRanges(32)
gg.toast("开启成功")
end

function d2()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.toast("关闭成功")
end

function d3()
Name = "秒落地" 
gg.setRanges(32)--A内存
local dataType = 16
local search = {{3000.0, 0},{5000.0, 4},{1024.0, 8},{89.0, 36},}
local modify = {{200000, 0},{200000, 4},{200000, 8},}
SearchWrite(search,modify,dataType,Name)
end
function d4()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end
function d5()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("关闭成功")
end
function d6()
 gg.setRanges(16384) 
local tb1 = {{ ("-2.4787818e20"), ("-8")}, { ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-2.8246552e28"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("0.1"), ("20")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(15000)
gg.setRanges(16384) 
local tb1 = {{ ("-2.4787818e20"), ("-8")}, { ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-2.8246552e28"), ("8")}, } 	
local tb2 = {{ ("-6.1526231e27"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("0.00050000002"), ("20")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("新加速下飞机开启成功")
end
function d7()
gg.setRanges(16384) 
local tb1 = {{ ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-1.0070975e28"), ("16")}, } 	
local tb2 = {{ ("0"),  ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{ ("-1.0530367e28"), ("-12")}, { ("-5.8454586e27"), ("-8")}, { ("-2.7860151e28"), ("0")}, { ("-3.7444097e28"), ("4")}, { ("-2.793752e28"), ("296")}, } 	
local tb2 = {{ ("0"), ("0")}, { ("0"), ("4")}, { ("0"), ("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("1.31"),  ("0")}, { ("1.31"), ("4")}, { ("1.31"), ("8")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("雨林稳定加速")
 gg.setRanges(32) 
local tb1 = {{ ("3600000000"), ("80")}, { ("2500000000"), ("88")} } 	
local tb2 = {{ ("1100"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function d8()
gg.setRanges(16384) 
local tb1 = {{ ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-1.0070975e28"), ("16")}, } 	
local tb2 = {{ ("-6.1526231e27"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{ ("-1.0530367e28"), ("-12")}, { ("-5.8454586e27"), ("-8")}, { ("0"), ("0")}, { ("0"), ("4")}, { ("0"), ("296")}, } 	
local tb2 = {{ ("-2.7860151e28"), ("0")}, { ("-3.7444097e28"), ("4")}, { ("-2.793752e28"), ("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("1"),  ("0")}, { ("1"), ("4")}, { ("1"), ("8")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("关闭成功")
end
function d9()
Name = "M416伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{88000, 0},

}
local modify = {{40000, 0},}
SearchWrite(search,modify,dataType)

Name = "QBZ，SC伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{87000, 0},

}
local modify = {{40000, 0},}
SearchWrite(search,modify,dataType)

Name = "AKM，大盘鸡伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{71500, 0},

}
local modify = {{40000, 0},}
SearchWrite(search,modify,dataType)

Name = "M716伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{68000, 0},

}
local modify = {{40000, 0},}
SearchWrite(search,modify,dataType)
end
function d10()
Name = "秒下飞机" 
gg.setRanges(32)
local dataType = 16
local search = {
{3000.0, 0},
{5000.0, 4},
{1024.0, 8},
{89.0, 36},

}
local modify = {{200000, 0},{200000, 4},{200000, 8},}
SearchWrite(search,modify,dataType,Name)
gg.toast("成功")
end
function d11()
Name = "坐标刷新防拉回"
  gg.setRanges(16384)
  SearchWrite({
    {2.4651629985720053E-32, 0},
    {9.999999747378752E-5, -52},
    {9.999999747378752E-5, -48},
    {9.999999747378752E-5, -44},
    {9.999999747378752E-5, -40}
  }, {
    {-100, -52},
    {-100, -48},
    {-100, -44},
    {-100, -40}
  }, 16, Name)
  Name = "1"
  gg.setRanges(32)
  SearchWrite({
    {6.1630904E-33, -4},
    {-9.9839328E27, 4},
    {-1.0070975E28, 16}
  }, {
    {0, 0}
  }, 16, Name)
  Name = "2"
  gg.setRanges(32)
  SearchWrite({
    {-2.7860151E28, 0},
    {-1.0530367E28, -12},
    {-5.8454586E27, -8},
    {-3.7444097E28, 4},
    {-2.793752E28, 296}
  }, {
    {0, 0},
    {0, 4},
    {0, 296}
  }, 16, Name)
  Name = "3"
  gg.setRanges(32)
  SearchWrite({
    {-980, -364},
    {800000, -308},
    {1.4125089E-40, 80}
  }, {
    {1.6, 0},
    {1.6, 4},
    {1.6, 8}
  }, 16, Name)
  Name = "防拉回" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.839564474795097E26, 0},
{-3.7444097189855772E28, 328},
{-3.7181718523570815E19, 332},
{-5.90526394659627E21, 336},
{-2.7869827350308126E28, 340},
{-550024314880.0, 344},
{-3.7444097189855772E28, 348},
{-3.6893492545465614E19, 352},

}
local modify = {{-3.6893488E19, 352},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.0587304e-22;1.0e-6:161", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0;0.24', gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
  gg.searchNumber('-6.1526231e27;-1.0070975e28;::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('-6.15', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("人物加速防拉回已成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-6.15264497e27",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(50)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("防拉回成功")
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(50) 
gg.editAll("0", gg.TYPE_FLOAT) 
gg.toast("其他防拉回成功") 
end


function e1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(20)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 	 end
	 gg.toast("透视联发科 P70")
	 gg.clearResults()
	 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_DWORD)
gg.toast("联发科红色上色，正在进行中")
end

function e2()
gg.setRanges(gg.REGION_VIDEO)
local dataType=gg.TYPE_FLOAT 
Name="马赛克"
local tb1={{4.814603e21,0x24CC},{4.7408149e21,0x24C4}}
local tb2={{9999,0x24C8}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(gg.REGION_VIDEO)
local dataType=gg.TYPE_FLOAT 
Name="透明码"
local tb1={{5.1466568e21,0x47E4},{5.6262783e21,0x47DC}}
local tb2={{5444,0x47E0}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(1048576) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
end

function e3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
   end
   
   function e4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;64;48::40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("87", gg.TYPE_DWORD)
  gg.toast("百变色开启成功")
  gg.clearResults()
end
function e5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;64;48::40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("54", gg.TYPE_DWORD)
  gg.toast("蓝色开启成功")
  gg.clearResults()
end
function e6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;64;48::40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("58", gg.TYPE_DWORD)
  gg.toast("红色开启成功")
  gg.clearResults()
end

function e7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0;1.6623364e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.toast(" 物品透视开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("7.4051337e-40;5.5684798e-40;2.379632e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.379632e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("物品发光开启成功")
end

function e8()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)-------
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("660透视开启成功")
  gg.clearResults()
  end
  function e9()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("844")
 gg.getResults(100)
  gg.editAll("43", gg.TYPE_DWORD)
gg.toast("车辆绿色已成功")
end
function e10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;-1;0;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-1.0285578e-38;3.7615819e-37;2;-1;1;-127::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("麒麟透视开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD)
  gg.toast("不敢保证所以麒麟处理器有效")
end
function e11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('3.75000047684;1.3912567e-19;1.1202056e-19;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('120', gg.TYPE_FLOAT)
gg.toast('430透第一部成功')
gg.clearResults()
end
function e12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('4.7223665e21;-5.5695588e-40;3.7615819e-37;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('120', gg.TYPE_FLOAT)
gg.toast('430透第2部开启成功')
gg.clearResults()
end
function e13()
 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("3.9236357e-44;1.1202056e-19;3.7615819e-37;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("4.9621809e21;7.0208711e-29;5.4049168e21;1.3312335e-43;1.3912565e-19;2.0;1.6623113e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("710透视已开启")
	end
function e14()
gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("835透视已开启成功")
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8200;11;7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("人物红色已开启成功")
end
function e14()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("15", gg.TYPE_FLOAT)
    gg.toast("人物白色已开启")
end
function e15()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,075,316,740", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("60", gg.TYPE_DWORD)
  gg.toast("人物黑色开启成功")  
end

function f1()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
gg.alert("屏幕抖动属于正常现象")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_FLOAL, 0, -1)
gg.getResults(100)
gg.editAll("0.01", gg.TYPE_FLOAT)
gg.toast("蚁人开启成功")
end
function f2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("2", gg.TYPE_FLOAT)
  f1sj="2"
  gg.toast("巨人已开启")
end              
function f3()
 gg.clearResults()

 gg.setRanges(gg.REGION_C_DATA)
    
 local dataType = gg.TYPE_FLOAT
    
 local tb1 = {{-7.7497942e19, 0},{-5.7656706e27, 0x4},{-1.0530367e28, 0X8},{-5.8454586e27, 0xC}}
    
 local tb2 = {{2.7860151e28,0X14},{2.793752e28,0X13C}}
    
 SearchWrite(tb1, tb2, dataType)
    
 gg.setRanges(gg.REGION_ANONYMOUS)
    
 local dataType = gg.TYPE_FLOAT
    
 local tb1 = {{58000, 0},{50, 0X160},  {50, 0X164},{50, 0X168},{1000, 0X16C},{1, 0X228}}
    
 local tb2 = {{5, 0X22C}}
    
 SearchWrite(tb1, tb2, dataType)

 gg.toast("飞天加速第一步开启成功")

 gg.setRanges(gg.REGION_C_DATA)
    
 local dataType = gg.TYPE_FLOAT
    
 local tb1 = {{-1.0070975e28, 0},{-2.8246552e28, -0x8},{-9.9839328e27, -0XC}}
    
 local tb2 = {{6.1526231e27,-0X10}}
    
 SearchWrite(tb1, tb2, dataType)
    
 gg.toast("飞天加速第二步开启成功")
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll("-15.72", gg.TYPE_FLOAT)
 gg.toast("飞天加速第三步开启成功")
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)

 gg.searchNumber("10000;20000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)

 gg.editAll("500", gg.TYPE_DWORD)

 gg.toast("飞天加速第四步开启成功")
 gg.toast("国体灵魂出窍飞天自娱自乐已开启")
end
function f4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
    
local dataType = gg.TYPE_FLOAT
    
local tb1 = {{58000, 0},{50, 0X160},  {50, 0X164},{50, 0X168},{1000, 0X16C},{1, 0X228}}
    
local tb2 = {{1, 0X22C}}
    
SearchWrite(tb1, tb2, dataType)

gg.toast("飞天加速第一步关闭成功")

gg.setRanges(gg.REGION_C_DATA)
    
local dataType = gg.TYPE_FLOAT
    
local tb1 = {{-7.7497942e19, 0},{-5.7656706e27, 0x4},{-1.0530367e28, 0X8},{-5.8454586e27, 0xC}}
    
local tb2 = {{-2.7860151e28,0X14},{-2.793752e28,0X13C}}
    
SearchWrite(tb1, tb2, dataType)
gg.setRanges(gg.REGION_C_DATA)
    
local dataType = gg.TYPE_FLOAT
    
local tb1 = {{-1.0070975e28, 0},{-2.8246552e28, -0x8},{-9.9839328e27, -0XC}}
    
local tb2 = {{-6.1526231e27,-0X10}}
    
SearchWrite(tb1, tb2, dataType)
    
gg.toast("飞天加速第二步关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

 gg.searchNumber("-15.72", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

 gg.getResults(999)

 gg.editAll("-980", gg.TYPE_FLOAT)

 gg.toast("飞天加速第三步关闭成功")

 gg.clearResults()

 gg.setRanges(gg.REGION_ANONYMOUS)


 gg.searchNumber("500;20000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)


 gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

 gg.getResults(999)


 gg.editAll("10000", gg.TYPE_DWORD)


 gg.toast("飞天加速第四步关闭成功")

 gg.toast("国体灵魂出窍飞天关闭成功")

end

function f5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.13140678406;1;1;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("大头儿子开启成功")
end
function f6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.setVisible(false)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.setVisible(false)
  gg.editAll("0.5", gg.TYPE_FLOAT)
  gg.toast("缩骨功，装逼专用")
end


	function g1()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线")
end

function g2()
  qmnb = {
    {["memory"] = gg.REGION_ANONYMOUS},
    {["name"] = "天线开启"},
    {["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
  }
  qmxg = {
    {["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
    {["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
    {["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
    {["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
  }
  xqmnb(qmnb)
end

function g3()
      gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast('骨灰盒子天线开启成功')
gg.clearResults()
    end

function g4()
  lw=1
  Main()
end
function g4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38613319397F;0.53447723389F;3.42665576935F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38613319397;0.53447723389;3.42665576935", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("99999.38613319397;0.53447723389;3.42665576935", gg.TYPE_FLOAT)
  gg.toast("持枪天线开启成功")
end
function g5()
    gg.setRanges(gg.REGION_ANONYMOUS)
                            gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                            gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                            gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                            gg.getResults(50)
                            gg.editAll("-0.5", gg.TYPE_FLOAT)
                            gg.toast("准心开启成功")
                            gg.clearResults()
                            gg.setRanges(gg.REGION_ANONYMOUS)
                            gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                            gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
                            gg.getResults(5)
                            gg.editAll("-9999999", gg.TYPE_FLOAT)
                            gg.toast("地下天线开启成功")
                            gg.clearResults()
end
function g6()
qmnb = {
{["memory"] = 32},
{["name"] = "🌹50%🌹"},
{["value"] = tonumber("88.50576019287"), ["type"] = 16},
{["lv"] = tonumber("87.27782440186"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("0"), ["type"] = 16},
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "🌹100%🌹"},
{["value"] = tonumber("1.96875"), ["type"] = 16},
{["lv"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("999"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)

end                           

function g7()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("7.1689529418945", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("18.46202087402", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.4779739379883;2.8345839977264;3.1967880725861;3.8841888904572;3.1528658866882::208", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.4779739379883", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.95975875854", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("88996", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.88996", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.88996", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.toast("三级一套+5.56子弹定位成功")
end

function h1()
qmnb = {
{["memory"] = 32},
{["name"] = "猩猩套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function h2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1400687",gg.TYPE_DWORD)
gg.toast("开启成功")
end
function h3()
qmnb = {
{["memory"] = 32},
{["name"] = "蝙蝠侠"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405041, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function h4()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003018", gg.TYPE_DWORD)
  gg.toast("SCAE-L勇者赤橙美化成功")
end
function h5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001001", gg.TYPE_DWORD)
gg.toast("ak赤诚成功")
end
function h6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003001", gg.TYPE_DWORD)
gg.toast("SC白银(狂怒)成功")
end
function h7()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(" 1102002005 ", gg.TYPE_DWORD)
  gg.toast("UMP9勇者赤橙美化成功")
end


function j1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("防封1开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
	   dzy=jg[i].address
	   gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
  end
  gg.toast("防封2开启成功")
  gg.clearResults()
end
function j2()
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/afd/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_helicopter_0.19.3.13455.pak")
gg.toast("开启成功")
end
function j3()
gg.toast('正在注入.....')

gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", 16, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("搜索失败，重新运行游戏")
    gg.processKill()
    exit()
  else
    gg.searchNumber("2.2958874e-41", 16, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    do
      for _FORV_3_ = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 4,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 8,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 12,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 16,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 0,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 64,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address - 128,
            flags = 4,
            freeze = true,
            value = 177777
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address - 132,
            flags = 4,
            freeze = true,
            value = 177777
          }
        })



gg.toast('防十年注入成功')
gg.toast('注入防举报')
  gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.2F;1.8F:9::1", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("1.1F;1.4F:3::1", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("1.1D;1.4D:2::10", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.searchNumber("1.2F;1.8F:9::1", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("1.1F;1.4F:3::1", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("1.1D;1.4D:2::10", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.6", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.7", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.5;0.4::60", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.editAll("5", 64)
        gg.editAll("9", 64)
        gg.editAll("4.66", 64)
        gg.editAll("5.5", 64)
        gg.clearResults()

gg.toast('注入新值防十年')

gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.00000268536;6.66435296e-10",16)
    gg.getResults(999)
    gg.editAll("7.69856500626",16)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("909391408",4)
    gg.getResults(999)
    gg.editAll("1089886885",4)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67109377", 4)
  gg.getResults(50000)
  
  gg.editAll("0", 4)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.editAll("0", 16)
        gg.clearResults()
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.00000268536;6.66435296e-10",16)
    gg.getResults(999)
    gg.editAll("7.69856500626",16)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("909391408",4)
    gg.getResults(999)
    gg.editAll("1089886885",4)
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.5047707e-36", 16)
  gg.getResults(50000)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.50472478e-36", 16)
  gg.getResults(50000)
  gg.editAll("0", 16)
    gg.clearResults()
gg.searchNumber("131586", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
  gg.editAll("0", 4)
  gg.clearResults()
gg.searchNumber("12547", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
  gg.editAll("0", 4)
  	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", 4, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("新值防封开启成功")
	 gg.clearResults()
  gg.toast('过检测中........')
      os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
gg.toast('注入成功！开始奔放')
end end end end



function Exit()
  print("脚本次数每更新一次就增加体验次数")
  os.exit()
end




cs = "本人从不搬垃圾"
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end