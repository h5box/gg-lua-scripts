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


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
menu = gg.choice({
'🐶透视功能🐶',
'🐶大厅功能🐶',
'🐶落地功能🐶',
'🐶狗子防封(没用，请配合其他防封)🐶',
'🐶狗子nb，qq1073387437目前收徒🐶',
'🐶加速路飞功能🐶',
'🐶美化专区(先下好资源)🐶',
'🐶坠入凡间🐶'},
nil,'翻云覆雨天假手，兴衰两世我独狂  q群828701361')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then D() end
if menu == 4 then G() end
if menu == 5 then F() end
if menu == 6 then F() end
if menu == 7 then SKINW() end
if menu == 8 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'845透视',
'防闪',
'备用透视',
'自改上色',
'710透视',
'通用透视',
'835透视',
'855透视',
'返回上一页'},
nil,'qq1073378437q群828701361🐶🐶🐶')
if menu1 == nil then else 
if menu1[1] == true then a1() end
if menu1[2] == true then h11() end
if menu1[3] == true then h1() end
if menu1[4] == true then h4() end
if menu1[5] == true then a() end
if menu1[6] == true then h10() end
if menu1[7] == true then h9() end
if menu1[8] == true then a5() end
if menu1[9] == true then HOME() end
end
end



function B()
menu1 = gg.multiChoice({
'天线宝宝',
'人物地线',
'全屏自瞄',
'大厅功能带午后防抖',
 "ak黑金",
 "sca狂怒",
 "M416樱花",
 "98k拼色",
 "M16A4夏日",
 "UZI狂怒",
 "汤姆逊",
 "UP9赤橙",
'返回上一页'},
nil,'狗子qq1073387437q群828701361🐶🐶🐶')
if menu1 == nil then else
if menu1[1] == true then a6() end
if menu1[2] == true then HS6() end
if menu1[3] == true then a12() end
if menu1[4] == true then HS3() end
if menu1[5] == true then g1() end
if menu1[6] == true then g2() end
if menu1[7] == true then g3() end
if menu1[8] == true then g4() end
if menu1[9] == true then g5() end
if menu1[10] == true then g6() end
if menu1[11] == true then g7() end
if menu1[12] == true then g8() end
if menu1[13] == true then HOME() end
end
end



function D()
menu1 = gg.multiChoice({
'备用全屏自瞄',
'灵魂出窍',
'灵魂出窍关闭',
'盒子天线',
'圈圈自瞄',
'鸡腿自瞄第一步',
'鸡腿自瞄第二步',
'击杀全屏特效',
'返回上一页'},
nil,'狗子qq1073387437q群828701361🐶🐶')
if menu1 == nil then else 
if menu1[1] == true then HSh() end
if menu1[2] == true then h9() end
if menu1[3] == true then h9gb() end
if menu1[4] == true then d7() end
if menu1[5] == true then k() end
if menu1[6] == true then g10() end
if menu1[7] == true then g11() end
if menu1[8] == true then KILLXVIP() end
if menu1[9] == true then HOME() end
end
end



function G()
menu1 = gg.multiChoice({
'狗子范围',
'狗子防封',
'返回上一页'},
nil,'狗子qq1073387437🐶🐶🐶q群828701361🐶🐶')
if menu1 == nil then else
if menu1[1] == true then d3() end
if menu1[2] == true then NCFF() end
if menu1[3] == true then HOME() end
end
end



