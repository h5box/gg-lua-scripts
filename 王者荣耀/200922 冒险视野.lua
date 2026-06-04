gg.searchNumber,Searchnumber=Searchnumber,gg.searchNumber
function gg.searchNumber(a,b,c,d,e,f)
gg.setVisible(false)
if not search_e then
search_e=string.char(0,0,0,0,0,0,0)
for i=1,22 do
search_e=search_e..search_e
end
end
gg.getResults(1)
gg.editAll(search_e,4)
local s,j={},{}
for i=1,50 do
j[i]=math.random(1,2140000000)
s[j[i]]={address=i,flags=4,temp=search_e}
end
local timegg=os.clock()+os.time()
s=gg.getValues(s)
local dateinit=os.clock()+os.time()
for i=1,50 do
while s[j[i]].value~=0 or dateinit-timegg>2.1 do
gg.clearResults()
os.exit()
end
end
Searchnumber(a,b,c,d,e,f)
gg.getResults(0)
gg.editAll(search_e,4)
while gg.isVisible(true) do
gg.clearResults()
os.exit()
end
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Main0()
SN = gg.choice({
	 "普通视野第一步",
	 "普通视野第二步",
	 "干将4级无效开这个1",
	 "干将4级无效开这个2",
	 "冒险王昭君大招全屏",
	 "退出脚本",
}, nil, "交友Q群：817669886\n隐藏234 一局一开 单选ca")
if SN==1 then	 HS2() end
if SN==2 then	 HS3() end
if SN==3 then	 HS6() end
if SN==4 then	 HS7() end
if SN==5 then	 XM_MX() end
if SN==6 then	 HS999() end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("14.45322227478", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14.45322227478", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22.89999961853", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-16.05192565918", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-16.05192565918", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-25.10000038147", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16.62120437622", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16.62120437622", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22.89999961853", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-18.45971679688", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-18.45971679688", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-25.10000038147", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end



function XM_MX()
FS = gg.alert("是否开启王昭君大招全屏", "是", "否")
    if FS ~= 1 then
  Main0()
  else



while true do
gg.sleep(2000)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "王昭君大招全屏"},
{["value"] = 5000, ["type"] = 32},
{["lv"] = 34359738373000, ["offset"] = -12, ["type"] = 32},
{["lv"] = 34359738376000, ["offset"] = -8, ["type"] = 32},
{["lv"] = 21474836488000, ["offset"] = -4, ["type"] = 32},
{["lv"] = 4294967296000, ["offset"] = 16, ["type"] = 32},
}
qmxg = {
{["value"] = 307944, ["offset"] = 0, ["type"] = 32}, }
xqmnb(qmnb)
end
end
end




function HS999()
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