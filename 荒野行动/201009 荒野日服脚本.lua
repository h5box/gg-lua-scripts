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
      gg.toast("\n共修改"..#data.."条数据")
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
      gg.toast("\n未搜索到任何数据修改失败", false)
      return false
    end
   else
    gg.toast("\n未搜索到任何数据修改失败")
    return false
  end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end


function Main()
  Menu = gg.choice({
    "防封号/防检测(登录界面/大厅)   (全局)",
    "3.0范围锁甲(出生岛/落地)   (全局)",
    "地图除草(出生岛/落地)   (单局)",
    "人物天线(出生岛/落地)   (单局)",
    "透视+上色(出生岛/落地)   (全局)",
    "2000米脚步雷达(出生岛/落地)   (单局)",
    "裸奔聚点无后+部分武器自瞄(大厅)   (全局)",
    "开枪不减速+持枪加速+人物跑A(大厅/出生岛/落地)   (全局)",
    "秒落地 开 (飞机上开启)",
    "秒落地 关 (落地关闭)",
    "",
    "退出"
  }, nil, "")
  if Menu == 1 then
    a()
  end
  if Menu == 2 then
    b()
  end
  if Menu == 3 then
    c()
  end
  if Menu == 4 then
    d()
  end
  if Menu == 5 then
    e()
  end
  if Menu == 6 then
    f()
  end
  if Menu == 7 then
    g()
  end
  if Menu == 8 then
    h()
  end
  if Menu == 9 then
    i()
  end
  if Menu == 10 then
    m()
  end
  if Menu == 11 then
    n()
  end
  if Menu == 12 then
    Exit()
  end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(4+1+32)
  gg.searchNumber("0.00001;0.1;0.01", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(80000)
  gg.editAll("999999999", gg.TYPE_DOUBLE)
  gg.toast("༺大嘴巴༻制作\n防封1开启成功")
  gg.clearResults()
  gg.setRanges(4+1+32)
  gg.searchNumber("1;0.1;1;1.1;0.01;1.5",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20000)
  gg.editAll("999999", gg.TYPE_DOUBLE)
  gg.toast("༺大嘴巴༻制作\n防封2开启成功")
  gg.clearResults()
  gg.setRanges(4+1+32)
  gg.searchNumber("0.8;0.1;1D;1.1;0.01", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20000)
  gg.editAll("999999", gg.TYPE_DOUBLE)
  gg.toast("༺大嘴巴༻制作\n防封3开启成功")

end



function b()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1D;0.22;1::70", gg.TYPE_FLOAT)
  gg.searchNumber("0.22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("3",gg.TYPE_FLOAT)
  gg.toast("༺大嘴巴༻制作\n3.0范围锁甲开启成功")
  gg.clearResults()
end



function c()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("0.125E;66,816D;1.5F;1,280D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(80000)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("༺大嘴巴༻制作\n除草开启成功")
end


function d()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "༺大嘴巴༻制作\n男天线"},
    {["value"] = 0.08231857419013977, ["type"] = 16},
    {["lv"] = 1.2121752999438396E-38, ["offset"] = 4, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0.25, ["offset"] = 0, ["type"] = 16},
    {["value"] = 999, ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)

  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "༺大嘴巴༻制作\n女天线"},
    {["value"] = 1.6367124319076538, ["type"] = 16},
    {["lv"] = 0.028990954160690308, ["offset"] = -4, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0.25, ["offset"] = 4, ["type"] = 16},
    {["value"] = 999, ["offset"] = -24, ["type"] = 16},
  }
  xqmnb(qmnb)
end




function e()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "༺大嘴巴༻制作\n马赛克"},
    {["value"] = 2.0, ["type"] = 16},
    {["lv"] = 5.605193857299268E-45, ["offset"] = -40, ["type"] = 16},
    {["lv"] = 1.1290353616858785E-19, ["offset"] = -36, ["type"] = 16},
    {["lv"] = 1.5612146450735652E-39, ["offset"] = 496, ["type"] = 16},
    {["lv"] = 5.183544654861592E21, ["offset"] = 500, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 25, ["offset"] = 0, ["type"] = 16},

  }
  xqmnb(qmnb)

  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "༺大嘴巴༻制作\n透视"},
    {["value"] = 2.0, ["type"] = 16},
    {["lv"] = 4.999071584624962E21, ["offset"] = -500, ["type"] = 16},
    {["lv"] = 6.873368967513228E-42, ["offset"] = -496, ["type"] = 16},
    {["lv"] = 0.0010000000474974513, ["offset"] = 28, ["type"] = 16},
    {["lv"] = 0.9990000128746033, ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 25, ["offset"] = 0, ["type"] = 16},

  }
  xqmnb(qmnb)

  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "༺大嘴巴༻制作\n人物上色"},
    {["value"] = 0.9990000128746033, ["type"] = 16},
    {["lv"] = 4.777712344590308E21, ["offset"] = -500, ["type"] = 16},
    {["lv"] = 3.7420274191329915E-40, ["offset"] = -496, ["type"] = 16},
    {["lv"] = 1.6623683334355687E-19, ["offset"] = -52, ["type"] = 16},
    {["lv"] = 3.76158192263132E-37, ["offset"] = -44, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 10, ["offset"] = 0, ["type"] = 16},

  }
  xqmnb(qmnb)
