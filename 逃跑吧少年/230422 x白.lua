
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
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
		gg.toast("Not Found")
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
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("Not Found")
		end
	end
end

function T()
  gg.toast('8.14.1')
  SN = gg.multiChoice({
	 "锁定子弹",---1
	 "武器间隔",---2
	 "穿墙射程",---3
	 "道具冷却",---4
	 "枪枪暴击",---5
	 "强制开门",---6
	 "锁定变身",---7
	 "移动开物",---8
	 "击倒队友",---9
	 "暗黑透视",---10
	 "明亮透视",---11
	 "雷达透视[大厅]",---12
	 "自动开锁",---13
	 "倒地不清buff",---14
	 "解锁角色",---15
	 "角色皮肤️",---16
	 "解锁道具",---17
	 "道具皮肤",---18
	 "道具520级",---19
	 "乱斗锁卡",---20
	 "解锁模式",
	 "退出️脚本"
},nil,"X白")
if SN == nil then else    end
if SN[1] == true then T1() end
if SN[2] == true then T2() end
if SN[3] == true then T3() end
if SN[4] == true then T4() end
if SN[5] == true then T5() end
if SN[6] == true then T6() end
if SN[7] == true then T7() end
if SN[8] == true then T8() end
if SN[9] == true then T9() end
if SN[10] == true then T10() end
if SN[11] == true then T11() end
if SN[12] == true then T12() end
if SN[13] == true then T13() end
if SN[14] == true then T14() end
if SN[15] == true then T15() end
if SN[16] == true then T16() end
if SN[17] == true then T17() end
if SN[18] == true then T18() end
if SN[19] == true then T19() end
if SN[20] == true then T20() end
if SN[21] == true then T21() end
if SN[22] == true then Exit() end

XGCK=-1
end
function T1()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
end
function T2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
function T3()
xb=gg.alert("穿墙射程","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},},'子弹穿墙射程开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xF45760},},'子弹穿墙射程关')
end
end
function T4()
xb=gg.alert("道具冷却","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1f312d0},},'道具无冷关')
end
end
function T5()
xb=gg.alert("枪枪暴击","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},},'枪枪暴击开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1b1895c},},'枪枪暴击关')
end
end
function T6()
xb=gg.alert("强制开门","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db674},},'强制开启逃生门开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x20db674},},'强制开启逃生门关')
end
end
function T7()
xb=gg.alert("锁定变身","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1886fa8},},'锁定变身开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1886fa8},},'锁定变身关')
end
end
function T8()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end
function T9()
xb=gg.alert("击倒队友","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x114690c},},'击倒队友开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x114690c},},'击倒队友关')
end
end
function T10()
xb=gg.alert("暗黑透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70560},},'暗黑透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd70560},},'暗黑透视关')
end
end
function T11()
xb=gg.alert("明亮透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},},'明亮透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x101c518},},'明亮透视关')
end
end
function T12()
xb=gg.alert("雷达透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-301987312,4,0xd71c94},},'雷达透视开25%')
nc_offset(getso("libil2cpp.so"),{{-289928512,4,0xd71c98},},'雷达透视开50%')
nc_offset(getso("libil2cpp.so"),{{-300938736,4,0xd71c9C},},'雷达透视开75%')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd71cA0},},'雷达透视开90%')
nc_offset(getso("libil2cpp.so"),{{-486538264,4,0xd71c90},},'雷达透视开100%')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd71c90},},'雷达透视关25%')
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0xd71c94},},'雷达透视关%50')
nc_offset(getso("libil2cpp.so"),{{-442544008,4,0xd71c98},},'雷达透视关%75')
nc_offset(getso("libil2cpp.so"),{{-509591552,4,0xd71c9C},},'雷达透视关%90')
nc_offset(getso("libil2cpp.so"),{{-527478779,4,0xd71cA0},},'雷达透视关%100')
end
end
function T13()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb64},},'')
local Search_array = {
   {59.0, 16, 32, "自动开锁"},
   {16.0, 4, 16},
}
local Modifythe_array = {
   {99999, 4, 16, false}
}

LSQ_pointer(Search_array, Modifythe_array)
end
function T14()
xb=gg.alert("倒地不清buff","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12248},},'倒地不清buff开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1b12248},},'倒地不清buff关')
end
end
function T15()
xb=gg.alert("解锁角色","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},},'解锁角色开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA5158},},'解锁角色关')
end
end
function T16()
xb=gg.alert("角色皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA31D0},},'角色全皮关')
end
end
function T17()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},},'')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},},'解锁道具')
end

function T18()
xb=gg.alert("道具皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x1B5141C},},'道具全皮关')
end
end
function T19()
xb=gg.alert("道具520级","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-486538744,4,0x1B3EC9C},},'道具520级开启')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},},'道具520级开启')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-494030824,4,0x1B3EC9C},},'道具520级关闭')
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1B3ECA0},},'道具520级关闭')
end
end
function T20()
xb=gg.alert("乱斗锁卡","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'乱斗锁卡')
end
end

function T21()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},},'解锁模式')
end
function Exit()
print("快手搜索X白不玩科技")
os.exit()
end



function HOME()
lw=1
T()
end



cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
T()
end
end