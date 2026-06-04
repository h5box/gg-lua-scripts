local time=os.clock()
function Ys(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n🚬"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到❌",false) return false end else gg.toast("❌搜索不到❌") return false end end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function YS()
menu = gg.choice({
'🌷  高度修改  🌷',
'🌷  无线瞬移  🌷',
'🌷  超级攻速  🌷',
'🌷  人物移速  🌷',
'🌷无线体力(伪)🌷',
'💨退出脚本💨'},
666,os.date("沐雪"))
if menu == nil then else
if menu == 1 then GDXG() end
if menu == 2 then wxsy() end
if menu == 3 then cjgs() end
if menu == 4 then rwjs() end
if menu == 5 then wxtl() end
if menu == 6 then
print("/沐雪/")
print("脚本已运行："..os.clock()-time.."秒\n")
os.exit()
end--退出
end
BYYS=-1
end

function GDXG()
YSGDXG=gg.prompt({'-15000一般都是遁地/n-9000差不多是陆地'},{[1]='0'},{[1]='number'})
if YSGDXG == nil or YSGDXG[1] == '' then gg.toast("❌秒杀已取消❌")
else
Name = "改坐标成功"
local Nc = 32
local Lx = 4
local Sz = {{false,1117978624, 0,4,nil,nil}, {1065353216, 28,4}, {1065353216, 32,4}, {1065353216, 36,4}, {256, 56,4}, {2, 80,4}, {4, 100,4}}
local Xg = {{YSGDXG[1], 200,16}}
Ys(Sz,Xg,Lx,Nc,Name)
end end


function wxsy()
Name = "无线瞬移"
local Nc = 32
local Lx = 16
local Sz = {{false,4, 0,16,nil,nil}, {3, -4,4}, {3, 4,4}}
local Xg = {{9999999, 4,4,true}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function cjgs()
Name = "超级攻速"
local Nc = 32
local Lx = 4
local Sz = {{false,17408, 0,4,nil,nil}, {-1, 4,4}, {65536, 12,4}, {2, 16,4}, {1065353216, 20,4}, {1120403456, 24,4}, {1036831949, 28,4}, {953267991, 32,4}}
local Xg = {{99, -8,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end









----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速
function rwjs()
menu = gg.choice({
'★   人物加速2  ★',
'★   人物加速5  ★',
'★  人物加速10  ★',
'★  人物加速20  ★',
'★  人物加速50  ★',
'★ 人物加速100  ★',
'★人物加速回恢复★',
'☆退出脚本☆'},
666,os.date("沐雪"))
if menu == nil then else
if menu == 1 then rwjs2() end
if menu == 2 then rwjs5() end
if menu == 3 then rwjs10() end
if menu == 4 then rwjs20() end
if menu == 5 then rwjs50() end
if menu == 6 then rwjs100() end
if menu == 7 then rwjs1() end
if menu == 8 then YS() end
end
BYYS=-1
end


function rwjs2()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{2, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs5()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{5, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs10()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{10, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs20()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{20, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs50()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{50, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs100()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{100, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


function rwjs1()
Name = "人物加速"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{1, -132,16}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end
----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速
----------------------------------------------------------------------------------------人物移速







function wxtl()
Name = "无线体力"
local Nc = 32
local Lx = 16
local Sz = {{false,600, 0,16,nil,nil}, {1106247680, 8,4}, {1142292480, 4,4}, {1120403456, -4,4}}
local Xg = {{17400, -116,16,true}}
Ys(Sz,Xg,Lx,Nc,Name)
YS()
end


while(true)do if gg.isVisible(true) then BYYS=1 gg.setVisible(false) end gg.clearResults() if BYYS==1 then YS() end end