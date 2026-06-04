function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.addListItems(t) else gg.toast("无数据", false) return false end else gg.toast("Not Found") return false end end





function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Main()
  menu = gg.choice({
    '常用功能',
    '落地功能',
    '关闭功能',
    '退出脚本'},
  nil,os.date'')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then Exit() end
  XGCK=-1
end


function A()
  menu1 = gg.multiChoice({
    '透视上色',
    '全图自瞄',
    '无后防抖',
    '全屏自瞄',
    '多重范围',
    '近战锁头',
    '返回主页'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then A1() end
    if menu1[2] == true then A2() end
    if menu1[3] == true then A3() end
    if menu1[4] == true then A4() end
    if menu1[5] == true then A5() end
    if menu1[6] == true then A6() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end


function B()
  menu1 = gg.multiChoice({
    '锁血',
    '飞天',
    '穿墙',
    '返回主页'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then B1() end
    if menu1[2] == true then B2() end
    if menu1[3] == true then B3() end
    if menu1[4] == true then HOME() end
  end
  GLWW=-1
end


function C()
  menu1 = gg.multiChoice({
    '关闭全屏自瞄',
    '关闭近战锁头',
    '关闭防封',
    '返回主页'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then C1() end
    if menu1[2] == true then C2() end
    if menu1[3] == true then C3() end
    if menu1[4] == true then HOME() end
  end
  GLWW=-1
end




function A1()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "模糊"},
{["value"] = 1081081873, ["type"] = 4},
{["lv"] = 1669693440, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669660673, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 5444, ["offset"] = 20, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "透明"},
{["value"] = 1670938643, ["type"] = 4},
{["lv"] = 1671757860, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1671790629, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 5444, ["offset"] = 28, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "上色"},
{["value"] = 1194379812, ["type"] = 4},
{["lv"] = 8200, ["offset"] = -12, ["type"] = 4},
{["lv"] = 671236113, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 11, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
end

function A2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x22BF7D0
setvalue(so+py,16,99999)
--自瞄
py=0xE9DBBC
setvalue(so+py,16,0)
--全图
py=0xB2092C
setvalue(so+py,16,0)
--锁位
end


function A3()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1227E24
setvalue(so+py,16,0)
--无后
py=0x342B3B4
setvalue(so+py,16,0)
py=0x34DA0E8
setvalue(so+py,16,0)
--防抖
py=0x12283E4
setvalue(so+py,16,0)
--聚点
end

function A4()
so=gg.getRangesList('libUE4.so')[1].start
py=0xF20860
setvalue(so+py,16,-2.7395267e28)
py=0xF2086C
setvalue(so+py,16,1.6615352e35)
--全屏
py=0x22BF7D0
setvalue(so+py,16,99999)
--自瞄
end

function A5()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围"},
{["value"] = 1091779028, ["type"] = 4},
{["lv"] = 1103626240, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1106509824, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 160, ["offset"] = 28, ["type"] = 16},
{["value"] = 160, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
gg.setRanges(32)
  local dataType = 16
  local search = {{-92.23117065429688, 0},{16.0, 4},}
  local modify = {{100, 4},}
  SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)--A内存
local dataType = 16
local Name ="身体范围"
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
end


function A6()
so=gg.getRangesList('libUE4.so')[1].start
py=0xA90E69
setvalue(so+py,16,-3.5369230888265634E21)
--锁头
end


function C1()
so=gg.getRangesList('libUE4.so')[1].start
py=0xF20860
setvalue(so+py,16,-2.73959237e28)
py=0xF2086C
setvalue(so+py,16,1.66153539e35)
--全屏
end


function C2()
so=gg.getRangesList('libUE4.so')[1].start
py=0xA90E69
setvalue(so+py,16,3.3630769e28)
--锁头
py=0xB2092C
setvalue(so+py,16,3.36268395e28)
--锁位
end


function Exit()
  os.exit()
end


function HOME()
  lw=1
  Main()
end


cs = ''
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




