gg.alert("林默制作")
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功，祝您游戏愉快") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("警告⚠️:没有值可修改")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("已修改" .. (#tb[1] + #tb[2]) .. "个值，祝您游戏愉快！")
		else
			gg.toast("警告⚠️:没有值可修改")
		end
	end
end

function Main0()
A = gg.choice({    
     "初始化",--1
     "局内改追捕",--2
     "倒地结算",--3
     "击倒五十人",--4
     "个人伤害",--5
     "救人数量",--6
     "逃脱八人",--7
     "刷钱",--8
     "连发",--9
     "全星耀动作",--10
     "直装",--11
     "火箭筒改",--12
     "稳定功能",--13
     "buff",--14
     "改道具",--15
     "",--16
     "",--17
     "退出脚本",
}, 0,"XH科技")
if A==1 then
	 og1()
end
if A==2 then
	 og2()
end
if A==3 then
	 og3()
end
if A==4 then
	 og4()
end
if A==5 then
	 og5()
end
if A==6 then
	 og6()
end
if A==7 then
	 og7()
end
if A==8 then
	 og8()
end
if A==9 then
	 og9()
end
if A==10 then
	 og10()
end
if A==11 then
	 og11()
end
if A==12 then
	 og12()
end
if A==13 then
	 og13()
end
if A==14 then
	 og14()
end
if A==15 then
	 og15()
end
if A==16 then
	 og16()
end
if A==17 then
	 os.exit()
end
XGCK =-2
end

function og1()--锁定抱摔
qc=gg.alert("Buff初始化\n温馨提示：打完一局关掉第二局再开，否则会有BUG！","开启","关闭")
if qc==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("Buff初始化开启成功")
gg.clearResults()
end
if qc==2 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("Buff初始化关闭成功")
gg.clearResults()
end
end

function og2()
fastsearch({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}})
end

function og3()--全体倒地
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
end

function og4()--击倒五十
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
end

function og5()--个人伤害
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
end

function og6()--救人数量
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function og7()--逃生八人
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end

function og8()
sq=gg.alert("选择模式","8v2","4v1")
if sq==1 then--8v2刷钱
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
if sq==2 then--4v1刷钱
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
end

function og9()
menu1 = gg.multiChoice({
'霸天虎连发',
'冲锋枪连发',
'自动手枪连发',
'能量剑连发',
'晚炮连发',
'火箭筒连发',
'蹦蹦枪连发',
'乱斗火箭筒连发',
'电球枪连发',
'盾卫连发',
'红蜘蛛炮连发',
'换风标连发',
'回旋镖连发',
'迫击炮连发',
'热破炮连发',
'散弹枪连发',
'生物手枪连发',
'圣女连发',
'威整天炮连发',
'像素键连发',
'水枪连发',
'返回上一页'},
nil,'CY')
if menu1 == nil then else
if menu1[1] == true then sb1() end
if menu1[2] == true then sb2() end
if menu1[3] == true then sb3() end
if menu1[4] == true then sb4() end
if menu1[5] == true then sb5() end
if menu1[6] == true then sb6() end
if menu1[7] == true then sb7() end
if menu1[8] == true then sb8() end
if menu1[9] == true then sb9() end
if menu1[10] == true then sb10() end
if menu1[11] == true then sb11() end
if menu1[12] == true then sb12() end
if menu1[13] == true then sb13() end
if menu1[14] == true then sb14() end
if menu1[15] == true then sb15() end
if menu1[16] == true then sb16() end
if menu1[17] == true then sb17() end
if menu1[18] == true then sb18() end
if menu1[19] == true then sb19() end
if menu1[20] == true then sb20() end
if menu1[21] == true then sb21() end
if menu1[22] == true then HOME() end
end
GLWW=-1
end
function sb1()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb2()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb3()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function sb5()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb6()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb7() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb8()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb9()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function sb10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function sb11()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb12()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb13()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb14()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb15()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function sb18()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb19()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb20()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb21()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end


function og10()
fastsearch--全星耀动作
({
{950001,4,32},
{6,-4,4},
{0,8,4},
{0,12,4},
{0,16,4},
{0,20,4},
{0,-8,4},
{0,-12,4}
},
{{961731,0,4},
{961711,4,4},
{961721,8,4},
{961361,12,4},
{964511,16,4},
{964501,20,4,false}})
end

