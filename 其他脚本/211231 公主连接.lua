
--核心配置↓不懂勿改
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
--核心配置↑不懂勿改
function Main()
  SN = gg.multiChoice({
  "人物无敌",
  "璃乃秒杀",
  "姬塔秒杀",
  "莫妮卡秒杀",
  "真琴秒杀",
  "咲恋秒杀",
  "流静秒杀",
  "伊绪秒杀",
  "退出脚本"
 }, nil, "原创小折，需要进图开，一图一改先开无敌再开秒杀，脚本只提供三星人物秒杀，作者会尽快的添加完所有三星人物。")
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
   Exit()
  end
end
  XGCK = -1
end

function a()
Fxs({{12,0,4},
{1,8,16},
{12,72,4},
{2,80,4},
{12,144,4},
{1,148,4},},
{{0.001,8,16},},32,"Fxs",false)

Fxs({{12,0,4},
{1,12,16},
{12,72,4},
{1,80,4},
{12,144,4},
{1,148,4},},
{{0.001,12,16},},32,"Fxs")
end

function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.001;1,059,001D;1,059,002D;1,059,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("璃乃")
end

function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.001;1,057,001D;1,057,002D;1,057,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("姬塔")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.001;1,053,001D;1,053,002D;1,053,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("莫妮卡")
end


function e()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.001;1,043,001D;1,043,002D;1,043,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("真琴")
end


function f()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.001;1,028,001D;1,028,002D;1,028,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("咲恋")
end


function g()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1,049,001D;1,049,002D;1,049,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("流静")
end


function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1,049,001D;1,049,002D;1,049,003D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("流静")
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







