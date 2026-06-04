function Main()
  Menu = gg.choice({
  "防封号/防检测(登陆界面开)🍎",
  "范围甲🍎",
  "地图除草(不建议使用)🍎",
  "人物天线🍎",
  "🍎骁龙透视🍎",
  "🍎🍎",
  "🍎微无后",
  "🍎",
  "🍎🍎",
  "🍎🍎",
  "退出"
 }, nil, "荒野行动开始奔放，不会演?  被封号了?")
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
   Exit()
  end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.00001;0.1;0.01", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(800)
  gg.editAll("999999999", gg.TYPE_DOUBLE)
  gg.toast("开启成功") 
  gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;0.1;1;1.1;0.01;1.5",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("999999", gg.TYPE_DOUBLE)
gg.toast("开启成功")
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.8;0.1;1D;1.1;0.01", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("999999", gg.TYPE_DOUBLE)
  gg.toast("开启成功")

 end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;0.22;1::70", gg.TYPE_FLOAT)
gg.searchNumber("0.22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("4.5",gg.TYPE_FLOAT)
gg.toast("范围锁甲开启")
gg.clearResults()
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("0.125E;66,816D;1.5F;1,280D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(80)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("除草开启")
end


function d()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.61877787113", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("女天线开启")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.52087306976", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("男天线开启")
end




function e()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4923D;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("25", gg.TYPE_FLOAT)
  gg.toast("开始")
	gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("11,266.75F;24,581.5F;2.0F;1,024D;3,104D;537,149,443D;3,105D;3.87506699562F::153", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("25", gg.TYPE_FLOAT)
gg.toast("开始成功")
end



function f()
end



function g()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
	 gg.searchNumber("2D;2.25E;4.9e-324E;4.18359375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.18359375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(30)
	 gg.editAll("-20", gg.TYPE_FLOAT)
	 gg.toast("无后修改成功")
	 gg.clearResults()
end



function h()
end


function i()
end

function m()
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end

function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find
    (szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] =
      string.sub(szFullString, nFindStartIndex, string.len
      (szFullString))
      break end
    nSplitArray[nSplitIndex] = string.sub
    (szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len
    (szSeparator)
    nSplitIndex = nSplitIndex + 1 end return
  nSplitArray end
function xgxc(szpy, qmxg)
  for x = 1, #(qmxg) do
    xgpy = szpy + qmxg[x]["offset"]
    xglx = qmxg[x]["type"]
    xgsz = qmxg[x]["value"]
    xgdj = qmxg[x]["freeze"]
    if xgdj == nil or xgdj == "" then
      gg.setValues({[1]
        = {address = xgpy, flags = xglx, value = xgsz}})
     else
      gg.addListItems({[1]
        = {address = xgpy, flags = xglx,
          freeze = xgdj, value = xgsz}}) end
    xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1]["memory"])
  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2]["name"] .. "开启失败")
   else
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2]["name"] .. "开启失败")
     else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0 if sz > 999999 then
        sz = 999999 end for i = 1, sz do
        pdsz = true for v = 4, #(qmnb) do if
            pdsz == true then
            pysz = {} pysz[1]
            = {} pysz[1].address
            = sl[i].address + qmnb[v]["offset"] pysz[1].flags
            = qmnb[v]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd
            = split(pdpd, ";") tzszpd
            = szpd[1] pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true else
              pdjg = false pdsz = false end end end if
          pdjg == true then szpy
          = sl[i].address xgxc(szpy, qmxg) end end
      if xgjg == true then
        gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")
       else
        gg.toast(qmnb[2]["name"] .. "开启失败")
      end
    end
  end
end
--------------------↑仿xs配置勿修改↑---------------------------



function Exit()
print("🍎🍎荒野行动")
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









