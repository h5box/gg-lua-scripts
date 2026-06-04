function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end

function Main0()
SN = gg.choice({
"清理冻结(穿墙)数据",
"开启功能菜单",
"关闭功能菜单",
"吸星大法菜单",
"坐标传送菜单",
"娱乐功能菜单",
"无CD功能菜单",
"退出脚本",
}, nil, "清理穿墙数据后蹲起一次即可恢复,传送和穿墙会冲突,两者只能同时存在一项")
if SN==1 then QL() end
if SN==2 then KQ() end
if SN==3 then GB() end
if SN==4 then xxdf() end
if SN==5 then zbcs() end
if SN==6 then ylgn() end
if SN==7 then wcd() end
if SN==8 then tcjb() end
FX1=0
end

----------清理区----------
function QL()
gg.clearResults()
gg.clearList()
end
----------清理区----------
--/////////////////////////--
----------开启区----------
function KQ()
  DN = gg.multiChoice({
    "全局速度自定义修改",
    "人物站着加速(开)",
    "人物蹲着加速(开)",
    "手电筒锁能量(开)",
    "强光手电(开)",
    "物品透视(开)",
    "无视AI鬼1(开)",
    "无视AI鬼2(开)",
    "无视AI和真人鬼3(开)被真人鬼杀后不变魂体,但是隐身",
    "隐身(开)大厅开完进一次角色再进房",
    "垃圾穿墙(开)只能穿薄的地方,穿不过去就顶着蹲起",
    "医院无视夹子(被夹的时候一局一开)",
    "医院专属穿墙(开)",
  }, nil, "穿墙一局局内一开,修改器冻结间隔设置0,开启时需站着不动\n开过之后每局结束都要清理冻结数据")
  if DN == nil then
  else
  if DN[1] == true then
    qjsdzdyxg()
  end
  if DN[2] == true then
    rwzzjsk()
  end
  if DN[3] == true then
    rwdzjsk()
  end
  if DN[4] == true then
    sdtsnlk()
  end
  if DN[5] == true then
    qgsdk()
  end
  if DN[6] == true then
    wptsk()
  end
  if DN[7] == true then
    wsaig1k()
  end
  if DN[8] == true then
    wsaig2k()
  end
  if DN[9] == true then
    wsaihzrg3k()
  end
  if DN[10] == true then
    ysk()
  end
  if DN[11] == true then
    ljcqk()
  end
  if DN[12] == true then
    yywsjz()
  end
  if DN[13] == true then
    yyzscqk()
  end
end
FX1=0
end

function qjsdzdyxg()
gg.clearResults()
 DJ = gg.prompt({"全局速度默认1"},{[1]="1"},{[1]="number"})
     if DJ == nil then 
     gg.toast("您取消了")
else
      SZ = ""..DJ[1]
     if SZ == "" then
end
editData(
{
{["memory"] = 32},
{["name"] = "全局速度自定义修改"},
{["value"] = 1023969408,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-4, ["type"] = 4},
},
{
{["value"] = DJ[1],["offset"] =-8, ["type"] = 16,["freeze"] = false},
}
)
gg.clearResults()
end
end

function rwzzjsk()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "人物站着加速(开)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390231056,["offset"] =4, ["type"] = 4},
{["lv"] = -439353319,["offset"] =12, ["type"] = 4},
},
{
{["value"] = -290252288,["offset"] =8, ["type"] = 4,["freeze"] = false},--(-290383360D)改成(-290252288D)
}
)
gg.clearResults()
end

function rwdzjsk()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "人物蹲着加速(开)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390231056,["offset"] =4, ["type"] = 4},
{["lv"] = -439353319,["offset"] =12, ["type"] = 4},
},
{
{["value"] = -290256384,["offset"] =16, ["type"] = 4,["freeze"] = false},--(-289994232D)改成(-290256384D)
}
)
gg.clearResults()
end


function sdtsnlk()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "手电筒锁能量(开)"},
{["value"] = -1694498814,["type"] = 4},
{["lv"] = -498348008,["offset"] =4, ["type"] = 4},
{["lv"] = -390230544,["offset"] =8, ["type"] = 4},
},
{
{["value"] = 99,["offset"] =12, ["type"] = 16,["freeze"] = false},--(-0.05000000075F)改成(99F)
}
)
gg.clearResults()
end