function og11()
menu1 = gg.multiChoice({
	 "角色全皮肤",--1
	 "锁金币",--2
	 "全图踩夹子",--3
	 "变身攻击",--4
	 "锁道具",--5
	 "xa虚拟金币",--6
	 "无后",--7
	 "无间隔",--8
	 "锁子弹",--9
	 "解锁模式",--10
	 "解锁道具皮肤",--11
	 "道具无CD",--12
	 "杀队友",--13
	 "免费购物",--14
	 "移动开物",--15
	 "倒地丢道具",--16
	 "逃生秒赢",--17
	 "追捕秒赢",--18
	 "丝血不死",--19
	 "82锁全开[失效]",--20
	 "稳定锁金",--21
	 "子弹穿墙",--22
	 "道具等级",--23
	 "全武器超级射速",--24
	 "解锁全角色",--25
	 "直接开门",--26
	 "人物穿墙",--27
"返回上一页"},
nil,'XH')
if menu1 == nil then else
if menu1[1] == true then ssss1() end
if menu1[2] == true then ssss2() end
if menu1[3] == true then ssss3() end
if menu1[4] == true then ssss4() end
if menu1[5] == true then ssss5() end
if menu1[6] == true then ssss6() end
if menu1[7] == true then ssss7() end
if menu1[8] == true then ssss8() end
if menu1[9] == true then ssss9() end
if menu1[10] == true then ssss10() end
if menu1[11] == true then ssss11() end
if menu1[12] == true then ssss12() end
if menu1[13] == true then ssss13() end
if menu1[14] == true then ssss14() end
if menu1[15] == true then ssss15() end
if menu1[16] == true then ssss16() end
if menu1[17] == true then ssss17() end
if menu1[18] == true then ssss18() end
if menu1[19] == true then ssss19() end
if menu1[20] == true then ssss20() end
if menu1[21] == true then ssss21() end
if menu1[22] == true then ssss22() end
if menu1[23] == true then ssss23() end
if menu1[24] == true then ssss24() end
if menu1[25] == true then ssss25() end
if menu1[26] == true then ssss26() end
if menu1[27] == true then ssss27() end
if menu1[28] == true then HOME() end
end
GLWW=-1
end

function ssss1()--角色全皮肤
xtnb({{false,184548591,0,4,nil,nil},{-481296384,368,4},{436207644,372,4}},{{-476053503,332,4,false},{-516948194,336,4,false}},4,16384,"输入功能名称")end

function ssss2()--锁金币

xtnb({{false,184549340,0,4,nil,nil},{-481296384,1028,4},{436207638,1032,4},{-442563684,1036,4}},{{-476053503,988,4,false},{-516948194,992,4,false}},4,16384,"锁金币")
end

function ssss3()--秒开一切
xtnb({{false,184549325,0,4,nil,nil},{-481296384,2836,4},{436207620,2840,4},{-442564236,2844,4}},{{-476053503,2800,4,false},{-516948194,2804,4,false}},4,16384,"全图踩夹子")end
function ssss4()--移动开物
xtnb({{false,295698441,2916,4,nil,nil},{436207626,32,4},{-442563904,36,4},{-481296384,28,4}},{{-516948194,0,4,false}},4,16384,"输入功能名称")end

function ssss5()--不扣金币
xtnb({{false,184549305,0,4,nil,nil},{-481296384,4396,4},{436207620,4400,4},{-442564524,4404,4}},{{-476053504,4368,4,false},{-516948194,4372,4,false}},4,16384,"输入功能名称")
end


function ssss6()--爬墙
local xt=gg.prompt({"虚拟锁金币自调"}, {[1] = 300}, {[1] = "text"})
xtnb({{false,1116471296,0,4,nil,nil},{1129512960,4,4}},{{xt[1],64,4,true}},4,32,"虚拟锁金币")
end

function ssss7()--基扯改子弹
xtnb({{false,184549359,0,4,nil,nil},{-481296384,1472,4},{436207623,1476,4},{-442564360,1480,4}},{{1065353216,1408,4,false}},4,16384,"输入功能名称")
end

function ssss8()--无间隔
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"输入功能名称")end

function ssss9()--锁子弹
qc=gg.alert("锁子弹","旧版","新版")
if qc==1 then
xtnb({{false,184549361,5904,4,nil,nil},{436207620,28,4},{-442564540,32,4},{-481296384,24,4}},{{-476053503,0,4,false},{-516948194,4,4,false}},4,16384,"输入功能名称")end
if qc==2 then
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1736,4},{436207623,1740,4},{-442564368,1744,4}},{{-516948194,1704,4,false}},4,16384,"输入功能名称")
end
end
function ssss10()--解锁模式
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2056,4},{436207620,2060,4},{-442564436,2064,4}},{{-476053503,2020,4,false},{-516948194,2024,4,false}},4,16384,"输入功能名称")end

function ssss11()--道具皮肤
xtnb({{false,184549360,0,4,nil,nil},{-481296384,3640,4},{436207623,3644,4},{-442564400,3648,4}},{{-476053503,3612,4,false},{-516948194,3616,4,false}},4,16384,"输入功能名称")end

function ssss12()--道具无CD

