gg.clearResults()
j={}
xgz={}
gg.toast('By：龙哥')
ZY = 'Main1'
function split(szFullString, szSeparator)   local nFindStartIndex = 1   local nSplitIndex = 1   local nSplitArray = {}   while true do   local nFindLastIndex = string.find  (szFullString, szSeparator, nFindStartIndex)   if not nFindLastIndex then   nSplitArray[nSplitIndex] =   string.sub(szFullString, nFindStartIndex, string.len  (szFullString))   break end   nSplitArray[nSplitIndex] = string.sub  (szFullString, nFindStartIndex, nFindLastIndex - 1)   nFindStartIndex = nFindLastIndex + string.len  (szSeparator)   nSplitIndex = nSplitIndex + 1 end return   nSplitArray end   function xgxc(szpy, qmxg)   for x = 1, #(qmxg) do   xgpy = szpy + qmxg[x]["offset"]   xglx = qmxg[x]["type"]   xgsz = qmxg[x]["value"]   xgdj = qmxg[x]["freeze"]   if xgdj == nil or xgdj == "" then   gg.setValues({[1]   = {address = xgpy, flags = xglx, value = xgsz}})   else   gg.addListItems({[1]   = {address = xgpy, flags = xglx,   freeze = xgdj, value = xgsz}}) end   xgsl = xgsl + 1 xgjg = true end end   function xqmnb(qmnb)   gg.clearResults()   gg.setRanges(qmnb[1]["memory"])   gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else           sl = gg.getResults(999999)   sz = gg.getResultCount()           xgsl = 0 if sz > 999999 then   sz = 999999 end for i = 1, sz do   pdsz = true for v = 4, #(qmnb) do if   pdsz == true then   pysz = {} pysz[1]   = {} pysz[1].address   = sl[i].address + qmnb[v]["offset"] pysz[1].flags   = qmnb[v]["type"]   szpy = gg.getValues(pysz)   pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd   = split(pdpd, ";") tzszpd   = szpd[1] pyszpd = szpd[2]   if tzszpd == pyszpd then   pdjg = true pdsz = true else   pdjg = false pdsz = false end end end if   pdjg == true then szpy   = sl[i].address xgxc(szpy, qmxg) end end   if xgjg == true then   gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")   else   gg.toast(qmnb[2]["name"] .. "开启失败")   end   end   end   end 

function readValue(address, flags) return gg.getValues({{address = address, flags = flags}})[1]["value"]end
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("搜索到 "..sl.." 个结果")  gg.clearResults()  else  gg.toast("未搜索到结果")  end  else  gg.toast("无搜索值类型")  end  else  gg.toast("无需搜索值")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end
function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx if value == nil then value = readValue(z[i].address, lx) end z[i].value= value z[i].freeze = dj and true or false end if dj == true or dj == false then gg.addListItems(z) else gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end
function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("无数据")  end  end  

