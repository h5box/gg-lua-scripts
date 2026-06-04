--请你二改留名！

os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_00")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_01")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_02")
--删除360版本日志
os.remove("/storage/emulated/0/Android/data/com.nxkj.gybb13/gameplugins/com.bairimeng.dmmdzz.m7723.bazhang/files/game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.nxkj.gybb13/gameplugins/com.bairimeng.dmmdzz.m7723.bazhang/files/tombstone_00")
os.remove("/storage/emulated/0/Android/data/com.nxkj.gybb13/gameplugins/com.bairimeng.dmmdzz.m7723.bazhang/files/tombstone_01")
os.remove("/storage/emulated/0/Android/data/com.nxkj.gybb13/gameplugins/com.bairimeng.dmmdzz.m7723.bazhang/files/tombstone_02")
gg.alert("独家全功能基址不闪\n自动开启基址防闪\n自动判断是否登录界面，非登陆界面会脚本错误")

function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

function gg.edits(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end

function fastsearch(search, write,we)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
	   if we~=nil then
		gg.toast(we.." -> 主特征码不存在")
	   end
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
		if #result > 0 then			local tb = {{}, {}}
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
			if we~=nil then
			gg.toast(we.."\n -> 共修改" .. (#tb[1] + #tb[2]) .. "条数值")
			end
		else
		    if we~=nil then
			gg.toast(we.." -> 开启失败，没有符合条件的值")
			end
		end
	end
end

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

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressQ(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030820'
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressB(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030842'
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressA(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030840'
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressC(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030824'
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressAA(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '-494030832'
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressF(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 16
  tt[1].value = value
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressZZZ(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 32
  tt[1].value = value
  gg.setValues(tt)
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressY(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  gg.setValues(tt)
end

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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

local t = {"libtersafe2.so", "Cd"}
local tt = {0xA8}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1314, freeze = true}})
gg.clearList()
--防闪

function Main0()
SN = gg.choice({
"娱乐区域",--1
"火力区域",--2
"上分区域",--3
"乱斗乱杀",--4
"listen to music",--5
"测试区域",--6
"退出脚本",--7
}, nil, "鱼沉星河\n8.14.1脚本\n独家全功能基址不闪\n自带防闪防封")
if SN == 1 then Main1() end
if SN == 2 then Main2() end
if SN == 3 then Main3() end
if SN == 4 then ld() end
if SN == 5 then yy() end
if SN == 6 then ceshi() end
if SN == 7 then os.exit() end
FX1=0
end

A1="✓"
A2="✓"
A3="✓"
A4="✓"
A5="✓"
A6="✓"
A7="✓"
A8="✓"
A10="✓"
A11="✓"
A12="✓"
A13="✓"
A14="✓"
A15="✓"
A16="✓"
A17="✓"
A18="✓"
A19="✓"
A20="✓"
A21="✓"
A22="✓"
A23="✓"
A24="✓"
A25="✓"
A33="✓"
A35="✓"
A36="✓"
A37="✓"
A38="✓"
A39="✓"
A40="✓"
A41="✓"
A42="✓"
A43="✓"
A44="✓"
A45="✓"
A46="✓"
A47="✓"
A48="✓"
A49="✓"
A50="✓"
A51="✓"
A52="✓"
A53="✓"
A54="✓"
A55="✓"
A56="✓"
A57="✓"
A58="✓"
A59="✓"
A60="✓"
A61="✓"
A62="✓"
A63="✓"
A64="✓"
A65="✓"
A66="✓"
A67="✓"
A68="✓"
A69="✓"
A70="✓"
A71="✓"
A72="✓"
A74="✓"
A75="✓"
A76="✓"
function Main1()
SN = gg.multiChoice({
"变为人机"..A1.."",--1
"强制开门"..A2.."",--2
"开门秒逃"..A3.."",--3
"全图踩夹"..A4.."",--4
"秒踩夹子"..A5.."",--5
"道具冷却"..A6.."",--6
"清除校准"..A7.."",--7
"锁定子弹"..A8.."",--8
"开物加速",   --9  懒得写关闭
"解锁锁位"..A10.."",--10
"移跳开物"..A11.."",--11
"无限鞭尸"..A12.."",--12
"雷达透视"..A13.."",--13
"血条透视 "..A14.."",--14
"倒地购物"..A15.."",--15
"解锁模式"..A16.."",--16
"锁定道具"..A17.."",--17
"最高恢复"..A18.."",--18
"局内满级"..A19.."",--19
"自动回血"..A20.."",--20
"攻击回血"..A21.."",--21
"穿透伤害"..A22.."",--22
"霸天全图"..A23.."",--23
"强行翘门"..A24.."",--24
"人体描边"..A25.."",--25
"传送冷却",--26
"走路传送",--27
"丝血不死",--28
"技能免费",--29
"技能冷却",--30
"技能次数",--31
"金币秒获",--32
"双方视野"..A33.."",--33
"伤害倍率",--34
"人物爬墙"..A35.."",--35
"武器射速"..A36.."",--36
"武器后座"..A37.."",--37
"子弹消失"..A38.."",--38
"猎杀队友"..A39.."",--39
"酒桶全员"..A40.."",--40
"酒桶全图"..A41.."",--41
"破除护盾"..A42.."",--42
"高亮箱夹"..A43.."",--43
"无视气垫"..A44.."",--44
"全图气垫"..A45.."",--45
"路过开物"..A46.."",--46
"子穿射程"..A47.."",--47
"地图显敌"..A48.."",--48
"角色皮肤"..A49.."",--49
"枪枪暴击"..A50.."",--50
"道具皮肤"..A51.."",--51
"斧头穿墙"..A52.."",--52
"武器增伤"..A53.."",--53
"攻击吸血"..A54.."",--54
"变身攻击"..A55.."",--55
"观战控人"..A56.."",--56
"解锁角色"..A57.."",--57
"友方视野"..A58.."",--58
"护盾锁血"..A59.."",--59
"护盾加血"..A60.."",--60
"无视夹子"..A61.."",--61
"移速增加"..A62.."",--62
"吼号全图"..A63.."",--63
"分期开物"..A64.."",--64
"僵硬跳跃"..A65.."",--65
"毒液全图"..A66.."",--66
"老版大厅"..A67.."",--67
"箱子锁血"..A68.."",--68
"超稳间隔"..A69.."",--69
"解锁角色"..A70.."",--70
"受伤反损"..A71.."",--71
"捣弹全图"..A72.."",--72
"医疗改物",--73
"全员祭天"..A74.."",--74
"修改阵营"..A75.."",--75
"退回脚本",--76
}, nil, "YCXH\nxa\n全功能基址不闪")
if SN == nil then else
if SN[1]==true then HS1() end
if SN[2]==true then HS2() end
if SN[3]==true then HS3() end
if SN[4]==true then HS4() end
if SN[5]==true then HS5() end
if SN[6]==true then HS6() end
if SN[7]==true then HS7() end
if SN[8]==true then HS8() end
if SN[9]==true then HS9() end
if SN[10]==true then HS10() end
if SN[11]==true then HS11() end
if SN[12]==true then HS12() end
if SN[13]==true then HS13() end
if SN[14]==true then HS14() end
if SN[15]==true then HS15() end
if SN[16]==true then HS16() end
if SN[17]==true then HS17() end
if SN[18]==true then HS18() end
if SN[19]==true then HS19() end
if SN[20]==true then HS20() end
if SN[21]==true then HS21() end
if SN[22]==true then HS22() end
if SN[23]==true then HS23() end
if SN[24]==true then HS24() end
if SN[25]==true then HS25() end
if SN[26]==true then HS26() end
if SN[27]==true then HS27() end
if SN[28]==true then HS28() end
if SN[29]==true then HS29() end
if SN[30]==true then HS30() end
if SN[31]==true then HS31() end
if SN[32]==true then HS32() end
if SN[33]==true then HS33() end
if SN[34]==true then HS34() end
if SN[35]==true then HS35() end
if SN[36]==true then HS36() end
if SN[37]==true then HS37() end
if SN[38]==true then HS38() end
if SN[39]==true then HS39() end
if SN[40]==true then HS40() end
if SN[41]==true then HS41() end
if SN[42]==true then HS42() end
if SN[43]==true then HS43() end
if SN[44]==true then HS44() end
if SN[45]==true then HS45() end
if SN[46]==true then HS46() end
if SN[47]==true then HS47() end
if SN[48]==true then HS48() end
if SN[49]==true then HS49() end
if SN[50]==true then HS50() end
if SN[51]==true then HS51() end
if SN[52]==true then HS52() end
if SN[53]==true then HS53() end
if SN[54]==true then HS54() end
if SN[55]==true then HS55() end
if SN[56]==true then HS56() end
if SN[57]==true then HS57() end
if SN[58]==true then HS58() end
if SN[59]==true then HS59() end
if SN[60]==true then HS60() end
if SN[61]==true then HS61() end
if SN[62]==true then HS62() end
if SN[63]==true then HS63() end
if SN[64]==true then HS64() end
if SN[65]==true then HS65() end
if SN[66]==true then HS66() end
if SN[67]==true then HS67() end
if SN[68]==true then HS68() end
if SN[69]==true then HS69() end
if SN[70]==true then HS70() end
if SN[71]==true then HS71() end
if SN[72]==true then HS72() end
if SN[73]==true then HS73() end
if SN[74]==true then HS74() end
if SN[75]==true then HS75() end
if SN[76]==true then HS76() end
end
FX1=0
end

function HS1()
--方法: protected virtual Boolean get_NeedUseAI() { }
if A1=="✓" then
BaseAddressY(0xd75620,'-516948194')
A1="×"
elseif A1=="×" then
BaseAddressY(0xd75620,'-382907280')
A1="✓"
end end

function HS2()
--方法: public Boolean get_IsOpend() { }
if A2=="✓" then
BaseAddressD(0x20db674,'-476053503')
A2="×"
elseif A2=="×" then
BaseAddressA(0x20db674,'-382908368')
A2="✓"
end end

function HS3()
--方法: public Single get_Radius() { }
if A3=="✓" then
BaseAddressD(0xd6fc84,'-476052716')
A3="×"
elseif A3=="×" then
BaseAddressA(0xd6fc84,'-382908368')
A3="✓"
end end

function HS4()
--方法: private Boolean InRange(PlayerController player) { }
if A4=="✓" then
BaseAddressD(0x1193138,'-476053503')
A4="×"
elseif A4=="×" then
BaseAddressA(0x1193138,'-382907280')
A4="✓"
end end

function HS5()
--方法: private Boolean CanApplyDamage(PlayerController player) { }
if A5=="✓" then
BaseAddressD(0x11932e8,'-476053503')
A5="×"
elseif A5=="×" then
BaseAddressB(0x11932e8,'-382907280')
A5="✓"
end end

function HS6()
--方法: public virtual Single GetRemainedCooldownTime(Int32 itemID) { }
if A6=="✓" then
BaseAddressD(0x1f3aac4,'-476053504')
A6="×"
elseif A6=="×" then
BaseAddressB(0x1f3aac4,'-382908176')
A6="✓"
end end

function HS7()
--方法: public Boolean get_CanTrigger() { }
if A7=="✓" then
BaseAddressD(0xc5f108,'-486539264')
A7="×"
elseif A7=="×" then
BaseAddressB(0xc5f108,'-382907280')
A7="✓"
end end

function HS8()
--方法: public Boolean CheckOneMoreTime(Single factor) { }
if A8=="✓" then
BaseAddressD(0x1ba4524,'-442564368')
A8="×"
elseif A8=="×" then
BaseAddressB(0x1ba4524,'-382907280')
A8="✓"
end end

function HS9()
--方法: public override Single GetSpeedUpRatio(String userID) { }
BaseAddressD(0x1911400,'-476052999')
BaseAddressD(0x20db7a8,'-476052999')
BaseAddressD(0x153fc04,'-476052999')
BaseAddressD(0x123ea28,'-476052999')
BaseAddressD(0x1196300,'-476052999')
BaseAddressD(0x177e6a0,'-476052999')
end--懒得写关闭

function HS10()
--方法: public Boolean get_Lock() { }
if A10=="✓" then
BaseAddressD(0x177b60c,'-476053504')
A10="×"
elseif A10=="×" then
BaseAddressA(0x177b60c,'-382908368')
A10="✓"
end end

function HS11()
--方法: public Void RpcEndUsing(String user) { }
if A11=="✓" then
BaseAddressD(0x1731454,'-476052716')
A11="×"
elseif A11=="×" then
BaseAddressB(0x1731454,'-382907408')
A11="✓"
end end

function HS12()
--方法: public virtual Boolean get_CanBeAttacked() { }
if A12=="✓" then
BaseAddressD(0xd70170,'-476053503')
A12="×"
elseif A12=="×" then
BaseAddressB(0xd70170,'-382907280')
A12="✓"
end end

function HS13()
--方法: public Single get_ScannedTime() { }
if A13=="✓" then
BaseAddressD(0xd71c90,'-476052716')
A13="×"
elseif A13=="×" then
BaseAddressA(0xd71c90,'-382908368')
A13="✓"
end end

function HS14()
--方法: public SingleShowBodyTime() { }
if A14=="✓" then
BaseAddressD(0xd5af6c,'-476052716')
A14="×"
elseif A14=="×" then
BaseAddressA(0xd5af6c,'-382908368')
A14="✓"
end end

function HS15()
--方法: public Boolean get_Disabled() { }
if A15=="✓" then
BaseAddressD(0x1f2eac4,'-476053504')
A15="×"
elseif A15=="×" then
BaseAddressB(0x1f2eac4,'-382907280')
A15="✓"
end end

function HS16()
--方法: public static Boolean GetGameModeIsGradeLimit(MapType mode, out Int32 grade, out Int32 limitGrade) { }
if A16=="✓" then
BaseAddressD(0xfe2390,'-476053503')
A16="×"
elseif A16=="×" then
BaseAddressB(0xfe2390,'-382908176')
A16="✓"
end end

function HS17()
--方法: CostCard(int32 cardId) { }
if A17=="✓" then
BaseAddressD(0x1e07618,'-476053504')
A17="×"
elseif A17=="×" then
BaseAddressB(0x1e07618,'-382907280')
A17="✓"
end end

function HS18()
--方法: public Single get_EnhancedHealing() { }
--方法: public Single get_HealedGain() { }
if A18=="✓" then
BaseAddressD(0x1b14234,'-476052716')
BaseAddressD(0x1b142c8,'-476052716')
A18="×"
elseif A18=="×" then
BaseAddressA(0x1b14234,'-382908368')
BaseAddressA(0x1b142c8,'-382908368')
A18="✓"
end end

function HS19()
--方法: public static Int32 GetCardLevel(BasePlayerController player, Int32 cardID) { }
if A19=="✓" then
BaseAddressD(0xd4d630,'-476052999')
A19="×"
elseif A19=="×" then
BaseAddressB(0xd4d630,'-382908176')
A19="✓"
end end

function HS20()
--无效
if A20=="✓" then
--BaseAddressD(0x1ce0e54,'-476053503')
A20="×"
elseif A20=="×" then
--BaseAddressB(0x1ce0e54,'-382907280')
A20="✓"
end end

function HS21()
--方法: public Single get_ExtraAttack() { }
if A21=="✓" then
BaseAddressD(0xf4b038,'-476053025')
A21="×"
elseif A21=="×" then
BaseAddressA(0xf4b038,'-382908368')
A21="✓"
end end

function HS22()
--方法: public MonoBehaviour get_Target() { }
if A22=="✓" then
BaseAddressD(0x97a68c,'1')
A22="×"
elseif A22=="×" then
BaseAddressA(0x97a68c,'-382908368')
A22="✓"
end end

function HS23()
--方法: private Boolean InAttackRange(Vector3 pos, Boolean ignoreY) { }
if A23=="✓" then
BaseAddressD(0x12e0f14,'-476053503')
A23="×"
elseif A23=="×" then
BaseAddressB(0x12e0f14,'-382907280')
A23="✓"
end end

function HS24()
--无效
if A24=="✓" then
--BaseAddressD(0x156aee4,'-476053504')
A24="×"
elseif A24=="×" then
--BaseAddressC(0x156aee4,'-382907408')
A24="✓"
end end

function HS25()
--方法: public override Boolean BeSelected() { }
if A25=="✓" then
BaseAddressD(0x1910798,'-476053503')
A25="×"
elseif A25=="×" then
BaseAddressB(0x1910798,'-382908176')
A25="✓"
end end

function HS26()
--方法: public Void CooldownImmediately() { }
BaseAddressD(0xe3f670,'-476052716')
end

function HS27()
--方法: public Boolean StartTeleport(Boolean enlargeMap) { }
BaseAddressD(0xe40f40,'-476053504')
end

function HS28()
--方法: public virtual Boolean get_IsBuying() { }
BaseAddressD(0x1f3b270,'-476053504')
end

function HS29()
--方法: get_CoinCost()
--方法: CostCoin()
BaseAddressD(0x164d83c,'-476053504')
BaseAddressD(0x164e77c,'-476053503')
end

function HS30()
--方法: ReduceCoolingDown
--方法: get_Cooldown
BaseAddressD(0x164e6f4,'-476053504')
BaseAddressD(0x3503b84,'-476053504')
end

function HS31()
--方法: get_ChargeProgress
--方法: CanStartSkill
--方法: get_Activating
BaseAddressD(0x164f5b4,'-476053504')
BaseAddressD(0x164fda8,'-476053504')
BaseAddressD(0x164faf4,'-476053504')
end

function HS32()
--方法: customcoinratio
BaseAddressD(0xd611a4,'-476052716')
end

function HS33()
--方法: public Boolean get_ShowAllRoleView() { }
if A33=="✓" then
BaseAddressD(0x101c1c8,'-476052716')
A33="×"
elseif A33=="×" then
BaseAddressA(0x101c1c8,'-382908368')
A33="✓"
end end

function HS34()
--无方法但有效
a=gg.prompt({"伤害倍率"})
fastsearch({
{82662192,4,16384},
{83092509,-4,4},
},
{{a[1],-8,16,false}},"伤害倍率")
end

function HS35()
--无方法但有效
if A35=="✓" then
BaseAddressF(0xd5e110,'-1')
A35="×"
elseif A35=="×" then
BaseAddressF(0xd5e110,'0.95')
A35="✓"
end end

function HS36()
--无方法但有效
if A36=="✓" then
BaseAddressF(0x1df6a30,'6.6')
A36="×"
elseif A36=="×" then
BaseAddressF(0x1df6a30,'0')
A36="✓"
end end

function HS37()
--无方法但有效
if A37=="✓" then
BaseAddressF(0xf46f34,'1.21')
A37="×"
elseif A37=="×" then
BaseAddressF(0xf46f34,'0.001')
A37="✓"
end end

function HS38()
--无方法但有效
if A38=="✓" then
BaseAddressY(0x1df6a30,'-1')
A38="×"
elseif A38=="×" then
BaseAddressF(0x1df6a30,'0')
A38="✓"
end end

function HS39()
if A39=="✓" then
BaseAddressY(0x114690c,'-516948194')
A39="×"
elseif A39=="×" then
BaseAddressY(0x114690c,'-382908368')
A39="✓"
end end

function HS40()
if A40=="✓" then
BaseAddressD(0x12c3eb8,'-476053503')
A40="×"
elseif A40=="×" then
BaseAddressB(0x12c3eb8,'-382907280')
A40="✓"
end end

function HS41()
if A41=="✓" then
BaseAddressD(0x12c3f54,'-476053503')
A41="×"
elseif A41=="×" then
BaseAddressC(0x12c3f54,'-382907408')
A41="✓"
end end

function HS42()
if A42=="✓" then
BaseAddressD(0x1b14490,'-476053504')
A42="×"
elseif A42=="×" then
BaseAddressA(0x1b14490,'-382908368')
A42="✓"
end end

function HS43()
if A43=="✓" then
BaseAddressY(0x101c518,'-516948194')
A43="×"
elseif A43=="×" then
BaseAddressY(0x101c518,'-382908368')
A43="✓"
end end

function HS44()
--方法: private Boolean InTriggetRange(Vector3 pos) { }
if A44=="✓" then
BaseAddressD(0x161b2b0,'-476053504')
A44="×"
elseif A44=="×" then
BaseAddressC(0x161b2b0,'-382907408')
A44="✓"
end end

function HS45()
--方法: private Boolean InTriggetRange(Vector3 pos) { }
if A45=="✓" then
BaseAddressD(0x161b2b0,'-476053503')
A45="×"
elseif A45=="×" then
BaseAddressC(0x161b2b0,'-382907408')
A45="✓"
end end

function HS46()
--A内存
if A46=="✓" then
fastsearch({{1147207680,4,32},{20.0,-8,16}},{{0.1,8,16,false},{0,-4,16,false}},"路过开物✓")
A46="×"
elseif A46=="×" then
fastsearch({{1147207680,4,32},{20.0,-8,16}},{{0.1,8,16,false},{20,-4,16,false}},"路过开物×")
A46="✓"
end end

function HS47()
if A47=="✓" then
BaseAddressY(0xf45760,'-516948194')
A47="×"
elseif A47=="×" then
BaseAddressY(0xf45760,'-382906384')
A47="✓"
end end

function HS48()
if A48=="✓" then
BaseAddressF(0x102ff40,'1')
A48="×"
elseif A48=="×" then
BaseAddressF(0x102ff40,'0')
A48="✓"
end end

function HS49()
if A49=="✓" then
BaseAddressY(0xea31d0,'-516948194')
A49="×"
elseif A49=="×" then
BaseAddressY(0xea31d0,'-382906384')
A49="✓"
end end

function HS50()
if A50=="✓" then
BaseAddressF(0x97a20c,'1')
A50="×"
elseif A50=="×" then
BaseAddressF(0x97a20c,'0')
A50="✓"
end end

function HS51()
if A51=="✓" then
BaseAddressY(0x1b5141c,'-516948194')
A51="×"
elseif A51=="×" then
BaseAddressY(0x1b5141c,'-382908176')
A51="✓"
end end

function HS52()
if A52=="✓" then
BaseAddressD(0x12e2d5c,'-476053504')
A52="×"
elseif A52=="×" then
BaseAddressQ(0x12e2d5c,'-382906384')
A52="✓"
end end

function HS53()
if A53=="✓" then
BaseAddressD(0x1b141a0,'-476052417')
A53="×"
elseif A53=="×" then
BaseAddressA(0x1b141a0,'-382908368')
A53="✓"
end end

function HS54()
if A54=="✓" then
BaseAddressD(0x1b14078,'-476052411')
A54="×"
elseif A54=="×" then
BaseAddressA(0x1b14078,'-382908368')
A54="✓"
end end

function HS55()
if A55=="✓" then
BaseAddressY(0xf40c94,'-516948194')
A55="×"
elseif A55=="×" then
BaseAddressY(0xf40c94,'-382907280')
A55="✓"
end end

function HS56()
if A56=="✓" then
BaseAddressY(0xd52374,'-516948194')
A56="×"
elseif A56=="×" then
BaseAddressY(0xd52374,'-382908176')
A56="✓"
end end

function HS57()
if A57=="✓" then
BaseAddressY(0xea5158,'-516948194')
A57="×"
elseif A57=="×" then
BaseAddressY(0xea5158,'-382906384')
A57="✓"
end end

function HS58()
if A58=="✓" then
BaseAddressY(0xfe0d8c,'-516948194')
A58="×"
elseif A58=="×" then
BaseAddressY(0xfe0d8c,'-382906896')
A58="✓"
end end

function HS59()
if A59=="✓" then
BaseAddressY(0x11fa0cc,'-1')
BaseAddressY(0x1247674,'-1')
A59="×"
elseif A59=="×" then
BaseAddressF(0x11fa0cc,'0.3')
BaseAddressF(0x1247674,'0.3')
A59="✓"
end end

function HS60()
if A60=="✓" then
BaseAddressF(0x11fa0cc,'10')
BaseAddressF(0x1247674,'10')
A60="×"
elseif A60=="×" then
BaseAddressF(0x11fa0cc,'0.3')
BaseAddressF(0x1247674,'0.3')
A60="✓"
end end

function HS61()
if A61=="✓" then
BaseAddressY(0x1b14490,'-516948194')
A61="×"
elseif A61=="×" then
BaseAddressY(0x1b14490,'-382908368')
A61="✓"
end end

function HS62()
if A62=="✓" then
BaseAddressD(0x1b13e18,'-476052416')
A62="×"
elseif A62=="×" then
BaseAddressA(0x1b13e18,'-382908368')
A62="✓"
end end

function HS63()
if A63=="✓" then
BaseAddressY(0x212c0d0,'-516948194')
A63="×"
elseif A63=="×" then
BaseAddressY(0x1b13e18,'-382907408')
A63="✓"
end end

function HS64()
if A64=="✓" then
BaseAddressD(0x172d0d0,'-476053504')
A64="×"
elseif A64=="×" then
BaseAddressAA(0x172d0d0,'-382907280')
A64="✓"
end end

function HS65()
if A65=="✓" then
BaseAddressD(0xd6ff10,'-476053504')
A65="×"
elseif A65=="×" then
BaseAddressA(0xd6ff10,'-382908368')
A65="✓"
end end

function HS66()
if A66=="✓" then
BaseAddressY(0x1cc9e24,'-516948194')
A66="×"
elseif A66=="×" then
BaseAddressY(0x1cc9e24,'-382908368')
A66="✓"
end end

function HS67()
if A67=="✓" then
BaseAddressY(0x162e644,'-516948194')
A67="×"
elseif A67=="×" then
BaseAddressY(0x162e644,'-382908368')
A67="✓"
end end

function HS68()
if A68=="✓" then
BaseAddressY(0x1cc8a88,'-5164948194')
A68="×"
elseif A68=="×" then
BaseAddressY(0x1cc8a88,'-382908368')
A68="✓"
end end

function HS69()
if A69=="✓" then
BaseAddressF(0xf3d06c,'0')
BaseAddressF(0xf49e30,'0')
A69="×"
elseif A69=="×" then
BaseAddressF(0xf3d06c,'-9.90656152e27')
BaseAddressF(0xf49e30,'-1.11445016e28')
A69="✓"
end end

function HS70()
if A70=="✓" then
BaseAddressY(0xea5158,'-516948194')
A70="×"
elseif A70=="×" then
BaseAddressY(0xea5158,'-382906384')
A70="✓"
end end

function HS71()
if A71=="✓" then
BaseAddressD(0x1b14968,'-482082800')
A71="×"
elseif A71=="×" then
BaseAddressA(0x1b14968,'-382908368')
A71="✓"
end end

function HS72()
--方法: protected Boolean InExposionRange(Transform target) { }
if A72=="✓" then
BaseAddressY(0x1c6e190,'-516948194')
A72="×"
elseif A72=="×" then
BaseAddressY(0x1c6e190,'-382908368')
A72="✓"
end end

function HS73()
a=gg.prompt{("改道具")}
fastsearch({
{51252,4,32},
{808529509,-4,4},
},
{{a[1]*256,8,4,false}},"医疗箱变道具")
end

function HS74()
--方法: public Boolean get_IsCaptured() { }
if A74=="✓" then
BaseAddressD(0x1906324,'-369094470')
A74="×"
elseif A74=="×" then
BaseAddressB(0x1906324,'-382907280')
A74="✓"
end end

function HS75()
if A75=="✓" then
BaseAddressY(0xfdc1ac,'-516948194')
A75="×"
elseif A75=="×" then
BaseAddressY(0xfdc1ac,'-382908368')
A75="✓"
end end

function HS76()
Main0()
end

b1="✓"
b2="✓"
b3="✓"
b4="✓"
b5="✓"
b6="✓"
b7="✓"
b8="✓"
b9="✓"
b10="✓"
function Main2()
SN = gg.multiChoice({
"锁定子弹"..b1.."",
"超稳间隔"..b2.."",
"武器后座"..b3.."",
"武器射速"..b4.."",
"枪枪暴击"..b5.."",
"子穿射程"..b6.."",
"打击队友"..b7.."",
"强行攻击"..b8.."",
"多段伤害"..b9.."",
"变身攻击"..b10.."",
"修改武器",
"凭空刷枪",
"迫击美化",
"箭筒美化",
"退回脚本",
}, nil, "北冰洋的刷枪\n全功能基址不闪")
if SN == nil then else
if SN[1]==true then q1() end
if SN[2]==true then q2() end
if SN[3]==true then q3() end
if SN[4]==true then q4() end
if SN[5]==true then q5() end
if SN[6]==true then q6() end
if SN[7]==true then q7() end
if SN[8]==true then q8() end
if SN[9]==true then q9() end
if SN[10]==true then q10() end
if SN[11]==true then q11() end
if SN[12]==true then q12() end
if SN[13]==true then q13() end
if SN[14]==true then q14() end
if SN[15]==true then q15() end
end
FX1=0
end

function q1()
--方法: public Boolean CheckOneMoreTime(Single factor) { }
if b1=="✓" then
BaseAddressD(0x1ba4524,'-442564368')
b1="×"
elseif b1=="×" then
BaseAddressB(0x1ba4524,'-382907280')
b1="✓"
end end

function q2()
if b2=="✓" then
BaseAddressF(0xf3d06c,'0')
BaseAddressF(0xf49e30,'0')
b2="×"
elseif b2=="×" then
BaseAddressF(0xf3d06c,'-9.90656152e27')
BaseAddressF(0xf49e30,'-1.11445016e28')
b2="✓"
end end

function q3()
if b3=="✓" then
BaseAddressF(0xf46f34,'1.21')
b3="×"
elseif b3=="×" then
BaseAddressF(0xf46f34,'0.001')
b3="✓"
end end

function q4()
if b4=="✓" then
BaseAddressF(0x1df6a30,'10')
b4="×"
elseif b4=="×" then
BaseAddressF(0x1df6a30,'0')
b4="✓"
end end

function q5()
if b5=="✓" then
BaseAddressF(0x97a20c,'1')
b5="×"
elseif b5=="×" then
BaseAddressF(0x97a20c,'0')
b5="✓"
end end

function q6()
if b6=="✓" then
BaseAddressY(0xf45760,'-516948194')
b6="×"
elseif b6=="×" then
BaseAddressY(0xf45760,'-382906384')
b6="✓"
end end

function q7()
if b7=="✓" then
BaseAddressY(0x114690c,'-516948194')
b7="×"
elseif b7=="×" then
BaseAddressY(0x114690c,'-382908368')
b7="✓"
end end

function q8()
--方法: public virtual Boolean get_CanBeAttacked() { }
if b8=="✓" then
BaseAddressD(0xd70170,'-476053503')
b8="×"
elseif b8=="×" then
BaseAddressB(0xd70170,'-382907280')
b8="✓"
end end

function q9()
--方法: public MonoBehaviour get_Target() { }
if b9=="✓" then
BaseAddressD(0x97a68c,'1')
b9="×"
elseif b9=="×" then
BaseAddressA(0x97a68c,'-382908368')
b9="✓"
end end

function q10()
if b10=="✓" then
BaseAddressY(0xf40c94,'-516948194')
b10="×"
elseif b10=="×" then
BaseAddressY(0xf40c94,'-382907280')
b10="✓"
end end

function q11()
a=gg.prompt({"火箭筒修改武器"})
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{a[1]*65536, 52, 4,false}})
end

function q12()
--BBY教我的
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x9C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

function q13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600881", gg.TYPE_DWORD)
gg.toast("星能爆裂1")
gg.clearResults()

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600881", gg.TYPE_DWORD)
gg.toast("星能爆裂2")
gg.clearResults()

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600881", gg.TYPE_DWORD)
gg.toast("星能爆裂3")
gg.clearResults()
end

function q14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600816", gg.TYPE_DWORD)
gg.toast("无垠星能1")
gg.clearResults()

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600816", gg.TYPE_DWORD)
gg.toast("无垠星能2")
gg.clearResults()

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("600816", gg.TYPE_DWORD)
gg.toast("无垠星能3")
gg.clearResults()
end

function q15()
Main0()
end

C1="✓"
C3="✓"
C4="✓"
function Main3()
SN = gg.multiChoice({
"渲染透视"..C1.."",
"开物加速",
"视角提高"..C3.."",
"踩夹刷金"..C4.."",
"倒地加速",
"视角固定",
"逃生buff锁血",
"退回脚本",
}, nil, "鱼沉星河")
if SN == nil then else
if SN[1]==true then AA1() end
if SN[2]==true then AA2() end
if SN[3]==true then AA3() end
if SN[4]==true then AA4() end
if SN[5]==true then AA5() end
if SN[6]==true then AA6() end
if SN[7]==true then AA7() end
if SN[8]==true then AA8() end
end
FX1=0
end

function AA1()
if C1=="✓" then
BaseAddressF(0x102ff40,'1')
C1="×"
elseif C1=="×" then
BaseAddressF(0x102ff40,'0')
C1="✓"
end end

function AA2()
BaseAddressD(0x1911400,'-476052999')
BaseAddressD(0x20db7a8,'-476052999')
BaseAddressD(0x153fc04,'-476052999')
BaseAddressD(0x123ea28,'-476052999')
BaseAddressD(0x1196300,'-476052999')
BaseAddressD(0x177e6a0,'-476052999')
end

function AA3()
if C3=="✓" then
fastsearch({{4751297607968489472,32,32},{1106247680,4,32},{4665729215065227264,-12,32}},{{20,16,16,false}},"视角提高")
C3="×"
elseif C3=="×" then
fastsearch({{4751297607968489472,32,32},{1106247680,4,32},{4665729215065227264,-12,32}},{{12,16,16,false}},"视角高度")
C3="✓"
end end

function AA4()
if C4=="✓" then
C4="×"
local addr = readPointer("libil2cpp.so", {2175164, 92, 16, 128, 8}, 2)
gg.edits(addr, {{0.1, 16, 0, true}})--血量固定1
BaseAddressD(0x1193138,'-476053503')--全图踩夹
BaseAddressY(0xfdc1ac,'-516948194')--改阵获钱
elseif C4=="×" then
C4="✓"
local addr = readPointer("libil2cpp.so", {2175164, 92, 16, 128, 8}, 2)
gg.edits(addr, {{100, 16, 0, true}})
BaseAddressB(0x1193138,'-382907280')--全图踩夹
BaseAddressY(0xfdc1ac,'-382908368')--改阵获钱
gg.clearList()
end
end

function AA5()
fastsearch({{1147207680,4,32},{20.0,-8,16}},{{0.1,8,16,false},{1.2,16,16,false}},"倒地加速[修复]✓")
end

function AA6()
fastsearch({{4751297607968489472,32,32},{1106247680,4,32},{4665729215065227264,-12,32}},{{24,16,16,false}},"视角")

fastsearch({{4751297607968489472,32,32},{1106247680,4,32},{4665729215065227264,-12,32}},{{0,16,16,false}},"视角固定")
end

function AA7()
fastsearch({{1103626240,4,32},{2.5,-12,16},{101,4,4}},{{200.0,-4,16,false},{300,4,4,false},{-1,0,4}},"buff")
HS4()--开启全图踩夹
end

function AA8()
Main0()
end

function ld()
gg.alert("是否开/关大乱斗xa一套?\n请不要多次开启关闭，否则大概率闪退","开启/关闭")
HS6()
HS8()
HS16()
HS17()
HS35()
HS36()
HS37()
HS42()
HS48()
HS51()
HS54()
HS55()
HS59()
HS62()
HS69()
end

function yy()
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"star unkind","50"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-------歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
gg.toast("歌曲："..gqlb[SN])
play(idb[SN],gqlb[SN])
yy()
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页

function yy()
SN = gg.choice({
   "搜索歌曲",
   "搜索列表",
   "随机播放",
   "停止播放",
   "退回主页",})
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then th() end
XGCK=-7
end

---
function s1()
search = gg.prompt({
"输入要搜索的歌曲",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end

function th()
Main0()
end

yy()
end

function ceshi()
qf=gg.prompt({"武器代码修改","凭空刷枪"},nil,{"checkbox","checkbox"})
if qf~= nil then
if qf[1] then
a=gg.prompt({"修改武器"})
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{a[1]*65536, 52, 4,false}})
end

if qf[2] then
--BBY教我的
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x9C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end
end
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