function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end
function Main()
  SN =gg.multiChoice({
  "防封(登陆界面)√",
  "骁龙透视(出生岛)",
  "人物上色(出生岛)🍏",
  "",
  "",
  "范围头√不建议使用(出生岛)",
  "范围甲(出生岛)代码源于网络",
  "人物天线(出生岛)代码源于网络",
  "",
  "",
  "",
  "",
  "",
  "💓💓💓💓💓💓",
  "退出脚本"
 }, nil, " 💖🐲荒野行动脚本")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
    if SN[11] == true then
   k()
  end
    if SN[12] == true then
   l()
  end
      if SN[13] == true then
   z()
  end
      if SN[14] == true then
   x()
  end
  if SN[15] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
 gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;0.1;1;1.1;0.01;1.5",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_DOUBLE)
gg.toast("开启成功")
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.00001;0.1;0.01", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
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


function c()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4923D;0.99900001287F::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.99900001287", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("66",gg.TYPE_FLOAT)
  gg.toast("上色开启")
end



function d()
   end


function e()
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1D;0.15::50", gg.TYPE_FLOAT)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("3.5",gg.TYPE_FLOAT)
gg.toast("范围锁头修改成功")
end



function g()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;0.22;1::70", gg.TYPE_FLOAT)
gg.searchNumber("0.22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("5.5",gg.TYPE_FLOAT)
gg.toast("范围锁甲开启")
gg.clearResults()
end



function h()
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



function i()
 end




function j()
end

function k()
end

function l()
end


function z()
end

function x()
end

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


function Exit()
print("荒野行动脚本1104642588")
os.exit()
end
cs = "使用记得反馈"



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









