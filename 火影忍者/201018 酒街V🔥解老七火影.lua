function SHCF()
gg.alert("脚本执行中请勿触碰悬浮窗图标")
os.exit()
SHCF()
end
dog=0
CS=1 --容忍次数，0则立刻送机票
function SH_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('警告！\n请勿窥码，后果自负！')
dog = 0
CS=CS-1
end
if CS < 0 then
SHCF()
end
end


function Main()
menu = gg.choice({
'内存防封',
'决斗场',
'副本类',
'幻境类',
'积分赛',
'忍者类',
'代码本',
'破解脚本🔥酒街V🔥开源发快猫🔥🔥🔥🔥🔥'},
2020,'❗️所有功能都必须搭配作者防封使用，所有公告请认真阅读，否则必封无疑，尊重版权，禁止二改倒卖，酒街V火影🔥群:685831105❗️,')
if menu == 1 then ff() end
if menu == 2 then X() end
if menu == 3 then B() end
if menu == 4 then hj() end
if menu == 5 then C() end
if menu == 6 then D() end
if menu == 7 then E() end
if menu == 8 then Exit() end
XGCK=-1
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) SH_searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function X()
menu1 = gg.multiChoice({
'全屏第一步',
'全屏第二步',
'全屏第三步',
'返回上一页'},
nil,'❗️三步骤可同步开启（必须搭配防封）大厅开启')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


