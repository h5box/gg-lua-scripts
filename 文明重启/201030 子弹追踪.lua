function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end  for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1]              for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags  end           tmp = gg.getValues(tmp)           for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end   for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]                  if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end                end end gg.setValues(t) else gg.toast("开启成功", false) return false end else gg.toast("开启成功") return false end end
function Main()
  SN = gg.multiChoice({
    "子弹追踪",
    "退出脚本"
  }, nil, "")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
    Exit()
  end
end
  XGCK = -1
end



function a()
gg.setRanges(4)
    SearchWrite({{3.6013371e-43, 0},{0.00999999978, -4}}, {{200,8,true}},
    gg.REGION_C_BSS, (""))
    a()
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