qc=gg.alert("道具无冷却","xa","a[逃]","a[追]")
if qc==1 then
xtnb({{false,184549300,0,4,nil,nil},{-481296384,6900,4},{436207626,6904,4},{-442564232,6908,4}},{{-476053503,6868,4,false},{-516948194,6872,4,false}},4,16384,"输入功能名称")
end
if qc==2 then
xtnb({{false,100.0,0,16,nil,nil},{100.0,4,16},{0.30000001192092896,8,16},{200.0,24,16}},{{0.01,48,16,false}},16,32,"道具无CD")
end
if qc==3 then
xtnb({{false,0.30000001192092896,0,16,nil,nil},{200.0,16,16},{1.0,28,16},{1.0,32,16},{1.0,36,16},{0.009999999776482582,80,16}},{{0.01,40,16,false}},16,32,"道具卡无冷却")
end
end

function ssss13()--杀队友
qc=gg.alert("猎杀队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end
function ssss14()--免费购物
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xD2D1DC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD2D1E0},})
end

function ssss15()--不死
qc=gg.alert("移动开物","移动开物","移动开物跳跃版")
if qc==1 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,"移动开物")end
if qc==2 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,"移动开物")
xtnb({{false,184549351,0,4,nil,nil},{-481296384,6192,4},{436207632,6196,4},{-442564028,6200,4}},{{-476053503,6156,4,false},{-516948194,6160,4,false}},4,16384,"输入功能名称")
end
end

function ssss16()--倒地丢道具
xtnb({{false,184549411,1424,4,nil,nil},{-481296384,24,4},{436207626,28,4},{-442564296,32,4}},{{-476053504,0,4,false},{-516948194,4,4,false}},4,16384,"输入功能名称")
end

function ssss17()--超级移速
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,"输入功能名称")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"")
end

function ssss18()--武器秒杀
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-482081950,1112,4,false},{-516948194,1116,4,false}},4,16384,"秒赢")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549344,0,4,nil,nil},{-481296384,136,4},{436207635,140,4},{-442564104,144,4}},{{-476053496,112,4,false},{-516948194,116,4,false}},4,16384,"")
xtnb({{false,184548539,0,4,nil,nil},{-481296384,936,4},{436207620,940,4},{-442564508,944,4}},{{-476052411,912,4,false},{-516948194,916,4,false}},4,16384,"")
xtnb({{false,184549345,0,4,nil,nil},{-481296384,156,4},{436207644,160,4},{-442563852,164,4}},{{-476053504,132,4,false},{-516948194,136,4,false}},4,16384,"")
xtnb({{false,184549329,0,4,nil,nil},{-481296384,2956,4},{436207644,2960,4},{-442563276,2964,4}},{{-476053496,2932,4,false},{-516948194,2936,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-439091200,112,4},{-481296384,116,4},{436207635,120,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
end

function ssss19()--解锁道具
qc=gg.alert("丝血不死","开启","关闭")
if qc==1 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-476053504,5628,4,false},{-516948194,5632,4,false}},4,16384,"输入功能名称")
end
if qc==2 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-382908368,5628,4,false},{-494030840,5632,4,false}},4,16384,"输入功能名称")
end
end
function ssss20()--无限变身时间
xtnb({{false,250612577,0,4,nil,nil},{-481296384,3532,4},{436207632,3536,4},{-442564200,3540,4}},{{-476053499,3508,4,false},{-516948194,3512,4,false}},4,16384,"输入功能名称")
end

function ssss21()--裁判模式
xtnb({{false,295714822,0,4,nil,nil},{-481296384,3060,4},{436207629,3064,4},{-442564140,3068,4}},{{-476053504,3024,4,false},{-516948194,3028,4,false}},4,16384,"输入功能名称")
end

function ssss22()--解锁风格
xtnb({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"输入功能名称")
end

function ssss23()--枪枪暴击

xtnb({{false,184549327,0,4,nil,nil},{-481296384,4664,4},{436207635,4668,4},{-442563796,4672,4}},{{-476051055,4640,4,false},{-516948194,4644,4,false}},4,16384,"输入功能名称")end

function ssss24()--超级高跳
xtnb({{false,184549335,0,4,nil,nil},{-481296384,4004,4},{436207656,4008,4},{-442563260,4012,4}},{{1112014848,3952,4,false}},4,16384,"输入功能名称")
end


function ssss25()--全角色
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xE9BE08},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xE9BE0C},})
end

function ssss26()--直接开门
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"输入功能名称")
end
function ssss27()--人物穿墙
xtnb({{false,201453840,0,4,nil,nil},{-110911408,548,4},{512232079,552,4},{-89114364,556,4}},{{1103626240,536,4,false}},4,16384,"输入功能名称")
end

