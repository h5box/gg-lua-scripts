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
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end



function Main()
  SN = gg.multiChoice({
    "偏移透视",
    "8201绿色",
    "8200绿色",
    "〖8200♚8201黄色〗",  
    "〖8200♚8201红色〗",   
    "〖8200♚8201深红〗",
    "8201蓝色", 
    "〖8200♚8201粉色〗",
    "退出脚本"
  }, nil, "小呆瓜原创\n骁龙660处理器\n透色")
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
gg.toast("小呆瓜原创：偏移透视\n \n \n 正在开启中！")
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5691104e-40, 0}, {0, 8}, {0, 16}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.577313e-39, 0}, {1.1350518e-43, 8}, {1.3912523e-19, 28}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(16384)--防闪1
local dataType = 16
local tb1 = {{-1.8388534e28, 0}, {-2.8352937e28, 8}, {-1.8983354e28, 12}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(16384)--防闪2
local dataType = 16
local tb1 = {{1.1202011e-19, 0}, {4.3817192e-35, 8}, {997.06982421875, 16}, }
local tb2 = {{9999, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function b()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8201, 0}, {8200, -8}, {0, 8}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("8201绿色成功")
end




function c()
qmnb = {
{["memory"] = 1048576},
{["name"] = "8200绿色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},
{["value"] = 7, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function d()
qmnb = {
{["memory"] = 1048576},
{["name"] = "黄色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},
{["value"] = 7, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function e()
qmnb = {
{["memory"] = 1048576},
{["name"] = "红色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},
{["value"] = 8200, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function f()
qmnb = {
{["memory"] = 1048576},
{["name"] = "深红"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 0, ["type"] = 4},
{["value"] = 8200, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function g()
qmnb = {
{["memory"] = 1048576},
{["name"] = "8201蓝色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 8200, ["offset"] = 0, ["type"] = 4},
{["value"] = 6, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function h()
qmnb = {
{["memory"] = 1048576},
{["name"] = "粉色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},
{["value"] = 6, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function Exit()
   print("欢迎下次使用！")
  os.exit()
end



cs = "小呆瓜原创"
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
