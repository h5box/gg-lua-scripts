function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false   end end end  for i, v in ipairs(result) do  if (v.isUseful) then   data[#data+1] = v.address  end  end  if (#data > 0) then  local t = {}  local base = Search[1][2]  for i=1, #data do  for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1] if (w[3] == false) then local item = {}  item[#item+1] = t[#t] item[#item]. freeze = false gg.addListItems(item) if (w[4] == true) then local item = {}  item[#item+1] = t[#t] item[#item]. freeze = true gg.addListItems(item) end end end end gg.setValues(t) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."开启失败", false) return false end else gg.toast(Name.."开启失败", false) return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败")  else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function Main()
  SN = gg.choice({
    "经典模式",
    "天空之城",
    "竞速双赢",
    "命运远征",
    "退出脚本"
  }, nil, "人物较少没抓人物瞬移")
  if SN == nil then
  else
    if SN == 1 then
      GN1()
    end
    if SN == 2 then
      GN2()
    end
    if SN == 3 then
      GN3()
    end
    if SN == 4 then
      GN4()
      end
    if SN == 5 then
      Exit()
    end
  end
  XGCK = -1
end

function GN1()
  xb = gg.multiChoice({
    "无限复活开",
    "无限复活关",
    "局内0分",
    "局内加分",
    "无敌(掉坑死)",
    "超级奖励加米",
    "返回主菜单"
  }, nil, "局内锁分和局内加分，后开的生效。")
  if xb == nil then
  else
    if xb[1] == true then
      xb1() gg.toast("开启后将关闭脚本，否则可能不复活")
    end
    if xb[2] == true then
      xb2()
    end
    if xb[3] == true then
      xb3()
    end
    if xb[4] == true then
      xb4()
    end
    if xb[5] == true then
      xb5()
    end
    if xb[6] == true then
      xb6()
    end
    if xb[7] == true then
      MN()
    end
    XGCK = -1
  end
end
function xb1()
qmnb = {
{["memory"] = 4},
{["name"] = "无限复活"},
{["value"] = 5000, ["type"] = 4},
{["lv"] = 8, ["offset"] = -1432, ["type"] = 4},
{["lv"] = 5000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -1440, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
os.exit()
end


function xb2()
qmnb = {
{["memory"] = 4},
{["name"] = "无限复活关闭"},
{["value"] = 5000, ["type"] = 4},
{["lv"] = 8, ["offset"] = -1432, ["type"] = 4},
{["lv"] = 5000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -1440, ["type"] = 4,["freeze"] = false},

}
xqmnb(qmnb)
end
function xb3()
so=gg.getRangesList('libGameApp.so')[1].start
py=0x102062C
setvalue(so+py,gg.TYPE_FLOAT,0)
gg.toast("局内锁分开启成功")
end
function xb4()
so=gg.getRangesList('libGameApp.so')[1].start
py=0x102062C
setvalue(so+py,gg.TYPE_FLOAT,1)
gg.toast("局内加分开启成功")
end
function xb5()
so=gg.getRangesList('libGameApp.so')[1].start
py=0x1256AE0
setvalue(so+py,gg.TYPE_FLOAT,1)
gg.toast("无敌开启成功")
end
function xb6()
so=gg.getRangesList('libGameApp.so')[1].start
py=0x10EE0CC
setvalue(so+py,gg.TYPE_FLOAT,40)
gg.toast("加米开启成功")
end
function GN2()
SW = gg.multiChoice({
"无限钥匙20秒自动关";
"天空城加速";
"退出脚本"},
nil,"大厅卸坐骑，一局欢一个人物，不建议打，容易封号")
if SW == nil then else
if SW[1] == true then hh1() end
if SW[2] == true then hh2() end
if SW[3] == true then MN() end end XGCK = -1 end
function hh1()
qmnb = {
{["memory"] = 4},
{["name"] = "无限钥匙"},
{["value"] = 237, ["type"] = 4},
{["lv"] = 218, ["offset"] = -304, ["type"] = 4},
{["lv"] = 219, ["offset"] = -288, ["type"] = 4},
{["lv"] = 220, ["offset"] = -272, ["type"] = 4},
{["lv"] = 221, ["offset"] = -256, ["type"] = 4},
{["lv"] = 222, ["offset"] = -240, ["type"] = 4},
{["lv"] = 223, ["offset"] = -224, ["type"] = 4},
{["lv"] = 224, ["offset"] = -208, ["type"] = 4},
{["lv"] = 225, ["offset"] = -192, ["type"] = 4},
{["lv"] = 226, ["offset"] = -176, ["type"] = 4},
{["lv"] = 227, ["offset"] = -160, ["type"] = 4},
{["lv"] = 228, ["offset"] = -144, ["type"] = 4},
{["lv"] = 229, ["offset"] = -128, ["type"] = 4},
{["lv"] = 230, ["offset"] = -112, ["type"] = 4},
{["lv"] = 231, ["offset"] = -96, ["type"] = 4},
{["lv"] = 232, ["offset"] = -80, ["type"] = 4},
{["lv"] = 233, ["offset"] = -64, ["type"] = 4},
{["lv"] = 234, ["offset"] = -48, ["type"] = 4},
{["lv"] = 235, ["offset"] = -32, ["type"] = 4},
{["lv"] = 236, ["offset"] = -16, ["type"] = 4},
{["lv"] = 238, ["offset"] = 16, ["type"] = 4},
{["lv"] = 239, ["offset"] = 32, ["type"] = 4},
{["lv"] = 240, ["offset"] = 48, ["type"] = 4},
}
qmxg = {
{["value"] = 19, ["offset"] = -356, ["type"] = 4},

}
xqmnb(qmnb)
gg.sleep(20000)
qmnb = {
{["memory"] = 4},
{["name"] = "无限钥匙关闭"},
{["value"] = 237, ["type"] = 4},
{["lv"] = 218, ["offset"] = -304, ["type"] = 4},
{["lv"] = 219, ["offset"] = -288, ["type"] = 4},
{["lv"] = 220, ["offset"] = -272, ["type"] = 4},
{["lv"] = 221, ["offset"] = -256, ["type"] = 4},
{["lv"] = 222, ["offset"] = -240, ["type"] = 4},
{["lv"] = 223, ["offset"] = -224, ["type"] = 4},
{["lv"] = 224, ["offset"] = -208, ["type"] = 4},
{["lv"] = 225, ["offset"] = -192, ["type"] = 4},
{["lv"] = 226, ["offset"] = -176, ["type"] = 4},
{["lv"] = 227, ["offset"] = -160, ["type"] = 4},
{["lv"] = 228, ["offset"] = -144, ["type"] = 4},
{["lv"] = 229, ["offset"] = -128, ["type"] = 4},
{["lv"] = 230, ["offset"] = -112, ["type"] = 4},
{["lv"] = 231, ["offset"] = -96, ["type"] = 4},
{["lv"] = 232, ["offset"] = -80, ["type"] = 4},
{["lv"] = 233, ["offset"] = -64, ["type"] = 4},
{["lv"] = 234, ["offset"] = -48, ["type"] = 4},
{["lv"] = 235, ["offset"] = -32, ["type"] = 4},
{["lv"] = 236, ["offset"] = -16, ["type"] = 4},
{["lv"] = 238, ["offset"] = 16, ["type"] = 4},
{["lv"] = 239, ["offset"] = 32, ["type"] = 4},
{["lv"] = 240, ["offset"] = 48, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -356, ["type"] = 4},

}
xqmnb(qmnb)
end
function hh2()
so=gg.getRangesList('libGameApp.so')[1].start
py=0xFD4FC4
setvalue(so+py,gg.TYPE_FLOAT,4000)
so=gg.getRangesList('libGameApp.so')[1].start
py=0xB8E408
setvalue(so+py,gg.TYPE_FLOAT,0.0015)
gg.toast("加速开启成功")
end
function GN3()
qmnb = {
{["memory"] = 4},
{["name"] = "双赢"},
{["value"] = 2369, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)
so=gg.getRangesList('libGameApp.so')[1].start
py=0x102062C
setvalue(so+py,gg.TYPE_FLOAT,0)
end
function GN4()
AW = gg.multiChoice({
"改分";
"改关";
"退出脚本"},
nil,"")
if AW == nil then else
if AW[1] == true then GF() end
if AW[2] == true then GG() end
if AW[3] == true then MN() end end XGCK = -1 end
function GF()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("21000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("21000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第1关开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("42000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("42000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第2关开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("63000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("63000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第3关开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("94500", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("94500", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第4关开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("189000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("189000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第5关开启成功")
gg.setRanges(4)
gg.searchNumber("378000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("378000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第6关开启成功")
gg.setRanges(4)
gg.searchNumber("756000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("756000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第7关开启成功")
gg.setRanges(4)
gg.searchNumber("1512000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1512000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第8关开启成功")
gg.setRanges(4)
gg.searchNumber("3024000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3024000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第9关开启成功")
gg.setRanges(4)
gg.searchNumber("7560000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7560000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("2000", 4)
gg.toast("第10关开启成功")
end
function GG()
  hero1 = gg.prompt({
    "输入修改关数(第一关开启)"
  }, {15})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "跳关"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 18, ["offset"] = -108, ["type"] = 4},
{["lv"] = 10000, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = hero1, ["offset"] = 40, ["type"] = 4},

}
xqmnb(qmnb)
end

function MN()
Main()
end
function Exit()
os.exit()
end
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
