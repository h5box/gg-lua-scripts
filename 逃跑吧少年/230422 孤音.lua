
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





function Main()
SN = gg.multiChoice({
    "子弹射程",
    "超级锁弹夹",
    "无后座",
    "秒杀",
    "不卡屏无间隔",
    "移动开物",
    "倒地丢道具",
    "道具无CD",
    "解锁模式",  
    "乱斗锁道具",
    "暗透",
    "局内改等级",
    "解锁道具皮肤",
    "解锁角色皮肤",
    "解锁角色",
    "️退出",
}, nil, os.date("里面添加其他功能不是稳定功能区了"))
  if SN == nil then else
  if SN[1] == true then xa1() end
  if SN[2] == true then xa2() end
  if SN[3] == true then xa3() end
  if SN[4] == true then xa4() end
  if SN[5] == true then xa5() end
  if SN[6] == true then xa6() end
  if SN[7] == true then xa7() end
  if SN[8] == true then xa8() end
  if SN[9] == true then xa9() end
  if SN[10] == true then xa10() end
  if SN[11] == true then xa11() end
  if SN[12] == true then xa12() end
  if SN[13] == true then xa13() end
  if SN[14] == true then xa14() end
  if SN[15] == true then xa15() end
  if SN[16] == true then HOME() end
end
XGCK = -1
end





function xa1()--子弹射程
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF43B64},})
end




function xa2()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end



	
function xa3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end





function xa4()--秒杀
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x363fa94},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x363FA98},})
end



function xa5()--无间隔
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8C},})
end


function xa6()--移动开物
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1731454},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731458},})
end



function xa7()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1F2EAC4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F2EAC8},})
end



function xa8()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1F34DFC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F34E00},})
end




function xa9()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xFE2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},})
end

function xa10()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1E07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E0761C},})
end

function xa11()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD705FC},})
end

function xa12()--改等级(目前改18)
nc_offset(getso("libil2cpp.so"),{{-476053491,4,0x1B3EC9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},})
end

function xa13()--道具全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1B5141C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B51420},})
end

function xa14()--角色全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xEA31D0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D4},})
end

function xa15()--解锁角色
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF3D218},})
end

cs = ''
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
