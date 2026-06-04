function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end 
function Main()
  SN =gg.multiChoice({
    "AKM",
    "SCAR-L",
    "M416",
    "98K",
    "M16A4",
    "UZI",
    "汤姆逊",
    "UMP45",
    "M24",
    "AWM",
    "AUG",
    "狗杂",
    "QBZ",
    "M762",
    "DP-28",
    "M249",
    "MK47",
    "S686",
    "S1897",
    "S12K",
    "平底锅",
    "野牛",
    "维克托",
    "SKS",
    "VSS",
    "MiNi14",
    "Win94",
    "SLR",
    "QBU",
    "退出脚本"
  }, nil, "辉腾科技卐源码"..sj)
  if SN == nil then
   else
    if SN[1] == true then
      a1()
    end
    if SN[2] == true then
      a2()
    end
    if SN[3] == true then
      a3()
    end
    if SN[4] == true then
      a4()
    end
    if SN[5] == true then
      a5()
    end
    if SN[6] == true then
      a6()
    end
    if SN[7] == true then
      a7()
    end
    if SN[8] == true then
      a8()
    end
    if SN[9] == true then
      a9()
    end
    if SN[10] == true then
      a10()
    end
    if SN[11] == true then
      a11()
    end
    if SN[12] == true then
      a12()
    end
    if SN[13] == true then
      a13()
    end
    if SN[14] == true then
      a14()
    end
    if SN[15] == true then
      a15()
    end
    if SN[16] == true then
      a16()
    end
    if SN[17] == true then
      a17()
    end
    if SN[18] == true then
      a18()
    end
    if SN[19] == true then
      a19()
    end
    if SN[20] == true then
      a20()
    end
    if SN[21] == true then
      a21()
    end
    if SN[22] == true then
      a22()
    end
    if SN[23] == true then
      a23()
    end
    if SN[24] == true then
      a24()
    end
    if SN[25] == true then
      a25()
     end
    if SN[26] == true then
      a26()
     end
    if SN[27] == true then
      a27()
     end
    if SN[28] == true then
      a28()
     end
    if SN[29] == true then
      a29()
     end
    if SN[30] == true then
      Exit()
    end
  end
  XGCK = -1
end

