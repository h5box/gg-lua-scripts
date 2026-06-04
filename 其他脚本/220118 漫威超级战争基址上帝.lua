function search(t,type)
rt={}
gg.setRanges(type)
gg.clearResults()
gg.searchNumber(t[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end
end
::last::
return rt
end
function split(szFullString, szSeparator) 
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} 
while true do 
local nFindLastIndex = string.find
(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = 
string.sub(szFullString, nFindStartIndex, string.len
(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub
(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len
(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end 
function xgxc(szpy, qmxg) 
for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] 
xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
xgdj = qmxg[x]["freeze"] 
if xgdj == nil or xgdj == "" then 
gg.setValues({[1] 
= {address = xgpy, flags = xglx, value = xgsz}}) 
else 
gg.addListItems({[1] 
= {address = xgpy, flags = xglx, 
freeze = xgdj, value = xgsz}}) end 
xgsl = xgsl + 1 xgjg = true end end 
function xqmnb(qmnb) 
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
pysz = {} pysz[1] 
= {} pysz[1].address 
= sl[i].address + qmnb[v]["offset"] pysz[1].flags 
= qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd 
= split(pdpd, ";") tzszpd 
= szpd[1] pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end if 
pdjg == true then szpy 
= sl[i].address xgxc(szpy, qmxg) end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
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
           gg.toast("搜索到"..#data.."条数据")
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
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("未搜到任何数据")
        return false
    end
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
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
  SN = gg.multiChoice({
    "上帝视角",
    "退出脚本"
  }, nil, "无敌的我😂又开挂了")
   if SN == nil then
  else
  if SN[1] == true then
   a()
  end
   if SN[2] == true then
    Exit()
  end
end
  XGCK = -1
end

function a()
gg.toast("瞬间上帝成功")
local t = {"libclient.so:bss", "Cb"}
local tt = {0x6FE8, 0x0, 0x0, 0x118, 0x16C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 0.02900000103, freeze = true}})
end

function Exit()
 os.exit()
end

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