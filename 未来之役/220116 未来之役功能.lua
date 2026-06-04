function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--指针配置不懂勿动
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end
--仿Xs配置不懂勿动


function Main()
  SN = gg.choice({
  "骁龙845",--1
  "锁死自瞄",--2
  "www.kjdao.cc",--3
  "www.kjdao.cc",--4
  "www.kjdao.cc",--5
  "www.kjdao.cc",--6
  "www.kjdao.cc",--7
  "www.kjdao.cc",--8
  "功能名称9",--9
  "功能名称10",--10
  "功能名称11",--11
  "功能名称12",--12
  "功能名称13",--13
  "功能名称14",--14
  "功能名称15",--15
  "功能名称16",--16
  "功能名称17",--17
  "功能名称18",--18
  "功能名称19",--19
  "功能名称20",--20
  "功能名称21",--21
  "功能名称22",--22
  "功能名称23",--23
  "功能名称24",--24
  "功能名称25",--25
  "功能名称26",--26
  "功能名称27",--27
  "功能名称28",--28
  "功能名称29",--29
  "功能名称30",--30
"退出脚本"
 }, nil, "www.kjdao.cc")
  if SN == 1 then
   a1()qmnb = {
{["memory"] = 1048576},
{["name"] = "枪"},
{["value"] = 0.70710682869, ["type"] = 16},
{["lv"] = 0.45454543829, ["offset"] = 32, ["type"] = 16},
{["lv"] = 2.20000004768, ["offset"] = 36, ["type"] = 16},
{["lv"] = -1.5, ["offset"] = 40, ["type"] = 16},
{["lv"] = -0.80000001192, ["offset"] = 44, ["type"] = 16},
{["lv"] = 0.00076923077, ["offset"] = 48, ["type"] = 16},
{["lv"] = 2, ["offset"] = 52, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 52, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "透"},
{["value"] = 3.7615819e-37, ["type"] = 16},
{["lv"] = -127, ["offset"] = 36, ["type"] = 16},
{["lv"] = 0.00001, ["offset"] = 56, ["type"] = 16},
{["lv"] = 2, ["offset"] = 100, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 100, ["type"] = 16},
}
xqmnb(qmnb)
  end
  if SN == 2 then
   a2()qmnb = {
{["memory"] = 32},
{["name"] = "自瞄"},
{["value"] = 3.5, ["type"] = 16},
{["lv"] = 200, ["offset"] = 8, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 72, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},
{["value"] = 99999, ["offset"] = 8, ["type"] = 16},
{["value"] = 99999, ["offset"] = 72, ["type"] = 16},
}
xqmnb(qmnb)
  end
  if SN == 3 then
   a3()
  end
  if SN == 4 then
   a4()
  end
  if SN == 5 then
   a5()
  end
  if SN == 6 then
   a6()
  end  
  if SN == 7 then
   a7()
  end
  if SN == 8 then
   a8()
  end
  if SN == 9 then
   a9()
  end
  if SN == 10 then
   a10()
  end
  if SN == 11 then
   a11()
  end
  if SN == 12 then
   a12()
  end  
  if SN == 13 then
   a13()
  end
  if SN == 14 then
   a14()
  end
  if SN == 15 then
   a15()
  end
  if SN == 16 then
   a16()
  end
  if SN == 17 then
   a17()
  end
  if SN == 18 then
   a18()
  end  
  if SN == 19 then
   a19()
  end
  if SN == 20 then
   a20()
  end
  if SN == 21 then
   a21()
  end
  if SN == 22 then
   a22()
  end
  if SN == 23 then
   a23()
  end
  if SN == 24 then
   a24()
  end  
  if SN == 25 then
   a25()
  end
  if SN == 26 then
   a26()
  end
  if SN == 27 then
   a27()
  end
  if SN == 28 then
   a28()
  end
  if SN == 29 then
   a29()
  end
  if SN == 30 then
   a30()
  end   
  if SN == 31 then
   Exit()
 end
  XGCK = -1
end

function a1()

end


function a2()

end


function a3()

end


function a4()

end


function a5()

end


function a6()

end


function a7()

end


function a8()

end


function a9()

end


function a10()

end


function a11()

end


function a12()

end


function a13()

end


function a14()

end


function a15()

end


function a16()

end


function a17()

end


function a18()

end


function a19()

end


function a20()

end


function a21()

end


function a22()

end


function a23()

end


function a24()

end


function a25()

end


function a26()

end


function a27()

end


function a28()

end


function a29()

end


function a30()

end


function Exit()
print("马不牛逼了")
os.exit()
end
cs = "马牛逼了"



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









