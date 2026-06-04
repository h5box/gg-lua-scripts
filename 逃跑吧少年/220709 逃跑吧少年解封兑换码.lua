function Main2()
SN = gg.multiChoice({
     "dmm20180803(点券)",
     "thanksgiving(点券)",
     "Is10ten4z7pf",
     "我填问卷我自豪(点券)",
     "白日梦又鸽新地图了",
     "小学妹最可耐",
     "虎牙搜索逃跑吧！少年",
     "抖音搜索逃跑吧！少年(点券)",
     "逃少一周岁快乐(点券)",
     "看追风杯在虎牙搜逃跑吧少年",
     "外出戴口罩，平安常相伴(点券",
     "外出戴口罩，健康常相伴(点券)",
     "设置里支持自定义键位(点券)",
     "劳动节要劳动(点券)",
     "贺逃跑吧少年抖音粉丝破50万(点券)",
     "看比赛上虎牙搜逃跑吧少年(点券)",
     "返回功能主页",
}, nil, "选择之后，它会自动将您选择的兑换码复制到您的剪贴版上")
if SN[1]==true then
     HS150()
end
if SN[2]==true then
     HS151()
end
if SN[3]==true then
     HS152()
end
if SN[4]==true then
     HS153()
end
if SN[5]==true then
     HS154()
end
if SN[6]==true then
     HS155()
end
if SN[7]==true then
     HS156()
end
if SN[8]==true then
     HS157()
end
if SN[9]==true then
     HS158()
end
if SN[10]==true then
     HS159()
end
if SN[11]==true then
     HS160()
end
if SN[12]==true then
     HS161()
end
if SN[13]==true then
     HS162()
end
if SN[14]==true then
     HS163()
end
if SN[15]==true then
     HS164()
end
if SN[16]==true then
     HS165()
end
if SN[17]==true then
     HS166()
end
FX1=0
end

function HS150()
gg.copyText("dmm20180803")
end

function HS151()
gg.copyText("thanksgiving")
end

function HS152()
gg.copyText("Is10ten4z7pf")
end

function HS153()
gg.copyText("我填问卷我自豪")
end

function HS154()
gg.copyText("白日梦又鸽新地图了")
end

function HS155()
gg.copyText("小学妹最可耐")
end

function HS156()
gg.copyText("虎牙搜索逃跑吧！少年")
end

function HS157()
gg.copyText("抖音搜索逃跑吧！少年")
end

function HS158()
gg.copyText("逃少一周岁快乐")
end

function HS159()
gg.copyText("看追风杯在虎牙搜逃跑吧少年")
end

function HS160()
gg.copyText("外出戴口罩，平安常相伴")
end

function HS161()
gg.copyText("外出戴口罩，健康常相伴")
end

function HS162()
gg.copyText("设置里支持自定义键位")
end

function HS163()
gg.copyText("劳动节要劳动")
end

function HS164()
gg.copyText("看比赛上虎牙搜逃跑吧少年")
end

function HS165()
gg.copyText("贺逃跑吧少年抖音粉丝破50万")
end

function HS166()
     Main1()
end

function Main()
SN = gg.choice({
	 "4399版本解封(桌面开启)",
	 "应用宝版本解封(桌面开启)",
	 "九游版解封(桌面开启)",
	 "其他版本解封(游戏运行时开启)",
	 "兑换码功能",
}, nil, "这仅是解设备，不是解账号被封的，如果非要解封请用嘴炮和官方说去[🐶]")
if SN==1 then
	 HS127()
end
if SN==2 then
	 HS128()
end
if SN==3 then
	 HS129()
end
if SN==4 then
	 HS130()
end
if SN==5 then
	 Main2()
end
FX1=0
end

function HS127()
WJ="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
ID = gg.prompt({[1]="请随机输入一串数字来改ID"},{[1]=""},{[1]="text"})
if ID == nil then gg.toast("您选择了取消") else
if ID[1] == "" then gg.alert("不能输入为空") end
io.open(WJ,"w"):write(ID[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end


function HS128()
	WJ2="/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
ID2 = gg.prompt({[1]="请随机输入一串数字来改ID"},{[1]=""},{[1]="text"})
if ID2 == nil then gg.alert("您选择了取消") else
if ID2[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ2,"w"):write(ID2[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function HS129()
	 WJ1="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
ID1 = gg.prompt({[1]="请随机输入一串数字来改ID"},{[1]=""},{[1]="text"})
if ID1 == nil then gg.alert("您选择了取消") else
if ID1[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ1,"w"):write(ID1[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function HS130()
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字来改ID"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end
while true do
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
    end
  if FX1 == nil then
  Main()
  end
end