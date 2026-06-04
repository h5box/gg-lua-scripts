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
gg.alert("二改死妈jj短15厘米")
function Main()
  SN = gg.multiChoice({
  "加速落地",
  "影天一键麒麟通用透视",
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
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "跳伞加速"},
{["value"] = 0.00050000002, ["type"] = gg.TYPE_FLOAT},
{["lv"] =0.00050000002, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] =0.1, ["offset"] =0 , ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.toast("20秒后关闭下降加速")
gg.sleep(20000)
qmnb = {
{["memory"] = 32},
{["name"] = "加速关闭"},
{["value"] = 20000, ["type"] = 16},
{["lv"] = 750, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.0001, ["offset"] = 88, ["type"] = 16},
{["lv"] = 0.10000000149, ["offset"] = 96, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0005, ["offset"] = 96, ["type"] = 16},
}
xqmnb(qmnb)
end



function b()
qmnb = {
{["memory"] = 4},
{["name"] = "麒麟6系列透视"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 268, ["offset"] = 4, ["type"] = 16},
{["lv"] = 268, ["offset"] = 8, ["type"] = 16},
{["lv"] = 480, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 16, ["type"] = 16},
{["lv"] = 480, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.00000011921, ["offset"] = 24, ["type"] = 16},   
{["lv"] = 1.00000011921, ["offset"] = 28, ["type"] = 16},   
{["lv"] = 2.569395e-10, ["offset"] = 64, ["type"] = 16},     
{["lv"] = 0.00008785885, ["offset"] = 68, ["type"] = 16},   
{["lv"] = 0.65723782778, ["offset"] = 72, ["type"] = 16},   
{["lv"] = 14.57730102539, ["offset"] = 76, ["type"] = 16},  
{["lv"] = 0.00041242075, ["offset"] = 80, ["type"] = 16},  
{["lv"] = 0.02505219355, ["offset"] = 84, ["type"] = 16},  
{["lv"] = 0.0000675781, ["offset"] = 88, ["type"] = 16},  
{["lv"] = 0.00782599207, ["offset"] = 92, ["type"] = 16},  
{["lv"] = 0.00782405864, ["offset"] = 96, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 100, ["type"] = 16},  
{["lv"] = 1.3813413e-16, ["offset"] = 112, ["type"] = 16},  
{["lv"] = 2.1466491e-41, ["offset"] = 116, ["type"] = 16},  
{["lv"] = 7.6824924e21, ["offset"] = 128, ["type"] = 16},  
{["lv"] = 0.00783725083, ["offset"] = 132, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 144, ["type"] = 16},  
{["lv"] = 1.7506422e-41, ["offset"] = 148, ["type"] = 16},  
{["lv"] = 0.0078125, ["offset"] = 156, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 160, ["type"] = 16},  
{["lv"] = 1.9202086e-7, ["offset"] = 164, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 168, ["type"] = 16},  
{["lv"] = 1.6606788e-41, ["offset"] = 172, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 200, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
end


     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("720576352751714304", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_QWORD,freeze = true,value = 720576352751714305}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
	 
	 
	 
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("26",gg.TYPE_DWORD)
  gg.toast("红色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("26;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("42",gg.TYPE_DWORD)
  gg.toast("红色开启成功")
  
  
    gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("防闪开启成功")
  gg.clearResults()



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
cs = "二改死妈"



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