function qgsdk()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "强光手电(开)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390232016,["offset"] =4, ["type"] = 4},
{["lv"] = 1078530011,["offset"] =12, ["type"] = 4},
},
{
{["value"] = 121,["offset"] =8, ["type"] = 16,["freeze"] = false},--(360F)改(121F)
}
)
gg.clearResults()
end

function wptsk()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "物品透视(开)"},
{["value"] = -345525783,["type"] = 4},
{["lv"] = -481296384,["offset"] =4, ["type"] = 4},
{["lv"] = -480968704,["offset"] =12, ["type"] = 4},
},
{
{["value"] = -352321526,["offset"] =8, ["type"] = 4,["freeze"] = false},--(436207626D)改(-369098742D或-352321526D)
}
)
gg.clearResults()
end

function wsaig1k()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI鬼1(开)"}, 
{["value"] = -442547864,["type"] = 4},
{["lv"] = -498216952,["offset"] =-4, ["type"] = 4},
{["lv"] = -382906896,["offset"] =-12, ["type"] = 4},
{["lv"] = -509583360,["offset"] =4, ["type"] = 4},
},
{
{["value"] = -516948194,["offset"] =-8, ["type"] = 4,["freeze"] = false},--(-494030824D)改(-516948194D)
}
)
gg.clearResults()
end

function wsaig2k()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI鬼2(开)"}, 
{["value"] = -442542728,["type"] = 4},
{["lv"] = -498216956,["offset"] =-12, ["type"] = 4},
{["lv"] = -315782396,["offset"] =-8, ["type"] = 4},
{["lv"] = -498216872,["offset"] =-4, ["type"] = 4},
},
{
{["value"] = -516948194,["offset"] =-16, ["type"] = 4,["freeze"] = false},--(-494030820D)改(-516948194D)
}
)
gg.clearResults()
end

function wsaihzrg3k()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI和真人鬼3(开)"}, 
{["value"] = -442542728,["type"] = 4},
{["lv"] = -498216956,["offset"] =-12, ["type"] = 4},
{["lv"] = -315782396,["offset"] =-8, ["type"] = 4},
{["lv"] = -498216872,["offset"] =-4, ["type"] = 4},
},
{
{["value"] = -516948194,["offset"] =4, ["type"] = 4,["freeze"] = false},--(-509571072D)改(-516948194D)
}
)
gg.clearResults()
end

function ysk()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "隐身(开)"},
{["value"] = 367005565,["type"] = 4},
{["lv"] = 401616881,["offset"] =4, ["type"] = 4}, 
},
{
{["value"] = 5,["offset"] =-96, ["type"] = 4,["freeze"] = false},
}
)
gg.clearResults()
end

function ljcqk()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "垃圾穿墙(开)"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 16843008,["offset"] =-128, ["type"] = 4},
},
{
{["value"] = -1130113270,["offset"] =12, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
end

function yywsjz()
gg.clearResults()
 DJ = gg.prompt({"0背夹状态/1免疫一下夹/2整局免夹"},{[1]="1"},{[1]="number"})
     if DJ == nil then 
     gg.toast("您取消了")
else
      SZ = ""..DJ[1]
     if SZ == "" then
end
editData(
{
{["memory"] = 32},
{["name"] = "医院无视夹子"},
{["value"] = 1076258406,["type"] = 4},
{["lv"] = 1073741824,["offset"] =16, ["type"] = 4},
},
{
{["value"] = DJ[1],["offset"] =108, ["type"] = 4,["freeze"] = false},
}
)
gg.clearResults()
end end

function yyzscqk()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "医院专属穿墙(开)50%"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 16843008,["offset"] =-128, ["type"] = 4},
},
{
{["value"] = -1082130432,["offset"] =12, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "医院专属穿墙(开)100%"},
{["value"] = -1114678231,["type"] = 4},
{["lv"] = 2143289344,["offset"] =-136, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =4, ["type"] = 4},
{["lv"] = 1023921601,["offset"] =12, ["type"] = 4},
},
{
{["value"] = 1070386381,["offset"] =-144, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
end
----------开启区----------
--/////////////////////////--
----------关闭区----------
function GB()
  FN = gg.multiChoice({
    "人物站着加速(关)",
    "人物蹲着加速(关)",
    "手电筒锁能量(关)",
    "强光手电(关)",
    "物品透视(关)",
    "无视AI鬼1(关)",
    "无视AI鬼2(关)",
    "无视AI和真人鬼3(关)",
    "隐身(关)",
  }, nil, "关闭穿墙点击清理冻结数据然后蹲起一次即可")
  if FN == nil then
  else
  if FN[1] == true then
    rwzzjsg()
  end
  if FN[2] == true then
    rwdzjsg()
  end
  if FN[3] == true then
    sdtsnlg()
  end
  if FN[4] == true then
    qgsdg()
  end
  if FN[5] == true then
    wptsg()
  end
  if FN[6] == true then
    wsaig1g()
  end
  if FN[7] == true then
    wsaig2g()
  end
  if FN[8] == true then
    wsaihzrg3g()
  end
  if FN[9] == true then
    ysg()
  end
end
FX1=0
end

function rwzzjsg()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "人物站着加速(关)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390231056,["offset"] =4, ["type"] = 4},
{["lv"] = -439353319,["offset"] =12, ["type"] = 4},
},
{
{["value"] = -290383360,["offset"] =8, ["type"] = 4,["freeze"] = false},--(-290252288D)改成(-290383360D)
}
)
gg.clearResults()
end

