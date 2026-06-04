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
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "己开启,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end



function Main()
menu = gg.choice({
"自用透色",
"自用功能",
"自瞄专区",
"范围路飞",
"跳伞加速",
"天线功能",
"加速不拉",
"一键美化",
"退出"},
2020,' 交流群1134871002 ')
  if menu == 1 then
    A()
  end
  if menu == 2 then
    B()
  end
  if menu == 3 then
    Zm()
  end
  if menu == 4 then
    C()
  end
  if menu == 5 then
    D()
  end
  if menu == 6 then
    E()
  end
  if menu == 7 then
    F()
  end
  if menu == 8 then
        AKM2()
        M42()
        SCAR3()
        M162()
        GROZA()
        AUG2()
        QBZ1()
        M792()
        KAR4()
        M24()
        AWM()
        WIN94()
        SKS()
        MINI()
        SLR1()
        QBU1()
        UZI()
        UMP4()
        S686()
        S1879()
        S12K()
        M249()
        DP28()
        P92()
        P1911()
        R1895()
        P18C()
        R45()
        PIPE()
        CROS1()
        CROS2()
        PAN2()
      end
    if menu == 9 then
    Exit()
  end
     XGCK=-1
    end



function A()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("35",gg.TYPE_FLOAT)
gg.toast("己开启")
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912567e-19;3.9236357e-44;1.1202056e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("35.0",gg.TYPE_FLOAT)
gg.toast("通用透视己开启")
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物红色己开启")
end


function B()
menu = gg.multiChoice({
"大厅一套(大厅)",
"落地锁头",
"天线地线",
"除草除树",
"全身大范围",
"加速第一步",
"加速第二步",
"加速最后一步",
"关不拉回加速",
"上帝视角",
"新路飞有伤",
"全屏击杀特效(超帅)",
"子弹微追踪",
"步枪增伤",
"返回"},
nil,'交流群1134871002')
if menu == nil then
else
if menu[1] == true then
  b1()
end
if menu[2] == true then
  b2()
end
if menu[3] == true then
  b3()
end
if menu[4] == true then
  b4()
end
if menu[5] == true then
  b5()
end
if menu[6] == true then
  b6()
end
if menu[7] == true then
  b7()
end
if menu[8] == true then
  b8()
end
if menu[9] == true then
  b9()
end
if menu[10] == true then
  b10()
end
if menu[11] == true then
  b11()
end
if menu[12] == true then
  b12()
end
if menu[13] == true then
  b13()
end
if menu[14] == true then
  b14()
end
if menu[15] == true then
  HOME()
end
end
LW1 = 0
LW2 = 0
end



function C()
menu = gg.multiChoice({
"头部范围",
"诛仙超级大范围",
"变态全身真伤范围",
"超级范围伤害",
"最新穿墙大范围",
"cd小范围",
"落地大范围",
"范围拾取",
"超级头部范围",
"大范围",
"小范围",
"蹲下路飞",
"站立路飞",
"趴下路飞",
"左手路飞",
"返回"},
nil,'Q2508097558')
if menu == nil then
else
if menu[1] == true then
  c1()
end
if menu[2] == true then
  c2()
end
if menu[3] == true then
  c3()
end
if menu[4] == true then
  c4()
end
if menu[5] == true then
  c5()
end
if menu[6] == true then
  c6()
end
if menu[7] == true then
  c7()
end
if menu[8] == true then
  c8()
end
if menu[9] == true then
  c9()
end
if menu[10] == true then
  c10()
end
if menu[11] == true then
  c11()
end
if menu[12] == true then
  c12()
end
if menu[13] == true then
  c13()
end
if menu[14] == true then
  c14()
end
if menu[15] == true then
  c15()
end
if menu[16] == true then
  HOME()
end
end
LW1 = 0
LW2 = 0
end

function D()
 gg.setRanges(8) 
