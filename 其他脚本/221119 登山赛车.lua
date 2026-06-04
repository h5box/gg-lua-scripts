function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD



gg.alert("🌆欢迎进入星辰脚本🌆")
function Main0()
SN = gg.choice({
"金币999999999",
'钻石999999999',
'恢复金币999999999[默认0]',
'恢复钻石999999999[默认0]',
"退出脚本",
}, nil,os.date"🌆星辰提示你:当前时间:%Y年/️%m月/%d日%H:%M:%S🌆")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then os.exit() end
FX1=0
end



function HS1()
editData(
{
{["memory"] = gg.REGION_C_BSS},
{["name"] = "金币999999999"},
{["value"] = 743, ["type"] = D},
{["lv"] = 748,["offset"] =0x34, ["type"] = D},
},
{
{["value"] = 999999999,["offset"] =0x100, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function HS2()
editData(
{
{["memory"] = gg.REGION_C_BSS},
{["name"] = "修改钻石999999999"},
{["value"] = 750, ["type"] = D},
{["lv"] = 751,["offset"] =0x1c, ["type"] = D},
},
{
{["value"] = 999999999,["offset"] =0x3c, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
function HS3()
editData(
{
{["memory"] = gg.REGION_C_BSS},
{["name"] = "恢复金币999999999"},
{["value"] = 743, ["type"] = D},
{["lv"] = 748,["offset"] =0x34, ["type"] = D},
},
{
{["value"] = 0,["offset"] =0x100, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
function HS4()
editData(
{
{["memory"] = gg.REGION_C_BSS},
{["name"] = "修改钻石999999999"},
{["value"] = 750, ["type"] = D},
{["lv"] = 751,["offset"] =0x1c, ["type"] = D},
},
{
{["value"] = 0,["offset"] =0x3c, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
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
