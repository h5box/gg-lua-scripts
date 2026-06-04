function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(Search, Write, Type, Name) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Name.."开启成功！已修改"..#t.."条数据") gg.addListItems(t) else gg.toast(Name.."开启失败", false) return false end else gg.toast(Name.."开启失败") return false end end
function Main()
  SN = gg.multiChoice({
    "🦄一键透色🦄",
    "🦄无限白条🦄",
    "🦄人物加速🦄",
    "🦄屠夫加速🦄",
    "🦄一键出门🦄",
    "🦄屠夫吸人🦄",
    "🦄一级转生🦄",
    "🦄二级转生🦄",
    "🦄三级转生🦄",
    "🦄坦克出柜🦄",
    "🦄电筒紫透🦄",
    "🦄凛妹技透🦄",
    "🦄自定灵敏🦄",
    "🦄除草除雾🦄",
    "🦄退出脚本🦄"
  }, nil, "🦄独角兽修复🦄")
  if SN == nil then else
    if SN[1] == true then a() end
    if SN[2] == true then b() end
    if SN[3] == true then c() end
    if SN[4] == true then d() end
    if SN[5] == true then e() end
    if SN[6] == true then f() end
    if SN[7] == true then g() end
    if SN[8] == true then h() end
    if SN[9] == true then i() end
    if SN[10] == true then j() end
    if SN[11] == true then k() end
    if SN[12] == true then l() end
    if SN[13] == true then m() end
    if SN[14] == true then n() end
    if SN[15] == true then Exit() end
  end 
XGCK = -1
 end


function a()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "透视1"},
    {["value"] = 6.500018119812012, ["type"] = 16},
    {["lv"] = -3.680628125620135E-39, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -127.0, ["offset"] = 44, ["type"] = 16},
    {["lv"] = 100.0, ["offset"] = 60, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 5444, ["offset"] = 4, ["type"] = 16},

  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "透视2"},
    {["value"] = 6.500014305114746, ["type"] = 16},
    {["lv"] = -2.9459441563562056E-39, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -127.0, ["offset"] = 76, ["type"] = 16},
    {["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 5444, ["offset"] = 4, ["type"] = 16},

  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "屠夫透视"},
    {["value"] = 6.500012397766113, ["type"] = 16},
    {["lv"] = -2.5786021717242408E-39, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -127.0, ["offset"] = 68, ["type"] = 16},
    {["lv"] = 100.0, ["offset"] = 84, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 5444, ["offset"] = 4, ["type"] = 16},

  }
  xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "屠夫发光"},
{["value"] = 1662028288, ["type"] = 4},
{["lv"] = 1063444480, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] = 1163444480, ["offset"] = 140, ["type"] = 4},

}
xqmnb(qmnb)
  xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "人物发光"},
{["value"] = 1661798656, ["type"] = 4},
{["lv"] = 1063444480, ["offset"] = 84, ["type"] = 4},
}
qmxg = {
{["value"] = 1163444480, ["offset"] = 84, ["type"] = 4},

}
xqmnb(qmnb)

