
local Search_Vodka, Clear_Vodka, Set_Vodka, Edit_Vodka, Memony_Vodka, search_e
Search_Vodka = gg.searchNumber
Clear_Vodka = gg.clearResults
Set_Vodka = gg.setRanges
Memony_Vodka = 262207
Edit_Vodka = gg.editAll
search_e = string.char(0, 0, 0, 0, 0, 0, 0)
s=os.clock()
for i=1,22 do 
    search_e=search_e .. search_e 
end
local fuc=function(x)
    local ta={}
    for i=1,20 do
        ta[#ta+1]=string.char(math.random(127,180))
    end
    ta=table.concat(ta)
    return ta..ta..x..ta..ta
end
gg.setRanges=function(x)
    Memony_Vodka=x
    Set_Vodka(Memony_Vodka)
end
gg.clearResults=function(...)
    Set_Vodka(262144)
    local log1, log2, Ty, xh
    if math.random(1,2)==1 then
        Ty=16
        xh=math.random(2,30)
        hx=math.random(2,30)
    else
        Ty=4
        xh=math.random(3,10)
        hx=math.random(3,10)
    end
    local YtrRx = math.random(1, 2)
    local Seh={}
    for i=1, math.random(1,4) do
        local xc={}
        if YtrRx == 1 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            xc = table.concat(xc)
        end
        if YtrRx == 2 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            xc = "0."..table.concat(xc)
        end
        if YtrRx == 3 then
            for x=1,xh do
                xc[#xc+1]=string.char(math.random(48,57))
            end
            if math.random(0,1)==1 then
                xc = table.concat(xc).."F"
            else
                xc = table.concat(xc).."D"
            end
        end
        Seh[#Seh+1]=xc
    end
    Seh=table.concat(Seh,";")
    if math.random(0,1)==1 then
        Seh=Seh.."::"..math.random(10,300)
    else
        Seh=Seh..":"..math.random(10,300)
    end
    xc={}
    for x=1,hx do
        xc[#xc+1]=string.char(math.random(48,57))
    end
    xc = table.concat(xc)
    gg.getResults(0)
    Edit_Vodka(search_e,4)
    log1, log2 = {}, {}
    for i=1,50 do
        log2[i] = math.random(1,2140000000)
        log1[log2[i]] = {address = i, flags = 4, temp = search_e}
    end
    log1 = gg.getValues(log1)
    Search_Vodka(Seh,Ty,false,gg.SIGN_EQUAL,0, -1)
    Search_Vodka(xc,Ty,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(0)
    Edit_Vodka(search_e,4)
    Search_Vodka(search_e,Ty,false,gg.SIGN_EQUAL,0, -1)
    Set_Vodka(Memony_Vodka)
    Clear_Vodka()
end
gg.searchNumber=function(...)
    local ar={...}
    ar[1]=ar[1]:gsub("%d",function(ss)
        return fuc(ss)
    end)
    Search_Vodka(table.unpack(ar))
    gg.getResults(0)
    Edit_Vodka(search_e,4)
end
gg.editAll=function(...)
    local ar = {...}
    ar[1]=ar[1]:gsub("%d",function(ss)
        return fuc(ss)
    end)
    Edit_Vodka(table.unpack(ar))
end
function search(t,type)
rt={}
gg.setRanges(type)
gg.clearResults()
gg.searchNumber(t[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end
end
::last::
return rt
end
function Main()
  SN = gg.multiChoice({
  "普通写法",
  "特殊写法",
  "退出脚本"
 }, nil, "逸辰测试\n脚本")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   d()
  end
  if SN[3] == true then
   e()
  end
  end
  XGCK = -1
end
function a()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2048",4,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1999999",4)
gg.toast("开启成功")
end
function d()
t=os.clock()
r=search({"1056109299",{"1017159841",4},{"2048",24}},32|4)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+24
tt[ii].flags=4
tt[ii].value=10880
end
gg.setValues(tt)
gg.toast("透视已开启，共修改"..#r.."组数值，耗时"..os.clock()-t.."秒")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
else gg.toast("透视开启失败")
end
end
function e()
print("再见")
os.exit()
end
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