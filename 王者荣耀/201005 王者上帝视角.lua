
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultsCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultsCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultsCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end    gbgn1="🔥点我开启🔥" gbgn2="👣点我关闭👣" kqgn1=gbgn1 kqgn2=gbgn1 kqgn3=gbgn1 kqgn4=gbgn1 kqgn5=gbgn1 kqgn6=gbgn1 kqgn7=gbgn1 kqgn8=gbgn1 kqgn9=gbgn1 kqgn10=gbgn1 kqgn11=gbgn1 kqgn12=gbgn1 kqgn13=gbgn1 kqgn14=gbgn1 kqgn15=gbgn1 kqgn16=gbgn1 kqgn17=gbgn1 kqgn18=gbgn1 kqgn19=gbgn1 

function yiyz_yiyz_Main()--功能函数
  local sp = gg.choice({
    "一局开一次泉水一"..kqgn1;
    "一局开一次泉水二"..kqgn2;
    "🍃🍃退出脚本👉👈"
  }, nil, '')
  if sp==1 then a1()
  end
  if sp==2 then a2()
  end
  if sp==3 then a3()
  end
  if sp==4 then a4()
  end
  if sp==5 then Exit()
  end
  XGCK = -1
end


function a1()
if kqgn1==gbgn1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1,081,006,571;-1,082,125,398;-1,082,130,432;-1,088,838,298::37',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1,082,130,432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-1,077,600,888',gg.TYPE_DWORD)
gg.toast("纸泉水一开启成功")

kqgn1=gbgn2
else

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1,081,006,571;-1,082,125,398;-1,082,130,432;-1,088,838,298::37',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1,077,600,888',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-1,082,130,432',gg.TYPE_DWORD)
gg.toast("纸泉水一开启成功")

kqgn1=gbgn1
end
end



function a2()
if kqgn2==gbgn1 then

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,082,125,398;-1,082,130,432;-1,088,838,298:17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1,082,130,432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-1071644672',gg.TYPE_DWORD)
gg.toast("高泉水二开启成功")


kqgn2=gbgn2
else

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,082,125,398;-1,082,130,432;-1,088,838,298:17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1071644672',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-1,082,130,432',gg.TYPE_DWORD)
gg.toast("高泉水二开启成功")




kqgn2=gbgn1
end
end






print("")


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
    yiyz_yiyz_Main()
  end
end


