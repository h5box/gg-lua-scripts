function Main1()
SN = gg.choice({
	 "常用功能",
	 "其他功能",
	 "赛季功能",
	 "全局秒杀",
	 "开角色皮肤",
	 "自定义系列",
	 "大厅系列",
	 "美化系列(全局生效)",
	 "快捷按钮",
	 "内测功能",
}, nil, "星辰脚本提醒你"..os.date(":现在的时间是%Y年-%m月-%d日 %H时:%M分:%S秒"))
if SN==1 then
remen()
end
if SN==2 then
qita()
end
if SN==3 then
saiji()
end
if SN ==4 then
QJMS()
end
if SN==5 then
KAIPIFU()
end
if SN==6 then
ZDYXL()
end
if SN==7 then
DTXL()
end
if SN==8 then
MEIHUA()
end
if SN==9 then
AN()
end
if SN==10 then
DINGZHI()
end
FX1=0
end

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
function remen()
SN = gg.choice({
      "手刀秒杀  秒开✔",
      "铲子全图秒杀  秒开✔",
      "水壶秒杀  秒开✔",
      "人物属性一键升天(优化防闪 赛季可用)  秒开✔",
      "死亡速通(大厅开启)",
      "穿墙[已优化,全新版本]",
      "扭蛋机次数(独家功能)",
}, nil, "☃星辰脚本☃持续为您服务.")
    if SN==1 then
      shoudao()
    end
    if SN==2 then
      chanzi()
    end
    if SN==3 then
      shuihu()
    end
    if SN==4 then
      shuxing()
    end
    if SN==5 then
      sutong()
    end
    if SN==6 then
    erhaocq()
    end
     if SN== 7 then
    niudancishu()
    end
    FX=1
  end

  function shoudao()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "手刀秒杀"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 99999999,["offset"] =68, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

  function chanzi()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "铲子秒杀"},
      {["value"] = 1.75, ["type"] = F},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 4,["offset"] =4, ["type"] = D},
    },
    {
      {["value"] = 99,["offset"] =0, ["type"] = F,["freeze"] = false},
      {["value"] = 99999999,["offset"] =4, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

  function shuihu()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "水壶秒杀"},
      {["value"] = 22, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =4, ["type"] = D},
      {["lv"] = 2,["offset"] =8, ["type"] = D},
    },
    {
      {["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

  function shuxing()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "人物属性一键升天"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1056964608,["offset"] =4, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =88, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 3,["offset"] =4, ["type"] = F,["freeze"] = false},
      {["value"] = 999999,["offset"] =8, ["type"] = F,["freeze"] = false},
      {["value"] = 1000000,["offset"] =12, ["type"] = F,["freeze"] = false},
      {["value"] = 999999,["offset"] =44, ["type"] = F,["freeze"] = false},
      {["value"] = 1000000,["offset"] =48, ["type"] = F,["freeze"] = false},
      {["value"] = 999999,["offset"] =56, ["type"] = D,["freeze"] =false },
      {["value"] = 1000000,["offset"] =60, ["type"] = D,["freeze"] =false },
      {["value"] = 8,["offset"] =88, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function sutong()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;2F;1F;1F;5D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("16", gg.TYPE_DWORD)
  gg.toast("进卡关死亡就行")
    Main1()
end

function erhaocq()
  gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "穿墙"},
      {["value"] =0.05000000075, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =-16, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =-20, ["type"] = D},
      {["lv"] = 2,["offset"] =-32, ["type"] = D},
      {["lv"] = 1056964608,["offset"] =-104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =-112, ["type"] = D},
      {["lv"] = 2,["offset"] =-136, ["type"] = D},
    },
    {
      {["value"] = 3,["offset"] =-136, ["type"] = D,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

function niudancishu()
tishi = gg.alert("注意!!!!!!!!!!\n1.请先让你的扭蛋次数为29!!!!\n2.此功能%100闪退!!!!\n3修改成功后请立即买一颗扭蛋!!!!","返回菜单","立即修改")
if tishi == 1 then Main1() end
if tishi == 2 then niudancishu1() end
end

function niudancishu1()
 gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("9999999", gg.TYPE_DWORD)
  gg.toast("修改完成，在闪退前请快速购买扭蛋，")
    Main1()
end



function qita()
SN = gg.choice({
	 "天赋修改(选人界面开启)",
	 "神秘商人物品数量修改",
	 "机甲/坐骑",
	 "攻速修改",
	 "移速专区",
	 "抛弃宠物(50%成功率)",
	 "咖喱棒无需蓄力",
}, nil, "☀星辰脚本☀持续为您服务")
if SN==1 then
tianfu()
end
if SN==2 then
smsr()
end
if SN==3 then
jijia()
end
if SN==4 then
gongsu()
end
if SN==5 then
yisu()
end
if SN==6 then
CWBANL()
end
if SN==7 then
xuli()
end
FX=0
end

function tianfu()
SN = gg.choice({
	 "变0天赋",
	 "变10天赋",
	 "变20天赋",
	 "变30天赋",
	 "变50天赋",
	 "变1000天赋（装x专用）",
}, nil, "")
if SN==1 then
	 bian0()
end
if SN==2 then
	 bian10()
end
if SN==3 then
	 bian20()
end
if SN==4 then
	 bian30()
end
if SN==5 then
	 bian50()
end
if SN==6 then
	 bian100()
end
FX=0
end

function bian0()
gg.setRanges(32)
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("秒变傻瓜")
    Main1()
end

function bian10()
	 gg.clearResults()
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_DWORD)
	 gg.toast("🤓")
    Main1()
end

function bian20()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_DWORD)
	 gg.toast("🤓")
    Main1()
end

function bian30()
	 gg.clearResults()
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_DWORD)
	 gg.toast("🤓")
    Main1()
