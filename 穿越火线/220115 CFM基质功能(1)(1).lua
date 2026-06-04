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


function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
  function Main()
  SN = gg.multiChoice({
    "微强锁",
    "自瞄",
    "退出脚本"
  }, nil, "自行配防！裸奔拉闸！凑合用吧\n制作时间:11.4日")
  if SN == nil then
  else
    if SN[1] == true then
      a()
    end
    if SN[2] == true then
      b()
    end
    if SN[3] == true then
      Exit()
    end
  end
  XGCK = -1
end



function a()
local t = {"libunity.so", "Cd"}
local tt = {0x4290C, 0x8}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 2}})
gg.toast("微强锁开启成功")
end


function b()
local t = {"libunity.so", "Cd"}
local tt = {0x428C0, 0x80}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libunity.so", "Cd"}
local tt = {0x428C0, 0x104}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
local t = {"libunity.so", "Cd"}
local tt = {0x4290C, 0xC}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})


gg.toast("自瞄开启成功")
end




function Exit()
  print("野猫")

  os.exit()
end

cs = "作者：野猫"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
gg.copyText("野猫")
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end