end



function f()
qmnb = {
{["memory"] = 4},
{["name"] = "༺大嘴巴༻制作\n2000米脚步雷达"},
{["value"] = 200.0, ["type"] = 64},
{["lv"] = 30.0, ["offset"] = -16, ["type"] = 64},
}
qmxg = {
{["value"] = 2000, ["offset"] = -16, ["type"] = 64},

}
xqmnb(qmnb)
end



function g()
gg.setRanges(4)
local dataType = 64
local tb1 = {{0.01, 0}, {0.1, -48}, {0.4, -16}, {12.0, 16}, }
local tb2 = {{3, -48}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(4)
local dataType = 64
local tb1 = {{0.05, 0}, {100.0, 16}, {1.0, 32}, {1.0, 48}, }
local tb2 = {{0, 48}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(4)
local dataType = 64
local tb1 = {{0.8, 0}, {0.1, -144}, {-0.4, -64}, {0.1, -48}, {0.1, 16}, {0.1, 48}, {0.1, 80}, {0.1, 128}, {0.1, 144}, }
local tb2 = {{99998888, -144}, {99998888, -48}, {99998888, 16}, {99998888, 48}, {99998888, 80}, {99998888, 128}, {99998888, 144}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(4)
local dataType = 64
local tb1 = {{1126.4, 0}, }
local tb2 = {{99997777, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(4)
local dataType = 64
local tb1 = {{0.23, 0}, }
local tb2 = {{-999777, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function h()
gg.alert("防拉回开启中...")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("68;-108;35;-95;107;5;-108;-55;69::88", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-108", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_BYTE,freeze = true,value = -108}})
end
gg.toast("防拉回开启成功")
gg.clearResults()

qmnb = {
{["memory"] = 4},
{["name"] = "༺大嘴巴༻制作\n开枪不减速"},
{["value"] = 3.14, ["type"] = 64},
{["lv"] = 1.6, ["offset"] = -16, ["type"] = 64},
}
qmxg = {
{["value"] = 4, ["offset"] = -16, ["type"] = 64},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "༺大嘴巴༻制作\n持枪加速"},
{["value"] = 7.0, ["type"] = 64},
{["lv"] = 6.25, ["offset"] = 16, ["type"] = 64},
}
qmxg = {
{["value"] = 7.5, ["offset"] = 16, ["type"] = 64},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "人物跑A"},
{["value"] = 7.5, ["type"] = 64},
{["lv"] = 7.0, ["offset"] = -16, ["type"] = 64},
}
qmxg = {
{["value"] = 9, ["offset"] = -16, ["type"] = 64},

}
xqmnb(qmnb)
end

function i()
qmnb = {
{["memory"] = 16384},
{["name"] = "༺大嘴巴༻制作\n秒落地 开"},
{["value"] = 5.1964474E-315, ["type"] = 64},
{["lv"] = 1.0E-6, ["offset"] = -4, ["type"] = 64},
{["lv"] = 1000.0, ["offset"] = 4, ["type"] = 64},
{["lv"] = 2.0097958976789757E31, ["offset"] = 8, ["type"] = 64},
{["lv"] = 7.707323997950698E-304, ["offset"] = 12, ["type"] = 64},
}
qmxg = {
{["value"] = 200, ["offset"] = 4, ["type"] = 64},

}
xqmnb(qmnb)
end

function m()
qmnb = {
{["memory"] = 16384},
{["name"] = "༺大嘴巴༻制作\n秒落地 关"},
{["value"] = 5.1964474E-315, ["type"] = 64},
{["lv"] = 1.0E-6, ["offset"] = -4, ["type"] = 64},
{["lv"] = 200.0, ["offset"] = 4, ["type"] = 64},
{["lv"] = 2.0097958971145053E31, ["offset"] = 8, ["type"] = 64},
{["lv"] = 7.707323997950698E-304, ["offset"] = 12, ["type"] = 64},
}
qmxg = {
{["value"] = 1000, ["offset"] = 4, ["type"] = 64},

}
xqmnb(qmnb)
end

function n()
end

function Exit()
  print("")
  os.exit()
end
cs = ""



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











