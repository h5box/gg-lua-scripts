function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
menu = gg.multiChoice({
"无聚防抖",
"全枪顺击",
"打击特效",
"平板视角",
"二倍加速",
"橡胶人物",
"人物变大",
"打鸟范围",
"人物天线",
"头部范围",
"200w范围",
"高跳开启",
"高跳关闭",
"退出修仙"
 }, nil, "伴九制作，请勿二改，全部测试有效果范围只能开一个必须出生岛开，功能随便开")
if menu == nil then else 
if menu[1] == true then a1() end 
if menu[2] == true then b2() end 
if menu[3] == true then c3() end 
if menu[4] == true then d4() end
if menu[5] == true then e5() end
if menu[6] == true then f6() end
if menu[7] == true then g7() end
if menu[8] == true then h8() end
if menu[9] == true then i9() end
if menu[10] == true then j10() end
if menu[11] == true then k11() end
if menu[12] == true then m12() end
if menu[13] == true then n13() end
if menu[14] == true then kk() end 
end XGCK = -1 end
function a1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功")
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("聚点修复成功")

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功")
end

function b2()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("80000", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99000", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33000", 16, false, 536870912, 0, -1)
  gg.searchNumber("33000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("87000", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("90000", 16, false, 536870912, 0, -1)
  gg.searchNumber("90000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88000", 16, false, 536870912, 0, -1)
  gg.searchNumber("88000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("71500", 16, false, 536870912, 0, -1)
  gg.searchNumber("71500", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("顺击开启成功")
  end

function c3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600", gg.TYPE_FLOAT)
gg.toast("击杀特效")
end

function d4()
gg.clearResults()    
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("350", gg.TYPE_FLOAT)
gg.toast("平板视角开启成功")
end

function e5()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.123", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速开启成功")
  end
  
  function f6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("333.0517578125", gg.TYPE_FLOAT)
  gg.toast("橡胶人物开启成功")
  end
  
  function g7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("2.2", gg.TYPE_FLOAT)
  gg.toast("人物变大开启成功")
  end

function  h8()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.toast("打鸟范围开启成功")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("真伤范围") 
end

function  i9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("头发天线开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("0.02066046", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("人物天线开启成功")
end

function  j10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("199", gg.TYPE_FLOAT)
gg.toast("头部范围开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end


function k11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("172", gg.TYPE_FLOAT)
gg.toast("范围加载中50%")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("范围加载中%80") 
gg.clearResults()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("175", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("175", gg.TYPE_FLOAT)
gg.toast("200w范围开启成功")
end

function m12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("高跳开启成功")
end

function n13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.toast("高跳关闭成功")
end




function kk() os.exit()end while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults() if XGCK == 1 then Main()end end