function a1()
gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, 12}, }
local tb2 = {{1101001028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, -12}, }
local tb2 = {{1101001028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("ak美化成功")
end

function a2()
gg.setRanges(32)
local Name="SC"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, 12}, }
local tb2 = {{1101003070, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="SCAR"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, -12}, }
local tb2 = {{1101003070, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("SCAR成功")
end

function a3()
gg.setRanges(32)
local Name="M416"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, 12}, }
local tb2 = {{1101004062, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M416"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, -12}, }
local tb2 = {{1101004062, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M416成功")
end

function a4()
gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, 12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, -12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("98k成功")
end

function a5()
gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, 12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, -12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M16A4成功")
end

function a6()
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, 12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, -12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("UZI美化成功")
end

function a7()
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, 12}, }
local tb2 = {{1102004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, -12}, }
local tb2 = {{1102004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("汤姆逊美化成功")
end

function a8()
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, 12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, -12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("up9美化成功")
end

function a9()
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, 12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, -12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M24美化成功")
end

function a10()
gg.setRanges(32)
local Name="AWM美化"
local dataType = 4
local tb1 = {{10300300, 0}, {103003, 12}, }
local tb2 = {{1103003030, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="AWM美化"
local dataType = 4
local tb1 = {{10300300, 0}, {103003, -12}, }
local tb2 = {{1103003030, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("AWM美化成功")
end

function a11()
gg.setRanges(32)
local Name="AUG美化"
local dataType = 4
local tb1 = {{10100600, 0}, {101006, 12}, }
local tb2 = {{1101006001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="AUG美化"
local dataType = 4
local tb1 = {{10100600, 0}, {101006, -12}, }
local tb2 = {{1101006001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("AUG美化成功")
end

function a12()
gg.setRanges(32)
local Name="狗杂美化"
local dataType = 4
local tb1 = {{10100500, 0}, {101005, 12}, }
local tb2 = {{1101005002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M狗杂美化"
local dataType = 4
local tb1 = {{10100500, 0}, {101005, -12}, }
local tb2 = {{1101005002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("狗杂美化成功")
end

function a13()
gg.setRanges(32)
local Name="QBZ美化"
local dataType = 4
local tb1 = {{10100700, 0}, {101007, 12}, }
local tb2 = {{1101007003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="QBZ美化"
local dataType = 4
local tb1 = {{10100700, 0}, {101007, -12}, }
local tb2 = {{1101007003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("QBZ美化成功")
end

function a14()
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, 12}, }
local tb2 = {{1101008020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, -12}, }
local tb2 = {{1101008020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M762美化成功")
end

function a15()
gg.setRanges(32)
local Name="大盘鸡美化"
local dataType = 4
local tb1 = {{10500200, 0}, {105002, 12}, }
local tb2 = {{1105002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="大盘鸡美化"
local dataType = 4
local tb1 = {{10500200, 0}, {105002, -12}, }
local tb2 = {{1105002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("大盘鸡美化成功")
end

function a16()
gg.setRanges(32)
local Name="大菠萝美化"
local dataType = 4
local tb1 = {{10500100, 0}, {105001, 12}, }
local tb2 = {{1105001012, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="大菠萝美化"
local dataType = 4
local tb1 = {{10500100, 0}, {105001, -12}, }
local tb2 = {{1105001012, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("大菠萝美化成功")
end

function a17()
gg.setRanges(32)
local Name="妹控47美化"
local dataType = 4
local tb1 = {{10100900, 0}, {101009, 12}, }
local tb2 = {{1101009001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="妹控47美化"
local dataType = 4
local tb1 = {{10100900, 0}, {101009, -12}, }
local tb2 = {{1101009001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("妹控47美化成功")
end

function a18()
gg.setRanges(32)
local Name="s686美化"
local dataType = 4
local tb1 = {{10400100, 0}, {104001, 12}, }
local tb2 = {{1104001005, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="s686美化"
local dataType = 4
local tb1 = {{10400100, 0}, {104001, -12}, }
local tb2 = {{1104001005, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("s686美化成功")
end

function a19()
gg.setRanges(32)
local Name="R1895美化"
local dataType = 4
local tb1 = {{10400200, 0}, {104002, 12}, }
local tb2 = {{1104002003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="R1895美化"
local dataType = 4
local tb1 = {{10400200, 0}, {104002, -12}, }
local tb2 = {{1104002003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("R1895美化成功")
end

function a20()
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, 12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, -12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("s12k美化成功")
end

function a21()
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, 12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, -12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("平底锅美化成功")
end

function a22()
gg.setRanges(32)
local Name="野牛美化"
local dataType = 4
local tb1 = {{10200500, 0}, {102005, 12}, }
local tb2 = {{1102005001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="野牛美化"
local dataType = 4
local tb1 = {{10200500, 0}, {102005, -12}, }
local tb2 = {{1102005001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("野牛美化成功")
end

function a23()
gg.setRanges(32)
local Name="维克托美化"
local dataType = 4
local tb1 = {{10200300, 0}, {102003, 12}, }
local tb2 = {{1102003020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="维克托美化"
local dataType = 4
local tb1 = {{10200300, 0}, {102003, -12}, }
local tb2 = {{1102003020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("维克托美化成功")
end

function a24()
gg.setRanges(32)
local Name="sks美化"
local dataType = 4
local tb1 = {{10300400, 0}, {103004, 12}, }
local tb2 = {{1103004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="sks美化"
local dataType = 4
local tb1 = {{10300400, 0}, {103004, -12}, }
local tb2 = {{1103004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("sks美化成功")
end

function a25()
gg.setRanges(32)
local Name="vss美化"
local dataType = 4
local tb1 = {{10300500, 0}, {103005, 12}, }
local tb2 = {{1103005013, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="vss美化"
local dataType = 4
local tb1 = {{10300500, 0}, {103005, -12}, }
local tb2 = {{1103005013, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("vss美化成功")
end

function a26()
gg.setRanges(32)
local Name="迷你美化"
local dataType = 4
local tb1 = {{10300600, 0}, {103006, 12}, }
local tb2 = {{1103006018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="迷你美化"
local dataType = 4
local tb1 = {{10300600, 0}, {103006, -12}, }
local tb2 = {{1103006018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("迷你美化成功")
end

function a27()
gg.setRanges(32)
local Name="温酒美化"
local dataType = 4
local tb1 = {{10300800, 0}, {103008, 12}, }
local tb2 = {{1103008001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="温酒美化"
local dataType = 4
local tb1 = {{10300800, 0}, {103008, -12}, }
local tb2 = {{1103008001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("温酒美化成功")
end

function a28()
gg.setRanges(32)
local Name="slr美化"
local dataType = 4
local tb1 = {{10300900, 0}, {103009, 12}, }
local tb2 = {{1103009011, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="slr美化"
local dataType = 4
local tb1 = {{10300900, 0}, {103009, -12}, }
local tb2 = {{1103009011, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("slr美化成功")
end

function a29()
gg.setRanges(32)
local Name="qbu美化"
local dataType = 4
local tb1 = {{10301000, 0}, {103010, 12}, }
local tb2 = {{1103010001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="qbu美化"
local dataType = 4
local tb1 = {{10301000, 0}, {103010, -12}, }
local tb2 = {{1103010001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("qub美化成功")
end



function Exit()
  print(" ")
  os.exit()
end
cs = ""
while true do
sj = os.date("\n%c")
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end