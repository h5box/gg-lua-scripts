-- By 浮卡
-- QQ 2391336350
-- 交流群 679468689


--[[
使用教程
需要对比的数据地址保存到列表
支持重启游戏对比数据
]]--


function Main()
local menu = gg.choice({
"对比工具",
"退出脚本"
}, nil, "欢迎使用")
if menu == nil then
else
if menu == 1 then a()
end
if menu == 2 then os.exit()
end
end
XGCK = -1
end


function readValue(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t = gg.getValues(t)
return t[1].value
end


function readContent(content, left , right)
local data = {}
string.gsub(content, left .. "(.-)" .. right, function(w)
data[#data+1] = w
end)
return data
end


function a()
local data = gg.getListItems()
if data[1] == nil then
gg.alert("获取数据失败，数据需要保存到列表。")
os.exit()
end
local item = {}
for i, v in ipairs(data) do
item[#item+1] = "地址  " .. string.format("%X", v.address)
end
local result = gg.choice(item, nil, "选择地址")
if result == nil then
gg.alert("点击了取消")
os.exit()
end
local addr
local type
local offset = 5000
local path = "/sdcard/"
for i = 1, result do
if result == i then
addr = string.format("%X", data[i].address)
type = data[i].flags
end
end
local rame = gg.prompt({
"数据地址",
"最大偏移",
"Hex",
"生成路径",
"√选数据1, 不√选数据2",
"√选对比数据",
}, {addr, offset, true, path, true, false}, {"text", "text", "checkbox", "text", "checkbox", "checkbox"})
if rame == nil then
gg.alert("点击了取消")
os.exit()
end
addr = tonumber("0x" .. rame[1])
if rame[3] == true then
offset = tonumber("0x" .. rame[2]) / 4
else
offset = tonumber(rame[2]) / 4
end
path = rame[4]
local filename
if rame[5] == true then
filename = "数据1.txt"
else
filename = "数据2.txt"
end
local str = ""
for i = -offset, offset do
local add = addr + i * 4
local off = i * 4
local min = ""
if off < 0 then
min = string.format("-0x%X", -off)
end
local zero = ""
if off == 0 then
zero = off
end
local max = ""
if off > 0 then
max = string.format("0x%X", off)
end
str = str .. "数值：" .. readValue(add, type) .. ",  偏移：" .. min .. zero .. max .. ",\n"
end
io.open(path .. filename, "w"):write(str):close()
gg.toast("输出数据开启成功")
if rame[6] == true then
b(path)
end
end


function b(path)
local r_1 = io.open(path .. "数据1.txt", "r"):read("*a")
local r_2 = io.open(path .. "数据2.txt", "r"):read("*a")
local data_11 = readContent(r_1, "数值：", ",")
local data_12 = readContent(r_1, "偏移：", ",")
local data_21 = readContent(r_2, "数值：", ",")
local data_22 = readContent(r_2, "偏移：", ",")
path = path .. "结果.txt"
local rame = gg.prompt({
"生成路径",
"√选过滤0",
}, {path, true}, {"text", "checkbox"})
if rame == nil then
gg.alert("点击了取消")
os.exit()
end
local str = ""
for i = 1, #data_11 do
if rame[2] == true then
if data_11[i] ~= "0" then
if data_11[i] ~= "0.0" then --过滤F类型0浮点数
if data_11[i] == data_21[i] then
str = str .. "数值：" .. data_11[i] .. ",  偏移：" .. data_12[i] .. ",\n"
end
end
end
else
if data_11[i] == data_21[i] then
str = str .. "数值：" .. data_11[i] .. ",  偏移：" .. data_12[i] .. ",\n"
end
end
end
io.open(rame[1], "w"):write(str):close()
gg.toast("结果路径：" .. rame[1])
print("结果路径：" .. rame[1])
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