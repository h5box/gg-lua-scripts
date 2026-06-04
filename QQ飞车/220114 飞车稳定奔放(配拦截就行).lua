z="" zz="" zzz="" x="" xx="" xxx="" v="" vv="" vvv=""
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end

D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
--配置
function Main()
gg.clearList()
  SN = gg.choice({
  "(1.1)引擎加速"..z..zz..zzz,
  "(0.15)轻飘聚气"..x..xx..xxx,
  "轻飘小喷"..v..vv..vvv,
  "功能全开",
  "退出脚本"
}, nil, "懂得都懂，所有功能一把一开")
  if SN == 1 then a() end
  if SN == 2 then b() end
  if SN == 3 then c() end
  if SN == 4 then a() b() c() end
  if SN == 5 then os.exit() end XGCK = -1 end


function a()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "引擎加速120"},
{["value"] = 1148846080, ["type"] = D},
{["lv"] = 1065353216,["offset"] =8, ["type"] = D},
}
qmxg = {
{["value"] = 1.1,["offset"] =4, ["type"] = F},
}
xqmnb(qmnb)
gg.clearResults()
if xgjg == true then z="(成功修改" zz=xgsl   zzz="个)"  else z="(失败)" zz="" zzz=""   end end

--[[
function ()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "无限氮气"},
{["value"] = 1082969293, ["type"] = D},
{["lv"] = 256,["offset"] =24, ["type"] = D},
{["lv"] = 0,["offset"] =20, ["type"] = D},
}
qmxg = {
{["value"] = 0.001,["offset"] =8, ["type"] = F},--未知
{["value"] = 0.001,["offset"] =12, ["type"] = F},--未知
{["value"] = 0.001,["offset"] =16, ["type"] = F},--0以上无限氮气(危险)，如果开无限氮气，不要开太频繁
{["value"] = 9,["offset"] =20, ["type"] = F},--1以上秒聚气(危险)
}
xqmnb(qmnb)
gg.clearResults()
end
]]

function b()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "轻微聚气"},
{["value"] = 1082969293, ["type"] = D},
{["lv"] = 256,["offset"] =24, ["type"] = D},
{["lv"] = 0,["offset"] =20, ["type"] = D},
}
qmxg = {
{["value"] = 0.15,["offset"] =20, ["type"] = F},--轻飘聚气(建议0.3以下太大危险)
}
xqmnb(qmnb)
gg.clearResults()
if xgjg == true then x="(成功修改" xx=xgsl   xxx="个)"  else x="(失败)" xx="" xxx=""   end end

function c()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "小喷"},
{["value"] = 1068708659, ["type"] = D},
{["lv"] = 256,["offset"] =60, ["type"] = D},
{["lv"] = 35.0,["offset"] =20, ["type"] = F},
}
qmxg = {
{["value"] = 0,["offset"] =20, ["type"] = F},--负数为无限小喷(危险)，0~35为轻飘小喷，不要双喷太频繁
}
xqmnb(qmnb)
gg.clearResults()
if xgjg == true then v="(成功修改" vv=xgsl   vvv="个)"  else v="(失败)" vv="" vvv=""   end end


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  if XGCK == 1 then
    Main()
  end
  end
  