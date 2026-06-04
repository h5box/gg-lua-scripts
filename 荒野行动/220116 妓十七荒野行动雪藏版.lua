function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end
function Main()
  SN =gg.multiChoice({
  "妓十七说登陆必开",
  "妓十七千里眼",
  "妓十七色色",
  "妓十七锁车油",
  "妓十七老范围甲",
  "妓十七QQ:3242124859  ",
  "妓十七游戏交流群:1037910788",
  "妓十七秒换弹",
  "妓十七微加速",
  "妓十七高射速",
  "妓十七天黑",
  "妓十七顺风耳",
  "妓十七加速飞翔",
  "妓十七清理地面",
  "妓十七人变大",
  "和妓十七大大说再见"
 }, nil, "")
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
   y()
  end
  if SN[16] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("32768;33330:90", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("33330", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("防封开启中")
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.1;0.5;0.8;1.1;3.5;0.01", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.1;0.8;1.1;3.5;0.01", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("99999",gg.TYPE_DOUBLE)
  gg.toast("防封开启成功")
end




function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.3912533e-19;1.6623683e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("妓十七透视眼，已经看穿你的小内内")
end 



function c()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4923D;-1;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(800)
gg.editAll("15", gg.TYPE_FLOAT)
gg.toast("变色色开启OK了")
end



function d()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1;1,065,353,216D;1;5;4::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("汽车锁油开启没成功")
  else
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() ~= 1 then
      gg.toast("锁油开启没成功")
    else
      gg.getResults(1)
      gg.editAll("0.1", gg.TYPE_FLOAT)
      gg.toast("汽车琐油开启成功")
      gg.clearResults()
    end
  end
 end



function e()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
    gg.searchNumber("0.22;0.1;33D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    zlsj = gg.getResults(1)
    ZL = {}
    ZL[1] = {}
    ZL[1].address = zlsj[1].address - 32
    ZL[1].flags = gg.TYPE_DWORD
    IDZL = gg.getValues(ZL)[1].value
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
    gg.searchNumber(IDZL .. ";0.1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll("3.5", gg.TYPE_FLOAT)
    gg.toast('范围甲开启成功')
    gg.clearResults()
end



function f()

end



function g()

end



function h()
gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS + gg.REGION_C_HEAP)
      gg.searchNumber("0.9;1;1.1;-0.02;-0.1957::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast("步枪秒换开启失败败")
      else
        gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
        if gg.getResultCount() ~= 1 then
          gg.toast("步枪秒换开启失败败")
        else
          gg.getResults(1)
          gg.editAll("3", gg.TYPE_DOUBLE)
          gg.toast("妓十七修复步枪秒换子弹成功了")
          gg.clearResults()
end 
end
end



function i()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('4.9e-324;3.14;1.6;1.57;0.2;7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('8.1', gg.TYPE_DOUBLE)
  gg.toast("微加速开启了")
end




function j()
gg.clearResults()
  gg.alert('开启此功能勿开秒换弹夹 不然卡弹夹哟')
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('-1,090,500,752D;-0.50109004974F;1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('6000', gg.TYPE_FLOAT)
  gg.toast('开启成功')
end

function k()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0F;0.75F;-1.5F;2.0F;1.04999995232F;-0.03999999911F;127.0F;0.00392156886F:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_FLOAT)
gg.toast("天黑开启")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0F;0.75F;0.63779997826F;2.14560008049F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_FLOAT)
gg.toast("天黑开启")
end

function l()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1Q;2Q;30E;15E", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("30", gg.TYPE_DOUBLR,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("1000",gg.TYPE_DOUBLE)
  gg.toast("脚步雷达已开启")
  gg.clearResults()
end


function z()
gg.clearResults()
  gg.alert("此功能超过2700米，落地以后断网重连，否则拉回大厅")
  gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS + gg.REGION_C_HEAP)
  gg.searchNumber("0.1;-0.1;0.6;0.4;1D::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("超级飞行加速开启失败")
  else
    gg.searchNumber("0.1;-0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("150", gg.TYPE_DOUBLE)
    gg.toast("超级飞行加速开启成功")
  end
end

function x()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("80;1;10;5126;11::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图除草成功")
end



function y()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.4E;0F;1.875F;1E;1.75F;1.5E::85", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("3", gg.TYPE_DOUBLE)
  gg.toast("人物实体变大开启成功")
  gg.clearResults()
end

function Exit()
print("作者:妓十七")
os.exit()
end
cs = "妓十七交流群号1037910788"



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









