function Main()
menu = gg.choice({
'稳定区',
"防封区",
'退出脚本'},
2018,'此脚本很稳定，鸟之风已上王者，禁止倒卖二改，如果你是买来的就说明你被骗了，鸟之风制作，鸟之风QQ：1796487458')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end

function A()
  SN = gg.choice({
  "1.8倍开锁（王者以上）",
"2.8倍开锁（王者以下）",
"自调开锁（太大封了别怪）",
"疾跑二倍",
"疾跑跳高60秒",
"疾跑跳高无限（用拦截)",
"透视",
"机关大师无限金币【强烈推荐】",
"逃生锁血（一些手机可能闪退）",
  "返回上一页"
 }, 2018, "稳定的哦，我都上王者了，锁血要演下")
  if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end

function B()
menu1 = gg.multiChoice({
  "游客设备解封(解封完毕自动退出,只支持官方)",
  "一键内防",
  "防封（一局一开）",
  "a内存防封",
  "大厅防封",
  "防封1", 
  "防封2【可能闪退】",
  '返回上一页'},
nil,'开变态的可以吃4～6个举报，认准鸟之风')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then fb6() end
if menu1[7] == true then b7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.toast("1.8倍开锁开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.8", gg.TYPE_FLOAT)
gg.toast("2.8倍开锁开启成功")
end



function a3()
input4 = gg.prompt({"输入你要修改的倍速，稳定的范围是1到3之间"},{[1]=3},{[1]="number"});
     gg.toast("加载数据中...")
     gg.setRanges(32)
	 gg.searchNumber("1D;4;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(input4[1], gg.TYPE_FLOAT)
	 gg.toast("加载完成")
	 gg.clearResults()
end



function a4()
gg.clearResults()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功")
  gg.clearResults()
end



function a5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("疾跑60秒开启成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("跳高60秒开启成功")
	 gg.clearResults()
end



function a6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("疾跑开启成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("跳高开启成功")
	 gg.clearResults()
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;8.0;1,082,467,303D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("透视开启成功")
end



function a8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20;20;20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end



function a9()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("锁血成功")
	 gg.clearResults()
end


function b1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("设备进行")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("逐步渐发")
gg.toast("已开启")
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("解封设备已开启")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("鸟之风科技")
gg.toast("解封")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("苏梓制作")
gg.toast("解封成功")
gg.getResults(100)
gg.editAll("123", gg.TYPE_FLOAT)
gg.toast("解封第二步")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("解封设备中")
gg.toast("加载")
gg.toast("鸟之风科技")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("解封加载中")
gg.toast("离成功有99%")
gg.toast("已成功")
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("已开启")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("会闪退")
gg.toast("会闪退")
gg.toast("会闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("小心闪退")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("有闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06", gg.TYPE_FLOAT)
gg.toast("闪退")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F",
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("有闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0001", gg.TYPE_FLOAT)
gg.toast("闪退成功")	 
gg.clearResults()
end



function b2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3", gg.TYPE_FLOAT)
gg.toast("内存防封开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("10;0.2;1;1;1;1D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("内存防封已开启")
gg.clearResults()
gg.setRanges(32)
end



function b3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("40", gg.TYPE_FLOAT)
	 gg.toast("防封（一局一开）开启成功")
	 gg.clearResults()
end



function b4()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30000~40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000~40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("a内存防封一")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4}})
	 end
	 gg.toast("a内存防封二")
	 gg.clearResults()
end



function b5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第一步成功")
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第二步成功")
gg.searchNumber("30094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第三步成功")
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第四步成功")
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第五步成功")
gg.searchNumber("32777", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第六步成功")
gg.searchNumber("30,030;30,029", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.addListItems({ -- table(bc7064f)
	[1] = { -- table(7c3f1dc)
		['address'] = 0x5f918ee0,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.addListItems({ -- table(e4732e5)
	[1] = { -- table(7f0a1ba)
		['address'] = 0x5f918ef0,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第七步成功")
gg.searchNumber("30,034", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.addListItems({ -- table(28c4fc8)
	[1] = { -- table(2bd1861)
		['address'] = 0x5f918f30,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第八步成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.4", gg.TYPE_FLOAT)
gg.toast("第九步成功")
gg.searchNumber("4.3;-0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("成功")
end



function b6()
	  gg.clearResults()	 
		 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)	 
	 gg.toast("设置中")
	 gg.toast("进度")
	 gg.toast("61%")
	 gg.toast("200%")
	 gg.toast("2000%")		 
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)	
	gg.toast("防封开启％10.")
	gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll(";0", gg.TYPE_WORD)
	gg.toast("防封开启％20")
	gg.toast("防封开启％40")
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0",gg.TYPE_WORD)
	gg.toast("删除检测中％50")	 
	 	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存防封％60")
		 gg.searchNumber("2020;-1,431,655,766",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("内存检测正在删除％90")
gg.searchNumber("2020;2019;3",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("％100防封开启成功！")	
 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封1开启成功")	 
end



function b7()
 gg.toast("获取文件中(不是删手机重要文件)")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,封号文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
gg.toast("获取成功,已删除追封文件")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("全网新防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("1小时封号文件已删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("一天封号文件已删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("七天封号文件删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("10年封号文件已删除")
	 gg.clearResults()
gg.sleep(800)
gg.toast("防封2开启成功")
end





function Exit()
print("认准鸟之风，鸟之风QQ：1796487458")
os.exit()
end
cs = "这里可以改成你的QQ"



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