function F()
menu1 = gg.multiChoice({
'下蹲路飞',
'加速不拉',
'加速不拉关闭',
'狗子高挑',
'步枪伤害',
'人物瞬移',
'人物瞬移关闭',
'上帝视角',
'全图除草除树',
'子弹穿墙',
'巨人',
'加速下飞机开',
'加速下飞机关',
'不拉回加速第一步（大厅或落地）',
'不拉回加速第二步变态版（出生岛或落地）',
'不拉回加速第二步稳定版（出生岛或落地）',
'不拉回加速第三步（逃命加速）',
'关闭不拉回加速',
'关闭不拉回加速',
'狗子qq1073387437🐶🐶',
'返回上一页'},
nil,'狗子🐶🐶🐶qq1073387437q群828701361🐶🐶')
if menu1 == nil then else 
if menu1[1] == true then b5() end
if menu1[2] == true then RWJSK() end
if menu1[3] == true then RWJSG() end
if menu1[4] == true then RWGT() end
if menu1[5] == true then E() end
if menu1[6] == true then c2() end
if menu1[7] == true then c3() end
if menu1[8] == true then c1() end
if menu1[9] == true then a7() end
if menu1[10] == true then h7() end
if menu1[11] == true then d19() end
if menu1[12] == true then e9() end
if menu1[13] == true then e10() end
if menu1[14] == true then e3() end
if menu1[15] == true then e4() end
if menu1[16] == true then e5() end
if menu1[17] == true then e6() end
if menu1[18] == true then e7() end
if menu1[19] == true then e8() end
if menu1[20] == true then HOME() end
end
end

  function SKINW()
    MNSKINW = gg.multiChoice({
      "AKM Gold",
      "AKM New Year",
      "AKM Dazzling",
      "M416 Gold",
      "M416 Colorful",
      "M416 Hidden Ice Seal",
      "M416 Maple Leaf",
      "M416 Dazzling",
      "SCAR-L Dazzling",
      "SCAR-L Gold",
      "SCAR-L Hide Green White",
      "M16A4 Golden",
      "M16A4 Girl heart",
      "M16A4 Hidden Ice Seal",
      "GROZA Blue Space",
      "AUG Blue Space",
      "AUG Rainforest Roar",
      "QBZ Street Graffiti",
      "QBZ Dragon Relief",
      "M792 Christmas",
      "KAR Rainbow Six",
      "KAR Hide Black Dragon",
      "KAR Hide Apocalypse",
      "KAR Gold",
      "M24 Beige",
      "AWM Neon",
      "Win94 Beige",
      "SKS The Heart Of The Ocean",
      "MINI14 Rock Star",
      "SLR Snow Guard",
      "SLR Cool Silver",
      "QBU Girl Heart",
      "QBU Poisonous Spider",
      "UZI Street Kid",
      "UMP9 Toy Gun",
      "UMP9 Dazzling",
      "UMP9 Gold",
      "UMP9 New Years",
      "UMP9 Street Artisc",
      "UMP9 Blue Lighting",
      "S686 Brave Chick",
      "S1879 Golden",
      "S12K Wither",
      "M249 Wither",
      "DP-28 No Color",
      "P92 Beige",
      "P1911 Toy Gun",
      "R1895 Black & White",
      "P18C Beige",
      "R45 Brave Chick",
      "Short Pipe Pistol Beige",
      "Crossbow Silver",
      "Crowbar King Scepter",
      "Nepal",
      "Scythe Death Scythe",
      "Pan Ice Seal",
      "Pan Logo Technology",
      "🐶一键开启美化🐶 ",
      "[退出脚本]"
    }, nil, "【先下好资源包，不然枪会消失，大厅训练营打开】")
    if MNSKINW == nil then
    else
      if MNSKINW[1] == true then
        AKM1()
      end
      if MNSKINW[2] == true then
        AKM2()
      end
      if MNSKINW[3] == true then
        AKM3()
      end
      if MNSKINW[4] == true then
        M41()
      end
      if MNSKINW[5] == true then
        M42()
      end
      if MNSKINW[6] == true then
        M43()
      end
      if MNSKINW[7] == true then
        M44()
      end
      if MNSKINW[8] == true then
        M45()
      end
      if MNSKINW[9] == true then
        SCAR1()
      end
      if MNSKINW[10] == true then
        SCAR2()
      end
      if MNSKINW[11] == true then
        SCAR3()
      end
      if MNSKINW[12] == true then
        M161()
      end
      if MNSKINW[13] == true then
        M162()
      end
      if MNSKINW[14] == true then
        M163()
      end
      if MNSKINW[15] == true then
        GROZA()
      end
      if MNSKINW[16] == true then
        AUG1()
      end
      if MNSKINW[17] == true then
        AUG2()
      end
      if MNSKINW[18] == true then
        QBZ1()
      end
      if MNSKINW[19] == true then
        QBZ2()
      end
      if MNSKINW[20] == true then
        M792()
      end
      if MNSKINW[21] == true then
        KAR1()
      end
      if MNSKINW[22] == true then
        KAR2()
      end
      if MNSKINW[23] == true then
        KAR3()
      end
      if MNSKINW[24] == true then
        KAR4()
      end
      if MNSKINW[25] == true then
        M24()
      end
      if MNSKINW[26] == true then
        AWM()
      end
      if MNSKINW[27] == true then
        WIN94()
      end
      if MNSKINW[28] == true then
        SKS()
      end
      if MNSKINW[29] == true then
        MINI()
      end
      if MNSKINW[30] == true then
        SLR1()
      end
      if MNSKINW[31] == true then
        SLR2()
      end
      if MNSKINW[32] == true then
        QBU1()
      end
      if MNSKINW[33] == true then
        QBU2()
      end
      if MNSKINW[34] == true then
        UZI()
      end
      if MNSKINW[35] == true then
        UMP1()
      end
      if MNSKINW[36] == true then
        UMP2()
      end
      if MNSKINW[37] == true then
        UMP3()
      end
      if MNSKINW[38] == true then
        UMP4()
      end
      if MNSKINW[39] == true then
        UMP5()
      end
      if MNSKINW[40] == true then
        UMP6()
      end
      if MNSKINW[41] == true then
        S686()
      end
      if MNSKINW[42] == true then
        S1879()
      end
      if MNSKINW[43] == true then
        S12K()
      end
      if MNSKINW[44] == true then
        M249()
      end
      if MNSKINW[45] == true then
        DP28()
      end
      if MNSKINW[46] == true then
        P92()
      end
      if MNSKINW[47] == true then
        P1911()
      end
      if MNSKINW[48] == true then
        R1895()
      end
      if MNSKINW[49] == true then
        P18C()
      end
      if MNSKINW[50] == true then
        R45()
      end
      if MNSKINW[51] == true then
        PIPE()
      end
      if MNSKINW[52] == true then
        CROS1()
      end
      if MNSKINW[53] == true then
        CROS2()
      end
      if MNSKINW[54] == true then
        NEPAL()
      end
      if MNSKINW[55] == true then
        SCYTHE()
      end
      if MNSKINW[56] == true then
        PAN1()
      end
      if MNSKINW[57] == true then
        PAN2()
      end
      if MNSKINW[58] == true then
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
      if MNSKINW[59] == true then
        HOME()
      end
    end
    PUBGMH = -1
  end
  
