Qr_HyWzhXug='Main'
gg.clearResults() sj={} xgz={} gg.toast("千然偏移v1.2") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
function Main()
xz=gg.choice({'人物',
'改物','退出'},nil,'选择列表')
if xz==nil then else
if xz==1 then ym1() end
if xz==2 then ym3() end
if xz==3 then os.exit(print('www.kjdao.net'))
end
end end
function ym1()
xz=gg.multiChoice({'人物疾跑','人物万防','矿物透视','水上行走','人物秒挖',},nil,'点击空白处取消')
if xz==nil then else
if xz[1]==true then gn1() end
if xz[2]==true then gn2() end
if xz[3]==true then gn3() end
if xz[4]==true then gn4() end
if xz[5]==true then gn5() end
 end end

function gn1()
search(8.407790785948902E-44,16,32)
py1(1.401298464324817E-45,16,-12)
py1(1.401298464324817E-43,16,60)
py1(1.401298464324817E-43,16,64)
py1(1.401298464324817E-43,16,68)
xg1(4,16,368,true)
end


function gn2()
search(1053609165,4,32)
py1(16843008,4,-572)
py1(16843009,4,-568)
py1(16843009,4,-564)
xg1(9999,4,-388,true)
end


function gn3()
search(1045220557,4,32)
py1(4,4,-132)
py1(1065353216,4,-128)
py1(1065353216,4,-124)
xg1(256,4,256,true)
end


function gn4()
search(1053609165,4,32)
py1(1065353216,4,-80)
py1(1065353216,4,-72)
py1(1065353216,4,-68)
py1(1065353216,4,-64)
xg1(256,4,316,true)
end


function gn5()
search(10.010000228881836,16,32)
xg1(0,16,-76,true)
end
function ym3()
SN = gg.choice({
	 "万能泥土改防具",
	 "万能泥土改翅膀",
	 "万能泥土改武器",
}, nil, "")
if SN==1 then
	 Main43()
end
if SN==2 then
	 Main33()
end
if SN==3 then
	 Main14()
end
FX1=0
end

function Main43()
SN = gg.choice({
	 "泥土改海龟头盔",
	 "泥土改海龟盔甲",
	 "泥土改海龟护腿",
	 "泥土改星尘头盔",
	 "泥土改星尘盔甲",
	 "泥土改星尘护腿",
	 "泥土改耀斑头盔",
	 "泥土改耀斑盔甲",
	 "泥土改耀斑护腿",
}, nil, "一改一退")
if SN==1 then
	 HS44()
end
if SN==2 then
	 HS45()
end
if SN==3 then
	 HS46()
end
if SN==4 then
	 HS47()
end
if SN==5 then
	 HS48()
end
if SN==6 then
	 HS49()
end
if SN==7 then
	 HS50()
end
if SN==8 then
	 HS51()
end
if SN==9 then
	 HS52()
end
FX1=0
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1316", gg.TYPE_DWORD)
	 gg.toast("常规")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1317", gg.TYPE_DWORD)
	 gg.toast("常规")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1318", gg.TYPE_DWORD)
	 gg.toast("常规")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3381", gg.TYPE_DWORD)
	 gg.toast("搞定了")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3382", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3383", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2763", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2764", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2765", gg.TYPE_DWORD)
	 gg.toast("搞定了")
	 gg.clearResults()
end

function Main33()
SN = gg.choice({
	 "泥土改星尘之翼",
	 "泥土改喷气背包",
	 "泥土改鸟妖之翼",
	 "泥土改日耀之翼",
	 "泥土改圣女之翼",
	 "泥土改恶魔之翼",
}, nil, "一改一退")
if SN==1 then
	 HS34()
end
if SN==2 then
	 HS35()
end
if SN==3 then
	 HS36()
end
if SN==4 then
	 HS37()
end
if SN==5 then
	 HS38()
end
if SN==6 then
	 HS39()
end
FX1=0
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3471", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("748", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("785", gg.TYPE_DWORD)
	 gg.toast("搞定了")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3468", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4823", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("492", gg.TYPE_DWORD)
	 gg.toast("直接搞定")
	 gg.clearResults()
end

function Main14()
SN = gg.choice({
	 "泥土改天顶剑",
	 "泥土改泰拉刃",
	 "泥土改激光钻头",
	 "泥土改南瓜剑",
	 "泥土改吸血鬼刃",
	 "泥土改耀斑锤斧",
	 "泥土改星尘之龙法杖",
	 "泥土改幻影弓",
	 "泥土改海啸",
}, nil, "一改一退")
if SN==1 then
	 HS20()
end
if SN==2 then
	 HS21()
end
if SN==3 then
	 HS53()
end
if SN==4 then
	 HS22()
end
if SN==5 then
	 HS23()
end
if SN==6 then
	 HS54()
end
if SN==7 then
	 HS24()
end
if SN==8 then
	 HS25()
end
if SN==9 then
	 HS26()
end
FX1=0
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4956", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("757", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2798", gg.TYPE_DWORD)
	 gg.toast("搞定了")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1826", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1569", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3522", gg.TYPE_DWORD)
	 gg.toast("搞定了")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3531", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3450", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-65,536;2;65,536;15;10;999;1;2;1;::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2624", gg.TYPE_DWORD)
	 gg.toast("搞定")
	 gg.clearResults()
end
function ym4()
	 os.exit()
end
while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
_G[Qr_HyWzhXug]()
end end