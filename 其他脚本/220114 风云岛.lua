function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '开启成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '开启失败') end end end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")  gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  function k() menu1 = gg.multiChoice({
'一键美化',
'恢复加速',
'恢复穿墙',
'测试功能',
'测试功能',
'测试功能',
'测试功能',
'暂无',
'返回上一页'},
nil,'美化功能未完善可能存在部分手机开不了') if menu1 == nil then else 
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then h6() end
if menu1[7] == true then h7() end
if menu1[8] == true then h8() end
if menu1[9] == true then Main() end
end GLWW=-1 end function i() menu1 = gg.multiChoice({
  "      🎀全人物攻速💛",
  "       🎀迅刀攻速💛",
  "       🎀迅刀范围💛",
'测试功能',
'测试功能',
'测试功能',
'测试功能',
'暂无',
'返回上一页'},
nil,'变态功能存在封号风险') if menu1 == nil then else 
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then m3() end
if menu1[4] == true then m4() end
if menu1[5] == true then m5() end
if menu1[6] == true then m6() end
if menu1[7] == true then m7() end
if menu1[8] == true then m8() end
if menu1[9] == true then Main() end
end GLWW=-1 end 
function Main() 
SN = gg.multiChoice({
  "       🎀人物飞天💚一局一开",
  "       🎀人物爬墙💚一局一开",
  "       🎀人物变大💚试玩开",
  '       🎀人物遁地💚试玩开',
  '       🎀上帝视角💚试玩开',
  '       🎀房子透视💚落地开',
  '       🎀骑马加速💚大厅开',
  '       🎀雪男范围💚落地开',
  '       🍀变态功能💙',
  '       🍀清除数据💙',
  '       🍀美化功能💙',
  "       🍀恢复功能💙",
  "    交流群667020823"
 }, nil, "原创小折风云岛，清除数据点一下立刻生效")
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
  if SN[13] == true then Exit() 
  end 
 end 
 XGCK = -1 
end   
 function b()Fxs({{0.4999999702,0,16},{0.70710676908,-16,16},{0.69999998808,8,16},},{{12,8,16},},4,"Fxs",false)end  function d() Fxs({{0.00100000005,0,16},{0.02999999933,4,16},{60,8,16},{0.69999998808,12,16},{1.75,16,16},{0.25999999046,20,16},{0.875,28,16},},{{3,28,16},},4,"Fxs",false) end function a1()Fxs({{0.13333334029,0,16},{1,-84,16},{1,-56,16},{10,-52,16},{1,-48,16},{1,-44,16},{1,-28,16},{1,-12,16},{0.17254902422,4,16},{0.21176470816,8,16},{1,12,16},{0.13725490868,16,16},{0.12156862766,20,16},{0.1254902035,24,16},{1,28,16},},{{1,-52,16},},16,"Fxs",false)end  function a()Fxs({{0.70710676908,0,16},{0.70710676908,-4,16},{1,8,16},{0.4999999702,16,16},{0.02999999933,20,16},{0.70710676908,368,16},{0.70710676908,372,16},{1,380,16},{0.4999999702,388,16},{0.02999999933,392,16},{1.5,420,16},},{{8,20,16},},4,"Fxs",false)end function a4()Fxs({{0.4999999702,0,16},{0.70710676908,-16,16},{1,-8,16},{8,4,16},},{{0.02999999933,4,16},},4,"Fxs",false)end function m3()Fxs({{120,0,16},{0.20000000298,-124,16},{2,16,16},{0.10000000149,20,16},},{{12,16,16},},32,"Fxs",false)end function m2() Fxs({{15,0,16},{0.05000000075,40,16},{0.60000002384,44,16},},{{9,40,16},},32,"Fxs",false)end function a3()Fxs({{0.00100000005,0,16},{0.02999999933,4,16},{60,8,16},{0.69999998808,12,16},{1.79999995232,16,16},{0.25999999046,20,16},{0.89999997616,28,16},},{{0,24,16},},4,"Fxs",false)end  function c() Fxs({{0.13333334029,0,16},{1,-84,16},{1,-56,16},{1,-52,16},{1,-48,16},{1,-44,16},{1,-28,16},{1,-12,16},{0.17254902422,4,16},{0.21176470816,8,16},{1,12,16},{0.13725490868,16,16},{0.12156862766,20,16},{0.1254902035,24,16},{1,28,16},},{{10,-52,16},},16,"Fxs",true)end function g()Fxs({{2.5,0,16},{13,8,16},{5,12,16},{9,16,16},{30,28,16},{0.15000000596,32,16},{30,52,16},{0.40000000596,56,16},},{{50,16,16},},32,"Fxs",false)end function a7()Fxs({{2.5,0,16},{13,8,16},{5,12,16},{50,16,16},{30,28,16},{0.15000000596,32,16},{30,52,16},{0.40000000596,56,16},},{{9,16,16},},32,"Fxs",false)end function j()gg.clearList()end function a5()Fxs({{0.4999999702,0,16},{0.70710676908,-16,16},{12,8,16},},{{0.69999998808,8,16},},4,"Fxs",false)end function f() Fxs({{500,0,16},{30,44,16},{1,52,16},{1,56,16},},{{9,52,16},{9,56,16},},32,"Fxs",false)end function a6()Fxs({{500,0,16},{30,44,16},{9,52,16},{9,56,16},},{{1,52,16},{1,56,16},},32,"Fxs",false) end
function h1()
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 0.23746789992, ["type"] = 16},
{["lv"] = 0.47786918283, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.46596103907, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 56, ["type"] = 16},
{["lv"] = 0.02999999933, ["offset"] = 60, ["type"] = 16},
{["lv"] = -1000, ["offset"] = 72, ["type"] = 16},
}
qmxg = {
{["value"] = 9, ["offset"] = 0, ["type"] = 16},
{["value"] = 9, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 0.25559699535, ["type"] = 16},
{["lv"] = 0.67317795753, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.32884740829, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 56, ["type"] = 16},
{["lv"] = -1000, ["offset"] = 72, ["type"] = 16},
{["lv"] = 500, ["offset"] = 76, ["type"] = 16},
}
qmxg = {
{["value"] = 9, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function m1()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 0.04500000179, ["type"] = 16},
{["lv"] = 0.33333334327, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.20000004768, ["offset"] = -8, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end


function e()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 20.84847450256, ["type"] = 16},
{["lv"] = 0.05630725622, ["offset"] = 12, ["type"] = 16},
{["lv"] = 5.3583817482, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 12, ["offset"] = 16, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end
function a2()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 0.04500000179, ["type"] = 16},
{["lv"] = 0.33333334327, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.20000004768, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = -8, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end







function h()
Fxs({{1200,0,16},{120,8,16},{0.80000001192,24,16},{0.10000000149,28,16},},{{32,24,16},},32,"Fxs",false)
end









function l()
menu1 = gg.multiChoice({
'恢复变大',
'恢复加速',
'恢复穿墙',
'恢复飞天',
'恢复爬墙',
'恢复透视',
'恢复马速',
'测试功能',
'返回上一页'},
nil,'恢复你不想玩的功能')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then Main() end
end GLWW=-1 end function Exit() print("")os.exit()end cs = ""while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults()if XGCK == 1 then Main()end end