function og12()
SN = gg.multiChoice({
"火箭筒改滋水枪",
"火箭筒改生物枪",
"火箭筒改电球枪",
"火箭筒改回旋镖",
"火箭筒改像素剑",
"火箭筒改自动手枪" ,
"火箭筒改变形金刚",
"火箭筒改能量剑",
"火箭筒改迫击炮",
"火箭筒改蹦蹦枪",
"火箭筒改散弹枪",
"火箭筒改冲锋枪",
"火箭筒改唤风标镖",
"火箭筒改霸天斧",
"火箭筒改能量腕炮",
"火箭筒改火箭筒",
"火箭筒改boss飞弹[没用]",
"火箭筒改圣女[没用]",
"火箭筒改盾卫[没用]",
"返回脚本",
 },nil,os.date'CY')
  if SN == nil then
  else
  if SN[1] == true then
   NH1()
  end
  if SN[2] == true then
   NH2()
  end
  if SN[3] == true then
   NH3()
   end
  if SN[4] == true then
   NH4()
   end   
  if SN[5] == true then
   NH5()
   end
  if SN[6] == true then
   NH6()
   end
  if SN[7] == true then
   NH7()
   end
  if SN[8] == true then
   NH8()
   end
  if SN[9] == true then
   NH9()
   end
  if SN[10] == true then
   NH10()
   end           
  if SN[11] == true then
   NH11()
   end
  if SN[12] == true then
   NH12()
   end
  if SN[13] == true then
   NH13()
   end 
  if SN[14] == true then
   NH14()
   end
  if SN[15] == true then
   NH15()
   end
  if SN[16] == true then
   NH16()
   end
  if SN[17] == true then
   NH17()
   end 
  if SN[18] == true then
   NH18()
   end
  if SN[19] == true then
   NH19()
   end
  if SN[20] == true then
   HOME()
   end                            
  end
end
  XGCK = -1


function NH1()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2849280, 12, 4, false}})
end

function NH2()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2585600, 12, 4, false}})
end

function NH3()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2600960, 12, 4, false}})
end

function NH4()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2598400, 12, 4, false}})
end

function NH5()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2595840, 12, 4, false}})
end

function NH6()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{3105280, 12, 4, false}})
end

function NH7()
NH=gg.alert("变形金刚","热破","威震天","红蜘蛛")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23065600, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23091200, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23116800, 12, 4, false}})
end end