function a1()
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
end



function h1()
  
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
end



function h4()
while true do
 t = gg.prompt({"  人物颜色修改界面\n\n  默认5是白色\n  6是蓝色，7是绿色，8是黑色\n  其他自测"}, {[1]="6"}, {[1]="number"})
if t == nil then break Main() else
  gg.setRanges(gg.REGION_VIDEO) 
local tb1 = {{tonumber("1194344475"),tonumber("-4")}, {tonumber("1194379806"),tonumber("4")}, {tonumber("1661767680"),tonumber("12")}, } 
local tb2 = {{t[1],tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
gg.clearList() break
end end  end
function h5()
gg.setRanges(gg.REGION_VIDEO)
local tb1 = {{tonumber("5.2806111e-40"),tonumber("-160")}, {tonumber("6.50000333786"),tonumber("-148")}, {tonumber("3.7615819e-37"),tonumber("-124")}, {tonumber("2"),tonumber("0")}, } 	
local tb2 = {{tonumber("9999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(gg.REGION_VIDEO) 
local tb1 = {{tonumber("1.1202011e-19"),tonumber("-124")}, {tonumber("1.1202015e-19"),tonumber("-116")}, {tonumber("3.7615819e-37"),tonumber("-108")}, {tonumber("2"),tonumber("0")}, } 	
local tb2 = {{tonumber("9999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function h6()
gg.setRanges(gg.REGION_VIDEO) 
local tb1 = {{tonumber("8.6011454e-29"),tonumber("-168")}, {tonumber("4.7607056e21"),tonumber("-164")}, {tonumber("1.3912525e-19"),tonumber("-156")}, {tonumber("2"),tonumber("0")}, {tonumber("0.24022650719"),tonumber("20")}, } 	
local tb2 = {{tonumber("110"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)

gg.setRanges(gg.REGION_VIDEO)
local tb1 = {{tonumber("282066986"),tonumber("-8")}, {tonumber("1080033322"),tonumber("-4")}, {tonumber("8200"),tonumber("0")}, {tonumber("1194380075"),tonumber("4")}, } 	
local tb2 = {{tonumber("6"),tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
end
function h7()
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("855红色开始成功")
end
function h8()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8200;1,080,035,591::512",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("855黄色开启成功")
end



function h11()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("通φ放闪开启成功")
end



function a6()
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

end



function d2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("真伤头部范围开启成功")
  end



 function a12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("全屏自瞄成功")
end


function HS3()
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
gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(50)

  gg.editAll("280", gg.TYPE_FLOAT)

  gg.toast("范围伤害已开启")

qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全图除草"},
{["value"] = 29806, ["type"] = gg.TYPE_DWORD},
{["lv"] = 7630437, ["offset"] = 40, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1633907556, ["offset"] = 64, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 1936942449, ["offset"] =140 , ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)

Main0()
end



function HSh()
 
  qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全屏自瞄"},
{["value"] = 3.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.20000004768, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.10000000149, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 36, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 200, ["offset"] = 52, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20, ["offset"] = 56, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function HS6()

qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线开启成功"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =-999999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function h9()

  gg.clearResults()

  gg.setRanges(500)

  gg.searchNumber("10000;20000::40", 4, false, 536870912, 0, -1)

  gg.searchNumber("10000", 4, false, 536870912, 0, -1)

  gg.getResults(500)

  gg.editAll("113", 4)

  h9sj="1"

  gg.toast("灵魂已出窍")

end



function h9gb()

  gg.clearResults()

  gg.setRanges(500)

  gg.searchNumber("113;20000::40", 4, false, 536870912, 0, -1)

  gg.searchNumber("113", 4, false, 536870912, 0, -1)

  gg.getResults(550)

  gg.editAll("10000", 4)

  h9sj="0"

  gg.toast("灵魂已归体")

end



function d7()

  gg.clearResults()

  gg.setRanges(gg.REGION_BAD)

  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

  gg.getResults(30)

  gg.editAll("99999",gg.TYPE_FLOAT)

  d7sj="99999"

  gg.toast('骨灰盒子天线已开启 全局有效')

end



function e10xg()

  st = gg.prompt({

    "车速修改",

    "浮空修改(正常为45)"

  }, {"99999","1045"})



  if st ~= nil then

    gg.clearResults()

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber("0.76000005007;0.96078431606;1;"..e10sja, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber(e10sja)

    gg.getResults(9999)

    gg.editAll(st[1], gg.TYPE_FLOAT)

    e10sja=st[1]

    gg.clearResults()

    gg.setRanges(gg.REGION_ANONYMOUS)

    gg.searchNumber(e10sjb..";15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber(e10sjb)

    gg.getResults(999)

    gg.editAll(st[2], gg.TYPE_FLOAT)

    e10sjb=st[2]

    gg.toast("吉普浮空加速修改成功")

  end

end



function f4gb()

  gg.clearResults()

  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("0.76000005007;0.96078431606;1;99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(9999)

  gg.editAll("0.74509805441", gg.TYPE_FLOAT)

  gg.clearResults()

  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("1000;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(999)

  gg.editAll("45", gg.TYPE_FLOAT)

  f4sj="45"

  gg.toast("吉普浮空加速已关闭")

end



function b5()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "下蹲路飞"},
{["value"] = 35.02524185181, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -0.67914116383, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -0.20633073151, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -0.68966287374, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 320, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function RWJSK()
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
gg.toast("全局加速不拉回开启")
end



function RWJSG()
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
gg.toast("全局加速不拉回已关闭")
end



function RWGT()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("3",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3;35;443;55;0.57357645035::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("443",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("2500",gg.TYPE_FLOAT)
gg.toast("高跳无伤开启成功")
end



function E()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M416伤害开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("SC伤害开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AKM伤害开启成功")
end



function a()
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
{["name"] = "人物透视开启成功"},
{["value"] = 5.6262676e21, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.0874458e21, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.1058931e21, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 5444, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function h10()
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
    gg.toast('通φ透视开启成功')
end



function h9()
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
  gg.toast("835完美透视开启成功")
  end
  
  
  
 function NCFF()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("防封开启失败")
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 70037}})
gg.addListItems({[1] = {address =jz[i].address+4,flags = 4,freeze = true,value = 70037}})
gg.addListItems({[1] = {address =jz[i].address+8,flags = 4,freeze = true,value = 70037}})
gg.addListItems({[1] = {address =jz[i].address+12,flags = 4,freeze = true,value = 70037}})
gg.addListItems({[1] = {address =jz[i].address+16,flags = 4,freeze = true,value = 70037}})
gg.addListItems({[1] = {address =jz[i].address+20,flags = 4,freeze = true,value = 70032}})
gg.addListItems({[1] = {address =jz[i].address+100,flags = 4,freeze = true,value = 16384}})
end
gg.toast("防封开启成功")
end end



function d3()
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
gg.toast("大范围开启成功")
end



function c2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("4.5",gg.TYPE_FLOAT)
gg.toast("瞬移已开启")
gg.clearResults()
end

function c3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;50;50;1000;4.5,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("4.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("瞬移已关闭")
gg.clearResults()
end

function c1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("人物视野变大开启成功")
	 gg.clearResults()
	 end
function a7()
gg.setRanges(gg.REGION_VIDEO)

  gg.searchNumber("1;256;37;3;2;8202;1024;8195", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("8195", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("2", gg.TYPE_DWORD)

  gg.toast("全图除草除树已开启")
    
    
end

function h7()

  gg.setRanges(gg.REGION_C_BSS)

  gg.clearResults()

  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(2)

  gg.editAll("-10", gg.TYPE_FLOAT)

  gg.clearResults()

  h7sj="1"

  gg.toast("子弹穿墙已开启")

end



function d19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("实体巨人开启成功")
end
function e9()
 gg.setRanges(8) 
local tb1 = {{tonumber("-2.4787818e20"),tonumber("-8")}, {tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-2.8246552e28"),tonumber("8")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("0.1"),tonumber("20")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function e10()
 gg.setRanges(8) 
local tb1 = {{tonumber("-2.4787818e20"),tonumber("-8")}, {tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-2.8246552e28"),tonumber("8")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("0.00050000002"),tonumber("20")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)

end


function a5()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.0;5.552493e21',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.88667484e-43;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.08862829e-28;2.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,200;1,661,796,352)", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("上色开启成功")
  gg.clearResults()

  gg.setRanges(gg.REGION_VIDEO)

  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(20)

  gg.editAll("9999", gg.TYPE_FLOAT)

  gg.toast("防闪开启中")

  gg.clearResults()

  gg.setRanges(gg.REGION_VIDEO)

  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(20)

  gg.editAll("9999", gg.TYPE_FLOAT)

  a1sj="130"

  gg.toast("防闪已开启")
  
end



function g1()
gg.setRanges(32)
local Name="ak黑金"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, 12}, }
local tb2 = {{101001002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="ak黑金"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, -12}, }
local tb2 = {{101001002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("ak黑金成功")
end

function g2()
gg.setRanges(32)
local Name="SC黑金"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, 12}, }
local tb2 = {{101003001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="SC黑金"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, -12}, }
local tb2 = {{101003001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("SC黑金成功")
end

function g3()
gg.setRanges(32)
local Name="M416樱花"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, 12}, }
local tb2 = {{101004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M416樱花"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, -12}, }
local tb2 = {{101004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M416樱花成功")
end

function g4()
gg.setRanges(32)
local Name="98k拼色"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, 12}, }
local tb2 = {{103001001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="98k拼色"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, -12}, }
local tb2 = {{103001001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("98k拼色成功")
end

function g5()
gg.setRanges(32)
local Name="M16A4夏日"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, 12}, }
local tb2 = {{101002002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M16A4夏日"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, -12}, }
local tb2 = {{101002002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M16A4夏日成功")
end

function g6()
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, 12}, }
local tb2 = {{102001001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, -12}, }
local tb2 = {{102001001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("UZI美化成功")
end

function g7()
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, 12}, }
local tb2 = {{102004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, -12}, }
local tb2 = {{102004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("汤姆逊美化成功")
end

function g8()
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, 12}, }
local tb2 = {{102002001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, -12}, }
local tb2 = {{102002001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("up9美化成功")
end

function k()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.toast("50%")
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.toast("圈圈自瞄开启成功")
end

function g10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(10)

gg.editAll('0.03', gg.TYPE_FLOAT)
gg.toast("鸡腿自瞄第一部已开启")
gg.toast("请在出生地开启自瞄第二步")
end

function g11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;1065353216;50528513;1203982336:', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('1065353216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(10)

gg.editAll('1,090,519,040', gg.TYPE_DWORD)
gg.toast("自瞄已开启")
end
  
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
    function KILLXVIP()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.toast("Kill Players X ✔")
  end
 function e3()
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
function e4()
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.25"), tonumber("0")}, {tonumber("1.25"),tonumber("4")}, {tonumber("1.25"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function e5()
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.2"), tonumber("0")}, {tonumber("1.2"),tonumber("4")}, {tonumber("1.2"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function e6()
 gg.setRanges(32) 
local tb1 = {{tonumber("3600000000"),tonumber("60")}, {tonumber("2500000000"),tonumber("68")} } 	
local tb2 = {{tonumber("1100"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function e7()
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

function e8()
 gg.setRanges(32) 
local tb1 = {{tonumber("3600000000"),tonumber("60")}, {tonumber("2500000000"),tonumber("68")} } 	
local tb2 = {{tonumber("479.5"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
  function Exit()
   print("狗子qq1073387437🐶🐶，目前收徒🐶🐶，本脚免费🐶🐶，要是要钱恭喜你被骗了🐶🐶，🐶🐶🐶二改死吗 他明白 他明白 我给不起 ")
  os.exit()
end



cs = "🐶🐶qq1073387437，🐶🐶此脚本加密2改死吗，🐶🐶本人收徒1073387437，🐶🐶大佬勿喷"
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