function rwdzjsg()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "人物蹲着加速(关)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390231056,["offset"] =4, ["type"] = 4},
{["lv"] = -439353319,["offset"] =12, ["type"] = 4},
},
{
{["value"] = -289994232,["offset"] =16, ["type"] = 4,["freeze"] = false},--(-290256384D)改成(-289994232D)
}
)
gg.clearResults()
end

function sdtsnlg()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "手电筒锁能量(关)"},
{["value"] = -1694498814,["type"] = 4},
{["lv"] = -498348008,["offset"] =4, ["type"] = 4},
{["lv"] = -390230544,["offset"] =8, ["type"] = 4},
},
{
{["value"] = -0.05000000075,["offset"] =12, ["type"] = 16,["freeze"] = false},--(99F)改成(-0.05000000075F)
}
)
gg.clearResults()
end

function qgsdg()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "强光手电(关)"},
{["value"] = -323122426,["type"] = 4},
{["lv"] = -390232016,["offset"] =4, ["type"] = 4},
{["lv"] = 1078530011,["offset"] =12, ["type"] = 4},
},
{
{["value"] = 360,["offset"] =8, ["type"] = 16,["freeze"] = false},--(121F)改(360F)
}
)
gg.clearResults()
end

function wptsg()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "物品透视(关)"},
{["value"] = -345525783,["type"] = 4},
{["lv"] = -481296384,["offset"] =4, ["type"] = 4},
{["lv"] = -480968704,["offset"] =12, ["type"] = 4},
},
{
{["value"] = 436207626,["offset"] =8, ["type"] = 4,["freeze"] = false},--(-369098742D)改(436207626D)
}
)
gg.clearResults()
end

function wsaig1g()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI鬼1(关)"},
{["value"] = -442547864,["type"] = 4},
{["lv"] = -498216952,["offset"] =-4, ["type"] = 4},
{["lv"] = -382906896,["offset"] =-12, ["type"] = 4},
{["lv"] = -509583360,["offset"] =4, ["type"] = 4},
},
{
{["value"] = -494030824,["offset"] =-8, ["type"] = 4,["freeze"] = false},--(-516948194D)改(-494030824D)
}
)
gg.clearResults()
end

function wsaig2g()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI鬼2(关)"}, 
{["value"] = -442542728,["type"] = 4},
{["lv"] = -498216956,["offset"] =-12, ["type"] = 4},
{["lv"] = -315782396,["offset"] =-8, ["type"] = 4},
{["lv"] = -498216872,["offset"] =-4, ["type"] = 4},
},
{
{["value"] = -494030820,["offset"] =-16, ["type"] = 4,["freeze"] = false},--(-516948194D)改(-494030820D)
}
)
gg.clearResults()
end

function wsaihzrg3g()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "无视AI和真人鬼3(关)"}, 
{["value"] = -442542728,["type"] = 4},
{["lv"] = -498216956,["offset"] =-12, ["type"] = 4},
{["lv"] = -315782396,["offset"] =-8, ["type"] = 4},
{["lv"] = -498216872,["offset"] =-4, ["type"] = 4},
},
{
{["value"] = -509571072,["offset"] =4, ["type"] = 4,["freeze"] = false},--(-516948194D)改(-509571072D)
}
)
gg.clearResults()
end