function NH8()
NH=gg.alert("能量剑","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{35840, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{36096, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{36352, 12, 4, false}})
end end

function NH9()
NH=gg.alert("迫击炮","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28160, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28416, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28672, 12, 4, false}})
end end

function NH10()
NH=gg.alert("蹦蹦枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38400, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38656, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38912, 12, 4, false}})
end end

function NH11()
NH=gg.alert("霰弹枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{48640, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{48896, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{49152, 12, 4, false}})
end end

function NH12()
NH=gg.alert("冲锋枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33280, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33356, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33792, 12, 4, false}})
end end

function NH13()
NH=gg.alert("唤风镖","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51200, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51456, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51712, 12, 4, false}})
end end

function NH14()
NH=gg.alert("霸天斧","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{53760, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{54016, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{54272, 12, 4, false}})
end end

function NH15()
NH=gg.alert("能量腕炮","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46080, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46336, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46592, 12, 4, false}})
end end

function NH16()
NH=gg.alert("火箭筒","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{25600, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{25856, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{26112, 12, 4, false}})
end end

function NH17()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{30720, 12, 4, false}})
end

function NH18()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{40960, 12, 4, false}})
end

function NH19()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{43520, 12, 4, false}})
end


function og13()
menu1 = gg.multiChoice({
"范围开锁",
"3倍开锁",
"无视夹子",
"人物加速",
"不触发开锁",
"人物透视",
"穿墙",
"视野范围",
"移动开物",
"稳定一件套",
"开锁无限金币",
"破盾",
"秒赢区",
"不死捐钱",
"固定开物进度",
"霸天符锁定",
"火箭筒间隔",
"倒地复活",
"针buff时间+攻速+移速修改",
"修改角色",
"变态小飞机(配防稳定)",
"稳定无间隔(修复)",
"锁血(局内)",
"雷达透视",
"逃生6格道具卡(局内)",
"超级dog",
"人机代打",
"防闪",
"",
"返回主页",
}, nil, os.date("CY"))
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then c19() end
if menu1[20] == true then c20() end
if menu1[21] == true then c21() end
if menu1[22] == true then c22() end
if menu1[23] == true then c23() end
if menu1[24] == true then c24() end
if menu1[25] == true then c25() end
if menu1[26] == true then c26() end
if menu1[27] == true then c27() end
if menu1[28] == true then c28() end
if menu1[29] == true then c29() end
if menu1[30] == true then HOME() end
end
GLWW=-1
end

A1="状态:关闭"

function c29()
fastsearch({
     {842084353, 4, 16},
     {909456435, 4, 4},
     {1094268983, 8, 4},
   }, {
     {9999, 0, 4, false},
   },"防闪")
end

function c28()
if A1 =="状态:关闭"then A1="状态:开启"ZZ1k() else A1="状态:关闭"ZZ1g() end
end
function ZZ1k()
so = gg.getRangesList('libil2cpp.so')[1].start
  local g=os.clock()
  local tt = {}
  tt[1] = {}
  tt[1].address = so + 0x1cef648
  tt[1].flags = 4
  tt[1].value = -482343961
  tt[2] = {}
  tt[2].address = so + 0x1cef648 + 0x4
  tt[2].flags = 4
  tt[2].value = -516948194
  tt[3] = {}
  tt[3].address = so + 0x1cef5d4
  tt[3].flags = 4
  tt[3].value = -482343961
  tt[4] = {}
  tt[4].address = so + 0x1cef5d4 + 0x4
  tt[4].flags = 4
  tt[4].value = -516948194
  tt[5] = {}
  tt[5].address = so + 0x1cee00c
  tt[5].flags = 4
  tt[5].value = -482343961
  tt[6] = {}
  tt[6].address = so + 0x1cee00c + 0x4
  tt[6].flags = 4
  tt[6].value = -516948194
  gg.setValues(tt)
  gg.toast("任务秒完开启成功->\n共修改6条数据\n用时"..os.clock()-g.."秒")
end
function ZZ1g()
so = gg.getRangesList('libil2cpp.so')[1].start
  local g=os.clock()
  local tt = {}
  tt[1] = {}
  tt[1].address = so + 0x1cef648
  tt[1].flags = 4
  tt[1].value = -382908368
  tt[2] = {}
  tt[2].address = so + 0x1cef648 + 0x4
  tt[2].flags = 4
  tt[2].value = -494030840
  tt[3] = {}
  tt[3].address = so + 0x1cef5d4
  tt[3].flags = 4
  tt[3].value = -382908368
  tt[4] = {}
  tt[4].address = so + 0x1cef5d4 + 0x4
  tt[4].flags = 4
  tt[4].value = -494030840
  tt[5] = {}
  tt[5].address = so + 0x1cee00c
  tt[5].flags = 4
  tt[5].value = -382908368
  tt[6] = {}
  tt[6].address = so + 0x1cee00c + 0x4
  tt[6].flags = 4
  tt[6].value = -494030840
  gg.setValues(tt)
  gg.toast("任务秒完关闭成功->\n共修改6条数据\n用时"..os.clock()-g.."秒")
end

function c27()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;1::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("挂机模式开启成功可以放下手机了")
	 gg.clearResults()
end

function c25()
local addr = readPointer("libil2cpp.so", {2376692, 452, 92, 0, 60}, 2)
gg.edits(addr, {{6, 4, 0, false}})
end
function c26()
fastsearch({{4611686019502388019, 32, 32}, {2, 4, 16}, {3, 8, 16},{205,16,4},{2,24,16},{5,-16,16}}, {{0,-8,16},{-999,-16,16},{999,-12,16},{10, 4, 16, false}})
end

function c23()
fastsearch({{2.0,16,32},{1.5,4,16},{10.0,8,16},{0,12,16}},{{100,0,16},{-1,8,4,false}})
end

function c24()
function XGBase(Address,AFV)
   local address=0
   for index,offset in ipairs(Address)do
      if index==1 then
         address=offset
      else
         address=gg.getValues({{address=address+offset,flags=4}})[1].value
      end
   end
   local Value,Freeze={},{}
   for index,value in ipairs(AFV)do
      local VALUE={address=address+value[3],flags=value[2],value=value[1],freeze=true}
      if value[4]then
         Freeze[#Freeze+1]=VALUE
      else
         Value[#Value+1]=VALUE
      end
   end
   gg.setValues(Value)
   gg.addListItems(Freeze)
end
XGBase(
{gg.getRangesList("libil2cpp.so")[1].start},
{
{-443219968,4,0xD58874},
{-439349061,4,0xD58878},
{-485425148,4,0xD5887C},
{167772164,4,0xD58880},
{-443543436,4,0xD58884},
})
end

function c22()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function c21()
qc=gg.alert("超级小飞机","飞机强化","飞机持续时间")
if qc==1 then
NH=gg.prompt({"输入导弹发射数量(可进行多次修改)↓","输入导弹伤害(可进行多次修改)↓","输入导弹范围(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "飞机强化"},
      {["value"] = 1085276160, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 16, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -28, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -36, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 40, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 44, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -196, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = -4, ["type"] = 16},
      {["value"] = 0, ["offset"] = -24, ["type"] = 4},
      {["value"] = 0, ["offset"] = -20, ["type"] = 16},
      {["value"] = NH[3], ["offset"] = -8, ["type"] = 16},
      {["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
      {["value"] = NH[2], ["offset"] = -16, ["type"] = 4},
    }
    xqmnb(qmnb)
end
if qc==2 then
NH=gg.prompt({"输入飞机持续时间(可进行多次修改)↓"},{[1]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "飞机持续时间"},
      {["value"] = 256, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 4, ["type"] = 16},
      {["lv"] = 0, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 28, ["type"] = 16},
      {["lv"] = 0, ["offset"] = 36, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 44, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = 40, ["type"] = 16, ["freeze"] = true},
    }
    xqmnb(qmnb)
end
end

function c20()
NH=gg.prompt({"输入角色代码(可多次修改↓)"},{[1]=""})
fastsearch({{429496729602, 32, 32}, {0, -4, 4}, {1, -20, 4}, {1, -24, 4}, {100, 4, 4}}, {{NH[1], 8, 4, true}})
end

function c19()
NH=gg.prompt({"输入要改的针攻速,原始值-0.25(可进行多次修改)↓","输入要改的针移速,原始值0.12(可进行多次修改)↓"},{[1]="-",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "针移速攻速"},
{["value"] = 1084227584, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 32},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 256, ["offset"] = 76, ["type"] = 4},
{["lv"] = 0, ["offset"] = 70, ["type"] = 4},
}
qmxg = {
{["value"] = NH[2], ["offset"] = 4, ["type"] = 16},
{["value"] = NH[1], ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)

NH=gg.prompt({"输入针buff时间(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "针buff时间"},
{["value"] = 1053609165,["type"] = 4},
{["lv"] = 65536, ["offset"] = -60, ["type"] = 4},
{["lv"] = 1929379840, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end	 

function c18()--倒地复活[本人亲测有效]
   fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end

function c17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.98;-0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("0.3", gg.TYPE_FLOAT)
	 gg.toast("火箭筒射速0.3")
	 gg.clearResults()
end

function c16()--医疗箱变核弹
local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1C6D4, 0x40, 0x0, 0x1A0, 0x128}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
end


function c15()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x17BE0C8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17BE0CC},})
end

function c14()--不死捐钱
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "不死捐钱"},
{["value"] = 37, ["type"] = 4},
{["lv"] = -1,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =16, ["type"] = 4},
{["lv"] = -1,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function c13()
menu1 = gg.multiChoice({
"秒赢1",
"秒赢2(写法不同)",
"倒地结算",
"一健控分",
"返回上一页"},
nil,'CY')
if menu1 == nil then else
if menu1[1] == true then cc10() end
if menu1[2] == true then cc20() end
if menu1[3] == true then cc40() end
if menu1[4] == true then cc30() end
if menu1[45] == true then HOME() end
end
GLWW=-1
end
function cc40()
so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '~A BX LR'
  gg.setValues(tt)
end
function BaseAddressF(address, value)
  local result = {}
  result[1] = {}
  result[1].address = so + address
  result[1].flags = 4
  result[1].value = '~A MOVW R0, #' .. value
  result[2] = {}
  result[2].address = so + address + 4
  result[2].flags = 4
  result[2].value = '~A VMOV S0, R0'
  result[3] = {}
  result[3].address = so + address + 8
  result[3].flags = 4
  result[3].value = '~A VCVT.F32.S32 S0, S0'
  result[4] = {}
  result[4].address = so + address + 12
  result[4].flags = 4
  result[4].value = '~A VMOV R0, S0'
  result[5] = {}
  result[5].address = so + address + 16
  result[5].flags = 4
  result[5].value = '~A BX LR'
  gg.setValues(result)
end
BaseAddressD(0xD567E8,'~A MOV R0, #1')
gg.toast("倒地结算")
gg.clearResults()
end
function cc30()
qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function cc10()--逃生秒赢[8.12.0]
so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '~A BX LR'
  gg.setValues(tt)
end
function BaseAddressF(address, value)
  local result = {}
  result[1] = {}
  result[1].address = so + address
  result[1].flags = 4
  result[1].value = '~A MOVW R0, #' .. value
  result[2] = {}
  result[2].address = so + address + 4
  result[2].flags = 4
  result[2].value = '~A VMOV S0, R0'
  result[3] = {}
  result[3].address = so + address + 8
  result[3].flags = 4
  result[3].value = '~A VCVT.F32.S32 S0, S0'
  result[4] = {}
  result[4].address = so + address + 12
  result[4].flags = 4
  result[4].value = '~A VMOV R0, S0'
  result[5] = {}
  result[5].address = so + address + 16
  result[5].flags = 4
  result[5].value = '~A BX LR'
  gg.setValues(result)
end
BaseAddressD(0xD5D884,'~A MOV	 R0, #66, 8')
BaseAddressF(0xD4CC14,1000)
BaseAddressD(0xF7C410,'~A MOV R0, #0')
BaseAddressD(0xD4DB48,'~A MOV R0, #248')
BaseAddressD(0xD4E294,'~A MOV R0, #248')
BaseAddressD(0xF7F468,'~A MOVW R0, #8')
BaseAddressD(0x1C196E0,'~A MOV R0, #1')
gg.toast("开启成功")
gg.clearResults()
end

function cc20()--追捕秒赢[8.12.0]
  qmnb = {
    {memory = 32},
    {name = "强制结算"},
    {value = 200, type = 16},
    {
      lv = 100,
      offset = -20,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = -24,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c1()
qmnb = {
{["memory"] = 32},
{["name"] = "范围开锁"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 8, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function c2()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function c3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.55078125;1.0;0.69921875;0.5;2.5;0.5;1.0;1.41531145e-43;25.0;0.25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无视夹子")
	 gg.clearResults()
end

function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function c5()
qmnb = {
{["memory"] = 32},
{["name"] = "屏蔽开锁"},--不触发开锁
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function c6()
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
end

function c7()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "穿墙"},
    {["value"] = -10.0, ["type"] = 16},
    {["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 999999, ["offset"] = 0, ["type"] = 16},
  }
  xqmnb(qmnb)
end

function c8()
qmnb = {
{["memory"] = 32},
{["name"] = "视野"},
{["value"] = 6.0, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 24, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end

function c9()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x170ec1c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x170ec20},})
end

function c10()
qmnb = {
{["memory"] = 32},
{["name"] = "3.6倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)

fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")

nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x17C0AF0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17C0AF4},})

qmnb = {
{["memory"] = 32},
{["name"] = "穿墙"},
{["value"] = -10.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
    {memory = 16384},
    {name = "爬墙"},
    {value = -321.125, type = 16},
    {
      lv = 0.949999988079071,
      offset = 140,
      type = 16
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 140,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.clearResults()

qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("3", FLOAT)
gg.toast("锁变大开启成功")
gg.clearResults()
end
end

function c11()
qmnb = {
      {["memory"] = 32},
      {["name"] = "41锁"},
      {["value"] = 4489188110528151552, ["type"] = 32},
      {["lv"] = 256, ["offset"] = 20, ["type"] = 4},
      {["lv"] = 100, ["offset"] = 24, ["type"] = 4},
    }
    qmxg = {
    {["value"] = 1, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
    {["value"] = 122879, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)

    qmnb = {
      {["memory"] = 32},
      {["name"] = "82锁"},
      {["value"] = 4489188110532608000, ["type"] = 32},
      {["lv"] = 256, ["offset"] = 20, ["type"] = 4},
      {["lv"] = 100, ["offset"] = 24, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
      {["value"] = 184319, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
  end

function c12()
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
end


function og14()
menu1 = gg.multiChoice({
"Buff初始化<必须开>",
"酒桶全屏+无敌",
"疾跑改无敌",
"跳高改暴走",
"疾跑改buff[自调]",
"疾跑改随机buff",
"疾跑改boss无敌",
"跳高改提升攻速[无限时长]",
"生命护盾改buff",
"追捕无限暴走",
"跳高无限时间",
"无敌buff时间加长",
"酒桶伤害范围buff[自调]",
"酒桶禁攻",
"酒桶随机buff",
"追捕倒地不起",
"️返回主页️",
}, nil, os.date("道具BUFF功能"))
if menu1 == nil then else
if menu1[1] == true then bf1() end
if menu1[2] == true then bf2() end
if menu1[3] == true then bf3() end
if menu1[4] == true then bf4() end
if menu1[5] == true then bf5() end
if menu1[6] == true then bf6() end
if menu1[7] == true then bf7() end
if menu1[8] == true then bf8() end
if menu1[9] == true then bf9() end
if menu1[10] == true then bf10() end
if menu1[11] == true then bf11() end
if menu1[12] == true then bf12() end
if menu1[13] == true then bf13() end
if menu1[14] == true then bf14() end
if menu1[15] == true then bf15() end
if menu1[16] == true then bf16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function bf16()
function ti(search, write)  
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("OPEN FAILED")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("OPEN FAILED")
		end
	end
end

ti({{101, 4, 32}, {102, 4, 4}, {3, -4, 4}}, {{117, 0, 4, false}})
ti({{90.0, 16, 32}, {60.0, -4, 16}, {12.0, 4, 16}}, {{9999, -4, 16, false}, {9999, 0, 16, false}, {9999, 4, 16, false}})
end

function bf1()
qc=gg.alert("Buff初始化\n温馨提示：打完一局关掉第二局再开，否则会有BUG！","开启","关闭")
if qc==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("Buff初始化开启成功")
gg.clearResults()
end
if qc==2 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("Buff初始化关闭成功")
gg.clearResults()
end
end


function bf2()
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶全屏+无敌"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 107,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf3()--疾跑改无敌
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改无敌"},
{["value"] = 106147, ["type"] = 4},
{["lv"] = 6750208, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 16, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 19660800, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf4()--跳高改暴走
qmnb = {
{["memory"] = 32},
{["name"] = "跳高改暴走"},
{["value"] = 408, ["type"] = 4},
{["lv"] = 26112, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -256, ["offset"] = 12, ["type"] = 4},
{["lv"] = 255, ["offset"] = 16, ["type"] = 4},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 28416, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end


function bf5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function bf6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7,012,352", gg.TYPE_DWORD)
	 gg.toast("疾跑随机buff")
	 gg.getResults(999999)
  while true do
      gg.editAll("19,660,800", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,208,960", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,684,672", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,274,496", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,143,424", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,553,600", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,077,888", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("13,500,416", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,012,352", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,750,208", gg.TYPE_DWORD)
    gg.sleep(205)
  end
end


function bf7()
gg.setRanges(32)
gg.searchNumber("106147;103W", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("103", 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", 2)
gg.toast("开启成功")
end


function bf8()
gg.setRanges(32)
gg.searchNumber("408;26112::5", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26112", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("130304", 4)
	 gg.toast("开启成功")
end



function bf9()
NH=gg.prompt({"输入boss代码(可多次修改↓)"},{[1]=""}) nh({{57983845202497689, 32, 32}, {13500416, 4, 4}, {65535, 16, 4}}, {{NH[1], 6, 2, false}})
gg.toast("buff修改成功\n     成功修改114514条树枝")
end

function bf10()
bby({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) 
gg.toast("追捕无限暴走开启成功\n     成功修改114514条树枝\n     可以让对面封号")
end

function bf11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限时间开启成功")
	 gg.clearResults()
end

function bf12()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,"输入功能名称")
end

function bf13()
local LL=gg.prompt({"↓酒桶范围↓","↓酒桶buff↓","↓酒桶伤害↓"},{[1]="999" },{[2]="300"},{[3]="200"})
fastsearch
({{1088421888,4,32},{1017370378,8,4},{1106247680,24,4}},
{
{LL[1],20,16}--范围
,{LL[2],160,4}--buff
,{LL[3],156,16}--伤害
})
end


function bf14()
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber("Q 00 '" .. className .. "' 00", gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print('没有发现类\n请确认是否初始化') end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end 
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.toast('小闪说开启成功\n共修改: ' .. gg.getResultsCount() .. '个结果') gg.clearResults() end

field = classSearch("BarrelObject", 276)
editerObject(field, {1500, 2, false})

field = classSearch("BarrelObject", 416)
editerObject(field, {10509, 2, false})end



function bf15()
     gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     gg.editAll("300", gg.TYPE_FLOAT)
     while true do
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("102", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("103", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("107", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("108", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("202", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("206", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("300", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("301", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("552", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("509", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("510", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("522", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("204", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("542", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("573", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("10132", gg.TYPE_DWORD)
     gg.sleep(370)
	 end
end

function og15()

A = gg.choice({    
	 "火箭筒",
	 "疾跑",
	 "跳高",
	 "皮卡",
	 "拳套",
	 "箱子",
     "返回",
}, nil,'CY')
if A==1 then
	 J1()
end
if A==2 then
	 J2()
end
if A==3 then
	 J3()
end
if A==4 then
	 J4()
end
if A==5 then
	 J5()
end
if A==6 then
	 J6()
end
if A==7 then
	 J7()
end
XGCK =-1
end
function J2()--疾跑

local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) 
end

function J3()--跳高

local SE=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25653,32,4},
{51456,40,4}
},{
{SE[1],-12,4,false}
}) 
end

function J5()--拳套

local SQ=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{SQ[1],-12,4,false}
}) 
end

function J6()--阻挡箱

local SG=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{77056,40,4}
},{
{SG[1],-12,4,false}
}) 
end
function J4()--皮卡

local SU=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{46129,32,4},
{28416,40,4}
},{
{SU[1],-12,4,false}
})
end
function J1()
local SP=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{64048,32,4},
{25600,40,4}
},{
{SP[1],-12,4,false}
})
end


function hs()
local ML=gg.prompt({"请输入你要改的大小"},{[1]="1.0" })
fastsearch({{18.0, 16, 32}, {8.0, -8, 16}, {1.0, -4, 16},  {-1.0, 8, 16}}, 
{
{ML[1], 4, 16, false}})
end

function HS2()
qmnb=
{
{['memory']=32},
{['name']='车轮无限撞人'},
{['value']=1.5, ['type']=16},
{['lv']=9.0,['offset']=-8, ['type']=16},
{['lv']=0.20000000298023224,['offset']=56, ['type']=16},
{['lv']=0.4000000059604645,['offset']=84, ['type']=16},
}
qmxg=
{
{['value']=9999,['offset']=0,['type']=16},
}
xqmnb(qmnb,qmxg)

qmnb=
{
{['memory']=32},
{['name']='车轮无限撞人'},
{['value']=1.5, ['type']=16},
{['lv']=9.0,['offset']=-8, ['type']=16},
{['lv']=0.20000000298023224,['offset']=56, ['type']=16},
{['lv']=0.4000000059604645,['offset']=84, ['type']=16},
}
qmxg=
{
{['value']=9999,['offset']=0,['type']=16},
}
xqmnb(qmnb,qmxg)
end


while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   Main0()
  end
end