function readValue(address, flags) return gg.getValues({{address = address, flags = flags}})[1]["value"]end
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then  if nc==nil then nc=32 end  gg.setRanges(nc)  if dz1==nil then dz1="-1" end  if dz2==nil then dz1="0" end  gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2)  sl=gg.getResultCount()  if sl~=0 then  sj=gg.getResults(sl)  gg.toast("搜索到 "..sl.." 个结果")  gg.clearResults()  else  gg.toast("未搜索到结果")  end  else  gg.toast("无搜索值类型")  end  else  gg.toast("无需搜索值")  end  end  function py1(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value==value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function py2(value,lx,py)  if #sj~=nil then  z1={} z2={}  for i=1,#sj do  z1[1]={}  z1[1].address=sj[i].address+py  z1[1].flags=lx  z1=gg.getValues(z1)  if z1[1].value~=value then  z2[#z2+1]={}  z2[#z2]=sj[i]  end end  sj=z2  z1={} z2={}  gg.toast("共偏移 "..#sj.." 个数据")  else  gg.toast("没有搜索数据")  end  end
function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx if value == nil then value = readValue(z[i].address, lx) end z[i].value= value z[i].freeze = dj and true or false end if dj == true or dj == false then gg.addListItems(z) else gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end
function xg2(bz,value,lx,py,dj)  if #bz~=nil then  z={}  for i=1,#bz do  z[i]={}  z[i].address=bz[i].address+py  z[i].flags=lx  z[i].value=value  if dj==true then z[i].freeze=true end  end  if dj==true then  gg.addListItems(z)  else  gg.clearList()  gg.setValues(z)  end  gg.toast("共修改 "..#z.." 个数据")  else  gg.toast("没有搜索数据")  end  end  function bc(bz)  if sj~=nil then  _ENV[bz]=sj  else  gg.toast("无数据")  end  end  

function Main1()
ZY = 'Main1'
lq=gg.choice({
'午后',
'范围加伤',
'范围',
'强锁',
'爬墙',
'恢复',
},nil,'')
if lq==nil then else
if lq==1 then fss1() end
if lq==2 then fss2() end
if lq==3 then fss3() end
if lq==4 then fss4() end
if lq==5 then fss5() end
if lq==6 then fss6() end
if lq==7 then fss7() end
end end

function fss1()

qmnb = {
{["memory"] = 32},
{["name"] = "m4无后"},
{["value"] = 0.14, ["type"] = 64},
{["lv"] = 3.3, ["offset"] = 8, ["type"] = 64},
{["lv"] = 2.2, ["offset"] = 32, ["type"] = 64},
{["lv"] = .15, ["offset"] = 48, ["type"] = 64},
}
qmxg = {
{["value"] = 0, ["offset"] = 56, ["type"] = 64,},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 32},
{["name"] = "ak无后"},
{["value"] = 0.09, ["type"] = 64},
{["lv"] = 1.2, ["offset"] = 24, ["type"] = 64},
{["lv"] = 2.25, ["offset"] = 32, ["type"] = 64},
{["lv"] = 0.6, ["offset"] = 48, ["type"] = 64},
{["lv"] = 0.7, ["offset"] = 80, ["type"] = 64},
}
qmxg = {
{["value"] = 0, ["offset"] = 88, ["type"] = 64,},
{["value"] = 0, ["offset"] = 19, ["type"] = 64,},
}
xqmnb(qmnb)







end

function fss2()
search(-1,64,32)
py1(0,64,-4)
py1(0,64,-8)
py1(0,64,-12)
py1(0,64,-16)
py1(0,64,-20)
py1(0,64,-24)
py1(1,64,32)
py1(1,64,40)
py1(1,64,48)
py1(0,64,84)
py1(0,64,92)
py1(1,64,264)
xg1(180,64,264)
gg.toast('范围伤害')
end

function fss3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(".2;1::9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(".2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("4", gg.TYPE_DOUBLE)
gg.toast("范围开启成功")

end


function fss4()
qmnb = {
{["memory"] = 32},
{["name"] = "强锁"},
{["value"] = 0.42, ["type"] = 64},
{["lv"] = 1.2, ["offset"] = -16, ["type"] = 64},
{["lv"] = 1.3, ["offset"] = 48, ["type"] = 64},
}
qmxg = {
{["value"] = 1.4, ["offset"] = -816, ["type"] = 64,},--静步加速
{["value"] = 18, ["offset"] = -248, ["type"] = 64,},--蹲下上帝视角
{["value"] = .5, ["offset"] = -32, ["type"] = 64,},--自瞄
{["value"] = 99, ["offset"] = 16, ["type"] = 64,},--防拉视角
{["value"] = 99, ["offset"] = 32, ["type"] = 64,},
{["value"] = .875 , ["offset"] = 64, ["type"] = 64,},--
}
xqmnb(qmnb)
end

function fss5()
qmnb = {
{["memory"] = 32},
{["name"] = "爬墙"},
{["value"] = -10, ["type"] = 64},
{["lv"] = 0.74, ["offset"] = 120, ["type"] = 64},
}
qmxg = {
{["value"] = 1.5, ["offset"] = 232, ["type"] = 64,},
}
xqmnb(qmnb)
end

function fss6()
qmnb = {
{["memory"] = 32},
{["name"] = "爬墙恢复"},
{["value"] = -10, ["type"] = 64},
{["lv"] = 0.74, ["offset"] = 120, ["type"] = 64},
}
qmxg = {
{["value"] = 0.08, ["offset"] = 232, ["type"] = 64,},
}
xqmnb(qmnb)
end

function TC()
gg.clearList()
os.exit(print('感谢使用！'))
end

while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
_ENV[ZY]()
end end

------["freeze"] = true},冻结
------["freeze"] = false},恢复冻结
--gg.toast("")
--gg.alert("")