function ysg()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "隐身(关)"},
{["value"] = 367005565,["type"] = 4},
{["lv"] = 401616881,["offset"] =4, ["type"] = 4},
},
{
{["value"] = 0,["offset"] =-96, ["type"] = 4,["freeze"] = false},
}
)
gg.clearResults()
end
----------关闭区----------
--/////////////////////////--
----------吸星区----------
function xxdf()
XN = gg.choice({
"医院吸星大法",
"学校吸星大法",
}, nil, nil)
if XN==1 then yyxxdf() end
if XN==2 then xxxxdf() end
FX1=0
end



function yyxxdf()
 DJ = gg.prompt({"请输入要传送的对应车库数字1/2/3"},{[1]="1"},{[1]="number"})
     if DJ == nil then 
     gg.toast("您取消了") 
else
     if DJ[1] == "1" then
     gg.toast("车库1")
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库1"},
     {["value"] = 17170436,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-256",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "288",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库1"},
     {["value"] = 17170464,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-256",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "285",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库1"},
     {["value"] = 17170465,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-256",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "282",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库1"},
     {["value"] = 17170432,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-256",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "279",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     gg.clearList()
     DX1()
     LQC()
     gg.alert("确定后蹲一下")
     gg.sleep(2000)
     DX2()
     LQC()
     CK1()
else
     if DJ[1] == "2" then
     gg.toast("车库2")
     gg.clearResults()
	 editData(
     {
     {["memory"] = 32},
     {["name"] = "车库2"},
     {["value"] = 17170436,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-295.5",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "174.5",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库2"},
     {["value"] = 17170464,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-298.5",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "174.5",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库2"},
     {["value"] = 17170465,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-301.5",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "174.5",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库2"},
     {["value"] = 17170432,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-304.5",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "174.5",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
	 gg.clearList()
     DX1()
     LQC()
     gg.alert("确定后蹲一下")
     gg.sleep(2000)
     DX2()
     LQC()
     CK2()
else
     if DJ[1] == "3" then
     gg.toast("车库3")
     gg.clearResults()
	 editData(
     {
     {["memory"] = 32},
     {["name"] = "车库3"},
     {["value"] = 17170436,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-330",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "287",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库3"},
     {["value"] = 17170464,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-327",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "287",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库3"},
     {["value"] = 17170465,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-324",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "287",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "车库3"},
     {["value"] = 17170432,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "-321",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "287",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
	 gg.clearList()
     DX1()
     LQC()
     gg.alert("确定后蹲一下")
     gg.sleep(2000)
     DX2()
     LQC()
     CK3()
end end end end end

function LQC()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "231.00811767578",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "-4",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "-282.0712890625",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.clearList()
end

function DX1()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = 500,["offset"] =-132, ["type"] = 16,["freeze"] = false},
{["value"] = 500,["offset"] =-136, ["type"] = 16,["freeze"] = false},
{["value"] = 500,["offset"] =-140, ["type"] = 16,["freeze"] = false},
}
)
gg.clearResults()
end

function DX2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = 1,["offset"] =-132, ["type"] = 16,["freeze"] = false},
{["value"] = 1,["offset"] =-136, ["type"] = 16,["freeze"] = false},
{["value"] = 1,["offset"] =-140, ["type"] = 16,["freeze"] = false},
}
)
gg.clearResults()
end

function CK1()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "284",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "1.53",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "-260",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function CK2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "179",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "1.53",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "-300",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function CK3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "283",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "1.53",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "-326",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end


function xxxxdf()
	 gg.clearResults()
     editData(
     {
     {["memory"] = 32},
     {["name"] = "学校"},
     {["value"] = 17170436,["type"] = 4},
     {["lv"] = 196613,["offset"] =-104, ["type"] = 4},
     {["lv"] = 1041865114,["offset"] =32, ["type"] = 4},
     },
     {
     {["value"] = "35.68677902222",["offset"] =-12, ["type"] = 16,["freeze"] = true},
     {["value"] = "3",["offset"] =-8, ["type"] = 16,["freeze"] = true},
     {["value"] = "59.06369018555",["offset"] =-4, ["type"] = 16,["freeze"] = true},
     }
     )
     gg.clearResults()
     gg.clearList()
     DMK()
     DX1()
     gg.alert("确定后蹲一下")
     gg.sleep(2000)
     DX2()
     gg.alert("确定后再蹲一下")
     gg.sleep(2000)
     DML()
end

function DML()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "57.33515548706",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "2",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "35.69543838501",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function DMK()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "传送物品"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = "57.33515548706",["offset"] =-164, ["type"] = 16,["freeze"] = true},
{["value"] = "-4",["offset"] =-168, ["type"] = 16,["freeze"] = true},
{["value"] = "35.69543838501",["offset"] =-172, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
gg.clearList()
end
----------吸星区----------
--/////////////////////////--
----------娱乐区----------
function ylgn()
  AN = gg.multiChoice({
    "人物坐标值保存1",
    "人物坐标值保存2(需要蹲起一次再开)",
    "人物自定义大小",
    "人物自定义动作",
    "偷下水道走廊钥匙",
    "偷下水道保险箱钥匙",
  }, nil, "坐标修改需要冻结且冻结间隔为0")
  if AN == nil then
  else
  if AN[1] == true then
    rwzbzbc1()
  end
  if AN[2] == true then
    rwzbzbc2()
  end
  if AN[3] == true then
    rwzdydx()
  end
  if AN[4] == true then
    rwzdydz()
  end
  if AN[5] == true then
    txsdzlys()
  end
  if AN[6] == true then
    txsdbxxys()
  end
end
FX1=0
end

function rwzbzbc1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("16,842,756;1::24", 4, false, gg.SIGN_EQUAL, 0, -1)
     if gg.getResultCount()==0 then
     gg.clearResults() gg.alert("数据异常","清除并返回")  Main0() 
	 else
	 gg.searchNumber("16,842,756", 4, false, gg.SIGN_EQUAL, 0, -1)
	 n=gg.getResultCount()
     jz=gg.getResults(n)
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-60,flags = 16,freeze = false,value = nil}})
	 end
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-68,flags = 16,freeze = false,value = nil}})
	 end
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-76,flags = 16,freeze = false,value = nil}})
	 end
	 gg.toast("保存成功,共修改"..n.."x3条数据")
	 gg.clearResults()
