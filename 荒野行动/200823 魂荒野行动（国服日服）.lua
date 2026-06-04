function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end
function Main()
  SN =gg.multiChoice({
  "防封(登陆界面)√",
  "转圈圈(不稳定)🌼",
  "人物上色🍏",
  "视角拉高🍎",
  "人物飞天√",
  "范围头√",
  "人物遁地(9游)",
  "人物天线🍌",
  "无后",
  "子弹全穿(配合人物遁地)(4399不可以使用)",
  "飞行加速",
  "❤人物跑Aa️",
  "❤️范围甲",
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
 end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-9.80000019073F;10000000000F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10000000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-55", gg.TYPE_FLOAT)
gg.toast("成功")
end


function c()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4923D;-1;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(800)
  gg.editAll("66", gg.TYPE_FLOAT)
  gg.toast("上色开启成功")
end



function d()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("4.9e-324;5;-0.26;1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3.6", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
  end


function e()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1Q;0.5E;9.8E;1.5F", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-1", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
  gg.clearResults()
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1D;0.15::50", gg.TYPE_FLOAT)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("4.5",gg.TYPE_FLOAT)
gg.toast("范围锁头修改成功")
end



function g()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("4.9e-324E;1;0.01;0.2;4.9e-324E::", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
gg.getResults(200)
    gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("人物遁地开启成功")
end



function h()
gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("0.99886602163;-0.04760599881;1.0;0.04760599881;0.99886602163;-0.02063599974;0.00770800002;1.0;0.99972999096;0.02321900055::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(900)
  gg.editAll("98",gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("0.02609699965;-0.00132599997;0.01718400046;-0.00394200021;1.0;0.99981898069;0.01902900077::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(900)
  gg.editAll("98",gg.TYPE_FLOAT)
  gg.toast("人物天线开启成功")
end



function i()
  gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
	 gg.searchNumber("2D;700E;4.9e-324E;4.18359375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.18359375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 gg.editAll("-20", gg.TYPE_FLOAT)
	 gg.toast("无后修改成功")
	 gg.clearResults()

 end




function j()
qmnb = {
{["memory"] = 16},
{["name"] = "子弹全穿"},
{["value"] = 16842752, ["type"] = 4},
{["lv"] = 16842753, ["offset"] = 28, ["type"] = 4},
{["lv"] = 16777217, ["offset"] = 48, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 48, ["type"] = 4},

}
xqmnb(qmnb)gg.clearResults()
end

function k()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS + gg.REGION_C_HEAP)
  gg.searchNumber("0.1;-0.1;0.6;0.4;1D::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(50)
    gg.editAll("300", gg.TYPE_DOUBLE)
    gg.toast("开启成功")
end

function l()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.3925;2.5;1.6;0.001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5.7", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end


function z()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1D;1;0.08::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(1200)
 gg.editAll("0.45", gg.TYPE_FLOAT)
 gg.toast('开启成功')
 gg.clearResults()
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