end
function b()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="QTE"
    local tb1 = {{2249,0x0}, {2249,0x4},{2250,0x18}, {2250,0x1C},{2251,0x30}, {2251,0x34},{2252,0x48}, {2252,0x4C}} 
    local tb2 = {{1077936128, 0xC},{1056964608, 0x24},{1077936128, 0x3C},{1077936128, 0x54}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end
function c()
  info = gg.prompt({
    "范围修改数值 [0.1;50] ",
  }, {
    [1] = "1.3",
  }, {
    [1] = "number",
  })
  hm=info[1]
  qmnb = {
    {["memory"] = 32},
    {["name"] = "人物加速"},
    {["value"] = 70.0, ["type"] = 16},

    {["lv"] = 400.0, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 1000.0, ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = hm, ["offset"] = -492, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function d()
  info = gg.prompt({
    "范围修改数值 [0.1;50] ",
  }, {
    [1] = "1.3",
  }, {
    [1] = "number",
  })
  cc=info[1]
  qmnb = {
    {["memory"] = 32},
    {["name"] = "屠夫加速"},
    {["value"] = 91.0, ["type"] = 16},
    {["lv"] = 6.0, ["offset"] = -8, ["type"] = 16},
    {["lv"] = 12.0, ["offset"] = -4, ["type"] = 16},
    {["lv"] = 60.0, ["offset"] = 4, ["type"] = 16},
  }
  qmxg = {
    {["value"] = cc, ["offset"] = 444, ["type"] = 16},

  }
  xqmnb(qmnb)
end
function e()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3.36311631e-44;80.0;80.0;1.0;1.0;1.0:105',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('50',gg.TYPE_FLOAT)
os.exit()
end



function f()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.36311631e-44;103.0;9.42307636e-38::169", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.36311631e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    q = gg.getResultCount()
    g = gg.getResults(q)
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 124
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      dzy = t[1].value
      zb1 = string.format(dzy)
    end
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 128
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      dzy = t[1].value
      zb2 = string.format(dzy)
    end
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 132
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      dzy = t[1].value
      zb3 = string.format(dzy)
      gg.toast("自身坐标完成")
    end
   else
    gg.toast("成功")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.36311631e-44;79.98999786377~80.0;9.42307636e-38::169", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.36311631e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    q = gg.getResultCount()
    g = gg.getResults(q)
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 124
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      gg.setValues(t)
      t[_FORV_3_].value = " " ..zb1
      t[_FORV_3_].freeze = true
      print("addListItems: ", gg.addListItems(t))
    end
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 128
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      gg.setValues(t)
      t[_FORV_3_].value = " " ..zb2
      t[_FORV_3_].freeze = true
      print("addListItems: ", gg.addListItems(t))
    end
    t = {}
    for _FORV_3_ = 1, q do
      t[_FORV_3_] = {}
      t[_FORV_3_].address = g[_FORV_3_].address + 132
      t[_FORV_3_].flags = 4
    end
    t = gg.getValues(t)
    for _FORV_3_ = 1, q do
      gg.setValues(t)
      t[_FORV_3_].value = " " ..zb3
      t[_FORV_3_].freeze = true
      print("addListItems: ", gg.addListItems(t))
      gg.toast("吸人开启成功！")
    end
   else

  end
end

function g()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="1级转生"
    local tb1 = {{1147, 0x0},{0, -0x74},{1147, 0x40},{1, -0x78}}
    local tb2 = {{50, -0x78}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end


function h()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="2级转生"
    local tb1 = {{1147, 0x0},{1, -0x74},{1147, 0x40},{1, -0x78}}
    local tb2 = {{50, -0x78}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end

function i()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="3级转生"
    local tb1 = {{1147, 0x0},{2, -0x74},{1147, 0x40},{1, -0x78}}
    local tb2 = {{50, -0x78}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end

function j()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="坦克出柜"
    local tb1 = {{65792, 0x0},{1065353216, 0x38},{65472, 0x60},{1382, 0x64}}
    local tb2 = {{953267991, 0x4},{953267991, 0x8},{953267991, 0xC}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end

function k()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="手电筒紫透镜"
    local tb1 = {{2715,0x0}, {2715,0x4},{2714,0x10}, {2717,0x20},{1050253722,0x2C},{1041865114,0x3C}}
    local tb2 = {{1073741824, 0xC}}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end

function l()
gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="凛妹技能透"
    local tb1 = {{1112014848,0x0}, {1120403456,0x30},{1067450368,0x18C}}
    local tb2 = {{1, 0x190,true},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
gg.clearList()

end

function m()
  info = gg.prompt({
    "范围修改数值 [50;1000] ",
  }, {
    [1] = "400",
  }, {
    [1] = "number",
  })
  hm=info[1]
  qmnb = {
    {["memory"] = 32},
    {["name"] = "灵敏度"},
    {["value"] = -820616512, ["type"] = 4},

    {["lv"] = 100, ["offset"] = -48, ["type"] = 4},
    {["lv"] = 16777473, ["offset"] = -44, ["type"] = 4},
  }
  qmxg = {
    {["value"] = hm, ["offset"] = -40, ["type"] = 4},

  }
  xqmnb(qmnb)
end

function n()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.66233809e-19;3.76158192e-37;0.00390625;2.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.6623355e-19;3.76158192e-37;2.0:41',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2,500.0;2.0:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('0.00100000005;2.0:37',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
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


