function CSM(C,S,M)if M~=nil then if C==nil then gg.toast(M..'失败\n原因：无主特征码')elseif C==false then gg.toast(M..'失败\n原因：无副特征码')else local x,d={},{}for i=1,#C do for k,w in ipairs(S)do local t={}t['address']=C[i]+w[1]*4 t['flags']=w[2]t['value']=w[3]if(w[4]==true)then t['freeze']=true d[#d+1]=t else x[#x+1]=t end end end gg.setValues(x)gg.addListItems(d)gg.toast(M..'\n成功')end elseif S~=nil then gg.clearResults()gg.setRanges(C[1])gg.searchNumber(C[2],C[3],false,gg.SIGN_EQUAL,C[4],C[5],C[6])local SL=gg.getResultCount()local SS=gg.getResults(SL)gg.clearResults()local DZ={}if(SL>0)then for i,v in ipairs(SS)do v.isUseful=true end for k=1,#S do local tmp={}local num=S[k][2]for i,v in ipairs(SS)do tmp[#tmp+1]={}tmp[#tmp].address=v.address+S[k][1]*4 tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp)do if (v.value~=num)then SS[i].isUseful=false end end end for i,v in ipairs(SS)do if(v.isUseful)then DZ[#DZ+1]=v.address end end if DZ[1]==nil then return false else return DZ end else return nil end end end
local function hqsj(dz,sj)local t={}for i,v in ipairs(sj)do t[i]={}t[i].address=dz+sj[i][1]*4 t[i].flags=sj[i][2]end local ss=gg.getValues(t)local s={}for i,v in ipairs(ss)do s[i]=ss[i]['value']end return s end
local function DXWJ(l,m,n)
if m==1 then
local c=io.open(l,'r')
if c==nil then
return c
else
local c=io.open(l,'r')
g=c:read('*a')
c:close()
end
return g
elseif m==2 then
local file=io.open(l,'w')
file:write(n)
file:close()
end
end


function Main0()
SN = gg.choice({
	 "💗千刀重叠💗",
	 "💓伤害躲避💓",
	 "💞弓箭秒蓄💞",
	 "💔怪物自杀💔",
	 "❣️自定移速❣️",
	 --[["💙原地高跳💙",]]--
	 "❤️定住怪物❤️"..x1,
	 "💘退出脚本💘",
}, nil, "")
if SN==1 then
	 Main1()
end

if SN==2 then
	 Main2()
end

if SN==3 then
	 xuli()
end

if SN==4 then
	 zisha()
end

if SN==5 then
	 yisu()
end

if SN==6 then
	 ding()
end

if SN==7 then
	 tuichu()
end

FX1=0
end



function Main1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4076782578", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4076782578", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4076782578}})
	 end
	 gg.toast("千刀可能开启成功")
	 gg.clearResults()
end


function Main2()
local dz=CSM({4,1008981770,4},{{4,1056964608},{8,1059481190},})
CSM(dz,{{8,16,9.5},},"躲避开启")
end

function xuli()
local dz=CSM({32,1036928259,4},{{1,1082977991},})
CSM(dz,{{1,16,160},},"弓箭秒蓄")
end


function zisha()
local zb=CSM({4,1287568416,4,0,-1},{{-17,17170438},{-28,65539},{-44,65543},})
while(true)do
if gg.isVisible(true) then gg.setVisible(false) break else
local dz=CSM({4,1287568416,4,0,-1},{{-17,17170438},})
local xzb={}
for x=1,#dz do
if dz[x]~=zb[1]then
xzb[#xzb+1]=dz[x]
end
end
CSM(xzb,{{-19,16,-999},{21,16,-999},},"怪物自杀")
end
end
end

x1=""

function ding()
local dz=CSM({32,1203982208,4},{{1,5},{5,12},})
local s=hqsj(dz[1],{{9,4},})
if s[1]~="0" then
x1="[状态:开启]"
CSM(dz,{{9,4,0},},"开启定怪")
else
CSM(dz,{{9,4,3},},"关闭定怪")
x1="[状态:关闭]"
end
end


function yisu()
local a=gg.prompt({"1就是正常速度，只限正常移动\n倍数："},{"1"},{number})
if a==nil then gg.toast("您取消了操作")else
local dz=CSM({4,1869410625,4,0,-1},{{-1,-1925294579},{-2,-1533814508},{-3,-243613305},{-4,1748754976},})
CSM(dz,{{4,16,a[1]},},"移速")
end
end


--[[function gaotiao()
local dz=CSM({4,1074181741,4},{{0,1074181741},})
CSM(dz,{{-2,16,16},},"原地高跳")
end
]]--

function tuichu()
print(
"《脚本完全免费/制作者【澪】/制作时间2022/1/24》")
os.exit()
end
cs = " "


while true do
          if gg.isVisible(true) then
            FX1 = nil
            gg.setVisible(false)
          end
          if FX1 == nil then
            Main0()
    end
  end
  
