function SS(n, type, ft, sign, r, s)
  local waring = "\n" .. "防偷窥源码"--局部变量
  gg.setVisible(false)
  gg.searchNumber(n, type, ft, sign, r, s)
  if gg.isVisible(true) then
    gg.setVisible(false)
    gg.clearResults()
gg.processKill()--结束进程
gg.getTargetPackage()
l=gg.getTargetPackage()
print('已结束:',l,'进程')
  print('⚠警告偷窥盗取他人劳动成果这样真的好吗？')
  print('检测你有窥码现象后果自负')
  print('如果你是不小心按到，请重新运行。')
  print('请下次运行时候注意了，亲，千万别打开，等运行成功。')
 os.exit()
    print(waring)
    toast(waring)
    while true do
      gg.setVisible(false)
    end
  end
end
function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end



By=[[
创作者:老杰
测试员:老杰和天染
部分源码来自By \ 战神
部分源码来源网络
]]-- 老杰签名
gg.alert(By)
--[=========================[
二改的留个版权
二改留言板
--]=========================]
function Main()
  SN = gg.multiChoice({
  "解封设备",
  "防封",
  "4399防封",
  "无限夹子",
  "酒桶全屏[扔一个再开]",
  "疾跑免费",
  "疾跑加速",
  "秒开锁",
  "全屏开锁",
  "无限疾跑+无限跳高",
  "大乱斗无限道具",
  "道具无冷却",
  "全屏医疗包",
  "追捕秒复活",
  "医疗包杀人",
  "8V2吸人",
  "4v1吸人",
  "手雷秒杀",
  "除草",
  "无限金币",
  "全屏飞爪",
  "内存防封",
  "秒开箱子",
  "范围开箱子",
  "艾可主技能全屏范围",
  "必看",
  "退出脚本"
 }, nil, "老杰QQ2150066731反馈加")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   k()
  end
  if SN[12] == true then
   l()
  end
  if SN[13] == true then
   m()
  end
  if SN[14] == true then
   n()
  end
  if SN[15] == true then
   o()
  end
  if SN[16] == true then
   p()
  end
  if SN[17] == true then
   q()
  end
  if SN[18] == true then
   r()
  end
  if SN[19] == true then
   s()
  end
  if SN[20] == true then
   t()
  end
  if SN[21] == true then
   u()
  end
  if SN[22] == true then
   v()
  end
  if SN[23] == true then
   w()
  end
  if SN[24] == true then
   x()
  end
  if SN[25] == true then
   y()
  end
  if SN[26] == true then
   z()
  end
  if SN[27] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
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
	 gg.toast("顶级科技")
	 gg.toast("解封")
	 gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.toast("战神出品")
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
	 gg.toast("战神科技")
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
	 gg.toast("会闪退哦")
	 gg.toast("你定会闪退")
	 gg.toast("这个会闪退")
	 gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("小心闪退哦")
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
	 gg.toast("有闪退的")
	 gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0001", gg.TYPE_FLOAT)
	 gg.toast("闪退成功")	 
	 gg.clearResults()
end



function b()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("防封开启成功")
end



function c()
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
	gg.toast("16进制防封开启.....................")
	gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll(";0", gg.TYPE_WORD)
	gg.toast("防封开启.............???...???..............获取文件成功..")
	gg.toast("防封开启...........获取封号文件...............")
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0",gg.TYPE_WORD)
	gg.toast("删除检测")	 
	 	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启百分之50")
		 gg.searchNumber('2020;-1,431,655,766',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast('内存检测删除成功')
gg.searchNumber('2020;2019;3',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast('内存检测删除成功')	
 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("..开启检测函数成功...")	 
	 os.exit()
end



function d()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功，请开启下一步")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无限夹子开启成功")
	 gg.clearResults()
end



function e()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1;0.01;7;4;0.02;0;0;2::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("全屏酒桶开启成功")
	 gg.clearResults()
end



function f()
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑免费"},
{["value"] = 500001, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -124, ["type"] = 4},
{["lv"] = 100, ["offset"] = -80, ["type"] = 4},
{["lv"] = 200, ["offset"] = -40, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -80, ["type"] = 4},

}
xqmnb(qmnb)
end



function g()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("疾跑加速开启成功")
	 gg.clearResults()
end



function h()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("秒开钥匙修改成功")
	 gg.clearResults()
end



function i()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1300", gg.TYPE_FLOAT)
	 gg.toast("全屏开钥匙修改成功")
	 gg.clearResults()
end



function j()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("无限跳高开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.toast("无限疾跑开启成功")
	 gg.clearResults()
end



function k()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("开启成功大乱斗无限道具")
	 gg.clearResults()
end



function l()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("111D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function m()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.2;100D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("999999",gg.TYPE_FLOAT)
gg.toast("医疗箱全屏开启成功")
gg.clearResults()
end



function n()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5;1D;100D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("追捕秒复活开启成功")
gg.clearResults()
end



function o()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("999999F;100", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("-9999",gg.TYPE_DWORD)
gg.toast("医疗箱杀人开启成功")
gg.clearResults()
end



function p()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("8v2吸人开启成功")
	 gg.clearResults()
end



function q()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("4V1吸人开启成功")
	 gg.clearResults()
end



function r()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;0.2;33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("手雷秒杀开启成功")
	 gg.clearResults()
end



function s()
qmnb = {
{["memory"] = 1048576},
{["name"] = "除草"},
{["value"] = 1669464073, ["type"] = 4},
{["lv"] = 1669466375, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669496838, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1669496841, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1669496839, ["offset"] = 32, ["type"] = 4},
{["lv"] = 7, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 60, ["type"] = 4},

}
xqmnb(qmnb)
end



function t()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("70F;444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("无限金币开启")
	 gg.clearResults()
end



function u()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F10;6.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("全屏飞爪开启成功")
	 gg.clearResults()
end



function v()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("内存防封开启成功")
	 gg.clearResults()
end



function w()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("补给箱开启成功")
	 gg.clearResults()
end



function x()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("范围开补给箱开启成功")
	 gg.clearResults()
end



function y()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;6::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("艾可主技能全屏范围开启成功")
	 gg.clearResults()
end



function z()
SN = gg.choice({
}, nil, "作者QQ2150066731快手搜索DMM丶老杰，关注一哈！")
FX1=0
FX2=0
end



function Exit()
print("退出成功")
os.exit()
end
cs = "老杰QQ2150066731"



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










