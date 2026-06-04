Bx=load('return os.time{year=2099, month=2, day=11, hour=12,min=0, sec=3}')()
--year是年,month是月,day是日,hour是时,min是分,sec是秒
 if(os.time()>Bx) then
 gg.alert('脚本已过期') 
 os.exit() 
 end

function Main()
  SN = gg.multiChoice({
  "地图加速",
  "飞碟免疫",
  "龙卷风免疫",
  "导弹免疫",
  "退出脚本"
 }, nil, "欢迎加入QQ飞车科技防封群号码：934116901")
  if SN == nil then
  else
  if SN[1] == true then
   e()
  end
  if SN[2] == true then
   a()
  end
  if SN[3] == true then
   b()
  end
  if SN[4] == true then
   c()
  end
  if SN[5] == true then
   Exit()
  end
end
  XGCK = -1
end




function e()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-412,041,952.0;-1.5474134e26;1.00390625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.00390625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("1.2", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("地图加速已开启")
  gg.toast(os.date("开启时间:\n%Y年%m月%d日%H时%M分%S秒"))
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1;4;5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('4',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
end



function b()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2D;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
end

function c()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2D;1;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
end











function Exit()
print("欢迎加入群934116901")
os.exit()
end
cs = "欢迎加入QQ飞车群934116901"



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end









