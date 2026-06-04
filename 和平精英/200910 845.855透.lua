function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function readValue(addr,type) local t = {}  t[1] = {}  t[1].address = tonumber(addr)  t[1].flags = type t = gg.getValues(t) return tostring(t[1].value) end
wxg="        ❌"
yxg="        ⭕️"
First="                  ‼️"  --可以自定义.此为最优先数据显示的图标
Second="                  ❗"--此为第二优先数据显示的图标
Third="                  ❓"  --此为第三优先数据显示的图标
--------------------↓↓配置区↓↓--------------------
mskq={
ncfw=gg.REGION_VIDEO,
ssz="-1.83687808e-40;6.75000047684",sslx=gg.TYPE_FLOAT,
gsz="-1.83687808e-40",gslx=16 ,  --改善类型:.4是DWORD  16是FLOAT
xgz="5444",
}

tmq={
ncfw=gg.REGION_VIDEO,
ssz="2.38773271e-39;-2.76109047e-39",sslx=gg.TYPE_FLOAT,
gsz="-2.76109047e-39",gslx=16,
xgz="5444",
}

--------------------↑↑配置区↑↑--------------------


function Main()
Le = gg.choice({
     "透视初始化",
     "马赛克窗口",
	 "透明窗口",
	 "上色区",
	 "防闪",
	 "记录",
	 "退出脚本",
}, nil, "反馈QQ3312552076")
if Le==1 then csh() end
if Le==2 then mskck() end
if Le==3 then tmck() end
if Le==4 then shangsequ() end
if Le==5 then fangshan1() end
if Le==6 then jl() end
if Le==7 then os.exit() end
 XGCK = -1
end

