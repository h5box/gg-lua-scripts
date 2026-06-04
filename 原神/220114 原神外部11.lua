function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '开启成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '开启失败') end end end end
--核心配置↓不懂勿改
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
--核心配置↑不懂勿改
function Main()
  SN = gg.multiChoice({
  "2倍加伤",
  "弓箭跟踪",
  "升天助飞",
  "恢复升天",
  "诺艾尔攻速",
  "诺艾尔无限重击",
  "安柏弓箭攻速",
  "人物无敌",
  "附近怪物自杀开启",
  "附近怪物自杀关闭",
  "七七攻速",
  "退出脚本"
 }, nil, "作者:小折全网唯一开源代码")
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
   Exit()
  end
end
  XGCK = -9999
end

function a()
Fxs({{100000000,0,16},
{500,-4,16},
{5,-8,16},},
{{9999,-8,16},},32,"加伤",false)
end



function b()
Fxs({{0.15000000596,0,16},
{100,-28,16},
{2,-20,16},
{7,-16,16},
{100,-4,16},
{2,4,16},
{25,8,16},},
{{3,0,16},},32,"弓箭跟踪",false)
end

function c()
Fxs({{2139095040,0,4},
{-1,-64,16},
{-1,-56,16},
{-1,-12,16},
{2139095040,-8,4},
{2139095040,-4,4},
{-8388608,4,4},
{-8388608,8,4},
{-8388608,12,4},},
{{0.20000000298,-64,16},},32,"升空",false)


Fxs({{400,0,16},
{100,-32,16},
{128,-4,16},},
{{0,-32,16},},16384,"飞行体力",false)
end


function d()
Fxs({{2139095040,0,4},
{0.20000000298,-64,16},
{-1,-56,16},
{-1,-12,16},
{2139095040,-8,4},
{2139095040,-4,4},
{-8388608,4,4},
{-8388608,8,4},
{-8388608,12,4},},
{{-1,-64,16},},32,"恢复升空",false)


Fxs({{400,0,16},
{0,-32,16},
{128,-4,16},},
{{100,-32,16},},16384,"恢复体力",false)
end


function e()
Fxs({{0.17000000179,0,16},
{0.10000000149,-88,16},
{0.20000000298,40,16},
{1,236,16},},{{0.00001,236,16},},4,"诺艾尔攻速",false)

Fxs({{0.21999999881,0,16},
{0.10000000149,-4,16},
{1,4,16},
{6,68,16},
{1,248,16},},{{0.0001,248,16},},4,"诺艾尔攻速",false)
end



function f()
Fxs({{0.31999999285,0,16},
{0.55000001192,-152,16},
{2,-112,16},
{0.30000001192,-96,16},
{0.20000000298,-56,16},
{1,560,16},
{0.10000000149,616,16},
{1,624,16},},
{{10,560,16},{9999,624,16},},4,"无限重击",false)
end


function g()
Fxs({{0.64999997616,0,16},
{0.89999997616,48,16},
{1,180,16},},
{{-9,0,16},},4,"弓箭攻速",false)
end

function h()
Fxs({{0.64999997616,0,16},
{0.00999999978,-32,16},
{0.5,-16,16},
{1.29999995232,-12,16},
{1,20,16},},
{{9.5,0,16},},4,"无敌",false)
end




function i()
Fxs({{100000000,0,16},},
{{0,0,16},},4,"Fxs",false)
end



function j()
Fxs({{100000000,0,16},
{0.15000000596,-36,16},
{-1.0e32,-20,16},
{3.4028235e38,-4,16},
{3.4028235e38,4,16},},
{{9,-52,16},},4,"Fxs",false)
j()
end

function k()
Fxs({{0.63499999046,0,16},
{0.1099999994,-192,16},
{2,-64,16},
{0.05000000075,-8,16},
{1,244,16},},
{{0.05,244,16},},4,"七七攻速",false)
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




















