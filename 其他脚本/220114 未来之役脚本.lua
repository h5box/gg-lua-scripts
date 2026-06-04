function getRanges()
	local ranges = {}
	local tt = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i in pairs(t) do
		if t[i].type:sub(2, 2) == 'w' or t[i].type == "r-xp" then
			if not tt[t[i].internalName] then
				tt[t[i].internalName] = {}
			end
			if not tt[t[i].internalName][t[i].state] then
				tt[t[i].internalName][t[i].state] = 0
			end
			tt[t[i].internalName][t[i].state] = tt[t[i].internalName][t[i].state] + 1
			t[i].count = tt[t[i].internalName][t[i].state]
			table.insert(ranges, t[i])
		end
	end
	return ranges
end

local Ranges = getRanges()
for i in pairs(Ranges) do
	Ranges[i].internalName = Ranges[i].internalName:gsub('^.*/', '')
end

function Base_Address(N_So)
	local S_list = Ranges
	local _S = {}
	for i in pairs(S_list) do
		local _N = S_list[i].internalName
		if N_So[1] == _N and N_So[2] == S_list[i].state and N_So[3] == S_list[i].count then
			_S = S_list[i]
			break
		end
	end
	return _S.start
end

function Get_Address(Address, Offset)
	local flags_bit = {[true] = 32, [false] = 4}
	local ti64 = gg.getTargetInfo().x64
	local Type = flags_bit[ti64]
	local addr = 0
	if Address then
		addr = Address + Offset[1]
		for _ = 2, #Offset do
			local pointer = gg.getValues({{address = addr, flags = Type}})
			if not ti64 then
				pointer[1].value = pointer[1].value & 0xFFFFFFFF
			end
			addr = pointer[1].value + Offset[_]
		end
	end
	return addr
end

function Main()
	local func = {a1, a2, a3, a4, a5, Exit}
	local Menu = {
		"无后防抖", 
		"枪械聚点",
		"无限子弹",
		"枪械射速", 
		"锁死自瞄", 
		"退出脚本"
	}
	local Interface64 = gg.multiChoice(Menu, nil, os.date("自瞄打一枪再开\n%Y-%m-%d %H:%M"))
	if Interface64 then
		for index in ipairs(Menu) do
			if Interface64[index] then
				func[index]()
			end
		end
	end
end

function a1()
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x24E700, 0x0, 0x160, 0xB84}
	local ttt = Get_Address(t, tt)
	gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})--无后
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x24E700, 0x0, 0x160, 0xB94}
	local ttt = Get_Address(t, tt, true)
	gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})--防抖
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x24E700, 0x0, 0x160, 0xB98}
	local ttt = Get_Address(t, tt, true)
	gg.addListItems({{address = ttt, flags = 16, value = 0, freeze = true}})--视角防抖
	gg.toast("无后防抖开启成功")
end

function a2()
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x24E700, 0x0, 0x160, 0xA48}
	local ttt = Get_Address(t, tt, true)
	gg.addListItems({{address = ttt, flags = 16, value = -20, freeze = true}})--聚点
	gg.toast("聚点开启成功")
end

function a3()
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x24E700, 0x0, 0x160, 0x9D0}
	local ttt = Get_Address(t, tt)
	gg.addListItems({{address = ttt, flags = 4, value = 99999, freeze = true}})--无限子弹
	gg.toast("无限子弹开启成功")
end

function a4()
	local t = Base_Address({"libUE4.so:bss", "Cb"})
	local tt = {0x24E700, 0x0, 0x160, 0x9B8}
	local ttt = Get_Address(t, tt, true)
	gg.addListItems({{address = ttt, flags = 16, value = -999, freeze = true}})--射速
	gg.toast("射速开启成功")
end


function a5()
	local Offset = {{99999, 0}, {99999, -4}, {99999, -12}, {99999, -40}, {99999, -44}, {99999, -48}, {99999, -52}, {99999, -56}, {99999, -60}, {99999, -64}, {99999, -74}, {99999, -78}, {99999, -82}, {99999, -86}, {99999, -90}, {99999, -94}}
	local t = Base_Address({"libUE4.so:bss", "Cb", 1})
	local tt = {0x2D5760, 0x0, 0xB0, 0xF8, 0x1F0, 0x294}
	local ttt = Get_Address(t, tt)
	local r = {}
	for index, value in ipairs(Offset) do
		r[#r + 1] = {
			address = ttt + value[2],
			flags = 16,
			value = value[1],
--			freeze = true
		}
	end
	gg.setValues(r)
	gg.toast("锁死自瞄开启成功")
end


function Exit()
	os.exit()
end

while(true)do
	if gg.isVisible(true) then
		gg.setVisible(false)
		Main()
	end
end

