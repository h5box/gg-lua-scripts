----花火开源 QQ2218352955

function CSM(C,S,M)if M~=nil then if C==nil then gg.toast(M..'执行失败\n原因：无主特种码')elseif C==false then gg.toast(M..'执行失败\n原因：无副特征码')else local x,d={},{}for i=1,#C do for k,w in ipairs(S)do local t={}t['address']=C[i]+w[1]*4 t['flags']=w[2]t['value']=w[3]if(w[4]==true)then t['freeze']=true d[#d+1]=t else x[#x+1]=t end end end gg.setValues(x)gg.addListItems(d)gg.toast(M..'\n执行成功')end elseif S~=nil then gg.clearResults()gg.setRanges(C[1])gg.searchNumber(C[2],C[3],false,gg.SIGN_EQUAL,C[4],C[5],C[6])local SL=gg.getResultCount()local SS=gg.getResults(SL)gg.clearResults()local DZ={}if(SL>0)then for i,v in ipairs(SS)do v.isUseful=true end for k=1,#S do local tmp={}local num=S[k][2]for i,v in ipairs(SS)do tmp[#tmp+1]={}tmp[#tmp].address=v.address+S[k][1]*4 tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp)do if (v.value~=num)then SS[i].isUseful=false end end end for i,v in ipairs(SS)do if(v.isUseful)then DZ[#DZ+1]=v.address end end if DZ[1]==nil then return false else return DZ end else return nil end end end
local function hqsj(dz,sj)local t={}for i,v in ipairs(sj)do t[i]={}t[i].address=dz+sj[i][1]*4 t[i].flags=sj[i][2]end local ss=gg.getValues(t)local s={}for i,v in ipairs(ss)do s[i]=ss[i]['value']end return s end

function aycRead(address, flags) return gg.getValues({[1]={address=address,flags=flags}})[1].value end
function aycSet(address,flags,value,freeze) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value tt[1].freeze=freeze if tt[1].freeze==true then gg.addListItems(tt) else gg.setValues(tt) end end


function a1()
gg.clearResults()
local dz=CSM({32,4,4},{{10,1},{16,1},{22,1},{112,4},})
CSM(dz,{{2,4,-1052770304},{8,4,-1052770304},{14,4,1112014848},{20,4,1112014848},},"全屏攻击")
end


function a2()
local so = gg.getRangesList('libil2cpp.so')[1].start
local py = 0x2D14A34      
aycSet(so + py, 4, -382908368, false)
aycSet(so + py + 0x90, 4, -476045306, false)
gg.toast("干员秒杀")
end


function a3()
gg.clearResults()
local dz=CSM({16384,-476049403,4},{{8,-382908368},{9,-494030840},{10,-509591552},{11,-442564452},{12,-527499264},})
CSM(dz,{{8,4,-443547632},{9,4,-481296383},{10,4,-476053504},{11,4,60817409},{12,4,-516948194},},"干员无敌")
end


function a4()
local so = gg.getRangesList('libil2cpp.so')[1].start
local py = 0x1B8D22C   
aycSet(so + py, 4, -476053424, false)
aycSet(so + py + 0x4, 4, -516948194, false)
gg.toast("费用锁定")
end


function a5()
local so = gg.getRangesList('libil2cpp.so')[1].start
local py = 0x1C2130C   
aycSet(so + py, 4, -476053504, false)
aycSet(so + py + 0x4, 4, -516948194, false)
gg.toast("超级攻速")
end


function a6()
local so = gg.getRangesList('libil2cpp.so')[1].start
local py = 0x21623B0   
aycSet(so + py, 4, -476053501, false)
aycSet(so + py + 0x4, 4, -516948194, false)
gg.toast("全图放置")
end


function Main()
local m={
"1.全屏攻击",
"2.干员秒杀",
"3.干员无敌",
"4.费用锁定",
"5.超级攻速",
"6.全屏放置",
"退出脚本"
}local g=gg.multiChoice(m,nil,"全屏攻击登录界面开\n交流群887213408")
if g~=nil then 
if g[#m]==true then os.exit()else 
if g[1]==true then a1()end
if g[2]==true then a2()end
if g[3]==true then a3()end
if g[4]==true then a4()end
if g[5]==true then a5()end
if g[6]==true then a6()end
end
end
kg=-1 
end
while(true)do if gg.isVisible(true)then 
kg=1 gg.setVisible(false)	end if 
kg==1 then 
Main()
end 
end