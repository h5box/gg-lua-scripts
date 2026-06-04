
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.addListItems(t) else gg.toast("无数据", false) return false end else gg.toast("Not Found") return false end end


function Main()
  menu = gg.choice({
    '↓功能↓',
    'AD专属大厅功能',
    '退出脚本'},
  nil,os.date'🔥AD牛逼🔥')
  if menu == 1 then GM() end
  if menu == 2 then GF() end
  if menu == 3 then Exit() end
  XGCK=-1
end


function GM()
  menu1 = gg.multiChoice({
    '午后',
    '加速',
    '透色',
    'AD独家大厅防封',
    'AD独家真伤范围',
    '返回'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then AF1() end
    if menu1[2] == true then AF2() end
    if menu1[3] == true then AF3() end
    if menu1[4] == true then AF4() end
    if menu1[5] == true then AF5() end
    if menu1[6] == true then Main() end
  end
  GLWW=-1
end


function GF()
  menu1 = gg.multiChoice({
    '平板视角',
    '吉普加速',
    '人物加速',
    '关闭加速',
    '加速伤害',
    '人物天线',
    '人物地线',
    '返回主页'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then AH1() end
    if menu1[2] == true then AH2() end
    if menu1[3] == true then AH3() end
    if menu1[4] == true then AH4() end
    if menu1[5] == true then AH5() end
    if menu1[6] == true then AH6() end
    if menu1[7] == true then AH7() end
    if menu1[8] == true then AH8() end
    if menu1[9] == true then Main() end
  end
  GLWW=-1
end


function AF1()
  Name = "全枪无后"
  gg.setRanges(16384)
  local dataType = 16
  local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
  local modify = {{0, -8},}
  SearchWrite(search,modify,dataType,Name)
  Name = "完美防抖"
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
  Name = "完美聚点"
  gg.setRanges(16384)
  local dataType = 16
  local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
  local modify = {{0, -8},{0, 4},}
  SearchWrite(search,modify,dataType,Name)
  
  qmnb = {
{["memory"] = 16384},
{["name"] = "瞬击"},
{["value"] = -298284466, ["type"] = 4},
{["lv"] = -335571412, ["offset"] = -52, ["type"] = 4},
{["lv"] = -308467169, ["offset"] = 56, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 56, ["type"] = 4},
}
xqmnb(qmnb)
  gg.toast("无后+防抖+聚点+瞬击开启成功")
end


function AF2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.toast("全车加速开启成功")
end


function AF3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = -5.569558837351488E-40, ["type"] = 16},
{["lv"] = 5.801375642304743E-42, ["offset"] = -8, ["type"] = 16},
{["lv"] = 4.740814915793215E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 4.81460301798796E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "透明"},
{["value"] = -2.5774026602387787E-39, ["type"] = 16},
{["lv"] = 5.626278334579643E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8.688050478813866E-44, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = -2146435070, ["offset"] = -36, ["type"] = 4},
{["lv"] = 539246595, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function AF4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("11082001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("开启成功")
end

function AF5()
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
  gg.toast("超大真伤范围开启成功")
end


function AH1()
  gg.setRanges(32)
  local dataType = 16
  local search = {{220.0, 0},{25.0, 8},{178.0, 24},{15.0, 28},{100.0, 36},{10.0, 40},}
  local modify = {{800, 0},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("上帝视角开启成功")
end


function AH2()
gg.setRanges(32)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
gg.getResults(9999)
gg.editAll("88888", 16)
gg.toast("吉普加速已开启 ")
end




function AH3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273126264269", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267068834414592",gg.TYPE_QWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1328550408728725571", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408578138112",gg.TYPE_QWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("人物加速开启成功")
end


function AH4()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1228926273126264269", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273201366461", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744153870237696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744149883614555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1585267068834414592", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267064848315881",gg.TYPE_QWORD)
gg.toast("关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1328550408578138112", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408728725571",gg.TYPE_QWORD)
gg.toast("关闭成功")
end

function AH5()
  Name = "M416伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {88000, 0},

  }
  local modify = {{35000, 0},}
  SearchWrite(search,modify,dataType)

  Name = "SCAR伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {87000, 0},

  }
  local modify = {{35000, 0},}
  SearchWrite(search,modify,dataType)

  Name = "AKM伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {71500, 0},

  }
  local modify = {{350000, 0},}
  SearchWrite(search,modify,dataType)

  Name = "M762伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {68000, 0},

  }
  local modify = {{35000, 0},}
  SearchWrite(search,modify,dataType)
  gg.toast("步枪伤害开启成功")
end


function AH6()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "人物天线"},
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


function AH7()
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-1.68741369247"),
      tonumber("0")
    },
    {
      tonumber("0.33067199588"),
      tonumber("12")
    }
  }, {
    {
      tonumber("-999999999"),
      tonumber("0")
    }
  }, (tonumber("16")))
  gg.toast("人物地线开启成功")
end


function Exit()
  os.exit()
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