xbg="0.7"
function B()
menu1 = gg.multiChoice({
'自定义忍者奥义无cd秒杀',
'cd全局定怪(此功能暂时不免费开放)',
'副本所有忍者霸体',
'自定义忍者普攻秒杀',
'新版倍功',
'幻之试炼秘卷无cd',
'修行之路秒过',
'副本秒过(此功能暂时不免费开放)',
'功能待定',
'功能待定',
'返回上一页'},
nil,'❗️此板块功能只允许在副本中使用，决斗场不结算')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'自定义忍者积分赛奥义无cd秒杀',
'功能待定...',
'功能待定...',
'返回上一页'},
nil,'❗️积分赛无cd与秒杀搭配可秒赢积分赛（此功能特别强大必须搭配防封）积分赛无cd与秒杀副本中无效❌修改的忍者不能出现在对方阵容，否则对方也能秒你⭕建议只修改一个不常用在积分赛的忍者️💕战力相差过多会无效，在绝对的力量面前无效')
if menu1 == nil then else
if menu1[1] == true then jf() end
if menu1[2] == true then jf1() end
if menu1[3] == true then jf2() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'自定义修改忍者',
'功能待定',
'功能待定',
'返回上一页'},
nil,'❗️此板块功能为改忍者板块，大家娱乐娱乐就行，改出来的忍者可以是出过的也可以说没出过的，也可以是副本中的，无法在决斗场中使用，可在副本与训练场中使用')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function jf()
j = gg.prompt({'❗️请输入被改忍者代码，代码可在作者发布的忍者代码中对应查找，例如:鸣人代码为90001则方框中填写90001，此功能极大的方便了修改'}, {''}, {'number'})
if j==nil then
C()
else
k=j[1].."6451"
gg.alert("😀你输入的被改忍者为"..j[1])
	 qmnb = {
{["memory"] = 32},   
{["name"] = "积分赛忍者奥义无cd秒杀"},
{["value"] = k, ["type"] = gg.TYPE_DWORD},
{["lv"] = 39, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = -4, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
{["value"] = 99, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
end

function a1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 SH_searchNumber("0.44499999285;0.0;3.20000004768;0.0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 SH_searchNumber("3.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5.2}})
	 end
	 gg.toast("全屏第一步开启成功")
	 gg.clearResults()
end




function a2()
qmnb = {
{["memory"] = 8},
             -- ↑内存  范围  这个是A内存
{["name"] = "全屏第二步"},
            -- ↑功能名称
{["value"] = -369098492, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
       --修改
{["value"] = 0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function a3()
qmnb = {
{["memory"] = 8},
             -- ↑内存  范围  这个是A内存
{["name"] = "完美全屏"},
            -- ↑功能名称
{["value"] = 1098907648, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1091567616, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
       --修改
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end





function b1()
a = gg.prompt({'❗️请输入被改忍者代码，代码可在作者发布的忍者代码中对应查找，例如:鸣人代码为90001则方框中填写90001，此功能极大的方便了修改'}, {''}, {'number'})
if a==nil then
B()
else
b=a[1].."0401"
gg.alert("😀你输入的被改忍者为"..a[1])
	 qmnb = {
{["memory"] = 32},
{["name"] = "忍者奥义无cd秒杀"},
{["value"] = b, ["type"] = gg.TYPE_DWORD},
{["lv"] = 39, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 2, ["offset"] = 16, ["type"] = gg.TYPE_DWORD},
{["lv"] = 90023, ["offset"] = 32, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
       --修改
{["value"] = 25, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
{["value"] = 25, ["offset"] = 272, ["type"] = gg.TYPE_FLOAT},
{["value"] = 0, ["offset"] = 792, ["type"] = gg.TYPE_DWORD,["freeze"] = true},
}
xqmnb(qmnb)
end
end



function b2()
gg.alert("已复制作者QQ\n此功能需要单独购买")
gg.copyText("3517138730")
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) SH_searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function b4()
m = gg.prompt({'❗️请输入被改忍者代码，代码可在作者发布的忍者代码中对应查找，例如:鸣人代码为90001则方框中填写90001，此功能极大的方便了修改'}, {''}, {'number'})
if m==nil then
B()
else
q=m[1].."0101"
gg.alert("😀你输入的被改忍者为"..m[1])
	 qmnb = {
{["memory"] = 32},   
{["name"] = "普攻秒杀"},
{["value"] = q, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = -4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 92, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 100, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 15, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
end



function b3()
gg.clearResults()
gg.setRanges(32)
SH_searchNumber("981,668,463;1,084,227,584;1,050,253,722;1,017,907,249;1,120,403,456", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("1,017,907,249", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
SH_searchNumber("0.5;0.6;"..xbg..";0.75::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber(xbg, gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999999)
gg.toast("[状态]搜索完毕")
xbg1= gg.prompt({'倍数修改(默认0.7):'}, {'0.7'}, {'number'})
if xbg1==nil then
gg.toast("[状态]用户取消操作")
else
xbg=xbg1[1]
gg.editAll(xbg,gg.TYPE_FLOAT)
gg.toast("[状态]修改完毕(请进入副本确认是否修改成功,如果不成功请再搜索一次并修改,如果还是不行就重启游戏)")
end
end



function b6()
gg.clearResults()
gg.setRanges(32)
SH_searchNumber("947130101;450", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("450", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function b7()
gg.clearResults()
gg.setRanges(32)
SH_searchNumber("800001~800399;999", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("800001~800399", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10000)
gg.editAll("330003",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function b8()
gg.alert("已复制作者QQ\n此功能需要单独购买")
gg.copyText("3517138730")
end


function d1()
  menu = gg.choice({
  "⚪忍者黑科技️", 
  "⚪️返回主页"
  },nil,'❗️❗️❗️(必读)此功能仍需要忍者代码，可在作者发布的代码本里获取对应忍者代码，例如∶鸣人的代码为90001则你应该在要修改的忍者方框中填入001，秽土二代为90183则你应该在想玩的忍者方框中填入183。')
  if menu == 1 then LQ() end
  if menu == 2 then Main() end
  FY=-1
end

eq=gg.SIGN_EQUAL sss=0 bbb=-1 CCC="." SSS='￥(.-)@' BBB='￥(.-)/' NNN='@(.-)￥' MMM="修改完成"
A=gg.REGION_ANONYMOUS 
function LQ()
    t2 = gg.prompt({
      "请输入你要修改的忍者"
    },{""})
    if t2 == nil then
      Main()
    end
    if t2[1] == nil then
      gg.toast("不能为空")
    end
    if t2[1] ~= nil then

     t1 = gg.prompt({
      "请输入你想玩的忍者代码"
    },{""})
    if t1 == nil then
      Main()
    end
    if t1[1] == nil then
      gg.toast("不能为空")
    end
    if t1[1] ~= nil then
gg.setRanges(A)
SH_searchNumber(";90"..t2[1],G,false,eq,sss,bbb)
gg.getResults(9999)
gg.editAll(";90"..t1[1],gg.TYPE_WORD)
gg.toast(MMM)
gg.clearResults()
end
end
end



local NumberNo=4


function ff()
	local MenuDataTable={
		"执行防封",
	}
	local MenuIndex = gg.choice(MenuDataTable, nil, "== 内存防封『🔥酒街V🔥』大厅开启==")

	if MenuIndex~=nil then
		if MenuIndex==1 then 
			zgcx()
		end
	end
	XGCK = -1
end
function zgcx()
	local shuJu={10240,12800,14080,16384,19712}
	for i,item in ipairs(shuJu) do
		zgcx_ff(item)
	end
	gg.toast("🔥酒街V🔥 提示:防封开启成功")
end
function zgcx_ff(numInt)
	gg.clearResults()
	gg.setRanges(bit32.bor(gg.REGION_C_ALLOC))
	
	local Name="🔥酒街V🔥_开启防封"
	local dataType = gg.TYPE_DWORD
--tb1[1][1]是需要搜索的数值，后面每个元素的第2个元素是数值地址的偏移量，后面每个元素的第1个元素是数值地址偏移后的值
	local tb1 = {}
--在tb1拿到搜索结果的地址集合之后，对每个地址再进行偏移，偏移的次数就是tb2的元素个数，每次偏移的偏移量就是tb2对应的数值
	local tb2 = {} 
	for j= 0, NumberNo-1 do
		table.insert(tb1,{numInt,j*4})
		table.insert(tb2,j*4)
	end
--开始搜索数值并计算偏移，进行地址偏移，最后拿到偏移后的结果集
	SearchWrite(tb1, tb2, dataType, Name)

	local tt={}
	local data=gg.getResults(gg.getResultCount())
	for i,item in ipairs(data) do
		item.freeze=true
		item.value=-1
		table.insert(tt,item)
	end
	gg.addListItems(tt)
end 
--单值偏移搜索函数  龙套原创  🔥酒街V🔥优化功能及添加注释
function SearchWrite(Search, Write, Type, Name)
	--按类型搜索单个数值
	SH_searchNumber(Search[1][1], Type)
	--获取搜索条数
	local count = gg.getResultCount()
	--获取搜索结果列表
	local result = gg.getResults(count)
	--用于保存有效结果
	local data = {} 
	--(0 或主特征码后三位)(用于计算相对主特征码的偏移)
	local base = Search[1][2] 
	--如果查询结果小于一条
	if (count < 1) then
		return
	end

	--遍历查询结果
	for i, v in ipairs(result) do
		--保存搜索到的地址信息(全部设定为true)
		v.isUseful = true 
	end        

	--从索引2开始起步，到Search表的长度结束
	for k=2, #Search do
		--用于保存构建的新表
		local tmp = {}
		--特征码偏移(副特征码后三位 - 主特征码后三位)
		local offset = Search[k][2] - base 
		--特征码 
		local num = Search[k][1]   

		--遍历查询结果
		for i, v in ipairs(result) do
			--添加项目
			tmp[#tmp+1] = {} 
			--项目地址为主特征码地址+偏移量
			tmp[#tmp].address = v.address + offset  
			--项目数据类型
			tmp[#tmp].flags = v.flags  
		end          

		--刷新项目值    
		tmp = gg.getValues(tmp) 

		--遍历偏移后的表
		for i, v in ipairs(tmp) do
			--判断代进来的数据类型是否为string类型
			if type(num)=="string" then
				local tabData=str_split(num,'~')
				--判断项目值是否在其他特征码范围内
				if tonumber(v.value)<tonumber(tabData[1]) or tonumber(v.value)>tonumber(tabData[2]) then
					--不符合过滤条件设定为false
					result[i].isUseful = false 
				end
				--判断项目值与其他特征码是否一致
			elseif ( tostring(v.value) ~= tostring(num) ) then
				--不符合过滤条件设定为false
				result[i].isUseful = false 
			end
		end
	end

	--遍历之前的查询结果
	for i, v in ipairs(result) do
		--筛选出符合条件的主特征码地址
		if (v.isUseful) then 
			--追加写入有效结果至data表
			data[#data+1] = v.address
		end
	end

	--------------内存写入--------------
	if (#data < 1) then
		gg.clearResults()   
		gg.toast(Name.."失败")
		return
	end

	--保存偏移后的项目
	local t = {}
	--遍历每个有效地址
	for i=1, #data do
		--每个有效地址进行一次或多次偏移，并构建偏移后的项目
		for k, w in ipairs(Write) do
			offset = w - base
			t[#t+1] = {}
			t[#t].address = data[i] + offset
			t[#t].flags = Type
		end
	end
	gg.loadResults(t)
	return t
end


function hj()
menu1 = gg.multiChoice({
'幻境鸣人改黑飞',
'幻境鸣人普攻秒杀',
'幻境奇拉比改黑飞',
'幻境奇拉比普攻秒杀',
'幻之试炼部分秘卷无cd',
'幻之试炼部分秘卷秒杀',
'返回上一页'},
nil,'❗️此板块功能只允许在幻境中使用，鸣人不可升级其他形态鸣人，否则功能失效花火也一样')
if menu1 == nil then else
if menu1[1] == true then hj1() end
if menu1[2] == true then hj2() end
if menu1[3] == true then hj3() end
if menu1[4] == true then hj4() end
if menu1[5] == true then hj5() end
if menu1[6] == true then hj6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end


function hj1()
	 gg.clearResults()
	 gg.setRanges(32)
	 SH_searchNumber("5;3145785;3145785;49::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 SH_searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3,276,849;57", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function hj2()
qmnb = {
{["memory"] = 32},   
{["name"] = "普攻秒杀"},
{["value"] = 909010101, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = -4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 92, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 100, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 60, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function hj3()
	 gg.clearResults()
	 gg.setRanges(32)
	 SH_searchNumber("5;3145785;3539001;55::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 SH_searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3,276,849;57", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end


function hj4()
qmnb = {
{["memory"] = 32},   
{["name"] = "普攻秒杀"},
{["value"] = 909670101, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = -4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 92, ["type"] = gg.TYPE_DWORD},
{["lv"] = 0, ["offset"] = 100, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 150, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function hj5()
gg.clearResults()
gg.setRanges(32)
SH_searchNumber("947130101;450", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("450", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function hj6()
gg.clearResults()
gg.setRanges(32)
SH_searchNumber("947130101D;0.2~5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("0.2~5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("66",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function E()
gg.alert("已复制链接\n到游览器中下载，密码147369！！！")
gg.copyText("https://wws.lanzous.com/iok01hd6r5i")
end


function Exit()
print("感谢使用🔥酒街V🔥火影独家脚本，作者酒街V火影🔥群:685831105")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '8796954'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end










