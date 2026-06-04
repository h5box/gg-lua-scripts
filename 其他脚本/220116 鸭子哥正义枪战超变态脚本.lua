
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end

function Main()
  SN =gg.multiChoice({
  "隐身[全局]",
  "小刀范围[全局]",
  "高跳[全局]",
  "爬墙",
  "贴墙透视[全局]",
  "一枪一个[全局]",
  "范围追踪",
  "飞天",
  "移速[全局]",
  "无限手榴弹",
  "改枪",
   "退出脚本"
 },nil, "")
  if SN == nil then
  else
  if SN[1] == true then
    aaa()
  end
  if SN[2] == true then
   bbb()
  end
  if SN[3] == true then
   ccc()
  end
  if SN[4] == true then
   ddd()
  end
  if SN[5] == true then
   eee()
  end
  if SN[6] == true then
   fff()
  end
  if SN[7] == true then
   ggg()
  end
  if SN[8] == true then
   h()
  end  
  if SN[9] == true then
   y()
  end  
  if SN[10] == true then                    
  p()
end
  if SN[11] == true then                    
  AAA()
end
   
  
    
      
          
if SN[12] == true then
   Exit()
  end
end
  XGCK = -1
end


function aaa()
ss = gg.prompt({"输入你想要数默认:"},{[1]="-999"})
if  ss== nil then
gg.toast("你还没输入数值")

else
M=ss[1] * 01-1+1
gg.setRanges(4)
local dataType = 16
local tb1 = {{9.999999747378752E-5, 0}, {9.999999747378752E-5, 16},{1.0, 32}, {9.999999747378752E-5, 40}, }
local tb2 = {{M, 24}, }
SearchWrite(tb1, tb2, dataType)
end
end


function bbb()
gg.setRanges(4)
local dataType = 16
local tb1 = {{1.399999976158142, 0}, {0.0010000000474974513, -8}, {0.10000000149011612, 8}, }
local tb2 = {{10, -8}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.0010000000474974513, 0}, {1.401298464324817E-45, 32}, }
local tb2 = {{100, 0}, }
SearchWrite(tb1, tb2, dataType)
end


function ccc()
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.0010000000474974513, 0}, {0.30000001192092896, 8}, {0.5199999809265137, 16}, {0.10000000149011612, 24}, }
local tb2 = {{1, 24}, }
SearchWrite(tb1, tb2, dataType)
end



function ddd()
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.4000000059604645, 0},{0.10000000149011612, 4}, }
local tb2 = {{5, 4}, }
SearchWrite(tb1, tb2, dataType)
end



function eee()
ss = gg.prompt({"输入你想要数默认:"},{[1]="1.5"})
if  ss== nil then
gg.toast("你还没输入数值")

else
M=ss[1] * 01-1+1
gg.setRanges(4)
local dataType = 16
local tb1 = {{5.0, 0}, {60.0, 4},{1000.0, 12}, }
local tb2 = {{M, 8}, }
SearchWrite(tb1, tb2, dataType)
end
end


function fff()
ss = gg.prompt({"输入你想要数默认:"},{[1]="5"})
if  ss== nil then
gg.toast("你还没输入数值")

else
M=ss[1] * 01-1+1

gg.toast("设定为:"..ss[1].."")
gg.setRanges(4)
local dataType = 16
local tb1 = {{150000.0, 0}, {150000.0, 16}, }
local tb2 = {{M, 24}, }
SearchWrite(tb1, tb2, dataType)
end
end


function ggg()
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.5, 0}, {0.15000000596046448, 4}, }
local tb2 = {{100000, 8}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.30000001192092896, 0},{0.4000000059604645, 4}, {0.5, 8}, }
local tb2 = {{111111, 4}, {111111, 8}, }
SearchWrite(tb1, tb2, dataType)
end


function h()
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.10000000149011612, 0}, {1.401298464324817E-45, -12}, {0.4000000059604645, -4}, }
local tb2 = {{30, -4}, }
SearchWrite(tb1, tb2, dataType)
end



function y()
ss = gg.prompt({"输入你想要数默认:"},{[1]="0.1"})
if  ss== nil then
gg.toast("你还没输入数值")

else
M=ss[1] * 01-1+1
gg.setRanges(4)
local dataType = 16
local tb1 = {{9.999999747378752E-5, 0},{9.999999747378752E-5, 40}, }
local tb2 = {{M, 16}, }
SearchWrite(tb1, tb2, dataType)
end
end

function p()
ss = gg.prompt({"输入你想要数默认:"},{[1]="88888888"})
if  ss== nil then
gg.toast("你还没输入数值")

else
M=ss[1] * 01-1+1
gg.setRanges(32)
local dataType = 4
local tb1 = {{900, 0}, {200, 4}, {7000, 8}, {2500, 12}, {1500, 16}, }
local tb2 = {{M, 24}, }
SearchWrite(tb1, tb2, dataType)
end
end


function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end
function  AAA()

  SN =gg.multiChoice({  
  "MP5[改]",
  "手枪[改]",
  "小刀[改]",
  "手榴弹[改]",
  "M4A1[改]",
  "",
  "M4A1[恢复]",
  "返回",
 },nil, "")
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
   Main()
  end
end
  XGCK = -1
end



function a()
gg.setRanges(32)
gg.searchNumber('10201011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('10,309,701', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
end

function b()
gg.setRanges(32)
gg.searchNumber('10,101,011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('10,309,781', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
end

function c()
gg.setRanges(32)
gg.searchNumber('20101011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('20,119,011', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
end

function d()
gg.setRanges(32)
gg.searchNumber('30101011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('30,101,311', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
end

function e()
gg.setRanges(32)
gg.searchNumber('1,030,291;10302011::', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10302011', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('10,309,911', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
end

function f()

end
function g()
gg.setRanges(32)
gg.searchNumber('1,030,291;10,309,911::', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10,309,911', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('10302011', gg.TYPE_DWORD)
gg.toast('修改成功')
gg.clearResults()
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