function csh()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber(mskq.ssz,mskq.sslx)
gg.refineNumber(mskq.gsz,mskq.gslx)
local ab=gg.getResultCount()
if ab==0 then gg.toast("马赛克捕获失败！") else
  ad=gg.getResults(ab)
  mskyz=readValue(ad[1].address,mskq.gslx)
  gg.toast("马赛克捕获"..#ad.."个数据")
  ae={}
  for i=1,#ad do
    ae[i]=string.format("%#x",ad[i].address)..wxg
  end
  f=io.open("/storage/emulated/0/Le马赛克.txt","r") -----------读取记录文本,按位置出现次数排序
if f==nil then io.open("/storage/emulated/0/Le马赛克.txt","w"):close() 
  else str=f:read("*a") Lemsk={}
    for i=1,30 do
      Lemsk[i]=0
      for kk in string.gmatch(str, "第"..i.."个值") do
      Lemsk[i]=Lemsk[i]+1
      end
    end
    max1=0
  for i=1,30 do
    if Lemsk[i]>=max1 then
      max1=i
    end
  end
  max2=0
  for i=1,30 do
    if Lemsk[i]>=max2 and i~=max1 then
      max2=i
    end
  end
  max3=0
  for i=1,30 do
    if Lemsk[i]>=max3 and i~=max1 and i~=max2 then
      max3=i
    end
  end
 if max1<=#ad then
  ae[max1]=string.format("%#x",ad[max1].address)..wxg..First  
  if max2<=#ad then
   ae[max2]=string.format("%#x",ad[max2].address)..wxg..Second   
   if max3<=#ad then
	ae[max3]=string.format("%#x",ad[max3].address)..wxg..Third   
   end 
  end else
  if max2<=#ad then
       ae[max2]=string.format("%#x",ad[max2].address)..wxg..First 
       if max3<=#ad then
        ae[max3]=string.format("%#x",ad[max3].address)..wxg..Second
       end else 
      ae[max3]=string.format("%#x",ad[max3].address)..wxg..First 
  end
 end
end
ae[#ad+1]="透明窗口"
ae[#ad+2]="返回主页面"
Letable1=ae 
end
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber(tmq.ssz,tmq.sslx)
gg.refineNumber(tmq.gsz, tmq.gslx)
local ac=gg.getResultCount()
if ac==0 then gg.toast("透明捕获失败！") else
    af=gg.getResults(ac)
    tmyz=readValue(af[1].address,tmq.gslx)
  gg.toast("透明捕获"..#af.."个数据")
  ag={}
    for i=1,#af do
	  ag[i]=string.format("%#x",af[i].address)..wxg
	end
	f=io.open("/storage/emulated/0/Le透明.txt","r")
  if f==nil then io.open("/storage/emulated/0/Le透明.txt","w"):close() else 
      str=f:read("*a")
      Letm={}
      for i=1,30 do
        Letm[i]=0
        for kk in string.gmatch(str, "第"..i.."个值") do
          Letm[i]=Letm[i]+1
        end
      end
      max1=0
      for i=1,30 do
        if Letm[i]>=max1 then
        max1=i
        end
      end
      max2=0
        for i=1,30 do
          if Letm[i]>=max2 and i~=max1 then
            max2=i
          end
        end
      max3=0
      for i=1,30 do
        if Letm[i]>=max3 and i~=max1 and i~=max2 then
          max3=i
        end
      end
      if max1<=#af then
       ag[max1]=string.format("%#x",af[max1].address)..wxg..First     
         if max2<=#af then
           ag[max2]=string.format("%#x",af[max2].address)..wxg..Second   
             if max3<=#af then
	           ag[max3]=string.format("%#x",af[max3].address)..wxg..Third 
	         end 
	     end
      else 
	    if max2<=#af then
         ag[max2]=string.format("%#x",af[max2].address)..wxg..First    
           if max3<=#af then
	         ag[max3]=string.format("%#x",af[max3].address)..wxg..Second    
	       end 
	    else ag[max3]=string.format("%#x",af[max3].address)..wxg..First  
        end
      end
   end
	 ag[#af+1]="马赛克窗口"
	 ag[#af+2]="返回主页面"
	 Letable2=ag
	 gg.sleep(500)
	 mskck()
  end 
end


------------------------马赛克------------------------
------------------------↓↓↓------------------------
function mskck()
Le1 = gg.choice(Letable1, nil, "马赛克")
if Le1==nil then else XGCK=-1
if Le1<#ad+1 then Ss=Le1 mskxg()  end 
if Le1==#ad+1 then tmck() end  
if Le1==#ad+2 then Main() end end
XGCK=-1 end
function mskxg()
if string.find(Letable1[Ss],wxg)~=nil then
Letable1[Ss]=string.gsub(Letable1[Ss],wxg,yxg)
gg.setValues({[Ss] = {address = ad[Ss].address, flags = mskq.sslx,value = mskq.xgz}})
gg.toast("马赛克修改成功！")
gg.sleep(500)
mskck()
else Letable1[Ss]=string.gsub(Letable1[Ss],yxg,wxg)
gg.setValues({[Ss] = {address = ad[Ss].address, flags = mskq.sslx,value = mskyz}})
gg.toast("马赛克还原成功！")
gg.sleep(500)
mskck()
end 
end 

------------------------马赛克------------------------
------------------------↑↑↑------------------------


------------------------透明------------------------
------------------------↓↓↓------------------------
function tmck()
Le2 = gg.choice(Letable2, nil, "透明")
if Le2==nil then else XGCK=-1
if Le2<#af+1 then Sd=Le2 tmxg() end
if Le2==#af+1 then mskck() end  
if Le2==#af+2 then Main() end end
XGCK=-1 end
function tmxg()
if string.find(Letable2[Sd],wxg)~=nil then
Letable2[Sd]=string.gsub(Letable2[Sd],wxg,yxg)
gg.setValues({[Sd] = {address = af[Sd].address, flags = tmq.sslx,value = tmq.xgz}})
gg.toast("透明修改成功！")
gg.sleep(500)
tmck()
else Letable2[Sd]=string.gsub(Letable2[Sd],yxg,wxg)
gg.setValues({[Sd] = {address = af[Sd].address, flags = tmq.sslx,value = tmyz}})
gg.toast("透明还原成功！")
gg.sleep(500)
tmck()
end 
end
------------------------透明------------------------
------------------------↑↑↑------------------------


function shangsequ()
            SN1 = gg.choice({
            "绿色",
            "功能",
            "功能",           
            "功能",
            "功能",
            "功能",
            "功能",
            "功能",
            }, nil, "3312552076")
            if SN1 == nil then else
            if SN1 == 1 then a() end
            if SN1 == 2 then b() end
            if SN1 == 3 then c() end
            if SN1 == 4 then d() end
            if SN1 == 5 then e() end
            if SN1 == 6 then f() end
            if SN1 == 7 then g() end
            if SN1 == 8 then h() end
            end XGCK = -1 end
function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色"},
{["value"] = 738344979, ["type"] = 4},
{["lv"] = 1074267174, ["offset"] = 4, ["type"] = 4},
{["lv"] = 106954777, ["offset"] = 8, ["type"] = 4},
{["lv"] = -1598023927, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end
function b()
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色的"},
{["value"] = 32755772e-40, ["type"] = 16},
{["lv"] = 238020729e21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 204687523842, ["offset"] = 8, ["type"] = 16},
{["lv"] = 200000023842, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end
function c()
end
function d()
end
function e()
end
function f()
end
function g()
end
function h()

end
 -------------------------人--------------------------------------                   
                    
function fangshan1()
qmnb = {
{["memory"] = 131072},
{["name"] = "防闪第一步"},
{["value"] = 3.0230535e23, ["type"] = 16},
{["lv"] = 2.2963078e-41, ["offset"] = 4, ["type"] = 16},
{["lv"] = 6.50000333786, ["offset"] = 8, ["type"] = 16},
{["lv"] = 8.4077908e-45, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2, ["offset"] = 156, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 156, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 131072},
{["name"] = "山体防闪"},
{["value"] = -6.488152e-40, ["type"] = 16},
{["lv"] = 4.7604163e21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.6051939e-45, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.1202011e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2, ["offset"] = 144, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 144, ["type"] = 16},
}
xqmnb(qmnb)
end


function jl()
bc={} bd={}
file = io.open("/storage/emulated/0/Le马赛克.txt","a+")
for i=1,#ad do
if readValue(ad[i].address,mskq.gslx)==mskq.xgz then
file:write(string.format("%#x",ad[i].address).."     第"..i.."个值\n")
file:close()
end end
file = io.open("/storage/emulated/0/Le透明.txt","a+")
for i=1,#af do
if readValue(af[i].address,tmq.gslx)==tmq.xgz then
file:write(string.format("%#x",af[i].address).."     第"..i.."个值\n")
file:close()
end end
gg.toast("记录成功！")
end


--    https://ae01.alicdn.com/kf/H8cef8d510aa84b57b3c8f6cf0213cdb8y.jpg  🔴
--    反馈QQ3312552076
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  if XGCK == 1 then
    Main()
  end
 end