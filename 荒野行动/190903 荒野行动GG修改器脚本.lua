
WOAIBENBEN=1

function BenBen()
::START::
  menu = gg.choice({'①单板显红(出生点、落地运行)','②显红+地图黑(人是姨妈红，地是黑森林)','人物爬墙(遁地后不能使用该功能)','①无限火力(步枪子弹打完剩30发再运行)','②无限火力还原(打到最后一个人必须还原)','遁地+视角一键启动(此功能相当于隐身)','①单板遁地(可爬墙 上房，不要下水，开车)','②单板遁地还原(还原时站着不能动)','③单板视角(遁地后运行)','②视角腾空(配合人物变大使用)','增加拾取范围(可贴墙捡东西)','M4A1，AK47秒杀(搜索时开几枪)','①人物变大(可主页面，落地运行)','②人物变大还原(打完在主页面还原)','无嗑药CD(等待开发处理)','地图除草(等待开发处理)','人物加速(1.7倍加速)','伏地魔加速(8倍)','一键高跳(只要不退出游戏端，可一直生效)'},nil,'1.移速问题(修改一次只要不退游戏客户端，可一直生效)   2.秒杀问题(修改一次只要不退出游戏客户端，可一直生效   3.上色功能雪地不能使用   4.该脚本大多功能已进行优化调整，少部分功能不能使用，给你带来的不便，请谅解！     (编写于2017年12月25日16:00)   荒野行动脚本版() v1.80')
  if menu == 1 then CaiTou() end
  if menu == 2 then Shangse() end
  if menu == 3 then PaQiang() end
  if menu == 4 then WuXian() end
  if menu == 5 then WuXianH() end
  if menu == 6 then DunDi() end
  if menu == 7 then KaiQiang() end
  if menu == 8 then HuiFu() end
  if menu == 9 then ShiJiao() end
  if menu == 10 then TengKong() end
  if menu == 11 then HouZuo() end
  if menu == 12 then DanJia() end
  if menu == 13 then ChuQuan() end
  if menu == 14 then HuiFuBianDa() end
  if menu == 15 then sgonehit() end
  if menu == 16 then ChuCao() end
  if menu == 17 then JiaSu() end
  if menu == 18 then AiJiaSu() end
  if menu == 19 then GaoTiao() end
end

function CaiTou()
gg.clearResults()
gg.searchNumber('6;1.6;1.2;1;1::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('500',gg.TYPE_FLOAT)
gg.toast('啊！对手变红了哎')
gg.clearResults()
gg.toast('人物终于显红了')
end

function Shangse()
gg.clearResults()
gg.searchNumber('6;1.6;1.2;1;1::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('500',gg.TYPE_FLOAT)
gg.toast('嘿！对手变红了噢')
gg.clearResults()
gg.searchNumber('6;1.6;1.2;500;500::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('0.1',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('嘿！地图变黑了噢')
end

function PaQiang()
gg.clearResults()
gg.searchNumber('1;0.01;0.2;0.3::33', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('20', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('开启爬墙')
end

function WuXian()
gg.clearResults()
gg.searchNumber('41D;30D;25D::193', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('31', gg.TYPE_DWORD)
gg.clearResults()
gg.toast('骚年，成功啦！')
end

function WuXianH()
gg.clearResults()
gg.searchNumber('41D;31D;25D::193', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('31', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_DWORD)
gg.clearResults()
gg.toast('恢复成功')
end

function DunDi()
gg.clearResults()
gg.searchNumber('1060439284;1060439284;1F;1059004885::33', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('2.95', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('1.65000021458', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('4', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('视角不灵可单开，多开几次')
end

function KaiQiang()
gg.clearResults()
gg.searchNumber('1060439284;1060439284;1F;1059004885::33', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('2.95', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('开启成功')
end

function HuiFu()
gg.clearResults()
gg.searchNumber('1060439284;1060439284;2.95F;1059004885::33', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.95', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('1', gg.TYPE_FLOAT)
gg.toast('恢复成功')
end

function ShiJiao()
gg.clearResults()
gg.searchNumber('1.65000021458', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('15', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('开启成功')
end

function TengKong()
gg.clearResults()
gg.searchNumber('1.65000021458', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('250', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('开启成功')
end

function HouZuo()
gg.clearResults()
gg.searchNumber('0.01999999955;2::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('10', gg.TYPE_FLOAT)
gg.toast('开启成功')
end

function DanJia()
gg.clearResults()
gg.searchNumber('1;1;5;3D;2.3125F;1.75F;0.8e', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('999', gg.TYPE_DOUBLE)
gg.toast('秒杀已开启')
end

function ChuQuan()
gg.clearResults()
gg.searchNumber('1.875F;1;0.5;1.75F::40', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('15', gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast('开启成功')
end

function HuiFuBianDa()
gg.clearResults()
gg.searchNumber('1.875F;15;0.5;1.75F::40', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('15', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('1', gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast('恢复成功')
end
function sgonehit()
gg.clearResults()
gg.searchNumber('1075970048;1075838976;1075314688;1074266112::300',
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_DWORD)
gg.clearResults()
gg.toast('开启成功')
end

function ChuCao()
gg.clearResults()
gg.searchNumber('120;10', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('120', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(120)
gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('开启成功')
end

function JiaSu()
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('1.7', gg.TYPE_DOUBLE)
gg.toast('加速开启')
gg.clearResults()
end

function AiJiaSu()
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('8', gg.TYPE_DOUBLE)
gg.toast('加速开启')
gg.clearResults()
end


function GaoTiao()
gg.clearResults()
gg.searchNumber('-5;-10;1;0.2;-1D::150', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('14', gg.TYPE_FLOAT)
gg.toast('高跳开启')
gg.clearResults()
end

gg.clearResults()
function XiuFu()
menu = gg.choice({'1.点击修复'},nil,'白屏修复')
  if menu == 1 then BaiPing() end
end

function BaiPing()
os.remove("/storage/emulated/0/Android/data/com.netease.hyxd/files/LocalData/Config")
	gg.toast('已修复，请重启游戏')
end


function Main()
  menu1 = gg.choice({'1.使用点击这里','2.点击修复白屏','3.点击这里退出'},nil,'\nQQ群314395407有问题联系我\n本脚本纯属原创，防止盗版，本脚本永久更新，荒野不倒，陪你到老！感谢大家的支持，谢谢！')
  if menu1 == 1 then BenBen() end
  if menu1 == 2 then XiuFu() end
  if menu1 == 3 then Exit() end
  WOAIBENBEN=-1
end


function Exit()
  print('感谢老铁的一路支持！')
  gg.toast('欢迎使用')
  os.exit() 
end

gg.toast('欢迎使用荒野行动耀军版本')
print('(本脚本完全免费，禁止贩卖，若遇上当受骗，一切跟本人无关)')
print('QQ群314395407 有问题来找我')
while(true)
do
  
  if gg.isVisible(true) then
    WOAIBENBEN=1
    gg.setVisible(false) 
  end 
  gg.clearResults()
  if WOAIBENBEN==1 then Main() end
  
end
