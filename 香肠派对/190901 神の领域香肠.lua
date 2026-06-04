function Main()
menu = gg.choice({
"联机功能",
"娱乐功能",
"退出脚本 "},
nil,"葫芦侠三楼不定时更新 by：神の领域")
if menu == 1 then lj() end
if menu == 2 then yl() end
if menu == 3 then Exit() end
if menu == nil then print("by：神の领域") end 
end
FX=3

function lj()
menu1 = gg.multiChoice({
"三色天线（一局开一）",
"枪械白色（一局开一）",
"地图变暗（一局开一）",
"蹲下飞天",
"超级高跳",
"返回上一页"},
nil,"神域香肠派对4.0版本")
if menu1[1] == true then tx() end
if menu1[2] == true then ss() end
if menu1[3] == true then ba() end
if menu1[4] == true then ft() end
if menu1[5] == true then gt() end
if menu1[6] == true then HOME() end
end

function yl()
menu2 = gg.multiChoice({
"地图全除",
"全除关闭",
"返回上一页"},
nil,"神域香肠派对4.0版本")
if menu2[1] == true then qc() end
if menu2[2] == true then gb() end
if menu2[3] == true then HOME() end
end

function tx()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.47506189346", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("黄皮肤天线开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.47506141663", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("白皮肤天线开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.5741032362", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("黑皮肤天线开启")
gg.clearResults()
end

function gt()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.45;1.4;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("9", gg.TYPE_FLOAT)
gg.toast("超级高跳开启")
gg.clearResults()
end

function ss()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.7;0.96::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("枪械白色开启")
gg.clearResults()
end

function ba()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;0.8;10::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("地图变暗开启")
gg.clearResults()
end

function ft()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.45;1.2::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("蹲下飞天开启")
gg.clearResults()
end

function qc()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2048D;0.7::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("地图全除开启")
gg.clearResults()
end

function gb()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("25D;97D;54D;2048D;0;0D;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.7", gg.TYPE_FLOAT)
gg.toast("地图全除关闭")
gg.clearResults()
end

function Exit()
print("by：神の领域")
os.exit()
end

function HOME()
Main()
end

cs = "by：神の领域"
if gg.isVisible(true) then
gg.setVisible(false)
end
gg.clearResults()
Main()
Main()
print("by：神の领域")
os.exit()