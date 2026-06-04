function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD

function SearchWrite(Search, Write, Type)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber(Search[1][1], Type)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {} 
  local base = Search[1][2] 
  if (count > 0) then
    for i, v in ipairs(result) do
      v.isUseful = true 
    end

    for k=2, #Search do
      local tmp = {}
      local offset = Search[k][2] - base 
      local num = Search[k][1] 

      for i, v in ipairs(result) do
        tmp[#tmp+1] = {} 
        tmp[#tmp].address = v.address + offset 
        tmp[#tmp].flags = v.flags 
      end

      tmp = gg.getValues(tmp) 

      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then 
          result[i].isUseful = false 
        end
      end
    end

    for i, v in ipairs(result) do
      if (v.isUseful) then 
        data[#data+1] = v.address
      end
    end

    if (#data > 0) then
      gg.toast("搜索到"..#data.."条数据")
      local t = {}
      local base = Search[1][2]
      for i=1, #data do
        for k, w in ipairs(Write) do
          offset = w[2] - base
          t[#t+1] = {}
          t[#t].address = data[i] + offset
          t[#t].flags = Type
          t[#t].value = w[1]

          if (w[3] == true) then
            local item = {}
            item[#item+1] = t[#t]
            item[#item].freeze = true
            gg.addListItems(item)
          end

        end
      end
      gg.setValues(t)
      gg.toast("已修改"..#t.."条数据")
      gg.addListItems(t)
    else
      gg.toast("无数据", false)
      return false
    end
  else
    gg.toast("Not Found")
    return false
  end
end

function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
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
function Main0()
SN = gg.choice({
"交流群复制",
"a内存聚点",
"a内存自瞄",
"a内存无后",
"a内存范围",
"退出脚本",
}, nil, "大牛a内存脚本,kjdao.cc")
if SN==1 then
HS1()
end
if SN==2 then
HS2()
end
if SN==3 then
HS3()
end
if SN==4 then
HS4()
end
if SN==5 then
HS5()
end
if SN==6 then
HS6()
end
FX1=0
end

function HS1()
gg.copyText("####")
gg.alert("交流群已复制")
end

function HS2()
r=search({"-308606462",{"-369098748",12},{"-308401664",24}},32)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+12
tt[ii].flags=4
tt[ii].value=0
end
gg.setValues(tt)
gg.toast("聚点开启成功")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
end
end

function HS3()
qmnb = {
{["memory"] = 32},
{["name"] = "a内存自瞄"},
{["value"] = -9.149613883597553E22, ["type"] = 16},
{["lv"] = -9.153310438171698E22, ["offset"] = 4, ["type"] = 16},
{["lv"] = -7.559475721406174E22, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end


function HS4()
qmnb = {
{["memory"] = 32},
{["name"] = "a内存无后"},
{["value"] = -1.0061304023208683E28, ["type"] = 16},
{["lv"] = -2.834372391041382E28, ["offset"] = 4, ["type"] = 16},
{["lv"] = -2.8324985560209793E28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -5.37881556410363E27, ["offset"] = 12, ["type"] = 16},
{["lv"] = -3.6893512776479565E20, ["offset"] = 16, ["type"] = 16},
{["lv"] = -6.185892419515206E26, ["offset"] = 20, ["type"] = 16},
{["lv"] = -1.0061304023208683E28, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function HS5()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "a内存小范围"},
{["value"] = -2.728092817983673E27, ["type"] = 16},
{["lv"] = -4.633825714195541E22, ["offset"] = 4, ["type"] = 16},
{["lv"] = -9.149595869199043E22, ["offset"] = 12, ["type"] = 16},
{["lv"] = -9.149606677838149E22, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults() 
gg.clearList() 
end



function HS6()
os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end




















---------傻逼玩意二改尼玛,柒仔自用脚本