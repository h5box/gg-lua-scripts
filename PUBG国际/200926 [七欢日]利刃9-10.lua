------七欢解利刃9-10防封全源，禁止二改圈钱，不知道稳不稳了，发快猫本身就是会泛滥，泛滥重地，不说了
-----自行看源码，想玩的自己也可以玩，已经把把卡密系统删了，想加到自己的脚本里面请复制防的源码找个模板添加进去，但是不要二改圈钱，谢谢
-----by ~七欢
-----没了。



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

gg.alert("利刃国际服稳定全防，破解🐶自重")

function Main()
  SN = gg.multiChoice({
  "内存防封{大厅开}",
  "防止禁网{大厅开}",
  "关闭脚本",
},nil,"建议隐藏23旁路选择没有开启防封\n执行过程中请勿切屏或点击修改器，以免数据错乱造成封号问题\n部分用户如果禁网就按照第一个圈刷完断开网络等待提示弹窗然后返回到大厅，开网链接进入游戏的方法防止禁网")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
   if SN[2] == true then
   b()
  end
  if SN[3] == true then
   Exit()
  end
end
  XGCK = -1
end


---单---



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(30101996, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_4_, _FORV_5_ in ipairs(revert) do
      if _FORV_5_.flags == gg.TYPE_DWORD then
        _FORV_5_.value = "0"
        _FORV_5_.freeze = true
      end
    end
    gg.addListItems((revert))
    gg.clearResults()
	 gg.toast("防封开启成功")
	 gg.clearResults()
end


function b()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408;808923191::8",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(10000)
    sl = gg.getResultCount()
    for _FORV_3_ = tonumber("1"), sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_DWORD,
          freeze = true,
          value = tonumber("0")
        }
      })
      end
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 	   gg.toast("防封开启成功")
end
end
	
	

function Exit()
print("利刃牛逼")
os.exit()
end
cs = "作者冷颜"



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