--函数
  --gg.setRanges(gg.REGION_类型)
  --绿色中的内存 [指游戏整体]
  --gg.setRanges(gg.REGION_ANONYMOUS) --A内存
  --gg.setRanges(gg.REGION_PPSSPP) --PS内存
  --gg.setRanges(gg.REGION_C_BSS) --Cb内存
  --gg.setRanges(gg.REGION_C_DATA) --Cd内存
  --gg.setRanges(gg.REGION_C_ALLOC) --Ca内存
  --gg.setRanges(gg.REGION_J_HEAP) --JH内存
  --黄色中的内存 [指游戏潜体]
  --gg.setRanges(gg.REGION_JAVA) --J内存
  --gg.setRanges(gg.REGION_STACK) --S内存
  --gg.setRanges(gg.REGION_ASHMEM) --As内存
  --gg.setRanges(gg.REGION_OTHER) --O内存
  --红色中的内存 [指游戏图像及构图]
  --gg.setRanges(gg.REGION_BAD) --B内存
  --其他内存 [指游戏静态库]
  --gg.setRanges(gg.REGION_CODE_APP) --xa内存
  --gg.setRanges(gg.REGION_CODE_SYSTEM) --xs内存

  ---gg.TYPE_FLOAT 指红色F类型
  --gg.TYPE_DWORD 指蓝色D类型
  --gg.TYPE_DOUBLE 指黄色E类型
  --gg.TYPE_AUTO 指白色全部类型

  --番外
  
  --gg.TYPE_WORD 指W类型
  --gg.TYPE_BYTE 指B类型
  --gg.TYPE_QWORD 指Q类型
  --gg.TYPE_XOR 指X类型

--------内存范围---------↓↓↓
	--['REGION_ANONYMOUS'] = 32,
	--['REGION_ASHMEM'] = 524288,
	--['REGION_BAD'] = 131072,
	--['REGION_CODE_APP'] = 16384,
	--['REGION_CODE_SYS'] = 32768,
	--['REGION_C_ALLOC'] = 4,
	--['REGION_C_BSS'] = 16,
	--['REGION_C_DATA'] = 8,
	--['REGION_C_HEAP'] = 1,
	--['REGION_JAVA'] = 65536,
	--['REGION_JAVA_HEAP'] = 2,
	--['REGION_OTHER'] = -2080896,
	--['REGION_PPSSPP'] = 262144,
	--['REGION_STACK'] = 64,
	--['REGION_VIDEO'] = 1048576,

--------数据类型---------↓↓↓
	--['TYPE_AUTO'] = 127,
	--['TYPE_BYTE'] = 1,
	--['TYPE_DOUBLE'] = 64,
	--['TYPE_DWORD'] = 4,
	--['TYPE_FLOAT'] = 16,
	--['TYPE_QWORD'] = 32,
	--['TYPE_WORD'] = 2,
	--['TYPE_XOR'] = 8,