end
end

function rwzbzbc2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.803~1.805;-0.0700000003;0.10000000149::105", 16, false, gg.SIGN_EQUAL, 0, -1)
     if gg.getResultCount()==0 then
     gg.clearResults() gg.alert("数据异常","清除并返回")  Main0() 
	 else
	 gg.searchNumber("1.803~1.805", 16, false, gg.SIGN_EQUAL, 0, -1)
	 n=gg.getResultCount()
     jz=gg.getResults(n)
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-44,flags = 16,freeze = false,value = nil}})
	 end
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-48,flags = 16,freeze = false,value = nil}})
	 end
	 for i=1, n do
	 	 gg.addListItems({[1] = {address=jz[i].address-52,flags = 16,freeze = false,value = nil}})
	 end
	 gg.toast("保存成功,共修改"..n.."x3条数据")
	 gg.clearResults()
end
end

function rwzdydx()
gg.clearResults()
 DJ = gg.prompt({"原大小1，改完蹲一下"},{[1]="1"},{[1]="number"})
     if DJ == nil then 
     gg.toast("您取消了")
else
      SZ = ""..DJ[1]
     if SZ == "" then
end
editData(
{
{["memory"] = 32},
{["name"] = "人物自定义大小"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = DJ[1],["offset"] =-132, ["type"] = 16,["freeze"] = false},
{["value"] = DJ[1],["offset"] =-136, ["type"] = 16,["freeze"] = false},
{["value"] = DJ[1],["offset"] =-140, ["type"] = 16,["freeze"] = false},
}
)
gg.clearResults()
end
end

function rwzdydz()
gg.clearResults()
 DJ = gg.prompt({"蹲着-1/站着0/大鹏展翅1"},{[1]="1"},{[1]="number"})
     if DJ == nil then 
     gg.toast("您取消了")
else
      SZ = ""..DJ[1]
     if SZ == "" then
end
editData(
{
{["memory"] = 32},
{["name"] = "人物自定义动作"},
{["value"] = 619537,["type"] = 4},
{["lv"] = 43,["offset"] =28, ["type"] = 4},
},
{
{["value"] = DJ[1],["offset"] =-160, ["type"] = 16,["freeze"] = true},
}
)
gg.clearResults()
end
end

