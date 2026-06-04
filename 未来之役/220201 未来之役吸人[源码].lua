function Get_addr32(addr)
	local r = {
		address = addr,
		flags = 4,
	}
	return gg.getValues({r})[1].value
end

function Get_addr64(addr)
	local r = {
		address = addr,
		flags = 32,
	}
	return gg.getValues({r})[1].value
end

function Get_float(addr)
	local r = {
		address = addr,
		flags = 16,
	}
	return gg.getValues({r})[1].value
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

function list_int64_addr(addr)
	return {address = addr, flags = 32}
end

function list_int_addr(addr)
	return {address = addr, flags = 4}
end

function list_float_addr(addr)
	return {address = addr, flags = 16}
end

local Base_addr = gg.getRangesList("libUE4.so")[1].start -- 基址地址
local Uworld = Get_addr64(Base_addr + 0xA272120) -- Gword
local Ulevel = Get_addr64(Uworld + 0x70) -- Ulevel
local array = Get_addr64(Ulevel + 0x210) -- 对象指针

while true do
	local count = Get_addr32(Ulevel + 0x218) -- 世界数量
	local list = {}
	local self = Get_Address(Base_addr, {0xA261950, 0x0, 0xB0, 0x0})
	local TeamID = Get_addr32(self + 0x1D24)
	local selfObjectPointer = Get_addr64(self + 0xE0);
	local selfstruct = {
		{
			address = selfObjectPointer + 0x260,
			flags = 16,
		},
		{
			address = selfObjectPointer + 0x264,
			flags = 16,
		},
		{
			address = selfObjectPointer + 0x268,
			flags = 16,
		}
	}
	selfstruct = gg.getValues(selfstruct)
	local list2 = {}
	local list3 = {}
	local list4 = {}
	local object = {}
	for addr = 0, count do
		list[#list + 1] = list_int64_addr(array + addr * 8)
	end
	list = gg.getValues(list) -- 获取所有对象地址
	for index, addr in ipairs(list) do
		list2[#list2 + 1] = list_float_addr(addr.value + 0xCAC) -- 人物判断
		list3[#list3 + 1] = list_int_addr(addr.value + 0x1D24)
	end
	list2 = gg.getValues(list2)
	list3 = gg.getValues(list3)
	for index, addr in ipairs(list2) do
		if addr.value == 100.0 and list3[index].value ~= TeamID then
			list4[#list4 + 1] = list_int64_addr(addr.address - 0xBCC)
		end
	end
	list3 = gg.getValues(list4)
	for index, addr in ipairs(list3) do
		local value = addr.value
		object[#object + 1] = {
			address = value + 0x260,
			flags = 16,
			value = selfstruct[1].value,
			freeze = true,
		}
		object[#object + 1] = {
			address = value + 0x264,
			flags = 16,
			value = selfstruct[2].value - 50,
			freeze = true,
		}
		object[#object + 1] = {
			address = value + 0x268,
			flags = 16,
			value = selfstruct[3].value,
			freeze = true,
		}
	end
	gg.addListItems(object)
end