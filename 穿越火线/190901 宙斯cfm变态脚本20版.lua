function Main()
gg.setRanges(gg.REGION_C_ALLOC)
local t = gg.multiChoice({
"双模透视(单局)",
"大厅范围(全局)",
"进局范围(单局)",
"身体自瞄(全局)",
"枪械无后坐力(全局)",
"开启快刀(全局)",
"关闭快刀(全局)",
"人物加速(单局)",
"人物高挑(单局)",
"人物踏空(单局)",
"退出脚本"
}, nil, '注：范围先开大厅后开进局         宙斯cfm唠嗑群:701750916')
if t == nil then else
if t[1] then a() end
if t[2] then b() end
if t[3] then c() end
if t[4] then d() end
if t[5] then e() end
if t[6] then f() end
if t[7] then g() end
if t[8] then l() end
if t[9] then i() end
if t[10] then p() end
if t[11] then Exit() end
end
XGCK = -1
end

function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local count = gg.getResultCount()
local result = gg.getResults(count)
gg.clearResults()
local data = {}
local base = Search[1][2]
if (count > 0) then
for i, v in ipairs(result) do
v.isUseful = true
end
for k=2, #Search do
local tmp = {}
local offset = Search[k][2] - base
local num = Search[k][1]
for i, v in ipairs(result) do
tmp[#tmp+1] = {}
tmp[#tmp].address = v.address + offset
tmp[#tmp].flags = v.flags
end
tmp = gg.getValues(tmp)
for i, v in ipairs(tmp) do
if ( tostring(v.value) ~= tostring(num) ) then
result[i].isUseful = false
end
end
end
for i, v in ipairs(result) do
if (v.isUseful) then
data[#data+1] = v.address
end
end
if (#data > 0) then
gg.toast("搜索到"..#data.."条数据")
local t = {}
local base = Search[1][2]
for i=1, #data do
for k, w in ipairs(Write) do
offset = w[2] - base
t[#t+1] = {}
t[#t].address = data[i] + offset
t[#t].flags = Type
t[#t].value = w[1]
if (w[3] == true) then
local item = {}
item[#item+1] = t[#t]
item[#item].freeze = true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.toast("已修改"..#t.."条数据")
gg.addListItems(t)
else
gg.toast("not found", false)
return false
end
else
gg.toast("Not Found")
return false
end
end

function a()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_DWORD
local tb1 = {{2048, 0}, {1008981770, 40},{1148846080, 44},}
local tb2 = {{108800, 0},} 
SearchWrite(tb1, tb2, dataType)
end

function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;1;160D;0.0001",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("Ca范围开启成功，大厅开一次即可")
end

function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.05;45;0.9;0.2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("Ca范围开启成功，一局一次")
end

function d()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
end

function e()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{1000, 0}, {1, 8}, {1000, 16}, {1, 24}}
local tb2 = {{0, 24}}
SearchWrite(tb1, tb2, dataType)
end

function f()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.5, 0}, {1, 8}, {1000, 16}}
local tb2 = {{3.4e38, 8}}
SearchWrite(tb1, tb2, dataType)
end

function g()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;3.4e38;1000::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.4e38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("快刀关闭成功")
end

function l()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("4.68580007553;0.60000002384;2.79999995232;10::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.processResume()
  gg.searchNumber("2.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("大佬加速开启成功")
  os.exit()
end

function i()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("2倍高跳开启成功")
end

function p()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("-0.03999999911;0.079999999821;0.5;0.30000001192;1.4012985E-45:40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("踏空开启成功")
end

function Exit()
os.exit()
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end
