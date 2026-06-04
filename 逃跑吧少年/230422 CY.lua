local urls = "https://share.weiyun.com/284O8jsC" -- 远程链接
local path = "/sdcard/开关.txt"
local data = gg.makeRequest(urls).content
local switch = data:match("【开关】(.-)【开关】")
local files = io.open(path, "r")
while switch ~= "开" do
  gg.alert("CY可能关闭了.使用.也可能是更新了")
  SW="脚本已关闭"
gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..SW.."&spd=5&source=wise")
  os.exit()
end
 
--[[

【开关】开【开关】
【公告】公告【公告】


]]

function Re_(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end 

               local QQ={1489717004,2854647558,2902892957,2316801647,2638657115,2695489334,1585132817,2407063726,3470816178,2516971419,1578348364}
for k,v in _ENV[Re_({112,97,105,114,115})](QQ) do
local aXEY=_ENV[Re_({111,115})][Re_({114,101,110,97,109,101})](Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,116,101,110,99,101,110,116,46,109,111,98,105,108,101,113,113,47,84,101,110,99,101,110,116,47,77,111,98,105,108,101,81,81,47})..v,Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,116,101,110,99,101,110,116,46,109,111,98,105,108,101,113,113,47,84,101,110,99,101,110,116,47,77,111,98,105,108,101,81,81,47})..v)
if aXEY == true then
while true do
_ENV[Re_({111,115})][Re_({101,120,105,116})](_ENV[Re_({103,103,46,97,108,101,114,116})](Re_({228,189,160,229,183,178,232,162,171,67,89,229,138,160,229,133,165,228,186,134,233,187,145,229,144,141,229,141,149})))
end
else
_ENV[Re_({103,103})][Re_({116,111,97,115,116})](Re_({233,170,140,232,175,129,230,136,144,229,138,159}))
end
end

gg.alert(os.date(Re_({232,132,154,230,156,172,229,144,175,229,138,168,230,151,182,233,151,180,228,184,186,58,37,89,229,185,180,37,109,230,156,136,37,100,230,151,165,37,72,230,151,182,37,77,229,136,134,37,83,231,167,146})))




gg.alert("我终究还是来晚了—CY内部","进入内部脚本")

gg.alert("我在那个风雨交加的夜晚看到了你","进入")

gg.alert("不知何时我觉得无趣--CY","进入")
function yc(search, write,we)
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

function setvalue(addr, flag, value)
  gg.setValues({{address = addr, flags = flag, value = value}})
end

local function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.alert("初始化失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2,#search do
			local mtp = {}
			for w,r in ipairs(result) do
				mtp[#mtp+1] = {address = r.address + search[i][2], flags = search[i][3]}
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w,r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		for i = 1, #result do
			result[i] = result[i].address
		end
		return result
	end
end

function ad(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("没有值可修改")
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
		gg.toast("修改成功，共修改" .. (#tb[1] + #tb[2]) .. "个值")
		else
			gg.toast("没有值可修改")
		end
	end
end

function CY(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("没有值可修改")
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
		gg.toast("修改成功，共修改" .. (#tb[1] + #tb[2]) .. "个值")
		else
			gg.toast("没有值可修改")
		end
	end
end

function cynb(Address,AFV)
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
	group=717703634
	gg.copyText(group, false)
	gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185}) .. #Table .. Re_({228,184,170,229,128,188}))
end

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
			tg = (tg_) and Re_({10,229,183,178,228,191,174,230,148,185}) .. tg_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			th = (th_) and Re_({10,229,183,178,232,142,183,229,143,150}) .. th_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast(Re_({10}) .. Name .. Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}) .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Re_({10}) .. Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
  gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,32,91,32,228,191,174,230,148,185})..#Table..Re_({228,184,170,229,128,188,32,93,32}))
end

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3][Re_({118,97,108,117,101})]or qmnb[3][1]qmnbt=qmnb[3][Re_({116,121,112,101})]or qmnb[3][2]qmnbn=qmnb[2][Re_({110,97,109,101})]or qmnb[2][1]gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn..Re_({229,188,128,229,144,175,229,164,177,232,180,165}))else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v][Re_({111,102,102,115,101,116})]or qmnb[v][2])pysz[1].flags=qmnb[v][Re_({116,121,112,101})]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v][Re_({108,118})]or qmnb[v][1]):gsub(Re_({44}),Re_({}))pyszpd=tostring(szpy[1].value):gsub(Re_({44}),Re_({}))if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x][Re_({118,97,108,117,101})]or qmxg[x][1]xgpy=szpy+(qmxg[x][Re_({111,102,102,115,101,116})]or qmxg[x][2])xglx=qmxg[x][Re_({116,121,112,101})]or qmxg[x][3]xgdj=qmxg[x][Re_({102,114,101,101,122,101})]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn..Re_({229,188,128,229,144,175,230,136,144,229,138,159}))else gg.toast(qmnbn..Re_({229,188,128,229,144,175,229,164,177,232,180,165}))end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD

function CY(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end

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
local il2cppStart = 0
for k, v in pairs(gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111,36}))) do
	if (v.state == Re_({88,97})) then
		il2cppStart = v[Re_({115,116,97,114,116})]
		break
	end
end
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1][Re_({231,177,187,229,158,139})]
  gg.searchNumber(Search[1][Re_({228,184,187,231,137,185,229,190,129,231,160,129})], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast(Re_({229,133,177,230,144,156,231,180,162,32})..count..Re_({32,230,157,161,230,149,176,230,141,174}))
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k][Re_({229,137,175,231,137,185,229,190,129,231,160,129})]
      if Search[k][Re_({231,177,187,229,158,139})]~= nil then
           lx =Search[k][Re_({231,177,187,229,158,139})]
         else
           lx = Search[1][Re_({231,177,187,229,158,139})]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k][Re_({229,129,143,231,167,187})]
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
          if w[Re_({231,177,187,229,158,139})] ~= nil then
             lx = w[Re_({231,177,187,229,158,139})]
           else
             lx = Search[1][Re_({231,177,187,229,158,139})]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w[Re_({229,129,143,231,167,187})]
          t[#t].flags = lx
          if (w[Re_({228,191,174,230,148,185})]~=nil) and (w[Re_({228,191,174,230,148,185})]~=false) then
            t[#t].value = w[Re_({228,191,174,230,148,185})]
            gg.setValues(t)
            if (w[Re_({229,134,187,231,187,147})] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w[Re_({229,134,187,231,187,147})]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast(Re_({229,133,177,229,129,143,231,167,187,32})..#t..Re_({32,230,157,161,230,149,176,230,141,174}))
     else
      gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
      return false
    end
   else
    gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
    return false
  end
end

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList(Re_({94,47,100,97,116,97,47,42,46,115,111,42,36}))
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == Re_({119}) then
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
			local _N = S_list[i].internalName:gsub(Re_({94,46,42,47}), Re_({}))
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
	local _A = string.format(Re_({48,120,37,88}), Get_Address(t_So, t_Offset, _bit))
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
			tg = (tg_) and Re_({10,229,183,178,228,191,174,230,148,185}) .. tg_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			th = (th_) and Re_({10,229,183,178,232,142,183,229,143,150}) .. th_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast(Re_({10}) .. Name .. Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}) .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Re_({10}) .. Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
  gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,32,91,32,228,191,174,230,148,185})..#Table..Re_({228,184,170,229,128,188,32,93,32}))
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111,36}))) do
	if (v.state == Re_({88,97})) then
		il2cppStart = v[Re_({115,116,97,114,116})]
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
	gg.toast((tt or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
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
			gg.toast(Re_({10,229,133,177,228,191,174,230,148,185}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}))
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
			gg.toast(Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
		xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})]
		xglx = qmxg[x][Re_({116,121,112,101})]
		xgsz = qmxg[x][Re_({118,97,108,117,101})]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})])
	gg.searchNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
	else
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
						pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})]
						pysz[1].flags = qmnb[v][Re_({116,121,112,101})]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value
						szpd = split(pdpd, Re_({59}))
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
				gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,230,136,144,229,138,159,10,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({10,230,157,161,230,149,176,230,141,174}))
			else
				gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
			tg = (tg_) and Re_({10,229,183,178,228,191,174,230,148,185}) .. tg_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			th = (th_) and Re_({10,229,183,178,232,142,183,229,143,150}) .. th_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast(Re_({10}) .. Name .. Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}) .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Re_({10}) .. Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
	gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185}) .. #Table .. Re_({228,184,170,229,128,188}))
end

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == Re_({115,116,114,105,110,103}) then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast(Re_({230,144,156,231,180,162,229,164,177,232,180,165}))
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
		gg.toast(Re_({229,133,177,230,144,156,231,180,162,229,136,176}) .. #result .. Re_({230,157,161,230,149,176,230,141,174}))
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read[Re_({229,134,133,229,173,152})])
	gg.setVisible(false)
	gg.searchNumber(read[Re_({228,184,187,231,137,185,229,190,129,231,160,129})], read[Re_({231,177,187,229,158,139})])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i][Re_({229,129,143,231,167,187})], flags = read[i][Re_({231,177,187,229,158,139})]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i][Re_({229,128,188})] then
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
					if x[Re_({229,134,187,231,187,147})] == true then
						data[2][#data[2] + 1] = {address = v.address + x[Re_({229,129,143,231,167,187})], flags = x[Re_({231,177,187,229,158,139})], value = x[Re_({229,128,188})], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x[Re_({229,129,143,231,167,187})], flags = x[Re_({231,177,187,229,158,139})], value = x[Re_({229,128,188})]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,230,144,156,231,180,162}) .. #Result .. Re_({230,157,161,229,156,176,229,157,128,10,229,183,178,228,191,174,230,148,185}) .. (#data[1] + #data[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({228,191,174,230,148,185,229,164,177,232,180,165}))
		end
	else
		gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({229,188,128,229,144,175,229,164,177,232,180,165,44,230,156,170,230,144,156,231,180,162,229,136,176,230,149,176,230,141,174}))
	end
end

function xqmnb(x)
	local tp1 = {[Re_({229,134,133,229,173,152})] = x[1][Re_({109,101,109,111,114,121})], [Re_({228,184,187,231,137,185,229,190,129,231,160,129})] = x[3][Re_({118,97,108,117,101})], [Re_({231,177,187,229,158,139})] = x[3][Re_({116,121,112,101})], [Re_({110,97,109,101})] = x[2][Re_({110,97,109,101})]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {[Re_({229,128,188})] = x[i][Re_({108,118})], [Re_({229,129,143,231,167,187})] = x[i].offset, [Re_({231,177,187,229,158,139})] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {[Re_({229,128,188})] = v.value, [Re_({231,177,187,229,158,139})] = v.type, [Re_({229,129,143,231,167,187})] = v.offset, [Re_({229,134,187,231,187,147})] = (v.freeze or nil)}
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
add=string.format(Re_({37,88}),t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add..Re_({48,48,48,48,48,48,48}) else
add=string.format(Re_({37,100}),Re_({48,120})..add)
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
		gg.toast(we..Re_({32,45,62,32,228,184,187,231,137,185,229,190,129,231,160,129,228,184,141,229,173,152,229,156,168}))
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
			gg.toast(we..Re_({32,45,62,32,229,133,177,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,231,187,147,230,158,156}))
			end
		else
		    if we~=nil then
			gg.toast(we..Re_({32,45,62,32,229,188,128,229,144,175,229,164,177,232,180,165}))
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
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
			gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,231,187,147,230,158,156}))
		else
			gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1][Re_({231,177,187,229,158,139})]
  gg.searchNumber(Search[1][Re_({228,184,187,231,137,185,229,190,129,231,160,129})], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast(Re_({229,133,177,230,144,156,231,180,162,32})..count..Re_({32,230,157,161,230,149,176,230,141,174}))
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k][Re_({229,137,175,231,137,185,229,190,129,231,160,129})]
      if Search[k][Re_({231,177,187,229,158,139})]~= nil then
           lx =Search[k][Re_({231,177,187,229,158,139})]
         else
           lx = Search[1][Re_({231,177,187,229,158,139})]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k][Re_({229,129,143,231,167,187})]
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
          if w[Re_({231,177,187,229,158,139})] ~= nil then
             lx = w[Re_({231,177,187,229,158,139})]
           else
             lx = Search[1][Re_({231,177,187,229,158,139})]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w[Re_({229,129,143,231,167,187})]
          t[#t].flags = lx
          if (w[Re_({228,191,174,230,148,185})]~=nil) and (w[Re_({228,191,174,230,148,185})]~=false) then
            t[#t].value = w[Re_({228,191,174,230,148,185})]
            gg.setValues(t)
            if (w[Re_({229,134,187,231,187,147})] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w[Re_({229,134,187,231,187,147})]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast(Re_({229,133,177,229,129,143,231,167,187,32})..#t..Re_({32,230,157,161,230,149,176,230,141,174}))
     else
      gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
      return false
    end
   else
    gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
    return false
  end
end


function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] xgdj = qmxg[x][Re_({102,114,101,101,122,101})] if xgdj == nil or xgdj == Re_({}) then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg.searchNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,230,148,185}) .. xgsl .. Re_({230,157,161,230,149,176,230,141,174})) else gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={[Re_({228,184,187,231,137,185,229,190,129,231,160,129})] = tb1[1][1],[Re_({231,177,187,229,158,139})] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={[Re_({229,137,175,231,137,185,229,190,129,231,160,129})] = tb1[i][1],[Re_({229,129,143,231,167,187})] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={[Re_({228,191,174,230,148,185})] = tb2[i][1],[Re_({229,129,143,231,167,187})] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={[Re_({228,191,174,230,148,185})] = false,[Re_({229,129,143,231,167,187})] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1][Re_({231,177,187,229,158,139})] gg.searchNumber(Search[1][Re_({228,184,187,231,137,185,229,190,129,231,160,129})], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast(Re_({229,133,177,230,144,156,231,180,162,32})..count..Re_({32,230,157,161,230,149,176,230,141,174})) for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k][Re_({229,137,175,231,137,185,229,190,129,231,160,129})] if Search[k][Re_({231,177,187,229,158,139})]~= nil then lx =Search[k][Re_({231,177,187,229,158,139})] else lx = Search[1][Re_({231,177,187,229,158,139})] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k][Re_({229,129,143,231,167,187})] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w[Re_({231,177,187,229,158,139})] ~= nil then lx = w[Re_({231,177,187,229,158,139})] else lx = Search[1][Re_({231,177,187,229,158,139})] end t[#t+1] = {} t[#t].address = data[i] + w[Re_({229,129,143,231,167,187})] t[#t].flags = lx if (w[Re_({228,191,174,230,148,185})]~=nil) and (w[Re_({228,191,174,230,148,185})]~=false) then t[#t].value = w[Re_({228,191,174,230,148,185})] gg.setValues(t) if (w[Re_({229,134,187,231,187,147})] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w[Re_({229,134,187,231,187,147})] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast(Re_({229,133,177,229,129,143,231,167,187,206,183})..#t..Re_({32,230,157,161,230,149,176,230,141,174,206,148,206,152})) else gg.toast(Re_({230,156,170,229,174,154,228,189,141,229,136,176,230,149,176,230,141,174,239,188,129})) return false end else gg.toast(Re_({230,156,170,229,174,154,228,189,141,229,136,176,230,149,176,230,141,174,239,188,129})) return false end end local app = {} function Assert(data) if data == nil or data == Re_({}) or data == Re_({110,105,108}) then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. Re_({126}) .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print(Re_({116,121,112,101,229,143,130,230,149,176,233,148,153,232,175,175})) gg.toast(Re_({116,121,112,101,229,143,130,230,149,176,233,148,153,232,175,175})) os.exit() end else print(Re_({109,101,109,111,114,121,32,111,114,32,97,114,114,97,121,229,143,130,230,149,176,233,148,153,232,175,175})) gg.toast(Re_({109,101,109,111,114,121,32,111,114,32,97,114,114,97,121,229,143,130,230,149,176,233,148,153,232,175,175})) os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS(Re_({228,191,174,230,148,185,229,156,176,229,157,128,230,149,176,229,128,188,40,229,156,176,229,157,128,44,230,149,176,229,128,188,231,177,187,229,158,139,44,232,166,129,228,191,174,230,148,185,231,154,132,229,128,188,41})) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS(Re_({228,191,174,230,148,185,229,156,176,229,157,128,230,149,176,229,128,188,40,229,156,176,229,157,128,44,230,149,176,229,128,188,231,177,187,229,158,139,44,232,166,129,228,191,174,230,148,185,231,154,132,229,128,188,41})) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj=Re_({48,46,48,49}),dv={},lz=Re_({47,115,100,99,97,114,100,47,46,122,98,98}),r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=Re_({44})end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],Re_({126})) if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return Re_({229,188,128,229,144,175,229,164,177,232,180,165}) end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1]..Re_({229,188,128,229,144,175,230,136,144,229,138,159}) else lde.srg(csn) return a[1]..Re_({229,188,128,229,144,175,229,164,177,232,180,165,33,33,33}) end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read[Re_({229,134,133,229,173,152})]) 	gg.setVisible(false) 	gg.searchNumber(read[Re_({228,184,187,231,137,185,229,190,129,231,160,129})],read[Re_({231,177,187,229,158,139})]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i][Re_({229,129,143,231,167,187})],flags=read[i][Re_({231,177,187,229,158,139})]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i][Re_({229,128,188})] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x[Re_({229,134,187,231,187,147})]==true then 						data[2][#data[2]+1]={address=v.address+x[Re_({229,129,143,231,167,187})],flags=x[Re_({231,177,187,229,158,139})],value=x[Re_({229,128,188})],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x[Re_({229,129,143,231,167,187})],flags=x[Re_({231,177,187,229,158,139})],value=x[Re_({229,128,188})]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({}))..Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,230,144,156,231,180,162})..#Result..Re_({230,157,161,229,156,176,229,157,128,229,183,178,228,191,174,230,148,185})..(#data[1]+#data[2])..Re_({230,157,161,230,149,176,230,141,174})) 		else 			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({}))..Re_({228,191,174,230,148,185,229,164,177,232,180,165})) 		end 	else 		gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({}))..Re_({229,188,128,229,144,175,229,164,177,232,180,165,44,230,156,170,230,144,156,231,180,162,229,136,176,230,149,176,230,141,174})) 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end
function nh(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
		gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,183,178,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
		end
	end
end
function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185})..sum..Re_({230,157,161,230,149,176,230,141,174}))
   else
      gg.toast(Search[2].name..Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185})..sum..Re_({230,157,161,230,149,176,230,141,174,44,229,134,187,231,187,147})..Freezes..Re_({230,157,161,230,149,176,230,141,174}))
   end
   gg.clearResults()
end
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or Re_({}))..Re_({229,188,128,229,144,175,230,136,144,229,138,159})) end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList(Re_({94,47,100,97,116,97,47,42,46,115,111,42,36}))
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == Re_({119}) then
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
			local _N = S_list[i].internalName:gsub(Re_({94,46,42,47}), Re_({}))
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
	local _A = string.format(Re_({48,120,37,88}), Get_Address(t_So, t_Offset, _bit))
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
			tg = (tg_) and Re_({10,229,183,178,228,191,174,230,148,185}) .. tg_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			th = (th_) and Re_({10,229,183,178,232,142,183,229,143,150}) .. th_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast(Re_({10}) .. Name .. Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}) .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Re_({10}) .. Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
  gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,32,91,32,228,191,174,230,148,185})..#Table..Re_({228,184,170,229,128,188,32,93,32}))
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111,36}))) do
	if (v.state == Re_({88,97})) then
		il2cppStart = v[Re_({115,116,97,114,116})]
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
	gg.toast((tt or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
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
			gg.toast(Re_({10,229,133,177,228,191,174,230,148,185}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}))
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
			gg.toast(Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
		xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})]
		xglx = qmxg[x][Re_({116,121,112,101})]
		xgsz = qmxg[x][Re_({118,97,108,117,101})]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})])
	gg.searchNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
	else
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
						pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})]
						pysz[1].flags = qmnb[v][Re_({116,121,112,101})]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value
						szpd = split(pdpd, Re_({59}))
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
				gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,230,136,144,229,138,159,10,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({10,230,157,161,230,149,176,230,141,174}))
			else
				gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({10,229,188,128,229,144,175,229,164,177,232,180,165}))
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
			tg = (tg_) and Re_({10,229,183,178,228,191,174,230,148,185}) .. tg_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			th = (th_) and Re_({10,229,183,178,232,142,183,229,143,150}) .. th_ .. Re_({230,157,161,230,149,176,230,141,174}) or Re_({})
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast(Re_({10}) .. Name .. Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176}) .. #data .. Re_({230,157,161,230,149,176,230,141,174}) .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Re_({10}) .. Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}), false)
			return false
		end
	else
		gg.toast(Name .. Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
	gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185}) .. #Table .. Re_({228,184,170,229,128,188}))
end

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == Re_({115,116,114,105,110,103}) then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast(Re_({230,144,156,231,180,162,229,164,177,232,180,165}))
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
		gg.toast(Re_({229,133,177,230,144,156,231,180,162,229,136,176}) .. #result .. Re_({230,157,161,230,149,176,230,141,174}))
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read[Re_({229,134,133,229,173,152})])
	gg.setVisible(false)
	gg.searchNumber(read[Re_({228,184,187,231,137,185,229,190,129,231,160,129})], read[Re_({231,177,187,229,158,139})])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i][Re_({229,129,143,231,167,187})], flags = read[i][Re_({231,177,187,229,158,139})]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i][Re_({229,128,188})] then
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
					if x[Re_({229,134,187,231,187,147})] == true then
						data[2][#data[2] + 1] = {address = v.address + x[Re_({229,129,143,231,167,187})], flags = x[Re_({231,177,187,229,158,139})], value = x[Re_({229,128,188})], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x[Re_({229,129,143,231,167,187})], flags = x[Re_({231,177,187,229,158,139})], value = x[Re_({229,128,188})]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,230,144,156,231,180,162}) .. #Result .. Re_({230,157,161,229,156,176,229,157,128,10,229,183,178,228,191,174,230,148,185}) .. (#data[1] + #data[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
			gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({228,191,174,230,148,185,229,164,177,232,180,165}))
		end
	else
		gg.toast((read[Re_({229,138,159,232,131,189,229,144,141,231,167,176})] or read[Re_({229,144,141,231,167,176})] or read[Re_({110,97,109,101})] or Re_({})) .. Re_({229,188,128,229,144,175,229,164,177,232,180,165,44,230,156,170,230,144,156,231,180,162,229,136,176,230,149,176,230,141,174}))
	end
end

function xqmnb(x)
	local tp1 = {[Re_({229,134,133,229,173,152})] = x[1][Re_({109,101,109,111,114,121})], [Re_({228,184,187,231,137,185,229,190,129,231,160,129})] = x[3][Re_({118,97,108,117,101})], [Re_({231,177,187,229,158,139})] = x[3][Re_({116,121,112,101})], [Re_({110,97,109,101})] = x[2][Re_({110,97,109,101})]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {[Re_({229,128,188})] = x[i][Re_({108,118})], [Re_({229,129,143,231,167,187})] = x[i].offset, [Re_({231,177,187,229,158,139})] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {[Re_({229,128,188})] = v.value, [Re_({231,177,187,229,158,139})] = v.type, [Re_({229,129,143,231,167,187})] = v.offset, [Re_({229,134,187,231,187,147})] = (v.freeze or nil)}
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
add=string.format(Re_({37,88}),t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add..Re_({48,48,48,48,48,48,48}) else
add=string.format(Re_({37,100}),Re_({48,120})..add)
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
		gg.toast(we..Re_({32,45,62,32,228,184,187,231,137,185,229,190,129,231,160,129,228,184,141,229,173,152,229,156,168}))
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
			gg.toast(we..Re_({32,45,62,32,229,133,177,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,231,187,147,230,158,156}))
			end
		else
		    if we~=nil then
			gg.toast(we..Re_({32,45,62,32,229,188,128,229,144,175,229,164,177,232,180,165}))
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
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
			gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,231,187,147,230,158,156}))
		else
			gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1][Re_({231,177,187,229,158,139})]
  gg.searchNumber(Search[1][Re_({228,184,187,231,137,185,229,190,129,231,160,129})], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast(Re_({229,133,177,230,144,156,231,180,162,32})..count..Re_({32,230,157,161,230,149,176,230,141,174}))
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k][Re_({229,137,175,231,137,185,229,190,129,231,160,129})]
      if Search[k][Re_({231,177,187,229,158,139})]~= nil then
           lx =Search[k][Re_({231,177,187,229,158,139})]
         else
           lx = Search[1][Re_({231,177,187,229,158,139})]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k][Re_({229,129,143,231,167,187})]
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
          if w[Re_({231,177,187,229,158,139})] ~= nil then
             lx = w[Re_({231,177,187,229,158,139})]
           else
             lx = Search[1][Re_({231,177,187,229,158,139})]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w[Re_({229,129,143,231,167,187})]
          t[#t].flags = lx
          if (w[Re_({228,191,174,230,148,185})]~=nil) and (w[Re_({228,191,174,230,148,185})]~=false) then
            t[#t].value = w[Re_({228,191,174,230,148,185})]
            gg.setValues(t)
            if (w[Re_({229,134,187,231,187,147})] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w[Re_({229,134,187,231,187,147})]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast(Re_({229,133,177,229,129,143,231,167,187,32})..#t..Re_({32,230,157,161,230,149,176,230,141,174}))
     else
      gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
      return false
    end
   else
    gg.toast(Re_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
    return false
  end
end
function Main()
menu = gg.choice({
Re_({233,152,178,233,151,170}),
Re_({233,152,178,229,176,129,229,140,186}),
Re_({231,168,179,229,174,154,229,138,159,232,131,189}),
Re_({230,148,185,230,173,166,229,153,168}),
Re_({232,167,146,232,137,178,229,143,152,232,186,171,229,138,159,232,131,189}),
Re_({98,117,102,102,229,138,159,232,131,189}),
Re_({229,164,167,228,185,177,230,150,151,229,138,159,232,131,189}),
Re_({230,173,166,229,153,168,229,138,159,232,131,189}),
Re_({233,133,146,230,161,182,229,138,159,232,131,189}),
Re_({232,191,171,229,135,187,231,130,174,229,138,159,232,131,189}),
Re_({232,191,158,229,143,145,229,138,159,232,131,189}),
Re_({232,133,149,231,130,174,232,140,131,229,155,180,229,138,159,232,131,189}),
Re_({231,155,180,232,163,133,229,138,159,232,131,189}),
Re_({229,177,128,229,134,133,230,156,137,230,149,136,230,148,185,233,129,147,229,133,183,229,141,161,231,173,137,231,186,167}),
Re_({230,148,185,233,129,147,229,133,183,229,141,161,229,147,129,232,180,168,229,138,159,232,131,189}),
Re_({229,176,143,229,173,166,231,148,159,229,133,141,230,155,180,229,138,159,232,131,189}),
Re_({97,229,134,133,229,173,152,231,139,172,229,174,182,229,138,159,232,131,189}),
Re_({230,183,183,229,144,136,229,138,159,232,131,189}),
Re_({67,89,231,139,172,229,174,182,233,152,178,229,176,129,229,140,186}),
"火箭筒改武器",
Re_({229,133,168,231,137,136,230,156,172,233,128,154,231,148,168,233,152,178,233,151,170,228,187,165,229,143,138,233,152,178,229,176,129}),
Re_({232,167,146,232,137,178,230,138,128,232,131,189}),
Re_({231,154,174,232,130,164,228,184,128,233,148,174,231,190,142,229,140,150}),
Re_({231,129,171,231,174,173,231,173,146,232,191,158,229,143,145}),
Re_({229,143,152,232,186,171,230,148,187,229,135,187}),
Re_({229,189,177,228,185,139,229,191,141,232,128,133,230,138,128,232,131,189}),
Re_({232,167,146,232,137,178,230,138,128,232,131,189,229,140,186,50}),
Re_({232,133,149,231,130,174,232,140,131,229,155,180,229,146,140,232,133,149,231,130,174,229,176,132,231,168,139}),
Re_({232,191,171,229,135,187,231,130,174,232,140,131,229,155,180,229,146,140,229,176,132,231,168,139}),
Re_({232,185,166,232,185,166,230,158,170,229,176,132,231,168,139,229,146,140,228,184,138,229,184,157,232,167,134,233,135,142}),
Re_({229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({232,183,179,232,189,172,229,133,182,228,187,150,232,132,154,230,156,172}),
Re_({98,117,102,102,229,138,159,232,131,189}),
Re_({232,189,166,232,189,174,230,151,160,233,153,144,230,146,158,228,186,186,239,188,139,230,151,160,233,153,144,230,151,182,233,151,180}),
Re_({231,139,151,231,139,151,229,164,167,229,176,143}),
Re_({228,191,174,230,148,185,233,129,147,229,133,183,229,141,161}),
"恐龙以及其他功能",
"医疗箱改道具卡",
"美化功能",
"特殊[修复]",
"解设备",
"看不懂的功能",
"控制台功能",
"武器遍历",
"角色技能3",
"观看CY",
"音乐",
Re_({233,128,128,229,135,186,232,132,154,230,156,172})},
nil,Re_({67,89}))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then F() end
if menu == 6 then E() end
if menu == 7 then FW() end
if menu == 8 then cnm() end
if menu == 9 then cnmd() end
if menu == 10 then c() end
if menu == 11 then a() end
if menu == 12 then n() end
if menu == 13 then xa() end
if menu == 14 then h4() end
if menu == 15 then h5() end
if menu == 16 then V() end
if menu == 17 then X() end
if menu == 18 then S() end
if menu == 19 then Main56() end
if menu == 20 then cnmdbfw() end
if menu == 21 then FSF() end
if menu == 22 then nmm() end
if menu == 23 then wtmd() end
if menu == 24 then wtmdb() end
if menu == 25 then wtmd1() end
if menu == 26 then wtmd2() end
if menu == 27 then nmdb() end
if menu == 28 then wnm() end
if menu == 29 then wnmd() end
if menu == 30 then wnmdb() end
if menu == 31 then r() end
if menu == 32 then rr() end
if menu == 33 then rrr() end
if menu == 34 then HS2() end
if menu == 35 then hs() end
if menu == 36 then SF() end
if menu == 37 then FS() end
if menu == 38 then CYY() end
if menu == 39 then K() end
if menu == 40 then nm() end
if menu == 41 then nmd() end
if menu == 42 then nmd1() end
if menu == 43 then nmd2() end
if menu == 44 then nmd3() end
if menu == 46 then nmd4() end
if menu == 45 then nmd5() end
if menu == 47 then QQ() end
if menu == 48 then Exit() end
XGCK=-1
end
function nmd5()
menu1 = gg.multiChoice({
"😎角色技能免费[大厅]😎",--1
"😎角色技能无冷[大厅]😎",--2
"😎玖儿免费无冷[局内]😎",--3
"😎玖儿加血减血[局内]😎",--4
"😎玖儿长度时间[局内]😎",--5
"😎奥博免费无冷[局内]😎",--6
"😎奥博范围伤害[局内]😎",--7
"😎奥博电击时间[局内]😎",--8
"😎团子免费无冷[局内]😎",--9
"😎团子技能变身[局内]😎",--10
"😎影忍免费无冷[局内]😎",--11
"😎影忍被动BUff[局内]😎",--12
"😎影忍技能落地[局内]😎",--13
"😎命石免费无冷[局内]😎",--14
"😎命石抱摔距离[局内]😎",--15
"😎命石抱摔冲刺[局内]😎",--16
"😎命石锁定抱摔[局内]😎",--17
"😎盾位普攻连发[局内]😎",--18
"😎劲凯超级技能[局内]😎",--19
"返回上一页"--20
 }, nil,os.date"")
if menu1 == nil then else
if menu1[1] == true then S1() end
if menu1[2] == true then S2() end
if menu1[3] == true then S3() end
if menu1[4] == true then S4() end
if menu1[5] == true then S5() end
if menu1[6] == true then S6() end
if menu1[7] == true then S7() end
if menu1[8] == true then S8() end
if menu1[9] == true then S9() end
if menu1[10] == true then S10() end
if menu1[11] == true then S11() end
if menu1[12] == true then S12() end
if menu1[13] == true then S13() end
if menu1[14] == true then S14() end
if menu1[15] == true then S15() end
if menu1[16] == true then S16() end
if menu1[17] == true then S17() end
if menu1[18] == true then S18() end
if menu1[19] == true then S19() end
if menu1[20] == true then HOME() end
end
end

function S1()--角色技能免费
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fea584},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea588},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fe9644},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fe9648},})
end

function S2()--角色技能无冷
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1fea4fc},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea4fc+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1febb48},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1febb4C},})
nc_offset(getso("libil2cpp.so"),{{-476050943,4,0x1feb894},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb898},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1feb008},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb00C},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1feb354},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb358},})
end

function S3()
fastsearch({{1060306944,4,32},{1056964608,4,4},{50,120,4}},{{0,120,4,true},{0,116,4,false}})
end

function S4()
QQ=gg.prompt({"输入加血或者扣血数字(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{-1035468800,4,32},{1065353216,4,4},{1065353216,148,4}},{{-QQ[1],96,16,true}})
gg.toast("成功修改"..QQ[1].."血量")
end

function S5()
fastsearch({{10, 16, 32}, {6, 4, 16}, {5, 8, 16}, {10, 12, 16}}, {{9999, 0, 16},{999,4,16},{0,8,16},{99,12,16,false}})
end

function S6()
fastsearch({{-934560717,4,32},{1090519040,-36,4}},{{0,-32,4,true},{0,-36,4,false}})
end

function S7()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function S8()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function S9()
fastsearch({{-934560717,4,32},{1092616192,-36,4}},{{0,-32,4},{0,-36,4,false}})
end	
				
function S10()
QQ=gg.prompt({"迪迦--500001\n赛罗--500002\n泽塔--500003\n飞天虎--90006\n千斤顶--90005输入代码(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{1.29999995232,16,32},{1069547520,-4,4},{1045220557,-20,4}},{{QQ[1]+50000,-8,4,false}})
end

function S11()
fastsearch({{-934560717,4,32},{80,-32,4}},{{0,-36,4},{0,-32,4,true}})
end

function S12()
fastsearch({{1077936128,4,32},{533,16,4}},{{108,4,4},{111,12,4,false}})
end

function S13()
fastsearch({{8,16,32},{1,4,16},{7,8,16}},{{0,8,16,false}})
end
function S14()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end

function S15()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end

function S16()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 20, 16, false}})
end

function S17()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
end

function S18()
local LL=gg.prompt({"连发数量[多次修改]"},{[1]="30" })
fastsearch
({{4.09628731e12,16,32},{1090519040,372,4},{1109393408,392,4},{3,396,4},},{{LL[1],400,4,false}})
end

function S19()
local LL=gg.prompt({"↓伤害↓","↓吸人范围↓","↓冲刺距离↓","↓吸人时间↓","↓当前主动技能金币↓"},{[1]="200" },{[2]="999"},{[3]="999"},{[4]="999"},{[5]="100"})
fastsearch
({{-934560717,4,32},{LL[5],-0x20,4},{8,-0x24,16}},
{
{0,-0x20,4}--金币
,{0,-0x24,16}--冷却时间
,{LL[1],0x94,16}--伤害
,{LL[2],0x4C,16}--范围
,{LL[3],0x64,16}--攻击距离
,{LL[4],0x70,16}--吸人时间
})
end

function nmd4()
gg.playVideo("http://dc.bossfqy09v.top/view.php/14c81882f8b969634961b3c9d130743d.mp4")
end
function QQ()
  menu1 = gg.multiChoice({
    "起风了",
	"大哥背起行囊",
	"江南Style",
    "遗失的心跳",
    '高阶成长指南',
    '我们',
    '篝火旁',
    '心如止水',
    '爱坤进行曲',
    'Bamba',
    '侧脸(DJ)',
    '春娇与志明(0.8)',
    'Heathens',
    'Do lt',
    '我们意念合一',
    '小丑进行曲',
    "战歌",
    "洗脑神曲",
    '赵凯',
    "爱人错过",
    "随机音乐",
    '停止'},
  nil,'')
  if menu1 == nil then else
    if menu1[1] == true then qq1() end
    if menu1[2] == true then qq2() end
    if menu1[3] == true then qq3() end
    if menu1[4] == true then qq4() end
    if menu1[5] == true then qq5() end
    if menu1[6] == true then qq6() end
    if menu1[7] == true then qq7() end
    if menu1[8] == true then qq8() end
    if menu1[9] == true then qq9() end
    if menu1[10] == true then qq10() end
    if menu1[11] == true then qq11() end
    if menu1[12] == true then qq12() end
    if menu1[13] == true then qq13() end
    if menu1[14] == true then qq14() end
    if menu1[15] == true then qq15() end
    if menu1[16] == true then qq16() end
    if menu1[17] == true then qq17() end
    if menu1[18] == true then qq18() end
    if menu1[19] == true then qq19() end
    if menu1[22] == true then stop() end
    if menu1[20] == true then qq20() end
    if menu1[21] == true then qq21() end
  end  
  GLWW=-1
end
function qq21()
Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) 
end 


function qq20()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1972445487")
end
 function qq1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1330348068.mp3")
end
function qq2()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1377530437.mp3")
end
function qq3()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=22956421.mp3")
end
function qq4()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=26127565.mp3")
end

function qq5()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1962060311.mp3")
end
function qq6()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1500157594.mp3")
end
function qq7()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=518725853.mp3")
end
function qq8()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1928002636.mp3")
end
function qq9()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960595909.mp3")
end
function qq10()
gg.playMusic("/storage/emulated/0/kgmusic/download/armağan Oruç - Bamba!.mp3")
end
function qq11()
gg.playMusic("/storage/emulated/0/kgmusic/download/于果 - 侧脸 (DJ P.W.W.画风风版).mp3")
end
function qq12()
gg.playMusic("/storage/emulated/0/kgmusic/download/男明星 - 春娇与志明 (0.8x).mp3")
end
function qq13()
gg.playMusic("/storage/emulated/0/kgmusic/download/JORGEN ODEGaRD、twenty one pilots - Heathens (Jorgen Odegard Remix).mp3")
end
function qq14()
gg.playMusic("/storage/emulated/0/kgmusic/download/赵弘发 - Do It (Remix).mp3")
end
function qq15()
gg.playMusic("/storage/emulated/0/kgmusic/download/刘汉成 - 鲸落  (我们意念合一).mp3")
end
function qq16()
gg.playMusic("/storage/emulated/0/kgmusic/download/高桥 - Relax, Take It Easy (DJ版).mp3")
end

function qq17()
NH="播放战歌"
gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..NH.."&spd=5&source=wise")
gg.playMusic("http://music.163.com/song/media/outer/url?id=1377530437.mp3")
end
function qq18()
gg.playMusic("http://dc.bossfqy09v.top/view.php/e7b9a099902ef689c4daf31057627716.mp3")
end
function qq19()
gg.playMusic("http://dc.bossfqy09v.top/view.php/772233d50f3cf374da8b1f094a0b64af.mp3")
end

function stop()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end


function nmd3()
  res = gg.choice({
    "火箭筒",--1
    "能量剑",--2
    "蹦蹦枪",--3
    "唤风镖",--4
    "能量腕炮",--5
    "迫击炮",--6
    "冲锋枪",--7
    "霞弹枪",--8
    "霸天斧",--9
    "威震天(清除武器)",--10
    "热破(清除武器)",--11
    "滋水枪",--12
  },2018, "有用的")

if res==1 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{100*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==2 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{140*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==3 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{150*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==4 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{200*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==5 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{180*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==6 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{110*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==7 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{130*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==8 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{190*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==9 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{210*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==10 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{90200*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==11 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{90100*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==12 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{11130*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end
end


function nmd2()
SN = gg.choice({
"人机",
"开门",
"秒逃",
"踩夹",
"秒踩",
}, nil, "")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
FX1=0
end

function HS1()
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
BaseAddressD(0xd5b998,'-476053503')
end

function HS2()
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
BaseAddressD(0x1c196e0,'-476053503')
end

function HS3()
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
BaseAddressD(0xd56090,'-476052716')
end

function HS4()
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
BaseAddressD(0x14433c4,'-476053503')
end

function HS5()
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
BaseAddressD(0x1443574,'-476053503')
end

function nmd1()
readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1])
end

SN = gg.choice({
"防蹦床",--1
"飞车",--2
"盾牌",--3
"防狗",--4
"防夹",--5
"秒踩",--6
"导弹",--7
"防博士",--8
"防博士2",--10
"踏空",--11
"无计时",--12
"无限长",--13
}, nil, "额")
if SN==1 then HSS1() end
if SN==2 then HSS2() end
if SN==3 then HSS3() end
if SN==4 then HSS4() end
if SN==5 then HSS5() end
if SN==6 then HSS6() end
if SN==7 then HSS7() end
if SN==8 then HSS8() end
if SN==9 then HSS10() end
if SN==10 then HSS11() end
if SN==11 then HSS12() end
if SN==12 then HSS13() end
FX1=0
end

function HSS1()
local addr = readPointer("libil2cpp.so", {26344964}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防蹦床
end

function HSS2()
local addr = readPointer("libil2cpp.so", {30385456}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--飞车
end

function HSS3()
local addr = reedPointer("libil2cpp.so", {78042076}, 2)
gg.edits(addr,{{0.6,16, 0, false}})--盾牌
end

function HSS4()
local addr = readPointer("libil2cpp.so", {30385456}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防狗
end

function HSS5()
local addr = readPointer("libil2cpp.so", {23005648}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防夹
end

function HSS6()
local addr = readPointer("libil2cpp.so", {23006844}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--秒踩
end

function HSS7()
local addr = readPointer("libil2cpp.so", {30578740}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--导弹
end

function HSS8()
local addr = readPointer("libil2cpp.so", {29173452}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防博士
end

function HSS10()
local addr = readPointer("libil2cpp.so", {29195588}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防博士2
end

function HSS11()
local addr = readPointer("libil2cpp.so", {23005076}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--踏空
end

function HSS12()
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--无计时
end

function HSS13()
local addr = readPointer("libil2cpp.so", {32724908}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--无限长
end

function nmd()
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

function nm()
menu1 = gg.multiChoice({
"强制对友准备",
"老版登录界面",
"皮肤美化(游戏内)",
"优化战绩",
"追捕传送无敌",
"大乱斗无视毒区",
"秒死",
"放烟花",
"",
"",
"",
"️返回上一页",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then xz1() end
if menu1[2] == true then xz2() end
if menu1[3] == true then xz3() end
if menu1[4] == true then xz4() end
if menu1[5] == true then xz5() end
if menu1[6] == true then xz6() end
if menu1[7] == true then xz7() end
if menu1[8] == true then xz8() end
if menu1[9] == true then xxz9() end
if menu1[10] == true then xxz10() end
if menu1[11] == true then xxz11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end
readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1])  end


function xz8()
SN = gg.choice({
"Boom",
"关",
"返回脚本",
}, nil, "")
if SN==1 then HSSS1() end
if SN==2 then HSSS2() end
if SN==3 then HOME() end
FX1=0
end

function HSSS1()
--libil2cpp.so + 0x1582154
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-6268592879430529464, 32, 0, false}})
end

function HSSS2()
--libil2cpp.so + 0x1582154
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-6268592876918255628, 32, 0, false}})
end

readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1])  end


function xz7()
SN = gg.choice({
"Boom",
"上膛",
"返回脚本",
}, nil, "")
if SN==1 then HSSSS1() end
if SN==2 then HSSSS2() end
if SN==3 then HOME() end
FX1=0
end

function HSSSS1()
--libil2cpp.so + 0x1582154
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-6268592876918255628, 32, 0, false}})
end

function HSSSS2()
--libil2cpp.so + 0x1582154
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-6268592879430527560, 32, 0, false}})
end

function xz5()--传送无敌
fastsearch({{200,16,32},{200,12,16},{0,136,4}},{{3,136,4,false}}) 
end

function xz6()--无视毒区
fastsearch({{125.0,16,32},{1,-168,16}},{{999999,-168,16,false}})
end


function xz1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
end
function xz2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x100b680},})
end
function xz3()
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
fastsearch
({
{500003,4,32},
},
{{600251,0,4,false}})
fastsearch
({
{500004,4,32},
},
{{600266,0,4,false}})
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
fastsearch
({
{500007,4,32},
},
{{601981,0,4,false}})
fastsearch
({
{500008,4,32},
},
{{602026,0,4,false}})
fastsearch
({
{500200,4,32},
},
{{600216,0,4,false}})
fastsearch
({
{500300,4,32},
},
{{600181,0,4,false}})
fastsearch
({
{500400,4,32},
},
{{601986,0,4,false}})
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
fastsearch
({
{500700,4,32},
},
{{650081,0,4,false}})
fastsearch
({
{500800,4,32},
},
{{601061,0,4,false}})
fastsearch
({
{500900,4,32},
},
{{650131,0,4,false}})
fastsearch
({
{501000,4,32},
},
{{650141,0,4,false}})
fastsearch
({
{501100,4,32},
},
{{600751,0,4,false}})
fastsearch
({
{501200,4,32},
},
{{602051,0,4,false}})
fastsearch
({
{501300,4,32},
},
{{600701,0,4,false}})
fastsearch
({
{501400,4,32},
},
{{602056,0,4,false}})
fastsearch
({
{501500,4,32},
},
{{602061,0,4,false}})
fastsearch
({
{501600,4,32},
},
{{601331,0,4,false}})
fastsearch
({
{501700,4,32},
},
{{650776,0,4,false}})
fastsearch
({
{501800,4,32},
},
{{601931,0,4,false}})
fastsearch
({
{501900,4,32},
},
{{601566,0,4,false}})
fastsearch
({
{502000,4,32},
},
{{601571,0,4,false}})
fastsearch
({
{502100,4,32},
},
{{650666,0,4,false}})
fastsearch
({
{502200,4,32},
},
{{650691,0,4,false}})
fastsearch
({
{500010,4,32},
},
{{650756,0,4,false}})
fastsearch
({
{500020,4,32},
},
{{600881,0,4,false}})
fastsearch
({
{500030,4,32},
},
{{600646,0,4,false}})
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
fastsearch
({
{500050,4,32},
},
{{650511,0,4,false}})
fastsearch
({
{500060,4,32},
},
{{650636,0,4,false}})
fastsearch
({
{500070,4,32},
},
{{650741,0,4,false}})
fastsearch
({
{502300,4,32},
},
{{650751,0,4,false}})
fastsearch
({
{500090,4,32},
},
{{650781,0,4,false}})
end




function xz4()
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function K()
menu1 = gg.multiChoice({
"火箭筒皮肤",
"迫击炮皮肤",
"能量剑皮肤",
"能量炮皮肤",
"医疗箱皮肤",
"传送门皮肤",
"自走球皮肤",
"皮卡皮肤",
"飞爪皮肤",
"疾跑皮肤",
"大厅一健美化",
"️返回上一页",
}, nil, os.date("无死人隐身美化"))
if menu1 == nil then else
if menu1[1] == true then xxz1() end
if menu1[2] == true then xxz2() end
if menu1[3] == true then xxz3() end
if menu1[4] == true then xxz4() end
if menu1[5] == true then xxz5() end
if menu1[6] == true then xxz6() end
if menu1[7] == true then xxz7() end
if menu1[8] == true then xxz8() end
if menu1[9] == true then xxz9() end
if menu1[10] == true then xxz10() end
if menu1[11] == true then xxz11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end


function xxz1()
fastsearch
({
{500010,4,32},
},
{{600016,0,4,false}})
end

function xxz2()
fastsearch
({
{500020,4,32},
},
{{600236,0,4,false}})
end

function xxz3()
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
end

function xxz4()
fastsearch
({
{500060,4,32},
},
{{601796,0,4,false}})
end

function xxz5()
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
end

function xxz6()
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
end

function xxz7()
fastsearch
({
{500700,4,32},
},
{{600566,0,4,false}})
end

function xxz8()
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
end

function xxz9()
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
end

function xxz10()
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
end

function xxz11()
readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1])
end

SN = gg.choice({
"防蹦床",--1
"飞车",--2
"盾牌",--3
"防狗",--4
"防夹",--5
"秒踩",--6
"导弹",--7
"防博士",--8
"防博士2",--10
"踏空",--11
"无计时",--12
"无限长",--13
}, nil, "额")
if SN==1 then HSS1() end
if SN==2 then HSS2() end
if SN==3 then HSS3() end
if SN==4 then HSS4() end
if SN==5 then HSS5() end
if SN==6 then HSS6() end
if SN==7 then HSS7() end
if SN==8 then HSS8() end
if SN==9 then HSS10() end
if SN==10 then HSS11() end
if SN==11 then HSS12() end
if SN==12 then HSS13() end
FX1=0
end

function HSS1()
local addr = readPointer("libil2cpp.so", {26344964}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防蹦床
end

function HSS2()
local addr = readPointer("libil2cpp.so", {30385456}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--飞车
end

function HSS3()
local addr = reedPointer("libil2cpp.so", {78042076}, 2)
gg.edits(addr,{{0.6,16, 0, false}})--盾牌
end

function HSS4()
local addr = readPointer("libil2cpp.so", {30385456}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防狗
end

function HSS5()
local addr = readPointer("libil2cpp.so", {23005648}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防夹
end

function HSS6()
local addr = readPointer("libil2cpp.so", {23006844}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--秒踩
end

function HSS7()
local addr = readPointer("libil2cpp.so", {30578740}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--导弹
end

function HSS8()
local addr = readPointer("libil2cpp.so", {29173452}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防博士
end

function HSS10()
local addr = readPointer("libil2cpp.so", {29195588}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--防博士2
end

function HSS11()
local addr = readPointer("libil2cpp.so", {23005076}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--踏空
end

function HSS12()
local addr = readPointer("libil2cpp.so", {22552916}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--无计时
end

function HSS13()
local addr = readPointer("libil2cpp.so", {32724908}, 2)
gg.edits(addr, {{-698416192, 4, 0, false}})--无限长
end
function CYY()
menu = gg.choice({
"自调",--1
"疾跑",--2
"跳高",--3
"阻挡箱",--4
"飞爪",--5
"酒桶",--6
"针",--7
"传送门",--8
"追踪雷",--9
"自走球",--10
"毒液",--11
"引力场",--12
"充气垫",--13
"跳跳杆",--14
"治疗球",--15
"时光机",--16
"战术导弹",--17
"小灰机",--18
"魔法墙",--19
"吼吼号",--20
"滑板",--21
"床",--22
"箱子",--23
"车轮滚滚",
'返回主页',},
nil,'作者:CY')
if menu == 1 then CY1() end
if menu == 2 then CY2() end
if menu == 3 then CY3() end
if menu == 4 then CY4() end
if menu == 5 then CY5() end
if menu == 6 then CY6() end
if menu == 7 then CY7() end
if menu == 8 then CY8() end
if menu == 9 then CY9() end
if menu == 10 then CY10() end
if menu == 11 then CY11() end
if menu == 12 then CY12() end
if menu == 13 then CY13() end
if menu == 14 then CY14() end
if menu == 15 then CY15() end
if menu == 16 then CY16() end
if menu == 17 then CY17() end
if menu == 18 then CY18() end
if menu == 19 then CY19() end
if menu == 20 then CY20() end
if menu == 21 then CY21() end
if menu == 22 then CY22() end
if menu == 23 then CY23() end
if menu == 24 then CY24() end
if menu == 25 then HOME() end
XGCK=-1
end



function CY24()
qmnb = {
{["memory"] = 32},
{["name"] = "车轮滚滚"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 502400, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end
   
function CY1()
local Savior=gg.prompt({"医疗变身[自调]\n变形金刚代码：90001-90006\n恐龙代码：70010-70015"}, {[1] = 90001}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗变身[初始化]"},
{["value"] = 808529509, ["type"]=4},
{["lv"] = 51252,["offset"]=4, ["type"]=4},
{["lv"] = 102656,["offset"]=12, ["type"]=4},
{["lv"] = 832,["offset"]=28, ["type"]=4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 256256, ["offset"] = 12, ["type"] = 4},
{["value"] = 0, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "医疗变身[实体]"},
{["value"] = 116, ["type"] = 4},
{["lv"] = -65536,["offset"] =84, ["type"] = 4},
{["lv"] = 65535,["offset"] =88, ["type"] = 4},
{["lv"] = -65536,["offset"] =92, ["type"] = 4},
{["lv"] = 2,["offset"] =172, ["type"] = 4},
{["lv"] = 120,["offset"] =176, ["type"] = 4},
}
qmxg = {
{["value"] = Savior[1],["offset"] =-20, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY2()
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 51200, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY3()
qmnb = {
{["memory"] = 32},
{["name"] = "跳高"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 51456, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY4()
qmnb = {
{["memory"] = 32},
{["name"] = "阻挡箱"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 77056, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY5()
qmnb = {
{["memory"] = 32},
{["name"] = "飞爪"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 205056, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function CY6()
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 204800, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY7()
qmnb = {
{["memory"] = 32},
{["name"] = "针"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 179456, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY8()
qmnb = {
{["memory"] = 32},
{["name"] = "传送门"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 230400, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY9()
qmnb = {
{["memory"] = 32},
{["name"] = "追踪雷"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 257792, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function CY10()
qmnb = {
{["memory"] = 32},
{["name"] = "自走球"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 230656, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY11()
qmnb = {
{["memory"] = 32},
{["name"] = "毒液"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 256000, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY12()
qmnb = {
{["memory"] = 32},
{["name"] = "引力场"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 256768, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY13()
qmnb = {
{["memory"] = 32},
{["name"] = "充气垫"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 257280, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY14()
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 258816, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY15()
qmnb = {
{["memory"] = 32},
{["name"] = "治疗球"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 257024, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end




function CY16()
qmnb = {
{["memory"] = 32},
{["name"] = "时光机"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 258560, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY17()
qmnb = {
{["memory"] = 32},
{["name"] = "战术导弹"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 257536, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function CY18()
qmnb = {
{["memory"] = 32},
{["name"] = "小灰机"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 258304, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY19()
qmnb = {
{["memory"] = 32},
{["name"] = "魔法墙"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 256512, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY20()
qmnb = {
{["memory"] = 32},
{["name"] = "吼吼号"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 260096, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function CY21()
qmnb = {
{["memory"] = 32},
{["name"] = "滑板"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 256256, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY22()
qmnb = {
{["memory"] = 32},
{["name"] = "床"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 25856, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function CY23()
qmnb = {
{["memory"] = 32},
{["name"] = "箱子"},
{["value"] = 51252, ["type"] = 4},
{["lv"] = 102656, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 26112, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function FS()
menu = gg.choice({
'改霸王龙',
'霸王龙功能',
'改苍龙',
'苍龙功能',
'稳定武器间隔',
"解锁风格",
"返回主页",},
nil,'作者:CY')
if menu == 1 then ma1() end
if menu == 2 then ma2() end
if menu == 3 then ma3() end
if menu == 4 then ma4() end
if menu == 5 then ma5() end
if menu == 6 then ma6() end
if menu == 7 then HOME() end
XGCK=-1
end




function ma6()
cynb({gg.getRangesList('libil2cpp.so')[1].start},{{-516948194,4,0x1B06628},})
cynb({gg.getRangesList('libil2cpp.so')[1].start},{{-516948194,4,0x1B0662C},})
end

function ma5()
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
function ma1()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70014+65536, 10, 2, false}})
end

function ma2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function ma3()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70015+65536, 10, 2, false}})
end
function ma4()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙范围伤害"},--苍龙范围伤害
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
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙冷却"},--苍龙冷却
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

function SF()
A = gg.choice({    
	 Re_({231,129,171,231,174,173,231,173,146}),
	 Re_({231,150,190,232,183,145}),
	 Re_({232,183,179,233,171,152}),
	 Re_({231,154,174,229,141,161}),
	 Re_({230,139,179,229,165,151}),
	 Re_({231,174,177,229,173,144}),
     Re_({232,191,148,229,155,158}),
}, nil,Re_({67,89}))
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
	 HOME()
end
XGCK =-1
end
function J2()--疾跑

local SA=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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

local SE=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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

local SQ=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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

local SG=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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

local SU=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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
local SP=gg.prompt({Re_({231,150,190,232,183,145,230,148,185,49,48,48,32,32,231,154,174,229,141,161,49,48,49,32,32,228,190,166,230,159,165,231,156,188,49,48,50,32,32,230,137,139,233,155,183,49,48,51,32,32,229,140,187,231,150,151,229,140,133,49,48,52,32,32,232,183,179,233,171,152,49,48,53,32,32,230,138,164,231,155,190,49,48,54,32,32,233,152,187,230,140,161,231,174,177,49,48,55,32,32,233,155,183,232,190,190,49,48,56,32,32,231,139,151,49,48,57,32,32,233,146,136,49,49,48,32,32,32,233,133,146,230,161,182,49,49,49,32,233,163,158,231,136,170,49,49,50,32,32,228,188,160,233,128,129,233,151,168,49,49,51,32,32,232,135,170,232,181,176,231,144,131,49,49,52,32,32,32,230,175,146,230,182,178,49,49,53,32,32,230,187,145,230,157,191,49,49,54,32,32,233,173,148,230,179,149,229,162,153,49,49,55,32,32,229,188,149,229,138,155,229,156,186,49,49,56,32,32,230,178,187,231,150,151,231,144,131,49,49,57,32,32,230,176,148,229,158,171,49,50,48,32,32,229,175,188,229,188,185,49,50,49,32,32,232,191,189,232,184,170,233,155,183,49,50,50,32,32,233,156,135,232,141,161,230,179,162,49,50,51,32,32,229,176,143,233,163,158,230,156,186,49,50,52,32,32,32,230,151,182,229,133,137,230,156,186,49,50,53,32,32,232,183,179,232,183,179,230,157,134,49,50,54,32,32,230,139,179,229,165,151,49,50,55,32,32,229,144,188,229,144,188,229,143,183,49,50,56,32,32,229,153,151,229,153,151,232,155,139,49,50,57,32,32,229,145,188,229,149,166,229,156,136,49,51,48,32,32,231,129,171,231,174,173,231,173,146,50,48,48,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,51,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,10,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
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
local ML=gg.prompt({Re_({232,175,183,232,190,147,229,133,165,228,189,160,232,166,129,230,148,185,231,154,132,229,164,167,229,176,143})},{[1]=Re_({49,46,48}) })
fastsearch({{18.0, 16, 32}, {8.0, -8, 16}, {1.0, -4, 16},  {-1.0, 8, 16}}, 
{
{ML[1], 4, 16, false}})
end

function HS2()
qmnb=
{
{[Re_({109,101,109,111,114,121})]=32},
{[Re_({110,97,109,101})]=Re_({232,189,166,232,189,174,230,151,160,233,153,144,230,146,158,228,186,186})},
{[Re_({118,97,108,117,101})]=1.5, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=9.0,[Re_({111,102,102,115,101,116})]=-8, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=0.20000000298023224,[Re_({111,102,102,115,101,116})]=56, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=0.4000000059604645,[Re_({111,102,102,115,101,116})]=84, [Re_({116,121,112,101})]=16},
}
qmxg=
{
{[Re_({118,97,108,117,101})]=9999,[Re_({111,102,102,115,101,116})]=0,[Re_({116,121,112,101})]=16},
}
xqmnb(qmnb,qmxg)

qmnb=
{
{[Re_({109,101,109,111,114,121})]=32},
{[Re_({110,97,109,101})]=Re_({232,189,166,232,189,174,230,151,160,233,153,144,230,146,158,228,186,186})},
{[Re_({118,97,108,117,101})]=1.5, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=9.0,[Re_({111,102,102,115,101,116})]=-8, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=0.20000000298023224,[Re_({111,102,102,115,101,116})]=56, [Re_({116,121,112,101})]=16},
{[Re_({108,118})]=0.4000000059604645,[Re_({111,102,102,115,101,116})]=84, [Re_({116,121,112,101})]=16},
}
qmxg=
{
{[Re_({118,97,108,117,101})]=9999,[Re_({111,102,102,115,101,116})]=0,[Re_({116,121,112,101})]=16},
}
xqmnb(qmnb,qmxg)
end
function rrr()
menu1 = gg.multiChoice({
Re_({66,117,102,102,229,136,157,229,167,139,229,140,150,60,229,191,133,233,161,187,229,188,128,62}),
Re_({233,133,146,230,161,182,229,133,168,229,177,143,43,230,151,160,230,149,140}),
Re_({231,150,190,232,183,145,230,148,185,230,151,160,230,149,140}),
Re_({232,183,179,233,171,152,230,148,185,230,154,180,232,181,176}),
Re_({231,150,190,232,183,145,230,148,185,98,117,102,102,91,232,135,170,232,176,131,93}),
Re_({231,150,190,232,183,145,230,148,185,233,154,143,230,156,186,98,117,102,102}),
Re_({231,150,190,232,183,145,230,148,185,98,111,115,115,230,151,160,230,149,140}),
Re_({232,183,179,233,171,152,230,148,185,230,143,144,229,141,135,230,148,187,233,128,159,91,230,151,160,233,153,144,230,151,182,233,149,191,93}),
Re_({231,148,159,229,145,189,230,138,164,231,155,190,230,148,185,98,117,102,102}),
Re_({232,191,189,230,141,149,230,151,160,233,153,144,230,154,180,232,181,176}),
Re_({232,183,179,233,171,152,230,151,160,233,153,144,230,151,182,233,151,180}),
Re_({230,151,160,230,149,140,98,117,102,102,230,151,182,233,151,180,229,138,160,233,149,191}),
Re_({233,133,146,230,161,182,228,188,164,229,174,179,232,140,131,229,155,180,98,117,102,102,91,232,135,170,232,176,131,93}),
Re_({233,133,146,230,161,182,231,166,129,230,148,187}),
Re_({233,133,146,230,161,182,233,154,143,230,156,186,98,117,102,102}),
Re_({232,191,189,230,141,149,229,128,146,229,156,176,228,184,141,232,181,183}),
Re_({239,184,143,232,191,148,229,155,158,228,184,187,233,161,181,239,184,143}),
}, nil, os.date(Re_({233,129,147,229,133,183,66,85,70,70,229,138,159,232,131,189})))
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
		gg.toast(Re_({79,80,69,78,32,70,65,73,76,69,68}))
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
		gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,183,178,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
		gg.toast(Re_({79,80,69,78,32,70,65,73,76,69,68}))
		end
	end
end

ti({{101, 4, 32}, {102, 4, 4}, {3, -4, 4}}, {{117, 0, 4, false}})
ti({{90.0, 16, 32}, {60.0, -4, 16}, {12.0, 4, 16}}, {{9999, -4, 16, false}, {9999, 0, 16, false}, {9999, 4, 16, false}})
end

function bf1()
qc=gg.alert(Re_({66,117,102,102,229,136,157,229,167,139,229,140,150,10,230,184,169,233,166,168,230,143,144,231,164,186,239,188,154,230,137,147,229,174,140,228,184,128,229,177,128,229,133,179,230,142,137,231,172,172,228,186,140,229,177,128,229,134,141,229,188,128,239,188,140,229,144,166,229,136,153,228,188,154,230,156,137,66,85,71,239,188,129}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({45,49,46,53,48,49,55,49,50,53,52,101,50,52,59,45,51,46,54,56,57,51,53,51,51,57,101,50,48,59,45,51,46,57,50,57,49,53,54,52,57,101,50,49,59,45,51,46,54,56,57,51,53,48,53,55,101,50,48,59,45,53,46,57,48,53,50,54,51,57,53,101,50,49,59,45,49,46,51,48,57,50,56,49,54,52,101,50,53,59,45,49,46,51,48,54,56,51,55,54,53,101,50,49,59,45,57,46,52,48,48,55,49,54,53,56,101,50,50,59,45,56,46,50,53,55,56,48,51,56,101,49,57,59,45,49,46,50,53,49,52,50,55,49,50,101,50,51,59,45,51,46,56,51,54,57,50,50,55,55,101,50,49,59,45,49,46,53,48,49,55,49,50,53,52,101,50,52,59,45,49,46,53,48,49,55,49,50,53,52,101,50,52,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,46,51,48,57,50,56,49,54,52,101,50,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,50,46,48,50,57,49,48,50,48,57,101,50,48}), gg.TYPE_FLOAT)
gg.toast(Re_({66,117,102,102,229,136,157,229,167,139,229,140,150,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
if qc==2 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({45,49,46,53,48,49,55,49,50,53,52,101,50,52,59,45,51,46,54,56,57,51,53,51,51,57,101,50,48,59,45,51,46,57,50,57,49,53,54,52,57,101,50,49,59,45,51,46,54,56,57,51,53,48,53,55,101,50,48,59,45,53,46,57,48,53,50,54,51,57,53,101,50,49,59,45,50,46,48,50,57,49,48,50,48,57,101,50,48,59,45,49,46,51,48,54,56,51,55,54,53,101,50,49,59,45,57,46,52,48,48,55,49,54,53,56,101,50,50,59,45,56,46,50,53,55,56,48,51,56,101,49,57,59,45,49,46,50,53,49,52,50,55,49,50,101,50,51,59,45,51,46,56,51,54,57,50,50,55,55,101,50,49,59,45,49,46,53,48,49,55,49,50,53,52,101,50,52,59,45,49,46,53,48,49,55,49,50,53,52,101,50,52,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,50,46,48,50,57,49,48,50,48,57,101,50,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,49,46,51,48,57,50,56,49,54,52,101,50,53}), gg.TYPE_FLOAT)
gg.toast(Re_({66,117,102,102,229,136,157,229,167,139,229,140,150,229,133,179,233,151,173,230,136,144,229,138,159}))
gg.clearResults()
end
end


function bf2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({233,133,146,230,161,182,229,133,168,229,177,143,43,230,151,160,230,149,140})},
{[Re_({118,97,108,117,101})] = 30.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 7.0,[Re_({111,102,102,115,101,116})] =-24, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 107,[Re_({111,102,102,115,101,116})] =136, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function bf3()--疾跑改无敌
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,150,190,232,183,145,230,148,185,230,151,160,230,149,140})},
{[Re_({118,97,108,117,101})] = 106147, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 6750208, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 65535, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 19660800, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function bf4()--跳高改暴走
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,183,179,233,171,152,230,148,185,230,154,180,232,181,176})},
{[Re_({118,97,108,117,101})] = 408, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 26112, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -256, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 255, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 28416, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end


function bf5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,48,56,59,49,48,48,70}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
	 end

function bf6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({45,50,53,54,59,45,50,44,49,49,53,44,54,55,50,44,52,55,52,59,54,44,55,53,48,44,50,48,56,59,45,54,53,44,53,51,54,59,54,53,44,53,51,53,59,45,54,53,44,53,51,54,59,49,44,49,48,55,44,50,57,54,44,50,53,54,59,49,44,49,55,52,44,52,48,53,44,49,50,48,59,49,44,50,52,49,44,53,49,51,44,57,56,52,59,49,44,51,48,56,44,54,50,50,44,56,52,56,59,45,57,50,50,44,55,52,54,44,56,56,48,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,44,55,53,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({55,44,48,49,50,44,51,53,50}), gg.TYPE_DWORD)
	 gg.toast(Re_({231,150,190,232,183,145,233,154,143,230,156,186,98,117,102,102}))
	 gg.getResults(999999)
  while true do
      gg.editAll(Re_({49,57,44,54,54,48,44,56,48,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,50,48,56,44,57,54,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,54,56,52,44,54,55,50}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,50,55,52,44,52,57,54}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,49,52,51,44,52,50,52}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,53,53,51,44,54,48,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,48,55,55,44,56,56,56}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({49,51,44,53,48,48,44,52,49,54}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,48,49,50,44,51,53,50}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,55,53,48,44,50,48,56}), gg.TYPE_DWORD)
    gg.sleep(205)
  end
end


function bf7()
gg.setRanges(32)
gg.searchNumber(Re_({49,48,54,49,52,55,59,49,48,51,87}), 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,48,51}), 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({51,48,48}), 2)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end


function bf8()
gg.setRanges(32)
gg.searchNumber(Re_({52,48,56,59,50,54,49,49,50,58,58,53}), 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,54,49,49,50}), 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll(Re_({49,51,48,51,48,52}), 4)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end



function bf9()
NH=gg.prompt({Re_({232,190,147,229,133,165,98,111,115,115,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) nh({{57983845202497689, 32, 32}, {13500416, 4, 4}, {65535, 16, 4}}, {{NH[1], 6, 2, false}})
gg.toast(Re_({98,117,102,102,228,191,174,230,148,185,230,136,144,229,138,159,10,32,32,32,32,32,230,136,144,229,138,159,228,191,174,230,148,185,49,49,52,53,49,52,230,157,161,230,160,145,230,158,157}))
end

function bf10()
bby({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) 
gg.toast(Re_({232,191,189,230,141,149,230,151,160,233,153,144,230,154,180,232,181,176,229,188,128,229,144,175,230,136,144,229,138,159,10,32,32,32,32,32,230,136,144,229,138,159,228,191,174,230,148,185,49,49,52,53,49,52,230,157,161,230,160,145,230,158,157,10,32,32,32,32,32,229,143,175,228,187,165,232,174,169,229,175,185,233,157,162,229,176,129,229,143,183}))
end

function bf11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,48,49,55,68,59,52,46,51,59,49,51,68,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,46,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,183,179,233,171,152,230,151,160,233,153,144,230,151,182,233,151,180,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function bf12()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function bf13()
local LL=gg.prompt({Re_({226,134,147,233,133,146,230,161,182,232,140,131,229,155,180,226,134,147}),Re_({226,134,147,233,133,146,230,161,182,98,117,102,102,226,134,147}),Re_({226,134,147,233,133,146,230,161,182,228,188,164,229,174,179,226,134,147})},{[1]=Re_({57,57,57}) },{[2]=Re_({51,48,48})},{[3]=Re_({50,48,48})})
fastsearch
({{1088421888,4,32},{1017370378,8,4},{1106247680,24,4}},
{
{LL[1],20,16}--范围
,{LL[2],160,4}--buff
,{LL[3],156,16}--伤害
})
end


function bf14()
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber(Re_({81,32,48,48,32,39}) .. className .. Re_({39,32,48,48}), gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print(Re_({230,178,161,230,156,137,229,143,145,231,142,176,231,177,187,10,232,175,183,231,161,174,232,174,164,230,152,175,229,144,166,229,136,157,229,167,139,229,140,150})) end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end 
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.toast(Re_({229,176,143,233,151,170,232,175,180,229,188,128,229,144,175,230,136,144,229,138,159,10,229,133,177,228,191,174,230,148,185,58,32}) .. gg.getResultsCount() .. Re_({228,184,170,231,187,147,230,158,156})) gg.clearResults() end

field = classSearch(Re_({66,97,114,114,101,108,79,98,106,101,99,116}), 276)
editerObject(field, {1500, 2, false})

field = classSearch(Re_({66,97,114,114,101,108,79,98,106,101,99,116}), 416)
editerObject(field, {10509, 2, false})end



function bf15()
     gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber(Re_({50,70,59,51,48,70,59,48,46,49,70,59,48,46,50,70,59,50,48,48,68}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     gg.editAll(Re_({51,48,48}), gg.TYPE_FLOAT)
     while true do
	 gg.getResults(100)
	 gg.editAll(Re_({49,48,48}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({49,48,50}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({49,48,51}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({49,48,55}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({49,48,56}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({50,48,50}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({50,48,54}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({51,48,48}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({51,48,49}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,53,50}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,48,57}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,49,48}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,50,50}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({50,48,52}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,52,50}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({53,55,51}), gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll(Re_({49,48,49,51,50}), gg.TYPE_DWORD)
     gg.sleep(370)
	 end
end

function rr()
menu1 = gg.multiChoice({
"狂杀最新版(8.13.0)",
Re_({}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then rr1() end
if menu1[2] == true then rr2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
function rr2()
pcall(load(gg.makeRequest(Re_({104,116,116,112,58,47,47,97,121,97,110,103,119,112,46,105,99,117,47,100,111,119,110,46,112,104,112,47,57,51,49,54,101,49,102,97,99,48,53,102,100,102,54,98,99,57,100,102,52,49,52,101,50,49,49,50,99,99,48,100,46,108,117,97})).content))
end

function rr1()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/8a58a7b1d5481379a7810121b447d5f5.lua").content))
end

function r()
menu1 = gg.multiChoice({
Re_({229,144,188,229,144,188,229,143,183,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({233,152,187,230,140,161,231,174,177,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({232,183,179,233,171,152,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({231,150,190,232,183,145,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({231,154,174,229,141,161,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({230,187,145,230,157,191,229,174,158,228,189,147,229,143,152,232,186,171}),
Re_({229,143,152,232,186,171,233,129,147,229,133,183,229,141,161,230,151,160,233,151,180,233,154,148}),
Re_({233,128,128,229,135,186})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then r1() end
if menu1[2] == true then r2() end
if menu1[3] == true then r3() end
if menu1[4] == true then r4() end
if menu1[5] == true then r5() end
if menu1[6] == true then r6() end
if menu1[7] == true then r7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end
function r7()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0x18EF558},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x18EF55C},})
end

function r1()
QQ=gg.prompt({Re_({232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,226,134,147,55,48,48,49,53,230,178,167,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,232,156,152,232,155,155})},{[1]=Re_({})})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
function r2()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({Re_({55,48,48,49,53,230,178,167,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,232,156,152,232,155,155,232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({Re_({55,48,48,49,53,230,178,167,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,232,156,152,232,155,155,232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r4()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({Re_({55,48,48,49,53,230,178,167,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,232,156,152,232,155,155,232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r5()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({Re_({232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,55,48,48,49,53,230,178,167,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,232,156,152,232,155,155,226,134,147})},{[1]=Re_({})})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function r6()
QQ=gg.prompt({Re_({232,190,147,229,133,165,229,143,152,232,186,171,228,187,163,231,160,129,226,134,147})},{[1]=Re_({})})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end

function a()
menu1 = gg.multiChoice({
Re_({233,156,184,229,164,169,232,153,142,232,191,158,229,143,145}),
Re_({229,134,178,233,148,139,230,158,170,232,191,158,229,143,145}),
Re_({232,135,170,229,138,168,230,137,139,230,158,170,232,191,158,229,143,145}),
Re_({232,131,189,233,135,143,229,137,145,232,191,158,229,143,145}),
Re_({230,153,154,231,130,174,232,191,158,229,143,145}),
Re_({231,129,171,231,174,173,231,173,146,232,191,158,229,143,145}),
Re_({232,185,166,232,185,166,230,158,170,232,191,158,229,143,145}),
Re_({228,185,177,230,150,151,231,129,171,231,174,173,231,173,146,232,191,158,229,143,145}),
Re_({231,148,181,231,144,131,230,158,170,232,191,158,229,143,145}),
Re_({231,155,190,229,141,171,232,191,158,229,143,145}),
Re_({231,186,162,232,156,152,232,155,155,231,130,174,232,191,158,229,143,145}),
Re_({230,141,162,233,163,142,230,160,135,232,191,158,229,143,145}),
Re_({229,155,158,230,151,139,233,149,150,232,191,158,229,143,145}),
Re_({232,191,171,229,135,187,231,130,174,232,191,158,229,143,145}),
Re_({231,131,173,231,160,180,231,130,174,232,191,158,229,143,145}),
Re_({230,149,163,229,188,185,230,158,170,232,191,158,229,143,145}),
Re_({231,148,159,231,137,169,230,137,139,230,158,170,232,191,158,229,143,145}),
Re_({229,156,163,229,165,179,232,191,158,229,143,145}),
Re_({229,168,129,230,149,180,229,164,169,231,130,174,232,191,158,229,143,145}),
Re_({229,131,143,231,180,160,233,148,174,232,191,158,229,143,145}),
Re_({230,176,180,230,158,170,232,191,158,229,143,145}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
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
NH=gg.prompt({Re_({232,190,147,229,133,165,233,156,184,229,164,169,230,150,167,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb2()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,134,178,233,148,139,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb3()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,135,170,229,138,168,230,137,139,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb4()
Nh=gg.alert(Re_({232,131,189,233,135,143,229,137,145}),Re_({230,153,174,233,128,154}),Re_({233,135,145,229,186,147}),Re_({229,164,167,228,185,177,230,150,151,230,150,176,229,156,176,229,155,190})) if Nh==1 then NH=gg.prompt({Re_({232,190,147,229,133,165,232,131,189,233,135,143,229,137,145,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({Re_({232,190,147,229,133,165,233,135,145,229,186,147,232,131,189,233,135,143,229,137,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({Re_({232,190,147,229,133,165,229,164,167,228,185,177,230,150,151,230,150,176,229,156,176,229,155,190,232,131,189,233,135,143,229,137,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function sb5()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,131,189,233,135,143,232,133,149,231,130,174,49,231,186,167,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb6()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,129,171,231,174,173,231,173,146,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb7() 
Nh=gg.alert(Re_({232,185,166,232,185,166,230,158,170}),Re_({230,153,174,233,128,154}),Re_({233,135,145,229,186,147}),Re_({229,164,167,228,185,177,230,150,151,230,150,176,229,156,176,229,155,190})) if Nh==1 then NH=gg.prompt({Re_({232,190,147,229,133,165,232,185,166,232,185,166,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({Re_({232,190,147,229,133,165,233,135,145,229,186,147,232,185,166,232,185,166,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({Re_({232,190,147,229,133,165,229,164,167,228,185,177,230,150,151,230,150,176,229,156,176,229,155,190,232,185,166,232,185,166,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb8()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,129,171,231,174,173,231,173,146,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb9()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,148,181,231,144,131,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function sb10()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,155,190,228,189,141,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function sb11()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,186,162,232,156,152,232,155,155,231,130,174,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb12()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,148,164,233,163,142,233,149,150,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb13()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,155,158,230,151,139,233,149,150,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb14()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,191,171,229,135,187,231,130,174,49,231,186,167,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb15()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,131,173,231,160,180,231,130,174,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb16()
Nh=gg.alert(Re_({233,156,176,229,188,185,230,158,170}),Re_({230,153,174,233,128,154}),Re_({233,135,145,229,186,147})) if Nh==1 then NH=gg.prompt({Re_({232,190,147,229,133,165,230,149,163,229,188,185,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({Re_({232,190,147,229,133,165,233,135,145,229,186,147,233,156,176,229,188,185,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb17()
NH=gg.prompt({Re_({232,190,147,229,133,165,231,148,159,231,137,169,230,137,139,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function sb18()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,156,163,229,165,179,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb19()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,168,129,233,156,135,229,164,169,231,130,174,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb20()
NH=gg.prompt({Re_({232,190,147,229,133,165,229,131,143,231,180,160,229,137,145,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb21()
NH=gg.prompt({Re_({232,190,147,229,133,165,230,187,139,230,176,180,230,158,170,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function wnmdb()
CY({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{50,0,16,false}},16,32,Re_({232,185,166,232,185,166,230,158,170,229,176,132,231,168,139}))

    qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({232,167,134,233,135,142,232,140,131,229,155,180})},
      {[Re_({118,97,108,117,101})] = 4665729215065227264, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 1086324736, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1086324736, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1092616192, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1106247680, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 30, [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = 16},
    }
    xqmnb(qmnb)
end

function wnm()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,133,149,231,130,174,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
fastsearch({{4575657222492651520, 32, 32}, {8.0, 120, 16}, {999.0, 124, 16}, {2.0, 128, 16}, {0.800000011920929, 132, 16}}, {{NH[1], 4, 16, false}})

NH=gg.prompt({Re_({232,190,147,229,133,165,232,133,149,231,130,174,229,176,132,231,168,139,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
fastsearch({{4333543705419175690, 32, 32}, {1045220557, -28, 32}, {1084227584, -16, 32}, {1008981770, 4, 4}, {1036831949, 16, 4}}, {{NH[1], -40, 16, false}, {5, -16, 16, true}})
end

function wnmd()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,191,171,229,135,187,231,130,174,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{NH[1], -36, 16, false}})

NH=gg.prompt({Re_({232,190,147,229,133,165,232,191,171,229,135,187,231,130,174,229,176,132,231,168,139,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function nmdb()
menu1 = gg.multiChoice({
Re_({230,138,128,232,131,189,229,133,141,232,180,185}),
Re_({230,138,128,232,131,189,230,151,160,233,153,144}),
Re_({230,138,128,232,131,189,230,151,160,229,134,183,229,141,180}),
Re_({229,145,189,231,159,179,232,128,133}),
Re_({230,152,159,232,190,176,229,156,163,229,165,179}),
Re_({232,137,190,229,143,175}),
Re_({233,135,145,229,186,147,232,137,190,229,143,175}),
Re_({230,176,180,228,185,139,229,191,141,232,128,133}),
Re_({229,176,143,231,139,144,231,139,184}),
Re_({229,176,143,231,139,174,229,173,144}),
Re_({229,165,165,229,141,154}),
Re_({229,189,177,228,185,139,229,191,141,232,128,133}),
Re_({229,155,162,229,173,144}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then nmdb1() end
if menu1[2] == true then nmdb2() end
if menu1[3] == true then nmdb3() end
if menu1[4] == true then nmdb4() end
if menu1[5] == true then nmdb5() end
if menu1[6] == true then nmdb6() end
if menu1[7] == true then nmdb7() end
if menu1[8] == true then nmdb8() end
if menu1[9] == true then ndmb9() end
if menu1[10] == true then nmdb10() end
if menu1[11] == true then nmdb11() end
if menu1[12] == true then nmdb12() end
if menu1[13] == true then nmdb13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end

function nmdb1()
qc=gg.alert(Re_({230,138,128,232,131,189,229,133,141,232,180,185}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0x1FE9644},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FE9648},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x1FEA584},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FEA588},})
end
if qc==2 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382908368,4,0x1FE9644},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030840,4,0x1FE9648},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382906384,4,0x1FEA584},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030820,4,0x1FEA588},})
end
end

function nmdb2()
qc=gg.alert(Re_({230,138,128,232,131,189,230,151,160,233,153,144}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476050943,4,0x1FEB894},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FEB898},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x1FEBB48},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FEBB4C},})
end
if qc==2 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382907280,4,0x1FEB894},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030832,4,0x1FEB898},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382907280,4,0x1FEBB48},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030832,4,0x1FEBB4C},})
end
end

function nmdb3()
qc=gg.alert(Re_({230,138,128,232,131,189,230,151,160,229,134,183}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x1FEB008},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FEB00C},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0x1FEB354},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1FEB358},})
end
if qc==2 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382908368,4,0x1FEB008},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030840,4,0x1FEB00C},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382908368,4,0x1FEB354},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030840,4,0x1FEB358},})
end
end

function nmdb4()
NH=gg.prompt({Re_({229,188,186,229,138,155,230,138,177,230,145,148}),Re_({230,138,177,230,145,148,229,134,178,229,136,186,232,183,157,231,166,187}),Re_({232,191,148,229,155,158})},{},{Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120})})
if NH[1] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,177,230,145,148,228,188,164,229,174,179,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,188,186,229,138,155,230,138,177,230,145,148})},
{[Re_({118,97,108,117,101})] = 4.300000190734863, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -1.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 3.0,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-256, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 1,[Re_({111,102,102,115,101,116})] =-268, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 10.0,[Re_({111,102,102,115,101,116})] =-100, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 99.0,[Re_({111,102,102,115,101,116})] =-96, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[1],[Re_({111,102,102,115,101,116})] =-84, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,177,230,145,148,229,134,178,229,136,186,232,183,157,231,166,187,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,154,180,230,145,148,229,134,178,229,136,186,232,183,157,231,166,187})},
{[Re_({118,97,108,117,101})] = 2147483647, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0,[Re_({111,102,102,115,101,116})] =32, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =56, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1077936128, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1],[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[1],[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then HOME()
end
end

function nmdb5()
qc=gg.alert(Re_({230,152,159,232,190,176,229,156,163,229,165,179}),Re_({230,138,128,232,131,189,229,188,186,229,140,150}),Re_({230,153,174,230,148,187,229,188,186,229,140,150}))
if qc==1 then
NH=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,239,188,140,229,136,157,229,167,139,229,128,188,228,184,186,56})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 1058642330, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1090519040,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1086324736,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1082130432,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 32},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-56, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = NH[1],[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 520,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 1314,[Re_({111,102,102,115,101,116})] =44, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end
if qc==2 then
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,153,174,230,148,187,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 1089470464, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = -32, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0.6000000238418579, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0.5, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.30000001192092896, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end
end

function nmdb6()
NH=gg.prompt({Re_({230,138,128,232,131,189,229,188,186,229,140,150}),Re_({230,138,128,232,131,189,98,117,102,102}),Re_({230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180}),Re_({232,191,148,229,155,158})},{},{Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120})})
if NH[1] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,44,229,136,157,229,167,139,229,128,188,228,184,186,50,46,53,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,228,188,164,229,174,179,44,229,136,157,229,167,139,229,128,188,228,184,186,53,48,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,230,149,176,233,135,143,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41}),},{[1]=Re_({}),[2]=Re_({}),[3]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 1080033280, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1082130432, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1050253722, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 80, [Re_({111,102,102,115,101,116})] = -128, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[2], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[3], [Re_({111,102,102,115,101,116})] = -136, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0.001, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,228,191,174,230,148,185,231,154,132,98,117,102,102,228,187,163,231,160,129,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,10,49,48,48,230,154,180,230,128,146,32,49,48,49,229,164,185,229,173,144,32,49,48,50,232,183,179,233,171,152,32,49,48,51,231,150,190,232,183,145,32,49,48,53,230,137,139,233,155,183,32,49,48,55,230,151,160,230,149,140,32,49,48,56,233,146,136,32,49,48,57,229,173,166,229,166,185,32,49,49,48,229,173,166,229,166,185,32,49,49,49,230,140,129,231,187,173,230,154,180,232,181,176,32,49,49,50,229,143,152,231,190,138,230,156,175,32,49,49,51,233,155,183,232,190,190,32,49,49,52,229,164,169,233,153,141,230,173,163,228,185,137,32,50,48,48,233,133,146,230,161,182,32,50,48,49,230,175,146,230,182,178,32,50,48,50,229,138,160,233,128,159,32,50,48,51,231,139,151,32,50,48,52,233,173,148,230,179,149,229,162,153,230,173,163,233,157,162,32,50,48,53,233,173,148,230,179,149,229,162,153,232,180,159,233,157,162,32,50,48,54,230,138,164,231,155,190,32,51,48,48,98,111,115,115,231,155,190,32,51,48,49,98,111,115,115,229,144,184,232,161,128,32,51,48,50,98,111,115,115,231,156,169,230,153,149,32,52,48,48,230,156,186,229,153,168,228,186,186,32,52,48,49,229,176,143,229,173,166,229,166,185,32,52,48,50,229,185,189,231,129,181,32,52,48,51,231,188,180,230,162,176,32,52,48,52,229,164,169,233,153,141,230,173,163,228,185,137,32,52,48,53,229,135,143,233,128,159,32,53,48,49,230,176,180,32,53,48,50,229,188,149,229,138,155,229,156,186,32,53,48,53,232,182,133,231,186,167,229,138,160,233,128,159,32,53,48,54,229,138,160,233,128,159,32,53,48,56,229,135,143,233,128,159,32,53,48,57,98,111,115,115,230,148,187,233,128,159,230,176,184,228,185,133,32,53,49,48,98,111,115,115,229,144,184,232,161,128,230,176,184,228,185,133,32,53,49,49,98,111,115,115,231,155,190,32,53,49,50,232,167,163,230,142,167,32,53,50,48,230,162,166,233,173,135,230,179,161,230,179,161,32,53,50,49,230,162,166,233,173,135,32,53,50,50,230,162,166,233,173,135,230,151,160,230,149,140,32,53,50,56,231,188,180,230,162,176,32,53,50,57,231,188,136,32,53,51,48,231,188,136,32,53,51,49,231,188,136,32,53,51,50,231,188,136,32,53,51,51,231,188,136,229,138,160,229,156,163,229,165,179,32,53,51,52,229,156,163,229,165,179,32,53,51,53,229,156,163,229,165,179,32,53,51,55,231,155,190,229,141,171,32,53,51,56,231,155,190,229,141,171,32,53,51,57,231,155,190,229,141,171,32,53,52,48,231,155,190,229,141,171,32,53,52,50,231,139,174,229,173,144,229,144,184,232,161,128,32,53,52,51,230,179,183,32,53,52,52,230,179,183,32,53,52,53,230,179,183,32,53,52,55,230,151,182,229,133,137,230,156,186,32,53,52,56,231,139,174,229,173,144,232,167,134,233,135,142,32,53,52,57,231,139,174,229,173,144,229,134,183,229,141,180,32,53,53,48,230,175,146,32,53,53,49,229,145,189,231,159,179,32,53,53,50,229,145,189,231,159,179,32,53,53,51,229,145,189,231,159,179,32,53,53,52,229,145,189,231,159,179,32,53,53,55,229,135,143,232,161,128,32,53,53,56,231,156,169,230,153,149,32,53,53,57,230,151,160,230,149,140,32,53,54,48,230,176,184,228,185,133,229,138,160,233,128,159,32,53,54,49,232,182,133,231,186,167,229,138,160,233,128,159,32,53,54,52,229,155,162,229,173,144,32,53,54,54,229,155,162,229,173,144,32,53,54,55,230,156,186,229,153,168,228,186,186,32,53,54,56,230,129,144,233,190,153,32,53,55,48,229,165,165,229,141,154,32,53,55,49,231,156,169,230,153,149,32,53,55,50,230,138,164,231,155,190,32,53,55,51,231,150,190,232,183,145,32,53,55,53,231,139,174,229,173,144,232,167,134,233,135,142,32,53,55,55,230,140,135,231,187,152,229,184,136,32,53,55,56,230,140,135,231,187,152,229,184,136,32,53,56,48,228,186,146,230,139,137,229,156,136,229,135,143,233,128,159,32,53,56,49,228,186,146,230,139,137,229,156,136,229,138,160,233,128,159,32,55,48,49,49,48,229,133,168,228,189,147,230,138,164,231,155,190,32,55,48,49,48,57,231,171,158,233,128,159,230,142,137,232,161,128,32,55,48,49,48,56,45,55,48,49,48,51,230,129,144,233,190,153,230,138,164,231,155,190,32,55,48,49,48,50,231,171,158,233,128,159,229,135,143,233,128,159,32,55,48,49,48,49,231,171,158,233,128,159,229,164,185,229,173,144,32,49,48,53,48,57,231,186,162,230,150,185,230,151,151,229,173,144,32,49,48,53,48,56,232,147,157,230,150,185,230,151,151,229,173,144,32,49,48,50,48,51,229,135,143,232,161,128,32,49,48,54,48,48,231,148,181,232,131,189,231,144,131,98,117,102,102,32,49,49,50,48,49,233,146,136,32,49,48,50,48,49,230,175,146,32,49,48,49,48,51,231,139,130,230,154,180})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,98,117,102,102})},
{[Re_({118,97,108,117,101})] = 1080033280, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1082130432, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1050253722, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 80, [Re_({111,102,102,115,101,116})] = -128, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,230,148,185,231,154,132,230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180,44,229,136,157,229,167,139,229,128,188,228,184,186,54,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 1086324736, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1052266988, [Re_({111,102,102,115,101,116})] = 144, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1053609165, [Re_({111,102,102,115,101,116})] = 152, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end

function nmdb7()
NH=gg.prompt({Re_({229,140,187,231,150,151,229,140,133,230,148,185,233,135,145,229,186,147,232,137,190,229,143,175}),Re_({230,138,128,232,131,189,229,188,186,229,140,150}),Re_({230,138,128,232,131,189,98,117,102,102}),Re_({230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180}),Re_({232,191,148,229,155,158})},{},{Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120})})
if NH[1] == true then
qc=gg.alert(Re_({230,148,185,233,135,145,229,186,147,232,137,190,229,143,175}),Re_({229,188,128,229,144,175}),Re_({230,129,162,229,164,141}))
if qc==1 then
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({229,140,187,231,150,151,229,140,133,230,148,185,232,137,190,229,143,175,230,138,128,232,131,189})},
      {[Re_({118,97,108,117,101})] = 875573550, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 200, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 401, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 3, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 16},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 10003, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4,},
    }
    xqmnb(qmnb)
end    
if qc==2 then
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({229,140,187,231,150,151,229,140,133,230,148,185,232,137,190,229,143,175,230,138,128,232,131,189})},
      {[Re_({118,97,108,117,101})] = 875573550, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 200, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 3, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 16},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 401, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4,},
    }
    xqmnb(qmnb)
end
end
if NH[2] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,44,229,136,157,229,167,139,229,128,188,228,184,186,50,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,228,188,164,229,174,179,44,229,136,157,229,167,139,229,128,188,228,184,186,53,48,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),},{[1]=Re_({}),[2]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 1080033280, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1082130432, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1050253722, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[2], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0.001, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,228,191,174,230,148,185,231,154,132,98,117,102,102,228,187,163,231,160,129,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,10,49,48,48,230,154,180,230,128,146,32,49,48,49,229,164,185,229,173,144,32,49,48,50,232,183,179,233,171,152,32,49,48,51,231,150,190,232,183,145,32,49,48,53,230,137,139,233,155,183,32,49,48,55,230,151,160,230,149,140,32,49,48,56,233,146,136,32,49,48,57,229,173,166,229,166,185,32,49,49,48,229,173,166,229,166,185,32,49,49,49,230,140,129,231,187,173,230,154,180,232,181,176,32,49,49,50,229,143,152,231,190,138,230,156,175,32,49,49,51,233,155,183,232,190,190,32,49,49,52,229,164,169,233,153,141,230,173,163,228,185,137,32,50,48,48,233,133,146,230,161,182,32,50,48,49,230,175,146,230,182,178,32,50,48,50,229,138,160,233,128,159,32,50,48,51,231,139,151,32,50,48,52,233,173,148,230,179,149,229,162,153,230,173,163,233,157,162,32,50,48,53,233,173,148,230,179,149,229,162,153,232,180,159,233,157,162,32,50,48,54,230,138,164,231,155,190,32,51,48,48,98,111,115,115,231,155,190,32,51,48,49,98,111,115,115,229,144,184,232,161,128,32,51,48,50,98,111,115,115,231,156,169,230,153,149,32,52,48,48,230,156,186,229,153,168,228,186,186,32,52,48,49,229,176,143,229,173,166,229,166,185,32,52,48,50,229,185,189,231,129,181,32,52,48,51,231,188,180,230,162,176,32,52,48,52,229,164,169,233,153,141,230,173,163,228,185,137,32,52,48,53,229,135,143,233,128,159,32,53,48,49,230,176,180,32,53,48,50,229,188,149,229,138,155,229,156,186,32,53,48,53,232,182,133,231,186,167,229,138,160,233,128,159,32,53,48,54,229,138,160,233,128,159,32,53,48,56,229,135,143,233,128,159,32,53,48,57,98,111,115,115,230,148,187,233,128,159,230,176,184,228,185,133,32,53,49,48,98,111,115,115,229,144,184,232,161,128,230,176,184,228,185,133,32,53,49,49,98,111,115,115,231,155,190,32,53,49,50,232,167,163,230,142,167,32,53,50,48,230,162,166,233,173,135,230,179,161,230,179,161,32,53,50,49,230,162,166,233,173,135,32,53,50,50,230,162,166,233,173,135,230,151,160,230,149,140,32,53,50,56,231,188,180,230,162,176,32,53,50,57,231,188,136,32,53,51,48,231,188,136,32,53,51,49,231,188,136,32,53,51,50,231,188,136,32,53,51,51,231,188,136,229,138,160,229,156,163,229,165,179,32,53,51,52,229,156,163,229,165,179,32,53,51,53,229,156,163,229,165,179,32,53,51,55,231,155,190,229,141,171,32,53,51,56,231,155,190,229,141,171,32,53,51,57,231,155,190,229,141,171,32,53,52,48,231,155,190,229,141,171,32,53,52,50,231,139,174,229,173,144,229,144,184,232,161,128,32,53,52,51,230,179,183,32,53,52,52,230,179,183,32,53,52,53,230,179,183,32,53,52,55,230,151,182,229,133,137,230,156,186,32,53,52,56,231,139,174,229,173,144,232,167,134,233,135,142,32,53,52,57,231,139,174,229,173,144,229,134,183,229,141,180,32,53,53,48,230,175,146,32,53,53,49,229,145,189,231,159,179,32,53,53,50,229,145,189,231,159,179,32,53,53,51,229,145,189,231,159,179,32,53,53,52,229,145,189,231,159,179,32,53,53,55,229,135,143,232,161,128,32,53,53,56,231,156,169,230,153,149,32,53,53,57,230,151,160,230,149,140,32,53,54,48,230,176,184,228,185,133,229,138,160,233,128,159,32,53,54,49,232,182,133,231,186,167,229,138,160,233,128,159,32,53,54,52,229,155,162,229,173,144,32,53,54,54,229,155,162,229,173,144,32,53,54,55,230,156,186,229,153,168,228,186,186,32,53,54,56,230,129,144,233,190,153,32,53,55,48,229,165,165,229,141,154,32,53,55,49,231,156,169,230,153,149,32,53,55,50,230,138,164,231,155,190,32,53,55,51,231,150,190,232,183,145,32,53,55,53,231,139,174,229,173,144,232,167,134,233,135,142,32,53,55,55,230,140,135,231,187,152,229,184,136,32,53,55,56,230,140,135,231,187,152,229,184,136,32,53,56,48,228,186,146,230,139,137,229,156,136,229,135,143,233,128,159,32,53,56,49,228,186,146,230,139,137,229,156,136,229,138,160,233,128,159,32,55,48,49,49,48,229,133,168,228,189,147,230,138,164,231,155,190,32,55,48,49,48,57,231,171,158,233,128,159,230,142,137,232,161,128,32,55,48,49,48,56,45,55,48,49,48,51,230,129,144,233,190,153,230,138,164,231,155,190,32,55,48,49,48,50,231,171,158,233,128,159,229,135,143,233,128,159,32,55,48,49,48,49,231,171,158,233,128,159,229,164,185,229,173,144,32,49,48,53,48,57,231,186,162,230,150,185,230,151,151,229,173,144,32,49,48,53,48,56,232,147,157,230,150,185,230,151,151,229,173,144,32,49,48,50,48,51,229,135,143,232,161,128,32,49,48,54,48,48,231,148,181,232,131,189,231,144,131,98,117,102,102,32,49,49,50,48,49,233,146,136,32,49,48,50,48,49,230,175,146,32,49,48,49,48,51,231,139,130,230,154,180})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,98,117,102,102})},
{[Re_({118,97,108,117,101})] = 1080033280, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1082130432, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1050253722, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,230,148,185,231,154,132,230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180,44,229,136,157,229,167,139,229,128,188,228,184,186,54,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,233,135,138,230,148,190,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 1086324736, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1052266988, [Re_({111,102,102,115,101,116})] = 144, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1053609165, [Re_({111,102,102,115,101,116})] = 152, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[5] == true then HOME()
end
end

function nmdb8()
NH=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,230,149,176,233,135,143,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,176,180,228,185,139,229,191,141,232,128,133})},
{[Re_({118,97,108,117,101})] = 60, [Re_({116,121,112,101})] = 32},
{[Re_({108,118})] = 3, [Re_({111,102,102,115,101,116})] = 40, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 136, [Re_({116,121,112,101})] = 32},
}
qmxg = {
{[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0.1, [Re_({111,102,102,115,101,116})] = 100, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function nmdb9()
NH=gg.prompt({Re_({232,190,147,229,133,165,233,147,190,230,157,161,230,140,129,231,187,173,230,151,182,233,151,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,229,138,160,232,161,128,230,136,150,230,137,163,232,161,128,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 50, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1084227584, [Re_({111,102,102,115,101,116})] = 76, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1056964608, [Re_({111,102,102,115,101,116})] = 88, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 15, [Re_({111,102,102,115,101,116})] = 184, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = 68, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 520, [Re_({111,102,102,115,101,116})] = 72, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 520, [Re_({111,102,102,115,101,116})] = 80, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = -NH[2], [Re_({111,102,102,115,101,116})] = 188, [Re_({116,121,112,101})] = 16},

}
xqmnb(qmnb)
end

function nmdb10()
NH=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,228,188,164,229,174,179,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,176,143,231,139,174,229,173,144})},
{[Re_({118,97,108,117,101})] = 1072483533, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -32, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 9, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -136, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 8, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -132, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -128, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -24, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = NH[2], [Re_({111,102,102,115,101,116})] = -28, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function nmdb11()
NH=gg.prompt({Re_({230,138,128,232,131,189,229,188,186,229,140,150}),Re_({230,138,128,232,131,189,98,117,102,102}),Re_({230,138,128,232,131,189,229,143,152,232,186,171,231,137,169,228,189,147}),Re_({232,191,148,229,155,158})},{},{Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120}),Re_({99,104,101,99,107,98,111,120})})
if NH[1] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,231,148,181,229,135,187,230,140,129,231,187,173,230,151,182,233,151,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,231,148,181,229,135,187,233,128,159,229,186,166,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({}),[3]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,188,186,229,140,150})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -136, [Re_({116,121,112,101})] = 32},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -140, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -144, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -36, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[2], [Re_({111,102,102,115,101,116})] = -24, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = nh[3], [Re_({111,102,102,115,101,116})] = -16, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({Re_({49,48,48,230,154,180,230,128,146,32,49,48,49,229,164,185,229,173,144,32,49,48,50,232,183,179,233,171,152,32,49,48,51,231,150,190,232,183,145,32,49,48,53,230,137,139,233,155,183,32,49,48,55,230,151,160,230,149,140,32,49,48,56,233,146,136,32,49,48,57,229,173,166,229,166,185,32,49,49,48,229,173,166,229,166,185,32,49,49,49,230,140,129,231,187,173,230,154,180,232,181,176,32,49,49,50,229,143,152,231,190,138,230,156,175,32,49,49,51,233,155,183,232,190,190,32,49,49,52,229,164,169,233,153,141,230,173,163,228,185,137,32,50,48,48,233,133,146,230,161,182,32,50,48,49,230,175,146,230,182,178,32,50,48,50,229,138,160,233,128,159,32,50,48,51,231,139,151,32,50,48,52,233,173,148,230,179,149,229,162,153,230,173,163,233,157,162,32,50,48,53,233,173,148,230,179,149,229,162,153,232,180,159,233,157,162,32,50,48,54,230,138,164,231,155,190,32,51,48,48,98,111,115,115,231,155,190,32,51,48,49,98,111,115,115,229,144,184,232,161,128,32,51,48,50,98,111,115,115,231,156,169,230,153,149,32,52,48,48,230,156,186,229,153,168,228,186,186,32,52,48,49,229,176,143,229,173,166,229,166,185,32,52,48,50,229,185,189,231,129,181,32,52,48,51,231,188,180,230,162,176,32,52,48,52,229,164,169,233,153,141,230,173,163,228,185,137,32,52,48,53,229,135,143,233,128,159,32,53,48,49,230,176,180,32,53,48,50,229,188,149,229,138,155,229,156,186,32,53,48,53,232,182,133,231,186,167,229,138,160,233,128,159,32,53,48,54,229,138,160,233,128,159,32,53,48,56,229,135,143,233,128,159,32,53,48,57,98,111,115,115,230,148,187,233,128,159,230,176,184,228,185,133,32,53,49,48,98,111,115,115,229,144,184,232,161,128,230,176,184,228,185,133,32,53,49,49,98,111,115,115,231,155,190,32,53,49,50,232,167,163,230,142,167,32,53,50,48,230,162,166,233,173,135,230,179,161,230,179,161,32,53,50,49,230,162,166,233,173,135,32,53,50,50,230,162,166,233,173,135,230,151,160,230,149,140,32,53,50,56,231,188,180,230,162,176,32,53,50,57,231,188,136,32,53,51,48,231,188,136,32,53,51,49,231,188,136,32,53,51,50,231,188,136,32,53,51,51,231,188,136,229,138,160,229,156,163,229,165,179,32,53,51,52,229,156,163,229,165,179,32,53,51,53,229,156,163,229,165,179,32,53,51,55,231,155,190,229,141,171,32,53,51,56,231,155,190,229,141,171,32,53,51,57,231,155,190,229,141,171,32,53,52,48,231,155,190,229,141,171,32,53,52,50,231,139,174,229,173,144,229,144,184,232,161,128,32,53,52,51,230,179,183,32,53,52,52,230,179,183,32,53,52,53,230,179,183,32,53,52,55,230,151,182,229,133,137,230,156,186,32,53,52,56,231,139,174,229,173,144,232,167,134,233,135,142,32,53,52,57,231,139,174,229,173,144,229,134,183,229,141,180,32,53,53,48,230,175,146,32,53,53,49,229,145,189,231,159,179,32,53,53,50,229,145,189,231,159,179,32,53,53,51,229,145,189,231,159,179,32,53,53,52,229,145,189,231,159,179,32,53,53,55,229,135,143,232,161,128,32,53,53,56,231,156,169,230,153,149,32,53,53,57,230,151,160,230,149,140,32,53,54,48,230,176,184,228,185,133,229,138,160,233,128,159,32,53,54,49,232,182,133,231,186,167,229,138,160,233,128,159,32,53,54,52,229,155,162,229,173,144,32,53,54,54,229,155,162,229,173,144,32,53,54,55,230,156,186,229,153,168,228,186,186,32,53,54,56,230,129,144,233,190,153,32,53,55,48,229,165,165,229,141,154,32,53,55,49,231,156,169,230,153,149,32,53,55,50,230,138,164,231,155,190,32,53,55,51,231,150,190,232,183,145,32,53,55,53,231,139,174,229,173,144,232,167,134,233,135,142,32,53,55,55,230,140,135,231,187,152,229,184,136,32,53,55,56,230,140,135,231,187,152,229,184,136,32,53,56,48,228,186,146,230,139,137,229,156,136,229,135,143,233,128,159,32,53,56,49,228,186,146,230,139,137,229,156,136,229,138,160,233,128,159,32,55,48,49,49,48,229,133,168,228,189,147,230,138,164,231,155,190,32,55,48,49,48,57,231,171,158,233,128,159,230,142,137,232,161,128,32,55,48,49,48,56,45,55,48,49,48,51,230,129,144,233,190,153,230,138,164,231,155,190,32,55,48,49,48,50,231,171,158,233,128,159,229,135,143,233,128,159,32,55,48,49,48,49,231,171,158,233,128,159,229,164,185,229,173,144,32,49,48,53,48,57,231,186,162,230,150,185,230,151,151,229,173,144,32,49,48,53,48,56,232,147,157,230,150,185,230,151,151,229,173,144,32,49,48,50,48,51,229,135,143,232,161,128,32,49,48,54,48,48,231,148,181,232,131,189,231,144,131,98,117,102,102,32,49,49,50,48,49,233,146,136,32,49,48,50,48,49,230,175,146,32,49,48,49,48,51,231,139,130,230,154,180,10,232,190,147,229,133,165,232,135,170,232,186,171,98,117,102,102,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,149,140,230,150,185,98,117,102,102,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,98,117,102,102})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = nh[2], [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,229,143,152,232,186,171,231,137,169,228,189,147,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,10,49,48,48,48,233,149,191,230,164,133,229,173,144,32,49,48,48,49,229,186,138,32,49,48,48,50,229,176,143,231,174,177,229,173,144,32,49,48,48,51,228,187,153,228,186,186,230,142,140,32,49,48,48,52,229,176,143,230,164,133,229,173,144,32,49,48,48,53,233,169,172,230,161,182,32,49,48,48,54,231,148,181,232,132,145,32,49,48,48,55,229,176,143,230,159,156,229,173,144,32,49,48,48,56,232,138,177,231,155,134,32,49,48,48,57,231,159,174,230,161,140,229,173,144,32,49,48,49,48,232,183,175,233,154,156,32,49,48,49,49,231,154,174,229,141,161,32,49,48,49,50,233,173,148,230,156,175,229,184,136,231,154,132,231,190,138,32,49,48,49,51,232,135,170,232,181,176,231,144,131,32,49,48,49,52,229,133,148,229,173,144,32,49,48,49,53,230,137,145,229,133,139,231,137,140,32,49,48,49,54,233,188,147,32,49,48,49,55,231,187,191,232,137,178,229,158,131,229,156,190,230,161,182,32,49,48,49,56,232,147,157,232,137,178,229,158,131,229,156,190,230,161,182,32,49,48,49,57,233,184,173,229,173,144,32,49,48,50,48,231,144,131,32,49,48,50,49,230,187,145,230,157,191,32,49,48,50,50,230,136,152,230,156,175,229,175,188,229,188,185,32,49,48,50,51,229,176,143,229,185,189,231,129,181,32,49,48,50,52,229,176,143,233,163,158,230,156,186,32,49,48,50,53,232,183,179,232,183,179,230,157,134,32,49,48,51,50,229,147,132,229,147,132,229,143,183,32,49,48,51,51,229,142,159,230,156,172,231,154,132,232,189,166,32,53,48,48,48,49,232,191,170,232,191,166,32,53,48,48,48,50,232,181,155,231,189,151,32,53,48,48,48,51,230,179,189,229,161,148,32,55,48,48,49,48,231,191,188,233,190,153,32,55,48,48,49,49,228,184,137,232,167,146,233,190,153,32,55,48,48,49,50,229,137,145,233,190,153,32,55,48,48,49,51,232,191,133,231,140,155,233,190,153,32,55,48,48,49,52,233,156,184,231,142,139,233,190,153,32,55,48,48,49,53,232,139,141,233,190,153,32,57,48,48,48,49,230,147,142,229,164,169,230,159,177,32,57,48,48,48,50,229,164,167,233,187,132,232,156,130,32,57,48,48,48,51,231,131,173,231,160,180,32,57,48,48,48,52,229,168,129,233,156,135,229,164,169,32,57,48,48,48,53,229,163,176,230,179,162,32,57,48,48,48,54,231,186,162,232,156,152,232,155,155,32,57,48,48,48,55,230,147,142,229,164,169,230,159,177,232,189,166,229,189,162,230,128,129,32,57,48,48,48,56,229,164,167,233,187,132,232,156,130,232,189,166,229,189,162,230,128,129,32,57,48,48,48,57,231,131,173,231,160,180,232,189,166,229,189,162,230,128,129,32,57,48,48,49,48,229,168,129,233,156,135,229,164,169,232,189,166,229,189,162,230,128,129,32,57,48,48,49,49,229,163,176,230,179,162,232,189,166,229,189,162,230,128,129,32,57,48,48,49,50,231,186,162,232,156,152,232,155,155,232,189,166,229,189,162,230,128,129})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,128,232,131,189,229,143,152,232,186,171,231,137,169,228,189,147})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = nh[1], [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end

function nmdb12()
NH=gg.prompt({Re_({232,190,147,229,133,165,230,138,128,232,131,189,230,149,176,233,135,143,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,230,138,128,232,131,189,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,229,189,177,229,173,144,230,140,129,231,187,173,230,151,182,233,151,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({}),[3]=Re_({})})
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({229,189,177,229,173,144,229,191,141,232,128,133})},
      {[Re_({118,97,108,117,101})] = 1075838976, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 14, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 16},
      {[Re_({108,118})] = 13, [Re_({111,102,102,115,101,116})] = -28, [Re_({116,121,112,101})] = 16},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -32, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 2, [Re_({111,102,102,115,101,116})] = -88, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -136, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -132, [Re_({116,121,112,101})] = 16,},
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -128, [Re_({116,121,112,101})] = 4},
      {[Re_({118,97,108,117,101})] = NH[2], [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = NH[3], [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = 520, [Re_({111,102,102,115,101,116})] = -28, [Re_({116,121,112,101})] = 16},
    }
    xqmnb(qmnb)
end    

function nmdb13()
qc=gg.alert(Re_({229,155,162,229,173,144}),Re_({229,133,141,232,180,185,230,151,160,229,134,183}),Re_({230,138,128,232,131,189,229,143,152,232,186,171}))
if qc==1 then
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({229,133,141,232,180,185,230,151,160,229,134,183})},
      {[Re_({118,97,108,117,101})] = -934560717, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1092616192,[Re_({111,102,102,115,101,116})] =-36, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-32, [Re_({116,121,112,101})] = 4},
      {[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-36, [Re_({116,121,112,101})] = 4},
    }
    xqmnb(qmnb)
end    
if qc==2 then
NH=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,230,148,185,231,154,132,229,143,152,232,186,171,231,137,169,228,189,147,228,187,163,231,160,129,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,10,49,48,48,48,233,149,191,230,164,133,229,173,144,32,49,48,48,49,229,186,138,32,49,48,48,50,229,176,143,231,174,177,229,173,144,32,49,48,48,51,228,187,153,228,186,186,230,142,140,32,49,48,48,52,229,176,143,230,164,133,229,173,144,32,49,48,48,53,233,169,172,230,161,182,32,49,48,48,54,231,148,181,232,132,145,32,49,48,48,55,229,176,143,230,159,156,229,173,144,32,49,48,48,56,232,138,177,231,155,134,32,49,48,48,57,231,159,174,230,161,140,229,173,144,32,49,48,49,48,232,183,175,233,154,156,32,49,48,49,49,231,154,174,229,141,161,32,49,48,49,50,233,173,148,230,156,175,229,184,136,231,154,132,231,190,138,32,49,48,49,51,232,135,170,232,181,176,231,144,131,32,49,48,49,52,229,133,148,229,173,144,32,49,48,49,53,230,137,145,229,133,139,231,137,140,32,49,48,49,54,233,188,147,32,49,48,49,55,231,187,191,232,137,178,229,158,131,229,156,190,230,161,182,32,49,48,49,56,232,147,157,232,137,178,229,158,131,229,156,190,230,161,182,32,49,48,49,57,233,184,173,229,173,144,32,49,48,50,48,231,144,131,32,49,48,50,49,230,187,145,230,157,191,32,49,48,50,50,230,136,152,230,156,175,229,175,188,229,188,185,32,49,48,50,51,229,176,143,229,185,189,231,129,181,32,49,48,50,52,229,176,143,233,163,158,230,156,186,32,49,48,50,53,232,183,179,232,183,179,230,157,134,32,49,48,51,50,229,147,132,229,147,132,229,143,183,32,49,48,51,51,229,142,159,230,156,172,231,154,132,232,189,166,32,53,48,48,48,49,232,191,170,232,191,166,32,53,48,48,48,50,232,181,155,231,189,151,32,53,48,48,48,51,230,179,189,229,161,148,32,55,48,48,49,48,231,191,188,233,190,153,32,55,48,48,49,49,228,184,137,232,167,146,233,190,153,32,55,48,48,49,50,229,137,145,233,190,153,32,55,48,48,49,51,232,191,133,231,140,155,233,190,153,32,55,48,48,49,52,233,156,184,231,142,139,233,190,153,32,55,48,48,49,53,232,139,141,233,190,153,32,57,48,48,48,49,230,147,142,229,164,169,230,159,177,32,57,48,48,48,50,229,164,167,233,187,132,232,156,130,32,57,48,48,48,51,231,131,173,231,160,180,32,57,48,48,48,52,229,168,129,233,156,135,229,164,169,32,57,48,48,48,53,229,163,176,230,179,162,32,57,48,48,48,54,231,186,162,232,156,152,232,155,155,32,57,48,48,48,55,230,147,142,229,164,169,230,159,177,232,189,166,229,189,162,230,128,129,32,57,48,48,48,56,229,164,167,233,187,132,232,156,130,232,189,166,229,189,162,230,128,129,32,57,48,48,48,57,231,131,173,231,160,180,232,189,166,229,189,162,230,128,129,32,57,48,48,49,48,229,168,129,233,156,135,229,164,169,232,189,166,229,189,162,230,128,129,32,57,48,48,49,49,229,163,176,230,179,162,232,189,166,229,189,162,230,128,129,32,57,48,48,49,50,231,186,162,232,156,152,232,155,155,232,189,166,229,189,162,230,128,129})},{[1]=Re_({})})
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({229,143,152,232,186,171})},
      {[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
      {[Re_({108,118})] = 1069547520,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1045220557,[Re_({111,102,102,115,101,116})] =-20, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
    }
    xqmnb(qmnb)
end
end

function wtmd2()
menu1 = gg.multiChoice({
Re_({231,168,179,229,174,154,232,140,131,229,155,180}),
Re_({231,168,179,229,174,154,229,138,159,232,131,189}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then JJ100() end
if menu1[2] == true then JJ200() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
function JJ200()
readWrite({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,Re_({230,187,161,231,186,167,229,189,177,228,185,139,229,191,141,232,128,133}))
end

function JJ100()
local xt=gg.prompt({Re_({229,189,177,228,185,139,229,191,141,232,128,133,230,148,187,229,135,187,232,140,131,229,155,180})}, {[1] = 5}, {[1] = Re_({116,101,120,116})})
readWrite({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,Re_({232,140,131,229,155,180}))
end


function wtmd1()--变身攻击--方法名SpawnFireProjectileOrder
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1882050},})
end

function wtmdb()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,183,178,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,230,149,176,230,141,174})) else gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end NH=gg.prompt({Re_({232,190,147,229,133,165,231,129,171,231,174,173,231,173,146,232,191,158,229,143,145,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})}) nh({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function wtmd()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,128,233,148,174,231,154,174,232,130,164,231,190,142,229,140,150})},
{[Re_({118,97,108,117,101})] = 500001, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 500004, [Re_({111,102,102,115,101,116})] = 0x4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 500005, [Re_({111,102,102,115,101,116})] = 0x8, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 601211,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600756,[Re_({111,102,102,115,101,116})] =0x4, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600366,[Re_({111,102,102,115,101,116})] =0x8, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600016,[Re_({111,102,102,115,101,116})] =0xC, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601571,[Re_({111,102,102,115,101,116})] =0x10, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601566,[Re_({111,102,102,115,101,116})] =0x14, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 500009,[Re_({111,102,102,115,101,116})] =0x18, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601686,[Re_({111,102,102,115,101,116})] =0x1C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600231,[Re_({111,102,102,115,101,116})] =0x20, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600386,[Re_({111,102,102,115,101,116})] =0x24, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600116,[Re_({111,102,102,115,101,116})] =0x28, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601306,[Re_({111,102,102,115,101,116})] =0x2C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600431,[Re_({111,102,102,115,101,116})] =0x30, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600811,[Re_({111,102,102,115,101,116})] =0x34, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600331,[Re_({111,102,102,115,101,116})] =0x38, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600391,[Re_({111,102,102,115,101,116})] =0x3C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601476,[Re_({111,102,102,115,101,116})] =0x40, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600941,[Re_({111,102,102,115,101,116})] =0x44, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600251,[Re_({111,102,102,115,101,116})] =0x48, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601166,[Re_({111,102,102,115,101,116})] =0x4C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600161,[Re_({111,102,102,115,101,116})] =0x50, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601591,[Re_({111,102,102,115,101,116})] =0x54, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601171,[Re_({111,102,102,115,101,116})] =0x58, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600946,[Re_({111,102,102,115,101,116})] =0x5C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600181,[Re_({111,102,102,115,101,116})] =0x60, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601076,[Re_({111,102,102,115,101,116})] =0x64, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600696,[Re_({111,102,102,115,101,116})] =0x68, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601221,[Re_({111,102,102,115,101,116})] =0x6C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601976,[Re_({111,102,102,115,101,116})] =0x70, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600746,[Re_({111,102,102,115,101,116})] =0x74, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601256,[Re_({111,102,102,115,101,116})] =0x78, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600881,[Re_({111,102,102,115,101,116})] =0x7C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601786,[Re_({111,102,102,115,101,116})] =0x80, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601891,[Re_({111,102,102,115,101,116})] =0x84, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601331,[Re_({111,102,102,115,101,116})] =0x88, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601471,[Re_({111,102,102,115,101,116})] =0x8C, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601716,[Re_({111,102,102,115,101,116})] =0x90, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601836,[Re_({111,102,102,115,101,116})] =0x94, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 601881,[Re_({111,102,102,115,101,116})] =0x98, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function nmm()
SN = gg.choice({
     "全角色技能免费无冷",
     "盾位范围拉人[局内]",
     "魔术师无线木偶[局内]",
     "圣女 普功 位移 无间隔[局内] ",
     "艾可免费CD落地时间[局内]",
     "影之忍者范围[局内]",
     "影之忍者技能变多+...[局内]",
     "命石者免费锁暴摔[局内]",
     "命食者高度距离伤害[局内]",
     "小狮子范围伤害免费[局内]",
     "小狐狸杀队友[小狐狸天赋页面]",
     "小狐狸冷却[小狐狸天赋页面]",
     "小狐狸加护盾[小狐狸天赋页面]",
     "机械之心范围 伤害 免费[局内]",
     "水影忍者护盾值增加1000[角色天赋页面]",
     "水忍者无限技能[角色天赋页面]",
     "水忍者一套 技能 冷却 金币[局内]",
     "小骇客远距离开物[天赋页面]",
     "小梦魇泡泡伤害[天赋页面]",
     "小狮子全屏秒杀[局内]",
     "灵膳子技能免费[天赋界面]",
     "小梦魇梦魇之力持续时间[天赋页面]",
     "小梦魇主技能免费[天赋页面开]",
     "失忆者两卡必出免费[天赋界面]",
     "艾可生命和恢复时间[天赋界面]",
     "小骇客无冷却[局内]",
     "奥博技能免费[局内]",
     "小狐狸冷却免费[局内]",
     "小骇客数量免费[局内]",
     "圣女范围[局内]",
     "艾克全屏[局内]",
     "暴摔定人[局内]",
     "退出脚本",
},(""))
if SN==1 then
gg.toast("你打开了")
	 JJ1()
end
if SN==2 then
gg.toast("你打开盾位范围拉人")
	 JJ2()
end
if SN==3 then
gg.toast("你打开了魔术师无限木偶")
	 JJ3()
end     
if SN==4 then
gg.toast("你打开了圣女超进化")
	 JJ4()
end     
if SN==5 then
gg.toast("你打开了艾可免费cd落地时间")
	 JJ5()
end     
if SN==6 then
gg.toast("你打开了影之忍者范围")
	 JJ6()
end     
if SN==7 then
gg.toast("你打开了影之忍者Cd免费")
	 JJ7()
end     
if SN==8 then
gg.toast("你打开了命使者超进化")
	 JJ8()
end     
if SN==9 then
gg.toast("你打开了命死者2")
	 JJ9()
end     
if SN==10 then
gg.toast("你打开了小狮子")
	 JJ10()
end     
if SN==11 then
gg.toast("你打开了小狐狸杀队友")
	 JJ11()
end     
if SN==12 then
gg.toast("你打开了小狐狸冷却")
	 JJ12()
end     
if SN==13 then
gg.toast("你打开了小狐狸护盾")
	 JJ13()
end 
if SN==14 then
gg.toast("你打开了")
     JJ14()  
end       
if SN==15 then
gg.toast("你打开了")
     JJ15()               
end 
if SN==16 then
gg.toast("你打开了")
     JJ16()  
end
if SN==17 then
gg.toast("你打开了")
     JJ17()      
end
if SN==18 then
gg.toast("你打开了")
     JJ18()
end
if SN==19 then
gg.toast("你打开了")
     JJ19()
end     
if SN==20 then
gg.toast("你打开了")
     JJ20()     
end    
if SN==21 then
gg.toast("你打开了")
     JJ21()     
end     
if SN==22 then
gg.toast("你打开了")
     JJ22()     
end 
if SN==23 then
gg.toast("你打开了")
     JJ23()    
end
if SN==24 then
gg.toast("你打开了")  
     JJ24()
end    
if SN==25 then
gg.toast("你打开了") 
     JJ25()
end 
if SN==26 then
gg.toast("你打开了")
     JJ26() 
end  
if SN==27 then
gg.toast("你打开了")
     JJ27()
end 
if SN==28 then
gg.toast("你打开了")
     JJ28()     
end
if SN==29 then
gg.toast("你打开了")
     JJ29()     
end  
if SN==30 then
gg.toast("你打开了")
     JJ30()     
end          
if SN==31 then
	 JJ31()
end  
if SN==32 then   
     JJ32()    
end     
if SN==33 then
     print("😂")
	 os.exit()
end
FX1=0
end



function JJ1()--独家a内存全角色技能无冷+免费
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,229,133,168,232,167,146,232,137,178,230,138,128,232,131,189,230,151,160,229,134,183,43,229,133,141,232,180,185})},
{[Re_({118,97,108,117,101})] = -934560717, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1581114487,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-32, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0.0,[Re_({111,102,102,115,101,116})] =-36, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 9999,[Re_({111,102,102,115,101,116})] =-40, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end

function JJ2()
u=gg.prompt({Re_({232,190,147,229,133,165,228,189,160,231,154,132,229,189,147,229,137,141,54,48,228,184,187,230,138,128,232,131,189,231,154,132,229,134,183,229,141,180})},{15.0},{Re_({110,117,109,98,101,114})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,182,133,232,191,155,229,140,150,233,187,142,230,152,142,229,144,168,228,189,141,232,140,131,229,155,180,230,139,137,228,186,186})},
{[Re_({118,97,108,117,101})] = 0.800000011920929, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = u[1], [Re_({111,102,102,115,101,116})] = -124, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 60, [Re_({111,102,102,115,101,116})] = -120, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1.25, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -124, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -120, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 99, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
}
xqmnb(qmnb)
end

function JJ3()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,182,133,232,191,155,229,140,150,233,173,148,230,156,175,229,184,136})},
{[Re_({118,97,108,117,101})] = 30.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 100, [Re_({111,102,102,115,101,116})] = 64, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 64, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end

function JJ4()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,152,159,232,190,176,230,153,174,230,148,187,32,231,158,172,231,167,187,239,188,140,230,151,160,233,151,180,233,154,148,239,188,140})},
{[Re_({118,97,108,117,101})] = 0.30000001192092896, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.5, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 7.5, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.6000000238418579, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0.4, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 100, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 1, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
}
xqmnb(qmnb)
end

function JJ5()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,182,133,232,191,155,229,140,150,232,137,190,229,143,175})},--免费cd落地时间
{[Re_({118,97,108,117,101})] = 50.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -140, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 80, [Re_({111,102,102,115,101,116})] = -132, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0.800000011920929, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 520, [Re_({111,102,102,115,101,116})] = -140, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -132, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
}
xqmnb(qmnb)
end

function JJ6()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,189,177,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 0.20000000298023224, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = false},
}
xqmnb(qmnb)
end

function JJ7()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,189,177,228,185,139,229,191,141,232,128,133,230,138,128,232,131,189,229,143,152,229,164,154,43,229,133,141,232,180,185})},
{[Re_({118,97,108,117,101})] = -934560717, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 80,[Re_({111,102,102,115,101,116})] =-32, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1036831949,[Re_({111,102,102,115,101,116})] =-36, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 2,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-32, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 9999,[Re_({111,102,102,115,101,116})] =-40, [Re_({116,121,112,101})] = 4,},
}
xqmnb(qmnb)
end


function JJ8()
u=gg.prompt({Re_({232,190,147,229,133,165,228,189,160,231,154,132,229,189,147,229,137,141,228,184,187,230,138,128,232,131,189,231,154,132,229,134,183,229,141,180})},{},{Re_({110,117,109,98,101,114})})
f=gg.prompt({Re_({232,190,147,229,133,165,228,189,160,231,154,132,229,189,147,229,137,141,228,184,187,230,138,128,232,131,189,231,154,132,233,135,145,229,184,129})},{},{Re_({110,117,109,98,101,114})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,145,189,229,174,158,232,128,133,99,100,229,133,141,232,180,185,233,148,129,230,138,177,230,145,148})},
{[Re_({118,97,108,117,101})] =  u[1], [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] =  f[1], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 1, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end

function JJ9()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,177,230,145,148,233,171,152,229,186,166,43,232,183,157,231,166,187,43,228,188,164,229,174,179})},
{[Re_({118,97,108,117,101})] = 4.300000190734863, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -1.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 3.0,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 3.0,[Re_({111,102,102,115,101,116})] =-100, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 80.0,[Re_({111,102,102,115,101,116})] =-96, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 1.0,[Re_({111,102,102,115,101,116})] =-84, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function JJ10()--狮子
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,176,143,231,139,174,229,173,144,232,140,131,229,155,180,43,228,188,164,229,174,179,239,188,139,229,133,141,232,180,185})},
{[Re_({118,97,108,117,101})] = 1.850000023841858, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.6200000047683716,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.5,[Re_({111,102,102,115,101,116})] =-8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.10000000149011612,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99,[Re_({111,102,102,115,101,116})] =-24, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 1,[Re_({111,102,102,115,101,116})] =-0x1C, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-0x80, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function JJ11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,59,54,59,55,59,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({45,57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({230,136,144,229,138,159,232,191,155,229,140,150}))
	 gg.clearResults()
end


function JJ12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,53,59,51,48,59,50,53,59,50,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({232,191,153,233,135,140,230,152,175,230,148,185,229,150,132,231,154,132,229,128,188}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end


function JJ13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,59,54,59,55,59,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({232,191,153,233,135,140,230,152,175,230,148,185,229,150,132,231,154,132,229,128,188}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function JJ14()--机械之心范围+伤害＋免费
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,156,186,230,162,176,228,185,139,229,191,131,232,140,131,229,155,180,43,228,188,164,229,174,179,239,188,139,229,133,141,232,180,185})},
{[Re_({118,97,108,117,101})] = 3.799999952316284, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 3.0,[Re_({111,102,102,115,101,116})] =-20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99,[Re_({111,102,102,115,101,116})] =-20, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 1,[Re_({111,102,102,115,101,116})] =68, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-0x8C, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function JJ15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,51,59,51,56,59,52,51,59,52,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,48,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
	 gg.clearResults()
end

function JJ16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,48,59,53,50,59,52,52,59,51,54,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
	 gg.clearResults()
end

function JJ17()
gg.setRanges(32)
local tb1={ 
{[Re_({231,177,187,229,158,139})] =  16 ,[Re_({228,184,187,231,137,185,229,190,129,231,160,129})] = 0.5 } , 
{[Re_({231,177,187,229,158,139})]=  4  ,[Re_({229,129,143,231,167,187})]=  4  ,[Re_({229,137,175,231,137,185,229,190,129,231,160,129})]=  60},
}
 local tb2={ 
 {[Re_({231,177,187,229,158,139})] =  4 ,[Re_({229,129,143,231,167,187})] =  -4 , [Re_({229,134,187,231,187,147})] =  false  , [Re_({228,191,174,230,148,185})] = 666  } , --技能
  {[Re_({231,177,187,229,158,139})] =  16 ,[Re_({229,129,143,231,167,187})] =  0 , [Re_({229,134,187,231,187,147})] =  false  , [Re_({228,191,174,230,148,185})] = 0  } , ---冷却
   {[Re_({231,177,187,229,158,139})] =  4 ,[Re_({229,129,143,231,167,187})] =  4 , [Re_({229,134,187,231,187,147})] =  false  , [Re_({228,191,174,230,148,185})] = 0  } , --金币
} LongTao(tb1, tb2)
end

function JJ18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,59,49,46,51,59,49,46,54,59,50,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159,239,188,140,228,191,174,230,148,185,228,186,134,52,230,157,161,230,149,176,230,141,174}))
	 gg.clearResults()
end

function JJ19()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber(Re_({53,59,49,48,59,49,53,59,50,48,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({98,101}))
	 gg.clearResults()
end

function JJ20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,51,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({51,51,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({66,98,111,120}))
	 gg.clearResults()
end

function JJ21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({56,48,59,55,53,59,54,53,59,54,48,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({54,54,54}))
	 gg.clearResults()
end

function JJ22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,59,52,59,53,59,55,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({99,103}))
	 gg.clearResults()
end

function JJ23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,53,48,59,49,51,53,59,49,50,48,59,49,48,48,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49}), gg.TYPE_FLOAT)
	 gg.toast(Re_({99,118,98,98}))
	 gg.clearResults()
end

function JJ24()--失忆者购买2道具必出免费[大厅开](天赋两级以上)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,48,53,59,48,46,48,55,53,59,48,46,49,50,53,58,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({48,46,48,53,59,48,46,48,55,53,59,48,46,49,50,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,48,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,180,173,231,137,169,232,190,190,228,186,186,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function JJ25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({50,53,59,50,48,59,49,54,59,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,229,183,178,228,191,174,230,148,185,49,54,230,157,161,230,149,176,230,141,174}))
	 gg.clearResults()
end


function JJ26()
readWrite({{false,60.0,0,16,nil,nil},{55.0,4,16},{50.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,Re_({230,138,128,232,131,189,230,151,160,229,134,183,229,141,180}))
end



function JJ27()
readWrite({{false,140.0,0,16,nil,nil},{135.0,4,16},{125.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,Re_({230,138,128,232,131,189,229,133,141,232,180,185}))
end

function JJ28()
gg.setRanges(32)
local tb1={ 
{[Re_({231,177,187,229,158,139})] =  16 ,[Re_({228,184,187,231,137,185,229,190,129,231,160,129})] =10.0 } , 
{[Re_({231,177,187,229,158,139})]=  4  ,[Re_({229,129,143,231,167,187})]=  -80  ,[Re_({229,137,175,231,137,185,229,190,129,231,160,129})]= 50},
}
 local tb2={ 
 {[Re_({231,177,187,229,158,139})] =  16 ,[Re_({229,129,143,231,167,187})] =  -84 , [Re_({229,134,187,231,187,147})] =  false  , [Re_({228,191,174,230,148,185})] = 0  } , --冷却
  {[Re_({231,177,187,229,158,139})] =  16 ,[Re_({229,129,143,231,167,187})] =  -80 , [Re_({229,134,187,231,187,147})] =  true  , [Re_({228,191,174,230,148,185})] = 0  } , --金币
} LongTao(tb1, tb2)
end

function JJ29()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,144,170,231,144,170,230,138,128,232,131,189})},
{[Re_({118,97,108,117,101})] = 8.407790785948902E-44, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.401298464324817E-45, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 9999, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function JJ30()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,156,163,229,165,179,232,140,131,229,155,180,49})},
{[Re_({118,97,108,117,101})] = 2.5, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 8.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 12.0,[Re_({111,102,102,115,101,116})] =-8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 4.0,[Re_({111,102,102,115,101,116})] =-0x28, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,156,163,229,165,179,232,140,131,229,155,180,50})},
{[Re_({118,97,108,117,101})] = 0.6000000238418579, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 8.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 6.0,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 4.0,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function JJ31()
gg.setRanges(32)
gg.searchNumber(Re_({50,46,53,59,53,48}), 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,46,53}), 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57}), 16)
gg.toast(Re_({232,137,190,229,143,175,229,133,168,229,177,143}))
end

function JJ32()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,138,177,230,145,148,229,174,154,228,186,186})},
{[Re_({118,97,108,117,101})] = 4.300000190734863, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -1.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 3.0,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =-88, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function FSF()
menu1 = gg.multiChoice({
Re_({229,133,168,231,137,136,230,156,172,233,128,154,231,148,168,233,152,178,233,151,170}),
Re_({233,152,178,229,176,129,49}),
Re_({233,152,178,229,176,129,50}),
Re_({233,152,178,229,176,129,51}),
Re_({233,152,178,229,176,129,52}),
Re_({233,152,178,229,176,129,53}),
Re_({233,152,178,229,176,129,54}),
Re_({233,152,178,229,176,129,55}),
Re_({233,152,178,229,176,129,56}),
Re_({49,54,56,52,233,152,178}),
Re_({99,97,229,133,168,233,152,178}),
Re_({229,164,167,229,142,133,233,152,178}),
Re_({229,177,128,229,134,133,233,152,178}),
Re_({120,97,233,152,178}),
Re_({233,152,178,228,186,186,229,183,165}),
Re_({232,182,133,229,188,186,229,164,167,229,142,133,233,152,178}),
Re_({232,182,133,229,188,186,229,177,128,229,134,133,233,152,178}),
Re_({239,184,143,232,191,148,229,155,158,228,184,187,233,161,181,239,184,143}),
}, nil, os.date(Re_({230,184,184,230,136,143,233,152,178,233,151,170,43,233,152,178,229,176,129})))
if menu1 == nil then else
if menu1[1] == true then fsf1() end
if menu1[2] == true then fsf2() end
if menu1[3] == true then fsf3() end
if menu1[4] == true then fsf4() end
if menu1[5] == true then fsf5() end
if menu1[6] == true then fsf6() end
if menu1[7] == true then fsf7() end
if menu1[8] == true then fsf8() end
if menu1[9] == true then fsf9() end
if menu1[10] == true then fsf10() end
if menu1[11] == true then fsf11() end
if menu1[12] == true then fsf12() end
if menu1[13] == true then fsf13() end
if menu1[14] == true then fsf14() end
if menu1[15] == true then fsf15() end
if menu1[16] == true then fsf16() end
if menu1[17] == true then fsf17() end
if menu1[18] == true then HOME() end
end
GLWW=-1
end
function fsf17()
fastsearch({{1987539786,4,4}},{{0,0,4,true}})
fastsearch({{1398036289,4,4}},{{0,0,4,true}})
fastsearch({{574169904,4,4}},{{0,0,4,true}})
fastsearch({{1629954853,4,4}},{{0,0,4,true}})
fastsearch({{1463904086,4,4}},{{0,0,4,true}})
fastsearch({{639645488,4,4}},{{0,0,4,true}})
fastsearch({{588650008,4,4}},{{0,0,4,true}})
fastsearch({{959784737,4,4}},{{0,0,4,true}})

nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0xFBAD78},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xFBAD7C},})

nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1882050},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0x187de9c},})

nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3CABFAC},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3CC15B0},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3D8D204},})
end

function fsf16()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({50,53,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({53,48,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({55,53,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({49,48,48,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,50,53,37,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,53,48,37,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,55,53,37,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({50,48,48,37,10,229,133,168,233,152,178,231,172,172,228,184,128,230,173,165,32,32,226,156,147}))
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({54,44,57,52,56,44,57,51,56,59,54,44,57,52,56,44,52,48,48,59,53,51,54,44,57,57,49,44,50,51,50,59,53,57,44,57,48,48,44,57,50,57,59,49,48,48,44,55,54,56,44,55,54,56,59,54,53,44,56,50,57,44,56,56,57,59,50,53,54,44,53,49,51,59,52,44,57,56,49,44,55,50,56,59,53,44,51,55,53,44,53,51,54,59,49,48,44,56,48,54,59,49,44,50,55,53,44,52,54,56,44,56,49,54,59,49,44,51,52,51,44,49,48,55,44,53,56,52,59,49,44,54,55,56,44,49,51,53,44,56,48,56,58,51,56,50,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,44,57,52,56,44,57,51,56,59,54,44,57,52,56,44,52,48,48,59,53,51,54,44,57,57,49,44,50,51,50,59,53,57,44,57,48,48,44,57,50,57,59,49,48,48,44,55,54,56,44,55,54,56,59,54,53,44,56,50,57,44,56,56,57,59,50,53,54,44,53,49,51,59,52,44,57,56,49,44,55,50,56,59,53,44,51,55,53,44,53,51,54,59,49,48,44,56,48,54,59,49,44,50,55,53,44,52,54,56,44,56,49,54,59,49,44,51,52,51,44,49,48,55,44,53,56,52,59,49,44,54,55,56,44,49,51,53,44,56,48,56,58,51,56,50,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({229,133,168,233,152,178,32,32,226,156,147}))
	 gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,51,54,52,54,57,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,48,52,48,56,55,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,54,51,50,50,52,51,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({120,97,233,152,178,49,32,32,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({57,57,51,53,50,53,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,55,56,52,49,50,56,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,56,51,49,49,53,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({120,97,233,152,178,50,32,32,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,54,51,57,57,52,56,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,49,55,49,57,52,50,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,50,57,51,55,54,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({120,97,233,152,178,229,176,129,51,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({231,172,172,228,184,128,230,173,165,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({231,172,172,228,186,140,230,173,165,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({231,172,172,228,184,137,230,173,165,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({231,172,172,229,155,155,230,173,165,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({50,53,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({53,48,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({55,53,37,226,156,147}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({49,48,48,37,233,152,178}))
gg.clearResults()

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({54,53,44,55,57,51}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184,49,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,54,44,54,50,53}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184,50,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,51,44,53,53,50}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184,51,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,49,44,53,54,56}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184,52,32,32,226,156,147}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,51,44,51,49,50}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({}),gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184,229,133,168,32,32,226,156,147}))

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({50,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({53,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({55,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({49,48,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,50,53,37}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,53,48,37}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,57,48,37}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({229,133,168,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()

  gg.toast(Re_({97,229,134,133,229,173,152,233,152,178,229,176,129,228,184,128}))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber(Re_({51,48,48,48,48,126,55,48,48,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({51,48,48,48,48,126,55,48,48,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 4
      }
    })
  end
  gg.toast(Re_({97,229,134,133,229,173,152,233,152,178,229,176,129,228,186,140}))
  gg.toast(Re_({230,173,163,229,156,168,230,163,128,230,181,139,228,184,173}))
  gg.searchNumber(Re_({50,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast(Re_({232,174,190,231,189,174,228,184,173}))
  gg.toast(Re_({232,191,155,229,186,166}))
  gg.toast(Re_({54,49,37}))
  gg.toast(Re_({50,48,48,37}))
  gg.toast(Re_({50,48,48,48,37}))
  gg.getResults(10000)
  gg.editAll(Re_({48}), gg.TYPE_DWORD)
  gg.toast(Re_({49,54,232,191,155,229,136,182,233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46}))
  gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(Re_({59,48}), gg.TYPE_WORD)
  gg.toast(Re_({233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,46,46,63,63,63,46,46,46,63,63,63,46,46,46,46,46,46,46,46,46,46,46,46,46,46,232,142,183,229,143,150,230,150,135,228,187,182,230,136,144,229,138,159,46,46}))
  gg.toast(Re_({233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,232,142,183,229,143,150,229,176,129,229,143,183,230,150,135,228,187,182,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46}))
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(Re_({59,104,116,116,112,58,47,47}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({59,104,116,116,112,58,47,47}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(Re_({48}), gg.TYPE_WORD)
  gg.toast(Re_({229,136,160,233,153,164,230,163,128,230,181,139}))
  gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll(Re_({48}), gg.TYPE_DWORD)
  gg.toast(Re_({229,188,128,229,144,175,231,153,190,229,136,134,228,185,139,53,48}))
  gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = Re_({48})
      }
    })
  end
  gg.toast(Re_({229,134,133,229,173,152,230,163,128,230,181,139,229,136,160,233,153,164,230,136,144,229,138,159}))
  gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = Re_({48})
      }
    })
  end
  gg.toast(Re_({229,134,133,229,173,152,230,163,128,230,181,139,229,136,160,233,153,164,230,136,144,229,138,159}))
  gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(Re_({48}), gg.TYPE_DWORD)
  gg.toast(Re_({46,46,229,188,128,229,144,175,230,163,128,230,181,139,229,135,189,230,149,176,230,136,144,229,138,159,46,46,46}))
  gg.toast(Re_({229,136,160,233,153,164,228,187,163,231,160,129,230,163,128,230,181,139,228,184,173}))
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({50,46,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,46,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({52,48}), gg.TYPE_FLOAT)
  gg.toast(Re_({53,48,37}))
  gg.toast(Re_({49,48,48,37}))
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({50,59,48,59,53,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({49,48}), gg.TYPE_FLOAT)
  gg.toast(Re_({49,48,48,48,37}))
  gg.toast(Re_({230,173,163,229,156,168,228,191,157,230,138,164,228,184,173}))
  gg.toast(Re_({53,48,37}))
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({49,48,59,48,46,50,59,49,59,49,59,49,59,49,68,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({49,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({48}), gg.TYPE_FLOAT)
  gg.toast(Re_({49,48,48,37}))
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({50,59,48,59,53,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
  gg.searchNumber(Re_({50,46,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,46,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
  gg.toast(Re_({49,46,48,50,51,48,50,49,49,49,50}))
  gg.toast(Re_({49,46,48,50,51,48,50,49,49,49,50}))
  gg.toast(Re_({49,46,48,50,48,49,48,51,57,57,54}))
  gg.toast(Re_({49,46,56,51,52,56,53,48,50,49,57}))
  gg.toast(Re_({229,133,168,233,131,168,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,52,44,56,52,56,59,50,57,44,49,50,52,44,49,53,52,59,56,48,53,44,52,49,50,44,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber(Re_({50,57,44,49,50,52,44,49,53,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,44,54,55,50,44,49,48,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,55,44,51,57,52,44,48,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({56,44,49,50,56,44,48,52,56,59,55,44,57,57,55,44,48,49,54,58,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,53,48,37}))
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,52,44,56,52,56,59,50,57,44,49,50,52,44,49,53,52,59,56,48,53,44,52,49,50,44,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber(Re_({50,57,44,49,50,52,44,49,53,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,44,54,55,50,44,49,48,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,55,44,51,57,52,44,48,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({56,44,49,50,56,44,48,52,56,59,55,44,57,57,55,44,48,49,54,58,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129,229,188,128,229,144,175}))
end

function fsf15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber(Re_({51,51,53,53,52,52,51,50,44,48,44,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({48,44,48,44,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4,16384}})
	 end
	 gg.toast(Re_({233,152,178,228,186,186,229,183,165,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function fsf14()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({120,97,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function fsf13()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({229,177,128,229,134,133,233,152,178,49}))
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,177,128,229,134,133,233,152,178,50}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({55,57,44,53,54,48,44,55,49,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({55,57,44,53,54,48,44,55,49,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,177,128,229,134,133,233,152,178,51}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,177,128,229,134,133,233,152,178,52}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,164,167,229,177,128,229,134,133,233,152,178,53}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,177,128,229,134,133,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function fsf12()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({49,44,48,54,48,44,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,49}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({50,44,51,53,57,44,50,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,50}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({50,44,48,57,55,44,49,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,51}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({50,44,54,50,49,44,52,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,52}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({56,44,54,53,48,44,55,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,53}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({52,44,49,57,52,44,51,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,54}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber(Re_({49,44,56,51,53,44,48,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({48}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,55}))
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(8)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
    gg.searchNumber(Re_({53,52,53,52,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(Re_({52,53,53,52,52,53}), gg.TYPE_DWORD)
    gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
    gg.clearResults()

gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({49,44,52,57,56,44,54,56,51,44,52,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.getResultCount()
            gg.toast(Re_({50,53,37,19}))
            gg.clearResults()
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({45,55,51,44,57,51,48,44,56,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.getResultCount()
            gg.toast(Re_({53,48,37,19}))
            gg.clearResults()
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({53,54,55,44,57,56,49,44,55,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.getResultCount()
            gg.toast(Re_({55,53,37,19}))
            gg.clearResults()
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({45,54,57,44,55,51,51,44,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.getResultCount()
            gg.toast(Re_({49,48,48,37,19}))
            gg.clearResults()
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({50,44,48,57,55,44,49,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(10)
            gg.editAll(Re_({48}), gg.TYPE_FLOAT)
            gg.toast(Re_({49,50,53,37,19}))
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({54,44,50,57,49,44,52,54,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(10)
            gg.editAll(Re_({48}), gg.TYPE_FLOAT)
            gg.toast(Re_({49,53,48,37,19}))
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({51,50,44,49,55,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(10)
            gg.editAll(Re_({48}), gg.TYPE_FLOAT)
            gg.toast(Re_({49,55,53,37,19}))
            gg.clearResults()
            gg.setRanges(gg.REGION_CODE_APP)
            gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({50,51,44,57,53,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(10)
            gg.editAll(Re_({48}), gg.TYPE_FLOAT)
            gg.toast(Re_({50,48,48,37,10,229,133,168,233,152,178,231,172,172,228,184,128,230,173,165,32,32,19}))
            gg.clearResults()
            gg.clearResults()
            gg.setRanges(16384)
            gg.searchNumber(Re_({54,44,57,52,56,44,57,51,56,59,54,44,57,52,56,44,52,48,48,59,53,51,54,44,57,57,49,44,50,51,50,59,53,57,44,57,48,48,44,57,50,57,59,49,48,48,44,55,54,56,44,55,54,56,59,54,53,44,56,50,57,44,56,56,57,59,50,53,54,44,53,49,51,59,52,44,57,56,49,44,55,50,56,59,53,44,51,55,53,44,53,51,54,59,49,48,44,56,48,54,59,49,44,50,55,53,44,52,54,56,44,56,49,54,59,49,44,51,52,51,44,49,48,55,44,53,56,52,59,49,44,54,55,56,44,49,51,53,44,56,48,56,58,51,56,50,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.searchNumber(Re_({54,44,57,52,56,44,57,51,56,59,54,44,57,52,56,44,52,48,48,59,53,51,54,44,57,57,49,44,50,51,50,59,53,57,44,57,48,48,44,57,50,57,59,49,48,48,44,55,54,56,44,55,54,56,59,54,53,44,56,50,57,44,56,56,57,59,50,53,54,44,53,49,51,59,52,44,57,56,49,44,55,50,56,59,53,44,51,55,53,44,53,51,54,59,49,48,44,56,48,54,59,49,44,50,55,53,44,52,54,56,44,56,49,54,59,49,44,51,52,51,44,49,48,55,44,53,56,52,59,49,44,54,55,56,44,49,51,53,44,56,48,56,58,51,56,50,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(10)
            gg.editAll(Re_({48}), gg.TYPE_DWORD)
            gg.toast(Re_({229,133,168,233,152,178}))
            gg.clearResults()

	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,53,56,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,49,50,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,54,48,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,48,52,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({50,48,48,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,50,57,48,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({233,128,131,232,183,145,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end

-------------------------------------------------------------------------------------------------------------
function fsf1()
menu1 = gg.multiChoice({
Re_({51,54,48,43,228,185,157,230,184,184,43,229,141,142,228,184,186,43,118,105,118,111,43,229,165,189,230,184,184,229,191,171,231,136,134,231,153,187,229,189,149,233,152,178,233,151,170}),
Re_({52,51,57,57,231,153,187,229,189,149,233,152,178,233,151,170}),
Re_({239,184,143,232,191,148,229,155,158,228,184,187,233,161,181,239,184,143}),
}, nil, os.date(Re_({229,133,168,231,137,136,230,156,172,233,128,154,231,148,168,233,152,178,233,151,170})))
if menu1 == nil then else
if menu1[1] == true then fs1() end
if menu1[2] == true then fs2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function fs1()--360+九游+华为+vivo+好游快爆登录防闪
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16},
{[Re_({110,97,109,101})] = Re_({233,152,178,233,151,170})},
{[Re_({118,97,108,117,101})] = 842084353, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 909456435,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1094268983,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 999999,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 999999,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 999999,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function fs2()--4399登录防闪
local addr=gg.getRangesList(Re_({108,105,98,116,101,114,115,97,102,101,50,46,115,111}))[1].start+0x4D5CB8
setvalue(addr,0,4)
gg.toast(Re_({52,51,57,57,231,153,187,229,189,149,233,152,178,233,151,170,229,188,128,229,144,175,230,136,144,229,138,159}))
end

-------------------------------------------------------------------------------------------------------------
function readPointer(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or Re_({})) .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,32,229,133,177,228,191,174,230,148,185})..#Table..Re_({228,184,170,229,128,188})) end

function fsf11()
-- main code
gg.setRanges(4)
gg.searchNumber(Re_({51,48,52,50,49,54,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({45,49,52,48,48,48,49,55,50,51,50})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50,50,55,57,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({45,50,57,50,49,51,54,56,51,50})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,57,56,55,44,53,51,57,44,55,56,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,51,57,56,44,48,51,54,44,50,56,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,54,51,49,44,50,48,55,44,50,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({53,55,52,44,49,54,57,44,57,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,54,50,57,44,57,53,52,44,56,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,52,54,51,44,57,48,52,44,48,56,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({54,51,57,44,54,52,53,44,52,56,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({53,56,56,44,54,53,48,44,48,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({57,53,57,44,55,56,52,44,55,51,55}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
gg.clearResults()
gg.searchAddress(Re_({56,52,50,44,48,56,52,44,51,53,51}), -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll(Re_({56,52,50,44,48,56,52,44,51,53,51}), gg.TYPE_DWORD)
gg.toast(Re_({99,97,229,133,168,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function fsf10()
local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x1003C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10148}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10160}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10250}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10258}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0xDB74}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function fsf2()--大厅防封
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3108}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3044}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3052}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3180}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3684}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3140}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3188}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3092}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3068}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3084}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3172}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3164}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3060}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3204}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3156}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3100}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3212}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3228}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3124}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3220}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3148}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3076}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3132}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3116}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer(Re_({108,105,98,117,110,105,116,121,46,115,111}), {3196}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
gg.toast(Re_({229,183,178,229,174,140,230,136,144,51,48,239,188,133}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({48,49,48,51,53,50,51,48,104,59,48,48,49,50,48,48,50,49,104,59,48,49,48,51,53,49,67,48,104}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,183,178,229,174,140,230,136,144,52,53,239,188,133}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({54,69,54,70,54,51,54,53,104}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,183,178,229,174,140,230,136,144,53,53,239,188,133}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({54,69,54,70,54,51,54,53,104,59,53,52,48,48,55,51,54,52,104,59,55,54,50,48,54,53,54,56,104}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,183,178,229,174,140,230,136,144,54,53,239,188,133}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({55,57,55,50,54,49,54,52,104,59,49,48,48,48,48,48,126,57,48,48,48,48,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,183,178,229,174,140,230,136,144,56,48,239,188,133}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({55,57,55,50,54,49,54,52,104}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,183,178,229,174,140,230,136,144,49,48,48,239,188,133}))
end

function fsf3()--大厅防封
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51,59,55,57,44,53,54,48,44,55,49,49,59,49,55,44,54,50,57,44,52,51,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,229,188,128,229,144,175,50,53,37}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,229,188,128,229,144,175,53,48,37}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,229,188,128,229,144,175,55,53,37}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,54,44,56,52,54,44,51,50,55,59,55,44,50,51,55,44,52,56,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({48})
	--	v.value = Re_({232,191,153,233,135,140,230,152,175,228,191,174,230,148,185,229,128,188})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,229,188,128,229,144,175,49,48,48,37}))
end

function fsf4()--大厅防封
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,56,55,57,44,48,55,54,44,57,54,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,57,53,51,44,52,57,55,44,50,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,57,53,51,44,55,50,48,44,52,49,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,54,54,48,44,57,55,51,44,49,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,57,51,54,44,56,56,48,44,55,53,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,57,50,57,44,52,48,57,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,55,52,53,44,52,50,49,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function fsf5()--大厅防封
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,54,44,54,57,50,44,48,52,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({51,44,53,52,48,44,53,49,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,55,52,53,44,51,54,51,44,57,54,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,56,55,57,44,52,52,54,44,53,52,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,57,49,52,44,48,53,57,44,55,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({229,164,167,229,142,133,233,152,178,229,176,129,228,191,174,230,148,185,230,136,144,229,138,159}))
	 gg.clearResults()
     end
     
     function fsf6()--防封5
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,54,51,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,54,51,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({233,152,178,229,176,129,53,228,191,174,230,148,185,230,136,144,229,138,159}))
	 gg.clearResults()
     end

function fsf7()--防封6
     gg.clearResults()
     gg.setRanges(32)
     gg.searchNumber(Re_({49,46,55,56,53,55,55,50,53,69,51,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber(Re_({49,46,55,56,53,55,55,50,53,69,51,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll(Re_({48}), gg.TYPE_FLOAT)
     gg.toast(Re_({233,152,178,229,176,129,54,229,188,128,229,144,175,230,136,144,229,138,159}))
     gg.clearResults()
     end
     
function fsf8()--防封7
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,54,44,55,55,55,44,50,49,54,59,51,51,44,53,53,52,44,52,51,50,59,51,54,57,44,48,57,56,44,55,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,54,44,55,55,55,44,50,49,54,59,51,51,44,53,53,52,44,52,51,50,59,51,54,57,44,48,57,56,44,55,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({233,152,178,229,176,129,55,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
     end
     
function fsf9()--防封8
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,52,52,49,44,55,57,50,59,49,51,44,51,54,57,44,51,52,52,59,55,51,56,44,50,54,51,44,48,52,48,59,53,48,51,44,51,49,54,44,52,56,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,44,52,52,49,44,55,57,50,59,49,51,44,51,54,57,44,51,52,52,59,55,51,56,44,50,54,51,44,48,52,48,59,53,48,51,44,51,49,54,44,52,56,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({233,152,178,229,176,129,56,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
     end

function cnmdbfw()
menu1 = gg.multiChoice({
"火箭筒改迫击炮一级",
"火箭筒改迫击炮二级",
"火箭筒改迫击炮三级",
"火箭筒改冲锋枪一级",
"火箭筒改冲锋枪二级",
"火箭筒改冲锋枪三级",
"火箭筒改能量剑一级",
"火箭筒改能量剑二级",
"火箭筒改能量剑三级",
"火箭筒改蹦蹦枪一级",
"火箭筒改蹦蹦枪二级",
"火箭筒改蹦蹦枪三级",
"火箭筒改能量炮一级",
"火箭筒改能量炮二级",
"火箭筒改能量炮三级",
"火箭筒改散弹枪一级",
"火箭筒改散弹枪二级",
"火箭筒改散弹枪三级",
"火箭筒改换风标一级",
"火箭筒改换风标二级",
"火箭筒改换风标三级",
"火箭筒改霸天斧一级",
"火箭筒改霸天斧二级",
"火箭筒改霸天斧三级",
"火箭筒改电能炮",
"火箭筒改滋水枪",
"火箭筒改像素剑",
"火箭筒改回旋镖",
"火箭筒改回血枪",
"️返 回 主 页",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then ad1() end
if menu1[2] == true then ad2() end
if menu1[3] == true then ad3() end
if menu1[4] == true then ad4() end
if menu1[5] == true then ad5() end
if menu1[6] == true then ad6() end
if menu1[7] == true then ad7() end
if menu1[8] == true then ad8() end
if menu1[9] == true then ad9() end
if menu1[10] == true then ad10() end
if menu1[11] == true then ad11() end
if menu1[12] == true then ad12() end
if menu1[13] == true then ad13() end
if menu1[14] == true then ad14() end
if menu1[15] == true then ad15() end
if menu1[16] == true then ad16() end
if menu1[17] == true then ad17() end
if menu1[18] == true then ad18() end
if menu1[19] == true then ad19() end
if menu1[20] == true then ad20() end
if menu1[21] == true then ad21() end
if menu1[22] == true then ad22() end
if menu1[23] == true then ad23() end
if menu1[24] == true then ad24() end
if menu1[25] == true then ad25() end
if menu1[26] == true then ad26() end
if menu1[27] == true then ad27() end
if menu1[28] == true then ad28() end
if menu1[29] == true then ad29() end
if menu1[30] == true then HOME() end
end
GLWW=-1
end



function ad1()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{110*256,13,4}})
end

function ad2()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{111*256,13,4}})
end

function ad3()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{112*256,13,4}})
end

function ad4()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{130*256,13,4}})
end

function ad5()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{131*256,13,4}})
end

function ad6()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{132*256,13,4}})
end

function ad7()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{140*256,13,4}})
end

function ad8()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{141*256,13,4}})
end

function ad9()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{142*256,13,4}})
end

function ad10()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{150*256,13,4}})
end

function ad11()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{151*256,13,4}})
end

function ad12()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{152*256,13,4}})
end

function ad13()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{180*256,13,4}})
end

function ad14()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{181*256,13,4}})
end

function ad15()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{182*256,13,4}})
end

function ad16()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{190*256,13,4}})
end

function ad17()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{191*256,13,4}})
end

function ad18()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{192*256,13,4}})
end

function ad19()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{200*256,13,4}})
end

function ad20()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{201*256,13,4}})
end

function ad21()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{202*256,13,4}})
end

function ad22()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{210*256,13,4}})
end

function ad23()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{211*256,13,4}})
end

function ad24()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{212*256,13,4}})
end

function ad25()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10160*256,13,4}})
end

function ad26()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{11130*256,13,4}})
end

function ad27()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10140*256,13,4}})
end

function ad28()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10150*256,13,4}})
end

function ad29()
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10100*256,13,4}})
end

function Main56()
SN = gg.multiChoice({
	 Re_({239,184,143,67,89,229,164,167,229,142,133,233,152,178,229,176,129,239,184,143}),
	 Re_({67,89,231,139,172,229,174,182,233,152,178,229,176,129,239,184,143}),
	 Re_({226,134,145,229,136,157,229,167,139,229,140,150,239,184,143}),
	 Re_({67,89,230,181,139,232,175,149,229,164,167,229,142,133,233,152,178,239,184,143}),
	 Re_({99,97,229,134,133,229,173,152,229,133,168,233,152,178}),
	 Re_({231,139,172,229,174,182,229,133,168,233,152,178}),
	 Re_({230,184,133,232,191,189,229,176,129}),
	 Re_({231,139,172,229,174,182,233,152,178,229,176,129,230,181,139,232,175,149}),
	 Re_({232,177,170,229,147,165,228,186,178,232,135,170,230,138,147,231,154,132,233,152,178,229,176,129}),
	 Re_({228,184,138,228,184,128,233,161,181}),
}, nil, Re_({67,89}))
if SN[1]==true then
	 HS492()
end
if SN[2]==true then
	 HS408()
end
if SN[3]==true then
	 HS407()
end
if SN[4]==true then
	 HS417()
end
if SN[5]==true then
	 cc()
end
if SN[6]==true then
	 cc1()
end
if SN[7]==true then
	 cc2()
end
if SN[8]==true then
	 cc3()
end
if SN[9]==true then
	 cc100()
end
if SN[10]==true then
	 HS496()
end
FX1=0
end

function cc100()
gg.alert(Re_({230,129,173,229,150,156,228,189,160,230,137,190,229,136,176,228,186,134,233,154,144,232,151,143,229,138,159,232,131,189}))
menu1 = gg.multiChoice({
Re_({232,191,189,230,141,149,230,151,160,233,153,144,230,154,180,232,181,176}),
Re_({231,155,180,232,163,133,229,138,159,232,131,189,91,229,133,168,231,137,136,230,156,172,233,128,154,231,148,168,93}),
Re_({229,155,162,229,173,144,231,187,153,233,152,159,229,143,139,229,143,152,232,186,171}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({233,154,144,232,151,143,229,138,159,232,131,189}))
if menu1 == nil then else
if menu1[1] == true then cc4() end
if menu1[2] == true then cc5() end
if menu1[3] == true then cc6() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function cc6()
function CY(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
		gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,183,178,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
		end
	end
end
local fy=gg.prompt({Re_({232,135,170,232,176,131,10,230,129,144,233,190,153,58,10,231,191,188,233,190,153,55,48,48,49,48,32,32,228,184,137,232,167,146,233,190,153,55,48,48,49,49,32,32,229,137,145,233,190,153,55,48,48,49,50,32,32,232,191,133,231,140,155,233,190,153,55,48,48,49,51,32,32,233,156,184,231,142,139,233,190,153,55,48,48,49,52,32,32,230,178,167,233,190,153,55,48,48,49,53,10,229,143,152,229,189,162,233,135,145,229,136,154,58,10,230,147,142,229,164,169,230,159,177,57,48,48,48,49,32,32,229,164,167,233,187,132,232,156,130,57,48,48,48,50,32,32,231,131,173,231,160,180,57,48,48,48,51,32,32,229,168,129,233,156,135,229,164,169,57,48,48,48,52,32,32,229,163,176,230,179,162,57,48,48,48,53,32,32,231,186,162,232,156,152,232,155,155,57,48,48,48,54})}, {[1] = 50}, {[1] = Re_({116,101,120,116})})
if fy==nil then os.exit(print(Re_({228,186,178,239,189,158,228,189,160,231,130,185,229,135,187,228,186,134,229,143,150,230,182,136,229,147,166}))) end
CY({{1141,4,32},{1142,4,4},{1143,8,4},{3,-4,4},{3,28,4},{0,44,4},{0,12,4}},{{fy[1],32,4},{fy[1],36,4},{fy[1],40,4,false}})
end

function cc5()
menu1 = gg.multiChoice({
	 Re_({232,167,146,232,137,178,229,133,168,231,154,174,232,130,164}),--1
	 Re_({233,148,129,233,135,145,229,184,129}),--2
	 Re_({229,133,168,229,155,190,232,184,169,229,164,185,229,173,144}),--3
	 Re_({229,143,152,232,186,171,230,148,187,229,135,187}),--4
	 Re_({233,148,129,233,129,147,229,133,183}),--5
	 Re_({120,97,232,153,154,230,139,159,233,135,145,229,184,129}),--6
	 Re_({230,151,160,229,144,142}),--7
	 Re_({230,151,160,233,151,180,233,154,148}),--8
	 Re_({233,148,129,229,173,144,229,188,185}),--9
	 Re_({232,167,163,233,148,129,230,168,161,229,188,143}),--10
	 Re_({232,167,163,233,148,129,233,129,147,229,133,183,231,154,174,232,130,164}),--11
	 Re_({233,129,147,229,133,183,230,151,160,67,68}),--12
	 Re_({230,157,128,233,152,159,229,143,139}),--13
	 Re_({229,133,141,232,180,185,232,180,173,231,137,169}),--14
	 Re_({231,167,187,229,138,168,229,188,128,231,137,169}),--15
	 Re_({229,128,146,229,156,176,228,184,162,233,129,147,229,133,183}),--16
	 Re_({233,128,131,231,148,159,231,167,146,232,181,162}),--17
	 Re_({232,191,189,230,141,149,231,167,146,232,181,162}),--18
	 Re_({228,184,157,232,161,128,228,184,141,230,173,187}),--19
	 Re_({56,50,233,148,129,229,133,168,229,188,128,91,229,164,177,230,149,136,93}),--20
	 Re_({231,168,179,229,174,154,233,148,129,233,135,145}),--21
	 Re_({229,173,144,229,188,185,231,169,191,229,162,153}),--22
	 Re_({233,129,147,229,133,183,231,173,137,231,186,167}),--23
	 Re_({229,133,168,230,173,166,229,153,168,232,182,133,231,186,167,229,176,132,233,128,159}),--24
	 Re_({232,167,163,233,148,129,229,133,168,232,167,146,232,137,178}),--25
	 Re_({231,155,180,230,142,165,229,188,128,233,151,168}),--26
	 Re_({228,186,186,231,137,169,231,169,191,229,162,153}),--27
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
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
xtnb({{false,184548591,0,4,nil,nil},{-481296384,368,4},{436207644,372,4}},{{-476053503,332,4,false},{-516948194,336,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss2()--锁金币

xtnb({{false,184549340,0,4,nil,nil},{-481296384,1028,4},{436207638,1032,4},{-442563684,1036,4}},{{-476053503,988,4,false},{-516948194,992,4,false}},4,16384,Re_({233,148,129,233,135,145,229,184,129}))
end

function ssss3()--秒开一切
xtnb({{false,184549325,0,4,nil,nil},{-481296384,2836,4},{436207620,2840,4},{-442564236,2844,4}},{{-476053503,2800,4,false},{-516948194,2804,4,false}},4,16384,Re_({229,133,168,229,155,190,232,184,169,229,164,185,229,173,144}))end
function ssss4()--移动开物
xtnb({{false,295698441,2916,4,nil,nil},{436207626,32,4},{-442563904,36,4},{-481296384,28,4}},{{-516948194,0,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss5()--不扣金币
xtnb({{false,184549305,0,4,nil,nil},{-481296384,4396,4},{436207620,4400,4},{-442564524,4404,4}},{{-476053504,4368,4,false},{-516948194,4372,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end


function ssss6()--爬墙
local xt=gg.prompt({Re_({232,153,154,230,139,159,233,148,129,233,135,145,229,184,129,232,135,170,232,176,131})}, {[1] = 300}, {[1] = Re_({116,101,120,116})})
xtnb({{false,1116471296,0,4,nil,nil},{1129512960,4,4}},{{xt[1],64,4,true}},4,32,Re_({232,153,154,230,139,159,233,148,129,233,135,145,229,184,129}))
end

function ssss7()--基扯改子弹
xtnb({{false,184549359,0,4,nil,nil},{-481296384,1472,4},{436207623,1476,4},{-442564360,1480,4}},{{1065353216,1408,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function ssss8()--无间隔
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss9()--锁子弹
qc=gg.alert(Re_({233,148,129,229,173,144,229,188,185}),Re_({230,151,167,231,137,136}),Re_({230,150,176,231,137,136}))
if qc==1 then
xtnb({{false,184549361,5904,4,nil,nil},{436207620,28,4},{-442564540,32,4},{-481296384,24,4}},{{-476053503,0,4,false},{-516948194,4,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end
if qc==2 then
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1736,4},{436207623,1740,4},{-442564368,1744,4}},{{-516948194,1704,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
end
function ssss10()--解锁模式
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2056,4},{436207620,2060,4},{-442564436,2064,4}},{{-476053503,2020,4,false},{-516948194,2024,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss11()--道具皮肤
xtnb({{false,184549360,0,4,nil,nil},{-481296384,3640,4},{436207623,3644,4},{-442564400,3648,4}},{{-476053503,3612,4,false},{-516948194,3616,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss12()--道具无CD

qc=gg.alert(Re_({233,129,147,229,133,183,230,151,160,229,134,183,229,141,180}),Re_({120,97}),Re_({97,91,233,128,131,93}),Re_({97,91,232,191,189,93}))
if qc==1 then
xtnb({{false,184549300,0,4,nil,nil},{-481296384,6900,4},{436207626,6904,4},{-442564232,6908,4}},{{-476053503,6868,4,false},{-516948194,6872,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
if qc==2 then
xtnb({{false,100.0,0,16,nil,nil},{100.0,4,16},{0.30000001192092896,8,16},{200.0,24,16}},{{0.01,48,16,false}},16,32,Re_({233,129,147,229,133,183,230,151,160,67,68}))
end
if qc==3 then
xtnb({{false,0.30000001192092896,0,16,nil,nil},{200.0,16,16},{1.0,28,16},{1.0,32,16},{1.0,36,16},{0.009999999776482582,80,16}},{{0.01,40,16,false}},16,32,Re_({233,129,147,229,133,183,229,141,161,230,151,160,229,134,183,229,141,180}))
end
end

function ssss13()--杀队友
qc=gg.alert(Re_({231,140,142,230,157,128,233,152,159,229,143,139}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
end
function ssss14()--免费购物
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0xD2D1DC},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xD2D1E0},})
end

function ssss15()--不死
qc=gg.alert(Re_({231,167,187,229,138,168,229,188,128,231,137,169}),Re_({231,167,187,229,138,168,229,188,128,231,137,169}),Re_({231,167,187,229,138,168,229,188,128,231,137,169,232,183,179,232,183,131,231,137,136}))
if qc==1 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,Re_({231,167,187,229,138,168,229,188,128,231,137,169}))end
if qc==2 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,Re_({231,167,187,229,138,168,229,188,128,231,137,169}))
xtnb({{false,184549351,0,4,nil,nil},{-481296384,6192,4},{436207632,6196,4},{-442564028,6200,4}},{{-476053503,6156,4,false},{-516948194,6160,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
end

function ssss16()--倒地丢道具
xtnb({{false,184549411,1424,4,nil,nil},{-481296384,24,4},{436207626,28,4},{-442564296,32,4}},{{-476053504,0,4,false},{-516948194,4,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function ssss17()--超级移速
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
xtnb({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
xtnb({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,Re_({}))
xtnb({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,Re_({}))
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,Re_({}))
end

function ssss18()--武器秒杀
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-482081950,1112,4,false},{-516948194,1116,4,false}},4,16384,Re_({231,167,146,232,181,162}))
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
xtnb({{false,184549344,0,4,nil,nil},{-481296384,136,4},{436207635,140,4},{-442564104,144,4}},{{-476053496,112,4,false},{-516948194,116,4,false}},4,16384,Re_({}))
xtnb({{false,184548539,0,4,nil,nil},{-481296384,936,4},{436207620,940,4},{-442564508,944,4}},{{-476052411,912,4,false},{-516948194,916,4,false}},4,16384,Re_({}))
xtnb({{false,184549345,0,4,nil,nil},{-481296384,156,4},{436207644,160,4},{-442563852,164,4}},{{-476053504,132,4,false},{-516948194,136,4,false}},4,16384,Re_({}))
xtnb({{false,184549329,0,4,nil,nil},{-481296384,2956,4},{436207644,2960,4},{-442563276,2964,4}},{{-476053496,2932,4,false},{-516948194,2936,4,false}},4,16384,Re_({}))
xtnb({{false,184549350,0,4,nil,nil},{-439091200,112,4},{-481296384,116,4},{436207635,120,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,Re_({}))
end

function ssss19()--解锁道具
qc=gg.alert(Re_({228,184,157,232,161,128,228,184,141,230,173,187}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if qc==1 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-476053504,5628,4,false},{-516948194,5632,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
if qc==2 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-382908368,5628,4,false},{-494030840,5632,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
end
function ssss20()--无限变身时间
xtnb({{false,250612577,0,4,nil,nil},{-481296384,3532,4},{436207632,3536,4},{-442564200,3540,4}},{{-476053499,3508,4,false},{-516948194,3512,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function ssss21()--裁判模式
xtnb({{false,295714822,0,4,nil,nil},{-481296384,3060,4},{436207629,3064,4},{-442564140,3068,4}},{{-476053504,3024,4,false},{-516948194,3028,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss22()--解锁风格
xtnb({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function ssss23()--枪枪暴击

xtnb({{false,184549327,0,4,nil,nil},{-481296384,4664,4},{436207635,4668,4},{-442563796,4672,4}},{{-476051055,4640,4,false},{-516948194,4644,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end

function ssss24()--超级高跳
xtnb({{false,184549335,0,4,nil,nil},{-481296384,4004,4},{436207656,4008,4},{-442563260,4012,4}},{{1112014848,3952,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end


function ssss25()--全角色
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0xE9BE08},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xE9BE0C},})
end


function ssss26()--直接开门
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))end
function ssss27()--人物穿墙
xtnb({{false,201453840,0,4,nil,nil},{-110911408,548,4},{512232079,552,4},{-89114364,556,4}},{{1103626240,536,4,false}},4,16384,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function cc4()
fastsearch({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}})
end
function HS492()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({50,59,51,59,53,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast(Re_({67,89,229,164,167,229,142,133,233,152,178}))
	 gg.clearResults()
end

function HS408()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({50,59,51,59,53,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast(Re_({67,89,231,139,172,229,174,182,233,152,178,229,176,129}))
	 gg.clearResults()
end

function HS407()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({50,59,51,59,53,59,49,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({51}), gg.TYPE_FLOAT)
	 gg.toast(Re_({67,89,231,139,172,229,174,182,233,152,178,229,176,129,229,136,157,229,167,139,229,140,150,230,136,144,229,138,159}))
	 gg.clearResults()
end

function HS417()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,44,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129,229,138,160,232,189,189,49,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({59,48}), gg.TYPE_WORD)
gg.toast(Re_({233,152,178,229,176,129,229,138,160,232,189,189,50,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({45,49,52,51,49,54,53,53,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,52,51,49,54,53,53,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129,229,138,160,232,189,189,51,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,46,48,70,59,51,46,48,70,59,53,46,48,70,59,49,46,53,70}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
gg.toast(Re_({233,152,178,229,176,129,229,183,178,229,138,160,232,189,189,52,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,46,48,70,59,49,46,53,70,59,49,48,46,48,70}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,46,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
gg.toast(Re_({233,152,178,229,176,129,229,183,178,229,138,160,232,189,189,53,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,48,48,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,48,48,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,176,129,54,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,49,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,49,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,176,129,229,183,178,229,138,160,232,189,189,55,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,51,48,57,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,51,48,57,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,176,129,229,183,178,229,138,160,232,189,189,56,48,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,55,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,55,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,176,129,229,183,178,229,138,160,232,189,189,56,57,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,55,53,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,55,53,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,176,129,57,54,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,57,48,48,44,52,56,51,44,54,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,57,48,48,44,52,56,51,44,54,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({67,89,229,164,167,229,142,133,233,152,178,229,176,129,91,230,181,139,232,175,149,93,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end

function HS496()
	 Main()
end

function a2()
gg.getResultsCount()
gg.toast(Re_({230,173,163,229,156,168,229,188,128,229,144,175}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,57,49,53,50,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast(Re_({229,188,128,229,144,175,49}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,48,54,53,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast(Re_({229,188,128,229,144,175,50}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,53,55,57,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast(Re_({229,188,128,229,144,175,51}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,48,52,56,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end

function cc()
gg.setRanges(4)
gg.searchNumber(Re_({51,48,52,50,49,54,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({45,49,52,48,48,48,49,55,50,51,50})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50,50,55,57,55,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = Re_({45,50,57,50,49,51,54,56,51,50})
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,57,56,55,44,53,51,57,44,55,56,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,51,57,56,44,48,51,54,44,50,56,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,54,51,49,44,50,48,55,44,50,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({53,55,52,44,49,54,57,44,57,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,54,50,57,44,57,53,52,44,56,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,44,52,54,51,44,57,48,52,44,48,56,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({54,51,57,44,54,52,53,44,52,56,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({53,56,56,44,54,53,48,44,48,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({57,53,57,44,55,56,52,44,55,51,55}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
gg.clearResults()
gg.searchAddress(Re_({56,52,50,44,48,56,52,44,51,53,51}), -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll(Re_({56,52,50,44,48,56,52,44,51,53,51}), gg.TYPE_DWORD)
gg.toast(Re_({99,97,229,133,168,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function cc1()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,48,54,48,44,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,44,51,53,57,44,50,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,44,48,57,55,44,49,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,44,54,50,49,44,52,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({56,44,54,53,48,44,55,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,44,49,57,52,44,51,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,44,56,51,53,44,48,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,134,133,229,173,152,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber(Re_({53,52,53,52,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({52,53,53,52,52,53}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129,229,136,157,229,167,139,229,140,150,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,51,53,49,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,49,51,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 gg.clearResults()--A内存防
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,55,50,53,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,52,51,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,49,50,50,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,53,51,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,53,54,50,50,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,54,55,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,51,57,56,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,55,57,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,49,49,49,51,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,56,54,37,230,136,144,229,138,159}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,52,55,56,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,57,53,37}))
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({55,51,49,54,50,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,49,48,48,37,230,136,144,229,138,159,229,165,148,230,148,190}))
	 gg.clearResults()
end
function cc2()
gg.toast(Re_({232,142,183,229,143,150,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,230,150,135,228,187,182,229,144,141,228,184,186,103,97,109,101,95,108,111,103,46,116,120,116}))
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,101,120,99,101,97,110,46,109,97,105,100,47,103,97,109,101,112,108,117,103,105,110,115,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,46,113,105,104,111,111,47,102,105,108,101,115,47,86,105,114,116,117,97,108,85,110,105,113,117,101,68,101,118,105,99,101,73,68,46,116,120,116}))
gg.sleep(800)
gg.toast(Re_({229,136,160,233,153,164,229,176,129,229,143,183,230,174,139,231,149,153,230,150,135,228,187,182,230,136,144,229,138,159}))
gg.sleep(500)
gg.toast(Re_({232,142,183,229,143,150,232,191,189,229,176,129,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
gg.setRanges(32)
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,101,120,99,101,97,110,46,109,97,105,100,47,103,97,109,101,112,108,117,103,105,110,115,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,46,113,105,104,111,111}))
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,229,183,178,229,136,160,233,153,164,232,191,189,229,176,129,230,150,135,228,187,182}))
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
	 gg.searchNumber(Re_({54,53,53,51,54}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg[Re_({84,89,80,69,95,68,87,79,82,68})],freeze = true,value = 0}})
	 end
	 gg.toast(Re_({230,184,133,232,191,189,229,176,129}))
end

function cc3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,44,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129,239,188,187,67,89,231,139,172,229,174,182,93}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({59,48}), gg.TYPE_WORD)
gg.toast(Re_({233,152,178,229,188,130,229,184,184}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({45,49,52,51,49,54,53,53,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,52,51,49,54,53,53,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,46,48,70,59,51,46,48,70,59,53,46,48,70,59,49,46,53,70}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
gg.toast(Re_({229,133,168,233,152,178}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({50,46,48,70,59,49,46,53,70,59,49,48,46,48,70}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,46,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
gg.toast(Re_({232,191,189,229,176,129,230,151,160,230,149,136}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,48,48,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,48,48,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({230,184,184,230,136,143,229,188,130,229,184,184,232,191,152,232,131,189,231,142,169}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,49,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,49,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({229,136,160,233,153,164,229,176,129,229,143,183,231,179,187,231,187,159,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,51,48,57,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,51,48,57,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({229,136,160,233,153,164,232,191,189,229,176,129,231,179,187,231,187,159,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,55,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,55,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({229,164,154,233,152,178}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,48,55,53,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,48,55,53,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast(Re_({233,152,178,229,141,129,229,185,180}))
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,57,48,48,44,52,56,51,44,54,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,57,48,48,44,52,56,51,44,54,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,32,88,97,32,99,97}))
gg.clearResults()
end

function S()
menu1 = gg.multiChoice({
Re_({229,164,167,229,142,133,229,133,168,233,152,178}),
Re_({232,191,189,230,141,149,51,115,231,167,146,232,181,162}),
Re_({233,128,131,231,148,159,231,167,146,232,181,162}),
Re_({65,229,134,133,229,173,152,230,151,160,233,151,180,233,154,148}),
Re_({232,191,189,230,141,149,229,188,128,233,148,129}),
Re_({233,129,147,229,133,183,229,141,161,229,155,155,230,160,188,230,173,166,229,153,168}),
Re_({232,182,133,229,188,186,229,164,167,229,142,133,233,152,178}),
Re_({232,191,171,229,135,187,231,130,174,232,140,131,229,155,180,232,135,170,232,176,131}),
Re_({99,97,229,134,133,229,173,152,233,152,178}),
"a内存功能",
Re_({230,148,185,232,167,146,232,137,178}),
Re_({231,154,174,232,130,164,228,184,128,233,148,174,231,190,142,229,140,150}),
Re_({229,140,187,231,150,151,231,174,177,230,148,185,233,129,147,229,133,183,229,141,161}),
Re_({233,161,182,231,186,167,233,152,178,229,143,152,230,128,129}),
Re_({228,185,177,230,150,151,230,151,160,233,153,144,231,137,169,232,181,132}),
Re_({229,164,167,229,142,133,233,152,178}),
Re_({231,168,179,229,174,154,233,148,129,233,135,145,229,184,129}),
Re_({230,187,145,230,157,191,229,143,152,232,186,171}),
Re_({231,167,187,233,128,159,232,135,170,232,176,131}),
Re_({230,148,185,230,150,135,229,173,151}),
Re_({230,173,166,229,153,168}),
Re_({229,138,160,229,136,134,230,181,139,232,175,149,91,231,139,172,229,174,182,93}),
Re_({231,186,162,232,156,152,232,155,155,230,138,128,232,131,189,232,140,131,229,155,180}),
Re_({230,147,142,229,164,169,230,159,177,230,138,128,232,131,189,232,140,131,229,155,180}),
Re_({229,168,129,233,156,135,229,164,169,230,138,128,232,131,189,232,140,131,229,155,180}),
Re_({233,129,147,229,133,183,229,141,161,231,173,137,231,186,167}),
Re_({231,129,171,231,174,173,231,173,146,230,152,159,232,128,128}),
Re_({226,134,145,230,129,162,229,164,141}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then s1() end
if menu1[2] == true then s2() end
if menu1[3] == true then s3() end
if menu1[4] == true then s4() end
if menu1[5] == true then s5() end
if menu1[6] == true then s6() end
if menu1[7] == true then s7() end
if menu1[8] == true then s8() end
if menu1[9] == true then s9() end
if menu1[10] == true then Mainrt5() end
if menu1[11] == true then s11() end
if menu1[12] == true then s12() end
if menu1[13] == true then s13() end
if menu1[14] == true then s14() end
if menu1[15] == true then s15() end
if menu1[16] == true then s16() end
if menu1[17] == true then s17() end
if menu1[18] == true then s18() end
if menu1[19] == true then s19() end
if menu1[20] == true then s20() end
if menu1[21] == true then s21() end
if menu1[22] == true then s22() end
if menu1[23] == true then s23() end
if menu1[24] == true then s24() end
if menu1[25] == true then s25() end
if menu1[26] == true then s26() end
if menu1[27] == true then s27() end
if menu1[28] == true then s28() end
if menu1[29] == true then HOME() end
end
GLWW=-1
end
    function s27()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber(Re_({53,48,48,48,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({53,48,48,48,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 600816}})
	 end
	 gg.toast(Re_({231,190,142,229,140,150,230,136,144,229,138,159}))
	 gg.clearResults()
end

function s28()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber(Re_({54,48,48,56,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,48,48,56,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 500010}})
	 end
	 gg.toast(Re_({230,129,162,229,164,141,230,173,163,229,184,184}))
	 gg.clearResults()
end

function s26()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
--夏天
local xt=gg.prompt({Re_({233,129,147,229,133,183,231,173,137,231,186,167})}, {[1] = 13})
xtnb({{false,502000,0,4,nil,nil},{501900,4,4}},{{xt[1],168,4,false},{xt[1],172,4,false},{xt[1],176,4,false},{xt[1],180,4,false},{xt[1],184,4,false},{xt[1],188,4,false},{xt[1],192,4,false},{xt[1],196,4,false},{xt[1],200,4,false},{xt[1],204,4,false},{xt[1],208,4,false},{xt[1],212,4,false},{xt[1],216,4,false},{xt[1],220,4,false},{xt[1],224,4,false},{xt[1],228,4,false},{xt[1],232,4,false},{xt[1],236,4,false},{xt[1],240,4,false},{xt[1],244,4,false},{xt[1],248,4,false},{xt[1],252,4,false},{xt[1],256,4,false},{xt[1],260,4,false},{xt[1],264,4,false},{xt[1],268,4,false},{xt[1],272,4,false},{xt[1],276,4,false},{xt[1],280,4,false},{xt[1],284,4,false},{xt[1],288,4,false},{xt[1],292,4,false},{xt[1],296,4,false},{xt[1],300,4,false},{xt[1],304,4,false},{xt[1],308,4,false},{xt[1],312,4,false},{xt[1],316,4,false},{xt[1],320,4,false},{xt[1],324,4,false}},4,32,Re_({229,133,168,233,129,147,229,133,183,230,148,185,231,173,137,231,186,167}))
end

function s1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
end
function s2()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-482081950,4,0xcd0378},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xcd037c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476052411,4,0xda856c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xda8570},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0xfbb67c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbb680},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053484,4,0xfbd77c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbd780},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053484,4,0xfbdd2c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbdd30},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053494,4,0xfbe400},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbe404},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-482081950,4,0xcd0378},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xcd037c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476052411,4,0xda856c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xda8570},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053504,4,0xfbb67c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbb680},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053484,4,0xfbd77c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbd780},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053484,4,0xfbdd2c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbdd30},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053454,4,0xfbe400},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xfbe404},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053484,4,0xda94f0},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xda94f4},})
end

function s3()
so = gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111}))[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = Re_({126,65,32,66,88,32,76,82})
  gg.setValues(tt)
end
function BaseAddressF(address, value)
  local result = {}
  result[1] = {}
  result[1].address = so + address
  result[1].flags = 4
  result[1].value = Re_({126,65,32,77,79,86,87,32,82,48,44,32,35}) .. value
  result[2] = {}
  result[2].address = so + address + 4
  result[2].flags = 4
  result[2].value = Re_({126,65,32,86,77,79,86,32,83,48,44,32,82,48})
  result[3] = {}
  result[3].address = so + address + 8
  result[3].flags = 4
  result[3].value = Re_({126,65,32,86,67,86,84,46,70,51,50,46,83,51,50,32,83,48,44,32,83,48})
  result[4] = {}
  result[4].address = so + address + 12
  result[4].flags = 4
  result[4].value = Re_({126,65,32,86,77,79,86,32,82,48,44,32,83,48})
  result[5] = {}
  result[5].address = so + address + 16
  result[5].flags = 4
  result[5].value = Re_({126,65,32,66,88,32,76,82})
  gg.setValues(result)
end
BaseAddressD(0xCD0378,Re_({126,65,32,77,79,86,9,32,82,48,44,32,35,54,54,44,32,56}))
BaseAddressF(0xDA856C,1000)
BaseAddressD(0xFBB67C,Re_({126,65,32,77,79,86,32,82,48,44,32,35,48}))
BaseAddressD(0xDA94F0,Re_({126,65,32,77,79,86,32,82,48,44,32,35,50,52,56}))
BaseAddressD(0xDA9C3C,Re_({126,65,32,77,79,86,32,82,48,44,32,35,50,52,56}))
BaseAddressD(0xFBE6D4,Re_({126,65,32,77,79,86,87,32,82,48,44,32,35,56}))
BaseAddressD(0x1E129AC,Re_({126,65,32,77,79,86,32,82,48,44,32,35,49}))
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end 
function s4()
local t = {Re_({108,105,98,105,108,50,99,112,112,46,115,111}), Re_({67,100}), 1}
local tt = {0x209F44, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function s5()
  fastsearch({
     {73974948, 4, 16384},
     {73975028, -4, 4}, 
   }, {
      {-516948194, 4, 4, false},
   },Re_({232,191,189,230,141,149,229,188,128,233,148,129}))
end

function s6()
qc=gg.alert(Re_({232,175,183,228,189,160,229,176,134,228,189,160,231,154,132,233,129,147,229,133,183,229,141,161,231,187,132,232,174,190,228,184,186,58,10,228,184,128,230,167,189,58,231,129,171,231,174,173,231,173,146,32,32,32,32,32,32,228,186,140,230,167,189,58,229,140,187,231,150,151,231,174,177,32,32,32,32,32,228,184,137,230,167,189,58,231,150,190,232,183,145,32,32,32,32,32,52,230,167,189,58,233,152,187,230,140,161,231,174,177,10,232,174,190,231,189,174,229,165,189,229,144,142,229,134,141,230,157,165,232,191,155,232,161,140,228,191,174,230,148,185}),Re_({232,174,190,231,189,174,229,165,189,228,186,134}),nil,Re_({229,142,187,232,174,190,231,189,174}))
if qc==1 then
local cy=gg.prompt( {Re_({232,190,147,229,133,165,228,189,160,228,184,128,230,167,189,230,131,179,230,148,185,231,154,132,228,184,156,232,165,191,58,10,49,48,48,231,150,190,232,183,145,10,49,48,49,231,154,174,229,141,161,10,49,48,50,228,190,166,229,175,159,231,156,188,10,49,48,51,230,137,139,230,166,180,229,188,185,10,49,48,52,229,140,187,231,150,151,231,174,177,10,49,48,53,232,183,179,233,171,152,10,49,48,54,231,148,159,229,145,189,230,138,164,231,155,190,10,49,48,55,233,152,187,230,140,161,231,174,177,10,49,48,56,233,155,183,232,190,190,10,49,48,57,229,183,161,233,128,187,231,138,172,10,49,49,48,232,130,190,228,184,138,232,133,186,231,180,160,10,49,49,49,233,133,146,230,161,182,10,49,49,50,233,163,158,231,136,170,10,49,49,51,228,188,160,233,128,129,233,151,168,10,49,49,52,232,135,170,232,181,176,231,144,131,10,49,49,53,230,175,146,230,182,178,10,50,48,48,231,129,171,231,174,173,231,173,146,49,231,186,167,10,50,48,49,231,129,171,231,174,173,231,173,146,50,231,186,167,10,50,48,50,231,129,171,231,174,173,231,173,146,51,231,186,167,10,50,48,51,231,129,171,231,174,173,231,173,146,229,188,185,229,140,163,10,50,49,48,232,191,171,229,135,187,231,130,174,49,231,186,167,10,50,49,49,232,191,171,229,135,187,231,130,174,50,231,186,167,10,50,49,50,232,191,171,229,135,187,231,130,174,51,231,186,167,10,50,49,51,232,191,171,229,135,187,231,130,174,229,188,185,229,140,163,10,50,50,48,229,134,178,233,148,139,230,158,170,49,231,186,167,10,50,50,49,229,134,178,233,148,139,230,158,170,50,231,186,167,10,50,50,50,229,134,178,233,148,139,230,158,170,51,231,186,167,10,50,50,51,229,134,178,233,148,139,230,158,170,229,188,185,229,164,185,10,49,49,54,230,187,145,230,157,191,10,49,49,55,233,173,148,230,179,149,229,162,153,10,50,52,48,232,131,189,233,135,143,229,137,145,10,51,48,48,229,148,164,233,163,142,233,149,150,10,50,56,48,232,131,189,233,135,143,232,133,149,231,130,174}),Re_({232,190,147,229,133,165,228,189,160,228,186,140,230,167,189,232,166,129,230,148,185,231,154,132,228,184,156,232,165,191}),Re_({232,190,147,229,133,165,228,189,160,228,184,137,230,167,189,230,131,179,230,148,185,231,154,132,228,184,156,232,165,191}),Re_({232,190,147,229,133,165,228,189,160,229,155,155,230,167,189,230,131,179,230,148,185,231,154,132,228,184,156,232,165,191})},{200,104,100,107}, {Re_({116,101,120,116}),Re_({110,117,109,98,101,114}),Re_({116,101,120,116}),Re_({110,117,109,98,101,114})}  )
gg.clearResults()
	 fastsearch({{446676598984,32,32},
	 {104,4,4},
	 {100,8,4},}, 
	 {{cy[4], 0xC, 4, true},
	 },Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
fastsearch({{446676598984,32,32},
{104,4,4},
{100,8,4},}, 
{{cy[2], 0x4, 4, true},
{cy[3], 0x8, 4, true},
{cy[1], 0, 4, true}
},Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
	 gg.clearResults()
if qc==2 then Main5()
end
end
end
function s7()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,229,176,129,49})},
{[Re_({118,97,108,117,101})] = 1745421313, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1745421313,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -1745421313,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,229,176,129,50})},
{[Re_({118,97,108,117,101})] = 1929409140, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1929409140,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -1929409140,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,229,176,129,51})},
{[Re_({118,97,108,117,101})] = 21530208, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 21530208,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -21530208,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,229,176,129,52})},
{[Re_({118,97,108,117,101})] = 7562610, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 7562610,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -7562610,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,229,176,129,53})},
{[Re_({118,97,108,117,101})] = 696123755, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 696123755,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -696123755,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function s8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,48,48,48,59,57,57,59,50,46,48,59,50,46,53,58,58}), 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,46,48}), 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 nb= gg.prompt({i=Re_({232,135,170,229,183,177,233,128,137,232,140,131,229,155,180,239,188,140,229,142,159,229,128,188,228,184,186,50})}, {i=Re_({57,57,57,57})})
gg.editAll(nb[Re_({105})], 16)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,232,140,131,229,155,180}))
	 gg.clearResults()
end
function s9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({}), gg.TYPE_DWORD)
	 gg.toast(Re_({}))
	 gg.clearResults()
end

function Mainrt5()
menu1 = gg.multiChoice({
"a内存直装",
Re_({240,159,170,144,239,184,143,232,191,148,32,229,155,158,32,228,184,187,32,233,161,181,239,184,143,240,159,170,144}),
}, nil, os.date(Re_({})))
if menu1 == nil then else
if menu1[1] == true then zn() end
if menu1[3] == true then zn2() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end

function zn()
menu1 = gg.multiChoice({
"登录防闪",
"地图高亮",
"人物反伤",--3
"武器间隔",--4
"人物加速",--5
"人物高跳",--6
"极速回血",--7
"攻击吸血",--8
"无视护盾",--9
"无视夹子",--10
"角色技能免费",--11
"锁定子弹",--12
"击倒次数",--13
"营救次数",--14
"造成伤害",--15
"️返 回 主 页",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then dd1() end
if menu1[2] == true then dd2() end
if menu1[3] == true then dd3() end
if menu1[4] == true then dd4() end
if menu1[5] == true then dd5() end
if menu1[6] == true then dd6() end
if menu1[7] == true then dd7() end
if menu1[8] == true then dd8() end
if menu1[9] == true then dd9() end
if menu1[10] == true then dd10() end
if menu1[11] == true then dd11() end
if menu1[12] == true then dd12() end
if menu1[13] == true then dd13() end
if menu1[14] == true then dd14() end
if menu1[15] == true then dd15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function dd1()--登录防闪
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x318d2d8},})--类名--EnvironmentProxyDetector--方法名--BestHTTP.Proxies.Autodetect.IProxyDetector.GetProxy
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x318d2dc},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x318dff0},})--类名--EnvironmentProxyDetector--方法名--GetEnv
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x318dff4},})
qmnb = {
{["memory"] = 16},
{["name"] = "登录防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 999999,["offset"] =0, ["type"] = 4},
{["value"] = 999999,["offset"] =4, ["type"] = 4},
{["value"] = 999999,["offset"] =8, ["type"] = 4},
}
xqmnb(qmnb)
end     

function dd2()
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

function dd3()
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

function dd4()
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

function dd5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 0.15, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function dd6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 2.5, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function dd7()
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

function dd8()
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

function dd9()
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

function dd10()
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

function dd11()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function dd12()
qmnb = {
{["memory"] = 16384},
{["name"] = "锁定子弹"},
{["value"] = 62509715, ["type"] = 4},
{["lv"] = 62046212,["offset"] =4, ["type"] = 4},
{["lv"] = 62046192,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = -516948194,["offset"] =12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function dd13()
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

function dd14()
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

function dd15()
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


function zn1()
readWrite({{false,256,-40,4,nil,nil},{1089470464,0,4}
,{1065353216,-12,4}},{{1148829696,4,4,true}},4,32,Re_({229,176,143,233,163,158,230,156,186,230,151,182,233,151,180}))
end
function zn2()
local xt=gg.prompt({Re_({229,175,188,229,188,185,232,140,131,229,155,180})}, {[1] = 52}, {[1] = Re_({116,101,120,116})})
readWrite({{false,6.30584309e-44,0,16,nil,nil},{5.5,16,16}},{{1,4,16,false},{xt[1],8,16,false},{0,12,16,false}},16,32,Re_({229,133,168,229,177,143,232,140,131,229,155,180,43,229,175,188,229,188,185,231,136,134,229,176,132}))
end

function s11()--改角色
gg.alert(Re_({66,79,83,83,49,48,48,48,48,233,152,191,230,178,187,50,49,48,48,230,140,135,231,187,152,229,184,136,50,48,48,48,230,156,186,230,162,176,228,185,139,229,191,131,49,57,48,48,231,129,181,232,134,179,229,173,144,49,56,48,48,229,176,143,233,170,135,229,174,162,49,55,48,48,229,145,189,231,159,179,232,128,133,49,54,48,48,229,176,143,231,139,174,229,173,144,49,53,48,48,233,187,142,230,152,142,231,155,190,229,141,171,49,52,48,48,230,152,159,232,190,176,229,156,163,229,165,179,49,51,48,48,229,189,177,228,185,139,229,191,141,232,128,133,49,50,48,48,230,176,180,228,185,139,229,191,141,232,128,133,49,49,48,48,229,176,143,230,162,166,233,173,135,49,48,48,48,229,176,143,231,139,144,231,139,184,57,48,48,232,137,190,229,143,175,56,48,48,229,143,145,230,152,142,229,174,182,55,48,48,233,173,148,230,156,175,229,184,136,54,48,48,230,156,186,229,153,168,228,186,186,53,48,48,229,176,143,229,173,166,229,166,185,52,48,48,229,165,179,231,137,185,229,183,165,51,48,48,229,164,177,229,191,134,232,128,133,50,48,48,233,155,135,228,189,163,229,133,181,49,48,48}))
local LL=gg.prompt({Re_({232,175,183,232,190,147,229,133,165,232,167,146,232,137,178,228,187,163,231,160,129})},{[1]=Re_({}) })
fastsearch({
{100,4,32},
{2,-4,4},
{0,-8,4},
{0,-12,4}
},
{{LL[1],4,4,true}})
end
function s12()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,128,233,148,174,231,154,174,232,130,164,231,190,142,229,140,150})},
{[Re_({118,97,108,117,101})] = 500010, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 500004, [Re_({111,102,102,115,101,116})] = 0x4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 500005, [Re_({111,102,102,115,101,116})] = 0x8, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 600016,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600756,[Re_({111,102,102,115,101,116})] =0x4, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600366,[Re_({111,102,102,115,101,116})] =0x8, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 600016,[Re_({111,102,102,115,101,116})] =0xC, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function s13()
local fy=gg.prompt({Re_({229,140,187,231,150,151,231,174,177,232,135,170,232,176,131,10,10,233,129,147,229,133,183,229,141,161,239,188,154,10,10,50,48,48,32,231,150,190,232,183,145,10,50,48,49,32,232,183,179,233,171,152,10,51,48,48,32,228,190,166,230,159,165,231,156,188,10,51,48,49,32,233,152,187,230,140,161,231,174,177,10,52,48,48,32,230,137,139,233,155,183,10,52,48,49,32,229,140,187,231,150,151,231,174,177,10,53,48,48,32,230,138,164,231,155,190,10,55,48,48,32,231,139,151,10,55,48,49,32,233,146,136,10,56,48,48,32,233,133,146,230,161,182,10,56,48,49,32,233,163,158,231,136,170,10,57,48,48,32,228,188,160,233,128,129,233,151,168,10,57,48,49,32,232,135,170,232,181,176,231,144,131,10,49,48,48,48,32,230,175,146,230,182,178,10,49,48,48,49,32,230,187,145,230,157,191,10,49,48,48,50,32,233,173,148,230,179,149,229,162,153,10,49,48,48,51,32,229,188,149,229,138,155,229,156,186,10,49,48,48,52,32,230,178,187,231,150,151,231,144,131,10,49,48,48,53,32,230,176,148,229,158,171,10,49,48,48,54,32,229,175,188,229,188,185,10,49,48,48,55,32,232,191,189,232,184,170,233,155,183,10,49,48,48,56,32,233,156,135,232,141,161,230,179,162,10,49,48,48,57,32,229,176,143,231,129,176,230,156,186,10,49,48,49,48,32,230,151,182,229,133,137,230,156,186,10,49,48,49,49,32,232,183,179,230,157,134,10,49,48,49,50,32,230,139,179,229,165,151,10,49,48,49,54,32,229,144,188,229,144,188,229,143,183,10,10,231,137,185,230,174,138,229,141,161,239,188,154,10,10,53,48,48,48,49,232,191,170,232,191,166,10,53,48,48,48,50,32,230,179,189,229,161,148,10,53,48,48,48,51,32,232,181,155,231,189,151,10,55,48,53,48,48,48,48,53,229,176,143,230,129,182,233,173,148,10,55,48,53,48,48,48,48,52,32,229,133,168,228,189,147,230,138,164,231,155,190,10,55,48,53,48,48,48,48,50,32,229,164,185,229,173,144,10,49,48,53,48,48,48,48,49,32,231,150,190,232,183,145,10,49,48,53,48,48,48,48,50,32,229,134,178,233,148,139,10,49,48,53,48,48,48,48,51,32,231,139,144,231,139,184,233,147,190,229,173,144,10,49,48,53,48,48,48,48,52,32,229,164,169,233,153,141,228,185,139,231,137,169,10,49,48,53,48,48,48,48,53,32,231,148,159,231,137,169,231,130,184,229,188,185,10,49,48,53,48,48,48,48,55,32,231,155,190,228,189,141,230,138,164,231,155,190,10,49,48,53,48,48,48,48,57,32,231,155,190,228,189,141,229,134,178,233,148,139,10,49,48,53,48,48,48,49,48,32,231,129,171,229,138,155,230,148,175,230,143,180,10,49,48,53,48,48,48,49,50,32,233,170,135,229,174,162,233,163,158,231,136,170,10,49,48,53,48,48,48,49,51,32,233,170,135,229,174,162,233,154,144,232,186,171,10,49,48,53,48,48,48,49,52,32,232,155,139,233,187,132,233,133,165,10,49,48,53,48,48,48,49,53,32,231,178,189,229,173,144,10,49,48,53,48,48,48,49,54,32,233,171,152,232,183,179,229,155,162,229,173,144})}, {[1] = 50}, {[1] = Re_({116,101,120,116})})
if fy==nil then os.exit(print(Re_({228,186,178,239,189,158,228,189,160,231,130,185,229,135,187,228,186,134,229,143,150,230,182,136,229,147,166}))) end
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,140,187,231,150,151,231,174,177})},
{[Re_({118,97,108,117,101})] = 1007, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 37,[Re_({111,102,102,115,101,116})] =0x4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 3,[Re_({111,102,102,115,101,116})] =-0x10, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 8,[Re_({111,102,102,115,101,116})] =-0x18, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = fy[1],[Re_({111,102,102,115,101,116})] =-0x20, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function s14()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0xFBAD78},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xFBAD7C},})
end
function s15()
fastsearch({{1028443341, 4, 32}, {0, 24, 4}, {1065353216, 72, 4}, {1056964608, 80, 4}, {1056964608, -48, 4}}, {{0, 24, 4,true}})
end
function s16()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3CABFAC},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3CC15B0},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0,16,0x3D8D204},})
fastsearch({{1987539786,4,4}},{{0,0,4,true}})
fastsearch({{1398036289,4,4}},{{0,0,4,true}})
fastsearch({{574169904,4,4}},{{0,0,4,true}})
fastsearch({{1629954853,4,4}},{{0,0,4,true}})
fastsearch({{1463904086,4,4}},{{0,0,4,true}})
fastsearch({{639645488,4,4}},{{0,0,4,true}})
fastsearch({{588650008,4,4}},{{0,0,4,true}})
fastsearch({{959784737,4,4}},{{0,0,4,true}})
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

function s17()--稳定锁金--方法名FinishBuy
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
--夏天


readWrite({{false,184549340,0,4,nil,nil},{-481296384,1028,4},{436207638,1032,4},{-442563684,1036,4}},{{-476053503,988,4,false},{-516948194,992,4,false}},4,16384,Re_({233,148,129,233,135,145,229,184,129}))
end
function s18()
function CY(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
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
		gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,44,32,229,183,178,228,191,174,230,148,185}) .. (#tb[1] + #tb[2]) .. Re_({230,157,161,230,149,176,230,141,174}))
		else
		gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
		end
	end
end
gg.alert(Re_({230,129,144,233,190,153,58,10,231,191,188,233,190,153,55,48,48,49,48,32,32,228,184,137,232,167,146,233,190,153,55,48,48,49,49,32,32,229,137,145,233,190,153,55,48,48,49,50,32,32,232,191,133,231,140,155,233,190,153,55,48,48,49,51,32,32,233,156,184,231,142,139,233,190,153,55,48,48,49,52,32,32,230,178,167,233,190,153,55,48,48,49,53,10,229,143,152,229,189,162,233,135,145,229,136,154,58,10,230,147,142,229,164,169,230,159,177,57,48,48,48,49,32,32,229,164,167,233,187,132,232,156,130,57,48,48,48,50,32,32,231,131,173,231,160,180,57,48,48,48,51,32,32,229,168,129,233,156,135,229,164,169,57,48,48,48,52,32,32,229,163,176,230,179,162,57,48,48,48,53,32,32,231,186,162,232,156,152,232,155,155,57,48,48,48,54}))
CY=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,228,191,174,230,148,185,231,154,132,229,143,152,232,186,171,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,41})},{[1]=Re_({})})
nh({{3214796433, 32, 32}, {30208, -88, 4}, {255, -76, 4}, {655360, -12, 4}, {116, 28, 4}, {25089, 32, 4}, {12288, 40, 4}}, {{CY[1], 8, 4, false}})
end

function s19()
local fy=gg.prompt({Re_({231,167,187,233,128,159,91,232,135,170,232,176,131,93})}, {[1] = 3.5}, {[1] = Re_({116,101,120,116})})
if fy==nil then os.exit(print(Re_({228,189,160,231,130,185,229,135,187,228,186,134,229,143,150,230,182,136}))) end
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,167,187,233,128,159})},
{[Re_({118,97,108,117,101})] = 2.79999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 20.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 900.0,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = fy[1],[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function s20()
a=gg.prompt({Re_({230,150,135,229,173,151,226,134,147}),Re_({230,148,185,228,185,139,229,144,142,231,154,132,230,150,135,229,173,151,226,134,147})},{},{Re_({116,101,120,116}),Re_({116,101,120,116})})
gg.setRanges(32)
gg.searchNumber(Re_({59})..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({59})..a[2],2)
gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159,91,229,136,183,230,150,176,231,156,139,228,184,128,228,184,139,229,144,167,93}))
gg.clearResults()
end
function s21()
qd=gg.alert(Re_({228,187,165,230,136,145,231,154,132,233,161,186,229,186,143,230,148,190,233,129,147,229,133,183,229,141,161,231,150,190,232,183,145,230,137,139,233,155,183,229,140,187,231,150,151,229,140,133,231,129,171,231,174,173,231,173,146,230,144,156,231,180,162,229,136,176,53,48,37,230,138,138,231,129,171,231,174,173,231,173,146,230,141,162,230,136,144,232,183,179,232,183,179,230,157,134}),Re_({229,135,134,229,164,135,229,165,189,228,186,134}),Re_({232,191,152,230,178,161,229,135,134,229,164,135,229,165,189,32}))
if qd==1 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,48,48,59,49,48,51,59,49,48,52,59,50,48,48,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.toast(Re_({232,175,183,229,176,134,231,129,171,231,174,173,231,173,146,230,141,162,230,136,144,232,183,179,232,183,179,230,157,134}))
	 gg.searchNumber(Re_({49,48,48,59,49,48,51,59,49,48,52,59,49,50,54,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({50,49,48,59,50,52,48,59,50,57,48,59,51,48,48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end
if qd==2 then
gg.alert(Re_({230,178,161,229,135,134,229,164,135,229,165,189,231,142,169,228,189,160,109}))
os.exit()
end
end
function s22()
function XsAlgorithm(rang, type, features, modify) -- xs模板
  gg.clearResults()
  gg.setRanges(rang)
  gg.searchNumber(features[1][1], 4)
  if gg.getResultsCount() == 0 then
    gg.toast(Re_({230,178,161,230,156,137,228,184,187,231,137,185,229,190,129,231,160,129,239,188,140,232,175,183,233,135,141,230,150,176,229,176,157,232,175,149,227,128,130}))
  else
    local result = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    for a = 2, #features do
      local storage = {}
      for b, c in ipairs(result) do
        storage[#storage + 1] = { address = c.address + features[a][2], flags = 4 }
      end
      storage = gg.getValues(storage)
      local hook = {}
      for d, e in ipairs(storage) do
        if e.value == features[a][1] then
          hook[#hook + 1] = result[d]
        end
      end
      result = hook
    end
    if #result > 0 then
      local tt = {}
      for a, b in ipairs(result) do
        for c, d in ipairs(modify) do
          gg.setValues({ [c] = { address = b.address + d[2], flags = type, value = d[1] } })
        end
      end
    end
  end
end

XsAlgorithm(32,4,{{48}, {13,0x4}}, {{9999,0x0},{9999,0x4},})
end
function s23()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
--夏天

xtnb({{false,0.36000001430511475,0,16,nil,nil},{0.36000001430511475,4,16},{0.4000000059604645,8,16},{0.699999988079071,48,16}},{{99,52,16,false}},16,32,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end
function s24()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
--夏天
local xt=gg.prompt({Re_({230,147,142,229,164,169,230,159,177,230,138,128,232,131,189,232,140,131,229,155,180})}, {[1] = 20})
xtnb({{false,120.0,8,16,nil,nil},{60.0,4,16},{3.0,0,16}},{{xt[1],16,16,false}},16,32,Re_({230,147,142,229,164,169,230,159,177,230,138,128,232,131,189,232,140,131,229,155,180}))
end
function s25()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and Re_({10,229,183,178,228,191,174,230,148,185})..tg_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) th=(th_) and Re_({10,229,183,178,232,142,183,229,143,150})..th_..Re_({230,157,161,230,149,176,230,141,174}) or Re_({}) gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(Re_({10})..Name..Re_({230,144,156,231,180,162,230,136,144,229,138,159,239,188,129,10,229,129,143,231,167,187,229,136,176})..#data..Re_({230,157,161,230,149,176,230,141,174})..tg..th) tg_,th_=nil,nil else gg.toast(Re_({10})..Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165}),false) return false end else gg.toast(Name..Re_({229,188,128,229,144,175,229,164,177,232,180,165})) return false end end
--夏天

xtnb({{false,1.1299999952316284,100,16,nil,nil},{1.0,4,16},{1.0,8,16},{1.0,48,16},{1.0,52,16},{1.0,96,16},{1.0,0,16},{1.0,104,16},{1.0,108,16},{2.2420775429197073E-44,156,16},{2.2420775429197073E-44,164,16}},{{99,12,16,false}},16,32,Re_({232,190,147,229,133,165,229,138,159,232,131,189,229,144,141,231,167,176}))
end

function X()
  SN = gg.choice({
    "直装",
    Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,231,150,190,232,183,145,230,148,185,230,151,160,230,149,140}),
    Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,232,183,179,233,171,152,230,148,185,230,154,180,232,181,176}),
    Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,230,173,166,229,153,168,231,136,134,229,176,132}),
    Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,230,148,185,230,173,166,229,153,168}),
    Re_({233,128,128,229,135,186,232,132,154,230,156,172})
  }, 2048, Re_({229,138,159,232,131,189,229,188,128,229,144,175,229,144,142,233,128,128,229,135,186,232,132,154,230,156,172,229,144,142,230,137,141,228,188,154,230,156,137,230,152,142,230,152,190,230,149,136,230,158,156,239,188,129,231,137,185,229,136,171,230,152,175,231,139,172,229,174,182,97,229,134,133,229,173,152,230,173,166,229,153,168,230,151,160,233,151,180,233,154,148,239,188,129}))
  if SN == 1 then
    cnmndb()
  end
  if SN == 2 then
    fw()
  end
  if SN == 3 then
    wf()
  end
  if SN == 4 then
    emmm()
  end
  if SN == 5 then
    wcnm()
  end
  if SN == 6 then
     Main()
  end
  XGCK = -1
end



function cnmndb()
menu1 = gg.multiChoice({
"登录防闪",
"地图高亮",
"人物反伤",--3
"武器间隔",--4
"人物加速",--5
"人物高跳",--6
"极速回血",--7
"攻击吸血",--8
"无视护盾",--9
"无视夹子",--10
"角色技能免费",--11
"锁定子弹",--12
"击倒次数",--13
"营救次数",--14
"造成伤害",--15
"️返 回 主 页",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then dd1() end
if menu1[2] == true then dd2() end
if menu1[3] == true then dd3() end
if menu1[4] == true then dd4() end
if menu1[5] == true then dd5() end
if menu1[6] == true then dd6() end
if menu1[7] == true then dd7() end
if menu1[8] == true then dd8() end
if menu1[9] == true then dd9() end
if menu1[10] == true then dd10() end
if menu1[11] == true then dd11() end
if menu1[12] == true then dd12() end
if menu1[13] == true then dd13() end
if menu1[14] == true then dd14() end
if menu1[15] == true then dd15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function dd1()--登录防闪
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x318d2d8},})--类名--EnvironmentProxyDetector--方法名--BestHTTP.Proxies.Autodetect.IProxyDetector.GetProxy
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x318d2dc},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x318dff0},})--类名--EnvironmentProxyDetector--方法名--GetEnv
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x318dff4},})
qmnb = {
{["memory"] = 16},
{["name"] = "登录防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 999999,["offset"] =0, ["type"] = 4},
{["value"] = 999999,["offset"] =4, ["type"] = 4},
{["value"] = 999999,["offset"] =8, ["type"] = 4},
}
xqmnb(qmnb)
end     

function dd2()
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

function dd3()
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

function dd4()
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

function dd5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 0.15, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function dd6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 2.5, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function dd7()
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

function dd8()
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

function dd9()
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

function dd10()
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

function dd11()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function dd12()
qmnb = {
{["memory"] = 16384},
{["name"] = "锁定子弹"},
{["value"] = 62509715, ["type"] = 4},
{["lv"] = 62046212,["offset"] =4, ["type"] = 4},
{["lv"] = 62046192,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = -516948194,["offset"] =12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function dd13()
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

function dd14()
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

function dd15()
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




function fw()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,150,190,232,183,145,230,148,185,230,151,160,230,149,140})},
{[Re_({118,97,108,117,101})] = 106147, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 6750208, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 65535, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 19660800, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function wf()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,183,179,233,171,152,230,148,185,230,154,180,232,181,176})},
{[Re_({118,97,108,117,101})] = 408, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 26112, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -256, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 255, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 28416, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function emmm()--武器爆射
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({231,139,172,229,174,182,97,229,134,133,229,173,152,230,173,166,229,153,168,231,136,134,229,176,132})},
      {[Re_({118,97,108,117,101})] = 18293456896, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 4579260101969313793, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 4629700418003061965, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 4539628425467396096, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 32},
    }
    qmxg = {
    {[Re_({118,97,108,117,101})] = 4579260101969313892, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 32},    
    }
    xqmnb(qmnb)
end



function wcnm()--武器无后
menu1 = gg.multiChoice({
Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,185,166,232,185,166,230,158,170,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,131,189,233,135,143,229,137,145,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,191,171,229,135,187,231,130,174,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,229,134,178,233,148,139,230,158,170,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,131,189,233,135,143,232,133,149,231,130,174,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,229,148,164,233,163,142,233,149,150,91,228,187,191,120,115,93}),
Re_({231,129,171,231,174,173,231,173,146,230,148,185,233,156,158,229,188,185,230,158,170,91,228,187,191,120,115,93}),
Re_({230,148,185,229,155,158,231,129,171,231,174,173,231,173,146,91,228,187,191,120,115,93}),
Re_({239,184,143,232,191,148,229,155,158,228,184,187,233,161,181,239,184,143}),
}, nil, os.date(Re_({230,148,185,230,173,166,229,153,168,229,138,159,232,131,189})))
if menu1 == nil then else
if menu1[1] == true then gwq1() end
if menu1[2] == true then gwq2() end
if menu1[3] == true then gwq3() end
if menu1[4] == true then gwq4() end
if menu1[5] == true then gwq1() end
if menu1[6] == true then gwq2() end
if menu1[7] == true then gwq3() end
if menu1[8] == true then gwq4() end
if menu1[9] == true then Main() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function gwq1()--火箭筒改蹦蹦枪[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,185,166,232,185,166,230,158,170,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 250,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq2()--火箭筒改能量剑[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,131,189,233,135,143,229,137,145,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 240,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq3()--火箭筒改迫击炮[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,191,171,229,135,187,231,130,174,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 210,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq4()--火箭筒改冲锋枪[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,229,134,178,233,148,139,230,158,170,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 230,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq5()--火箭筒改能量腕炮[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,232,131,189,233,135,143,232,133,149,231,130,174,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 280,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq6()--火箭筒改唤风镖[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,229,148,164,233,163,142,233,149,150,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 300,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end



function gwq7()--火箭筒改霞弹枪[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,129,171,231,174,173,231,173,146,230,148,185,233,156,158,229,188,185,230,158,170,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 290,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end







function gwq8()--改回火箭筒[仿xs]
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,148,185,229,155,158,231,129,171,231,174,173,231,173,146,91,228,187,191,120,115,93})},
{[Re_({118,97,108,117,101})] = 389, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 393,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 397,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 401,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 290,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

HHJ={--除夕免费，秒开且免更，吊打市场96%免费脚本，80%收费辅助！！！
Re_({91,228,184,141,229,133,141,230,155,180,93,233,129,147,229,133,183,231,173,137,231,186,167,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({232,167,163,233,148,129,232,167,146,232,137,178,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,129,147,229,133,183,231,154,174,232,130,164,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({232,167,146,232,137,178,231,154,174,232,130,164,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,129,147,229,133,183,233,148,129,229,141,161,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({91,228,184,141,229,133,141,230,155,180,93,229,173,144,229,188,185,233,128,159,229,186,166,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({228,186,186,231,137,169,230,188,130,230,181,174,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,129,147,229,133,183,230,151,160,229,134,183,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({229,143,152,232,186,171,230,148,187,229,135,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({91,228,184,141,229,133,141,230,155,180,93,232,167,163,233,148,129,230,168,161,229,188,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--无
Re_({91,228,184,141,229,133,141,230,155,180,93,230,173,166,229,153,168,229,144,142,229,186,167,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({91,228,184,141,229,133,141,230,155,180,93,232,183,179,232,183,131,229,188,128,231,137,169,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({91,228,184,141,229,133,141,230,155,180,93,230,184,178,230,159,147,233,128,143,232,167,134,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({91,228,184,141,229,133,141,230,155,180,93,229,173,144,229,188,185,231,169,191,229,162,153,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({91,228,184,141,229,133,141,230,155,180,93,228,186,186,231,137,169,231,136,172,229,162,153,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--无
Re_({230,151,160,232,167,134,230,151,160,230,149,140,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,158,170,230,158,170,230,154,180,229,135,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({231,168,179,229,174,154,233,171,152,232,183,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({229,143,141,229,188,185,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({231,168,179,229,174,154,231,167,187,233,128,159,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({231,168,179,229,174,154,228,184,138,229,184,157,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({91,228,184,141,229,133,141,230,155,180,93,230,173,166,229,153,168,230,151,160,233,151,180,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({91,228,184,141,229,133,141,230,155,180,93,229,156,176,229,155,190,233,171,152,228,186,174,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({229,183,177,230,150,185,232,167,134,233,135,142,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({231,174,177,229,173,144,233,148,129,232,161,128,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({232,191,189,230,141,149,229,188,128,233,148,129,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({231,155,180,230,142,165,229,188,128,233,151,168,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,173,166,229,153,168,231,167,146,230,157,128,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({229,128,146,229,156,176,229,164,141,230,180,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({229,136,182,232,163,129,233,152,159,229,143,139,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,138,128,232,131,189,229,133,141,232,180,185,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,138,128,232,131,189,229,134,183,229,141,180,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,138,164,231,155,190,232,161,128,233,135,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({229,133,168,229,155,190,232,184,169,229,164,185,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93,10,10,45,45,45,45,45,45,45,45,45,45,231,167,146,232,181,162,229,140,186,45,45,45,45,45,45,45,45,45,45}),
Re_({91,228,184,141,229,133,141,230,155,180,93,53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({230,149,145,228,186,186,230,149,176,233,135,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,128,131,231,148,159,229,133,171,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,128,131,231,148,159,229,155,155,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({91,228,184,141,229,133,141,230,155,180,93,230,138,147,232,142,183,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),--更新
Re_({229,135,187,229,128,146,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({228,184,128,233,148,174,233,128,131,231,148,159,231,167,146,232,181,162,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({228,184,128,233,148,174,232,191,189,230,141,149,231,167,146,232,181,162,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93}),
Re_({233,152,178,233,151,170}),
Re_({233,128,128,229,135,186}),
}
function V()  
A = gg.choice(HHJ,nil,Re_({231,139,172,229,174,182}))
if A == 1 then a100() end
if A == 2 then a2() end
if A == 3 then a3() end
if A == 4 then a4() end
if A == 5 then a5() end
if A == 6 then a6() end
if A == 7 then a7() end
if A == 8 then a8() end
if A == 9 then a9() end
if A == 10 then a10() end
if A == 11 then a11() end
if A == 12 then a12() end
if A == 13 then a13() end
if A == 14 then a14() end
if A == 15 then a15() end
if A == 16 then a16() end
if A == 17 then a17() end
if A == 18 then a18() end
if A == 19 then a19() end
if A == 20 then a20() end
if A == 21 then a21() end
if A == 22 then a22() end
if A == 23 then a23() end
if A == 24 then a24() end
if A == 25 then a25() end
if A == 26 then a26() end
if A == 27 then a27() end
if A == 28 then a28() end
if A == 29 then a29() end
if A == 30 then a30() end
if A == 31 then a31() end
if A == 32 then a32() end
if A == 33 then a33() end
if A == 34 then a34() end
if A == 35 then a35() end
if A == 36 then a36() end
if A == 37 then a37() end
if A == 38 then a38() end
if A == 39 then a39() end
if A == 40 then a40() end
if A == 41 then a41() end
if A == 42 then a42() end
if A == 43 then a43() end
if A == 44 then a44() end
if A == 45 then a45() end
if A == 46 then os.exit() end
XGCK =-2
end

function a45()
fastsearch({{842084353,4,16},{909456435,4,4},{1094268983,8,4}},{{9999,0,4,false}}) end

HH44=true--已完成
HH35=true--已完成
HH36=true--已完成
HH38=true--已完成
HH41=true--已完成
HH42=true--已完成
function a44()
if HH44 == true then
fastsearch--5:20
({
{-352309290,4,16384},
{-382908368,-100,4},
{-494030840,-96,4}
},
{{-482081888,-100,4},
{-516948194,-96,4,false}})
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
fastsearch--伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
fastsearch--击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})
fastsearch--抓获50人
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4},
{-516948194,80,4,false}})
HHJ[44]=Re_({228,184,128,233,148,174,232,191,189,230,141,149,231,167,146,232,181,162,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[41]=Re_({230,138,147,232,142,183,53,48,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[42]=Re_({229,135,187,229,128,146,53,48,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH44=false
HH35=false--已完成
HH36=false--已完成
HH38=false--已完成
HH41=false--已完成
HH42=false--已完成
else
fastsearch--5:20
({
{-352309290,4,16384},
{-482081888,-100,4},
{-516948194,-96,4}
},
{{-382908368,-100,4},
{-494030840,-96,4,false}})
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
fastsearch--伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
fastsearch--抓获50人
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4},
{-494030820,80,4,false}})
fastsearch--击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
HHJ[44]=Re_({228,184,128,233,148,174,232,191,189,230,141,149,231,167,146,232,181,162,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[41]=Re_({230,138,147,232,142,183,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[42]=Re_({229,135,187,229,128,146,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH44=true--已完成
HH35=true--已完成
HH36=true--已完成
HH38=true--已完成
HH41=true--已完成
HH42=true--已完成
end end

HH43=true--已完成
HH35=true--已完成
HH36=true--已完成
HH37=true--已完成
HH38=true--已完成
function a43()
if HH43 == true then
fastsearch--5:20
({
{-352309290,4,16384},
{-382908368,-100,4},
{-494030840,-96,4}
},
{{-482081888,-100,4},
{-516948194,-96,4,false}})
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
fastsearch--救人
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049800,1112,4},
{-516948194,1116,4,false}})
fastsearch--伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
HHJ[43]=Re_({228,184,128,233,148,174,233,128,131,231,148,159,231,167,146,232,181,162,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[37]=Re_({230,149,145,228,186,186,230,149,176,233,135,143,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH43=false
HH35=false--已完成
HH36=false--已完成
HH37=false--已完成
HH38=false--已完成
else
fastsearch--5:20
({
{-352309290,4,16384},
{-482081888,-100,4},
{-516948194,-96,4}
},
{{-382908368,-100,4},
{-494030840,-96,4,false}})
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
fastsearch--救人
({
{-128.31251525879,16,16384},
{-476049800,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4},
{-494030840,1116,4,false}})
fastsearch--伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
HHJ[43]=Re_({228,184,128,233,148,174,233,128,131,231,148,159,231,167,146,232,181,162,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[37]=Re_({230,149,145,228,186,186,230,149,176,233,135,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH43=true
HH35=true--已完成
HH36=true--已完成
HH37=true--已完成
HH38=true--已完成
end end

HH42=true--已完成
function a42()
if HH42 == true then
fastsearch--击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})
HHJ[42]=Re_({229,135,187,229,128,146,53,48,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH42=false
else
fastsearch--击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
HHJ[42]=Re_({229,135,187,229,128,146,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH42=true
end end

HH41=true--已完成
function a41()
if HH41 == true then
fastsearch--抓获50人
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4},
{-516948194,80,4,false}})
HHJ[41]=Re_({230,138,147,232,142,183,53,48,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH41=false
else
fastsearch--抓获50人
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4},
{-494030820,80,4,false}})
HHJ[41]=Re_({230,138,147,232,142,183,53,48,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH41=true
end end

HH40=true--已完成
function a40()
if HH40 == true then
fastsearch--逃脱人数4人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539260,208,4},
{-516948194,212,4,false}})
HHJ[40]=Re_({233,128,131,231,148,159,229,155,155,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH40=false
else
fastsearch--逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4},
{-494030820,212,4,false}})
HHJ[40]=Re_({233,128,131,231,148,159,229,155,155,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH40=true
end end

HH39=true--已完成
function a39()
if HH39 == true then
fastsearch--逃脱人数8人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539256,208,4},
{-516948194,212,4,false}})
HHJ[39]=Re_({233,128,131,231,148,159,229,133,171,228,186,186,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH39=false
else
fastsearch--逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4},
{-494030820,212,4,false}})
HHJ[39]=Re_({233,128,131,231,148,159,229,133,171,228,186,186,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH39=true
end end

HH38=true--已完成
function a38()
if HH38 == true then
fastsearch--伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH38=false
else
fastsearch--伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
HHJ[38]=Re_({228,184,170,228,186,186,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH38=true
end end

HH37=true--已完成
function a37()
if HH37 == true then
fastsearch--救人
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049800,1112,4},
{-516948194,1116,4,false}})
HHJ[37]=Re_({230,149,145,228,186,186,230,149,176,233,135,143,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH37=false
else
fastsearch--救人
({
{-128.31251525879,16,16384},
{-476049800,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4},
{-494030840,1116,4,false}})
HHJ[37]=Re_({230,149,145,228,186,186,230,149,176,233,135,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH37=true
end end

HH36=true--已完成
function a36()
if HH36 == true then
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH36=false
else
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
HHJ[36]=Re_({229,188,186,229,136,182,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH36=true
end end

HH35=true--已完成
function a35()
if HH35 == true then
fastsearch--5:20
({
{-352309290,4,16384},
{-382908368,-100,4},
{-494030840,-96,4}
},
{{-482081888,-100,4},
{-516948194,-96,4,false}})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH35=false
else
fastsearch--5:20
({
{-352309290,4,16384},
{-482081888,-100,4},
{-516948194,-96,4}
},
{{-382908368,-100,4},
{-494030840,-96,4,false}})
HHJ[35]=Re_({53,58,50,49,231,187,147,231,174,151,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH35=true
end end


HH34=true--已完成
function a34()
if HH34 == true then
fastsearch
({
{128.31251525879,16,16384},
{-382907280,-400,4},
{167772163,-452,4}
},
{
{-516948194,-400,4,false}})
HHJ[34]=Re_({229,133,168,229,155,190,232,184,169,229,164,185,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93,10,10,45,45,45,45,45,45,45,45,45,45,231,167,146,232,181,162,229,140,186,45,45,45,45,45,45,45,45,45,45})
HH34=false
else
fastsearch
({{128.31251525879,16,16384},
{-516948194,-400,4},
{167772163,-452,4}
},
{
{-382907280,-400,4,false}})
HHJ[34]=Re_({229,133,168,229,155,190,232,184,169,229,164,185,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93,10,10,45,45,45,45,45,45,45,45,45,45,231,167,146,232,181,162,229,140,186,45,45,45,45,45,45,45,45,45,45})
HH34=true
end end

HH33=true--已完成
function a33()
if HH33 == true then
fastsearch
({
{0.30000001192,16,16384},
{-1023406079,-660,4}
},
{
{110.5,0,16,false}})
HHJ[33]=Re_({230,138,164,231,155,190,232,161,128,233,135,143,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH33=false
else
fastsearch
({
{110.5,16,16384},
},
{
{0.30000001192,0,16,false}})
HHJ[33]=Re_({230,138,164,231,155,190,232,161,128,233,135,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH33=true
end end

HH32=true--已完成
function a32()
if HH32 == true then
fastsearch
({
{-0.00048828369,16,16384},
{-382907280,-360,4},
{-494030832,-356,4},
},
{{-476053503,-360,4},
{-516948194,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
HHJ[32]=Re_({230,138,128,232,131,189,229,134,183,229,141,180,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH32=false
else
fastsearch
({
{-0.00048828369,16,16384},
{-476053503,-360,4},
{-516948194,-356,4},
},
{{-382907280,-360,4},
{-494030832,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-476053503,-536,4},
{-516948194,-532,4},
},
{{-382908368,308,4},
{-494030840,312,4},
{-382908368,1652,4},
{-494030840,1656,4},
{-382907280,2344,4},
{-494030832,2348,4},
{-382908368,-536,4},
{-494030840,-532,4,false}})
HHJ[32]=Re_({230,138,128,232,131,189,229,134,183,229,141,180,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH32=true
end end

HH31=true--已完成
function a31()
if HH31 == true then
fastsearch
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false}})
HHJ[31]=Re_({230,138,128,232,131,189,229,133,141,232,180,185,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH31=false
else
fastsearch
({
{0.00048828154,16,16384},
{-476053504,-576,4},
{-516948194,-572,4},
{167772163,-648,4}
},
{{-382906384,3328,4},
{-494030820,3332,4},
{-382908368,-576,4},
{-494030840,-572,4,false}})
HHJ[31]=Re_({230,138,128,232,131,189,229,133,141,232,180,185,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH31=true
end end

HH30=true--已完成
function a30()
if HH30 == true then
fastsearch--杀队友
({
{104,4,16384},
{104,4,4},
{-382908368,-1564,4}
},
{
{-516948194,-1564,4,false}})
HHJ[30]=Re_({229,136,182,232,163,129,233,152,159,229,143,139,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH30=false
else
fastsearch--杀队友
({
{104,4,16384},
{104,4,4},
{-516948194,-1564,4}
},
{
{-382908368,-1564,4,false}})
HHJ[30]=Re_({229,136,182,232,163,129,233,152,159,229,143,139,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH30=true
end end

HH29=true--已完成
function a29()
if HH29 == true then
fastsearch
({
{-388161.5,16,16384},
{-382907280,-1048,4},
},
{{-516948194,-1044,4},
{-476053504,-1048,4,false}})
HHJ[29]=Re_({229,128,146,229,156,176,229,164,141,230,180,187,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH29=false
else
fastsearch
({
{-388161.5,16,16384},
{-476053504,-1048,4},
},
{{-494030832,-1044,4},
{-382907280,-1048,4,false}})
HHJ[29]=Re_({229,128,146,229,156,176,229,164,141,230,180,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH29=true
end end

HH28=true--已完成
function a28()
if HH28 == true then
fastsearch
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
HHJ[28]=Re_({230,173,166,229,153,168,231,167,146,230,157,128,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH28=false
else
fastsearch
({
{0.00048828148,16,16384},
{-476052718,1464,4},
{-516948194,1468,4},
{167772164,1420,4}
},
{{-494030840,1468,4},
{-382908368,1464,4,false}})
HHJ[28]=Re_({230,173,166,229,153,168,231,167,146,230,157,128,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH28=true
end end

HH27=true--已完成
function a27()
if HH27 == true then
fastsearch
({
{0.00048828166,16,16384},
{-382908368,-988,4},
{0,-352,4}
},
{{-476053503,-988,4},
{-516948194,-984,4,false}})
HHJ[27]=Re_({231,155,180,230,142,165,229,188,128,233,151,168,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH27=false
else
fastsearch
({
{0.00048828166,16,16384},
{-476053503,-988,4},
{0,-352,4}
},
{{-494030840,-984,4},
{-382908368,-988,4,false}})
HHJ[27]=Re_({231,155,180,230,142,165,229,188,128,233,151,168,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH27=true
end end

HH26=true--已完成
function a26()
if HH26 == true then
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
HHJ[26]=Re_({232,191,189,230,141,149,229,188,128,233,148,129,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH26=false
else
fastsearch
({
{-0.00195311918,16,16384},
{-494030840,-544,4},
{-516948194,-548,4}
},
{
{-382908368,-548,4,false}})
HHJ[26]=Re_({232,191,189,230,141,149,229,188,128,233,148,129,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH26=true
end end

HH25=true--已完成
function a25()
if HH25 == true then
fastsearch
({
{0.00048828148,16,16384},
{-382907280,-1924,4},
{0,-2228,4}
},
{
{-516948194,-1924,4,false}})
HHJ[25]=Re_({231,174,177,229,173,144,233,148,129,232,161,128,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH25=false
else
fastsearch
({
{0.00048828148,16,16384},
{-516948194,-1924,4},
{0,-2228,4}
},
{
{-382907280,-1924,4,false}})
HHJ[25]=Re_({231,174,177,229,173,144,233,148,129,232,161,128,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH25=true
end end

HH24=true
function a24()
if HH24 == true then
fastsearch
({
{-1046462464,4,16384},
{-382906896,188,4}
},
{
{-516948194,188,4,false}})
HHJ[24]=Re_({229,183,177,230,150,185,232,167,134,233,135,142,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH24=false
else
fastsearch
({
{-1046462464,4,16384},
{-516948194,188,4}
},
{
{-382906896,188,4,false}})
HHJ[24]=Re_({229,183,177,230,150,185,232,167,134,233,135,142,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH24=true
end end

HH23=true
function a23()
if HH23 == true then
fastsearch
({
{-494665608,4,16384},
{-382908368,52,4},
},
{
{-516948194,52,4,false}})
HHJ[23]=Re_({229,156,176,229,155,190,233,171,152,228,186,174,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH23=false
else
fastsearch
({
{-494665608,4,16384},
{-516948194,52,4},
},
{
{-382908368,52,4,false}})
HHJ[23]=Re_({229,156,176,229,155,190,233,171,152,228,186,174,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH23=true
end end

HH22=true
function a22()
if HH22 == true then
fastsearch
({
{-439090943,4,16384},
{167772163,96,4},
{-382908368,20,4},
{-494030840,24,4}
},
{{-476053504,20,4},
{-516948194,24,4,false}})

fastsearch
({
{-335554909,4,16384},
{-382908368,56,4},
{-494030840,60,4}
},
{{-476053504,56,4},
{-516948194,60,4,false}})
HHJ[22]=Re_({230,173,166,229,153,168,230,151,160,233,151,180,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH22=false
else
fastsearch
({
{-439090943,4,16384},
{167772163,96,4},
{-476053504,20,4},
{-516948194,24,4}
},
{{-382908368,20,4},
{-494030840,24,4,false}})

fastsearch
({
{-335554909,4,16384},
{-476053504,56,4},
{-516948194,60,4}
},
{{-382908368,56,4},
{-494030840,60,4,false}})
HHJ[22]=Re_({230,173,166,229,153,168,230,151,160,233,151,180,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH22=true
end end

HH21=true
function a21()
if HH21 == true then
fastsearch
({
{1106247680,4,16384},
{5,4,16},
{40,12,16},
{-382908368,-1164,4}
},
{{-486539220,-1164,4},
{-301987312,-1160,4},
{-289928512,-1156,4},
{-300938736,-1152,4},
{-516948194,-1148,4,false}})
HHJ[21]=Re_({228,184,138,229,184,157,232,167,134,232,167,146,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH21=false
else
fastsearch
({
{1106247680,4,16384},
{5,4,16},
{40,12,16},
{-486539220,-1164,4}
},
{{-382908368,-1164,4},
{-494030840,-1160,4},
{-442544040,-1156,4},
{-509591552,-1152,4},
{-527478779,-1148,4,false}})
HHJ[21]=Re_({228,184,138,229,184,157,232,167,134,232,167,146,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH21=true
end end

HH20=true
function a20()
if HH20 == true then
fastsearch
({
{-444251988,4,16384},
{-382908368,20,4},
{-494030840,24,4},
{-442543992,28,4},
},
{{-476052418,20,4},
{-516948194,24,4,false}})
HHJ[20]=Re_({231,168,179,229,174,154,231,167,187,233,128,159,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH20=false
else
fastsearch
({
{-444251988,4,16384},
{-476052418,20,4},
{-516948194,24,4},
{-442543992,28,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
HHJ[20]=Re_({231,168,179,229,174,154,231,167,187,233,128,159,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH20=true
end end

HH19=true
function a19()
if HH19 == true then
fastsearch
({
{-128.00001525879,16,16384},
{-382908368,1260,4}
},
{{-482082800,1260,4},
{-516948194,1264,4,false}})
HHJ[19]=Re_({229,143,141,229,188,185,228,188,164,229,174,179,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH19=false
else
fastsearch
({
{-128.00001525879,16,16384},
{-482082800,1260,4}
},
{{-382908368,1260,4},
{-494030840,1264,4,false}})
HHJ[19]=Re_({229,143,141,229,188,185,228,188,164,229,174,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH19=true
end end

HH18=true
function a18()
if HH18 == true then
fastsearch
({
{0.00048828154,16,16384},
{-382908368,2228,4},
{-494030840,2232,4},
{167772164,2300,4}
},
{{-476052416,2228,4},
{-516948194,2232,4,false}})
HHJ[18]=Re_({231,168,179,229,174,154,233,171,152,232,183,179,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH18=false
else
fastsearch
({
{0.00048828154,16,16384},
{-476052416,2228,4},
{-516948194,2232,4},
{167772164,2300,4}
},
{{-382908368,2228,4},
{-494030840,2232,4,false}})
HHJ[18]=Re_({231,168,179,229,174,154,233,171,152,232,183,179,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH18=true
end end

HH17=true
function a17()
if HH17 == true then
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
HHJ[17]=Re_({230,158,170,230,158,170,230,154,180,229,135,187,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH17=false
else
fastsearch
({
{8388578.5,16,16384},
{1,336,16},
},
{
{0,336,16,false}})
HHJ[17]=Re_({230,158,170,230,158,170,230,154,180,229,135,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH17=true
end end

HH16=true
function a16()
if HH16 == true then
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
HHJ[16]=Re_({230,151,160,232,167,134,230,151,160,230,149,140,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH16=false
else
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
HHJ[16]=Re_({230,151,160,232,167,134,230,151,160,230,149,140,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH16=true
end end

HH9=true
function a9()
if HH9 == true then
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
HHJ[9]=Re_({229,143,152,232,186,171,230,148,187,229,135,187,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH9=false
else
fastsearch
({{0.00100000005,16,16384},
{-516948194,184,4}
},
{
{-382907280,184,4,false}})
HHJ[9]=Re_({229,143,152,232,186,171,230,148,187,229,135,187,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH9=true
end end


HH2=true--已完成
function a2()
if HH2 == true then
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
HHJ[2]=Re_({232,167,163,233,148,129,232,167,146,232,137,178,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH2=false
else
fastsearch
({{-0.00048828166,16,16384},
{-516948194,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-382906384,-380,4,false}})
HHJ[2]=Re_({232,167,163,233,148,129,232,167,146,232,137,178,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH2=true
end end


HH3=true--已完成
function a3()
if HH3 == true then
fastsearch
({{-0.00048828282,16,16384},
{-382908176,-828,4},
{-494030832,-824,4},
},
{{-516948194,-828,4,false}})
HHJ[3]=Re_({233,129,147,229,133,183,231,154,174,232,130,164,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH3=false
else
fastsearch
({{-0.00048828282,16,16384},
{-516948194,-828,4},
{-494030832,-824,4},
},
{
{-382908176,-828,4,false}})
HHJ[3]=Re_({233,129,147,229,133,183,231,154,174,232,130,164,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH3=true
end end


HH4=true--已完成
function a4()
if HH4 == true then
fastsearch
({{-0.00195311813,16,16384},
{-382906384,-692,4},
{-494030820,-688,4},
},
{
{-516948194,-692,4,false}})
HHJ[4]=Re_({232,167,146,232,137,178,231,154,174,232,130,164,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH4=false
else
fastsearch
({{-0.00195311813,16,16384},
{-516948194,-692,4},
{-494030820,-688,4},
},
{
{-382906384,-692,4,false}})
HHJ[4]=Re_({232,167,146,232,137,178,231,154,174,232,130,164,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH4=true
end end




HH5=true--已完成
function a5()
if HH5 == true then
fastsearch
({{0.00048828154,16,16384},
{-382907280,-524,4},
{-494030832,-520,4},
{167772164,-444,4}
},
{
{-516948194,-524,4,false}})
HHJ[5]=Re_({233,129,147,229,133,183,233,148,129,229,141,161,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH5=false
else
fastsearch
({{0.00048828154,16,16384},
{-516948194,-524,4},
{-494030832,-520,4},
{167772164,-444,4}
},
{
{-382907280,-524,4,false}})
HHJ[5]=Re_({233,129,147,229,133,183,233,148,129,229,141,161,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH5=true
end end





HH6=true
function a6()
if HH6 == true then
fastsearch
({
{-352321541,4,16384},
{0,4,16},
},
{
{10.5,4,16,false}})
HHJ[6]=Re_({229,173,144,229,188,185,233,128,159,229,186,166,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH6=false
else
fastsearch
({{10.5,16,16384}},
{
{0,0,16,false}})
HHJ[6]=Re_({229,173,144,229,188,185,233,128,159,229,186,166,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH6=true
end end






HH7=true--已完成
function a7()
if HH7 == true then
fastsearch
({
{320.25,16,16384},
{0,104,16}
},
{
{1,104,16,false}})
HHJ[7]=Re_({228,186,186,231,137,169,230,188,130,230,181,174,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH7=false
else
fastsearch
({
{320.25,16,16384},
{1,104,16}
},
{
{0,104,16,false}})
HHJ[7]=Re_({228,186,186,231,137,169,230,188,130,230,181,174,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH7=true
end end




HH8=true--已完成
function a8()
if HH8 == true then
fastsearch
({{-0.00195312256,16,16384},
{-382906896,276,4},
{-494030824,280,4}
},
{
{-516948194,276,4,false}})
HHJ[8]=Re_({233,129,147,229,133,183,230,151,160,229,134,183,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH8=false
else
fastsearch
({{-0.00195312256,16,16384},
{-516948194,276,4},
{-494030824,280,4}
},
{
{-382906896,276,4,false}})
HHJ[8]=Re_({233,129,147,229,133,183,230,151,160,229,134,183,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH8=true
end end

HH1=true
function a100()
if HH1 == true then
fastsearch
({
{318771201,4,16384},
{-390230928,16,4},
{-382906896,56,4},
},
{
{-516948194,56,4,false}})
HHJ[1]=Re_({233,129,147,229,133,183,231,173,137,231,186,167,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH1=false
else--0x11F8C14
fastsearch
({
{318771201,4,16384},
{-390230928,16,4},
{-516948194,56,4},
},
{
{-382906896,56,4,false}})
HHJ[1]=Re_({233,129,147,229,133,183,231,173,137,231,186,167,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH1=true
end end

HH10=true--已完成
function a10()
if HH10 == true then
fastsearch
({{116,4,16384},
{-382908176,-1992,4},
{-494030832,-1988,4},
},
{{-516948194,-1992,4,false}})
HHJ[10]=Re_({232,167,163,233,148,129,230,168,161,229,188,143,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH10=false
else
fastsearch
({{116,4,16384},
{-516948194,-1992,4},
{-494030832,-1988,4},
},
{{-382908176,-1992,4,false}})
HHJ[10]=Re_({232,167,163,233,148,129,230,168,161,229,188,143,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH10=true
end end

HH11=true
function a11()
if HH11 == true then
fastsearch
({
{0.00100000005,16,16384},
{-352321563,-4,4},
},
{
{1.6875,0,16,false}})
HHJ[11]=Re_({230,173,166,229,153,168,229,144,142,229,186,167,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH11=false
else
fastsearch
({
{1.6875,16,16384},
},
{
{0.00100000005,0,16,false}})
HHJ[11]=Re_({230,173,166,229,153,168,229,144,142,229,186,167,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH11=true
end end

HH12=true--已完成
function a12()
if HH12 == true then
fastsearch
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})
HHJ[12]=Re_({232,183,179,232,183,131,229,188,128,231,137,169,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH12=false
else
fastsearch
({
{-444186608,4,16384},
{-516948194,28,4},
{167772164,192,4}
},
{
{-382906384,28,4,false}})
HHJ[12]=Re_({232,183,179,232,183,131,229,188,128,231,137,169,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH12=true
end end

HH13=true--已完成
function a13()
if HH13 == true then
fastsearch
({
{-352321779,4,16384},
{0,52,16},
},
{
{1,52,16,false}})
HHJ[13]=Re_({230,184,178,230,159,147,233,128,143,232,167,134,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH13=false
else--0x11F8C14
fastsearch
({
{-352321779,4,16384},
{1,52,16},
},
{
{0,52,16,false}})
HHJ[13]=Re_({230,184,178,230,159,147,233,128,143,232,167,134,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH13=true
end end

HH14=true
function a14()
if HH14 == true then
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
HHJ[14]=Re_({229,173,144,229,188,185,231,169,191,229,162,153,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH14=false
else--0x11F8C14
fastsearch
({
{-442563748,4,16384},
{-516948194,-60,4},
{-390230032,-108,4}
},
{
{-382906384,-60,4,false}})
HHJ[14]=Re_({229,173,144,229,188,185,231,169,191,229,162,153,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH14=true
end end

HH15=true
function a15()
if HH15 == true then
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
HHJ[15]=Re_({228,186,186,231,137,169,231,136,172,229,162,153,91,231,138,182,230,128,129,58,231,148,159,230,149,136,228,184,173,93})
HH15=false
else--0x11F8C14
fastsearch({{-321.125,16,16384},{-1,140,16}},{{0.949999988079071,140,16,false}})
HHJ[15]=Re_({228,186,186,231,137,169,231,136,172,229,162,153,91,231,138,182,230,128,129,58,229,133,179,233,151,173,93})
HH15=true
end end

function h5()
menu1 = gg.multiChoice({
	 Re_({230,153,174,233,128,154,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128}),
	 Re_({231,168,128,230,156,137,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128}),
	 Re_({229,143,178,232,175,151,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then HSB1() end
if menu1[2] == true then HSB2() end
if menu1[3] == true then HSB3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function HSB1()
	 fastsearch({
     {26222, 2, 32},
     {-28646, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },Re_({230,153,174,233,128,154,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128,229,147,129,232,180,168}))
end

function HSB2()
	 fastsearch({
     {31232, 2, 32},
     {26377, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },Re_({231,168,128,230,156,137,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128,229,147,129,232,180,168}))
end

function HSB3()
	fastsearch({
     {21490, 2, 32},
     {-29737, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },Re_({229,143,178,232,175,151,233,129,147,229,133,183,230,148,185,230,152,159,232,128,128,229,147,129,232,180,168}))
end


function h4()
cy= gg.prompt({i=Re_({32,32,32,229,161,171,50,53,55,61,49,48,49,52,50,53,56,55,231,186,167,239,188,140,229,136,135,229,139,191,229,161,171,50,53,55,228,187,165,228,184,138,231,154,132,230,149,176})}, {i=Re_({57,57,57,57})})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053491,4,0xd8edec},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xd8edf0},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{cy[Re_({105})],2,0xd8edec},})
gg.toast(Re_({229,164,167,229,142,133,228,184,141,230,152,190,231,164,186}))
end

function xa()
menu1 = gg.multiChoice({
"直装一区",
"直装二区",
"返回上一页"},
nil,'CY')
if menu1 == nil then else
if menu1[1] == true then b1000() end
if menu1[2] == true then b2000() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
function b2000()
menu =gg.multiChoice({
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
 },nil,os.date"57个直装功能")
if menu == nil then else
if menu[1] == true then aaa1() end
if menu[2] == true then aaa2() end
if menu[3] == true then aaa3() end
if menu[4] == true then aaa4() end
if menu[5] == true then aaa5() end
if menu[6] == true then aaa6() end
if menu[7] == true then aaa7() end
if menu[8] == true then aaa8() end
if menu[9] == true then aaa9() end
if menu[10] == true then aaa10() end
if menu[11] == true then aaa11() end
if menu[12] == true then aaa12() end
if menu[13] == true then aaa13() end
if menu[14] == true then aaa14() end
if menu[15] == true then aaa15() end
if menu[16] == true then aaa199() end
if menu[17] == true then aaa16() end
if menu[18] == true then aaa17() end
if menu[19] == true then aaa18() end
if menu[20] == true then aaa19() end
if menu[21] == true then aaa20() end
if menu[22] == true then aaa22() end
if menu[23] == true then aaa23() end
if menu[24] == true then aaa24() end
if menu[25] == true then aaa25() end
if menu[26] == true then aaa26() end
if menu[27] == true then aaa27() end
if menu[28] == true then aaa28() end
if menu[29] == true then aaa29() end
if menu[30] == true then aaa30() end
if menu[31] == true then aaa31() end
if menu[32] == true then aaa32() end
if menu[33] == true then aaa33() end
if menu[34] == true then aaa34() end
if menu[35] == true then aaa35() end
if menu[36] == true then aaa36() end
if menu[37] == true then aaa37() end
if menu[38] == true then aaa38() end
if menu[39] == true then aaa39() end
if menu[40] == true then aaa40() end----
if menu[41] == true then aaa41() end
if menu[42] == true then aaa42() end
if menu[43] == true then aaa43() end
if menu[44] == true then aaa44() end
if menu[45] == true then aaa45() end
if menu[46] == true then aaa46() end
if menu[47] == true then aaa47() end
if menu[48] == true then aaa48() end
if menu[49] == true then aaa49() end
if menu[50] == true then aaa50() end
if menu[51] == true then aaa51() end
if menu[52] == true then aaa52() end
if menu[53] == true then aaa53() end
if menu[54] == true then aaa54() end
if menu[55] == true then aaa55() end
if menu[56] == true then aaa56() end
if menu[57] == true then aaa57() end
if menu[58] == true then Main() end
end
FX1=0
end

function aaa34()
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

function aaa32()
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

function aaa33()
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


function aaa31()
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


function aaa30()
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

function aaa29()
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


function aaa28()
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



function aaa27()
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
    
    
function aaa26()
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

function aaa25()
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

function aaa24()
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

function aaa23()
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


function aaa22()
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

function aaa199()--
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

function aaa20()--
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


function aaa19()--
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

function aaa18()--武器爆射
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

function aaa1()
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

function aaa2()
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

function aaa3()
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

function aaa4()
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

function aaa5()
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

function aaa6()
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

function aaa7()
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

function aaa8()
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

function aaa9()
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

function aaa10()
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

function aaa11()
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

function aaa12()
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

function aaa13()
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

function aaa14()
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

function aaa15()
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

function aaa16()
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

function aaa17()
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




function aaa36()
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

function aaa37()
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

function aaa38()
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

function aaa39()--酒桶一套
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

function aaa40()
	 NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end


function aaa41()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function aaa42()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function aaa43()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end


function aaa44()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end

function aaa45()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end

function aaa46()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x172d0d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x172d0d4},})
end

function aaa47()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function aaa48()
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
	 
function aaa49()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e07618+4},})
end

function aaa50()
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

function aaa51()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end


function aaa52()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5ebf8},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5eb64},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108+4},})
end


function aaa53()--杀队友
qc=gg.alert("专门制裁那些傻逼队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end

function aaa54()--子弹射程穿墙
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})
end

function aaa55()--枪枪暴击
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},})
end

function aaa56()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},})
end

function aaa57()--道具等级
nc_offset(getso("libil2cpp.so"),{{-486538744,4,0x1B3EC9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},})
end

function b1000()
  gg.toast('8.14.1')
  menu = gg.multiChoice({
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
	 "解锁🔒",
	 "观战控人",
	 "角色技能免费无冷",
	 "变身攻击",
},nil," CY自修")
if menu == nil then else    end
if menu[1] == true then T1() end
if menu[2] == true then T2() end
if menu[3] == true then T3() end
if menu[4] == true then T4() end
if menu[5] == true then T5() end
if menu[6] == true then T6() end
if menu[7] == true then T7() end
if menu[8] == true then T8() end
if menu[9] == true then T9() end
if menu[10] == true then T10() end
if menu[11] == true then T11() end
if menu[12] == true then T12() end
if menu[13] == true then T13() end
if menu[14] == true then T14() end
if menu[15] == true then T15() end
if menu[16] == true then T16() end
if menu[17] == true then T17() end
if menu[18] == true then T18() end
if menu[19] == true then T19() end
if menu[20] == true then T20() end
if menu[21] == true then T21() end
if menu[22] == true  then poia1() end
if menu[23] == true  then poia2() end
if menu[24] == true  then poia3() end
if menu[25] == true  then poia4() end
if menu[26] == true  then poia5() end
if menu[27] == true  then poia6() end
if menu[28] == true  then poia7() end
if menu[29] == true  then poia8() end
if menu[30] == true  then poia9() end
if menu[31] == true  then poia10() end
if menu[32] == true  then poia11() end
if menu[33] == true  then poia12() end
if menu[34] == true  then poia13() end
if menu[35] == true  then poia14() end
if menu[36] == true  then poia15() end
if menu[37] == true then cyyy1() end
if menu[38] == true then cyyy2() end
if menu[39] == true then cyyy3() end
if menu[40] == true then cyyy4() end
XGCK=-1
end
function cyyy4()--角色技能免费--方法名1--get_CoinCost--方法名2--CostCoin
fastsearch
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false}})

fastsearch
({
{-0.00048828369,16,16384},
{-382907280,-360,4},
{-494030832,-356,4},
},
{{-476053503,-360,4},
{-516948194,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
end
function cyyy2()--观战控人--方法名PlayerController
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20beb74},})
end
function cyyy3()
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end

function cyyy1()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x177b60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x177b610},})
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
function poia1()--子弹射程
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF43B64},})
end




function poia2()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end



	
function poia3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end





function poia4()--秒杀
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x363fa94},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x363FA98},})
end



function poia5()--无间隔
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8C},})
end


function poia6()--移动开物
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1731454},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731458},})
end



function poia7()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1F2EAC4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F2EAC8},})
end



function poia8()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1F34DFC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F34E00},})
end




function poia9()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xFE2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},})
end

function poia10()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1E07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E0761C},})
end

function poia11()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD705FC},})
end

function poia12()--改等级(目前改18)
nc_offset(getso("libil2cpp.so"),{{-476053486,4,0x1B3EC9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},})
end

function poi13()--道具全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1B5141C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B51420},})
end

function poi14()--角色全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xEA31D0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D4},})
end
function poi15()--解锁角色
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
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




function n()
menu1 = gg.multiChoice({
	 Re_({232,131,189,233,135,143,231,130,174,229,176,143,232,140,131,229,155,180}),
	 Re_({232,131,189,233,135,143,231,130,174,228,184,173,232,140,131,229,155,180}),
	 Re_({232,131,189,233,135,143,231,130,174,229,133,168,229,155,190,232,140,131,229,155,180}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then n1() end
if menu1[2] == true then n2() end
if menu1[3] == true then n3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function n1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,46,48,59,49,46,48,59,56,46,48,59,48,46,56,48,48,48,48,48,48,49,49,57,50,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,46,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,131,189,233,135,143,231,130,174,229,176,143,232,140,131,229,155,180}))
	 gg.clearResults()
end

function n2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,46,48,59,49,46,48,59,56,46,48,59,48,46,56,48,48,48,48,48,48,49,49,57,50,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({54}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,131,189,233,135,143,231,130,174,228,184,173,232,140,131,229,155,180}))
	 gg.clearResults()
end

function n3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({53,46,48,59,49,46,48,59,56,46,48,59,48,46,56,48,48,48,48,48,48,49,49,57,50,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,53,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,131,189,233,135,143,231,130,174,229,133,168,229,155,190,232,140,131,229,155,180}))
	 gg.clearResults()
end



function c()
menu1 = gg.multiChoice({
	 Re_({232,191,171,229,135,187,231,130,174,231,136,134,231,130,184,232,140,131,229,155,180}),
	 Re_({232,191,171,229,135,187,231,130,174,229,133,168,229,155,190,231,136,134,231,130,184,232,140,131,229,155,180}),
	 Re_({232,191,171,229,135,187,231,130,174,229,176,143,233,135,138,230,148,190,232,140,131,229,155,180}),
	 Re_({232,191,171,229,135,187,231,130,174,233,135,138,230,148,190,232,140,131,229,155,180}),
	 Re_({}),
	 Re_({232,191,171,229,135,187,231,130,174,232,182,133,229,164,167,232,140,131,229,155,180}),
	 Re_({232,191,171,229,135,187,231,130,174,228,184,128,231,186,167,56,56,56,56,232,191,158,229,143,145}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then w1() end
if menu1[2] == true then w2() end
if menu1[3] == true then w3() end
if menu1[4] == true then w4() end
if menu1[5] == true then w5() end
if menu1[6] == true then w6() end
if menu1[7] == true then w7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function w1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,52,48,48,48,48,48,48,48,53,57,54,59,48,46,49,53,48,48,48,48,48,48,53,57,54,59,50,48,46,48,59,50,46,48,59,48,46,50,48,48,48,48,48,48,48,50,57,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({50,46,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,229,190,174,232,140,131,229,155,180}))
	 gg.clearResults()
end

function w2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,52,48,48,48,48,48,48,48,53,57,54,59,48,46,49,53,48,48,48,48,48,48,53,57,54,59,50,48,46,48,59,50,46,48,59,48,46,50,48,48,48,48,48,48,48,50,57,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,53,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,229,133,168,229,155,190}))
	 gg.clearResults()
end

function w3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,46,48,59,48,46,48,48,57,57,57,57,57,57,57,55,56,59,48,46,48,53,48,48,48,48,48,48,48,55,53,59,51,46,53,56,55,51,50,52,48,55,101,45,52,51,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,229,176,143,233,135,138,230,148,190,232,183,157,231,166,187}))
	 gg.clearResults()
end

function w4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,46,48,59,48,46,48,48,57,57,57,57,57,57,57,55,56,59,48,46,48,53,48,48,48,48,48,48,48,55,53,59,51,46,53,56,55,51,50,52,48,55,101,45,52,51,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({51,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,233,135,138,230,148,190,232,183,157,231,166,187}))
	 gg.clearResults()
end


function HS545()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,52,48,48,48,48,48,48,48,53,57,54,59,48,46,49,53,48,48,48,48,48,48,53,57,54,59,50,48,46,48,59,50,46,48,59,48,46,50,48,48,48,48,48,48,48,50,57,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({50,48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,229,164,167,232,140,131,229,155,180}))
	 gg.clearResults()
end
function HS546()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,44,49,50,48,44,50,55,50,44,51,56,52,59,50,59,49,59,49,44,48,54,54,44,49,57,50,44,48,55,55,59,49,44,48,55,53,44,56,51,56,44,57,55,54,59,49,44,48,53,54,44,57,54,52,44,54,48,56,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({56,56,56,56,56}), gg.TYPE_DWORD)
	 gg.toast(Re_({232,191,171,229,135,187,231,130,174,228,184,128,231,186,167,56,56,56,56,56,232,191,158,229,143,145}))
	 gg.clearResults()
end

function cnmd()
menu1 = gg.multiChoice({
Re_({228,188,164,229,174,179}),
Re_({232,140,131,229,155,180}),
Re_({98,117,102,102}),
Re_({120,97,229,133,168,229,177,143,232,140,131,229,155,180}),
Re_({229,133,168,228,186,186,98,117,102,102}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then cnmd1() end
if menu1[2] == true then cnmd2() end
if menu1[3] == true then cnmd3() end
if menu1[4] == true then cnmd4() end
if menu1[5] == true then cnmd5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end
function cnmd1()
a=gg.prompt({Re_({228,188,164,229,174,179})})
fastsearch({{1088421888,32,32},{1008981770,-4,4},{1106247680,24,4}},{{a[1],0x9C,16,false}},Re_({233,133,146,230,161,182,228,188,164,229,174,179}))
end
function cnmd2()
a=gg.prompt({Re_({232,140,131,229,155,180})})
fastsearch({{1088421888,32,32},{1008981770,-4,4},{1106247680,24,4}},{{a[1],20,16,false}},Re_({233,133,146,230,161,182,232,140,131,229,155,180}))
end
function cnmd3()
a=gg.prompt({Re_({98,117,102,102})})
fastsearch({{1088421888,32,32},{1008981770,-4,4},{1106247680,24,4}},{{a[1],160,4,false}},Re_({233,133,146,230,161,182,98,117,102,102}))
end
function cnmd4()
if gg.alert(Re_({229,188,128,229,133,179}),Re_({229,188,128}),Re_({229,133,179})) ==1 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x19b165c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x19b1658},})
else
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-382907280,4,0x19b1658},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-494030852,4,0x19b165c},})
end
end
function cnmd5()
fastsearch({{63549988, 4, 16384}, {-382907280, 4, 4}, {-494030832, 8, 4},
{-442539904, 12, 4}
},
{{-476053503, 4, 4, false}, {-516948194, 8, 4, false}
})
end

function cnm()
menu1 = gg.multiChoice({
Re_({233,148,129,229,173,144,229,188,185}),
Re_({230,151,160,233,151,180,233,154,148}),
Re_({230,151,160,229,144,142,229,186,167}),
Re_({97,229,134,133,229,173,152,230,151,160,233,151,180,233,154,148}),
Re_({230,140,135,233,146,136,230,151,160,233,151,180,233,154,148}),
"武器功能2",
"武器功能3",
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then h6() end
if menu1[7] == true then h7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end
function h6()
UI = " h6"
local menu = gg.multiChoice({
"武器间隔[局内]",
"武器间隔[备用]",
"锁定子弹[全局]",
"无后坐力[全局]",
"无视护盾[全局]",
"返回",
}, nil, "武器功能1 那个武器间隔备用遇到能量剑会卡屏 用不了第一个的时候才用第二个")
if menu then
for i in pairs(menu) do
_ENV[({"dah1","dah2","dah3","dah4","dah5","HOME",})[i]]()
  end
 end 
end
function dah1()
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

function dah2()
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"输入功能名称")end

function dah3()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
end
  
function dah4()
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
end

function dah5()
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

function h7()
UI = "h7"
local menu = gg.multiChoice({
"迫击炮射程",--1
"迫击炮范围",--2
"能量剑前座",--3
"幻锋标范围",--4
"蹦蹦枪射程",--5
"迫击炮秒落",--6
"能量炮范围",--7
"全武器穿墙",--8
"全武器射程",--9
"全武器秒杀",--10
"返回",
}, nil, "武器功能2")
if menu then
for i in pairs(menu) do
_ENV[({"ddg1","ddg2","ddg3","ddg4","ddg5","ddg6","ddg7","ddg8","ddg9","ddg10","HOME",})[i]]()
  end
 end 
end

function ddg1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6.0;0.00999999978;0.05000000075;3.58732407e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("迫击炮释放范围")
	 gg.clearResults()
end

function ddg2()
fastsearch({{99.0, 16, 32}, {2.0, -36, 16},{2.5,12,16}}, {{6, -36, 16,false}})
end

function ddg3()
a=gg.prompt({"全网首发能量剑距离"})
fastsearch({
{66,16,32},
{2.2,48,16}},
{{a[0],48,16, false}})
gg.toast("能量剑距离修改为"..a[0])
end

function ddg4()
fastsearch({{1.25,16,32},{2.5,4,16}},{{5,4,16,false}})
fastsearch({{0.75,16,32},{1.5,4,16}},{{5,4,16,false}})
end

function ddg5()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
xh=gg.prompt({"输入射程"},{[1]=""})
xtnb({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{xh[1],0,16,false}},16,32,"蹦蹦枪射程")
end
function ddg6()
qmnb = {
{["memory"] = 32},
{["name"] = "迫击炮秒落地"},
{["value"] = 99.0, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = -36, ["type"] = 16},
{["lv"] = 0.20000000298023224,["offset"] =-32, ["type"] = 16},
{["lv"] = 0.4000000059604645,["offset"] =-24, ["type"] = 16},
{["lv"] = 0.15000000596046448,["offset"] =-20, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-16, ["type"] = 16},
{["lv"] = 0.8500000238418579,["offset"] =-12, ["type"] = 16},
{["lv"] = 2.5,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.35, ["offset"] = -16, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function ddg7()
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{1500,4,16, false}})
end

function ddg8()
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
end

function ddg9()
fastsearch({{1061997773,4,32},{1073741824,-4,4},{1088421888,-12,4}},{{1176255488,-8,4,false}})
end

function ddg10()
  qc = gg.alert("武器秒杀", "开启", "关闭")
  if qc == 1 then
    fastsearch({
      {
        4.8828148E-4,
        16,
        16384
      },
      {
        -382908368,
        1464,
        4
      },
      {
        -494030840,
        1468,
        4
      },
      {
        167772164,
        1420,
        4
      }
    }, {
      {
        -516948194,
        1468,
        4
      },
      {
        -476052718,
        1464,
        4,
        false
      }
    })
  end
  if qc == 2 then
    fastsearch({
      {
        4.8828148E-4,
        16,
        16384
      },
      {
        -476052718,
        1464,
        4
      },
      {
        -516948194,
        1468,
        4
      },
      {
        167772164,
        1420,
        4
      }
    }, {
      {
        -494030840,
        1468,
        4
      },
      {
        -382908368,
        1464,
        4,
        false
      }
    })
  end
end

function h5()
fastsearch({{4629700416936869888,32,32},{4574216071979991040,4, 32}},{{0,0,16,true}})
end

function h4()
local t = {Re_({108,105,98,105,108,50,99,112,112,46,115,111}), Re_({67,100})}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function h1()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
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
tp = gg.alert(Re_({230,151,160,229,144,142}),Re_({229,188,128,229,144,175}),Re_({229,133,179,233,151,173}))
if tp==1 then
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{1,16,0xEFB2A0},})
end
if tp==2 then

nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{0.001,16,0xEFB2A0},})
end
end
function FW()
UI = Re_({75})
local menu = gg.multiChoice({
Re_({233,148,129,229,174,154,233,129,147,229,133,183,91,229,164,167,229,142,133,93}),
Re_({233,129,147,229,133,183,229,134,183,229,141,180,91,229,164,167,229,142,133,93}),
Re_({230,184,178,230,159,147,233,128,143,232,167,134,91,229,164,167,229,142,133,93}),
Re_({230,173,166,229,153,168,233,151,180,233,154,148,91,229,177,128,229,134,133,93}),
Re_({232,182,133,231,186,167,231,167,187,233,128,159,91,229,164,167,229,142,133,93}),
Re_({229,173,144,229,188,185,231,169,191,229,162,153,91,229,164,167,229,142,133,93}),
Re_({230,173,166,229,153,168,230,151,160,229,144,142,91,229,164,167,229,142,133,93}),
Re_({233,148,129,229,174,154,229,188,185,229,164,185,91,229,164,167,229,142,133,93}),
Re_({230,173,166,229,153,168,229,176,132,231,168,139,91,229,164,167,229,142,133,93}),
Re_({228,186,186,231,137,169,231,169,191,229,162,153,91,229,177,128,229,134,133,93}),
Re_({231,174,177,229,173,144,229,164,167,233,135,143,231,137,169,232,181,132,91,229,177,128,229,134,133,93}),
Re_({228,185,177,230,150,151,233,152,178,229,176,129,91,229,164,167,229,142,133,93}),
Re_({232,191,148,229,155,158,228,184,187,233,161,181}),
}, nil, Re_({228,185,177,230,150,151,231,168,179,229,174,154,229,138,159,232,131,189,10,229,143,175,229,133,168,229,188,128}))
if menu then
for i in pairs(menu) do
_ENV[({Re_({118,49}),Re_({118,50}),Re_({118,51}),Re_({118,52}),Re_({118,53}),Re_({118,54}),Re_({118,55}),Re_({118,56}),Re_({118,57}),Re_({118,49,48}),Re_({118,49,49}),Re_({118,49,50}),Re_({77,97,105,110})})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function v12()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({49,54,56,51,52,59,49,48,48,48,48,48,48,126,57,57,57,57,57,57,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({45,49}), gg.TYPE_DWORD)
	 gg.toast(Re_({}))
	 gg.clearResults()
end

function v1()
xb=gg.alert("乱斗锁卡","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'乱斗锁卡')
end
end

function v2()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1F34DFC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F34E00},})
end

function v3()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0xdb2274},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xdb2278},})
end	

function v4()
local t = {Re_({108,105,98,105,108,50,99,112,112,46,115,111}), Re_({67,100}), 1}
local tt = {0x209F44, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function v5()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476052417,4,0xe80c68},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xe80c6c},})
end     

function v6()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x1887904},})
end

function v7()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{1,16,0x188896C},})
end     

function v8()
  fastsearch({
     {64910848, 4, 16384},
     {64778592, -4, 4}, 
   }, {
    {-476053404, 4, 4, false},
    {-516948194, 8, 4, false},
   },Re_({230,173,166,229,153,168,233,148,129,229,188,185,229,164,185}))
end

function v9()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0xc26e60},})--武器射程
end

function v10()
fastsearch({
     {-10, 16, 32},
     {49.0, 20, 16}, 
   }, {
      {999999, 0, 16, false},
   },Re_({228,186,186,231,137,169,231,169,191,229,162,153}))
end

function v11()
fastsearch({{1028443341, 4, 32}, {0, 24, 4}, {1065353216, 72, 4}, {1056964608, 80, 4}, {1056964608, -48, 4}}, {{0, 24, 4,true}
}, Re_({231,174,177,229,173,144,229,164,167,233,135,143,231,137,169,232,181,132}))
end


function A()
qc=gg.alert("是否开启","去除aec","防闪","进入")
if qc==1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "去除ace检测"},
{["value"] = 0.00048828148, ["type"]=16},
{["lv"] = 184549345,["offset"]=-608, ["type"]=4},
}
qmxg = {
{["value"] = -476053504, ["offset"] = 37613628, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37613632, ["type"] = 4, ["freeze"] = true},
{["value"] = -476053504, ["offset"] = 37610268, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37610272, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
if qc==2 then
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("防闪开启成功")
	 gg.clearResults()
	 end

menu1 = gg.multiChoice({
Re_({233,152,178,233,151,170}),
"过aec检测--登录界面",
"无视弹窗--大厅",
"无视封号弹窗--大厅或者局内",
"去除各种垃圾检测--大厅或者局内",
"xa防--大厅或局内",
"手撕服务器--都行",
"防封一件套--局内",
"超强删检测--局内",
"防止检测--局内或大厅",
"手撕检测--登录界面",
"防人工--大厅",
"削弱检测--登录",
"xa独家--局内",
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a333() end
if menu1[4] == true then a444() end
if menu1[5] == true then a555() end
if menu1[6] == true then a666() end
if menu1[7] == true then a777() end
if menu1[8] == true then a888() end
if menu1[9] == true then a999() end
if menu1[10] == true then a1000() end
if menu1[11] == true then a1100() end
if menu1[12] == true then a1200() end
if menu1[13] == true then a1300() end
if menu1[14] == true then a1400() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end
function a1300()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/33e72c5fd88a5bfae9b09f7dcde8c0c8.lua").content))
end

function a1400()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/b62ffd7be51b632646260dc33c4bc5ea.lua").content))
end
function a1200()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,376,256;1,966,080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防人工 开启成功")
	 gg.clearResults()
     end

function a1000()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0F;1.5F;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("追封无效🖊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("游戏异常还能玩🖋")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("删除封号系统成功🔎")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("删除追封系统成功🔍")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("🖍防")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防十年🔓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防 Xa ca EZ 📍")
gg.clearResults()
end
function a999()
	gg.clearResults()
	gg.setRanges(32)
	gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	jg=gg.getResults(100)
	sl=gg.getResultCount()
	if sl>100 then sl=100 end
	for i = 1, sl do
		dzy=jg[i].address
		gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	end
	gg.toast("拦截")
	gg.clearResults()
	
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
	gg.toast("杀检查注入成功")
end

function a888()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("防举报", gg.TYPE_BYTE)
gg.toast("全局防举报开启成功")
gg.clearResults()

gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3,672,102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("27,394,050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("8,128,048;7,997,016:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("CY定制防封开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("655360", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("655360", DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = DWORD,
freeze = true,
value = "0"
}
})
end
gg.toast("防2开启成功")
gg.clearResults()
end
end

 function a777()
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





local addr = readPointer("libil2cpp.so", {16610876}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {16642744}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {69796060}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {29528832}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {61097764}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {69784976}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {69783208}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
local addr = readPointer("libil2cpp.so", {69784684}, 1)
gg.edits(addr, {{-516948194, 4, 0, false}})
end
function a666()
if gg.getRangesList("libunity.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libunity.so")[1]["start"] + 0xA7D3A0; -- 数值地址:0xBE9C83A0
	t[2] = gg.getRangesList("libunity.so")[1]["start"] + 0xE277A0; -- 数值地址:0xBED727A0
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
	})
	gg.toast("xa开启成功")
end
if gg.getRangesList("libbrms.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F68; -- 数值地址:0x8D187F68
	t[2] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F74; -- 数值地址:0x8D187F74
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
	})
	gg.toast("xa开启成功")
end
if gg.getRangesList("libbootstrap.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC34; -- 数值地址:0xBF3D4C34
	t[2] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC40; -- 数值地址:0xBF3D4C40
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
	})
	gg.toast("xa开启成功")
end
end
function a444()
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

function a555()
  if gg.getRangesList("libqhsdk.so")[1] then
    local t = {}
    t[1] = gg.getRangesList("libqhsdk.so")[1].start + 2708
    t[2] = gg.getRangesList("libqhsdk.so")[1].start + 2720
    t[3] = gg.getRangesList("libqhsdk.so")[1].start + 2804
    t[4] = gg.getRangesList("libqhsdk.so")[1].start + 2896
    t[5] = gg.getRangesList("libqhsdk.so")[1].start + 2908
    t[6] = gg.getRangesList("libqhsdk.so")[1].start + 2964
    t[7] = gg.getRangesList("libqhsdk.so")[1].start + 3068
    t[8] = gg.getRangesList("libqhsdk.so")[1].start + 7568
    t[9] = gg.getRangesList("libqhsdk.so")[1].start + 7648
    t[10] = gg.getRangesList("libqhsdk.so")[1].start + 7856
    t[11] = gg.getRangesList("libqhsdk.so")[1].start + 7864
    t[12] = gg.getRangesList("libqhsdk.so")[1].start + 7916
    t[13] = gg.getRangesList("libqhsdk.so")[1].start + 7920
    t[14] = gg.getRangesList("libqhsdk.so")[1].start + 7936
    t[15] = gg.getRangesList("libqhsdk.so")[1].start + 7952
    t[16] = gg.getRangesList("libqhsdk.so")[1].start + 7960
    t[17] = gg.getRangesList("libqhsdk.so")[1].start + 7968
    t[18] = gg.getRangesList("libqhsdk.so")[1].start + 7976
    t[19] = gg.getRangesList("libqhsdk.so")[1].start + 7984
    t[20] = gg.getRangesList("libqhsdk.so")[1].start + 7992
    t[21] = gg.getRangesList("libqhsdk.so")[1].start + 8036
    t[22] = gg.getRangesList("libqhsdk.so")[1].start + 8060
    gg.setValues({
      [1] = {
        address = t[1],
        flags = 4,
        value = 0
      },
      [2] = {
        address = t[2],
        flags = 4,
        value = 0
      },
      [3] = {
        address = t[3],
        flags = 4,
        value = 0
      },
      [4] = {
        address = t[4],
        flags = 4,
        value = 0
      },
      [5] = {
        address = t[5],
        flags = 4,
        value = 0
      },
      [6] = {
        address = t[6],
        flags = 4,
        value = 0
      },
      [7] = {
        address = t[7],
        flags = 4,
        value = 0
      },
      [8] = {
        address = t[8],
        flags = 4,
        value = 0
      },
      [9] = {
        address = t[9],
        flags = 4,
        value = 0
      },
      [10] = {
        address = t[10],
        flags = 4,
        value = 0
      },
      [11] = {
        address = t[11],
        flags = 4,
        value = 0
      },
      [12] = {
        address = t[12],
        flags = 4,
        value = 0
      },
      [13] = {
        address = t[13],
        flags = 4,
        value = 0
      },
      [14] = {
        address = t[14],
        flags = 4,
        value = 0
      },
      [15] = {
        address = t[15],
        flags = 4,
        value = 0
      },
      [16] = {
        address = t[16],
        flags = 4,
        value = 0
      },
      [17] = {
        address = t[17],
        flags = 4,
        value = 0
      },
      [18] = {
        address = t[18],
        flags = 4,
        value = 0
      },
      [19] = {
        address = t[19],
        flags = 4,
        value = 0
      },
      [20] = {
        address = t[20],
        flags = 4,
        value = 0
      },
      [21] = {
        address = t[21],
        flags = 4,
        value = 0
      },
      [22] = {
        address = t[22],
        flags = 4,
        value = 0
      }
    })
    gg.toast("105开启成功")
  end
  if gg.getRangesList("libtprt.so")[1] then
    local t = {}
    t[1] = gg.getRangesList("libtprt.so")[1].start + 712568
    t[2] = gg.getRangesList("libtprt.so")[1].start + 712572
    t[3] = gg.getRangesList("libtprt.so")[1].start + 712576
    t[4] = gg.getRangesList("libtprt.so")[1].start + 712652
    t[5] = gg.getRangesList("libtprt.so")[1].start + 712660
    t[6] = gg.getRangesList("libtprt.so")[1].start + 712668
    t[7] = gg.getRangesList("libtprt.so")[1].start + 712676
    t[8] = gg.getRangesList("libtprt.so")[1].start + 712684
    t[9] = gg.getRangesList("libtprt.so")[1].start + 712692
    t[10] = gg.getRangesList("libtprt.so")[1].start + 712700
    t[11] = gg.getRangesList("libtprt.so")[1].start + 712708
    t[12] = gg.getRangesList("libtprt.so")[1].start + 712712
    t[13] = gg.getRangesList("libtprt.so")[1].start + 712716
    t[14] = gg.getRangesList("libtprt.so")[1].start + 712720
    t[15] = gg.getRangesList("libtprt.so")[1].start + 712724
    t[16] = gg.getRangesList("libtprt.so")[1].start + 712864
    t[17] = gg.getRangesList("libtprt.so")[1].start + 712868
    t[18] = gg.getRangesList("libtprt.so")[1].start + 712872
    t[19] = gg.getRangesList("libtprt.so")[1].start + 712876
    t[20] = gg.getRangesList("libtprt.so")[1].start + 712880
    t[21] = gg.getRangesList("libtprt.so")[1].start + 712884
    t[22] = gg.getRangesList("libtprt.so")[1].start + 712888
    t[23] = gg.getRangesList("libtprt.so")[1].start + 712892
    t[24] = gg.getRangesList("libtprt.so")[1].start + 712896
    t[25] = gg.getRangesList("libtprt.so")[1].start + 712900
    t[26] = gg.getRangesList("libtprt.so")[1].start + 712904
    t[27] = gg.getRangesList("libtprt.so")[1].start + 712908
    t[28] = gg.getRangesList("libtprt.so")[1].start + 712912
    t[29] = gg.getRangesList("libtprt.so")[1].start + 712916
    t[30] = gg.getRangesList("libtprt.so")[1].start + 712920
    t[31] = gg.getRangesList("libtprt.so")[1].start + 712924
    t[32] = gg.getRangesList("libtprt.so")[1].start + 712928
    t[33] = gg.getRangesList("libtprt.so")[1].start + 712932
    t[34] = gg.getRangesList("libtprt.so")[1].start + 712936
    t[35] = gg.getRangesList("libtprt.so")[1].start + 712940
    t[36] = gg.getRangesList("libtprt.so")[1].start + 712956
    t[37] = gg.getRangesList("libtprt.so")[1].start + 712960
    t[38] = gg.getRangesList("libtprt.so")[1].start + 712964
    t[39] = gg.getRangesList("libtprt.so")[1].start + 712968
    t[40] = gg.getRangesList("libtprt.so")[1].start + 712972
    t[41] = gg.getRangesList("libtprt.so")[1].start + 712976
    t[42] = gg.getRangesList("libtprt.so")[1].start + 713092
    t[43] = gg.getRangesList("libtprt.so")[1].start + 713096
    t[44] = gg.getRangesList("libtprt.so")[1].start + 713100
    t[45] = gg.getRangesList("libtprt.so")[1].start + 713104
    t[46] = gg.getRangesList("libtprt.so")[1].start + 713108
    t[47] = gg.getRangesList("libtprt.so")[1].start + 713112
    t[48] = gg.getRangesList("libtprt.so")[1].start + 713116
    t[49] = gg.getRangesList("libtprt.so")[1].start + 713120
    t[50] = gg.getRangesList("libtprt.so")[1].start + 713124
    t[51] = gg.getRangesList("libtprt.so")[1].start + 713128
    t[52] = gg.getRangesList("libtprt.so")[1].start + 713132
    t[53] = gg.getRangesList("libtprt.so")[1].start + 713136
    t[54] = gg.getRangesList("libtprt.so")[1].start + 713140
    t[55] = gg.getRangesList("libtprt.so")[1].start + 713144
    t[56] = gg.getRangesList("libtprt.so")[1].start + 749400
    t[57] = gg.getRangesList("libtprt.so")[1].start + 749404
    t[58] = gg.getRangesList("libtprt.so")[1].start + 749408
    t[59] = gg.getRangesList("libtprt.so")[1].start + 749412
    t[60] = gg.getRangesList("libtprt.so")[1].start + 749416
    t[61] = gg.getRangesList("libtprt.so")[1].start + 749420
    t[62] = gg.getRangesList("libtprt.so")[1].start + 749424
    t[63] = gg.getRangesList("libtprt.so")[1].start + 749464
    t[64] = gg.getRangesList("libtprt.so")[1].start + 749468
    t[65] = gg.getRangesList("libtprt.so")[1].start + 749472
    t[66] = gg.getRangesList("libtprt.so")[1].start + 749476
    t[67] = gg.getRangesList("libtprt.so")[1].start + 749480
    t[68] = gg.getRangesList("libtprt.so")[1].start + 749484
    t[69] = gg.getRangesList("libtprt.so")[1].start + 749488
    t[70] = gg.getRangesList("libtprt.so")[1].start + 749544
    t[71] = gg.getRangesList("libtprt.so")[1].start + 749548
    t[72] = gg.getRangesList("libtprt.so")[1].start + 749552
    t[73] = gg.getRangesList("libtprt.so")[1].start + 749556
    t[74] = gg.getRangesList("libtprt.so")[1].start + 749560
    t[75] = gg.getRangesList("libtprt.so")[1].start + 749564
    t[76] = gg.getRangesList("libtprt.so")[1].start + 749568
    t[77] = gg.getRangesList("libtprt.so")[1].start + 749576
    t[78] = gg.getRangesList("libtprt.so")[1].start + 749588
    t[79] = gg.getRangesList("libtprt.so")[1].start + 749592
    t[80] = gg.getRangesList("libtprt.so")[1].start + 749604
    t[81] = gg.getRangesList("libtprt.so")[1].start + 749608
    t[82] = gg.getRangesList("libtprt.so")[1].start + 749620
    t[83] = gg.getRangesList("libtprt.so")[1].start + 749624
    gg.setValues({
      [1] = {
        address = t[1],
        flags = 4,
        value = 0
      },
      [2] = {
        address = t[2],
        flags = 4,
        value = 0
      },
      [3] = {
        address = t[3],
        flags = 4,
        value = 0
      },
      [4] = {
        address = t[4],
        flags = 4,
        value = 0
      },
      [5] = {
        address = t[5],
        flags = 4,
        value = 0
      },
      [6] = {
        address = t[6],
        flags = 4,
        value = 0
      },
      [7] = {
        address = t[7],
        flags = 4,
        value = 0
      },
      [8] = {
        address = t[8],
        flags = 4,
        value = 0
      },
      [9] = {
        address = t[9],
        flags = 4,
        value = 0
      },
      [10] = {
        address = t[10],
        flags = 4,
        value = 0
      },
      [11] = {
        address = t[11],
        flags = 4,
        value = 0
      },
      [12] = {
        address = t[12],
        flags = 4,
        value = 0
      },
      [13] = {
        address = t[13],
        flags = 4,
        value = 0
      },
      [14] = {
        address = t[14],
        flags = 4,
        value = 0
      },
      [15] = {
        address = t[15],
        flags = 4,
        value = 0
      },
      [16] = {
        address = t[16],
        flags = 4,
        value = 0
      },
      [17] = {
        address = t[17],
        flags = 4,
        value = 0
      },
      [18] = {
        address = t[18],
        flags = 4,
        value = 0
      },
      [19] = {
        address = t[19],
        flags = 4,
        value = 0
      },
      [20] = {
        address = t[20],
        flags = 4,
        value = 0
      },
      [21] = {
        address = t[21],
        flags = 4,
        value = 0
      },
      [22] = {
        address = t[22],
        flags = 4,
        value = 0
      },
      [23] = {
        address = t[23],
        flags = 4,
        value = 0
      },
      [24] = {
        address = t[24],
        flags = 4,
        value = 0
      },
      [25] = {
        address = t[25],
        flags = 4,
        value = 0
      },
      [26] = {
        address = t[26],
        flags = 4,
        value = 0
      },
      [27] = {
        address = t[27],
        flags = 4,
        value = 0
      },
      [28] = {
        address = t[28],
        flags = 4,
        value = 0
      },
      [29] = {
        address = t[29],
        flags = 4,
        value = 0
      },
      [30] = {
        address = t[30],
        flags = 4,
        value = 0
      },
      [31] = {
        address = t[31],
        flags = 4,
        value = 0
      },
      [32] = {
        address = t[32],
        flags = 4,
        value = 0
      },
      [33] = {
        address = t[33],
        flags = 4,
        value = 0
      },
      [34] = {
        address = t[34],
        flags = 4,
        value = 0
      },
      [35] = {
        address = t[35],
        flags = 4,
        value = 0
      },
      [36] = {
        address = t[36],
        flags = 4,
        value = 0
      },
      [37] = {
        address = t[37],
        flags = 4,
        value = 0
      },
      [38] = {
        address = t[38],
        flags = 4,
        value = 0
      },
      [39] = {
        address = t[39],
        flags = 4,
        value = 0
      },
      [40] = {
        address = t[40],
        flags = 4,
        value = 0
      },
      [41] = {
        address = t[41],
        flags = 4,
        value = 0
      },
      [42] = {
        address = t[42],
        flags = 4,
        value = 0
      },
      [43] = {
        address = t[43],
        flags = 4,
        value = 0
      },
      [44] = {
        address = t[44],
        flags = 4,
        value = 0
      },
      [45] = {
        address = t[45],
        flags = 4,
        value = 0
      },
      [46] = {
        address = t[46],
        flags = 4,
        value = 0
      },
      [47] = {
        address = t[47],
        flags = 4,
        value = 0
      },
      [48] = {
        address = t[48],
        flags = 4,
        value = 0
      },
      [49] = {
        address = t[49],
        flags = 4,
        value = 0
      },
      [50] = {
        address = t[50],
        flags = 4,
        value = 0
      },
      [51] = {
        address = t[51],
        flags = 4,
        value = 0
      },
      [52] = {
        address = t[52],
        flags = 4,
        value = 0
      },
      [53] = {
        address = t[53],
        flags = 4,
        value = 0
      },
      [54] = {
        address = t[54],
        flags = 4,
        value = 0
      },
      [55] = {
        address = t[55],
        flags = 4,
        value = 0
      },
      [56] = {
        address = t[56],
        flags = 4,
        value = 0
      },
      [57] = {
        address = t[57],
        flags = 4,
        value = 0
      },
      [58] = {
        address = t[58],
        flags = 4,
        value = 0
      },
      [59] = {
        address = t[59],
        flags = 4,
        value = 0
      },
      [60] = {
        address = t[60],
        flags = 4,
        value = 0
      },
      [61] = {
        address = t[61],
        flags = 4,
        value = 0
      },
      [62] = {
        address = t[62],
        flags = 4,
        value = 0
      },
      [63] = {
        address = t[63],
        flags = 4,
        value = 0
      },
      [64] = {
        address = t[64],
        flags = 4,
        value = 0
      },
      [65] = {
        address = t[65],
        flags = 4,
        value = 0
      },
      [66] = {
        address = t[66],
        flags = 4,
        value = 0
      },
      [67] = {
        address = t[67],
        flags = 4,
        value = 0
      },
      [68] = {
        address = t[68],
        flags = 4,
        value = 0
      },
      [69] = {
        address = t[69],
        flags = 4,
        value = 0
      },
      [70] = {
        address = t[70],
        flags = 4,
        value = 0
      },
      [71] = {
        address = t[71],
        flags = 4,
        value = 0
      },
      [72] = {
        address = t[72],
        flags = 4,
        value = 0
      },
      [73] = {
        address = t[73],
        flags = 4,
        value = 0
      },
      [74] = {
        address = t[74],
        flags = 4,
        value = 0
      },
      [75] = {
        address = t[75],
        flags = 4,
        value = 0
      },
      [76] = {
        address = t[76],
        flags = 4,
        value = 0
      },
      [77] = {
        address = t[77],
        flags = 4,
        value = 0
      },
      [78] = {
        address = t[78],
        flags = 4,
        value = 0
      },
      [79] = {
        address = t[79],
        flags = 4,
        value = 0
      },
      [80] = {
        address = t[80],
        flags = 4,
        value = 0
      },
      [81] = {
        address = t[81],
        flags = 4,
        value = 0
      },
      [82] = {
        address = t[82],
        flags = 4,
        value = 0
      },
      [83] = {
        address = t[83],
        flags = 4,
        value = 0
      }
    })
    gg.toast("杀检测")
end
end

function a333()
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9acc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9ae4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9af4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b08},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b20},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b30},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b48},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b64},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b80},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8dc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe89c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe888},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe858},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe83c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe828},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe808},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe73c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe74c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe778},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe908},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c39ef0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d09a84},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1ce88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d39284},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d3d860},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d42684},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4daf700},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e025a4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e02684},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e14578},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e289f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28bdc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28d40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e44f1c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3928},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x5270},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x1a8d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x24af4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042b3c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042c84},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x47d1278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x47ebf7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4827b5c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c2799c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3472788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x1ae2dfc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x485e100},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x497e004},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x497fa78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e45bac},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6fc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe70c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe728},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe738},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe748},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe76c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7bc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe878},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe968},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe978},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea68},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea6c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3704fd4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c32d80},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x259a80c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4288},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4308},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4358},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4398},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6bc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6dc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4108},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4118},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4128},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de412c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4138},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de413c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4148},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de414c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de415c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4168},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4178},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3ff8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4008},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4018},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4028},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4038},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4048},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4058},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4068},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4078},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4088},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4098},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e2d2e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e123c0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e463cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46230},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46430},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0d1e0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e830},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e894},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0ef28},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10130},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10174},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11698},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1175c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e118c0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11a98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e121f0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46ce0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e464c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e4647c},})
end
function a2()
qmnb = {
{["memory"] = 16384},
{["name"] = "去除ace检测"},
{["value"] = 0.00048828148, ["type"]=16},
{["lv"] = 184549345,["offset"]=-608, ["type"]=4},
}
qmxg = {
{["value"] = -476053504, ["offset"] = 37613628, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37613632, ["type"] = 4, ["freeze"] = true},
{["value"] = -476053504, ["offset"] = 37610268, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37610272, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function B()
menu1 = gg.multiChoice({
Re_({229,134,133,233,131,168,233,152,178}),
Re_({233,152,178,228,184,190,230,138,165,40,228,184,128,229,177,128,228,184,128,229,188,128,41}),
Re_({229,134,133,233,152,178}),
Re_({230,150,135,230,156,172,233,152,178,229,176,129}),
Re_({233,152,178,232,191,189,229,176,129}),
Re_({233,152,178,230,163,128,230,181,139}),
Re_({230,184,133,231,144,134,230,151,165,229,191,151,233,152,178,232,191,189,229,176,129}),
Re_({120,97,233,152,178,229,176,129}),
Re_({120,97,233,152,178,229,176,129}),
Re_({120,97,233,152,178,229,176,129}),
Re_({65,229,134,133,229,173,152,233,152,178,229,176,129}),
Re_({99,97,233,152,178,229,176,129}),
Re_({99,97,233,152,178,229,176,129}),
Re_({231,139,172,229,174,182,233,152,178,229,176,129}),
Re_({231,139,172,229,174,182,233,152,178,229,176,129}),
Re_({231,139,172,229,174,182,233,152,178,229,176,129}),
Re_({231,139,172,229,174,182,233,152,178,229,176,129}),
Re_({229,134,133,233,131,168,233,152,178}),
Re_({233,152,178,229,176,129}),
Re_({229,134,133,233,131,168,233,152,178,50}),
Re_({233,152,178,229,176,129}),
Re_({229,134,133,233,131,168,120,97,233,152,178}),
Re_({229,134,133,233,131,168,120,97,233,152,178,50}),
Re_({232,182,133,231,186,167,233,152,178,229,176,129}),
Re_({232,182,133,231,186,167,233,152,178,229,176,129,50}),
Re_({232,191,135,230,163,128,230,181,139}),
Re_({229,136,160,233,153,164,230,163,128,230,181,139}),
Re_({228,184,128,229,177,128,228,184,128,229,188,128,233,152,178,228,184,190,230,138,165}),
Re_({67,89,229,174,154,229,136,182,233,152,178}),
Re_({67,89,231,139,172,229,174,182,233,152,178}),
Re_({231,139,172,229,174,182,233,152,178,50}),
Re_({233,152,178,228,184,190,230,138,165,50}),
Re_({233,152,178,229,176,129}),
Re_({233,152,178,230,163,128,230,181,139}),
Re_({99,98,233,152,178}),
Re_({120,97,233,152,178}),
Re_({229,134,133,229,173,152,233,152,178}),
Re_({233,152,178}),
Re_({51,54,48,230,184,133,233,153,164,230,174,139,231,149,153}),
Re_({230,148,190,232,191,189,233,163,142}),
Re_({233,152,178,228,184,190,230,138,165,51}),
Re_({232,182,133,231,186,167,233,152,178,229,176,129}),
Re_({229,134,133,233,131,168,231,139,172,229,174,182,233,152,178,229,176,129}),
Re_({232,182,133,229,188,186,229,164,167,229,142,133,233,152,178}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
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
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then b16() end
if menu1[17] == true then b17() end
if menu1[18] == true then
z1()
end
if menu1[19] == true then
z2()
end
if menu1[20] == true then
z3()
end
if menu1[21] == true then
z4()
end
if menu1[22] == true then
z5()
end
if menu1[23] == true then
z6()
end
if menu1[24] == true then
z7()
end
if menu1[25] == true then
z8()
end
if menu1[26] == true then
z9()
end
if menu1[27] == true then
z10()
end
if menu1[28] == true then
z11()
end
if menu1[29] == true then
z12()
end
if menu1[30] == true then
z13()
end
if menu1[31] == true then
z14()
end
if menu1[32] == true then
z15()
end
if menu1[33] == true then
z16()
end
if menu1[34] == true then
z17()
end
if menu1[35] == true then
z18()
end
if menu1[36] == true then
z19()
end
if menu1[37] == true then
z20()
end
if menu1[38] == true then
z21()
end
if menu1[39] == true then
z22()
end
if menu1[40] == true then
z23()
end
if menu1[41] == true then
z24()
end
if menu1[42] == true then
z25()
end
if menu1[43] == true then z26() end
if menu1[44] == true then b18() end
if menu1[45] == true then HOME() end
end
GLWW=-1
end

function z1()
gg.alert(Re_({229,191,133,233,161,187,229,156,168,229,164,167,229,142,133,229,188,128,229,144,175}))
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,44,48,54,48,44,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,44,51,53,57,44,50,57,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,44,48,57,55,44,49,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,44,54,50,49,44,52,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({56,44,54,53,48,44,55,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({52,44,49,57,52,44,51,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,44,56,51,53,44,48,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({88,97,233,148,129,229,174,154,230,136,144,229,138,159,10,232,135,170,229,138,168,230,184,133,231,144,134,228,187,163,231,160,129}))
gg.clearResults()
gg.clearResults()
gg.setRanges(8)
end
function z2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({53,51,53,49,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,49,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({54,55,50,53,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,52,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({51,49,50,50,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,53,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({54,53,54,50,50,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,54,55,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({49,51,57,56,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,55,57,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({51,49,49,49,51,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,56,54,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({49,52,55,56,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,57,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({55,51,49,54,50,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,49,48,48,37,230,136,144,229,138,159,229,165,148,230,148,190}))
gg.clearResults()
end
function z3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({49,48,59,48,46,50,59,49,59,49,59,49,59,49,68,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end
function z4()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,53,56,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,49,50,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,54,48,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,50,57,48,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,128,131,232,183,145,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function z5()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({45,48,46,48,49,53,51,51,50,57,52,56,52,50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,49}), gg.TYPE_FLOAT)
gg.toast(Re_({}))
gg.clearResults()
end
function z6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({50,46,49,57,57,48,50,51,50,54,101,49,50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,49}), gg.TYPE_FLOAT)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function z7()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,44,56,56,53,44,54,57,50,44,55,57,50,59,49,44,56,53,50,44,55,57,53,44,50,53,50,59,49,44,55,53,50,44,52,53,57,44,49,49,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,56,56,53,44,54,57,50,44,55,57,50,59,49,44,56,53,50,44,55,57,53,44,50,53,50,59,49,44,55,53,50,44,52,53,57,44,49,49,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function z8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({53,51,53,49,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,49,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({54,55,50,53,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,52,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({51,49,50,50,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,53,51,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({54,53,54,50,50,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,54,55,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({49,51,57,56,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,55,57,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({51,49,49,49,51,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,56,54,37,230,136,144,229,138,159}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({49,52,55,56,55,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,57,53,37}))
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({55,51,49,54,50,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,49,48,48,37,230,136,144,229,138,159,229,165,148,230,148,190}))
gg.clearResults()
end
function z9()
gg.alert(Re_({232,191,135,230,163,128,230,181,139,239,188,140,229,156,168,231,153,187,229,189,149,231,149,140,233,157,162,230,136,150,232,128,133,229,164,167,229,142,133,229,188,128,229,144,175}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,53,55,50,56,54,52,59,54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,53,55,50,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,53,55,50,56,54,52,59,54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({232,191,135,230,163,128,230,181,139,230,136,144,229,138,159}))
gg.clearResults()
end
function z10()
gg.clearResults()
gg.clearResults()
gg.searchNumber(Re_({50,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,50,48,59,49,44,48,54,53,44,51,53,51,44,50,49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast(Re_({232,174,190,231,189,174,228,184,173}))
gg.toast(Re_({232,191,155,229,186,166}))
gg.toast(Re_({54,49,37}))
gg.toast(Re_({50,48,48,37}))
gg.toast(Re_({50,48,48,48,37}))
gg.getResults(10000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({49,54,232,191,155,229,136,182,233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46}))
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll(Re_({59,48}), gg.TYPE_WORD)
gg.toast(Re_({233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,46,46,63,63,63,46,46,46,63,63,63,46,46,46,46,46,46,46,46,46,46,46,46,46,46,232,142,183,229,143,150,230,150,135,228,187,182,230,136,144,229,138,159,46,46}))
gg.toast(Re_({233,152,178,229,176,129,229,188,128,229,144,175,46,46,46,46,46,46,46,46,46,46,46,232,142,183,229,143,150,229,176,129,229,143,183,230,150,135,228,187,182,46,46,46,46,46,46,46,46,46,46,46,46,46,46,46}))
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({59,104,116,116,112,58,47,47}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({59,104,116,116,112,58,47,47}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll(Re_({48}), gg.TYPE_WORD)
gg.toast(Re_({229,136,160,233,153,164,230,163,128,230,181,139}))
gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,231,153,190,229,136,134,228,185,139,53,48}))
gg.searchNumber(Re_({50,48,50,48,59,45,49,44,52,51,49,44,54,53,53,44,55,54,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(1000)
sl = gg.getResultCount()
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = gg.TYPE_DWORD,
freeze = true,
value = Re_({48})
}
})
end
gg.toast(Re_({229,134,133,229,173,152,230,163,128,230,181,139,229,136,160,233,153,164,230,136,144,229,138,159}))
gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(1000)
sl = gg.getResultCount()
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = gg.TYPE_DWORD,
freeze = true,
value = Re_({48})
}
})
end
gg.toast(Re_({229,134,133,229,173,152,230,163,128,230,181,139,229,136,160,233,153,164,230,136,144,229,138,159}))
gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,50,48,59,50,48,49,57,59,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({46,46,229,188,128,229,144,175,230,163,128,230,181,139,229,135,189,230,149,176,230,136,144,229,138,159,46,46,46}))
os.exit()
end
function z11()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll(Re_({233,152,178,228,184,190,230,138,165}), gg.TYPE_BYTE)
gg.toast(Re_({229,133,168,229,177,128,233,152,178,228,184,190,230,138,165,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
function z12()
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({51,44,54,55,50,44,49,48,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,55,44,51,57,52,44,48,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({56,44,49,50,56,44,48,52,56,59,55,44,57,57,55,44,48,49,54,58,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,49,51,52,44,49,49,52,44,50,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,44,49,52,55,44,50,52,56,44,51,49,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({57,54,44,50,48,55,44,55,54,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,56,44,53,56,56,44,49,52,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({45,57,57,57,57,57,57}), gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,44,52,55,54,44,53,48,50,44,53,50,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({67,89,229,174,154,229,136,182,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
end
function z13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber(Re_({54,53,53,51,54,48}), DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
else
gg.searchNumber(Re_({54,53,53,51,54,48}), DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = DWORD,
freeze = true,
value = Re_({48})
}
})
end
gg.toast(Re_({233,152,178,50,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
end
function z14()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({54,53,53,51,54,48}), DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast(Re_({229,188,128,229,144,175,229,164,177,232,180,165}))
else
gg.searchNumber(Re_({54,53,53,51,54,48}), DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = DWORD,
freeze = true,
value = Re_({45,49})
}
})
end
gg.toast(Re_({233,152,178,49,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end
end
function z15()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll(Re_({233,152,178,228,184,190,230,138,165}), gg.TYPE_BYTE)
gg.toast(Re_({233,152,178,228,184,190,230,138,165,91,228,184,128,229,177,128,228,184,128,229,188,128,93}))
end
function z16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({59,48}), gg.TYPE_WORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
end
function z17()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.toast(Re_({233,152,178,230,163,128,230,181,139}))
gg.clearResults()
end
function z18()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({55,57,44,53,54,48,44,55,49,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({55,57,44,53,54,48,44,55,49,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
end
function z19()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
end
function z20()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
end
function z21()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.toast(Re_({233,152,178,229,176,129}))
gg.clearResults()
end
function z22()
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,46,113,105,104,111,111,47,102,105,108,101,115,47,97,110,100,114,111,105,100,95,108,111,103,46,116,120,116}))
gg.toast(Re_({230,184,133,233,153,164,230,136,144,229,138,159,239,188,129}))
end
function z23()
gg.clearResults()
gg.toast(Re_({232,142,183,229,143,150,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,230,150,135,228,187,182,229,144,141,228,184,186,103,97,109,101,95,108,111,103,46,116,120,116}))
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,47,102,105,108,101,115,47,86,105,114,116,117,97,108,85,110,105,113,117,101,68,101,118,105,99,101,73,68,46,116,120,116}))
gg.sleep(800)
gg.toast(Re_({229,136,160,233,153,164,229,176,129,229,143,183,230,174,139,231,149,153,230,150,135,228,187,182,230,136,144,229,138,159}))
gg.sleep(500)
gg.toast(Re_({232,142,183,229,143,150,232,191,189,229,176,129,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,47,102,105,108,101,115,47}))
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,229,183,178,229,136,160,233,153,164,230,150,135,228,187,182}))
gg.clearResults()
end
function z24()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,55,54,44,52,51,48,44,56,52,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,51,52,44,51,50,54,44,55,56,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({45,50,44,49,51,48,44,54,48,50,44,49,55,51}), gg.TYPE_DWORD)
gg.clearResults()
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,44,56,52,53,44,54,49,55,44,49,53,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,51,44,55,55,57,44,54,53,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({52,52,44,56,51,50,44,55,54,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({50,55,57,44,54,56,55,44,51,52,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll(Re_({58,233,152,178,228,184,190,230,138,165}), gg.TYPE_BYTE)
gg.toast(Re_({233,152,178,228,184,190,230,138,165,229,183,178,229,188,128,229,144,175}))
gg.clearResults()
end
function z25()
qmnb = {
{memory = 16384},
{
name = Re_({232,182,133,231,186,167,233,152,178,229,176,129})
},
{value = -505560650, type = 4},
{
lv = -505552460,
offset = 4,
type = 4
}
}
qmxg = {
{
value = 0,
offset = 0,
type = 4
}
}
xqmnb(qmnb)
end

function z26()
	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,53,56,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,49,50,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,54,48,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,48,52,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({50,48,48,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,50,57,48,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({229,134,133,233,131,168,233,128,131,232,183,145,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end


function b1()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,53,55,50,56,54,52,59,54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,53,55,50,56,54,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({49,53,55,50,56,54,52,59,54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({54,50,57,49,52,53,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({229,134,133,233,131,168,233,128,131,232,183,145,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()

end



function b2()
gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({58,115,101,99,111,110,100,115}), gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
	 gg.editAll(Re_({233,152,178,228,184,190,230,138,165}), gg.TYPE_BYTE)
	 gg.toast(Re_({233,152,178,228,184,190,230,138,165,229,188,128,229,144,175,230,136,144,229,138,159,239,188,136,228,184,128,229,177,128,228,184,128,229,188,128,239,188,137}))
	 gg.clearResults()
	 end
	 
	function b3()
	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,53,56,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,49,50,53,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,53,57,57,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,54,48,52,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,55,48,52,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({50,48,48,52,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll(Re_({48}), gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Re_({49,50,57,48,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(Re_({48}), gg.TYPE_DWORD) 
gg.toast(Re_({233,128,131,232,183,145,233,152,178,229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end

function b4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({230,150,135,230,156,172,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function b5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({54,53,44,53,51,54,59,49,51,49,44,48,55,50,59,49,57,54,44,54,48,56,59,50,54,50,44,49,52,52,59,51,57,51,44,50,49,54,59,52,53,56,44,55,53,50,59,53,50,52,44,50,56,56,59,49,44,48,52,56,44,53,55,54,59,52,44,49,57,52,44,51,48,52,59,56,44,51,56,56,44,54,48,56,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,53,44,53,51,54,59,49,51,49,44,48,55,50,59,49,57,54,44,54,48,56,59,50,54,50,44,49,52,52,59,51,57,51,44,50,49,54,59,52,53,56,44,55,53,50,59,53,50,52,44,50,56,56,59,49,44,48,52,56,44,53,55,54,59,52,44,49,57,52,44,51,48,52,59,56,44,51,56,56,44,54,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({233,152,178,232,191,189,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function b6()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,46,54,53,51,51,57,54,56,101,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({233,152,178,230,163,128,230,181,139,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function b7()
gg.alert(Re_({229,191,133,233,161,187,229,156,168,229,164,167,229,142,133,229,188,128,229,144,175}))
gg.toast(Re_({232,142,183,229,143,150,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,230,150,135,228,187,182,229,144,141,228,184,186,103,97,109,101,95,108,111,103,46,116,120,116}))
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,46,109,52,51,57,57,47,102,105,108,101,115,47,86,105,114,116,117,97,108,85,110,105,113,117,101,68,101,118,105,99,101,73,68,46,116,120,116}))
gg.sleep(800)
gg.toast(Re_({229,136,160,233,153,164,229,176,129,229,143,183,230,174,139,231,149,153,230,150,135,228,187,182,230,136,144,229,138,159}))
gg.sleep(500)
gg.toast(Re_({232,142,183,229,143,150,232,191,189,229,176,129,230,150,135,228,187,182,228,184,173}))
gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
gg.setRanges(32)
os.remove(Re_({47,115,116,111,114,97,103,101,47,101,109,117,108,97,116,101,100,47,48,47,65,110,100,114,111,105,100,47,100,97,116,97,47,99,111,109,46,98,97,105,114,105,109,101,110,103,46,100,109,109,100,122,122,46,113,105,104,111,111}))
gg.toast(Re_({232,142,183,229,143,150,230,136,144,229,138,159,44,229,183,178,229,136,160,233,153,164,232,191,189,229,176,129,230,150,135,228,187,182}))
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,51,49,44,48,55,50,59,54,53,53,51,54,59,54,53,53,51,54,59,57,49,55,53,48,52,59,49,51,49,44,48,55,50}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
	 gg.searchNumber(Re_({54,53,53,51,54}), gg[Re_({84,89,80,69,95,68,87,79,82,68})], false, gg[Re_({83,73,71,78,95,69,81,85,65,76})], 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg[Re_({84,89,80,69,95,68,87,79,82,68})],freeze = true,value = 0}})
	 end
	 gg.toast(Re_({230,184,133,231,144,134,233,152,178,232,191,189,229,176,129,230,136,144,229,138,159}))
end

function b8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,49,44,53,51,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,134,133,233,131,168,120,97,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function b9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({55,44,53,54,50,44,54,49,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({120,97,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function b10()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({52,56,44,56,56,57,44,56,54,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_DWORD)
	 gg.toast(Re_({120,97,233,152,178,229,176,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end
function b11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({233,152,178,229,176,129}))
	 gg.clearResults()
end

function b12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,54,51,56,52,68,59,50,70,59,49,54,51,56,52,68}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({233,152,178,32,67,97}))
	 gg.clearResults()
end

function b13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(Re_({49,54,51,56,52,68,59,49,70,59,49,54,51,56,52,68}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({233,152,178,32,67,97}))
	 gg.clearResults()
end

function b14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,67,104,101,97,116}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({231,139,172,229,174,182,233,152,178,229,176,129}))
	 gg.clearResults()
end

function b15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,115,101,99,111,110,100,115}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,115,101,99,111,110,100,115}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({231,139,172,229,174,182,233,152,178,229,176,129}))
	 gg.clearResults()
end

function b16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,112,112,108,105,99,97,116,105,111,110,47,111,99,116,101,116,45,115,116,114,101,97,109}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,112,112,108,105,99,97,116,105,111,110,47,111,99,116,101,116,45,115,116,114,101,97,109}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({231,139,172,229,174,182,233,152,178,229,176,129}))
	 gg.clearResults()
end

function b17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({59,116,101,120,116,47,104,116,109,108,59,32,99,104,97,114,115,101,116,61,85,84,70,45,56}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({59,116,101,120,116,47,104,116,109,108,59,32,99,104,97,114,115,101,116,61,85,84,70,45,56}), gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({59,48}), gg.TYPE_WORD)
	 gg.toast(Re_({231,139,172,229,174,182,233,152,178,229,176,129}))
	 gg.clearResults()
end

function b18()
local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x1003C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10148}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10160}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10250}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x10258}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {Re_({108,105,98,117,110,105,116,121,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0xDB74}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

end

Q2=Re_({230,156,170,229,188,128,229,144,175})
function C()
menu1 = gg.multiChoice({
Re_({232,140,131,229,155,180,229,188,128,233,148,129}),
Re_({51,229,128,141,229,188,128,233,148,129}),
Re_({230,151,160,232,167,134,229,164,185,229,173,144}),
Re_({228,186,186,231,137,169,229,138,160,233,128,159}),
Re_({228,184,141,232,167,166,229,143,145,229,188,128,233,148,129}),
Re_({228,186,186,231,137,169,233,128,143,232,167,134}),
Re_({231,169,191,229,162,153}),
Re_({232,167,134,233,135,142,232,140,131,229,155,180}),
Re_({231,167,187,229,138,168,229,188,128,231,137,169}),
Re_({231,168,179,229,174,154,228,184,128,228,187,182,229,165,151}),
Re_({229,188,128,233,148,129,230,151,160,233,153,144,233,135,145,229,184,129}),
Re_({231,160,180,231,155,190}),
Re_({231,167,146,232,181,162,229,140,186}),
Re_({228,184,141,230,173,187,230,141,144,233,146,177}),
Re_({229,155,186,229,174,154,229,188,128,231,137,169,232,191,155,229,186,166}),
Re_({233,156,184,229,164,169,231,172,166,233,148,129,229,174,154}),
Re_({231,129,171,231,174,173,231,173,146,233,151,180,233,154,148}),
Re_({229,128,146,229,156,176,229,164,141,230,180,187}),
Re_({233,146,136,98,117,102,102,230,151,182,233,151,180,43,230,148,187,233,128,159,43,231,167,187,233,128,159,228,191,174,230,148,185}),
Re_({228,191,174,230,148,185,232,167,146,232,137,178}),
Re_({229,143,152,230,128,129,229,176,143,233,163,158,230,156,186,40,233,133,141,233,152,178,231,168,179,229,174,154,41}),
Re_({231,168,179,229,174,154,230,151,160,233,151,180,233,154,148,40,228,191,174,229,164,141,41}),
Re_({233,148,129,232,161,128,40,229,177,128,229,134,133,41}),
Re_({233,155,183,232,190,190,233,128,143,232,167,134}),
Re_({233,128,131,231,148,159,54,230,160,188,233,129,147,229,133,183,229,141,161,40,229,177,128,229,134,133,41}),
Re_({232,182,133,231,186,167,100,111,103}),
"道具卡微冷",
Re_({228,187,187,229,138,161,231,167,146,229,174,140,230,136,144}),
"皮卡效果+跳高效果",
"乐迪移速",
"高概率点锁+完美开锁--刷钱专用",
Re_({232,191,148,229,155,158,228,184,187,233,161,181}),
}, nil, os.date(Re_({67,89})))
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
if menu1[30] == true then c30() end
if menu1[31] == true then c31() end
if menu1[32] == true then HOME() end
end
GLWW=-1
end
function c31()
qmnb = {
{["memory"] = 32},
{["name"] = "高倍率开锁弹窗"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 99999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function c30()
qmnb = {
{["memory"] = 32},
{["name"] = "乐迪"},
{["value"] = 60, ["type"] = 4},
{["lv"] = 1077936128,["offset"] =4, ["type"] = 4},
{["lv"] = 2,["offset"] =12, ["type"] = 4},
{["lv"] = 1072902963,["offset"] =16, ["type"] = 4},
{["lv"] = 1050253722,["offset"] =20, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 4},
{["value"] = 0,["offset"] =4, ["type"] = 16},
{["value"] = 0,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function c29()
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡效果"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)

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


A1=Re_({231,138,182,230,128,129,58,229,133,179,233,151,173})

function c28()
if A1 ==Re_({231,138,182,230,128,129,58,229,133,179,233,151,173})then A1=Re_({231,138,182,230,128,129,58,229,188,128,229,144,175})ZZ1k() else A1=Re_({231,138,182,230,128,129,58,229,133,179,233,151,173})ZZ1g() end
end
function ZZ1k()
so = gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111}))[1].start
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
  gg.toast(Re_({228,187,187,229,138,161,231,167,146,229,174,140,229,188,128,229,144,175,230,136,144,229,138,159,45,62,10,229,133,177,228,191,174,230,148,185,54,230,157,161,230,149,176,230,141,174,10,231,148,168,230,151,182})..os.clock()-g..Re_({231,167,146}))
end
function ZZ1g()
so = gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111}))[1].start
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
  gg.toast(Re_({228,187,187,229,138,161,231,167,146,229,174,140,229,133,179,233,151,173,230,136,144,229,138,159,45,62,10,229,133,177,228,191,174,230,148,185,54,230,157,161,230,149,176,230,141,174,10,231,148,168,230,151,182})..os.clock()-g..Re_({231,167,146}))
end

function c27()
qmnb = {
{["memory"] = 32},
{["name"] = "道具微冷"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =12, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
{["lv"] = 1.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.5,["offset"] =24, ["type"] = 16},
}
xqmnb(qmnb)
end
function c25()
local addr = readPointer(Re_({108,105,98,105,108,50,99,112,112,46,115,111}), {2376692, 452, 92, 0, 60}, 2)
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
{gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111}))[1].start},
{
{-443219968,4,0xD58874},
{-439349061,4,0xD58878},
{-485425148,4,0xD5887C},
{167772164,4,0xD58880},
{-443543436,4,0xD58884},
})
end

function c22()
local t = {Re_({108,105,98,105,108,50,99,112,112,46,115,111}), Re_({67,100})}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function c21()
qc=gg.alert(Re_({232,182,133,231,186,167,229,176,143,233,163,158,230,156,186}),Re_({233,163,158,230,156,186,229,188,186,229,140,150}),Re_({233,163,158,230,156,186,230,140,129,231,187,173,230,151,182,233,151,180}))
if qc==1 then
NH=gg.prompt({Re_({232,190,147,229,133,165,229,175,188,229,188,185,229,143,145,229,176,132,230,149,176,233,135,143,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,229,175,188,229,188,185,228,188,164,229,174,179,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,229,175,188,229,188,185,232,140,131,229,155,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({}),[2]=Re_({}),[3]=Re_({})})
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({233,163,158,230,156,186,229,188,186,229,140,150})},
      {[Re_({118,97,108,117,101})] = 1085276160, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -28, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -36, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 40, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -196, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -24, [Re_({116,121,112,101})] = 4},
      {[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = NH[3], [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
      {[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -12, [Re_({116,121,112,101})] = 4},
      {[Re_({118,97,108,117,101})] = NH[2], [Re_({111,102,102,115,101,116})] = -16, [Re_({116,121,112,101})] = 4},
    }
    xqmnb(qmnb)
end
if qc==2 then
NH=gg.prompt({Re_({232,190,147,229,133,165,233,163,158,230,156,186,230,140,129,231,187,173,230,151,182,233,151,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({233,163,158,230,156,186,230,140,129,231,187,173,230,151,182,233,151,180})},
      {[Re_({118,97,108,117,101})] = 256, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = 16},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = 40, [Re_({116,121,112,101})] = 16, [Re_({102,114,101,101,122,101})] = true},
    }
    xqmnb(qmnb)
end
end

function c20()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,167,146,232,137,178,228,187,163,231,160,129,40,229,143,175,229,164,154,230,172,161,228,191,174,230,148,185,226,134,147,41})},{[1]=Re_({})})
fastsearch({{429496729602, 32, 32}, {0, -4, 4}, {1, -20, 4}, {1, -24, 4}, {100, 4, 4}}, {{NH[1], 8, 4, true}})
end

function c19()
NH=gg.prompt({Re_({232,190,147,229,133,165,232,166,129,230,148,185,231,154,132,233,146,136,230,148,187,233,128,159,44,229,142,159,229,167,139,229,128,188,45,48,46,50,53,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147}),Re_({232,190,147,229,133,165,232,166,129,230,148,185,231,154,132,233,146,136,231,167,187,233,128,159,44,229,142,159,229,167,139,229,128,188,48,46,49,50,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({45}),[2]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({233,146,136,231,167,187,233,128,159,230,148,187,233,128,159})},
{[Re_({118,97,108,117,101})] = 1084227584, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 32},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 76, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 70, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = NH[2], [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)

NH=gg.prompt({Re_({232,190,147,229,133,165,233,146,136,98,117,102,102,230,151,182,233,151,180,40,229,143,175,232,191,155,232,161,140,229,164,154,230,172,161,228,191,174,230,148,185,41,226,134,147})},{[1]=Re_({})})
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({233,146,136,98,117,102,102,230,151,182,233,151,180})},
{[Re_({118,97,108,117,101})] = 1053609165,[Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 65536, [Re_({111,102,102,115,101,116})] = -60, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1929379840, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = NH[1], [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
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
   },Re_({229,128,146,229,156,176,229,164,141,230,180,187}))
end

function c17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,57,56,59,45,48,46,48,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({48,46,57,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll(Re_({48,46,51}), gg.TYPE_FLOAT)
	 gg.toast(Re_({231,129,171,231,174,173,231,173,146,229,176,132,233,128,159,48,46,51}))
	 gg.clearResults()
end

function c16()--医疗箱变核弹
local t = {Re_({108,105,98,105,108,50,99,112,112,46,115,111,58,98,115,115}), Re_({67,98})}
local tt = {0x1C6D4, 0x40, 0x0, 0x1A0, 0x128}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
end


function c15()
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x17BE0C8},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x17BE0CC},})
end

function c14()--不死捐钱
gg.alert(Re_({230,184,169,233,166,168,230,143,144,231,164,186,239,188,154,229,188,128,229,144,175,230,136,144,229,138,159,229,144,142,233,128,128,229,135,186,232,132,154,230,156,172,229,144,142,230,137,141,230,156,137,230,152,142,230,152,190,230,149,136,230,158,156}))
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,141,230,173,187,230,141,144,233,146,177})},
{[Re_({118,97,108,117,101})] = 37, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -1,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 0,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -1,[Re_({111,102,102,115,101,116})] =24, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 1,[Re_({111,102,102,115,101,116})] =16, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
}
xqmnb(qmnb)
end

function c13()
menu1 = gg.multiChoice({
"逃生秒赢(重写)",
Re_({231,167,146,232,181,162,50,40,229,134,153,230,179,149,228,184,141,229,144,140,41}),
Re_({229,128,146,229,156,176,231,187,147,231,174,151}),
Re_({228,184,128,229,129,165,230,142,167,229,136,134}),
"逃生3s秒赢",
"追捕秒赢",
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({67,89}))
if menu1 == nil then else
if menu1[1] == true then cc10() end
if menu1[2] == true then cc20() end
if menu1[3] == true then cc40() end
if menu1[4] == true then cc30() end
if menu1[5] == true then cc50() end
if menu1[6] == true then cc60() end
if menu1[45] == true then HOME() end
end
GLWW=-1
end

function cc60()
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--夏天

readWrite({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-482081950,1112,4,false},{-516948194,1116,4,false}},4,16384,"追捕秒结算")
readWrite({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"追捕秒结算")
readWrite({{false,184549344,0,4,nil,nil},{-481296384,136,4},{436207635,140,4},{-442564104,144,4}},{{-476053496,112,4,false},{-516948194,116,4,false}},4,16384,"")
readWrite({{false,184548539,0,4,nil,nil},{-481296384,936,4},{436207620,940,4},{-442564508,944,4}},{{-476052411,912,4,false},{-516948194,916,4,false}},4,16384,"")
readWrite({{false,184549345,0,4,nil,nil},{-481296384,156,4},{436207644,160,4},{-442563852,164,4}},{{-476053504,132,4,false},{-516948194,136,4,false}},4,16384,"")
readWrite({{false,184549329,0,4,nil,nil},{-481296384,2956,4},{436207644,2960,4},{-442563276,2964,4}},{{-476053496,2932,4,false},{-516948194,2936,4,false}},4,16384,"")
readWrite({{false,184549350,0,4,nil,nil},{-439091200,112,4},{-481296384,116,4},{436207635,120,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
end

function cc50()--逃生秒结算SSS满分上分一套
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end

function cc40()
so = gg.getRangesList(Re_({108,105,98,105,108,50,99,112,112,46,115,111}))[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = Re_({126,65,32,66,88,32,76,82})
  gg.setValues(tt)
end
function BaseAddressF(address, value)
  local result = {}
  result[1] = {}
  result[1].address = so + address
  result[1].flags = 4
  result[1].value = Re_({126,65,32,77,79,86,87,32,82,48,44,32,35}) .. value
  result[2] = {}
  result[2].address = so + address + 4
  result[2].flags = 4
  result[2].value = Re_({126,65,32,86,77,79,86,32,83,48,44,32,82,48})
  result[3] = {}
  result[3].address = so + address + 8
  result[3].flags = 4
  result[3].value = Re_({126,65,32,86,67,86,84,46,70,51,50,46,83,51,50,32,83,48,44,32,83,48})
  result[4] = {}
  result[4].address = so + address + 12
  result[4].flags = 4
  result[4].value = Re_({126,65,32,86,77,79,86,32,82,48,44,32,83,48})
  result[5] = {}
  result[5].address = so + address + 16
  result[5].flags = 4
  result[5].value = Re_({126,65,32,66,88,32,76,82})
  gg.setValues(result)
end
BaseAddressD(0xD567E8,Re_({126,65,32,77,79,86,32,82,48,44,32,35,49}))
gg.toast(Re_({229,128,146,229,156,176,231,187,147,231,174,151}))
gg.clearResults()
end
function cc30()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,128,233,148,174,230,142,167,229,136,134})},
{[Re_({118,97,108,117,101})] = 2.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 7.0,[Re_({111,102,102,115,101,116})] =-84, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1,[Re_({111,102,102,115,101,116})] =-88, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 257,[Re_({111,102,102,115,101,116})] =-136, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -1.0,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =40, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =48, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =68, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)

qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,128,233,148,174,230,142,167,229,136,134})},
{[Re_({118,97,108,117,101})] = 2.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-12, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 7.0,[Re_({111,102,102,115,101,116})] =-84, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1,[Re_({111,102,102,115,101,116})] =-88, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 257,[Re_({111,102,102,115,101,116})] =-136, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -1.0,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =40, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =48, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 2048,[Re_({111,102,102,115,101,116})] =68, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function cc10()--逃生秒赢[8.12.0]
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

readWrite({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,"逃生秒结算")
readWrite({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,"逃生秒结算")
readWrite({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"逃生秒结算")
readWrite({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,"")
readWrite({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
readWrite({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"")
end

function cc20()--追捕秒赢[8.12.0]
  qmnb = {
    {memory = 32},
    {name = Re_({229,188,186,229,136,182,231,187,147,231,174,151})},
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
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,140,131,229,155,180,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 1.2999999523162842, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 8, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function c2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({228,184,137,229,128,141,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 1.5, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.5,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 3,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function c3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,53,53,48,55,56,49,50,53,59,49,46,48,59,48,46,54,57,57,50,49,56,55,53,59,48,46,53,59,50,46,53,59,48,46,53,59,49,46,48,59,49,46,52,49,53,51,49,49,52,53,101,45,52,51,59,50,53,46,48,59,48,46,50,53,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({48}), gg.TYPE_FLOAT)
	 gg.toast(Re_({230,151,160,232,167,134,229,164,185,229,173,144}))
	 gg.clearResults()
end

function c4()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({51,46,56,229,128,141,231,167,187,233,128,159})},
{[Re_({118,97,108,117,101})] = 2.79999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 20.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 900.0,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 3.8,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function c5()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,177,143,232,148,189,229,188,128,233,148,129})},--不触 /发开锁
{[Re_({118,97,108,117,101})] = 59.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99999,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
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
    {[Re_({109,101,109,111,114,121})] = 32},
    {[Re_({110,97,109,101})] = Re_({231,169,191,229,162,153})},
    {[Re_({118,97,108,117,101})] = -10.0, [Re_({116,121,112,101})] = 16},
    {[Re_({108,118})] = 49.0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
  }
  qmxg = {
    {[Re_({118,97,108,117,101})] = 999999, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},
  }
  xqmnb(qmnb)
end

function c8()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,167,134,233,135,142})},
{[Re_({118,97,108,117,101})] = 6.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 12.0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 24, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function c9()
qmnb = {
{["memory"] = 32},
{["name"] = "路过开物"},
{["value"] = 900.0, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function c10()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,140,131,229,155,180,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 1.2999999523162842, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 8, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)

nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1731454},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731458},})


qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({51,46,54,229,128,141,231,167,187,233,128,159})},
{[Re_({118,97,108,117,101})] = 2.79999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 20.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 900.0,[Re_({111,102,102,115,101,116})] =12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 3.6,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)

qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({51,229,128,141,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 1.5, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.5,[Re_({111,102,102,115,101,116})] =8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 3,[Re_({111,102,102,115,101,116})] =-4, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)

qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({48,230,166,130,231,142,135,232,167,166,229,143,145,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 59.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99999,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)

fastsearch({{1103626240,4,32},{2.5,-12,16},{101,4,4}},{{1500.0,-4,16,false},{0,4,4,false},{-1,0,4},{.0,-12,16}},"夹子锁血+护盾buff+显夹")

nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-476053503,4,0x170ec1c},})
nc_offset(getso(Re_({108,105,98,105,108,50,99,112,112,46,115,111})),{{-516948194,4,0x170ec20},})


qmnb = {
    {memory = 16384},
    {name = Re_({231,136,172,229,162,153})},
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



end

function c11()

     qc=gg.alert(Re_({230,151,160,233,153,144,229,136,183,233,146,177}),Re_({230,140,135,233,146,136}),Re_({228,187,191,120,115}))
if qc==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})

fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
if qc==2 then
qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({52,49,233,148,129})},
      {[Re_({118,97,108,117,101})] = 4489188110528151552, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 100, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
    {[Re_({118,97,108,117,101})] = 1, [Re_({111,102,102,115,101,116})] = 88, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
    {[Re_({118,97,108,117,101})] = 122879, [Re_({111,102,102,115,101,116})] = 92, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
    }
    xqmnb(qmnb)

    qmnb = {
      {[Re_({109,101,109,111,114,121})] = 32},
      {[Re_({110,97,109,101})] = Re_({56,50,233,148,129})},
      {[Re_({118,97,108,117,101})] = 4489188110532608000, [Re_({116,121,112,101})] = 32},
      {[Re_({108,118})] = 256, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
      {[Re_({108,118})] = 100, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
    }
    qmxg = {
      {[Re_({118,97,108,117,101})] = 1, [Re_({111,102,102,115,101,116})] = 88, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
      {[Re_({118,97,108,117,101})] = 184319, [Re_({111,102,102,115,101,116})] = 92, [Re_({116,121,112,101})] = 4, [Re_({102,114,101,101,122,101})] = true},
    }
    xqmnb(qmnb)
end
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

function D()
SN = gg.multiChoice({
Re_({231,129,171,231,174,173,231,173,146,230,148,185}),
Re_({231,150,190,232,183,145,230,148,185}),
"空手刷武器+武器遍历",
"返回主页",},
nil,Re_({231,129,171,231,174,173,231,173,146,230,148,185}))
if SN == nil then else
  if SN[1] == true then xa110() end
  if SN[2] == true then xa120() end
  if SN[3] == true then xa100() end
  if SN[4] == true then HOME() end
end XGCK = -1 end

function xa100()
menu = gg.choice({
'空手刷武器',
'遍历武器',
'返回主页',},
nil,'')
if menu == 1 then FFF() end
if menu == 2 then nmd3() end
if menu == 3 then HOME() end
XGCK=-1
end



function FFF()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})gg.clearList()
end
function xa120()--疾跑改武器
 md=gg.prompt({Re_({32,32,32,32,232,191,171,229,135,187,231,130,174,50,49,48,32,32,229,134,178,233,148,139,230,158,170,50,50,48,32,32,232,131,189,233,135,143,229,137,145,50,52,48,32,32,232,185,166,232,185,166,230,158,170,50,53,48,32,32,232,131,189,233,135,143,231,130,174,50,56,48,32,32,233,156,176,229,188,185,230,158,170,50,57,48,32,32,230,141,162,233,163,142,230,160,135,51,48,48,32,233,156,184,229,164,169,230,150,167,51,49,48,10,232,175,183,232,190,147,229,133,165,233,156,128,232,166,129,228,191,174,230,148,185,231,154,132,233,129,147,229,133,183,229,141,161,226,134,147})},{[1]=Re_({})})
fastsearch({{779514723,4,32},{1632071241,4,4},{20528,32,4},{51200,40,4}},{{md[1],-12,4,false}}) 
end


function xa110()--火箭筒改武器
local tg=gg.prompt({"火箭筒修改武器\n火箭筒:一级100  二级101\n迫机炮:一级110  二级111  三级112\n冲锋枪:一级130  二级131  三级132\n能亮！剑:一级140  二级141  三级142\n蹦蹦枪:一级150  二级151  三级152\n散弹枪:一级190  二级191  三级192\n幻锋镖:一级200  二级201  三级202\n霸天斧:一级210  二级211  三级212\n治疗手枪:10100  电球枪:10160  滋水枪:11130\n变形金刚武器:90100  90200  90300"}, {[1] = 110})
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{
tg[1]*256,13,4}})
end





function F()
menu1 = gg.multiChoice({
Re_({229,165,165,229,141,154,230,148,185,230,147,142,229,164,169,230,159,177}),
Re_({229,165,165,229,141,154,230,148,185,229,164,167,233,187,132,232,156,130}),
Re_({229,165,165,229,141,154,230,148,185,231,131,173,231,160,180}),
Re_({229,165,165,229,141,154,230,148,185,229,168,129,233,156,135,229,164,169}),
Re_({229,165,165,229,141,154,230,148,185,229,163,176,230,179,162}),
Re_({229,165,165,229,141,154,230,148,185,231,186,162,232,156,152,232,155,155}),
Re_({229,165,165,229,141,154,230,148,185,232,191,170,232,191,166}),
Re_({229,165,165,229,141,154,230,148,185,232,181,155,231,189,151}),
Re_({229,165,165,229,141,154,230,148,185,230,179,189,229,161,148}),
Re_({229,155,162,229,173,144,230,148,185,230,147,142,229,164,169,230,159,177}),
Re_({229,155,162,229,173,144,230,148,185,229,164,167,233,187,132,232,156,130}),
Re_({229,155,162,229,173,144,230,148,185,231,131,173,231,160,180}),
Re_({229,155,162,229,173,144,230,148,185,229,168,129,233,156,135,229,164,169}),
Re_({229,155,162,229,173,144,230,148,185,229,163,176,230,179,162}),
Re_({229,155,162,229,173,144,230,148,185,231,186,162,232,156,152,232,155,155}),
Re_({229,155,162,229,173,144,230,148,185,232,191,170,232,191,166}),
Re_({229,155,162,229,173,144,230,148,185,232,181,155,231,189,151}),
Re_({229,155,162,229,173,144,230,148,185,230,179,189,229,161,148}),
Re_({229,185,189,229,166,141,230,148,185,232,135,170,232,176,131}),
Re_({232,191,148,229,155,158,229,168,177,228,185,144}),
}, nil, os.date(Re_({232,167,146,232,137,178,230,148,185,228,184,156,232,165,191,229,138,159,232,131,189})))
if menu1[1] == true then ea1() end
if menu1[2] == true then ea2() end
if menu1[3] == true then ea3() end
if menu1[4] == true then ea4() end
if menu1[5] == true then ea5() end
if menu1[6] == true then ea6() end
if menu1[7] == true then ea7() end
if menu1[8] == true then ea8() end
if menu1[9] == true then ea9() end
if menu1[10] == true then ea10() end
if menu1[12] == true then ea12() end
if menu1[13] == true then ea13() end
if menu1[14] == true then ea14() end
if menu1[15] == true then ea15() end
if menu1[16] == true then ea16() end
if menu1[17] == true then ea17() end
if menu1[18] == true then ea18() end
if menu1[19] == true then ea19() end
if menu1[20] == true then HOME() end
GLWW=-1
end

function ea1()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,147,142,229,164,169,230,159,177})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90001, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,164,167,233,187,132,232,156,130})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90002, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea3()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,131,173,231,160,180})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90003, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea4()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,168,129,233,156,135,229,164,169})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90004, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea5()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,143,152,229,189,162,233,135,145,229,136,154,49})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90005, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea6()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,143,152,229,189,162,233,135,145,229,136,154,49})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90006, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea7()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,191,170,232,191,166})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50001, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea8()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,181,155,231,189,151})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50002, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end
function ea9()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,179,189,229,161,148})},
{[Re_({118,97,108,117,101})] = 1081291571, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 4, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1017, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 573, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50003, [Re_({111,102,102,115,101,116})] = -40, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea10()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,147,142,229,164,169,230,159,177})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90001, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea11()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,164,167,233,187,132,232,156,130})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90002, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea12()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,131,173,231,160,180})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90003, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea13()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,168,129,233,156,135,229,164,169})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90004, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea14()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,163,176,230,179,162})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90005, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea15()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,186,162,232,154,130,232,154,129})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 90006, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea16()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,191,170,232,191,166})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50001, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea17()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,181,155,231,189,151})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50002, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea18()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,179,189,229,161,148})},
{[Re_({118,97,108,117,101})] = 1.29999995232, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1069547520, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1045220557, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 50003, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
end

function ea19()
a = gg.prompt({
      Re_({232,191,170,232,191,166,53,48,48,48,49,10,232,181,155,231,189,151,53,48,48,48,50,10,230,179,189,229,161,148,53,48,48,48,51,10,229,165,165,229,141,154,230,177,189,232,189,166,49,48,51,51,10,229,133,148,229,173,144,49,48,49,52,10,98,111,115,115,231,155,190,51,48,48,10,57,48,48,48,49,230,147,142,229,164,169,230,159,177,10,57,48,48,48,50,229,164,167,233,187,132,232,156,130,10,57,48,48,48,51,231,131,173,231,160,180,10,57,48,48,48,52,229,168,129,233,156,135,229,164,169,10,57,48,48,48,53,229,163,176,230,179,162,10,57,48,48,48,54,231,186,162,232,154,130,232,154,129,10,55,48,48,49,48,231,191,188,233,190,153,10,55,48,48,49,49,229,137,145,233,190,153,10,55,48,48,49,50,228,184,137,232,167,146,233,190,153,10,55,48,48,49,51,232,191,133,231,140,155,233,190,153,10,55,48,48,49,52,233,156,184,231,142,139,233,190,153,10,55,48,48,49,53,232,139,141,233,190,153})
    })
    qmnb = {
      {memory = 32},
      {
        name = Re_({232,157,180,232,157,182,230,138,128,232,131,189})
      },
      {value = 30, type = 16},
      {
        lv = 1035,
        offset = 8,
        type = 4
      }
    }
    qmxg = {
      {
        value = a[1],
        offset = 4,
        type = 4
      }
    }
    xqmnb(qmnb)
  end

function E()
menu = gg.choice({
Re_({231,150,190,232,183,145,98,117,102,102,229,140,186}),
Re_({230,137,139,233,155,183,98,117,102,102,229,140,186}),
Re_({233,133,146,230,161,182,98,117,102,102,229,140,186}),
Re_({230,151,182,229,133,137,98,117,102,102,229,140,186}),
Re_({233,146,136,230,148,185,98,117,102,102,229,140,186}),
Re_({233,173,148,230,179,149,229,162,153,98,117,102,102}),
Re_({232,191,148,229,155,158,228,184,187,233,161,181}),
}, 2022, Re_({98,117,102,102,229,138,159,232,131,189}))
if menu == 1 then i1() end
if menu == 2 then i2() end
if menu == 3 then i3() end
if menu == 4 then i4() end
if menu == 5 then i5() end
if menu == 6 then i6() end
if menu == 7 then Main() end
XGCK=-1
end

function i1()
menu1 = gg.multiChoice({
Re_({231,150,190,232,183,145,230,148,185,98,111,115,115,230,151,160,230,149,140}),
Re_({231,150,190,232,183,145,230,148,185,233,154,143,230,156,186}),
Re_({231,150,190,232,183,145,232,135,170,229,174,154,228,185,137}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({231,150,190,232,183,145,98,117,102,102,229,138,159,232,131,189})))
if menu1 == nil then else
if menu1[1] == true then ia1() end
if menu1[2] == true then ia2() end
if menu1[3] == true then ia3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function ia1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({45,50,53,54,59,45,50,44,49,49,53,44,54,55,50,44,52,55,52,59,54,44,55,53,48,44,50,48,56,59,45,54,53,44,53,51,54,59,54,53,44,53,51,53,59,45,54,53,44,53,51,54,59,49,44,49,48,55,44,50,57,54,44,50,53,54,59,49,44,49,55,52,44,52,48,53,44,49,50,48,59,49,44,50,52,49,44,53,49,51,44,57,56,52,59,49,44,51,48,56,44,54,50,50,44,56,52,56,59,45,57,50,50,44,55,52,54,44,56,56,48,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,44,55,53,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({49,57,44,54,54,48,44,56,48,48}), gg.TYPE_DWORD)
	 gg.toast(Re_({231,150,190,232,183,145,230,148,185,66,111,115,115,230,151,160,230,149,140,10,232,166,129,228,184,141,232,166,129,232,143,160,232,144,157}))
	 gg.clearResults()
end

function ia2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({45,50,53,54,59,45,50,44,49,49,53,44,54,55,50,44,52,55,52,59,54,44,55,53,48,44,50,48,56,59,45,54,53,44,53,51,54,59,54,53,44,53,51,53,59,45,54,53,44,53,51,54,59,49,44,49,48,55,44,50,57,54,44,50,53,54,59,49,44,49,55,52,44,52,48,53,44,49,50,48,59,49,44,50,52,49,44,53,49,51,44,57,56,52,59,49,44,51,48,56,44,54,50,50,44,56,52,56,59,45,57,50,50,44,55,52,54,44,56,56,48,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,44,55,53,48,44,50,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({55,44,48,49,50,44,51,53,50}), gg.TYPE_DWORD)
	 gg.toast(Re_({231,150,190,232,183,145,233,154,143,230,156,186,98,117,102,102}))
	 gg.getResults(999999)
  while true do
      gg.editAll(Re_({49,57,44,54,54,48,44,56,48,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,50,48,56,44,57,54,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,54,56,52,44,54,55,50}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,50,55,52,44,52,57,54}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,49,52,51,44,52,50,52}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,53,53,51,44,54,48,48}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,48,55,55,44,56,56,56}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({49,51,44,53,48,48,44,52,49,54}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({55,44,48,49,50,44,51,53,50}), gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll(Re_({54,44,55,53,48,44,50,48,56}), gg.TYPE_DWORD)
    gg.sleep(205)
  end
end

function ia3()
local SC=gg.prompt({Re_({66,85,70,70,228,187,163,231,160,129,58,10,53,52,55,230,151,182,229,133,137,230,156,186,66,85,70,70,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,49,48,56,232,130,190,228,184,138,232,133,186,231,180,160,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,175,183,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})}, {[1] = 107}, {[1] = Re_({116,101,120,116})})
if SC==nil then os.exit(print(Re_({228,189,160,231,130,185,229,135,187,228,186,134,229,143,150,230,182,136}))) end
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({231,150,190,232,183,145,230,148,185,66,85,70,70,91,232,135,170,232,176,131,93})},
{[Re_({118,97,108,117,101})] = -377313563, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 106147, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 65535, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = -65536, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = SC[1],[Re_({111,102,102,115,101,116})] =10, [Re_({116,121,112,101})] = 1},
}
xqmnb(qmnb)
end
  
function i2()
menu1 = gg.multiChoice({
Re_({230,137,139,233,155,183,230,148,185,230,151,160,230,149,140}),
Re_({230,137,139,233,155,183,230,148,185,231,188,180,230,162,176}),
Re_({230,137,139,233,155,183,233,171,152,232,140,131,229,155,180,48,228,188,164}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({230,137,139,233,155,183,98,117,102,102,229,138,159,232,131,189})))
if menu1 == nil then else
if menu1[1] == true then ib1() end
if menu1[2] == true then ib2() end
if menu1[3] == true then ib3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function ib1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,51,70,59,49,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({51,48,48}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function ib2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({51,51,70,59,49,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,48,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({52,48,51}), gg.TYPE_DWORD)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end

function ib3()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({230,137,139,233,155,183,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 33.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =-124, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.5,[Re_({111,102,102,115,101,116})] =-120, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0,[Re_({111,102,102,115,101,116})] =0, [Re_({116,121,112,101})] = 16},
{[Re_({118,97,108,117,101})] = 5.5,[Re_({111,102,102,115,101,116})] =-124, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end

function i3()
menu1 = gg.multiChoice({
Re_({233,133,146,230,161,182,229,133,168,229,177,143}),
Re_({233,133,146,230,161,182,232,135,170,229,174,154,228,185,137,91,229,133,136,229,188,128,229,133,168,229,177,143,93}),
Re_({233,133,146,230,161,182,232,135,170,229,174,154,228,185,137,91,230,178,161,229,188,128,229,133,168,229,177,143,93}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({233,133,146,230,161,182,98,117,102,102,229,138,159,232,131,189})))
if menu1[1] == true then ic1() end
if menu1[2] == true then ic2() end
if menu1[3] == true then ic3() end
if menu1[4] == true then HOME() end
GLWW=-1
end

function ic1()
local g=os.clock()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber(Re_({50,70,59,51,48,70,58,58,53}), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({57,57,57}), FLOAT)
 gg.clearResults()
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
end

function ic2()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber(Re_({57,57,57,70,59,51,48,70,59,48,46,49,70,59,48,46,50,70,59,50,48,48,68}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,53,52,55,230,151,182,229,133,137,230,156,186,66,85,70,70,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,49,48,56,232,130,190,228,184,138,232,133,186,231,180,160,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
	 end

function ic3()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber(Re_({50,70,59,51,48,70,59,48,46,49,70,59,48,46,50,70,59,50,48,48,68}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50,48,48}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,53,52,55,230,151,182,229,133,137,230,156,186,66,85,70,70,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,49,48,56,232,130,190,228,184,138,232,133,186,231,180,160,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast(Re_({228,191,174,230,148,185,230,136,144,229,138,159}))
	 end
	 
function i4()
menu1 = gg.multiChoice({
Re_({230,151,182,229,133,137,230,156,186,230,148,185,230,151,182,233,151,180}),
Re_({230,151,182,229,133,137,230,156,186,232,135,170,229,174,154,228,185,137}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({230,151,182,229,133,137,230,156,186,98,117,102,102,229,138,159,232,131,189,91,229,133,136,230,148,190,228,184,128,228,184,170,230,151,182,229,133,137,230,156,186,229,134,141,229,188,128,230,151,182,229,133,137,230,156,186,232,135,170,229,174,154,228,185,137,93})))
if menu1[1] == true then id1() end
if menu1[2] == true then id2() end
if menu1[3] == true then HOME() end
GLWW=-1
end

function id1()
fastsearch({{547,4,32},{5, 0x4, 16}},{{2100000000, 0x4, 16}})
end

function id2()
gg.setRanges(32)
	 gg.searchNumber(Re_({48,46,50,48,48,48,48,48,48,48,50,57,56,70,59,48,46,49,48,48,48,48,48,48,48,49,52,57,70,59,53,52,55,59,49,46,51,54,48,48,48,48,48,49,52,51,49,70}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({53,52,55}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,49,48,56,232,130,190,228,184,138,232,133,186,231,180,160,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	  gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
	 end
	 
function i5()
menu1 = gg.multiChoice({
Re_({233,146,136,230,148,185,232,135,170,229,174,154,228,185,137}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({233,146,136,230,148,185,98,117,102,102,229,138,159,232,131,189})))
if menu1[1] == true then ie1() end
if menu1[2] == true then HOME() end
GLWW=-1
end

function ie1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({49,48,56,59,49,48,48,70}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,48,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
	 end
	 
function i6()
menu1 = gg.multiChoice({
Re_({91,229,143,139,93,233,173,148,230,179,149,229,162,153,233,154,143,230,156,186}),
Re_({91,230,149,140,93,233,173,148,230,179,149,229,162,153,233,154,143,230,156,186}),
Re_({91,229,143,139,93,233,173,148,230,179,149,229,162,153,232,135,170,232,176,131}),
Re_({91,230,149,140,93,233,173,148,230,179,149,229,162,153,232,135,170,232,176,131}),
Re_({232,191,148,229,155,158,98,117,102,102}),
}, nil, os.date(Re_({233,173,148,230,179,149,229,162,153,98,117,102,102,229,140,186})))
if menu1 == nil then else
if menu1[1] == true then if1() end
if menu1[2] == true then if2() end
if menu1[3] == true then if3() end
if menu1[4] == true then if4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end

function if1()
gg.setRanges(32)
gg.searchNumber(Re_({53,48,102,59,51,46,55,53,102,59,50,48,50,59,50,48,51,59,48,46,55,102,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll(Re_({49,48,48}), gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll(Re_({49,48,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,55}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,56}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({51,48,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,57}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({51,48,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,53}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,57}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,49,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,50,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,54,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,52,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,54,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,55,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,50,48,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end

function if2()
gg.setRanges(32)
gg.searchNumber(Re_({53,48,102,59,51,46,55,53,102,59,50,48,50,59,50,48,51,59,48,46,55,102,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,51}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll(Re_({49,48,48}), gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll(Re_({49,48,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,55}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,56}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({51,48,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,48,57}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({51,48,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,53}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,57}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,49,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,50,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,48,54}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,54,48}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,52,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({50,48,50}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,54,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({53,55,51}), gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll(Re_({49,49,50,48,49}), gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end

function if3()
gg.setRanges(32)
gg.searchNumber(Re_({53,48,102,59,51,46,55,53,102,59,50,48,50,59,50,48,51,59,48,46,55,102,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,50}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end

function if4()
gg.setRanges(32)
gg.searchNumber(Re_({53,48,102,59,51,46,55,53,102,59,50,48,50,59,50,48,51,59,48,46,55,102,58,58}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50,48,52}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = Re_({66,85,70,70,228,187,163,231,160,129,58,10,49,48,48,230,154,180,232,181,176,66,85,70,70,10,49,48,50,232,183,179,233,171,152,66,85,70,70,10,49,48,51,231,150,190,232,183,145,66,85,70,70,10,49,48,55,230,151,160,230,149,140,66,85,70,70,10,50,48,50,233,173,148,230,179,149,229,162,153,229,138,160,233,128,159,66,85,70,70,10,50,48,54,231,148,159,229,145,189,230,138,164,231,155,190,66,85,70,70,10,51,48,48,66,111,115,115,230,151,160,230,149,140,66,85,70,70,10,51,48,49,66,111,115,115,231,139,130,230,154,180,66,85,70,70,10,53,53,50,229,145,189,231,159,179,232,128,133,230,138,164,231,155,190,229,138,160,233,128,159,66,85,70,70,10,49,48,55,230,151,160,230,149,140,10,10,232,190,147,229,133,165,228,189,160,230,131,179,230,148,185,231,154,132,98,117,102,102})
}, {i = Re_({})})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
end



function Exit()
asd = gg.alert(Re_({229,191,171,231,130,185,232,191,155,231,190,164,239,188,140,228,184,141,231,132,182,229,176,143,229,191,131,230,136,145,99,228,189,160,240,159,144,180}),Re_({233,128,128,229,135,186,232,132,154,230,156,172}),Re_({229,164,141,229,136,182,231,190,164,229,143,183}))
if asd == 1 then os.exit()end
if asd == 2 then gg.copyText(Re_({56,53,54,53,50,53,52,50,48}))end
end


function HOME()
lw=1
Main()
end

cs = Re_({232,191,153,233,135,140,229,143,175,228,187,165,229,161,171,81,81})
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


