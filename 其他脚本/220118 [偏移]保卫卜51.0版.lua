function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD

local cpu = os.clock()
function Main0()
SN = gg.choice({
'瓶子',
'太阳花',
'粑粑炮',
"退出脚本",
}, nil, "www.kjdao.cc")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then os.exit() end
FX1=0
end



function HS1()
gg.alert("功能包涵：购买萝卜币为1;攻速")
editData(
{
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "瓶子"},
{["value"] = 600, ["type"] = W},
{["lv"] = 400,["offset"] =24, ["type"] = W},
{["lv"] = 250,["offset"] =48, ["type"] = W},
{["lv"] = 100,["offset"] =192, ["type"] = W},
{["lv"] = 180,["offset"] =216, ["type"] = W},
{["lv"] = 260,["offset"] =240, ["type"] = W},
},
{
{["value"] = 10,["offset"] =0, ["type"] = W,["freeze"] = false},
{["value"] = 10,["offset"] =24, ["type"] = W,["freeze"] = false},
{["value"] = 0,["offset"] =48, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =192, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =216, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =240, ["type"] = W,["freeze"] = false},
}
)
gg.clearResults()
gg.toast(string.format("瓶子搜索耗时%.2f秒", os.clock() - cpu))
end




function HS2()
editData(
{
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "太阳花"},
{["value"] = 1300, ["type"] = W},
{["lv"] = 100,["offset"] =-216, ["type"] = W},
{["lv"] = 160,["offset"] =-192, ["type"] = W},
{["lv"] = 250,["offset"] =-168, ["type"] = W},
{["lv"] = 1600,["offset"] =-24, ["type"] = W},
{["lv"] = 1000,["offset"] =24, ["type"] = W},
{["lv"] = 180,["offset"] =72, ["type"] = W},
{["lv"] = 260,["offset"] =96, ["type"] = W},
},
{
{["value"] = 10,["offset"] =0, ["type"] = W,["freeze"] = false},
{["value"] = 10,["offset"] =-24, ["type"] = W,["freeze"] = false},
{["value"] = 10,["offset"] =24, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =72, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =96, ["type"] = W,["freeze"] = false},
}
)
gg.clearResults()
gg.toast(string.format("太阳花开启耗时%.2f秒", os.clock() - cpu))
end
function HS3()
editData(
{
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "粑粑炮"},
{["value"] = 1050, ["type"] = W},
{["lv"] = 1200,["offset"] =-24, ["type"] = W},
{["lv"] = 900,["offset"] =24, ["type"] = W},
{["lv"] = 120,["offset"] =168, ["type"] = W},
{["lv"] = 220,["offset"] =192, ["type"] = W},
{["lv"] = 260,["offset"] =216, ["type"] = W},
},
{
{["value"] = 10,["offset"] =0, ["type"] = W,["freeze"] = false},
{["value"] = 10,["offset"] =-24, ["type"] = W,["freeze"] = false},
{["value"] = 10,["offset"] =24, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =168, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =192, ["type"] = W,["freeze"] = false},
{["value"] = 1,["offset"] =216, ["type"] = W,["freeze"] = false},
}
)
gg.clearResults()
gg.toast(string.format("粑粑炮修改耗时%.2f秒", os.clock() - cpu))
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
