function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end


function SearchWrite(Search, Write, Type,name)
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
           gg.toast((Name or "").."开启成功共修改"..#data.."条数据")
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
            gg.toast((Name or "").."开启失败", false)
            return false
        end
    else
        gg.toast((Name or "").."开启失败")
        return false
    end
end




function Main()
SN = gg.multiChoice({
    "地图加速(大厅)",
    "全局氮气(大厅)",
    "漂移弹射(大厅)",
    "动力加速(大厅)",
    "瞬间刹车(大厅)",
    "轻飘集气(炫装)",
    "轻飘双喷(炫装)",
    "防止锁胎(炫装)",
    "引擎加速(炫装)",
    "无限氮气(炫装)",
    "退出脚本",
 }, nil, "顾忌牛逼")
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
   Exit()
  end
  end
  XGCK = -1
end



function a()
gg.setRanges(16384)
Name = "地图加速"
local dataType = 16
local tb1 = {{1.00390625, 0}, {-1.5474134276579589E26, -4}, }
local tb2 = {{1.25, 0}, }
SearchWrite(tb1, tb2, dataType,name)
end

function b()
gg.setRanges(16384)
Name = "全局氮气"
local dataType = 16
local tb1 = {{-2.794719388039698E28, 0}, {-3.7444097189855772E28, 4}, {-5.108018541693195E27, 8}, }
local tb2 = {{0, 4}, }
SearchWrite(tb1, tb2, dataType)
end

function c()
gg.setRanges(16384)
Name = "漂移弹射"
local dataType = 16
local tb1 = {{-5.753584339071596E27, 0}, {0.2777777910232544, 8}, {1.0, 16}, }
local tb2 = {{0.57, 8}, {4.56, 16}, }
SearchWrite(tb1, tb2, dataType)
end

function d()
gg.setRanges(16384)
Name = "动力加速"
local dataType = 16
local tb1 = {{0.2777777910232544, 0}, {-3.868565389778424E25, -4}, {-1.0, 4}, }
local tb2 = {{0.37, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function e()
gg.setRanges(16384)
Name = "瞬间刹车"
local dataType = 16
local tb1 = {{-6.152607188295581E27, 0}, {-1.300139272704553E28, 4}, }
local tb2 = {{0, 4}, }
SearchWrite(tb1, tb2, dataType)
end

function f()
gg.setRanges(32)
Name = "轻飘集气"
local dataType = 16
local tb1 = {{4.400000095367432, 0}, {0.0, 8}, {0.0, 12}, {0.0, 16}, {0.0, 20}, {3.5873240686715317E-43, 24}, }
local tb2 = {{5, 20}, }
SearchWrite(tb1, tb2, dataType)
end



function g()
gg.setRanges(32)
Name = "轻飘双喷"
local dataType = 16
local tb1 = {{35.0, 0}, {1.399999976158142, -16}, {3.5873240686715317E-43, 40}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
end


function h()
gg.setRanges(32)
Name = "防止锁胎"
local dataType = 16
local tb1 = {{0.4000000059604645, 0}, {0.5, -4}, {8.0, 24}, }
local tb2 = {{0.1, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function i()
gg.setRanges(32)
Name = "引擎加速"
local dataType = 16
local tb1 = {{0.10000000149011612, 0}, {1.0, -16}, {0.5, -12}, {0.30000001192092896, -8}, }
local tb2 = {{1.25, -16}, }
SearchWrite(tb1, tb2, dataType)
end

function j()
gg.setRanges(32)
Name = "无限氮气"
local dataType = 16
local tb1 = {{4.400000095367432, 0}, {0.0, 8}, {0.0, 12}, {0.0, 16}, {0.0, 20}, {3.5873240686715317E-43, 24}, }
local tb2 = {{1, 16}, }
SearchWrite(tb1, tb2, dataType)
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