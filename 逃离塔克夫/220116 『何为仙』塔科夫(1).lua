function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
gg.toast(Name.."共搜索到"..#data.."个数据")
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
gg.toast(Name.."开启成功,共修改"..#t.."条数据")
else
gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了")
return false
end
else
gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了")
return false
end
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
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("很抱歉未找到游戏机制开启失败")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function encodes(code)
  return (code:gsub("..", function(h)
    return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256)
  end
  ))
end

gg.toast("Loading...")
do
  do
    for _FORV_3_ = 1, 2000 do
      load("local results = gg.getFile(5000)")()
    end
  end
end
gg.setRanges(16420)
local results = gg.getFile()
local results = gg.getResults(5000)
gg.setValues(results)
local results = gg.getFile()
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
else
return false
end
else
return false
end
end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
function Main()
  menu = gg.choice({
    "✨️透视✨️功能✨️",
    "✨范围✨功能✨️",
    "✨变态✨功能✨️",
    "✨️坠入✨️凡尘✨️️"
  }, nil, os.date "当前时间:%Y年%m月%d日 %H时 %M分 %S秒 %p")
  if menu == 1 then
    A()
  end
  if menu == 2 then
    B()
  end
  if menu == 3 then
    C()
  end
  if menu == 4 then
    Exit()
  end
  XGCK = -1
end
function A()
  menu1 = gg.multiChoice({
    "✨️435透视✨️",
    "✨️625透视✨️",
    "✨️659透视✨️",
    "✨️660透视✨️",
    "✨️820透视✨️",
    "✨835透视✨️",
    "✨️845透视(绿)✨️",
    "✨️845透视(白)✨️",
    "✨️855透视✨️",
    "✨️855透视(绿)✨️",
    "✨️855plus透视(绿)✨️",
    "✨️865透视✨️",
    "💕返回主业💕",
  }, nil, "众神『何为仙』")
  if menu1 == nil then
  else
    if menu1[1] == true then
      a1()
    end
    if menu1[2] == true then
      a2()
    end
    if menu1[3] == true then
      a3()
    end
    if menu1[4] == true then
      a4()
    end
    if menu1[5] == true then
      a5()
    end
    if menu1[6] == true then
      a6()
    end
    if menu1[7] == true then
      a7()
    end
    if menu1[8] == true then
      a8()
    end
    if menu1[9] == true then
      a9()
    end
    if menu1[10] == true then
      a10()
    end
    if menu1[11] == true then
      a11()
    end
    if menu1[12] == true then
      a12()
    end
    if menu1[13] == true then
      HOME()
    end
  end
  GLWW = -1
end

function B()
  menu1 = gg.multiChoice({
  "全身大范围",
  "头部范围",
  "身体范围",
  "联合范围",
  "返回上一页"},
nil,"🍡联合范围就是头+身体 看个人喜好一局一开🍡")
    if menu1 == nil then
    else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      b3()
    end
    if menu1[4] == true then
      b4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

state={} state.a="[开启]" state.b="[开启]" state.c="[开启]"
function C()
  menu1 = gg.multiChoice({
    "😂人物穿墙『单局』"..state.a,  
    "😃范围拾取『单局』"..state.b,  
    "🌝仙人模式『单局』"..state.c,  
    "😁遁地跑路『开启』",
    "😄遁地跑路『恢复』",
    "🤔全枪午后『全局』",
    "😆人物加速『全局』",
    "返回上一页"
  }, nil, "何为仙亲测🍡🍡一局一开,午后全局有效")
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      c3()
    end
    if menu1[4] == true then
      c4()
    end
    if menu1[5] == true then
      c5()
    end
    if menu1[6] == true then
      c6()
    end
    if menu1[7] == true then
      c7()
    end
    if menu1[8] == true then
      HOME()
    end
  end
  GLWW = -1
end


function a1()--435透视
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function a2()--625透视
 gg.setRanges(1048576)
  gg.searchNumber("3.7529575e-40;1.4571822e-40;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("2")
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end


function a3()--659透视
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1654D;1655D;1655D;2;-1.0;1.0:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("118", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("118.1", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("118.2", gg.TYPE_FLOAT)
gg.toast("659透视开启成功")
end



function a4()--660透视
gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1.9163737e-40F;1.4571822e-40F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("马赛克％50")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2.2687022e-42F;3.7615819e-37F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("透明化")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("绿色")
	 gg.clearResults()
end


function a5()--820透视
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.26870221e-42;1.39125368e-19;1.66289773e-19;1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视1成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.45718225e-40F;4.7223693e21F;-4.67159277e-40F;4.79615571e21F;3.76158192e-37F;2.0F::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视2成功")
end


function a6()--835透视
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end


function a7()--845绿色
   gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("5.3905149e-41;4.75926e21;-4.2038954e-45;5.0359623e21;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-4.2038954e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移马赛克")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2.2970084e-41;6.50000286102;-2.0283851e-39;4.7788715e21;7.9691844e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.0283851e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移透明化")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("绿色")
	 gg.clearResults()
  end



function a8()--845白色
   gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("5.3905149e-41;4.75926e21;-4.2038954e-45;5.0359623e21;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-4.2038954e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移马赛克")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2.2970084e-41;6.50000286102;-2.0283851e-39;4.7788715e21;7.9691844e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.0283851e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移透明化")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("272,957,451;1,080,033,293;8,207;1,194,328,072;2,053", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8207", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_DWORD)
	 gg.toast("白色")
	 gg.clearResults()
  end



function a9()--855透视
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.40129846e-45;1.25784419e-19:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("118",gg.TYPE_FLOAT)
gg.toast("神奇的马赛克")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12867231e-19;1.96181785e-44;2.0:2549", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("118",gg.TYPE_FLOAT)
gg.toast("偷窥功能已开启")
end


function a10()--855透色
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("绿色")
end



function a11()--855plus透色
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("绿色")
end



function a12()--865透视
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.56918523e-39;4.75926898e21;4.75925997e21;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("第一步成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12050248e-19;1.39125304e-19;1.39125485e-19;1.66236988e-19;1.66236872e-19;3.76158192e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end


function b1()
qmnb = {
{["memory"] = 4},
{["name"] = "大范围"},
{["value"] = 0.18, ["type"] = 16},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0.98, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b2()
local tou={0.96}
qmnb = {
	 {["memory"] = 4},
{["name"] = "头部范围"},
{["value"] = 0.14, ["type"] = 16},
{["lv"] = 62, ["offset"] = -1, ["type"] = 1},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end


function b3()
qmnb = {
	 {["memory"] = 4},
{["name"] = "身体范围"},
{["value"] = 0.08, ["type"] = 16},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end


function b4()
local tou={0.96}
qmnb = {
	 {["memory"] = 4},
{["name"] = "头部范围"},
{["value"] = 0.14, ["type"] = 16},
{["lv"] = 62, ["offset"] = -1, ["type"] = 1},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
	 {["memory"] = 4},
{["name"] = "身体范围"},
{["value"] = 0.08, ["type"] = 16},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c1()
  if state.a=="[开启]" then
qmnb = {
{["memory"] = 4},
{["name"] = "开启穿墙"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.8888888955116272, ["offset"] = 188, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 228, ["type"] = 16},
{["lv"] = 0.25, ["offset"] = 232, ["type"] = 16},
{["lv"] = 0.8999999761581421, ["offset"] = 236, ["type"] = 16},
}
qmxg = {
{["value"] = -0.005, ["offset"] = 220, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  state.a="[恢复]"
  elseif state.a=="[恢复]" then
qmnb = {
{["memory"] = 4},
{["name"] = "脱离穿墙"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.8888888955116272, ["offset"] = 188, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 228, ["type"] = 16},
{["lv"] = 0.25, ["offset"] = 232, ["type"] = 16},
{["lv"] = 0.8999999761581421, ["offset"] = 236, ["type"] = 16},
}
qmxg = {
{["value"] = 0.4, ["offset"] = 220, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  state.a="[开启]"
  end
end

function c2()
  if state.b=="[开启]" then
qmnb = {
{["memory"] = 4},
{["name"] = "范围拾取"},
{["value"] = 3.783505853677006E-43, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 8, ["type"] = 64},
{["lv"] = 2.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 6.58, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  state.b="[恢复]"
  elseif state.b=="[恢复]" then
qmnb = {
{["memory"] = 4},
{["name"] = "范围拾取"},
{["value"] = 3.783505853677006E-43, ["type"] = 16},
{["lv"] = 6.579999923706055, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  state.b="[开启]"
  end
end

function c3()
  if state.c=="[开启]" then
 qmnb = {
{["memory"] = 4},
{["name"] = "开启爬墙"},
{["value"] = 0.62160998583, ["type"] = 16},
{["lv"] = 0.70710682869, ["offset"] = -20, ["type"] = 16},
{["lv"] = 0.70710682869, ["offset"] = -16, ["type"] = 16},
{["lv"] = 1, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] = 8,  ["type"] = 16},
}
xqmnb(qmnb)
c3()
gg.clearResults()
  state.c="[恢复]"
  elseif state.c=="[恢复]" then
 qmnb = {
{["memory"] = 4},
{["name"] = "关闭爬墙"},
{["value"] = 0.62160998583, ["type"] = 16},
{["lv"] = 0.70710682869, ["offset"] = -20, ["type"] = 16},
{["lv"] = 0.70710682869, ["offset"] = -16, ["type"] = 16},
{["lv"] = 1, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
  state.c="[开启]"
  end
end

function c4()
qmnb = {
{["memory"] = 4},
{["name"] = "遁地"},
{["value"] = 3.207297995686531E-4, ["type"] = 64},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.0078125, ["offset"] = 12, ["type"] = 64},
{["lv"] = 1.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.1875975178554654E-4, ["offset"] = 20, ["type"] = 64},
{["lv"] = 0.6216099858283997, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 28, ["type"] = 16},
{["lv"] = 0.0078125, ["offset"] = 44, ["type"] = 64},
{["lv"] = 1.0, ["offset"] = 48, ["type"] = 16},
}
qmxg = {
{["value"] = 8, ["offset"] = 16, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end

function c5()
qmnb = {
{["memory"] = 4},
{["name"] = "恢复"},
{["value"] = 3.207297995686531E-4, ["type"] = 64},
{["lv"] = 131072.0, ["offset"] = 12, ["type"] = 64},
}
qmxg = {
{["value"] = 1, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function c6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2D;700E;4.18359375;10E;1D", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.18359375", 16, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 9999999
      }
    })
  end
  gg.toast("枪械午后开启成功")
  gg.clearResults()
end


function c7()
qmnb = {
{["memory"] = 4},
{["name"] = "加速"},
{["value"] = 2.390625, ["type"] = 16},
{["lv"] = 1.75, ["offset"] = -120, ["type"] = 16},
{["lv"] = 1.875, ["offset"] = -48, ["type"] = 16},
{["lv"] = 2.3125, ["offset"] = -24, ["type"] = 16},
}

qmxg = {
{["value"] = 1.90625, ["offset"] = -48, ["type"] = 16},
}
xqmnb(qmnb)
end


function HOME()
lw=1
Main()
end
function Exit()
print("✨《何为仙》制作✨")
print"☆★☆★☆★☆★"
print"背起了行囊，离开家的那一刻"
print"我知道现实生活，有太多特别的特"
print"假如你看到了我，也不要太过冷漠"
print"我多愁善感，但也热情奔放洒脱"
print"★☆★☆★☆★☆"
os.exit()
end


cs = '何为仙制作'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end