function txsdzlys()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "偷下水道走廊钥匙"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = -1022981788,["offset"] =-164, ["type"] = 4,["freeze"] = true},
{["value"] = -1033843507,["offset"] =-168, ["type"] = 4,["freeze"] = true},
{["value"] = -1031717476,["offset"] =-172, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
end

function txsdbxxys()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "偷下水道保险箱钥匙"},
{["value"] = 1065343992,["type"] = 4},
{["lv"] = 1036831949,["offset"] =-20, ["type"] = 4},
{["lv"] = -1114678231,["offset"] =-24, ["type"] = 4},
},
{
{["value"] = -1037134524,["offset"] =-164, ["type"] = 4,["freeze"] = true},
{["value"] = -1034289152,["offset"] =-168, ["type"] = 4,["freeze"] = true},
{["value"] = -1044381696,["offset"] =-172, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
end
----------娱乐区----------

----------传送区----------
function zbcs()
  BN = gg.choice({
    "医院",
    "下水道电闸",
    "下水道",
    "学校",
  }, nil, nil)
if BN==1 then yy() end
if BN==2 then xsddz() end
if BN==3 then xsd() end
if BN==4 then xx() end
FX1=0
end

----------医院----------
function yy()
  EN = gg.choice({
    "车库",
    "车库2",
    "车库3",
    "咨询室",
    "咨询室2",
    "咨询室3",
    "咨询室4",
    "洗手间",
    "洗手间2",
    "日间活动室",
    "日间活动室2",
    "药房",
    "药房2",
    "重症监护室",
    "重症监护室2",
    "手术室",
    "手术室2",
    "停尸房",
    "育婴室",
    "卫生间",
    "淋浴房",
    "产房",
    "食堂",
    "室内篮球场",
    "走廊3无名小屋",
    "医院彩蛋屋",
  }, nil, nil)
if EN==1 then yyck() end
if EN==2 then yyck2() end
if EN==3 then yyck3() end
if EN==4 then yyzxs() end
if EN==5 then yyzxs2() end
if EN==6 then yyzxs3() end
if EN==7 then yyzxs4() end
if EN==8 then yyxsj() end
if EN==9 then yyxsj2() end
if EN==10 then yyrjhds() end
if EN==11 then yyrjhds2() end
if EN==12 then yyyf() end
if EN==13 then yyyf2() end
if EN==14 then yyzzjhs() end
if EN==15 then yyzzjhs2() end
if EN==16 then yysss() end
if EN==17 then yysss2() end
if EN==18 then yytsf() end
if EN==19 then yyyys() end
if EN==20 then yywsj() end
if EN==21 then yylyf() end
if EN==22 then yycf() end
if EN==23 then yyst() end
if EN==24 then yysnlqc() end
if EN==25 then yyzl3wmxw() end
if EN==26 then yycdw() end
FX1=0
end

function yyck()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "车库"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081199394,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030178,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066426651,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyck2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "车库2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080388040,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030187,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066223112,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyck3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "车库3"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081220890,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030184,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066115289,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzxs()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "咨询室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081107494,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066435580,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzxs2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "咨询室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081044057,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066436400,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzxs3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "咨询室3"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080577185,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030188,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066335249,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzxs4()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "咨询室4"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081120164,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030185,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066191850,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyxsj()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081106340,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030709,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066359239,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyxsj2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080710345,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030187,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066192124,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyrjhds()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "日间活动室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080754404,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066274647,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyrjhds2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "日间活动室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081187863,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030185,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066262925,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyyf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "药房"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080775585,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066360162,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyyf2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "药房2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080784855,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030185,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066194986,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzzjhs()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "重症监护室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080445031,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030187,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066143063,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzzjhs2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "重症监护室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080875740,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030185,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066142249,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yysss()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "手术室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080740053,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066131024,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yysss2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "手术室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081114340,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030185,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066131628,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yytsf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "停尸房"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080676628,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = -1072333849,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066387031,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyyys()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "育婴室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080600606,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066435554,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yywsj()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "卫生间"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080575944,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030188,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066289913,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yylyf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "淋浴房"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080572353,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030188,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066230216,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yycf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "产房"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080988266,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066300651,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyst()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "食堂"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081114332,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074035428,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066237322,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yysnlqc()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "室内篮球场"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080877449,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074030186,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066261175,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yyzl3wmxw()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "走廊3无名小屋"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081004576,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074393081,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066191764,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function yycdw()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "医院彩蛋屋"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1081140967,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074024942,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1066271295,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end
----------医院----------

----------下水道电闸----------
function xsddz()
  YN = gg.choice({
    "电闸1",
    "电闸2",
    "电闸3(125上)",
    "电闸4(345上)",
    "电闸5(145上)",
    "电闸6(234上)",
    "电闸7(134上)",
    "电闸8(125上)",
    "电闸9(123上)",
  }, nil, nil)
if YN==1 then xsddz1() end
if YN==2 then xsddz2() end
if YN==3 then xsddz3() end
if YN==4 then xsddz4() end
if YN==5 then xsddz5() end
if YN==6 then xsddz6() end
if YN==7 then xsddz7() end
if YN==8 then xsddz8() end
if YN==9 then xsddz9() end
FX1=0
end

function xsddz1()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸1"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079198595,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1073028528,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079287969,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079298958,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1073028520,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078915295,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸3"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079783721,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1072831269,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078642009,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz4()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸4"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1076537978,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070720832,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079374521,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz5()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸5"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1069443514,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074437524,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078517669,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz6()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸6"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1072329972,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074209454,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1069019546,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz7()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸7"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1068243792,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1073005426,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1068017728,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz8()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸8"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1069544182,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = -1073907100,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1067731938,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsddz9()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "电闸9"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1074162653,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1073055321,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1068060362,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end
----------下水道电闸----------
----------下水道----------
function xsd()
  PN = gg.choice({
    "下水道迷宫",
    "下水道走廊(地图下方)",
    "下水道走廊(地图上方)",
    "下水道十字路口",
    "下水道过渡区",
    "下水道",
    "模块1",
    "模块2",
    "模块3",
    "模块4",
    "模块4走廊",
    "模块转换",
    "施工区",
    "施工区1",
    "排水室",
    "入口",
    "发电机房",
    "贮存",
  }, nil, nil)
if PN==1 then xsdxsdmg() end
if PN==2 then xsdxsdzldtxf() end
if PN==3 then xsdxsdzldtsf() end
if PN==4 then xsdxsdszlk() end
if PN==5 then xsdxsdgdq() end
if PN==6 then xsdxsd() end
if PN==7 then xsdmk1() end
if PN==8 then xsdmk2() end
if PN==9 then xsdmk3() end
if PN==10 then xsdmk4() end
if PN==11 then xsdmk4zl() end
if PN==12 then xsdmkzh() end
if PN==13 then xsdsgq() end
if PN==14 then xsdsgq1() end
if PN==15 then xsdpss() end
if PN==16 then xsdrk() end
if PN==17 then xsdfdjf() end
if PN==18 then xsdzc() end
FX1=0
end

function xsdxsdmg()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道迷宫"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1080414936,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = -1073066438,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079351169,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdxsdzldtxf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道走廊(地图下方)"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079171540,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070636966,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079357589,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdxsdzldtsf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道走廊(地图上方)"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1069589343,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074444125,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1076620569,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdxsdszlk()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道十字路口"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1073285606,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074443393,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078486131,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdxsdgdq()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道过渡区"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1068393346,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074465210,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079279821,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdxsd()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "下水道"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1068945287,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1072361303,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1068657821,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmk1()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块1"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078572399,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070636960,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079521784,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmk2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078576530,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074737833,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078170184,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmk3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块3"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1070246409,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1068014290,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079529616,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmk4()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块4"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1070293347,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1072963378,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1067922143,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmk4zl()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块4走廊"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1068469496,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1073036251,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1068015112,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdmkzh()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "模块转换"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1075533718,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070646882,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079526494,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdsgq()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "施工区"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = -1071292142,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074483061,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1070475901,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdsgq1()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "施工区1"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1077769150,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074208964,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1069324363,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdpss()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "排水室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079164684,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070636909,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1080104190,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdrk()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "入口"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079868725,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = -1073018175,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079185737,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdfdjf()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "发电机房"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079703377,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1072789344,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078639393,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xsdzc()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "贮存"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079322073,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1070636949,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078615793,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end
----------下水道----------
----------学校----------
function xx()
  TN = gg.choice({
    "逃生大门",
    "保安室",
    "洗手间",
    "洗手间2",
    "洗手间3",
    "洗手间4",
    "教室",
    "教室2",
    "教室3(学校彩蛋屋)",
    "科摩",
    "科摩2",
    "更衣室",
    "更衣室2",
    "室内篮球场",
    "泄压室",
    "主办公室",
    "2楼图书馆",
    "2楼科摩",
  }, nil, nil)
if TN==1 then xxtsdm() end
if TN==2 then xxbas() end
if TN==3 then xxxsj() end
if TN==4 then xxxsj2() end
if TN==5 then xxxsj3() end
if TN==6 then xxxsj4() end
if TN==7 then xxjs() end
if TN==8 then xxjs2() end
if TN==9 then xxjs3() end
if TN==10 then xxkm() end
if TN==11 then xxkm2() end
if TN==12 then xxgys() end
if TN==13 then xxgys2() end
if TN==14 then xxsnlqc() end
if TN==15 then xxxys() end
if TN==16 then xxzbgs() end
if TN==17 then xx2ltsg() end
if TN==18 then xx2lkm() end
FX1=0
end

function xxtsdm()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "逃生大门"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079290984,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1072677884,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078063259,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxbas()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "保安室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078839428,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232552,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078314056,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxxsj()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078573015,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232552,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079026998,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxxsj2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079035392,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232551,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079039546,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxxsj3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间3"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078302795,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232553,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1074376080,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxxsj4()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "洗手间4"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078522047,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074243038,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1074143384,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxjs()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "教室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078413660,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232553,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078764787,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxjs2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "教室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1079041716,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074243037,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078778177,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxjs3()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "教室3(学校彩蛋屋)"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078675244,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074243038,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1076827648,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxkm()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "科摩"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078742365,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232552,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078753559,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxkm2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "科摩2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078739384,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074232552,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078927978,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxgys()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "更衣室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078166131,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074243039,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1071488413,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxgys2()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "更衣室2"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078510133,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074243038,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = -1071590181,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxsnlqc()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "室内篮球场"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1077961194,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1075531184,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1075098578,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxxys()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "泄压室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078370088,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1075239089,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1078051786,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xxzbgs()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "主办公室"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078529831,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1074487689,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1076899812,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xx2ltsg()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "2楼图书馆"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078879498,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1076027193,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1079071093,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end

function xx2lkm()
gg.clearResults()
editData(
{
{["memory"] = 32},
{["name"] = "2楼科摩"},
{["value"] = 16842756,["type"] = 4},
{["lv"] = 1,["offset"] =20, ["type"] = 4},
},
{
{["value"] = 1078414256,["offset"] =-60, ["type"] = 4,["freeze"] = true},
{["value"] = 1076029815,["offset"] =-68, ["type"] = 4,["freeze"] = true},
{["value"] = 1077860954,["offset"] =-76, ["type"] = 4,["freeze"] = true},
}
)
gg.clearResults()
gg.sleep(200)
gg.clearList()
end
----------学校----------
----------传送区----------
--/////////////////////////--
----------无CD区----------
function wcd()
  CN = gg.multiChoice({
    "医院鬼飞行技能无CD",
    "医院鬼杀人无CD",
  }, nil, nil)
  if CN == nil then
  else
  if CN[1] == true then
    yygfxjnwcd()
  end
  if CN[2] == true then
    yygsrwcd()
  end
end
FX1=0
end

function yygfxjnwcd()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "医院鬼飞行技能无CD"}, 
{["value"] = -443526824,["type"] = 4},
{["lv"] = -382908368,["offset"] =-8, ["type"] = 4},
{["lv"] = -509591551,["offset"] =4, ["type"] = 4},
},
{
{["value"] = -516948194,["offset"] =-4, ["type"] = 4,["freeze"] = false},--(-494030840D)改(-516948194D)
}
)
gg.clearResults()
end

function yygsrwcd()
gg.clearResults()
editData(
{
{["memory"] = 16384},
{["name"] = "医院鬼杀人无CD"}, 
{["value"] = -443526828,["type"] = 4},
{["lv"] = -382908368,["offset"] =-8, ["type"] = 4},
{["lv"] = -509591551,["offset"] =4, ["type"] = 4},
},
{
{["value"] = -516948194,["offset"] =-4, ["type"] = 4,["freeze"] = false},--(-494030840D)改(-516948194D)
}
)
gg.clearResults()
end
----------无CD区----------

function tcjb()
os.exit()
end


print("交流群：556286505")
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end
