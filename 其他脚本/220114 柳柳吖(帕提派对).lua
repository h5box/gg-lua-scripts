gg.clearResults()  sj={}  xgz={} gg.toast("柳柳吖牛逼")  function search(ss,lx,nc,dz1,dz2)  if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("搜索到 "..sl.." 个结果")  gg.clearResults()  else  gg.toast("未搜索到结果")  end  else  gg.toast("无搜索值类型")  end  else  gg.toast("无需搜索值")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg1(value,lx,py,dj)  if #sj~=nil then  z={}  for i=1,#sj do  z[i]={}  z[i].address=sj[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("无数据")  end  end  --!!!以上为偏移配置 不懂勿动!!!

function Main()
xz=gg.choice({'人物超级飞天',
'人物超级加速',
'人物超级高跳',
'人物加速关',
'人物微飞天',
'人物微加速',
'人物微高跳',
'退出'},nil,'选择功能')
if xz==nil then else
if xz==1 then gn1() end
if xz==2 then gn2() end
if xz==3 then gn3() end
if xz==4 then gn4() end
if xz==5 then gn5() end
if xz==6 then gn6() end
if xz==7 then gn7() end
if xz==8 then gn8() end
end end
function gn1()
search(1.908568508410401E-40,16,32)
py1(2.755162975632239E-40,16,-72)
py1(2.802596928649634E-45,16,-48)
py1(1.908568508410401E-40,16,16)
py1(8.407790785948902E-45,16,24)
py1(0.009999999776482582,16,60)
py1(2.802596928649634E-45,16,72)
xg1(20,16,76,false)
end


function gn2()
search(30.0,16,32)
py1(10.0,16,12)
--py1(1.0,16,-64)
py1(0.10000000149011612,16,32)
xg1(10,16,-64,false)
end

function gn3()
search(10.0,16,32)
py1(0.10000000149011612,16,20)
py1(0.0,16,32)
xg1(5,16,-72,false)
end

function gn4()
search(30.0,16,32)
py1(10.0,16,12)
--py1(1.0,16,-64)
py1(0.10000000149011612,16,32)
xg1(1,16,-64,false)
end

function gn5()
search(1.908568508410401E-40,16,32)
py1(2.755162975632239E-40,16,-72)
py1(2.802596928649634E-45,16,-48)
py1(1.908568508410401E-40,16,16)
py1(8.407790785948902E-45,16,24)
py1(0.009999999776482582,16,60)
py1(2.802596928649634E-45,16,72)
xg1(5,16,76,false)
end

function gn6()
search(30.0,16,32)
py1(10.0,16,12)
--py1(1.0,16,-64)
py1(0.10000000149011612,16,32)
xg1(5,16,-64,false)
end

function gn7()
search(10.0,16,32)
py1(0.10000000149011612,16,20)
py1(0.0,16,32)
xg1(2.5,16,-72,false)
end


function gn8()
os.exit(print('作者柳柳吖,交流群853918893'))
end

while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
Main()
end end