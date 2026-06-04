function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else return false end else return false end end
function Main0()
SN = gg.choice({
	 "透视区",
	 "上色区",
	 "退出脚本",
}, nil, "")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main1()
end
if SN==3 then
	 HS8()
end
FX1=0
end

function Main2()
SN = gg.choice({
	 "普通2f透视",
	 "冻结透视",
}, nil, "")
if SN==1 then
	 HS3()
end
if SN==2 then
	 HS4()
end
FX1=0
end

function HS3()
     while true do
gg.sleep(500)
gg.setRanges(1)
local dataType = 16
local tb1 = {{2.0, 0}, {3.1389085600875902E-43, -28}, {3.1529215447308384E-43, -4}, {2.0, 4}, {3.1669345293740866E-43, 20}, {-1.0, 24}, {-1.0, 28}, {-1.0, 32}, {3.208973483303831E-43, 92}, {2.942726775082116E-44, 96}, }
local tb2 = {{120, 0}, }
SearchWrite(tb1, tb2, dataType)
if gg.isVisible(true) then --判断是否点开修改器
break end --如果点开，则停止循环
end end

function HS4()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("2;2;2;-1;-1;-1::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
	 gg.toast("冻结间隔改0")
	 gg.clearResults()
end

function Main1()
SN = gg.choice({
	 "ch白色",
	 "v内存绿色",
	 "v内存紫色",
}, nil, "")
if SN==1 then
	 HS5()
end
if SN==2 then
	 HS6()
end
if SN==3 then
	 HS7()
end
FX1=0
end

function HS5()
while true do
gg.sleep(500)
	 	 gg.setRanges(1)
local dataType = 16
local tb1 = {{1.0, 0}, {6.866362475191604E-44, -4}, {7.006492321624085E-44, 20}, {0.017999999225139618, 24}, }
local tb2 = {{180, 0}, }
SearchWrite(tb1, tb2, dataType)
if gg.isVisible(true) then --判断是否点开修改器
break end --如果点开，则停止循环
end end

function HS6()
while true do
gg.sleep(500)
	 	 gg.setRanges(1048576)
local dataType = 4
local tb1 = {{1, 0}, {-2134900736, -12}, {0, 12}, {195, 24}, }
local tb2 = {{5, 0}, }
SearchWrite(tb1, tb2, dataType)
if gg.isVisible(true) then --判断是否点开修改器
break end --如果点开，则停止循环
end end

function HS7()
while true do
gg.sleep(500)
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{1, 0}, {-2134900736, -12}, {0, 12}, {195, 24}, }
local tb2 = {{15, 0}, }
SearchWrite(tb1, tb2, dataType)
if gg.isVisible(true) then --判断是否点开修改器
break end --如果点开，则停止循环
end end

function HS8()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end