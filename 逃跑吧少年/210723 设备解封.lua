function Main0()
SN = gg.choice({
"解封设备(全网最齐全)",
"退出脚本",
}, nil, "临时做的")
if SN==1 then
	 Main1()
end
if SN==2 then
   HS1()
end
FX1=0
end

function Main1()
FX16=1
SN = gg.choice({
"4399解封(桌面开)",
"九游解封(桌面开)",
"应用宝解封(桌面开)",
"其他版本解封(游戏运行的时候开)",
"返回主页",
},nil,"洛神")
if SN==1 then jf1() end
if SN==2 then jf2() end
if SN==3 then jf3() end
if SN==4 then jf4() end
end


function jf1()
WJ="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
ID = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID == nil then gg.toast("您选择了取消") else
if ID[1] == "" then gg.alert("不能输入为空") end
io.open(WJ,"w"):write(ID[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf2()
WJ1="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
ID1 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID1 == nil then gg.alert("您选择了取消") else
if ID1[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ1,"w"):write(ID1[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf3()
WJ2="/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
ID2 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID2 == nil then gg.alert("您选择了取消") else
if ID2[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ2,"w"):write(ID2[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf4()
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

function HS1()
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