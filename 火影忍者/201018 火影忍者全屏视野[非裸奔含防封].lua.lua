function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add 
end

function getAdd(so,offset,off1)
add=gg.getRangesList(so)[1].start
add=readAdd(add+offset)
return add
end

function addListltems(address,flags,value,freeze,toast)
t={}
t[1]={}
t[1].address=address
t[1].flags=flags
t[1].value=value
t[1].freeze=freeze
gg.addListItems(t)
gg.toast("<"..toast..">")
end

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." 开启成功")else gg.toast(_on.." 开启失败")end end end


function Main()
SN=gg.multiChoice({"防封第一步<登录界面>","防封第二步<进入站街界面(游戏主界面)>","一键开启全屏","退出"})
if SN==nil then else
if SN[1] then
gg.setRanges(8)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
end
if SN[2] then
add=getAdd(
--[[主体so]]'libtersafe.so',
--[[十六进制偏移]]'0x343FC4')
addListltems(add+356,4,0,true,'防封开启中')
addListltems(add+348,4,0,true,'防封开启中')
addListltems(add+344,4,0,true,'防封开启中')
addListltems(add+332,4,0,true,'防封开启中')
addListltems(add+328,4,0,true,'防封开启中')
addListltems(add+324,4,0,true,'防封开启中')
addListltems(add+320,4,0,true,'防封开启中')
addListltems(add+316,4,0,true,'防封开启中')
addListltems(add+300,4,0,true,'防封开启中')
addListltems(add+296,4,0,true,'防封开启中')
addListltems(add+284,4,0,true,'防封开启中')
addListltems(add+276,4,65536,true,'防封开启中')
addListltems(add+272,4,65537,true,'防封开启中')
addListltems(add+268,4,65536,true,'防封开启中')
addListltems(add+264,4,65537,true,'防封开启中')
addListltems(add+260,4,65536,true,'防封开启中')
addListltems(add+256,4,65537,true,'防封开启中')
addListltems(add+4,4,65538,true,'防封开启中')
addListltems(add+8,4,65538,true,'防封开启中')
addListltems(add+12,4,0,true,'防封成功')
addListltems(add+764,4,0,true,'防封成功')
addListltems(add+360,4,0,true,'防封成功')
end
if SN[3] then
gg.clearResults()

edit({

{8}, 

{"去边框"}, 

{-369098492, gg.TYPE_DWORD}, 

{1056964608, 4, gg.TYPE_DWORD}

},

{

{0, 4, gg.TYPE_FLOAT, false} 

})


gg.clearResults()
 edit({
{gg.REGION_ANONYMOUS}, 
{"视野"}, 
{1078774989, 4}, 
{1055119114, 4, 4},
{1078774989, 12, 4}
},
{
{4.5, 12, gg.TYPE_FLOAT, true} 
})
gg.clearResults()
-- edit({
-- 
-- {8}, 
-- 
-- {"视角居中"}, 
-- 
-- {1098907648, gg.TYPE_DWORD}, 
-- 
-- {1091567616, 4, gg.TYPE_DWORD}
-- 
-- },
-- 
-- {
-- 
-- {0, 8, gg.TYPE_FLOAT, false} 
-- 
-- })
-- 
-- gg.clearResults()
end
if SN[4] then
os.exit()
end

end
XGCK=-1
end

while true do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end

gg.clearResults()
if XGCK==1 then Main()end
end