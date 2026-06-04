----权御制作



function SearchWrite(Search, Write, Type)
gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type)
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
     gg.toast(" \n写入成功……搜索到"..#data.."条数据…\n                              \nsvip-@SVIP\n")

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
    gg.toast(" \n写入失败 \n                              \nsvip-@SVIP\n", false)
           return false
           end
           else
    gg.toast(" \n写入失败 \n                              \nsvip-@SVIP \n", false)
           return false
           end
           end


function index()
svip1 = gg.multiChoice({
  "实体透视   OK",
  "画质护眼   OK",  
  "除草除树   OK",  
"EXiT"
}, nil, "\n                    \n\n                 权御™➖➖™                 \n")
  if svip1 == nil then  else
  if svip1[1] == true then GG1() end
  if svip1[2] == true then GG2() end
  if svip1[3] == true then GG3() end
  if svip1[4] == true then Exit()  end end 
XGCK = -1 
  end
function GG1()
gg.setRanges(4)
   local dataType =4
    local tb1 = {{65792,0},
    {15,480},}
    local tb2 = {{5,480,},} 
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
   local dataType =4
    local tb1 = {{65792,0},
    {15,480},}
    local tb2 = {{5,480,},} 
SearchWrite(tb1, tb2, dataType)
end
function GG2()
gg.setRanges(4)
   local dataType =4
    local tb1 = {{1134886912,0},
    {1133903872,4},
    {1065353216,16},
    {1065353216,8},
    {1134886912,-8},
    {1134886912,-4},}    
    local tb2 = {{2,24,},} 
SearchWrite(tb1, tb2, dataType)
end

function GG3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,776,830,360;953,267,991::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("953,267,991", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1,101,004,800", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("除草开启成功www.kjdao.cc")
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0;0.80000001192;0.15915493667;0.5:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除树开启成功：www.kjdao.cc")
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
    index()
  end
  end
