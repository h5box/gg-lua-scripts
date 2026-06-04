
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
menu = gg.choice({
'透视功能',
'上色功能',
'透视防闪',
'大厅功能',
'落地功能',
'退出脚本'},
2019,'有问题评论出来')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'新660透视',
'旧660透视',
'835透视',
'新845透视(偏移)',
'845透视',
'855透视(偏移)',
'710透视',
'625透视',
'返回上一页'},
nil,'有问题评论出来')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() a15()end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'660新黄色',
'660旧黄色',
'845蓝色',
'人物蓝色',
'人物红色',
'人物黄色',
'人物白色',
'人物蓝色',
'人物紫色',
'人物彩色',
'855上色',
'855黄色',
'返回上一页'},
nil,'有问题评论出来')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'新透视防闪(稳定)',
'房屋防闪(稳定)',
'旧透视防闪(稳定)',
'返回上一页'},
nil,'反馈群:617507585(内有裸奔框)')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'大厅无后①',
'大厅无后②',
'大厅无后③',
'大厅无后④',
'循环大厅无后',
'大厅防抖①',
'大厅防抖②',
'大厅聚点',
'大厅子弹穿墙',
'大厅范围',
'返回上一页'},
nil,'有问题评论出来')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
'人物地线',
'盒子定位',
'循环范围',
'远处除草',
'黑夜模式',
'吉普加速(可能封)',
'全图除雾',
'移动天线(可能封)',
'站立路飞',
'返回上一页'},
nil,'有问题评论出来')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local t = gg.getResults(9999)
    gg.clearResults()
    if t ~= nil then
        local r = {}
        for j=2, #Search do
            for i, v in ipairs(t) do
                r[i] = {}
                r[i].address = v.address + Search[j][2] - Search[1][2]
                r[i].flags = v.flags
            end
            r = gg.getValues(r)
            for i = #t, 1, -1 do
                if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
                    table.remove(t, i)
                    table.remove(r, i)
                end
            end       
        end
        --写入数据
        local r = {}
        for i=1, #t do
            for j=1, #Write do
                r[#r+1] = {}
                r[#r].address = t[i].address + Write[j][2] - Search[1][2]
                r[#r].flags = t[i].flags
                r[#r].value = Write[j][1]
                r[#r].freeze = true--冻结的话修改后面加false
            end 
        end
        gg.setValues(r)
        
       -- gg.addListItems(r)
    end
end
          

function a1()
name = "人物透视"
    gg.setRanges(gg.REGION_BAD)
    local tb1 = {{1.8947657e-40, 0x4A8},{-5.5695588e-40,0x4C8},{2.0, 0x504}}
    local tb2 = {{120.0, 0x504}}
    local dataType = gg.TYPE_FLOAT
    SearchWrite(tb1, tb2, dataType)

    gg.setRanges(gg.REGION_BAD)
    local tb1 = {{2.718519e-43, 0x8B8},{3.7615819e-37,0x8CC},{2,0x900},{-1, 0x904},{1,0x90C},{-127,0x910}}
    local tb2 = {{120.0, 0x900}}
    local dataType = gg.TYPE_FLOAT
    SearchWrite(tb1, tb2, dataType)
end



function a2()
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
   gg.toast("660透视开启成功")
gg.clearResults()
   gg.setRanges(gg.REGION_BAD)
   gg.searchNumber("4.5919149e-41;3.7615819e-37;2;0.11999511719::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(30)
   gg.editAll("120", gg.TYPE_FLOAT)
   gg.toast("660虚化开启成功")
   end

function a3()
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
   gg.toast("835透视开启成功")
gg.clearResults()
   gg.setRanges(gg.REGION_BAD)
   gg.searchNumber("4.5919149e-41;3.7615819e-37;2;0.11999511719::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(30)
   gg.editAll("120", gg.TYPE_FLOAT)
   gg.toast("835虚化开启成功")
  end



function a4()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "正在开启"},
{["value"] = 5.6631729e21, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.7610905e-39, ["offset"] = 0x4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.1835514e21, ["offset"] = 0x8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0x4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function a15()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "845人物透视"},
{["value"] = 4.7223665e21, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.8368781e-40, ["offset"] = 0x4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.032087e21, ["offset"] = 0x8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0x4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("透视开启中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("20")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("50")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("845透视开启成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.1835492e21;1.3312335e-43;1.391255e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912569e-19;4.2038954e-44;1.1202059e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("透视开启中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("20")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("50")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("710透视开启成功")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.75000047684;1.127088e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.2303317e-15;2.37548923492;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("625透视开启成功")
end








function b1()
name = "人物黄色"
    gg.setRanges(gg.REGION_BAD)
    local tb1 = {{3,0x488},{196608,0x490},{8200,0x498}}
    local tb2 = {{6,0x498},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType)
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8200D;851,973D;229::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("660旧黄色开启成功")
end


function b3()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "845蓝色"},
{["value"] = 1669611522, ["type"] = 4},
{["lv"] = 49, ["offset"] = 4, ["type"] = 4},
{["lv"] = 536889624, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1230552240, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end



function b4()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物蓝色️"},
{["value"] =283639808, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1660979204, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1661011972, ["offset"] = 20, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =-600, ["offset"] = -320, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b5()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物红色️"},
{["value"] =283639808, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1660979204, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1661011972, ["offset"] = 20, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =-1986, ["offset"] = -320, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b6()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物黄色️"},
{["value"] =283639808, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1660979204, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1661011972, ["offset"] = 20, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =-1987, ["offset"] = -320, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b7()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物白色️"},
{["value"] =283639808, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1660979204, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1661011972, ["offset"] = 20, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =-1989, ["offset"] = -320, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b8()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "人物蓝色"},
{["value"] = 8200, ["type"] = gg.TYPE_DWORD},
{["lv"] = 256, ["offset"] = 0x14, ["type"] = gg.TYPE_DWORD},
{["lv"] = 47, ["offset"] = 0x18, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1280, ["offset"] = 0x9C, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = -8, ["offset"] = 0x9C, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b9()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物紫色️"},
{["value"] =283639808, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1660979204, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1661011972, ["offset"] = 20, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =-1997, ["offset"] = -320, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function b10()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("131,072;196,610;458,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5000", gg.TYPE_DWORD)
gg.toast("人物彩色开启成功")
end



function b11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-1,598,023,922;47;51;536,891,403;48;536,887,322;49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("47", gg.TYPE_DWORD)
gg.toast("855上色开启成功")
end

function b12()
gg.clearResults()	 
	 gg.setRanges(131072)
	 gg.searchNumber("4.9358016e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.9358016e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_FLOAT)
	 gg.toast("855黄色")
	 end

function c1()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   if gg.getResultCount() == 0 then
    gg.toast("防闪第一步开启失败")
    else
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("防闪第一步开启成功")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19F;1.1202015e-19F; 3.7615819e-37F;255.0F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("防闪第二步开启失败")
    else
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("第二步防闪开启成功")
end
end




function c2()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "山坡防闪"},
{["value"] = 1.1202015e-19, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.7615819e-37, ["offset"] = 0x8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2, ["offset"] = 0x74, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0x74, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "房屋防闪"},
{["value"] = 1.1202017e-19, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.7615819e-37, ["offset"] = 0x8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2, ["offset"] = 0x84, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0x84, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function c3()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="旧透视防闪"},
{["value"] =2.2963078e-41, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.2611686e-44, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.7615819e-37, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =99999, ["offset"] = 152, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function d1()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "大厅无后①"},
{["value"] = -1327125919598376447, ["type"] = gg.TYPE_QWORD},
{["lv"] = -5.7680879e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.3697734e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_BYTE},
}
xqmnb(qmnb)
end



function d2()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "大厅无后②"},
{["value"] = -3.6907917e20, ["type"] = 16},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = 16},
{["lv"] = -3.6893509e20, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.3620364e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function d3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.2514624e23;-1.3620364e28;-1.1154173e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.3620364e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("大厅无后③开启成功")
end



function d4()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-1.2286641e23;-1.2279265e23;-1.3620364e28::73',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1.3620364e28::73',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_FLOAT ,freeze = true,value = 0,}})
end
gg.toast('大厅无后④开启成功')
end


function d5()
zijiang0()
end
function zijiang0()
 function ZBY(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end   end end      while(true)do 
ZBY({{32},{"无后吖"},{2.3510621e-38, 16},{-1, 36, 16},{0, 40, 16},{0, 52, 16},{1, 60, 4},{1, 64, 4},{5, 72, 16},{8, 356, 16},{9.5, 368, 16}},{{0.1332, 1332, 16},{0.1332, 1380, 16}})
 if gg.isVisible(true) then break 
else
gg.isVisible(false)  zijiang0() gg.clearResults() os.exit()
gg.processKill()
shcf()
end
end end



function d6()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] ="正在开启"},
{["value"] =-2.8111605e28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1144502e28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 128.0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
 }
 qmxg = {
{["value"] =0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
 }
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('3.8126822e-21;8.4988737e-21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.8126822e-21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 n=gg.getResultCount()
  jz=gg.getResults(n)
  for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_DOUBLE,value = 0}})
  end
gg.toast("大厅防抖①开启成功")
end




function d7()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.00002;0.00001;-2.7860168e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.7860168e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("正在开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('3.8126822e-21;8.4988737e-21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.8126822e-21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 n=gg.getResultCount()
  jz=gg.getResults(n)
  for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_DOUBLE,value = 0}})
  end
gg.toast("大厅防抖②开启成功")
end



function d8()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.257", gg.TYPE_FLOAT)
gg.searchNumber("2.6469805e-23;-1.2573874e23;-1.2282372e23::20", gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("大厅聚点开启成功")
end



function d9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("3.4028235e38;-1.0457832e28;-2.8082289e28;-3.6979957e20;-3.7095253e20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.8082289e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("9", gg.TYPE_FLOAT)
gg.toast("子弹穿墙（人物贴墙穿墙）")
end



function d10()
gg.clearResults()
gg.setRanges(8)
gg.setVisible(false)
gg.searchNumber("1.0;0.0001;1.0843911e-37;1.3331774e-37;1.3331756e-37;4.1246335e-38;3.6894372e-38;4.9128375e-38;4.4578118e-38;3.6894092e-38", 16, nil, nil, nil, nil)
gg.setVisible(false)
gg.searchNumber("0.0001", 16, nil, nil, nil, nil)
gg.getResults(15)
gg.editAll("100", 16)
gg.toast("大厅范围开启成功")
end

function e1()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =-999999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function e2()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="正在开启"},
{["value"] =11.05930042267, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.30930042267, ["offset"] = 48, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.30930042267, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
 }
 qmxg = {
{["value"] =99999, ["offset"] = 48, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 144, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 156, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] ="盒子定位"},
{["value"] =-11.24394989014, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.04788017273, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.04788017273, ["offset"] = 724, ["type"] = gg.TYPE_FLOAT},
 }
 qmxg = {
{["value"] =99999, ["offset"] = 724, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 976, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 1300, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function e3()
gg.alert("裸奔范围使用方法:                          范围必须一直循环修改的只能这样才有效果，后台别退！！! ")
fw()
end
function fw()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local tb1 = {{13.5, 0}, {15, -4},}
    local tb2 = {{130, -4},}
    local dataType = gg.TYPE_FLOAT
    SearchWrite(tb1, tb2, dataType)
    fw()
end



function e4()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "远处除草"},
{["value"] = -2146496456, ["type"] = gg.TYPE_DWORD},
{["lv"] = -2146430918, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
{["lv"] = -2146365383, ["offset"] = 48, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 48, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function e5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.14;0.14;0.14::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("4", gg.TYPE_FLOAT)
gg.toast("黑夜模式开启成功")
end



function e6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.29999995232;200.0;160.0;1.4012985e-45",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("160",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("吉普加速开启成功")
end



function e7()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全图除雾"},
{["value"] = 100000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1000, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 10000, ["offset"] = -28, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1000088888888, ["offset"] = -60, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function e8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.060069315135479;0.016484409570694;-0.0615149512887;0.016962887719274;22.640071868896;2.4795532226562e-05;-0.053446859121323;-0.10091190040112::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("22.640071868896", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("人物移动天线开启成功")
end



function e9()
gg.setRanges(32)
gg.searchNumber("13.27514457703;23.5222568512;0.000228405;0.00609016418",16,false,536870912,0,-1)
gg.searchNumber("0.00609016418",16,false,536870912,0,-1)
gg.getResults(100)
gg.editAll("-250",16)
gg.toast("站立路飞开启成功")
end

function Exit()
print("")
gg.toast("")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '有问题请评论'
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










