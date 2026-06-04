Memory_offset=function(Search,Write,nc,Type,name) gg.clearResults() gg.setRanges(nc) gg.setVisible(false) lx=Search[1][2] gg.searchNumber(Search[1][1], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("搜索到"..count.."条数据") for i, v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp = {} local num = Search[k][1] if Search[k][3]~= nil then lx=Search[k][3] else lx=Type end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k][2] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w[3] ~= nil then lx = w[3] else lx=Type end t[#t+1] = {} t[#t].address = data[i] + w[2] t[#t].flags = lx if (w[1]~=nil) and (w[1]~=false) then t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) else gg.setValues(t) end end end end gg.loadResults(t) gg.toast(name.."成功，共修改了"..#t.."个数值") else gg.toast(name.."开启失败") end else gg.toast(name.."搜索失败") end gg.clearResults() end
function Main()
local SN = gg.multiChoice({
  "地图透视",
  "实体透视",
  "关闭透视",
  "退出脚本"
 }, nil, "每局打完关透视，不然下局卡死闪退")
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
   Exit()
  end
end
  XGCK = -1
end



function a()
Memory_offset({{26.0,16},{2.802596928649634E-45,-36,16},{3.5873240686715317E-43,-32,16},{32.5,4,16},},{{1,-60,16,true},{1,244,16,true},},4,16,"地图透视")
end



function b()
Memory_offset({{1032402764,4},{1056964608,-92,4},{-1,-84,4},{-1,-80,4},},{{0,-88,4,true},},32,4,"实体透视")
end



function c()
gg.clearList()
gg.toast("清除冻结数据成功")
end


function Exit()
os.exit()
end



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









