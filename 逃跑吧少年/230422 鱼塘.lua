--拉闸哥开源垃圾傻逼团队脚本😘
local urls = "https://share.weiyun.com/i5ofcqX9" -- 远程链接
local path = "/sdcard/公告.txt"
local data = gg.makeRequest(urls).content
local switch = data:match("【开关】(.-)【开关】")
local Notice = data:match("【公告】(.-)【公告】")
local files = io.open(path, "r")
while switch ~= "开" do
  gg.alert("因为某种原因关闭了，如果有不懂的QQ联系: 1687569568")
  os.exit()
end

--[[

【开关】开【开关】
【公告】这里填你的公告【公告】


]]
XEY=string.rep("小鳄鱼","10000")
for k=1,2000 do
pcall(debug.getinfo,XEY)
pcall(debug.traceback,XEY)
end

abc ={}
abc.last = gg.getFile()
abc.data = loadfile(abc.last)
abc.cpp = abc.data
if abc.cpp ~= nil then
abc.data = nil
ppb = abc.last:match("[^/]+$")
ppi = "lohhhggg"
pu = gg.getResults(5000)
os.rename("" .. abc.last .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")
prt = loadfile("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")
if prt ~= nil then
os.rename("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppb .. "")
while true do
print("憨批")
os.exit()
ILOVEYOU()
end
end
end
--防log

NZF=io.open("/sdcard/RL.LOG","r")
if NZF~=nil then
while true do
os.remove("/sdcard/RL.LOG")
os.exit()
print("开你妈，我操你妈开了，你家祖坟被人抛了，懂不懂？操你妈😂")
end
end
local TonumbEr = tonumber

local _g = {}
for i, v in pairs(_ENV["gg"]) do
    _g[i] = v
end

for i,v in pairs(_g) do
    if type(v)=="function" then
        local Zt,Return_str=pcall(gg.toast,{v})
        while not Return_str or string.find(Return_str,"%[Java%]%:%-1") do
            print("Detection LOG or Hook")
            os.exit()
        end
    end
end
for index, value in _ENV["pairs"]({_ENV["table"],_ENV["debug"], _ENV["gg"], _ENV["os"], _ENV["io"], _ENV["bit32"], _ENV["utf8"], _ENV["string"], _ENV["math"]}) do
  index = _ENV["tostring"](value)
  xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end
for index, value in _ENV["pairs"]({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do
   value = _ENV[value]
   index = _ENV["tostring"](value)
   xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end
local yun = assert(load("print('为什么要破解呢？')"))
debug.sethook(hook, "yun")    
debug.sethook()   
if true then
local org = gg.searchNumber
 hook = function(...)
gg.setVisible(false)
 ret = org(...)
if gg.isVisible(true) then
gg.clearResults()
gg.clearList()
gg.alert("请不要在搜索时点击修改器！")
while true do 
os.exit() 
end
end
return ret
end
gg.searchNumber = _ENV["hook"]
end
NZF=io.open("/storage/emulated/0/RL.LOG","r")
if NZF~=nil then
while true do
os.remove("/storage/emulated/0/RL.LOG")
os.exit()
print("我抓了这么久的功能，就是为了方便大家一起玩，你要给我开了？😭😭😭")
end
end
function ffvpns()
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
x=(tostring(gg[ "makeRequest" ](ffvpn)))
if not x  or not x:sub(1,20) then 
gg[ "alert" ]( "GG无法访问网络请查看相应限权" , "" )
else
while  #(x)<100  
or x:find( "SSL" ) or x:find('I/O') or x:find('javax')
do 
gg[ "alert" ]( " MTP警告:网络数据通道异常\n\nMTP:已验证本机调试型VPN启用请立刻终止脚本否则控制手机屏幕卡死" , "" , "我不信" , "我信" )
local mpxgk=optfff()
end 
end
end
-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
          for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
        
        if (#data > 0) then
           gg.toast("\n共修改"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        else
            gg.toast("\n开启失败", false)
            return false
        end
    else
        gg.toast("\n开启失败")
        return false
    end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
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
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
-------------------------------------------------------------------------------------------------------------
--仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
	end
end

function SearchWrite(Search, Write, Type)
	gg.clearResults()
	gg.setVisible(false)
	gg.searchNumber(Search[1][1], Type)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][2]

	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end

		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]

			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = v.flags
			end

			tmp = gg.getValues(tmp)

			for i, v in ipairs(tmp) do
				if (tostring(v.value) ~= tostring(num)) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end

		if (#data > 0) then
			gg.toast("\n共修改" .. #data .. "条数据")
			local t = {}
			local base = Search[1][2]
			for i = 1, #data do
				for k, w in ipairs(Write) do
					offset = w[2] - base
					t[#t + 1] = {}
					t[#t].address = data[i] + offset
					t[#t].flags = Type
					t[#t].value = w[1]

					if (w[3] == true) then
						local item = {}
						item[#item + 1] = t[#t]
						item[#item].freeze = true
						gg.addListItems(item)
					end

				end
			end
			gg.setValues(t)
		else
			gg.toast("\n开启失败", false)
			return false
		end
	else
		gg.toast("\n开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1]["memory"])
	gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2]["name"] .. "\n开启失败")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "\n开启失败")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(qmnb) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + qmnb[v]["offset"]
						pysz[1].flags = qmnb[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
			else
				gg.toast(qmnb[2]["name"] .. "\n开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
--偏移配置
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

gg.edits = function(addr, Table, name)
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

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == "string" then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast("搜索失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = {address = r.address + search[i][2], flags = search[i][3]}
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
		gg.toast("共搜索到" .. #result .. "条数据")
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read["内存"])
	gg.setVisible(false)
	gg.searchNumber(read["主特征码"], read["类型"])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i]["偏移"], flags = read[i]["类型"]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i]["值"] then
					Result[_a] = nil
				end
			end
			local MS = {}
			for i, v in pairs(Result) do
				MS[#MS + 1] = Result[i]
			end
			Result = MS
		end
		if (#Result > 0) then
			local data = {{}, {}}
			for i, v in ipairs(Result) do
				for a, x in ipairs(write) do
					if x["冻结"] == true then
						data[2][#data[2] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启成功,共搜索" .. #Result .. "条地址\n已修改" .. (#data[1] + #data[2]) .. "条数据")
		else
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败")
		end
	else
		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启失败,未搜索到数据")
	end
end

function xqmnb(x)
	local tp1 = {["内存"] = x[1]["memory"], ["主特征码"] = x[3]["value"], ["类型"] = x[3]["type"], ["name"] = x[2]["name"]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {["值"] = x[i]["lv"], ["偏移"] = x[i].offset, ["类型"] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {["值"] = v.value, ["类型"] = v.type, ["偏移"] = v.offset, ["冻结"] = (v.freeze or nil)}
	end
	SearchWrite(tp1, tp2)
end

function readValue(add, flags)
	local t = gg.getValues({[1] = {address = add, flags = flags}})
	return t[1].value
end

function readAdd(add)
	local t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
-------------------------------------------------------------------------------------------------------------
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
-------------------------------------------------------------------------------------------------------------
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
			if we~=nil then
			gg.toast(we.." -> 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
			end
		else
		    if we~=nil then
			gg.toast(we.." -> 开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
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
			gg.toast("开启失败")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end




function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==Tp then return v.start end end end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
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

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.
searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else
print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

-------------------------------------------------------------------------------------------------------------
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

-------------------------------------------------------------------------------------------------------------
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
          for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           gg.toast("\n共修改"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        else
            gg.toast("\n开启失败", false)
            return false
        end
    else
        gg.toast("\n开启失败")
        return false
    end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end

-------------------------------------------------------------------------------------------------------------
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
function fastsearch(search, write)
local sjyy= cnm[math.random(1,#cnm)]
local g=os.clock()
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
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
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果\n用时:"..os.clock()-g.."秒\n"..sjyy.."")
		else
			gg.toast("开启失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function all(search, write)
local g=os.clock()
local sjyy= cnm[math.random(1,#cnm)]
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("传送失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
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
			gg.toast("传送成功,共修改" .. (#tb[1] + #tb[2]) .. "条结果\n用时:"..os.clock()-g.."秒\n"..sjyy.."")
		else
			gg.toast("传送失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function alll(search, write)
local sjyy= cnm[math.random(1,#cnm)]
local g=os.clock()
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("上卡失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
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
			gg.toast("上卡成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果\n用时:"..os.clock()-g.."秒\n"..sjyy.."")
		else
			gg.toast("上卡失败\n用时:"..os.clock()-g.."\n"..sjyy.."")
		end
	end
end

--仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
local sjyy= cnm[math.random(1,#cnm)]
local g=os.clock()
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功\n用时:"..os.clock()-g.."秒\n"..sjyy.."")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function guanbi(addr, tablex, tt)
local sjyy= cnm[math.random(1,#cnm)]
local g=os.clock()
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功\n用时:"..os.clock()-g.."秒\n"..sjyy.."")
end
-------------------------------------------------------------------------------------------------------------

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==Tp then return v.start end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.
toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) >
tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.
searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end
-------------------------------------------------------------------------------------------------------------
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

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

-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
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
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
--仿=写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
	end
end

function SearchWrite(Search, Write, Type)
	gg.clearResults()
	gg.setVisible(false)
	gg.searchNumber(Search[1][1], Type)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][2]

	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end

		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]

			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = v.flags
			end

			tmp = gg.getValues(tmp)

			for i, v in ipairs(tmp) do
				if (tostring(v.value) ~= tostring(num)) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end

		if (#data > 0) then
			gg.toast("\n共修改" .. #data .. "条数据")
			local t = {}
			local base = Search[1][2]
			for i = 1, #data do
				for k, w in ipairs(Write) do
					offset = w[2] - base
					t[#t + 1] = {}
					t[#t].address = data[i] + offset
					t[#t].flags = Type
					t[#t].value = w[1]

					if (w[3] == true) then
						local item = {}
						item[#item + 1] = t[#t]
						item[#item].freeze = true
						gg.addListItems(item)
					end

				end
			end
			gg.setValues(t)
		else
			gg.toast("\n开启失败", false)
			return false
		end
	else
		gg.toast("\n开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1]["memory"])
	gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2]["name"] .. "\n开启失败")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "\n开启失败")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(qmnb) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + qmnb[v]["offset"]
						pysz[1].flags = qmnb[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
			else
				gg.toast(qmnb[2]["name"] .. "\n开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
--偏移配置
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

gg.edits = function(addr, Table, name)
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

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == "string" then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast("搜索失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = {address = r.address + search[i][2], flags = search[i][3]}
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
		gg.toast("共搜索到" .. #result .. "条数据")
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read["内存"])
	gg.setVisible(false)
	gg.searchNumber(read["主特征码"], read["类型"])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i]["偏移"], flags = read[i]["类型"]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i]["值"] then
					Result[_a] = nil
				end
			end
			local MS = {}
			for i, v in pairs(Result) do
				MS[#MS + 1] = Result[i]
			end
			Result = MS
		end
		if (#Result > 0) then
			local data = {{}, {}}
			for i, v in ipairs(Result) do
				for a, x in ipairs(write) do
					if x["冻结"] == true then
						data[2][#data[2] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启成功,共搜索" .. #Result .. "条地址\n已修改" .. (#data[1] + #data[2]) .. "条数据")
		else
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败")
		end
	else
		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启失败,未搜索到数据")
	end
end

function xqmnb(x)
	local tp1 = {["内存"] = x[1]["memory"], ["主特征码"] = x[3]["value"], ["类型"] = x[3]["type"], ["name"] = x[2]["name"]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {["值"] = x[i]["lv"], ["偏移"] = x[i].offset, ["类型"] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {["值"] = v.value, ["类型"] = v.type, ["偏移"] = v.offset, ["冻结"] = (v.freeze or nil)}
	end
	SearchWrite(tp1, tp2)
end

function readValue(add, flags)
	local t = gg.getValues({[1] = {address = add, flags = flags}})
	return t[1].value
end

function readAdd(add)
	local t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
-------------------------------------------------------------------------------------------------------------
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
-------------------------------------------------------------------------------------------------------------
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
			if we~=nil then
			gg.toast(we.." -> 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
			end
		else
		    if we~=nil then
			gg.toast(we.." -> 开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
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
			gg.toast("开启失败")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
-------------------------------------------------------------------------------------------------------------
 function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
-------------------------------------------------------------------------------------------------------------
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
-------------------------------------------------------------------------------------------------------------
bqt={"💷","💶","💴","💳","🧧","💰","💸","💎","🍬","🐷","🍓","🐴","🐮","🐶","🐥","✡","💟","😍","😂","💛","⭐","🍺","🍀","😎","💯","🏀","👹","😈","🤖","💙","💜","🖤",",💓","💖","🍀","🌹","☑️","🍡","🎉","🔥","✨","💎","💫","💖","🍀"}
local APP=gg.getTargetInfo()
function Main()
gg.toast("YT提示:禁止转发分享，违规者将被取消内部资格！")
  UI = 'Main'
local YT=bqt[math.random(1,#bqt)]
byyt = gg.choice({
YT.."登录设置"..YT,--FS
YT.."直装功能"..YT,--A
YT.."稳定速刷"..YT,--B
YT.."鱼塘全防"..YT,--C
YT.."解封设备"..YT,--D
YT.."道具换卡"..YT,--E
YT.."位置传送"..YT,--F
YT.."稳定消耗"..YT,--G
YT.."追捕上分"..YT,--H
YT.."逃追秒结"..YT,--J
YT.."乱斗功能"..YT,--K
YT.."美化功能"..YT,--YUT
YT.."️️退出脚本️️"..YT,--Exit
}, Jt,os.date"YT精心打造内部脚本，祝您上分娱快！\n禁止转发/分享，发现者一律踹出！\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n{当前进程}:"..APP.activities[1].label.."  {当前版本}:"..APP.versionName.."")
if byyt then
    Jt=byyt
    _ENV[({"FS","A","B","C","D","E","F","G","H","J","K","YUT","Exit"})[byyt]]()
 end
end
-------------------------------------------------------------------------------------------------------------
function FS()
UI = "FS"
local menu = gg.multiChoice({
"😎登录防闪😎",
"😎防闪备用😎",
"😎合作伙伴😎",
"😎脚本公告😎",
"️👹返回主页👹️",
}, nil, "YT提示: 防闪加公告！")
if menu then
for i in pairs(menu) do
_ENV[({"fs1","fs2","fs3","fs4","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function fs1()
local t = {"libtersafe2.so", "Cd"}
local tt = {0xA8}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = -516948194}})
end

function fs2()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function fs3()
gg.alert("YT合作伙伴:\nby.花花","我已知道了")
end

function fs4()
gg.alert("YT脚本公告:\n别跟我说这是二改，新赛季第一天更新的\n有些傻逼就在那里乱传\n自己做不出来二改装高清上了\n特别是快手那个by.拉闸哥，自己特别没用还说别人没用\n注意:请勿转发，不然必被取消内部资格！！！\n注意:请勿转发，不然必被取消内部资格！！！\n注意:请勿转发，不然必被取消内部资格！！！","我已知道了")
end
-------------------------------------------------------------------------------------------------------------
function A()
SN =gg.multiChoice({
"迫击范围",--1
"地图明透",--2
"人物反伤",--3
"武器间隔",--4
"人物加速",--5
"人物高跳",--6
"极速回血",--7
"攻击吸血",--8
"无视护盾",--9
"无视夹子",--10
"角色技能",--11
"移动开物",--12
"击倒次数",--13
"营救次数",--14
"造成伤害",--15
"强制结算",--16
"道具无冷",--17
"武器秒杀",--18
"武器爆射",--19
"不死捐钱",--20
"角色技能",--21
"夹子全亮",--22
"追捕开锁",--23
"无限暴走",--24
"局内刷钱",--25
"倒地燃烧",--26
"倒地复活",--27
"人物爬墙",--28
"武器锁子",--29
"武器无后",--30
"丝血不死",--31
"人物无敌",--32
"追捕破盾",--33
"秒开一切",--34
"切换其它",--35
"逃生减血",--36
"跳高效果",--37
"渲染透视",--38
"酒桶一套",--39
"迫击射程",--40
"超级无间隔",--41
"锁定子弹",--42
"无后座力",--43
"解锁模式",--44
"全图亮透",--45
"移动开物",--46
"强制开门",--47
"逃生秒结",--48
"乱斗锁道具",--49
"追捕秒结",--50
"角色皮肤",--51
"自动开锁",--52
"杀队友",--53
"子弹射程穿墙",--54
"枪枪暴击",--55
"乱斗锁卡",--56
"道具等级",--57
"返回主页"
 },nil,os.date"YT提示: 57个直装功能，期待以后的更新！")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then a9() end
if SN[10] == true then a10() end
if SN[11] == true then a11() end
if SN[12] == true then a12() end
if SN[13] == true then a13() end
if SN[14] == true then a14() end
if SN[15] == true then a15() end
if SN[16] == true then a199() end
if SN[17] == true then a16() end
if SN[18] == true then a17() end
if SN[19] == true then a18() end
if SN[20] == true then a19() end
if SN[21] == true then a20() end
if SN[22] == true then a22() end
if SN[23] == true then a23() end
if SN[24] == true then a24() end
if SN[25] == true then a25() end
if SN[26] == true then a26() end
if SN[27] == true then a27() end
if SN[28] == true then a28() end
if SN[29] == true then a29() end
if SN[30] == true then a30() end
if SN[31] == true then a31() end
if SN[32] == true then a32() end
if SN[33] == true then a33() end
if SN[34] == true then a34() end
if SN[35] == true then a35() end
if SN[36] == true then a36() end
if SN[37] == true then a37() end
if SN[38] == true then a38() end
if SN[39] == true then a39() end
if SN[40] == true then a40() end----
if SN[41] == true then a41() end
if SN[42] == true then a42() end
if SN[43] == true then a43() end
if SN[44] == true then a44() end
if SN[45] == true then a45() end
if SN[46] == true then a46() end
if SN[47] == true then a47() end
if SN[48] == true then a48() end
if SN[49] == true then a49() end
if SN[50] == true then a50() end
if SN[51] == true then a51() end
if SN[52] == true then a52() end
if SN[53] == true then a53() end
if SN[54] == true then a54() end
if SN[55] == true then a55() end
if SN[56] == true then a56() end
if SN[57] == true then a57() end
if SN[58] == true then Main() end
end
FX1=0
end

function a34()
qmnb = {
      {["memory"] = 32},
      {["name"] = "秒开一切"},
      {["value"] = 4489188110528151552, ["type"] = 32},
      {["lv"] = 256, ["offset"] = 20, ["type"] = 4},
      {["lv"] = 100, ["offset"] = 24, ["type"] = 4},
    }
    qmxg = {
    {["value"] = 1, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
    {["value"] = 122879, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
end

function a32()
qmnb = {
{["memory"] = 32},
{["name"] = "人物无敌"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 100.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end

function a33()
qmnb = {
{["memory"] = 32},
{["name"] = "追捕破盾"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 156, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end


function a31()
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end


function a30()
qmnb = {
{["memory"] = 32},
{["name"] = "无后座"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
{["value"] = 1, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function a29()
qmnb = {
{["memory"] = 32},
{["name"] = " 锁子弹"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
{["value"] = 1.0, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
{["value"] = 3.0, ["offset"] = 0, ["type"] = 16, ["freeze"] = false},
{["value"] = 1, ["offset"] = 44, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function a28()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物爬墙"},
{["value"] = -321.125, ["type"] = 16},
{["lv"] = 0.949999988079071, ["offset"] = 140, ["type"] = 16},
}
qmxg = {
{["value"] = -1, ["offset"] = 140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end



function a27()
qmnb = {
      {["memory"] = 32},
      {["name"] = "倒地复活"},
      {["value"] = 4575657222537216000, ["type"] = 32},
      {["lv"] = 1050253722, ["offset"] = -16, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 100, ["offset"] = -20, ["type"] = 16},
      {["value"] = 100, ["offset"] = -24, ["type"] = 16},
    }
    xqmnb(qmnb)
    end
    
    
function a26()
qmnb = {
{["memory"] = 32},
{["name"] = "倒地直接燃烧"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a25()
qc=gg.alert("无限刷钱","4v1","8v2")
if qc==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "41锁"},
{["value"] = 4489188110528151552, ["type"] = 32},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 1, ["offset"] = 88, ["type"] = 4},
{["value"] = 122879, ["offset"] = 92, ["type"] = 4},
}
xqmnb(qmnb)
end

if qc==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "82锁"},
{["value"] = 4489188110532608000, ["type"] = 32},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 1, ["offset"] = 88, ["type"] = 4},
{["value"] = 184319, ["offset"] = 92, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function a24()
qmnb = {
{["memory"] = 32},
{["name"] ="追捕无限暴走️"},
{["value"] =4787326404979064832, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
 }
qmxg = {
{["value"] =10, ["offset"] = 28, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function a23()
qmnb = {
{["memory"] = 16384},
{["name"] = "追捕开锁"},
{["value"] = 75900672, ["type"] = 4},
{["lv"] = 75900652, ["offset"] = 4, ["type"] = 4},
{["lv"] = -382908368, ["offset"] = 8, ["type"] = 4},
{["lv"] = -494030840, ["offset"] = 12, ["type"] = 4},
{["lv"] = -442544040, ["offset"] = 16, ["type"] = 4},
{["lv"] = -509591552, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = -516948194, ["offset"] = 12, ["type"] = 4, ["freeze"] = false},
{["value"] = -476053503, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end


function a22()
qmnb = {
{["memory"] = 32},
{["name"] = "显示夹子"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 250,["offset"] =-12, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function a199()--
qmnb = {
{["memory"] = 32},
{["name"] = "强制结算"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function a20()--
qmnb = {
{["memory"] = 32},
{["name"] = "独家a内存全角色技能无冷+免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function a19()--
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

function a18()--武器爆射
qmnb = {
      {["memory"] = 32},
      {["name"] = "武器爆射"},
      {["value"] = 18293456896, ["type"] = 32},
      {["lv"] = 4579260101969313793, ["offset"] = 8, ["type"] = 32},
      {["lv"] = 4629700418003061965, ["offset"] = 12, ["type"] = 32},
      {["lv"] = 4539628425467396096, ["offset"] = 16, ["type"] = 32},
    }
    qmxg = {
    {["value"] = 4579260101969313892, ["offset"] = 8, ["type"] = 32},    
    }
    xqmnb(qmnb)
end

function a1()
  gg.clearResults()
  gg.alert("先打一炮再开")
  fastsearch({
    {
      99,
      16,
      32
    },
    {
      2,
      -36,
      16
    },
    {
      0.20000000298023224,
      -32,
      16
    },
    {
      0.4000000059604645,
      -24,
      16
    },
    {
      0.15000000596046448,
      -20,
      16
    },
    {
      1,
      -16,
      16
    },
    {
      0.8500000238418579,
      -12,
      16
    },
    {
      2.5,
      12,
      16
    }
  }, {
    {
      5,
      -36,
      16,
      false
    }
  })
end     

function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "全图高亮"},
{["value"] = 8.0, ["type"]=16},
{["lv"] = 4,["offset"]=-4, ["type"]=4},
{["lv"] = 1,["offset"]=8, ["type"]=4},
{["lv"] = 8,["offset"]=12, ["type"]=4},
}
qmxg = {
{["value"] = 1, ["offset"] = 46, ["type"] = 4, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a3()
qmnb = {
{["memory"] = 32},
{["name"] = "人物反伤"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 176, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a4()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "极速回血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 144, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a8()
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a9()
qmnb = {
{["memory"] = 32},
{["name"] = "无视护盾"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 156, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a10()
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a11()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a12()
qmnb = {
{["memory"] = 32},
{["name"] = "移动开物"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = -1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =44, ["type"] = 16},
{["lv"] = 1.0,["offset"] =48, ["type"] = 16},
{["lv"] = -1.0,["offset"] =52, ["type"] = 16},
{["lv"] = 0.5,["offset"] =92, ["type"] = 16},
{["lv"] = 1.0,["offset"] =96, ["type"] = 16},
{["lv"] = -1.0,["offset"] =100, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a13()
qmnb = {
{["memory"] = 32},
{["name"] = "击倒次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =68, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a14()
qmnb = {
{["memory"] = 32},
{["name"] = "营救次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a15()
qmnb = {
{["memory"] = 32},
{["name"] = "造成伤害"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =48, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a16()
qmnb = {
{["memory"] = 32},
{["name"] = "道具无冷"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =12, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
{["lv"] = 1.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =24, ["type"] = 16},
}
xqmnb(qmnb)
end

function a17()
qmnb = {
{["memory"] = 32},
{["name"] = "武器秒杀"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 136, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end




function a36()
qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1, ["offset"] = -20, ["type"] = 16},
{["value"] = 1, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function a37()
qmnb = {
{["memory"] = 32},
{["name"] = "跳高效果"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a38()
qmnb = {
{["memory"] = 16384},
{["name"] = "渲染透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a39()--酒桶一套
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶一套"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 1.0,["offset"] =132, ["type"] = 16},
{["value"] = 0,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function a40()
	 NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end


function a41()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function a42()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function a43()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end


function a44()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end

function a45()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end

function a46()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x172d0d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x172d0d4},})
end

function a47()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function a48()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})
end
	 
function a49()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e07618+4},})
end

function a50()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})

end

function a51()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end


function a52()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5ebf8},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5eb64},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108+4},})
end


function a53()--杀队友
qc=gg.alert("专门制裁那些傻逼队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end

function a54()--子弹射程穿墙
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})
end

function a55()--枪枪暴击
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},})
end

function a56()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},})
end

function a57()--道具等级
nc_offset(getso("libil2cpp.so"),{{-486538744,4,0x1B3EC9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},})
end
-------------------------------------------------------------------------------------------------------------
function B()
UI = "B"
local menu = gg.multiChoice({
     "💳三倍开锁💳",
	 "💳范围人门锁💳",
	 "💳无需点锁💳",
	 "💳人物跳高💳",
	 "💳疾跑改无敌buff💳",
	 "💳稳定透视💳",
	 "💳猎杀队友💳",
	 "💳角色技能💳",
	 "💳移动开物💳",
	 "💳人物加速💳",
	 "👹返回主页👹",
}, nil, "YT提示: 稳定速刷！")
if menu then
for i in pairs(menu) do
_ENV[({"b1","b2","b3","b4","b5","b6","b7","b8","b9","b10","Main",})[i]]()
  end
 end 
end

function b1()--1
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
end

function b2()--2
fastsearch({{1.2999999523162842, 16, 32}, {1.2999999523162842, 4, 16}, {1.0, 8, 16}}, {{5, 0, 16, false}, {5, 4, 16, false}})
end


function b3()--3
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
end


function b4()--4
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b5()--5
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("a内存疾跑改Boss无敌")
	 gg.clearResults()
end

function b6()
qmnb = {
{["memory"] = 16384},
{["name"] = "稳定透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearList()
end

function b7()
qc=gg.alert("专门制裁那些傻逼队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end

function b8()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function b9()
qmnb = {
{["memory"] = 32},
{["name"] = "移动开物"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = -1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =44, ["type"] = 16},
{["lv"] = 1.0,["offset"] =48, ["type"] = 16},
{["lv"] = -1.0,["offset"] =52, ["type"] = 16},
{["lv"] = 0.5,["offset"] =92, ["type"] = 16},
{["lv"] = 1.0,["offset"] =96, ["type"] = 16},
{["lv"] = -1.0,["offset"] =100, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function b10()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function C()
UI = "C"
local menu = gg.multiChoice({
"💎猎杀异常💎",
"💎xa存全防💎",
"💎猎杀检测💎",
"💎so存全防💎",
"💎内存全防💎",--5
"💎终极全防💎",
"💎大厅全防💎",
"💎杀死追封💎",
"💎上榜全防💎",
"💎全防检测💎",--10
"💎全防举报💎",
"💎杀死人工💎",
"💎杀死异常💎",
"💎断开连接💎",
"💎载入全防💎",--15
"💎防封套装💎",
"💎猎杀人工💎",
"💎猎杀追封💎",
"💎猎杀内存💎",
"💎猎杀检测💎",--20
"💎载入全防💎",
"💎超级防封💎",
"💎杀死举报💎",
"💎xa存全防💎",
"💎超级全防💎",--25
"💎猎杀检测💎",
"💎猎杀举报💎",
"💎so内全防💎",
"💎cd内全防💎",
"💎大厅全防💎",
"️返回主页️",
}, nil, "YT防封区\nYT-为你保驾护航")
if menu then
for i in pairs(menu) do
_ENV[({"c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13","c14","c15","c16","c17","c18","c19","c20","c21","c22","c23","c24","c25","c26","c27","c28","c29","c30","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function c1()
gg.setRanges(4)
gg.searchNumber("3042160", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1400017232"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1599227979", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-292136832"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,987,539,786", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测10%")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,398,036,289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测35%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,631,207,205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测50%")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("574,169,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测70%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,629,954,853", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测75%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,463,904,086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测80%")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("639,645,488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测99%")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("588,650,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测100%")
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("959,784,737", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("为你保驾护航-杀全部检测")
	 gg.clearResults()
gg.clearResults()
gg.searchAddress("842,084,353", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("842,084,353", gg.TYPE_DWORD)
gg.toast("杀检测开启成功")
gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
	 end
	 
function c2()
gg.setRanges(4)
gg.searchNumber("3042160", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1400017232"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1599227979", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-292136832"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,987,539,786", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测10%")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,398,036,289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测35%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,631,207,205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测50%")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("574,169,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测70%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,629,954,853", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测75%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,463,904,086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测80%")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("639,645,488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测99%")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("588,650,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("杀检测100%")
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("959,784,737", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("为你保驾护航-杀全部检测")
	 gg.clearResults()
gg.clearResults()
gg.searchAddress("842,084,353", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("842,084,353", gg.TYPE_DWORD)
gg.toast("杀检测开启成功")
gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
	 end
	 
function c3()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("xa全防", gg.TYPE_BYTE)
	 gg.toast("xa全防  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('65,793',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("so全防1")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('26,625',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("so全防2")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('23,552',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("so全防3")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('21,568',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("so全防4")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('13,312',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("so全防开启成功")
qmnb = {
{["memory"] = 16384},
{["name"] = "防追封1"},
{["value"] = 1745421313, ["type"] = 4},
{["lv"] = 1745421313,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1745421313,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防追封2"},
{["value"] = 1929409140, ["type"] = 4},
{["lv"] = 1929409140,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1929409140,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防追封3"},
{["value"] = 21530208, ["type"] = 4},
}
qmxg = {
{["value"] = -21530208,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封4"},
{["value"] = 7562610, ["type"] = 4},
{["lv"] = 7562610,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -7562610,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防追封5"},
{["value"] = 696123755, ["type"] = 4},
{["lv"] = 696123755,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -696123755,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

function c4()
if gg.getRangesList("libil2cpp.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x95C028; -- 数值地址:0xBB223028
	t[2] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x35A9B98; -- 数值地址:0xBDE70B98
	t[3] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x378E7B0; -- 数值地址:0xBE0557B0
	t[4] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x3AFB518; -- 数值地址:0xBE3C2518
	t[5] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4C9D264; -- 数值地址:0xBF564264
	t[6] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D54250; -- 数值地址:0xBF61B250
	t[7] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D59C98; -- 数值地址:0xBF620C98
	t[8] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D5B998; -- 数值地址:0xBF622998
	t[9] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D70394; -- 数值地址:0xBF637394
	t[10] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D704BC; -- 数值地址:0xBF6374BC
	t[11] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D74DB4; -- 数值地址:0xBF63BDB4
	t[12] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7D648; -- 数值地址:0xBF644648
	t[13] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7DF8C; -- 数值地址:0xBF644F8C
	t[14] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7E254; -- 数值地址:0xBF645254
	t[15] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D91064; -- 数值地址:0xBF658064
	t[16] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DB1C74; -- 数值地址:0xBF678C74
	t[17] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DB24BC; -- 数值地址:0xBF6794BC
	t[18] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC2AB8; -- 数值地址:0xBF689AB8
	t[19] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC46BC; -- 数值地址:0xBF68B6BC
	t[20] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC6F04; -- 数值地址:0xBF68DF04
	t[21] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DE3E60; -- 数值地址:0xBF6AAE60
	t[22] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DE5058; -- 数值地址:0xBF6AC058
	t[23] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB2AC; -- 数值地址:0xBF6B22AC
	t[24] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB2EC; -- 数值地址:0xBF6B22EC
	t[25] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB32C; -- 数值地址:0xBF6B232C
	t[26] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB36C; -- 数值地址:0xBF6B236C
	t[27] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB3AC; -- 数值地址:0xBF6B23AC
	t[28] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB470; -- 数值地址:0xBF6B2470
	t[29] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB4B0; -- 数值地址:0xBF6B24B0
	t[30] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB4F0; -- 数值地址:0xBF6B24F0
	t[31] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB530; -- 数值地址:0xBF6B2530
	t[32] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB570; -- 数值地址:0xBF6B2570
	t[33] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEBD00; -- 数值地址:0xBF6B2D00
	t[34] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEBE30; -- 数值地址:0xBF6B2E30
	t[35] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E09288; -- 数值地址:0xBF6D0288
	t[36] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E0FC50; -- 数值地址:0xBF6D6C50
	t[37] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E2498C; -- 数值地址:0xBF6EB98C
	t[38] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E498BC; -- 数值地址:0xBF7108BC
	t[39] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E5176C; -- 数值地址:0xBF71876C
	t[40] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E517AC; -- 数值地址:0xBF7187AC
	t[41] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51948; -- 数值地址:0xBF718948
	t[42] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51988; -- 数值地址:0xBF718988
	t[43] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E519E0; -- 数值地址:0xBF7189E0
	t[44] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51A20; -- 数值地址:0xBF718A20
	t[45] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51C78; -- 数值地址:0xBF718C78
	t[46] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51CB8; -- 数值地址:0xBF718CB8
	t[47] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E6586C; -- 数值地址:0xBF72C86C
	t[48] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E6ECD0; -- 数值地址:0xBF735CD0
	t[49] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E706F0; -- 数值地址:0xBF7376F0
	t[50] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E70734; -- 数值地址:0xBF737734
	t[51] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E7283C; -- 数值地址:0xBF73983C
	t[52] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76084; -- 数值地址:0xBF73D084
	t[53] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76184; -- 数值地址:0xBF73D184
	t[54] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76244; -- 数值地址:0xBF73D244
	t[55] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76384; -- 数值地址:0xBF73D384
	t[56] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76474; -- 数值地址:0xBF73D474
	t[57] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76544; -- 数值地址:0xBF73D544
	t[58] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E7C9B4; -- 数值地址:0xBF7439B4
	t[59] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EA7250; -- 数值地址:0xBF76E250
	t[60] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EB715C; -- 数值地址:0xBF77E15C
	t[61] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EC2990; -- 数值地址:0xBF789990
	t[62] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4ECD6D0; -- 数值地址:0xBF7946D0
	t[63] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EDCC78; -- 数值地址:0xBF7A3C78
	t[64] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EEF350; -- 数值地址:0xBF7B6350
	t[65] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EF5630; -- 数值地址:0xBF7BC630
	t[66] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F10828; -- 数值地址:0xBF7D7828
	t[67] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F2693C; -- 数值地址:0xBF7ED93C
	t[68] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26A2C; -- 数值地址:0xBF7EDA2C
	t[69] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26A98; -- 数值地址:0xBF7EDA98
	t[70] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26B6C; -- 数值地址:0xBF7EDB6C
	gg.addListItems({
	    [1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[49] = { 
			address = t[49],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[50] = { 
			address = t[50],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[51] = { 
			address = t[51],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[52] = { 
			address = t[52],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[53] = { 
			address = t[53],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[54] = { 
			address = t[54],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[55] = { 
			address = t[55],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[56] = { 
			address = t[56],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[57] = { 
			address = t[57],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[58] = { 
			address = t[58],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[59] = { 
			address = t[59],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[60] = { 
			address = t[60],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[61] = { 
			address = t[61],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[62] = { 
			address = t[62],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[63] = { 
			address = t[63],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[64] = { 
			address = t[64],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[65] = { 
			address = t[65],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[66] = { 
			address = t[66],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[67] = { 
			address = t[67],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[68] = { 
			address = t[68],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[69] = { 
			address = t[69],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[70] = { 
			address = t[70],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[71] = { 
			address = t[71],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[72] = { 
			address = t[72],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[73] = { 
			address = t[73],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[74] = { 
			address = t[74],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[75] = { 
			address = t[75],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[76] = { 
			address = t[76],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[77] = { 
			address = t[77],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[78] = { 
			address = t[78],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[79] = { 
			address = t[79],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[80] = { 
			address = t[80],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[81] = { 
			address = t[81],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[82] = { 
			address = t[82],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[83] = { 
			address = t[83],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[84] = { 
			address = t[84],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[85] = { 
			address = t[85],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[86] = { 
			address = t[86],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[87] = { 
			address = t[87],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[88] = { 
			address = t[88],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[89] = { 
			address = t[89],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[90] = { 
			address = t[90],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[91] = { 
			address = t[91],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[92] = { 
			address = t[92],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[93] = { 
			address = t[93],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[94] = { 
			address = t[94],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[95] = { 
			address = t[95],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[96] = { 
			address = t[96],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[97] = { 
			address = t[97],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[98] = { 
			address = t[98],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[99] = { 
			address = t[99],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[100] = { 
			address = t[100],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[101] = { 
			address = t[101],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[102] = { 
			address = t[102],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[103] = { 
			address = t[103],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[104] = { 
			address = t[104],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[105] = { 
			address = t[105],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[106] = { 
			address = t[106],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[107] = { 
			address = t[107],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[108] = { 
			address = t[108],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[109] = { 
			address = t[109],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[110] = { 
			address = t[110],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
end
if gg.getRangesList("libtersafe2.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x293310; -- 数值地址:0xA296D310
	t[2] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2B99B8; -- 数值地址:0xA29939B8
	t[3] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2B9E64; -- 数值地址:0xA2993E64
	t[4] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2DFB8C; -- 数值地址:0xA29B9B8C
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
end
if gg.getRangesList("libunity.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libunity.so")[1]["start"] + 0xE21820; -- 数值地址:0xC156F820
	t[2] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0F90; -- 数值地址:0xC171EF90
	t[3] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FD4; -- 数值地址:0xC171EFD4
	t[4] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FE0; -- 数值地址:0xC171EFE0
	t[5] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FE8; -- 数值地址:0xC171EFE8
	t[6] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1024; -- 数值地址:0xC171F024
	t[7] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1034; -- 数值地址:0xC171F034
	t[8] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1050; -- 数值地址:0xC171F050
	t[9] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1054; -- 数值地址:0xC171F054
	t[10] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1070; -- 数值地址:0xC171F070
	t[11] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1104; -- 数值地址:0xC171F104
	t[12] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1110; -- 数值地址:0xC171F110
	t[13] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1138; -- 数值地址:0xC171F138
	t[14] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1174; -- 数值地址:0xC171F174
	t[15] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1420; -- 数值地址:0xC171F420
	t[16] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAA48; -- 数值地址:0xC1728A48
	t[17] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAA6C; -- 数值地址:0xC1728A6C
	t[18] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAAB0; -- 数值地址:0xC1728AB0
	t[19] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAAE4; -- 数值地址:0xC1728AE4
	t[20] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAB58; -- 数值地址:0xC1728B58
	t[21] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAB84; -- 数值地址:0xC1728B84
	t[22] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDACC8; -- 数值地址:0xC1728CC8
	t[23] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDACFC; -- 数值地址:0xC1728CFC
	t[24] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAD10; -- 数值地址:0xC1728D10
	t[25] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAD34; -- 数值地址:0xC1728D34
	t[26] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAFB8; -- 数值地址:0xC1728FB8
	t[27] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAFEC; -- 数值地址:0xC1728FEC
	t[28] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDB030; -- 数值地址:0xC1729030
	t[29] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDB074; -- 数值地址:0xC1729074
	t[30] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDC7F4; -- 数值地址:0xC172A7F4
	t[31] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDC8F0; -- 数值地址:0xC172A8F0
	t[32] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDEB8; -- 数值地址:0xC173BEB8
	t[33] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF24; -- 数值地址:0xC173BF24
	t[34] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF54; -- 数值地址:0xC173BF54
	t[35] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF58; -- 数值地址:0xC173BF58
	t[36] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF7C; -- 数值地址:0xC173BF7C
	t[37] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDFA4; -- 数值地址:0xC173BFA4
	t[38] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDFF8; -- 数值地址:0xC173BFF8
	t[39] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE190; -- 数值地址:0xC173C190
	t[40] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE1D4; -- 数值地址:0xC173C1D4
	t[41] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE224; -- 数值地址:0xC173C224
	t[42] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE314; -- 数值地址:0xC173C314
	t[43] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE3C8; -- 数值地址:0xC173C3C8
	t[44] = gg.getRangesList("libunity.so")[1]["start"] + 0xFF3E04; -- 数值地址:0xC1741E04
	t[45] = gg.getRangesList("libunity.so")[1]["start"] + 0xFFA0F8; -- 数值地址:0xC17480F8
	t[46] = gg.getRangesList("libunity.so")[1]["start"] + 0xFFE08C; -- 数值地址:0xC174C08C
	t[47] = gg.getRangesList("libunity.so")[1]["start"] + 0x100F820; -- 数值地址:0xC175D820
	t[48] = gg.getRangesList("libunity.so")[1]["start"] + 0x101084C; -- 数值地址:0xC175E84C
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[11] = {
		address = t[11],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("50%")
end
if gg.getRangesList("libbootstrap.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x81ED8; -- 数值地址:0xC190FED8
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("全防注入成功")
end
end

function c5()
fastsearch({{4.6533968e33,16,16384}},{{0,0,16,false}})
fastsearch({{21530208,4,16384}},{{0,0,4,false}})
fastsearch({{1060864,4,16384}},{{0,0,4,false}})
fastsearch({{2359296,4,16384}},{{0,0,4,false}})
fastsearch({{2097152,4,16384}},{{0,0,4,false}})
fastsearch({{2621440,4,16384}},{{0,0,4,false}})
fastsearch({{8650752,4,16384}},{{0,0,4,false}})
fastsearch({{4194304,4,16384}},{{0,0,4,false}})
fastsearch({{1835008,4,16384}},{{0,0,4,false}})
end

function c6()
gg.alert("神·king☪︎-为你保驾护航")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,060,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("xa全防")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,359,296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防追封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,097,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防追封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,621,440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防追踪")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8,650,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防人工")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4,194,304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("过检测")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,835,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存全防")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防开启成功")
	 gg.clearResults()
gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("杀检测")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("so全防")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("杀全部检测")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防开启成功")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("终极全防开启成功")
	 gg.clearResults()
end

function c7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function c8()
gg.alert("必须在大厅开启")
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
gg.toast("获取成功,已删除追封文件")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
	 gg.searchNumber("65536", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg["TYPE_DWORD"],freeze = true,value = 0}})
	 end
	 gg.toast("清理防追封成功神·king☪︎-为您保驾护航")
end

function c9()
	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,670,527,267", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("11253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1,322,254,336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,297,307,992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,297,307,992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("开启成功")
end

function c10()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
gg.searchNumber("4554", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4554", gg.TYPE_DWORD)
gg.toast("防检测开启成功")
gg.clearResults()
end

function c11()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
end

function c12()--断开服务器链接
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xf7bb0c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf7bb0c+4},})
end

function c13()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "防封1"},
{["value"] = 1745421313, ["type"] = 4},
{["lv"] = 1745421313,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1745421313,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封2"},
{["value"] = 1929409140, ["type"] = 4},
{["lv"] = 1929409140,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1929409140,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封3"},
{["value"] = 21530208, ["type"] = 4},
{["lv"] = 21530208,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -21530208,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封4"},
{["value"] = 7562610, ["type"] = 4},
{["lv"] = 7562610,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -7562610,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封5"},
{["value"] = 696123755, ["type"] = 4},
{["lv"] = 696123755,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -696123755,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

function c14()

if gg.getRangesList("libqhsdk.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xA94; -- 数值地址:0xCE0E9A94
	t[2] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xAA0; -- 数值地址:0xCE0E9AA0
	t[3] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xAF4; -- 数值地址:0xCE0E9AF4
	t[4] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB50; -- 数值地址:0xCE0E9B50
	t[5] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB5C; -- 数值地址:0xCE0E9B5C
	t[6] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB94; -- 数值地址:0xCE0E9B94
	t[7] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xBFC; -- 数值地址:0xCE0E9BFC
	t[8] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1D90; -- 数值地址:0xCE0EAD90
	t[9] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1DE0; -- 数值地址:0xCE0EADE0
	t[10] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EB0; -- 数值地址:0xCE0EAEB0
	t[11] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EB8; -- 数值地址:0xCE0EAEB8
	t[12] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EEC; -- 数值地址:0xCE0EAEEC
	t[13] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EF0; -- 数值地址:0xCE0EAEF0
	t[14] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F00; -- 数值地址:0xCE0EAF00
	t[15] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F10; -- 数值地址:0xCE0EAF10
	t[16] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F18; -- 数值地址:0xCE0EAF18
	t[17] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F20; -- 数值地址:0xCE0EAF20
	t[18] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F28; -- 数值地址:0xCE0EAF28
	t[19] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F30; -- 数值地址:0xCE0EAF30
	t[20] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F38; -- 数值地址:0xCE0EAF38
	t[21] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F64; -- 数值地址:0xCE0EAF64
	t[22] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F7C; -- 数值地址:0xCE0EAF7C
	gg.setValues({
	[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
		},
		[11] = {
		address = t[11],
			flags = 4,
			value = 0,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("105开启成功")
end
if gg.getRangesList("libtprt.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF78; -- 数值地址:0xCE252F78
	t[2] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF7C; -- 数值地址:0xCE252F7C
	t[3] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF80; -- 数值地址:0xCE252F80
	t[4] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFCC; -- 数值地址:0xCE252FCC
	t[5] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFD4; -- 数值地址:0xCE252FD4
	t[6] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFDC; -- 数值地址:0xCE252FDC
	t[7] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFE4; -- 数值地址:0xCE252FE4
	t[8] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFEC; -- 数值地址:0xCE252FEC
	t[9] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFF4; -- 数值地址:0xCE252FF4
	t[10] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFFC; -- 数值地址:0xCE252FFC
	t[11] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE004; -- 数值地址:0xCE253004
	t[12] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE008; -- 数值地址:0xCE253008
	t[13] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE00C; -- 数值地址:0xCE25300C
	t[14] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE010; -- 数值地址:0xCE253010
	t[15] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE014; -- 数值地址:0xCE253014
	t[16] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A0; -- 数值地址:0xCE2530A0
	t[17] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A4; -- 数值地址:0xCE2530A4
	t[18] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A8; -- 数值地址:0xCE2530A8
	t[19] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0AC; -- 数值地址:0xCE2530AC
	t[20] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B0; -- 数值地址:0xCE2530B0
	t[21] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B4; -- 数值地址:0xCE2530B4
	t[22] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B8; -- 数值地址:0xCE2530B8
	t[23] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0BC; -- 数值地址:0xCE2530BC
	t[24] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C0; -- 数值地址:0xCE2530C0
	t[25] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C4; -- 数值地址:0xCE2530C4
	t[26] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C8; -- 数值地址:0xCE2530C8
	t[27] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0CC; -- 数值地址:0xCE2530CC
	t[28] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D0; -- 数值地址:0xCE2530D0
	t[29] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D4; -- 数值地址:0xCE2530D4
	t[30] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D8; -- 数值地址:0xCE2530D8
	t[31] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0DC; -- 数值地址:0xCE2530DC
	t[32] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E0; -- 数值地址:0xCE2530E0
	t[33] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E4; -- 数值地址:0xCE2530E4
	t[34] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E8; -- 数值地址:0xCE2530E8
	t[35] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0EC; -- 数值地址:0xCE2530EC
	t[36] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0FC; -- 数值地址:0xCE2530FC
	t[37] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE100; -- 数值地址:0xCE253100
	t[38] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE104; -- 数值地址:0xCE253104
	t[39] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE108; -- 数值地址:0xCE253108
	t[40] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE10C; -- 数值地址:0xCE25310C
	t[41] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE110; -- 数值地址:0xCE253110
	t[42] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE184; -- 数值地址:0xCE253184
	t[43] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE188; -- 数值地址:0xCE253188
	t[44] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE18C; -- 数值地址:0xCE25318C
	t[45] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE190; -- 数值地址:0xCE253190
	t[46] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE194; -- 数值地址:0xCE253194
	t[47] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE198; -- 数值地址:0xCE253198
	t[48] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE19C; -- 数值地址:0xCE25319C
	t[49] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A0; -- 数值地址:0xCE2531A0
	t[50] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A4; -- 数值地址:0xCE2531A4
	t[51] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A8; -- 数值地址:0xCE2531A8
	t[52] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1AC; -- 数值地址:0xCE2531AC
	t[53] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B0; -- 数值地址:0xCE2531B0
	t[54] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B4; -- 数值地址:0xCE2531B4
	t[55] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B8; -- 数值地址:0xCE2531B8
	t[56] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F58; -- 数值地址:0xCE25BF58
	t[57] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F5C; -- 数值地址:0xCE25BF5C
	t[58] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F60; -- 数值地址:0xCE25BF60
	t[59] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F64; -- 数值地址:0xCE25BF64
	t[60] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F68; -- 数值地址:0xCE25BF68
t[61] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F6C; -- 数值地址:0xCE25BF6C
	t[62] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F70; -- 数值地址:0xCE25BF70
	t[63] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F98; -- 数值地址:0xCE25BF98
	t[64] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F9C; -- 数值地址:0xCE25BF9C
	t[65] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA0; -- 数值地址:0xCE25BFA0
	t[66] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA4; -- 数值地址:0xCE25BFA4
	t[67] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA8; -- 数值地址:0xCE25BFA8
	t[68] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FAC; -- 数值地址:0xCE25BFAC
	t[69] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FB0; -- 数值地址:0xCE25BFB0
	t[70] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FE8; -- 数值地址:0xCE25BFE8
	t[71] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FEC; -- 数值地址:0xCE25BFEC
	t[72] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF0; -- 数值地址:0xCE25BFF0
	t[73] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF4; -- 数值地址:0xCE25BFF4
	t[74] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF8; -- 数值地址:0xCE25BFF8
	t[75] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FFC; -- 数值地址:0xCE25BFFC
	t[76] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7000; -- 数值地址:0xCE25C000
	t[77] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7008; -- 数值地址:0xCE25C008
	t[78] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7014; -- 数值地址:0xCE25C014
	t[79] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7018; -- 数值地址:0xCE25C018
	t[80] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7024; -- 数值地址:0xCE25C024
	t[81] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7028; -- 数值地址:0xCE25C028
	t[82] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7034; -- 数值地址:0xCE25C034
	t[83] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7038; -- 数值地址:0xCE25C038
	gg.setValues({
	[1] = {
	address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
		},
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
		},
		[49] = { 
			address = t[49],
			flags = 4,
			value = 0,
		},
		[50] = { 
			address = t[50],
			flags = 4,
			value = 0,
		},
		[51] = { 
			address = t[51],
			flags = 4,
			value = 0,
		},
		[52] = { 
			address = t[52],
			flags = 4,
			value = 0,
		},
		[53] = { 
			address = t[53],
			flags = 4,
			value = 0,
		},
		[54] = { 
			address = t[54],
			flags = 4,
			value = 0,
		},
		[55] = { 
			address = t[55],
			flags = 4,
			value = 0,
		},
		[56] = { 
			address = t[56],
			flags = 4,
			value = 0,
		},
		[57] = { 
			address = t[57],
			flags = 4,
			value = 0,
		},
		[58] = { 
			address = t[58],
			flags = 4,
			value = 0,
		},
		[59] = { 
			address = t[59],
			flags = 4,
			value = 0,
		},
		[60] = { 
			address = t[60],
			flags = 4,
			value = 0,
		},
		[61] = { 
			address = t[61],
			flags = 4,
			value = 0,
		},
		[62] = { 
			address = t[62],
			flags = 4,
			value = 0,
		},
		[63] = { 
			address = t[63],
			flags = 4,
			value = 0,
		},
		[64] = { 
			address = t[64],
			flags = 4,
			value = 0,
		},
		[65] = { 
			address = t[65],
			flags = 4,
			value = 0,
		},
		[66] = { 
			address = t[66],
			flags = 4,
			value = 0,
		},
		[67] = { 
			address = t[67],
			flags = 4,
			value = 0,
		},
		[68] = { 
			address = t[68],
			flags = 4,
			value = 0,
		},
		[69] = { 
			address = t[69],
			flags = 4,
			value = 0,
		},
		[70] = { 
			address = t[70],
			flags = 4,
			value = 0,
		},
		[71] = { 
			address = t[71],
			flags = 4,
			value = 0,
		},
		[72] = { 
			address = t[72],
			flags = 4,
			value = 0,
		},
		[73] = { 
			address = t[73],
			flags = 4,
			value = 0,
		},
		[74] = { 
			address = t[74],
			flags = 4,
			value = 0,
		},
		[75] = { 
			address = t[75],
			flags = 4,
			value = 0,
		},
		[76] = { 
			address = t[76],
			flags = 4,
			value = 0,
		},
		[77] = { 
			address = t[77],
			flags = 4,
			value = 0,
		},
		[78] = { 
			address = t[78],
			flags = 4,
			value = 0,
		},
		[79] = { 
			address = t[79],
			flags = 4,
			value = 0,
		},
		[80] = { 
			address = t[80],
			flags = 4,
			value = 0,
		},
		[81] = { 
			address = t[81],
			flags = 4,
			value = 0,
		},
		[82] = { 
			address = t[82],
			flags = 4,
			value = 0,
		},
		[83] = { 
			address = t[83],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("内部独家杀检测")
fastsearch({{1987539786,4,4}},{{0,0,4,true}})
fastsearch({{1398036289,4,4}},{{0,0,4,true}})
fastsearch({{574169904,4,4}},{{0,0,4,true}})
fastsearch({{1629954853,4,4}},{{0,0,4,true}})
fastsearch({{1463904086,4,4}},{{0,0,4,true}})
fastsearch({{639645488,4,4}},{{0,0,4,true}})
fastsearch({{588650008,4,4}},{{0,0,4,true}})
fastsearch({{959784737,4,4}},{{0,0,4,true}})
end
end

function c15()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启13%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("672568", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启43%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("312228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启53%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("656220", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启67%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启79%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("311138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启86%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("147876", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启95%")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("731622", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启100%")
	 gg.clearResults()
    gg.clearResults()
gg.toast("已注入")
end

function c16()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3042160", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1400017232"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1599227979", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-292136832"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,987,539,786", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度15%")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,398,036,289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度30%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,631,207,205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度55%")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("574,169,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度60%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,629,954,853", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度65%")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,463,904,086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度70%")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("639,645,488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度85%")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("588,650,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度90%")
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("959,784,737", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("进度100%")
	 gg.clearResults()
gg.clearResults()
gg.searchAddress("842,084,353", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("842,084,353", gg.TYPE_DWORD)
gg.toast("一套全防开启成功")
gg.clearResults()

	 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("48,889,863;79,560,711;17,629,439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("大厅防封开启30%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("大厅防封开启60%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("大厅防封开启85%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16,846,327;7,237,481", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("大厅全防修改成功")

local addr = readPointer("libunity.so", {3108}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3044}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3052}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3180}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3684}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3140}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3188}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3092}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3068}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3084}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3172}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3164}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3060}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3204}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3156}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3100}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3212}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3228}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3124}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3220}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3148}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3076}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3132}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3116}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3196}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
gg.toast("一套全防开启成功")

gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("1100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("131212", gg.TYPE_DWORD)
gg.toast("措杀检测开启成功")
gg.clearResults()
end



function c17()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("100,663,296;1,140,850,688;872,415,232:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "开启成功"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,275,068,416;603,979,776;402,653,184;939,524,096;1,845,493,760:3741", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "修改成功"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,046,820,352;503,316,480;1,979,711,488;1,845,493,760;1,744,830,464;2,080,374,784;469,762,048;1,711,276,032:3153", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "杀死成功"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,113,929,216;1,979,711,488;1,845,493,760;369,098,752;1,711,276,032;939,524,096;1,811,939,328;738,197,504;179,044,352;973,078,528;122,945,536;178,913,280;1,778,450,432:889", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "猎杀成功"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("704,643,072;738,197,504;1,811,939,328;738,197,504;1,174,405,120;2,113,929,216;1,778,384,896:477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
       v.value = "全部杀死"
v.freeze = true
end
end
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("637,534,208;150,601,728;158,859,264;233,832,448;265,158,656;1,375,731,712;113,901,568:401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "开启全防"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("704,643,072;257,425,408;1,442,840,576;257,818,624;1,073,741,824;256,770,048;1,308,622,848;260,702,208;1,744,830,464;265,814,016;1,476,395,008;2,013,265,920:2537", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "开启载入"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "10%"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "30%"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "50%"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "100%"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "载入完成"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
end

function c18()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="逃跑吧！少年" then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n此进程非框架无法解封设备！\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(1111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！\n是否清除残留日志？--神·king☪︎","确定","取消")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/android_log.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/android_log.txt")
gg.toast("清除成功")
else
gg.alert("检测到文件不存在！无法修改文件！")
end
end
end

function c19()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("272629760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1364197376", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("68157440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("578813952", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("830734336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("只能防稳定")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("25%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("50%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("75%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("100%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("125%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("150%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("175%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("200%\n全防成功")
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function c20()
gg.alert("局内开或大厅开")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,060,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("稳定全防开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,359,296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("ca全防开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,097,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("强制过检测开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,621,440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防追封开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8,650,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防人工开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4,194,304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全过检测开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,835,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存全防开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防追封")
	 gg.clearResults()
gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("全防检测开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("强制杀检测开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("xa全防开启成功")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("so全防开启成功")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("全防开启成功")
	 gg.clearResults()
end

function c21()
fastsearch({{4.6533968e33,16,16384}},{{0,0,16,false}})
fastsearch({{21530208,4,16384}},{{0,0,4,false}})
fastsearch({{1060864,4,16384}},{{0,0,4,false}})
fastsearch({{2359296,4,16384}},{{0,0,4,false}})
fastsearch({{2097152,4,16384}},{{0,0,4,false}})
fastsearch({{2621440,4,16384}},{{0,0,4,false}})
fastsearch({{8650752,4,16384}},{{0,0,4,false}})
fastsearch({{4194304,4,16384}},{{0,0,4,false}})
fastsearch({{1835008,4,16384}},{{0,0,4,false}})
end

function c22()
gg.alert("必须在大厅开启")
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,060,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,359,296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,097,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,621,440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8,650,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4,194,304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,835,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存防封开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
end

function c23()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('65,793',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常1  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('26,625',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常2  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('23,552',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常3  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('21,568',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常4  ✓")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('13,312',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常全  ✓")
end

function c24()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("43646976", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("30408704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("66322432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防1  ✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("99352576", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("47841280", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28311552", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防2  ✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("46399488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("31719424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("22937600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防封3  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第一步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第二步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第三步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第四步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("25%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("50%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("75%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("100%\n防  ✓")
gg.clearResults()
end

function c25()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("25%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("50%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("75%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("100%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("125%✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("150%✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("175%✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("200%\n全防第一步  ✓")
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("全防  ✓")
	 gg.clearResults()
end

function c26()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("防检测")
    gg.clearResults()
    gg.searchNumber("4554", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("4554", gg.TYPE_DWORD)
    gg.clearResults()
  end
  
function c27()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99999)
    gg.editAll("防举报", gg.TYPE_BYTE)
    gg.clearResults()
  end
  
  function c28()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启13%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("672568", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启43%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("312228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启53%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("656220", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启67%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启79%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("311138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启86%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("147876", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("开启95%成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("731622", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("so内存全防开启成功")
    gg.clearResults()
    gg.clearResults()
  end
  
  function c29()
local t = {"libunity.so:bss", "Cb"}
local tt = {0x1003C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libunity.so:bss", "Cb"}
local tt = {0x10148}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libunity.so:bss", "Cb"}
local tt = {0x10160}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libunity.so:bss", "Cb"}
local tt = {0x10250}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libunity.so:bss", "Cb"}
local tt = {0x10258}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libunity.so:bss", "Cb"}
local tt = {0xDB74}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function c30()--大厅防封
local addr = readPointer("libunity.so", {3108}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3044}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3052}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3180}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3684}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3140}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3188}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3092}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3068}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3084}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3172}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3164}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3060}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3204}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3156}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3100}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3212}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3228}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3124}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3220}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3148}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3076}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3132}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3116}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3196}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
gg.toast("已完成30％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("01035230h;00120021h;010351C0h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成45％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("6E6F6365h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成55％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("6E6F6365h;54007364h;76206568h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成65％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79726164h;100000~9000000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成80％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79726164h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成100％")
end


-------------------------------------------------------------------------------------------------------------
function D()
UI = 'D'
local menu = gg.multiChoice({
'360版改ID',--1
'vivo版改ID',--2
'快爆版改ID',--3
'4399版改ID',--4
'华为版改ID',--5
'九游版改ID',--6
'OP版本改ID',--7
'小米版改ID',--8
'7723版改ID',--9
'返回主页',--10
}, nil, "YT提示:选择框架\n改完ID以后再进入游戏就可以了")
if menu then
for i in pairs(menu) do
_ENV[({"d1",'d2','d3','d4','d5','d6','d7','d8','qqq9','Main'})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function d1()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
---------------------------请勿修改-------------------------------
function d2()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.vivo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d3()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d4()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d5()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.huawei/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d6()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d7()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.nearme.gamecenter/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function d8()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.mi/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function qqq9()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.7723/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end
-------------------------------------------------------------------------------------------------------------
function E()
UI = 'E'
local menu = gg.multiChoice({
"皮卡实体变身",
"疾跑实体变身",
"跳高实体变身",
"苍龙范围伤害",
"苍龙技能无冷",
"跳高换道具卡",
"疾跑换道具卡",
"拳套换道具卡",
"返回主页",
}, nil, "YT提示:娱乐功能，属于半稳")
if menu then
for i in pairs(menu) do
_ENV[({"e1","e2","e3","e4","e5","e6","e7","e8",'Main'})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function  e1()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) nh({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {NH[1]+65536, 10, 2, false}})
end

function  e2()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"恐龙:\n翼龙70010  三角龙70011  剑龙70012  迅猛龙70013  霸王龙70014  沧龙70015\n变形金刚:\n擎天柱90001  大黄蜂90002  热破90003  威震天90004  声波90005  红蜘蛛90006"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function  e3()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function  e4()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙范围伤害"},
      {["value"] = 4481982349412139008, ["type"] = 32},
      {["lv"] = 1080033280, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = -12, ["type"] = 4},
      {["lv"] = 1043542835, ["offset"] = 4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 200, ["offset"] = 0, ["type"] = 16},
      {["value"] = 10, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function  e5()
qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙无冷却"},
      {["value"] = 215832592384, ["type"] = 32},
      {["lv"] = 50, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = 12, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)
    end

function e6()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "跳高换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25653, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51456, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)  
end
function e7()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 20528, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51200, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function e8()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "拳套换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 259072, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function F()
  menu = gg.choice({
    "8v2传送",
    "4v1传送",
    "大乱斗传送",
    "返回"
  }, 0, "不要乱传送哦")
  if menu == 1 then
    fn1()
  end
  if menu == 2 then
    fn2()
  end
  if menu == 3 then
    fn3()
  end
  if menu == 4 then
    Main()
  end
  GLWW = -1
end
function fn1()
  menu1 = gg.multiChoice({
    "出生点",
    "禁闭室",
    "逃生点",
    "锁1",
    "锁2",
    "锁3",
    "锁4",
    "锁5",
    "锁6",
    "锁7",
    "锁8",
    "锁9",
    "锁10",
    "上门",
    "中门",
    "下门",
    "一键锁位[配合移动开物]",
    "返回"
  }, nil, os.date("8v2传送"))
  if menu1[1] == true then
    na1()
  end
  if menu1[2] == true then
    na2()
  end
  if menu1[3] == true then
    na3()
  end
  if menu1[4] == true then
    na4()
  end
  if menu1[5] == true then
    na5()
  end
  if menu1[6] == true then
    na6()
  end
  if menu1[7] == true then
    na7()
  end
  if menu1[8] == true then
    na8()
  end
  if menu1[9] == true then
    na9()
  end
  if menu1[10] == true then
    na10()
  end
  if menu1[11] == true then
    na11()
  end
  if menu1[12] == true then
    na12()
  end
  if menu1[13] == true then
    na13()
  end
  if menu1[14] == true then
    na14()
  end
  if menu1[15] == true then
    na15()
  end
  if menu1[16] == true then
    na16()
  end
  if menu1[17] == true then
    na17()
  end
  if menu1[18] == true then
    Main()
  end
  GLWW = -1
end
-------------------------------------------------------------------------------------------------------------
function na1()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      4.79341316223,
      -212,
      16
    },
    {
      4.50854158401,
      -204,
      16
    }
  })
end

function na2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      43.43095779419,
      -212,
      16
    },
    {
      19.70534706116,
      -204,
      16
    }
  })
end

function na3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      86.59527587891,
      -212,
      16
    },
    {
      38.43141555786,
      -204,
      16
    }
  })
end

function na4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      8.40417480469,
      -212,
      16
    },
    {
      30.41175842285,
      -204,
      16
    }
  })
end

function na5()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.5557384491,
      -212,
      16
    },
    {
      35.01443862915,
      -204,
      16
    }
  })
end

function na6()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      40.48873519897,
      -212,
      16
    },
    {
      28.41207695007,
      -204,
      16
    }
  })
end

function na7()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      56.48946380615,
      -212,
      16
    },
    {
      35.36185073853,
      -204,
      16
    }
  })
end

function na8()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.46974754333,
      -212,
      16
    },
    {
      19.14470291138,
      -204,
      16
    }
  })
end

function na9()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.46561813354,
      -212,
      16
    },
    {
      16.30953407288,
      -204,
      16
    }
  })
end

function na10()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      84.58843231201,
      -212,
      16
    },
    {
      10.42553901672,
      -204,
      16
    }
  })
end

function na11()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      34.43569946289,
      -212,
      16
    },
    {
      5.32143163681,
      -204,
      16
    }
  })
end

function na12()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      50.61042404175,
      -212,
      16
    },
    {
      2.46119451523,
      -204,
      16
    }
  })
end

function na13()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      69.50844573975,
      -212,
      16
    },
    {
      5.45300483704,
      -204,
      16
    }
  })
end
function na4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      65.45124053955,
      -212,
      16
    },
    {
      33.24272537231,
      -204,
      16
    }
  })
end

function na15()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      72.46097564697,
      -212,
      16
    },
    {
      22.39505767822,
      -204,
      16
    }
  })
end

function na16()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      80.53405761719,
      -212,
      16
    },
    {
      18.30999183655,
      -204,
      16
    }
  })
end

function na17()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      8.40417480469,
      -212,
      16
    },
    {
      30.41175842285,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.5557384491,
      -212,
      16
    },
    {
      35.01443862915,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      40.48873519897,
      -212,
      16
    },
    {
      28.41207695007,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      56.48946380615,
      -212,
      16
    },
    {
      35.36185073853,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.46974754333,
      -212,
      16
    },
    {
      19.14470291138,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.46561813354,
      -212,
      16
    },
    {
      16.30953407288,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      84.58843231201,
      -212,
      16
    },
    {
      10.42553901672,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      34.43569946289,
      -212,
      16
    },
    {
      5.32143163681,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      50.61042404175,
      -212,
      16
    },
    {
      2.46119451523,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      69.50844573975,
      -212,
      16
    },
    {
      5.45300483704,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      72.46097564697,
      -212,
      16
    },
    {
      22.39505767822,
      -204,
      16
    }
  })
end

function fn2()
  menu1 = gg.multiChoice({
    "出生点",
    "禁闭室",
    "逃生点",
    "左上锁",
    "左下锁",
    "右上锁",
    "右下锁",
    "上门",
    "下门",
    "一键锁位",
    "返回"
  }, nil, "4v1传送")
  if menu1[1] == true then
    nb1()
  end
  if menu1[2] == true then
    nb2()
  end
  if menu1[3] == true then
    nb3()
  end
  if menu1[4] == true then
    nb4()
  end
  if menu1[5] == true then
    nb5()
  end
  if menu1[6] == true then
    nb6()
  end
  if menu1[7] == true then
    nb7()
  end
  if menu1[8] == true then
    nb8()
  end
  if menu1[9] == true then
    nb9()
  end
  if menu1[10] == true then
    nb10()
  end
  if menu1[11] == true then
    Main()
  end
  GLWW = -1
end

function nb1()
  fastsearch({
    {
      0.3749999702,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      3.31672906876,
      -212,
      16
    },
    {
      15.10242652893,
      -204,
      16
    }
  })
end

function nb2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      41.2279510498,
      -212,
      16
    },
    {
      15.20110321045,
      -204,
      16
    }
  })
end

function nb3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      80.47306060791,
      -212,
      16
    },
    {
      15.10242652893,
      -204,
      16
    }
  })
end

function nb4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      24.47529602051,
      -212,
      16
    },
    {
      25.74204444885,
      -204,
      16
    }
  })
end

function nb5()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.52613067627,
      -212,
      16
    },
    {
      2.29943323135,
      -204,
      16
    }
  })
end

function nb6()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.20668029785,
      -212,
      16
    },
    {
      24.98922157288,
      -204,
      16
    }
  })
end
function nb7()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      55.20252609253,
      -212,
      16
    },
    {
      3.50737595558,
      -204,
      16
    }
  })
end

function nb8()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.47306060791,
      -212,
      16
    },
    {
      19.40088844299,
      -204,
      16
    }
  })
end

function nb9()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.5991897583,
      -212,
      16
    },
    {
      10.4521522522,
      -204,
      16
    }
  })
end

function nb10()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      24.47529602051,
      -212,
      16
    },
    {
      25.74204444885,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.52613067627,
      -212,
      16
    },
    {
      2.29943323135,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.20668029785,
      -212,
      16
    },
    {
      24.98922157288,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      55.20252609253,
      -212,
      16
    },
    {
      3.50737595558,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.47306060791,
      -212,
      16
    },
    {
      19.40088844299,
      -204,
      16
    }
  })
end

function fn3()
  menu1 = gg.multiChoice({
    "boss房",
    "教堂处",
    "海盗船",
    "C字楼",
    "返回"
  }, nil, os.date("乱斗"))
  if menu1[1] == true then
    nd1()
  end
  if menu1[2] == true then
    nd2()
  end
  if menu1[3] == true then
    nd3()
  end
  if menu1[4] == true then
    nd4()
  end
  if menu1[5] == true then
    Main()
  end
  GLWW = -1
end

function nd1()
  fastsearch({
    {
      0.3749999702,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      66.4966506958,
      -212,
      16
    },
    {
      55.80109786987,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      95.24781799316,
      -212,
      16
    },
    {
      19.73115158081,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      69.37117767334,
      -212,
      16
    },
    {
      24.43232536316,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      44.47694778442,
      -212,
      16
    },
    {
      81.638671875,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end
-------------------------------------------------------------------------------------------------------------
function G()
UI = "G"
local menu = gg.multiChoice({
     "💳人物加速💳",
	 "💳a内间隔💳",
	 "💳稳定透视💳",
	 "💳疾跑改无敌buff💳",
	 "💳锁子锁弹💳",
	 "💳无后坐力💳",
	 "💳人物跳高💳",
	 "💳猎杀队友💳",
	 "👹返回主页👹",
}, nil, "YT提示: 逃稳定消耗！")
if menu then
for i in pairs(menu) do
_ENV[({"g1","g2","g3","g4","g5","g6","g7","g8","Main",})[i]]()
  end
 end 
end

function g1()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function g2()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function g3()
qmnb = {
{["memory"] = 16384},
{["name"] = "稳定透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearList()
end

function g4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("a内存疾跑改Boss无敌")
	 gg.clearResults()
end

function g5()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function g6()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end

function g7()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function g8()
qc=gg.alert("专门制裁那些傻逼队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end
-------------------------------------------------------------------------------------------------------------
function H()
UI = "H"
local menu = gg.multiChoice({
     "💳人物加速💳",
	 "💳a内间隔💳",
	 "💳稳定透视💳",
	 "💳疾跑改无敌buff💳",
	 "💳无限暴走💳",
	 "👹返回主页👹",
}, nil, "YT提示: 追捕稳定速刷！")
if menu then
for i in pairs(menu) do
_ENV[({"h1","h2","h3","h4","h5","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function h1()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function h2()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function h3()
qmnb = {
{["memory"] = 16384},
{["name"] = "稳定透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearList()
end

function h4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("a内存疾跑改Boss无敌")
	 gg.clearResults()
end

function h5()
qmnb = {
{["memory"] = 32},
{["name"] ="追捕无限暴走️"},
{["value"] =4787326404979064832, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
 }
qmxg = {
{["value"] =10, ["offset"] = 28, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
------------------------------------------------------------------------------------------------------------
function J()
SN =gg.multiChoice({
"逃生秒结",--1
"追捕秒结",--2
"返回主页"
 },nil,os.date'YT提示:请在游戏内30秒后开启！ ')
if SN == nil then else
if SN[1] == true then j1() end
if SN[2] == true then j2() end
if SN[3] == true then Main() end
end
FX1=0
end

function j1()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})
end

function j2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})
end
-------------------------------------------------------------------------------------------------------------
function K()
UI = "K"
local menu = gg.multiChoice({
     "💳人物加速💳",
	 "💳a内间隔💳",
	 "💳稳定透视💳",
	 "💳疾跑改无敌buff💳",
	 "💳锁子锁弹💳",
	 "💳无后坐力💳",
	 "💳人物跳高💳",
	 "💳乱斗锁物💳",
	 "💳道具间隔💳",
	 "👹返回主页👹",
}, nil, "YT提示: 稳定乱斗！")
if menu then
for i in pairs(menu) do
_ENV[({"k1","k2","k3","k4","k5","k6","k7","k8","k9","Main",})[i]]()
  end
 end 
end

function k1()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function k2()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function k3()
qmnb = {
{["memory"] = 16384},
{["name"] = "稳定透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearList()
end

function k4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("a内存疾跑改Boss无敌")
	 gg.clearResults()
end

function k5()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function k6()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end

function k7()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function k8()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},})
end

function k9()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},})
end


-------------------------------------------------------------------------------------------------------------
function YUT()
UI = "YUT"
local menu = gg.multiChoice({
     "💳全星耀动作💳",
	 "💳修改文字💳",
	 "💳修改货币💳",
	 "👹返回主页👹",
}, nil, "YT提示: 钻石金币为虚拟！")
if menu then
for i in pairs(menu) do
_ENV[({"yut1","yut2","yut3","Main",})[i]]()
  end
 end 
end

function yut1()
fastsearch
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

function yut2()
local a=gg.prompt({"文字","改完之后的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end

function yut3()
mx= gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("中看不中用，拿来装逼的")os.exit()end
    gg.getResults(100)
    gg.editAll("999999999",gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end
-------------------------------------------------------------------------------------------------------------


function ym()
gg.alert("暂无","我已知晓")
end

function Exit()
os.exit()
end 

gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end
