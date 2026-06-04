function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '开启成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '开启失败') end end end end
--核心配置↓不懂勿改
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
--核心配置↑不懂勿改
function Main()
  SN = gg.multiChoice({
  "全屏攻击",
  "恢复全屏",
  "微小加伤",
  "暴击=移速",
  "冰女定怪",
  "萝莉定怪",
  "定怪",
  "退出脚本"
 }, nil, "作者小折")
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
   Exit()
  end
end
  XGCK = -9999
end

function a()
Fxs({{7499636,0,4},
{1065353216,-316,4},
{2139095040,-312,4},
{2139095040,-308,4},
{2139095040,-304,4},
{1,-288,16},
{1,-284,16},
{31,-224,4},
{30,-176,4},
{29,-128,4},
{1752393037,-12,4},
{1699169353,-8,4},
{1634887022,-4,4},},
{{3.8,-284,16},},32,"全屏攻击",false)
end

function b()
Fxs({{7499636,0,4},
{1065353216,-316,4},
{2139095040,-312,4},
{2139095040,-308,4},
{2139095040,-304,4},
{3.79999995232,-284,16},
{31,-224,4},
{30,-176,4},
{29,-128,4},
{1752393037,-12,4},
{1699169353,-8,4},
{1634887022,-4,4},},
{{1,-284,16},},32,"恢复",false)
end


function c()
Fxs({{0.34999999404,0,16},
{0.20000000298,-8,16},
{1.25,4,16},
{0.4375,8,16},
{0.25,12,16},},
{{0,0,16},},32,"加伤",false)
end



function d()
gg.clearList()
Fxs({{1000,0,4},
{6000,100,16},},
{{3,104,16,true},{9,4,16,true},},32,"移速")
end


function e()
Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{7,16,4},
{1,20,16},
{560,104,4},
{556,112,4},
{1,720,16},
{1,1420,16},
{1,2120,16},
{1,2748,16},
{1,3376,16},},
{{0.8,20,16},{0.8,720,16},{0.8,1420,16},{0.8,2120,16},{0.8,2748,16},{0.8,3376,16},},32,"Fxs",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{0,16,4},
{1,20,16},
{560,104,4},
{556,112,4},
{1,720,16},},
{{0.8,20,16},{0.8,720,16},},32,"Fxs",false)
end


function f()
Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},{68,12,4},{1,16,4},
{1065353216,20,4},
{560,104,4},
{556,112,4},
{1065353216,892,4},
{1065353216,1000,4},
{1065353216,1108,4},
{1065353216,1216,4},
{1065353216,1484,4},
{1065353216,2040,4},
{1065353216,2740,4},
{1065353216,3296,4},
{1065353216,3852,4},
{1065353216,4552,4},
{1065353216,5252,4},},
{{0.8,20,16},{0.8,892,16},{0.8,1000,16},{0.8,1108,16},{0.8,1216,16},{0.8,1484,16},{0.8,2040,16},{0.8,2740,16},{0.8,3296,16},{0.8,3852,16},{0.8,4552,16},{0.8,5252,16},},32,"Fxs",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{2,16,4},
{1,20,16},
{1,128,16},
{1,236,16},
{1,344,16},
{1,612,16},
{1,1240,16},
{1,1796,16},
{1,2352,16},
{1,2908,16},
{1,3588,16},
{1,4216,16},},
{{0.8,20,16},{0.8,128,16},{0.8,236,16},{0.8,344,16},{0.8,612,16},{0.8,1240,16},{0.8,1796,16},{0.8,2352,16},{0.8,2908,16},{0.8,3588,16},{0.8,4216,16},},32,"Fxs",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{0,16,4},
{1065353216,20,4},
{1,572,4},
{1065353216,576,4},},
{{0.8,20,16},{0.8,576,16},},32,"Fxs",false)
end

function g()

Fxs({{4642129352211824646,0,32},
{1,8,16},
{4575657222489253901,4,32},},
{{999,8,16},},32,"定怪1",false)

Fxs({{4294967436,0,32},
{76,-4,4},
{12,-8,4},
{256,-12,4},
{1,-20,16},
{34359738412,8,32},},
{{999,-20,16},},32,"定怪2",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{3,16,4},
{1,20,16},},
{{999,20,16},},32,"定怪3",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{10,16,4},
{1,20,16},},
{{999,20,16},},32,"定怪4",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{7,16,4},
{1,20,16},},
{{999,20,16},},32,"定怪5",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{11,16,4},
{1,20,16},},
{{999,20,16},},32,"定怪6",false)
g()
end






















function b()
Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{3,16,4},
{1,20,16},},
{{999,20,16},},32,"定怪",false)

Fxs({{120259084288,0,32},
{28,4,4},
{32,8,4},
{68,12,4},
{1,20,16},},
{{9,20,16},},32,"定怪",false)

end


function gjdnd()
Fxs({{4642129352211824646,0,32},
{1,8,16},
{4575657222489253901,4,32},},
{{999,8,16},},32,"定怪",false)

Fxs({{4294967436,0,32},
{76,-4,4},
{12,-8,4},
{256,-12,4},
{1,-20,16},
{34359738412,8,32},},
{{999,-20,16},},32,"定怪",false)
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