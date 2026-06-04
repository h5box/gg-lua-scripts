function Main()
  SN = gg.choice({
  "疯狗移速",
  "滞空控怪",
  "无限耐力",
  "安柏普工无限丢熊",
  "无敌无限耐力关闭",
  "滞空控怪关闭",
  "瞬移怪物无视你",
  "高跳",
  "高跳关闭成功可爬墙",
  "完美修复全角色无cd",
  "退出脚本"
 }, 2018, "旁路没有 隐藏2 3不然没效果 开无cd的话别开其它功能防卡进度条")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   h()
  end
  if SN == 9 then
   i()
  end
  if SN == 10 then
   j()
  end
  if SN == 11 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.0;2.0;-2.0;0.0::17',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('6',gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('256F;0.0001F::5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.0001',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("滞空控怪开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('100F;128F;400F:100',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('100F;128F;400F:100',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("无限耐力只有蓄力攻击有用")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1D;6D;2;4D::35',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('100',gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.0;6.0;-2.0;0.0::17',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('6',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('2',gg.TYPE_FLOAT)
gg.toast("恢复成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('256F;0F::5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0.0001',gg.TYPE_FLOAT)
gg.toast("恢复成功")
end



function g()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('99.0;0.05000000075;32.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('05000000075',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('11',gg.TYPE_FLOAT)
gg.toast("怪无视你开启成功")
end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1,065,965,499',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1,065,965,499',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('1099999999',gg.TYPE_DWORD)
gg.toast("点一下跳跃不要按方向键")
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1099999999',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1099999999',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('1,065,965,499',gg.TYPE_DWORD)
gg.toast("关闭成功")
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4;0;26;27;14;60::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('4;60',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 4;0;26;27;14;60,}})
end

gg.toast("开启成功")
end



function Exit()
print("有可用代码可以帖子下面分享或进群分享")
os.exit()
end
cs = ""



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