local tb1 = {{ ("-2.4787818e20"), ("-8")}, { ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-2.8246552e28"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("0.1"), ("20")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("十四秒后自动关闭")
gg.sleep(14000)
 gg.setRanges(8) 
local tb1 = {{ ("-2.4787818e20"), ("-8")}, { ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-2.8246552e28"), ("8")}, } 	
local tb2 = {{ ("-6.1526231e27"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("0.00050000002"), ("20")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("祝您旅途愉快")
 end



function E()
menu = gg.multiChoice({
"天线1",
"天线2(天线1用不了用这个)",
"盒子天线",
"超级定位装备(娱乐😂)",
"脖子天线(推荐)",
"返回"},
nil,'原创')
if menu == nil then
else
if menu[1] == true then
  e1()
end
if menu[2] == true then
  e2()
end
if menu[3] == true then
  e3()
end
if menu[4] == true then
  e4()
end
if menu[5] == true then
  e5()
end
if menu[6] == true then
  HOME()
end
end
LW1 = 0
LW2 = 0
end



function F()
menu1 = gg.multiChoice({
  "加速第1步",
  "第2步",
  "第1步关闭",
  "第2步关闭",
  "第3步",
  "第3步关闭",
  "计划哥加速开启",
  "计划哥加速关闭",
  "超强加速",
  "超强加速关",
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then f8() end
if menu1[9] == true then f9() end
if menu1[10] == true then f10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end

function Zm()
local Zm=gg.multiChoice({
"不分敌我",
"拿枪锁人",
"开枪锁人",
"趴下照锁",
"全图距离",
"270℃范围",
"频率自瞄",
"近战自瞄",
},{
[1]=false,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if Zm==nil then 
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if Zm[1]==true then 
DW()--队友自瞄
end
if Zm[2]==true then
qs()--持枪自瞄
end
if Zm[3]==true then
kh()--开火自瞄
end
if Zm[4]==true then
px()--趴下自瞄
end
if Zm[5]==true then
jl()--距离自瞄
end
if Zm[6]==true then
fw()--范围自瞄
end
if Zm[7]==true then 
pl()--频率自瞄
end
if Zm[8]==true then
jz()--近战自瞄
end
end
XGCK=-1
end

function DW()
Name = "无视队友自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)
end

function qs()
Name = "持枪自瞄--滋味" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)

end

function kh()
Name = "开火自瞄滋味" 
gg.setRanges(8)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "开火自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)
end

function px()
Name = "趴下自瞄--滋味" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)
end

function jl()
Name = "距离自瞄--滋味" 
gg.setRanges(8)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)
end

function fw()
Name = "270℃—滋味" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(8)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)
end

function pl()
Name = "频率自瞄-滋味"
gg.setRanges(8)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)
end

function jz()
Name = "近战自瞄" 
gg.setRanges(8)
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
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function a1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.0;5.552493e21',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("第一步")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.88667484e-43;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("第二步")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.08862829e-28;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("己开启")
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1638425, -8}, {1080033307, -4}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("红色上色成功")
end
function a2()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "845透视1"},
{["value"] = tonumber("5.4049168e21"), ["type"] = tonumber("16")},
{["lv"] = tonumber("1.3912565e-19"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("2"), ["offset"] = tonumber("12"), ["type"] = 16},
{["lv"] = tonumber("1.6623113e-19"), ["offset"] = tonumber("16"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("120"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "845透视2"},
{["value"] = tonumber("1.1202056e-19"), ["type"] = tonumber("16")},
{["lv"] = tonumber("3.9236357e-44"), ["offset"] = tonumber("-4"), ["type"] = 16},
{["lv"] = tonumber("2"), ["offset"] = tonumber("108"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("120"), ["offset"] = tonumber("108"), ["type"] = 16},
}
xqmnb(qmnb)
  
gg.setRanges(gg.REGION_VIDEO) 
local tb1 = {{tonumber("1194344475"),tonumber("-4")}, {tonumber("8201"),tonumber("0")}, {tonumber("1194379806"),tonumber("4")}, {tonumber("1661767680"),tonumber("12")}, } 
	local tb2 = {{tonumber("7"),tonumber("0")}, {tonumber("7"),tonumber("-8")}, } 	
	local dataType = 4
 SearchWrite(tb1,tb2, dataType)
 gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功")
end
function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("835完美透视己开启")
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功")
end
function a4()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "人物马赛克"},
{["value"] = 3.75000405312, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.9252807e21, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.9068345e21, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 5444, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "人物透视己开启"},
{["value"] = 5.6262676e21, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.0874458e21, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.1058931e21, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 5444, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功")
end
function a5()
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2, 0x4504}, {-5.5695588e-40, 0x44C8}, {4.7408149e21, 0x44C4},}
    local tb2 = {{60, 0x4504},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{2, 0x6900}, {4.8699466e21, 0x6764}, {5.3495659e21, 0x675C},}
    local tb2 = {{60, 0x6900, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("己开启")
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功")    
end
function a6()
	  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("625透视己开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.8189894e-12;3;4.75926e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("人物红色己开启")
end
function a7()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 615 Actived✔ ")
end
function a8()
      gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.9242857e21F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.9327361e10F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.6896617e-29F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("450透视己开启")
 gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,080,033,283D;1,080,035,849D;1,080,033,292D;8,200D;1,194,380,045D;1,661,239,308D", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("红色己开启")
end
function a9()
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功")
end

function a10()
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
function a11()
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
    gg.toast("☬ Wallhack Mediatek P60 ☬")
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('802,824,192;48;937,041,920;40;736,370,688;32;802,824,192;48;802,824,192;16;802,824,192;2;2::', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('40', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('38', gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('p60红色')
end	 	 
function a12()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00100000078;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140624;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00100000078;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("己开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("黄色己开启")
  end 
  
function a13()
gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100 ', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('通φ透视己开启')
   end   
function a14()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("己开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("己开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("己开启")
end 
function a15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("304D;328D;328D;64D;3,552D:100",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("64", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("61",gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value = '61'
t[i].freeze = true
end
gg.addListItems(t)
gg.toast("透视成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("己开启")
gg.clearResults()
	 gg.setRanges(15)
	 gg.searchNumber("2.8025969e-45;1.4012985e-45;1.6815582e-44;0.19563832879;3.41997051239", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.19563832879;3.41997051239", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
	 end
gg.toast("上色己开启")
end
function a16()
gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 jg=gg.getResults(100)
 sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do dzy=jg[i].address
 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.9}})
end
 gg.toast("流畅透视己开启")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

function b1()
  gg.toast("正在开启，请稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('-6.1550321e27;-5.7270139e27;-2.786982e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('-2.786982e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_FLOAT)

  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll('0', gg.TYPE_FLOAT)

  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll('90', gg.TYPE_FLOAT)

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749F;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("范围无后开始成功")
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
  gg.toast("全屏自瞄")
  qmnb = {
      {
        ['memory'] = gg.REGION_ANONYMOUS
      },
      {
        ['name'] = '大厅除草己开启'
      },
      {
        ['value'] = 29806,
        ['type'] = gg.TYPE_DWORD
      },
      {
        ['lv'] = 7630437,
        ['offset'] = 40,
        ['type'] = gg.TYPE_DWORD
      },
      {
        ['lv'] = 1633907556,
        ['offset'] = 64,
        ['type'] = gg.TYPE_DWORD
      }
    }
    qmxg = {
      {
        ['value'] = 1936942449,
        ['offset'] = 140,
        ['type'] = gg.TYPE_DWORD
      }
    }
    xqmnb(qmnb)
end

function b2()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("25")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("50")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("75")
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("100")
gg.toast("锁头己开启")
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

function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "天线1"},
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
{["name"] = "天线2"},
{["value"] = tonumber("1.96875"), ["type"] = 16},
{["lv"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("999"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("-9999999", gg.TYPE_FLOAT)
  gg.toast("地下天线己开启")
end

function b4()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-443727872D;-335544449D:5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-335544449", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("己开启")
  gg.clearResults()
end

function b5()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("147", gg.TYPE_FLOAT)
    gg.toast("范围己开启")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("147", gg.TYPE_FLOAT)
    gg.toast("新版范围己开启 ")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("150", gg.TYPE_FLOAT)
    gg.toast("全身大范围己开启")
end

function b6()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function b7()
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.25"), tonumber("0")}, {tonumber("1.25"),tonumber("4")}, {tonumber("1.25"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function b8()
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.2"), tonumber("0")}, {tonumber("1.2"),tonumber("4")}, {tonumber("1.2"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function b9()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1"), tonumber("0")}, {tonumber("1"),tonumber("4")}, {tonumber("1"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("加速己关闭")
end


function b10()
gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220.0:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2200", gg.TYPE_FLOAT)
  gg.toast("上帝视角")
end

function b11()
xx=gg.alert("您开启的功能可能无敌，请谨慎","确定","退出")
if xx == 2 then Main() end
if xx == 1 then end
qmnb = {
{["memory"] = 32},
{["name"] = "路飞"},
{["value"] = 9.49029350281, ["type"] = 16},
{["lv"] = 0.00642728806, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 500, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function b12()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.toast("Kill Players X ✔")
end

function b13()
gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("260", gg.TYPE_FLOAT)
 gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("260", gg.TYPE_FLOAT)
 gg.clearResults()
 gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("120", gg.TYPE_FLOAT)
 gg.toast("子弹微追踪己开启")
end

function b14()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("166000", gg.TYPE_FLOAT)
gg.toast("25%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140000", gg.TYPE_FLOAT)
gg.toast("50%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("167000", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("180000", gg.TYPE_FLOAT)
gg.toast("步枪增伤己开启")
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function c1()
gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{25, 0x678C}, {0.00009203507, 0x6868},{-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{260, 0x686C,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{30.5, 0x6880}, {0.00009203507, 0x6868}, {-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{260, 0x6880, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{16, 0x9EF8}, {-92.2311706543, 0x9EF4}, {-86.45767974854, 0x9EF0},{-2.92052054405, 0x9EEC},}
    local tb2 = {{120, 0x9EF8, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("头部范围己开启")
end
function c2()
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
function c3()
A = gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.toast("10%")
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("20%")
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("40%")
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("70%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("80%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("90%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.toast("变态全身真伤范围己开启")
end
function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-92.2311706543;16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("16;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-200", gg.TYPE_FLOAT)
  gg.toast("超级范围伤害己开启")
end
function c5()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("穿墙己开启")
  gg.clearResults()
  gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140", gg.TYPE_FLOAT)
  gg.toast("大范围己开启")
end
function c6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("80",gg.TYPE_FLOAT)
gg.toast("CD小范围完成")
end
function c7()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "头部范围"},
{["value"] = 0.00009203507, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 30.5, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 295, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["value"] = 295, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全身范围"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 260, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 120, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function c8()
gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{200,0x7D40}, {7.5279292e-24, 0x7D04}, }
    local tb2 = {{300, 0x7D40},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("范围拾取己开启")
end
function c9()
A = gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{25, 0x678C}, {0.00009203507, 0x6868},{-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{699, 0x686C,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{30.5, 0x6880}, {0.00009203507, 0x6868}, {-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{699, 0x6880, false},} 
    SearchWrite(tb1, tb2, dataType)
gg.toast("头部范围已开启")
end
function c10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("正在开启第二步")
gg.clearResults()
gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140", gg.TYPE_FLOAT)
gg.toast("大范围己开启")
end
function c11()
gg.clearResults()
gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("小范围己开启")
end

function c12()
gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{18.38787841797,0x5860}, {-0.01565527916, 0x5840}, {-0.00102636218, 0x583C},}
    local tb2 = {{160, 0x5860},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("下蹲路飞已开启")
end
function c13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("站立路飞开启")
end
function c14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("18.38614463806;0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("趴下路飞开启")
end
function c15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614845276;0.53446006775;-3.4266242981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("左手路飞开启")
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function e1() 
qmnb = {
{["memory"] = 32},
{["name"] = "50%"},
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
{["name"] = "100%"},
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

function e2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("千米天线")
end

function e3()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(30)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("盒子天线己开启")
end 

function e4()
A = gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{7.1689529418945, 0x38A4}, {9.2457857132, 0x489C}, {13.18564987183, 0x4894},}
    local tb2 = {{999999, 0x38A4},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.4779739379883, 0x749C}, {1.38781404495, 0x7498}, {2.03120303154, 0x748C},}
    local tb2 = {{99999, 0x749C, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{7.4993133544922, 0xD1C4}, {-25.68770980835, 0xD1C0}, {17.2485370636, 0xD1BC},}
    local tb2 = {{99999, 0xD1C4, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.10485887527, 0x7B60}, {4.03340053558, 0x7B5C}, {15.11002922058, 0x7B58},}
    local tb2 = {{99999, 0x7B60, false},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("3级装备+8倍镜天线已开启  ") 
   gg.setRanges(gg.REGION_VIDEO)                      
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("消音器天线己开启")
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("步枪快扩天线已开启")    
end      
        
function e5()          
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线一开启")          
end              
                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function f1()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273126264269", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267068834414592",gg.TYPE_QWORD)
gg.toast("己开启")
end



function f2()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1328550408728725571", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408578138112",gg.TYPE_QWORD)
gg.toast("己开启")
end



function f3()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1228926273126264269", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273201366461", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1296744153870237696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744149883614555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1585267068834414592", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267064848315881",gg.TYPE_QWORD)
gg.toast("己关闭")
end



function f4()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1328550408578138112", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408728725571",gg.TYPE_QWORD)
gg.toast("己关闭")
end



function f5()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-3.4127096e20;-8.7955589e22:29",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-8.7955589e22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("己开启")
end



function f6()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-3.4127096e20;0:29",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-8.7955589e22",gg.TYPE_FLOAT)
gg.toast("己关闭")
end


function f7()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.335"), tonumber("0")}, {tonumber("1.335"),tonumber("4")}, {tonumber("1.335"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.2"), tonumber("0")}, {tonumber("1.2"),tonumber("4")}, {tonumber("1.2"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function f8()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1"), tonumber("0")}, {tonumber("1"),tonumber("4")}, {tonumber("1"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function f9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("加速第一步开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("加速第二部开启")
end
function f10()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.3;1.3;1.3;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("加速关闭")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   function AKM1()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-466", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-568", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("200", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Skin Already Open To Hack")
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101001007", gg.TYPE_DWORD)
    gg.toast("AKM Gold")
  end
  function AKM2()
    gg.clearResults()
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101001030", gg.TYPE_DWORD)
    gg.toast("AKM New Years")
  end
  function AKM3()
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101001006", gg.TYPE_DWORD)
    gg.toast("AKM Dazzling")
  end
  function M41()
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101004034 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M42()
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101004035 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M43()
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101004045 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M44()
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101004036 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M45()
    gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101004015", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SCAR1()
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101003018", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SCAR2()
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101003016", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SCAR3()
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101003020", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M161()
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101002009", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M162()
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101002019", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M163()
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101002020", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function GROZA()
    gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101005002", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function AUG1()
    gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101006007", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function AUG2()
    gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101006006", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function QBZ1()
    gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101007009", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function QBZ2()
    gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101007006", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M792()
    gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1101008010", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function KAR1()
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1103001031 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function KAR2()
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1103001040 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function KAR3()
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1103001042 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function KAR4()
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1103001013 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M24()
    gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103002001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function AWM()
    gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103003002", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function WIN94()
    gg.searchNumber("10300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103008001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SKS()
    gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103004004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function MINI()
    gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103006002", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SLR1()
    gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103009010", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SLR2()
    gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103009012", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function QBU1()
    gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103010004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function QBU2()
    gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1103010003", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UZI()
    gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1102001004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP1()
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1102002003 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP2()
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1102002005 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP3()
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1102002020 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP4()
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1102002026 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP5()
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(" 10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1102002028 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function UMP6()
    gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1102003002", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function THOMSON()
    gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("110004001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function S686()
    gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1104001004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function S1879()
    gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1104002004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function S12K()
    gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1104003003", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function M249()
    gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1105001001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function DP28()
    gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1105002001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function P92()
    gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106001001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function P1911()
    gg.searchNumber("10600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106002004", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function R1895()
    gg.searchNumber("10600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106003001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function P18C()
    gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106004001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function R45()
    gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106005002", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function PIPE()
    gg.searchNumber("10600600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10600600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1106006001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function CROS1()
    gg.searchNumber("10700100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10700100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1107001001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function CROS2()
    gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1108002003", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function NEPAL()
    gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1108002001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function SCYTHE()
    gg.searchNumber("10800300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10800300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1108003001", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function PAN1()
    gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1108004027 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end
  function PAN2()
    gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(" 1108004054 ", gg.TYPE_DWORD)
    gg.toast("Done")
  end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
function Exit()
print("")
os.exit()
end



function HOME()
kele0=1
Main()
end



cs = '我太难了'
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