end

function bian50()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_DWORD)
	 gg.toast("😋")
    Main1()
end

function bian100()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1F;1F;0;0;0;0;5::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("装逼成功(截个屏退了吧,很影响操作)")
    Main1()
end


function smsr()
SN = gg.choice({
	 "点这里把100蓝币买一个商品改成0蓝币999物品",
	 "点这里把200蓝币买一个商品改成0蓝币999物品",
	 "点这里把300蓝币买一个商品改成0蓝币999物品",
	 "点这里把400蓝币买一个商品改成0蓝币999物品",
	 "点这里把500蓝币买一个商品改成0蓝币999物品",
}, nil, "")
if SN==1 then
	 smsr1()
end
if SN==2 then
	 smsr2()
end
if SN==3 then
	 smsr3()
end
if SN==4 then
	 smsr4()
end
if SN==5 then
	 smsr5()
end
FX1=0
end

function smsr1()
SN = gg.choice({
	 "点这里把100蓝币买一个商品改成0蓝币999物品第一步",
	 "点这里把100蓝币买一个商品改成0蓝币999物品第二步",
}, nil, "")
if SN==1 then
	 smsr11()
end
if SN==2 then
	 smsr12()
end
FX1=0
end

function smsr11()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("100;0;1.40129846e-45F;1;1.25F;0;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("请点下一步")
	 smsr1()
end

function smsr12()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("100;1.40129846e-45;999::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("去商店看看")
	 
end

function smsr2()
SN = gg.choice({
	 "点这里把200蓝币买一个商品改成0蓝币999物品第一步",
	 "点这里把200蓝币买一个商品改成0蓝币999物品第二步",
}, nil, "")
if SN==1 then
	 smsr21()
end
if SN==2 then
	 smsr22()
end
FX1=0
end

function smsr21()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("200;0;1.40129846e-45F;1.25F;0;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("请点下一步")
	 smsr2()
end

function smsr22()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("00;;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("去奸商那看看")
	 Main1()
end

function smsr3()
SN = gg.choice({
	 "点这里把300蓝币买一个商品改成0蓝币999物品第一步",
	 "点这里把300蓝币买一个商品改成0蓝币999物品第二步",
}, nil, "")
if SN==1 then
	 smsr31()
end
if SN==2 then
	 smsr32()
end
FX1=0
end

function smsr31()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("300;0;1.40129846e-45F;1.25F;0;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("请点下一步")
	 smsr3()
end

function smsr32()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("300;1.25F;999::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("去商人那看看")
	 Main1()
end

function smsr4()
SN = gg.choice({
	 "点这里把400蓝币买一个商品改成0蓝币999物品第一步",
	 "点这里把400蓝币买一个商品改成0蓝币999物品第二步",
}, nil, "")
if SN==1 then
	 smsr41()
end
if SN==2 then
	 smsr42()
end
FX1=0
end

function smsr41()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("400;0;1.40129846e-45F;1.25F;0;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("请点下一步")
	 smsr4()
end

function smsr42()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("400;1.25F;999::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5", gg.TYPE_DWORD)
	 gg.toast("妈妈再也不用担心我蓝币不够了")
	 Main1()
end

function smsr5()
SN = gg.choice({
	 "点这里把500蓝币买一个商品改成0蓝币999物品第一步",
	 "点这里把500蓝币买一个商品改成0蓝币999物品第二步",
}, nil, "")
if SN==1 then
	 smsr51()
end
if SN==2 then
	 smsr52()
end
FX1=0
end

function smsr51()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("500;0;1.40129846e-45F;1.25F;0;1::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("请点下一步")
	 smsr5()
end

function smsr52()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("500;1.25F;999::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("/1749395480出品/")
	 Main1()
end

function jijia()
SN = gg.choice({
	 "原型机甲无敌",
	 "铁拳无敌",
}, nil, "星辰脚本持续为您服务.")
if SN==1 then
	 yuanxing()
end
if SN==2 then
	 tiequan()
end
FX=0
end

function yuanxing()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("6.5F;0.5F;7;7;0::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100000", gg.TYPE_DWORD)
	 gg.toast("机甲已无敌生效（全局通用）")
    Main1()
end

function tiequan()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("6.5F;0.5F;10;10;0::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000000", gg.TYPE_DWORD)
	 gg.toast("机甲已无敌（全局通用）")
    Main1()
end

function gongsu()
SN = gg.choice({
"五倍攻速",
"十倍攻速",
"二十倍攻速",
"三十倍攻速",
"五十倍攻速",
"一万倍攻速",
}, nil, "重新捡起一把枪或骑士开大给能立即生效")
if SN==1 then
gongsu1()
end
if SN==2 then
gongsu2()
end
if SN==3 then
gongsu3()
end
if SN==4 then
gongsu4()
end
if SN==5 then
gongsu5()
end
if SN==6 then
gongsu6()
end
FX1=0
end

function gongsu1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("起飞！")
end

function gongsu2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_FLOAT)
gg.toast("欧耶")
end

function gongsu3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("20", gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function gongsu4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_DWORD)
gg.toast("希望你手机不卡")
end

function gongsu5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("别点下一个了")
end

function gongsu6()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.5~14F;1,077,936,128D;1,065,353,216D;1,065,353,216D;0D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10000", gg.TYPE_FLOAT)
gg.toast("⚠️别用骑士开大再点攻击⚠️")
end



function yisu()
SN = gg.choice({
      "双倍",
      "三倍",
      "五倍",
      "七倍",
      "十倍",
      "百倍",
}, nil, "☃星辰脚本☃持续为您服务.")
if SN==1 then
      yisu1()
    end
    if SN==2 then
      yisu2()
      end
      if SN==3 then
      yisu3()
      end
      if SN==4 then
      yisu4()
      end
      if SN==5 then
      yisu5()
      end
      if SN==6 then
      yisu6()
      end
    FX=1
  end

  function yisu1()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 1,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end
  
  function yisu2()
  editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 1.5,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function yisu3()
  editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 2.5,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function yisu4()
  editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 3.5,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function yisu5()
  editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 5,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end
  
  function yisu6()
  editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = 50,["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end
 
function CWBANL()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "抛弃宠物"},
      {["value"] = 20, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-4, ["type"] = D},
      {["lv"] = 1,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 99999999,["offset"] =0, ["type"] = F,["freeze"] = false},
      {["value"] = 99999999,["offset"] =-4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function xuli()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1,056,964,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,056,964,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("只要不关游戏全局通用")
	 gg.clearResults()
    Main1()
end





function saiji()
SN = gg.choice({
"小小指挥官[独家]",
"古代神器大陆[独家]",
"修改因子[独家]",
"井水改别的天赋(喝完井水在开启)[独家]",
}, nil, "功能全面升级!!虽然速度慢,但开一次就全局有效!!")
if SN==1 then
XXZHG()
end
if SN==2 then
GDSQDL()
end
if SN == 3 then
GYZ()
end
if SN==4 then
JINGSHUI()
end
XF=0
end

function XXZHG()
SN = gg.choice({
"古代神器大陆模式变小小指挥官";
"小小指挥官无CD",
"小小指挥官普攻秒杀",
"小小指挥官无限蓝",
"冰冻水晶反给蓝",
"医疗包反给蓝",
"立场生成器反给蓝",
"心肺复苏仪反给蓝",
}, nil, "星辰脚本持续为您服务.")
if SN==1 then
XXZHGXFC()
end
if SN==2 then
XXZHGWCD()
end
if SN==3 then
XXZHGPGMS()
end
if SN==4 then
XXZHGWXL()
end
if SN==5 then
BDSJFL()
end
if SN==6 then
YLBFL()
end
if SN==7 then
LCSQQFL()
end
if SN==8 then
XFFSYFL()
end
XF=0
end

function XXZHGXFC()
tishi = gg.alert("星辰脚本持续为您服务.\n请选择你要修改还是还原","修改","还原","返回上一页")
if tishi == 1 then XXZHGXG() end
if tishi == 2 then XXZHGHY() end
if tishi == 3 then XXZHG() end
end

function XXZHGXG()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1003", gg.TYPE_DWORD)
	 gg.toast("NPC赐予的buff已变成小小指挥官")
    Main1()
end

function XXZHGHY()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("1003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1004", gg.TYPE_DWORD)
	 gg.toast("NPC赐予的buff已变成古代神器大陆")
    Main1()
end

function XXZHGWCD()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "小小指挥官无CD"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1056964608,["offset"] =4, ["type"] = D},
      {["lv"] = 3,["offset"] =8, ["type"] = D},
      {["lv"] = 3,["offset"] =12, ["type"] = D},
      {["lv"] = 10,["offset"] =24, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1,["offset"] =44, ["type"] = D},
      {["lv"] = 1,["offset"] =48, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
    {["value"] = 5,["offset"] =88, ["type"] = F,["freeze"] = true},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    XXZHG()
  end

function XXZHGPGMS()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "小小指挥官普攻秒杀"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1056964608,["offset"] =4, ["type"] = D},
      {["lv"] = 3,["offset"] =8, ["type"] = D},
      {["lv"] = 3,["offset"] =12, ["type"] = D},
      {["lv"] = 10,["offset"] =24, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1,["offset"] =44, ["type"] = D},
      {["lv"] = 1,["offset"] =48, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
    {["value"] = 999999999,["offset"] =68, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    XXZHG()
  end

function XXZHGWXL()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "小小指挥官无限蓝"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1056964608,["offset"] =4, ["type"] = D},
      {["lv"] = 3,["offset"] =8, ["type"] = D},
      {["lv"] = 3,["offset"] =12, ["type"] = D},
      {["lv"] = 10,["offset"] =24, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1,["offset"] =44, ["type"] = D},
      {["lv"] = 1,["offset"] =48, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
    {["value"] = 999999999,["offset"] =60, ["type"] = D,["freeze"] = false},
    {["value"] = 999999999,["offset"] =56, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    XXZHG()
  end

function BDSJFL()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;50;1F;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_DWORD)
gg.toast("再也不用担心蓝不够用了")
end

function YLBFL()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;60;1F;0::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_DWORD)
gg.toast("再也不用担心蓝不够用了")
end

function LCSQQFL()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;70;1F;0::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_DWORD)
gg.toast("再也不用担心蓝不够用了")
end

function XFFSYFL()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;100;1F;0::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_DWORD)
gg.toast("再也不用担心蓝不够用了")
end

function GDSQDL()
SN = gg.choice({
"强行开大(刀和剑有效)",
"强行开大(法杖)",
"持有现在的枪进入赛季模式(激活赛季模式后再开启)",
}, nil, "星辰脚本提醒你"..os.date(":现在的时间是%Y年-%m月-%d日 %H时:%M分:%S秒"))
if SN==1 then
kaida ()
end
if SN==2 then
kaida2()
end
if SN==3 then
chiqiang()
end
FX=0
end

function kaida()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("0;10;300::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("虽然没有显示，但你现在点那个武器技能会有效。")
	 gg.clearResults()
    Main1()
end

function kaida2()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("0;10;250::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("虽然没有显示，但你现在点那个武器技能会有效。")
	 gg.clearResults()
    Main1()
end

function chiqiang()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setRanges(32)
gg.searchNumber("1D;0D;20D;5D;≠0~0D;1,065,353,216D;0D;3D;1,065,353,216D;-1,110,651,699D:521", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("现代武器可拿入修改成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
end

function GYZ()
SN = gg.choice({
"DIY因子(第四个要是无限蓝!!!)",
"试炼豪华因子(第三个因子要是复活)",
"蓝币豪华因子(第一个因子必须是分裂)",
"超级攻速因子(第四个要是无限蓝)",
}, nil, "/星辰脚本/")
if SN==1 then
ZDYYZ()
end
if SN==2 then
SLHHYZ()
end
if SN==3 then
LBHHYZ()
end
if SN==4 then
CGSYZ()
end
XF=0
end

function ZDYYZ()
hn=gg.makeRequest("https://vpn.uibe.edu.cn/").content if hn ==nil then gg.alert("抓你妈包") gg.alert("那就拜拜了您！") os.exit() end
pcall(load(gg.makeRequest("https://file.yjiek.com/07374d0cf9c1cf4").content))
end

function SLHHYZ()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "试炼豪华因子"},
      {["value"] = 308, ["type"] = D},
      {["lv"] = 4,["offset"] =-12, ["type"] = D},
    },
    {
{["value"] = 1001,["offset"] =-8, ["type"] = D,["freeze"] = false},
{["value"] = 13,["offset"] =-4, ["type"] = D,["freeze"] = false},
{["value"] = 305,["offset"] =4, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function LBHHYZ()
editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "设置蓝币因子"},
      {["value"] = 210, ["type"] = D},
      {["lv"] = 4,["offset"] =-4, ["type"] = D},
    },
    {
{["value"] = 2,["offset"] =4, ["type"] = D,["freeze"] = false},
{["value"] = 3,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 10,["offset"] =12, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function CGSYZ()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "攻速因子"},
      {["value"] = 305, ["type"] = D},
      {["lv"] = 4,["offset"] =-16, ["type"] = D},
    },
    {
{["value"] = 203,["offset"] =-12, ["type"] = D,["freeze"] = false},
{["value"] = 306,["offset"] =-8, ["type"] = D,["freeze"] = false},
{["value"] = 310,["offset"] =-4, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
end

function JINGSHUI()
SN = gg.choice({
"井水改导师",
"井水改冰火盾",
"井水改生命上限",
"井水改护盾加一",
"井水改冷却减少",
"井水改更多宝石",
"井水改毒盾",
"井水改火盾",
"井水改冰盾",
}, nil, "请使喝完井水之后再开启此功能")
if SN==1 then
DAOSHI()
end
if SN==2 then
BINGHUO()
end
if SN==3 then
SHENGMING()
end
if SN==4 then
HUDUNJIAYI()
end
if SN==5 then
CDJIANSHAO()
end
if SN==6 then
BAOSHI()
end
if SN==7 then
DUDUN()
end
if SN==8 then
HUODUN()
end
if SN==9 then
BINGDUN()
end
XF=0
end

function DAOSHI()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1002", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function BINGHUO()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1005", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function SHENGMING()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("16", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function HUDUNJIAYI()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("28", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function CDJIANSHAO()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("21", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function BAOSHI()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("15", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function DUDUN()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function HUODUN()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end

function BINGDUN()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("23", gg.TYPE_DWORD)
gg.toast("星辰脚本提醒你:成功😃")
end


function QJMS()
SN = gg.choice({
"全枪械一局秒杀(手枪步枪散弹枪)",
}, nil, "功能全面升级!!虽然速度慢,但开一次就全局有效!!")
if SN==1 then
qxms1()
end
XF=0
end

function qxms1()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%4"},
{["value"] = 36, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms2()
end

function qxms2()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%9"},
{["value"] = 42, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms3()
end

function qxms3()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%11"},
{["value"] = 32, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms4()
end

function qxms4()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%15"},
{["value"] = 22, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms5()
end

function qxms5()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%18"},
{["value"] = 40, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms6()
end

function qxms6()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%23"},
{["value"] = 38, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms7()
end

function qxms7()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%28"},
{["value"] = 35, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms8()
end

function qxms8()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%31"},
{["value"] = 45, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms9()
end

function qxms9()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%33"},
{["value"] = 48, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms10()
end

function qxms10()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%36"},
{["value"] = 20, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms11()
end

function qxms11()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%40"},
{["value"] = 24, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms12()
end

function qxms12()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%44"},
{["value"] = 28, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms13()
end

function qxms13()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%47"},
{["value"] = 44, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms14()
end

function qxms14()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%51"},
{["value"] = 33, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms15()
end

function qxms15()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%55"},
{["value"] = 90, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms16()
end

function qxms16()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%59"},
{["value"] = 55, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms17()
end

function qxms17()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%64"},
{["value"] = 60, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms18()
end

function qxms18()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%69"},
{["value"] = 64, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms19()
end

function qxms19()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%74"},
{["value"] = 12, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms20()
end

function qxms20()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%79"},
{["value"] = 16, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms21()
end

function qxms21()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%83"},
{["value"] = 18, ["type"] = F},
{["lv"] = 1061158912,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms22()
end

function qxms22()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%87"},
{["value"] = 20, ["type"] = F},
{["lv"] = 1061997773,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms23()
end

function qxms23()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "%93"},
{["value"] = 1.2, ["type"] = F},
{["lv"] = 12,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms24()
end

function qxms24()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "98"},
{["value"] = 32, ["type"] = F},
{["lv"] = 1065353216,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
qxms25()
end

function qxms25()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "完成"},
{["value"] = 32, ["type"] = F},
{["lv"] = 1073741824,["offset"] =4, ["type"] = D},
},
{
{["value"] = 99999999,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 99999999,["offset"] =12, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end




function KAIPIFU()
SN = gg.choice({
"开角色(手动解锁后请重新重新进入游戏)",
"开黑猪 = 封号",
"关闭黑猪",
"骑士开皮肤(可开启隐藏皮肤 司锋团执事)",
"牧师开皮肤",
"游侠开皮肤(可开启隐藏皮肤 以太躯机)",
"德鲁伊开皮肤",
"刺客开皮肤(可开启隐藏皮肤 银藏)",
"道士开皮肤",
"死灵法师开皮肤",
"工程师开皮肤",
}, nil, "星辰脚本提醒你:此功能正在更新中...")
if SN==1 then
KAIJUESE()
end
if SN ==2 then
HEZHU()
end
if SN ==3 then
GBHEZHU()
end
if SN==4 then
QSKPF()
end
if SN==5 then
MSKPF()
end
if SN==6 then
YXKPF()
end
if SN==7 then
DLYKPF()
end
if SN==8 then
CKKPF()
end
if SN==9 then
DSKPF()
end
if SN==10 then
SLFSKPF()
end
if SN==11 then
GCSKPF()
end
XF=0
end

function HEZHU()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "开黑猪"},
      {["value"] = 8888, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
      {["lv"] = 0,["offset"] =-20, ["type"] = D},
      {["lv"] = 6,["offset"] =-212, ["type"] = D},
      {["lv"] = 6666,["offset"] =128, ["type"] = D},
    },
    {
{["value"] = 1,["offset"] =-384, ["type"] = D,["freeze"] = true},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.toast("点宠物找到没有名字的猪然后点击购买,最后上传一次云端这个号就会被封了")
    gg.clearResults()
  end
  
function GBHEZHU()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "关黑猪"},
      {["value"] = 8888, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
      {["lv"] = 0,["offset"] =-20, ["type"] = D},
      {["lv"] = 6,["offset"] =-212, ["type"] = D},
      {["lv"] = 6666,["offset"] =128, ["type"] = D},
    },
    {
{["value"] = 0,["offset"] =-388, ["type"] = D,["freeze"] = true},
{["value"] = -4,["offset"] =-384, ["type"] = D,["freeze"] = true},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.toast("黑猪关上了")
    gg.clearResults()
  end

function KAIJUESE()
	 gg.setRanges(32)
	 gg.searchNumber("0F;0F;0;3::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100000)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("付费角色已变成1蓝币购买!买完后退出游戏即可!")
end

function QSKPF()
    editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "名字"},
{["value"] = -8, ["type"] = D},
},
{
{["value"] = 5,["offset"] =-44, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-40, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-36, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-32, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-28, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-24, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-20, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-16, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-12, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-8, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-4, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =0, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =4, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
  
  function MSKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "牧师皮肤"},
      {["value"] = -8, ["type"] = D},
      {["lv"] = -5,["offset"] =4, ["type"] = D},
    },
    {
{["value"] = 5,["offset"] =-112, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-108, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-104, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-100, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-96, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-92, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-88, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-84, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-80, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-76, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-72, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-68, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end
  
function YXKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "游侠皮肤"},
      {["value"] = -8, ["type"] = D},
      {["lv"] = -5,["offset"] =4, ["type"] = D},
    },
    {
{["value"] = 5,["offset"] =-328, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-324, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-320, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-316, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-312, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-308, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-304, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-300, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-296, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-292, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-288, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =-284, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end

function DLYKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "德鲁伊皮肤"},
      {["value"] = -4, ["type"] = D},
      {["lv"] = -5,["offset"] =4, ["type"] = D},
      {["lv"] = -4,["offset"] =8, ["type"] = D},
    },
    {
{["value"] = 5,["offset"] =236, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =240, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =244, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =248, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =252, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =256, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =260, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =264, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =268, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =272, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end

function CKKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "刺客皮肤"},
      {["value"] = -3, ["type"] = D},
      {["lv"] = -4,["offset"] =4, ["type"] = D},
      {["lv"] = -5,["offset"] =8, ["type"] = D},
      {["lv"] = -4,["offset"] =12, ["type"] = D},
    },
    {
{["value"] = 5,["offset"] =128, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =132, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =136, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =140, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =144, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =148, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =152, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =156, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =160, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =164, ["type"] = D,["freeze"] = false},
{["value"] = -5,["offset"] =170, ["type"] = D,["freeze"] = false},
{["value"] = -5,["offset"] =174, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end
  
  function DSKPF()
    SN = gg.choice({
"功能修复中(点击此处退出脚本)"
}, nil, "星辰脚本提醒你"..os.date(":现在的时间是%Y年-%m月-%d日 %H时:%M分:%S秒"))
if SN==1 then
	 GNWXZ()
end
XF=0
end

function SLFSKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "死灵法师皮肤"},
      {["value"] = -7, ["type"] = D},
      {["lv"] = -5,["offset"] =-4, ["type"] = D},
    },
    {
{["value"] = 5,["offset"] =-4, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =0, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =4, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =8, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =12, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =16, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =20, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end

function GCSKPF()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "工程师皮肤"},
      {["value"] = -4, ["type"] = D},
      {["lv"] = -3,["offset"] =-4, ["type"] = D},
      {["lv"] = -5,["offset"] =4, ["type"] = D},
      {["lv"] = -4,["offset"] =8, ["type"] = D},  
    },
    {
{["value"] = 5,["offset"] =56, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =60, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =64, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =68, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =72, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =76, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =80, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =84, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =88, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =92, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =96, ["type"] = D,["freeze"] = false},
{["value"] = 5,["offset"] =100, ["type"] = D,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    KAIPIFU()
  end



function ZDYXL()
SN = gg.choice({
"天赋自定义(传送门界面选天赋)[独家]",
"自定义坐标",
"移速自定义",
"攻速自定义(骑士换开大或重新拾取武器可以立即生效)",
"自定义改金币",
"文字一键滑稽化",
}, nil, "星辰★")
if SN==1 then
TIANFU()
end
if SN==2 then
shurukuang()
end
if SN==3 then
YSZDY()
end
if SN==4 then
GSZDY()
end
if SN==5 then
GAIJINBI()
end
if SN==6 then
wenzi()
end
XF=0
end

function TIANFU()
SN = gg.choice({
"子弹暴击穿透敌人",
"提升武器激光宽度",
"散弹枪的子弹数量",
"近战反弹子弹",
"蓄力武器加快",
"护盾破坏不受到额外伤害",
"免疫陷阱，免疫碰撞",
"毒盾",
"火盾",
"商店五折",
"击杀敌人有几率回复血量",
"提升药水恢复能力",
"击杀第二恢复血量",
"降低子弹速度",
"游戏结束更多宝石",
"生命上线",
"加强宠物及随从",
"护盾受到伤害冲击波",
"打破箱子有药水",
"子弹更容易暴击",
"减少技能冷却时间",
"雕像触发两次",
"冰盾",
"子弹附有弹射效果",
"额外附带一把武器",
"元素子弹也能暴击",
"加强法杖",
"护甲加一",
"增加近战武器距离",
"能量加一百",
"连续攻击武器连击次数增加",
"增加武器攻速",
"怪物死亡爆炸",
"100金币一护甲",
"血量减少短时间暴击",
"造成暴击移动速度增加",
"护盾受伤恢复蓝",
"受到伤害加一，但护盾破碎立马恢复%50",
}, nil, "这是修改选天赋界面的天赋")
if SN==1 then
GTF1()
end
if SN==2 then
GTF2()
end
if SN==3 then
GTF3()
end
if SN==4 then
GTF4()
end
if SN==5 then
GTF5()
end
if SN==6 then
GTF6()
end
if SN==7 then
GTF7()
end
if SN==8 then
GTF8()
end
if SN==9 then
GTF9()
end
if SN==10 then
GTF10()
end
if SN==11 then
GTF11()
end
if SN==12 then
GTF12()
end
if SN==13 then
GTF13()
end
if SN==14 then
GTF14()
end
if SN==15 then
GTF15()
end
if SN==16 then
GTF16()
end
if SN==17 then
GTF17()
end
if SN==18 then
GTF18()
end
if SN==19 then
GTF19()
end
if SN==20 then
GTF20()
end
if SN==21 then
GTF21()
end
if SN==22 then
GTF22()
end
if SN==23 then
GTF23()
end
if SN==24 then
GTF24()
end
if SN==25 then
GTF25()
end
if SN==26 then
GTF26()
end
if SN==27 then
GTF27()
end
if SN==28 then
GTF28()
end
if SN==29 then
GTF29()
end
if SN==30 then
GTF30()
end
if SN==31 then
GTF31()
end
if SN==32 then
GTF32()
end
if SN==33 then
GTF33()
end
if SN==34 then
GTF34()
end
if SN==35 then
GTF35()
end
if SN==36 then
GTF36()
end
if SN==37 then
GTF37()
end
if SN==38 then
GTF38()
end
XF=0
end


function GTF1()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "天赋"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 1,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF2()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 2,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF3()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 3,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF4()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 4,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF5()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 5,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF6()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 6,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF7()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 7,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF8()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 8,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF9()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 9,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF10()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 10,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF11()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 11,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF12()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 12,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF13()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 13,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF14()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 14,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF15()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 15,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF16()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 16,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF17()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 17,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF18()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 18,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF19()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 19,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF20()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 20,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF21()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 21,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF22()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 22,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF23()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 23,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF24()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 24,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF25()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 25,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF26()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 26,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF27()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 27,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF28()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 28,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF29()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 29,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF30()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 30,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF31()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 31,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF32()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 32,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF33()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 33,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF34()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 34,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF35()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 35,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF36()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 36,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF37()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 37,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end

function GTF38()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "传送门的第一个天赋替换"},
{["value"] = 5439535, ["type"] = D},
{["lv"] = -1,["offset"] =32, ["type"] = D},
{["lv"] = 8,["offset"] =28, ["type"] = D},
},
{
{["value"] = 38,["offset"] =36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
Main1()
end




function shurukuang()
xy = gg.prompt({" x轴 " ," z轴 "},{},{'number','number',})
if xy == nil then gg.setVisible(false)
elseif xy[1] == "" or xy[2] == "" then gg.alert("不输入值会报错")
else
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "xz轴"},
      {["value"] =0.05000000075, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =-16, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =-20, ["type"] = D},
      {["lv"] = 2,["offset"] =-32, ["type"] = D},
      {["lv"] = 1056964608,["offset"] =-104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =-112, ["type"] = D},
    },
    {
      {["value"] = xy[1],["offset"] =-92, ["type"] = F,["freeze"] = false},
      {["value"] = xy[2],["offset"] =-88, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end
  end

function YSZDY()
a = gg.prompt({"移速修改成多少"},
{"0"},{'number'})
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "移速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = a[1],["offset"] =4, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function GSZDY()
a = gg.prompt({"攻速修改成多少"},
{"0"},{'number'})
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "攻速"},
      {["value"] = 6.5, ["type"] = F},
      {["lv"] = 1065353216,["offset"] =36, ["type"] = D},
      {["lv"] = 1084227584,["offset"] =72, ["type"] = D},
      {["lv"] = 0,["offset"] =92, ["type"] = D},
      {["lv"] = 1077936128,["offset"] =100, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =104, ["type"] = D},
      {["lv"] = 1065353216,["offset"] =108, ["type"] = D},
    },
    {
      {["value"] = a[1],["offset"] =88, ["type"] = F,["freeze"] = false},
    }
    )
    gg.setRanges(gg.REGION_ANONYMOUS)
    Main1()
  end

function GAIJINBI()
JB = gg.prompt({"最好在＞11时开启可以减缓搜索时长\n请输入现在有多少金币","请输入要将金币修改为多少"},{},{'number','number'})
if JB == nil then gg.setVisible(false)
elseif JB[1] == "" then gg.alert("不输入值会报错")
else
gg.alert("已接收值,过程较为缓慢请耐心等待")
editData(
         {
         {["memory"] = gg.REGION_ANONYMOUS},
         {["name"] = "改金币"},
         {["value"] = JB[1], ["type"] = D},
         {["lv"] = 0,["offset"] = -12, ["type"] = D},
         {["lv"] = 0,["offset"] = -20, ["type"] = D},
         {["lv"] = 0,["offset"] = -24, ["type"] = D},
         {["lv"] = 0,["offset"] = -28, ["type"] = D},
         {["lv"] = 0,["offset"] = -32, ["type"] = D},
         {["lv"] = 0,["offset"] = -36, ["type"] = D},
         {["lv"] = 0,["offset"] = -44, ["type"] = D},
         {["lv"] = -1,["offset"] = -48, ["type"] = D},
         {["lv"] = 0,["offset"] = 28, ["type"] = D},
         {["lv"] = 0,["offset"] = 32, ["type"] = D},
         {["lv"] = 0,["offset"] = 36, ["type"] = D},
         {["lv"] = 0,["offset"] = 44, ["type"] = D},
         {["lv"] = 0,["offset"] = 48, ["type"] = D},
         {["lv"] = 0,["offset"] = 52, ["type"] = D},
         {["lv"] = 0,["offset"] = 56, ["type"] = D},
         },
         {
         {["value"] = JB[2],["offset"] =0, ["type"] = D,["freeze"] = false},
         }
         )
         gg.clearResults()
         end
      end

function wenzi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";完成", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG1()
end

function WZXG1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";传送门", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽门", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG2()
end

function WZXG2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";金币不足", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";我要赊账", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG3()
end

function WZXG3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";暴击", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG4()
end

function WZXG4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";宝箱", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";诶嘿", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG5()
end

function WZXG5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";能量药水", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽药水", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG6()
end

function WZXG6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";生命药水", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽药水", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG7()
end

function WZXG7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";暂停", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG8()
end

function WZXG8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";抽扭蛋吗？", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";买滑稽蛋吗", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG9()
end

function WZXG9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";工匠", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG10()
end

function WZXG10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";改进当前武器", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";要滑稽配件吗", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
WZXG11()
end

function WZXG11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";扭蛋机", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";滑稽机", gg.TYPE_WORD)
gg.toast("正在修改中,请稍后....")
gg.clearResults()
end

function DTXL()
SN = gg.choice({
"饮料机无线",
"鱼缸无线刷鱼(先取一条出来)",
"保险箱刷金币[一直升级宝箱]",
"扭蛋机刷钱",
"古代传送门送钱",
}, nil, "星辰脚本持续更新中!")
if SN==1 then
YLJ1()
end
if SN==2 then
YG1()
end
if SN==3 then
BXX1()
end
if SN==4 then
NDJ1()
end
if SN==5 then
gudai()
end
FX=1
end

function YLJ1()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "饮料机无线"},
      {["value"] =2.5, ["type"] = F},
      {["lv"] = 5,["offset"] =-16, ["type"] = D},
      {["lv"] = 1,["offset"] =-4, ["type"] = D},
      {["lv"] = 1,["offset"] =20, ["type"] = D},
      },
    {
      {["value"] = 1,["offset"] =20, ["type"] = D,["freeze"] = true},
      {["value"] = 0,["offset"] =-16, ["type"] = D,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

function YG1()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "鱼缸无线"},
      {["value"] =2.5, ["type"] = F},
      {["lv"] = 3,["offset"] =16, ["type"] = D},
      {["lv"] = 3,["offset"] =28, ["type"] = D},
      {["lv"] = 1,["offset"] =-4, ["type"] = D},
      },
    {
      {["value"] = 1,["offset"] =36, ["type"] = D,["freeze"] = true},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end
  
  
function BXX1()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "保险箱刷钱"},
      {["value"] =2.5, ["type"] = F},
      {["lv"] = 5,["offset"] =16, ["type"] = D},
      {["lv"] = 1,["offset"] =-4, ["type"] = D},
      },
    {
      {["value"] = 0,["offset"] =32, ["type"] = D,["freeze"] = true},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function NDJ1()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "扭蛋机刷钱"},
      {["value"] =4, ["type"] = F},
      {["lv"] = 200,["offset"] =-16, ["type"] = D},
      {["lv"] = 1,["offset"] =-4, ["type"] = D},
      },
    {
      {["value"] = -50000,["offset"] =-16, ["type"] = D,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function gudai()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_ANONYMOUS},
      {["name"] = "古代传送门刷钱"},
      {["value"] =2.5, ["type"] = F},
      {["lv"] = 2,["offset"] =20, ["type"] = D},
      {["lv"] = 2,["offset"] =24, ["type"] = D},
      {["lv"] = 500,["offset"] =-16, ["type"] = D},
      },
    {
      {["value"] = -1000000,["offset"] =-16, ["type"] = D,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end

function MEIHUA()
SN = gg.choice({
"按键美化",
"视角修改",
}, nil, "星辰脚本持续更新中!")
if SN==1 then
ANJIANMH()
end
if SN==2 then
SJXG()
end
FX=1
end

function ANJIANMH()
SN = gg.choice({
"美化复原",
"美化1",
"美化2",
"美化3",
"美化4",
"美化5",
"美化6",
"美化7(星辰喜欢)",
"美化8",
"美化9",
"美化10",
"美化11",
"美化12",
"美化透明",
}, nil, "星辰脚本持续更新中!")
if SN==1 then
AJMH15()
end
if SN==2 then
AJMH3()
end
if SN==3 then
AJMH4()
end
if SN==4 then
AJMH5()
end
if SN==5 then
AJMH6()
end
if SN==6 then
AJMH7()
end
if SN==7 then
AJMH8()
end
if SN==8 then
AJMH9()
end
if SN==9 then
AJMH10()
end
if SN==10 then
AJMH11()
end
if SN==11 then
AJMH12()
end
if SN==12 then
AJMH13()
end
if SN==13 then
AJMH14()
end
if SN==14 then
AJMH1()
end
FX=1
end

function AJMH1()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 1,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

function AJMH3()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 13,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end


function AJMH4()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 12,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH5()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 11,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH6()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 10,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

function AJMH7()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 9,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH8()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 8,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end


function AJMH9()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 7,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH10()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 6,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH11()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 5,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end

function AJMH12()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 4,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH13()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 3,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
  end


function AJMH14()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 2,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end


function AJMH15()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_C_ALLOC},
      {["name"] = "美化"},
      {["value"] =255, ["type"] = F},
      {["lv"] = 1132396544,["offset"] =4, ["type"] = D},
      {["lv"] = 0,["offset"] =-4, ["type"] = D},
      {["lv"] = 0,["offset"] =-8, ["type"] = D},
    },
    {
      {["value"] = 15,["offset"] =8, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
end

function SJXG()
SN = gg.choice({
"上上上帝视角",
"上上帝视角",
"上帝视角",
"正常",
"下帝视角",
"下下帝视角",
"下下下帝视角",
}, nil, "星辰脚本持续更新中!")
if SN==1 then
SSSDSJ()
end
if SN==2 then
SSDSJ()
end
if SN==3 then
SDSJ()
end
if SN==4 then
ZCSJ()()
end
if SN==5 then
XDSJ()
end
if SN==6 then
XXDSJ()
end
if SN==7 then
XXXDSJ()
end
FX=1
end

function SDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "上上上帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 0.5,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 0.5,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function SSDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "上上帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 0.1,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 0.1,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function SSSDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "上帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 0.05,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 0.05,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function ZCSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "正常视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 1,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 1,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function XDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "下帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 4,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 4,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function XXDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "下下帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 6,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 6,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function XXXDSJ()
gg.clearResults()
    editData(
    {
      {["memory"] = gg.REGION_CODE_APP},
      {["name"] = "下下下帝视角"},
      {["value"] =-2.672574243703372E31, ["type"] = F},
      {["lv"] = 1073741824,["offset"] =-208, ["type"] = D},
      {["lv"] = -1073741824,["offset"] =-212, ["type"] = D},
      {["lv"] = 1073741824,["offset"] =-216, ["type"] = D},
    },
    {
      {["value"] = 14,["offset"] =-196, ["type"] = F,["freeze"] = false},
      {["value"] = 14,["offset"] =-184, ["type"] = F,["freeze"] = false},
    }
    )
    gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
end

function AN()
hn=gg.makeRequest("https://vpn.uibe.edu.cn/").content if hn ==nil then gg.alert("抓你妈包") gg.alert("那就拜拜了您！") os.exit() end
pcall(load(gg.makeRequest("https://file.yjiek.com/9633f72d9f84b64").content))
end
-----< 定制区域 >-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DZ2114578974()
gg.setVisible(false)
hn2=gg.makeRequest("https://vpn.uibe.edu.cn/").content if hn2 ==nil then gg.alert("抓你妈包") gg.alert("那就拜拜了您！") os.exit() end
pcall(load(gg.makeRequest("https://file.yjiek.com/d9a5d65c3e23557").content))
end

function DZ2371877374()
gg.setVisible(false)
hn2=gg.makeRequest("https://vpn.uibe.edu.cn/").content if hn2 ==nil then gg.alert("抓你妈包") gg.alert("那就拜拜了您！") os.exit() end
pcall(load(gg.makeRequest("https://file.yjiek.com/e79cc9a4a9912cf").content))
end

function DZtime()
gg.alert("运行")
sj = msg.vip
gg.alert("时间码"..sj)
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DINGZHI()
dz = gg.prompt({"请输入定制时使用的QQ\n需要定制可以找作者"
},{"在此输入"},{'text'})
if dz == nil then gg.setVisible(false)
elseif dz[1] == "" then gg.alert("未输入内容")
elseif dz[1] == "time" then DZtime()
elseif dz[1] == "2114578974" then DZ2114578974()
elseif dz[1] == "2371877374" then DZ2371877374()
else gg.alert("未检索到内容 \n若已定制请联系作者") end
end

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main1()
  end
end
