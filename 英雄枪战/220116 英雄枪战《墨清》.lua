gg.clearResults()  sj={}  xgz={} gg.toast("墨清yyds")  function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("搜索到 "..sl.." 个结果")  gg.clearResults()  else  gg.toast("未搜索到结果")  end  else  gg.toast("无搜索值类型")  end  else  gg.toast("无需搜索值")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("无数据")  end  end  --!!!以上为偏移配置 不懂勿动!!!

function Main()
xz=gg.choice({'高跳',
'子弹穿墙',
'踏空',
'加速',
'X轴强锁',
'艾伦子弹秒杀',
'退出'},nil,'全功能秒开\n4399版本，后续更新\n该脚本8月20日正式关闭 因为游戏八月二十日关服\n秒杀自己修复\nBY.墨清')
if xz==nil then else
if xz==1 then gn1() end
if xz==2 then gn2() end
if xz==3 then gn3() end
if xz==4 then gn4() end
if xz==5 then gn5() end
if xz==6 then gn6() end
if xz==7 then gn7() end
end end
function gn1()
search(1.6139999628067017,16,32)
py1(1.6139999628067017,16,0)
py1(2.4000000953674316,16,12)
py1(1.7000000476837158,16,36)
xg1(50,16,400,false)
end


function gn2()
search(8192,4,32)
py1(9,4,-124)
py1(28,4,-96)
py1(4,4,-32)
py1(23,4,-24)
xg1(0,4,20,false)
end


function gn3()
search(-0.15000000596046448,16,32)
py1(2.0,16,-344)
py1(1.5414283107572988E-44,16,-224)
py1(3.5032461608120427E-44,16,-172)
py1(8.407790785948902E-44,16,-20)
py1(0.0010000000474974513,16,-12)
xg1(9,16,48,false)
end


function gn4()
search(4.129000186920166,16,32)
py1(3.0,16,-60)
py1(1.6139999628067017,16,-8)
py1(5.465064010866787E-44,16,12)
py1(0.10000000149011612,16,296)
py1(2.0,16,300)
xg1(30,16,288,false)
end


function gn5()
search(0.15000000596046448,16,32)
py1(18.0,16,-408)
py1(0.009999999776482582,16,-404)
py1(15.0,16,-400)
py1(1.2611686178923354E-44,16,-236)
py1(2.382207389352189E-44,16,-200)
xg1(99999,16,-388,false)
end


function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;1001;22F;9F::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.setValues({[1]={address = jz[i].address+88,flags = gg.TYPE_DWORD,value = "30"}})
gg.toast("秒杀开启成功")
	 gg.clearResults()
end
end


function gn7()
os.exit(print('BY.清'))
end

while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
Main()
end end