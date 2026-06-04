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
           gg.toast("搜索η"..#data.."条ΔΘ")
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
          
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
gg.alert("影天")
function Main()
  SN = gg.multiChoice({
  "影天物品透视",
  "影天车辆白上色",
  "影天无后聚点防抖",
  "影天大红上色",
  "影天马赛克",
  "影天透视功能",
  "退出修仙脚本"
 }, nil, "影天专用")
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
   Exit()
  end
end
  XGCK = -1
end



function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "影天物品透视"},
{["value"] = 2, ["type"] = 16},
{["lv"] = 0, ["offset"] = -60, ["type"] = 16},
{["lv"] = 0, ["offset"] = -56, ["type"] = 16},
{["lv"] = 0, ["offset"] = 56, ["type"] = 16},
{["lv"] = 0, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function b()
qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆白上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 463542205, ["offset"] = -60, ["type"] = 4},
{["lv"] = 7619, ["offset"] = -56, ["type"] = 4},
{["lv"] = 7943, ["offset"] = 56, ["type"] = 4},
{["lv"] = 491723124, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function c()
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "全局防抖"},
    {["value"] = -6.154945350000412E27, ["type"] = 16},
    {["lv"] = -2.656333398413989E21, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -1.114450155758339E28, ["offset"] = 12, ["type"] = 16},
    {["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 12, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "全局聚点"},
    {["value"] = -1.2382423887994e+28, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.4239332766331e+28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.1144501557583e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.8331474059342e+27, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
  }
  qmxg = { {["value"] = 90, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, }
  xqmnb(qmnb)
  gg.toast("开启成功")
end



function d()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色红"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1661206541, ["offset"] = -60, ["type"] = 4},
{["lv"] = 202, ["offset"] = -56, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 536887296, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function e()

end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.7615819e-37;2.0;0.24022650719;0.69314718246", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(11)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视成功")
end



function Exit()
print("谢谢使用")
os.exit()
end
cs = "这里可以改成你的QQ"



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









