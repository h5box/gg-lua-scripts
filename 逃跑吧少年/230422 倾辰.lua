
--防log部分
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
print("操你妈")
os.exit()
end
end
end
--防log部分2
EAG,Tool=gg.searchNumber,nil
InTo,to=string.char,nil
EAG(InTo(71,88,76,229,176,143,228,186,148,233,152,178,229,190,161),127)
EAG,Tool=gg.searchNumber,nil
EAG(InTo(71,88,76,229,176,143,228,186,148))
InTo,to=string.char,nil
EAG,Tool=gg.searchNumber,nil

--防捕捉
local Seabit2=string.char(0,0,0,0)
for i=1,19 do Seabit2=Seabit2..Seabit2 end
function smz()
for s=1,30 do gg.searchNumber(Seabit2) end 
end
function random()
bn={'','＊','<','{/','>'} x=math.random
local e,f,g,h,i=x(1,5),x(1,5),x(1,5),x(1,5),x(1,5)
a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]
return a,b,c,d,e,f,g,h,i end
ss=""
for l=1,4990 do
ss=ss..random()..random()
end
function SOUS(SHUJU)
gg.setVisible(false)
SHUJU=ss..ss..SHUJU..ss
smz()
gg.searchNumber(SHUJU)
gg.setVisible(false) 
end
function GAIS(SHUJU)
local SHUJU=ss..ss..string.char(math.random(1,183))..SHUJU..string.char(math.random(1,176))..ss
gg.editAll(SHUJU,4)
end

local buhuo=gg.makeRequest('http://www.beijing-time.com/').content

 
--定义一张全新的表
rl={}
NZF_io = function(Path, Data)
    local File, Error
    if Data then
        File, Error = io.open(Path, 'w')
        if not File then
            return false, Error
        end
        File:write(Data)
        File:close()
    else
        File, Error = io.open(Path, 'r')
        if not File then
            return false, Error
        end
        Data = File:read('*a')
        File:close()
        return Data
    end
end

--base64加密区

 b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

function Base64en(data)
  return ((data:gsub('.', function(x)
    local r, b='', x:byte()
    for i = 8, 1, -1 do r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and '1' or '0') end
    return r;
  end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
    if (#x < 6) then return '' end
    local c = 0
    for i = 1, 6 do c = c + (x:sub(i, i)=='1' and 2 ^ (6 - i) or 0) end
    return b:sub(c + 1, c + 1)
  end) .. ({ '', '==', '=' })[#data % 3 + 1])
end


--十六进制嵌套调用区

function Decryption(TxT)
		return TxT:gsub(".", function(jia)
			return string.format("%02X", (string.byte(jia)) % 256)
		end):gsub(" ", "+")
	end          

          

--sea1.5二进制编译

function dzsh(Text)
Text=Text:gsub(" ","") 
return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))
end




function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end
local urls = "https://share.weiyun.com/SgsIt0mO" -- 远程链接
local path = "/sdcard/公告.txt"
local data = gg.makeRequest(urls).content
local switch = data:match("【开关】(.-)【开关】")
local Notice = data:match("【公告】(.-)【公告】")
local files = io.open(path, "r")
while switch ~= "开" do
  gg.alert("倾辰关闭此辅助，可能是暂时关闭，也有可能是有更新了！")
  os.exit()
end
if files == nil or files:read("*a") ~= Notice then
  if gg.alert("倾辰跑辅助：\n" .. Notice, "我知道了", "不再提示") == 2 then
    local f=io.open(path, "w")
    f:write(Notice)
    f:close()
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


function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end 
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
function xxs(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
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

function XsAlgorithm(rang, type, features, modify) -- xs模板
  gg.clearResults()
  gg.setRanges(rang)
  gg.searchNumber(features[1][1], 4)
  if gg.getResultsCount() == 0 then
    gg.toast("没有主特征码，请重新尝试。")
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


function gotoPointer(addr) return gg.getValues({{address=addr, flags=4}})[1].value & 0xFFFFFFFF end

a = function(Address, length, useChineseLoad)
		local jump = 0
		local chars, char = {}, {
			address = Address,
			flags = gg.TYPE_BYTE
		}
		if not length then
			repeat
				local _nextchar, _2nextchar
				_char = gg.getValues({char})[1].value
				if (useChineseLoad) then
					if (_char > -28 and _char < -23) then
						_nextchar = gg.getValues({{address = char.address + 0x1, flags=gg.TYPE_BYTE}})[1].value
						if (_nextchar > -128 and _nextchar < -65) then
							_2nextchar = gg.getValues({{address = char.address + 0x2, flags=gg.TYPE_BYTE}})[1].value
							jump = 3
							chars[#chars + 1] = string.char(_char & 0xFF, _nextchar & 0xFF, _2nextchar & 0xFF)
						end
					end
				end
				if (jump > 0) then
					jump = jump - 1
					goto continue
				end
				chars[#chars + 1] = string.char(_char & 0xFF)
				::continue::
				char.address = char.address + 0x1
			until _char == 0
			return table.concat(chars, "", 1, #chars - 1), char.address
		else
			for i = 1, length do
				local _nextchar, _2nextchar
				local _char = gg.getValues({char})[1].value
				if (useChineseLoad) then
					if (_char > -28 and _char < -23) then
						_nextchar = gg.getValues({address = char.address + 0x1, flags=gg.TYPE_BYTE})
						if (_nextchar > -128 and _nextchar < -65) then
							_2nextchar = gg.getValues({address = char.address + 0x2, flags=gg.TYPE_BYTE})
							jump = 3
							chars[i] = utf8.char(_char & 0xFF, _nextchar & 0xFF, _2nextchar & 0xFF)
						end
					end
				end
				if (jump > 0) then
					jump = jump - 1
					goto continue
				end
				chars[i] = utf8.char(_char & 0xFF)
				::continue::
				char.address = char.address + 0x1
			end
			return table.concat(chars), char.address
		end
	end
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber("Q 00 '" .. className .. "' 00", gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print('没有发现类\n请确认是否初始化') end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end 
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.toast('倾辰说开启成功\n共修改: ' .. gg.getResultsCount() .. '个结果') gg.clearResults() end

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

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 

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

function xtb(search, write,name)  
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
		gg.toast(name.."修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("OPEN FAILED")
		end
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
-------配置↑↑↑勿修改-------
-------支持冻结------
---------------------------------------------------------------------------------------
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


bqt={"🍓","🥳","😍","💛","💎","🍀","🍃","🍡","🎉","🔥","✨","💎","💫","💖","🍀"}
local APP=gg.getTargetInfo()
function Main()
  UI = 'Main'
local sjbq=bqt[math.random(1,#bqt)]
bygy = gg.choice({
     sjbq.."防封防闪"..sjbq,--1
     sjbq.."直裝功能"..sjbq,--2
   	 sjbq.."火力区域"..sjbq,--3
   	 sjbq.."恐龙功能"..sjbq,--4
     sjbq.."自调区域"..sjbq,--5
     sjbq.."坐标传送"..sjbq,--6
     sjbq.."逃生稳定"..sjbq,--7
     sjbq.."追捕稳定"..sjbq,--8
     sjbq.."实战美化"..sjbq,--9
     sjbq.."武器连发"..sjbq,--10
     sjbq.."武器功能"..sjbq,--11
     sjbq.."Buff区域"..sjbq,--12
     sjbq.."道具功能"..sjbq,--13
     sjbq.."角色技能"..sjbq,--14
     sjbq.."空手刷枪"..sjbq,--15
     sjbq.."控分秒赢"..sjbq,--16
     sjbq.."自用功能"..sjbq,--17
     sjbq.."换卡功能"..sjbq,--18
     sjbq.."️退出脚本"..sjbq,--19
}, Jt,os.date"倾辰逃跑脚本，除4399其他版本都支持\n祝你玩得愉快❤️❤\n交流群765973036\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n{当前进程}:"..APP.activities[1].label.."  {当前版本}:"..APP.versionName.."")
if bygy then
    Jt=bygy
    _ENV[({"AA","BB","A","NB","CC","DD","EE","pY","ZZ","fv","oil","WQ","JK","JW","Jn","JJ","JO", "IU",  "Exit"})[bygy]]()
 end
end


function AA()
menu = gg.choice({
	 "登陆防闪[登录]",
	 "削弱检测[log开]",
     "xa局内防封",  
     "大厅防封",  
    "防追封[大厅]", 
      "清追封[大厅]",  
	 "️返回主页",
	}, 2023, "请按照上面要求去开防封")
if menu == 1 then so1() end
if menu == 2 then so2() end
if menu == 3 then so3() end
if menu == 4 then so4() end
if menu == 5 then so5() end
if menu == 6 then so5() end
if menu == 7 then Main()end
XGCK=-1
end

function so1()
local t = {"libtersafe2.so", "Cd"}
local tt = {0xA8}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 2147483647}})

local t = {"libBugly-ext.so", "Cd"}
local tt = {0x57C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 2147483647}})

local t = {"libtprt.so", "Cd"}
local tt = {0xFA40}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 2147483647}})
	 
gg.toast("防闪[开启成功]") 
end



function so2()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/33e72c5fd88a5bfae9b09f7dcde8c0c8.lua").content))

end

function so3()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/b62ffd7be51b632646260dc33c4bc5ea.lua").content))

gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";0", gg.TYPE_WORD)
gg.toast("10%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("30%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("50%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("70%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("90%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()


end

function so4()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,712,962", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,037,110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,968,111,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,217,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,159", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,157", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,156", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,151,534", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,430,572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,788,832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,422,437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,235,247", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,708,897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,244", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,040,662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,684,512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,136,032", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,158,138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,984,168,047", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,257", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,350,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,368,932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,727,714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,365,092", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,514,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("注入成功\n\n开始奔放")
gg.clearResults()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x36f4f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x36f4f7c},})
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,700,929,651;1,065,353,216;1,048,576,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,700,929,651", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
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
end
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

function so5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报[一局一开]")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
value = 0
}
})
end
gg.toast("防追封成功")

end

function so6()

gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)

gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.excean.maid/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt")
gg.toast("删除封号残留文件成功")
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.excean.maid/gameplugins/com.bairimeng.dmmdzz.qihoo")
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
	 gg.toast("清追封")
end


function BB()
SN =gg.multiChoice({
"角色全皮[已复]",--1
"锁定金币[已修]",--2
"锁定道具[已复]",--3
"移动开物[已修]",--4
"攻击吸血[已修]",--5
"反弹伤害[修复]",--6
"子弹射速[已复]",--7
"卡屏间隔[已复]",--8
"锁定子弹[已复]",--9
"解锁模式[已复]",--10
"解锁皮肤[已复]",--11
"道具冷却[已复]",--12
"杀死队友[已修]",--13
"免费购物[已修]",--14
"超级不死[已修]",--15
"倒地丢物[修复]",--16
"超级移速[已复]",--17
"武器秒杀[已修]",--18
"解锁道具[修复]",--19
"变身时间[没测]",--20
"裁判模式[没测]",--21
"解锁风格[已修]",--22
"枪枪暴击[已修]",--23
"超级高跳[已修]",--24
"超级透视[已修]",--25
"解锁角色[修复]",--26
"直接开门[已修]",--27
"武器无后[已修]",--28
"不卡无间[已修]",--29
"稳定锁金[已修]",--30
"子弹穿墙[已修]",--31
"无视架子[已修]",--32
"人物爬墙[修复]",--33
"追捕救人[没测]",--34
"无视buff[没测]",--35
"破追捕盾[已修]",--36
"全图踩架[已修]",--37
"变身攻击[已修]",--38
"全图亮透[修复]",--39
"丝血不死[已修]",--40
"A内存间隔[已修]",--41
"超级吸人[没测]",--42
"追捕开锁[修复]",--43
"开门秒逃[没测]",--44
"不掉Buff[没测]",--45
"修改段位[已修]",--46
"满级道具[已修]",--47
"跳跃开物[和谐]",--48
"观战控人[已修]",--49
"穿透伤害[没测]",--50
"自动开锁[已修]",--51
"技能免费[已修]",--52
"技能无冷[已修]",--53
"逃生秒赢[已修]",--54
"追捕秒赢[已修]",--55
"退出脚本",
 },nil,os.date'by.倾辰\n')
  if SN == nil then
  else
  if SN[1] == true then
    c1()
  end
  if SN[2] == true then
   c2()
  end
  if SN[3] == true then
   c3()
  end
  if SN[4] == true then
   c4()
  end
  if SN[5] == true then
   c5()
  end
  if SN[6] == true then
   c6()
  end
  if SN[7] == true then
   c7()
  end
  if SN[8] == true then
   c8()
  end
  if SN[9] == true then
   c9()
  end
  if SN[10] == true then
   c10()
  end
  if SN[11] == true then
   c11()
  end
  if SN[12] == true then
   c12()
  end
  if SN[13] == true then
   c13()
  end
  if SN[14] == true then
   c14()
  end
  if SN[15] == true then
   c15()
  end
  if SN[16] == true then
   c16()
  end
  if SN[17] == true then
   c17()
  end
  if SN[18] == true then
   c18()
  end
  if SN[19] == true then
   c19()
  end
  if SN[20] == true then
   c20()
  end
  if SN[21] == true then
   c21()
  end
  if SN[22] == true then
   c22()
  end
  if SN[23] == true then
   c23()
  end
  if SN[24] == true then
   c24()
  end
  if SN[25] == true then
   c25()
  end
  if SN[26] == true then
   c26()
  end
  if SN[27] == true then
   c27()
  end
  if SN[28] == true then
   c28()
  end
  if SN[29] == true then
   c29()
  end
  if SN[30] == true then
   c30()
  end
  if SN[31] == true then
   c31()
  end
  if SN[32] == true then
   c32()
  end
  if SN[33] == true then
   c33()
  end
  if SN[34] == true then
   c34()
  end
  if SN[35] == true then
   c35()
  end
  if SN[36] == true then
   c36()
  end
  if SN[37] == true then
   c37()
  end
  if SN[38] == true then
   c38()
  end
  if SN[39] == true then
   c39()
  end
  if SN[40] == true then
   c40()
  end
  if SN[41] == true then
   c41()
  end
  if SN[42] == true then
   c42()
  end
  if SN[43] == true then
   c43()
  end
  if SN[44] == true then
   c44()
  end
  if SN[45] == true then
   c45()
  end
  if SN[46] == true then
   c46()
  end
  if SN[47] == true then
   c47()
  end
  if SN[48] == true then
   c48()
  end
  if SN[49] == true then
   c49()
  end
 if SN[50] == true then
   c50()
  end
 if SN[51] == true then
   c51()
  end
 if SN[52] == true then
   c52()
  end
 if SN[53] == true then
   c53()
 if SN[54] == true then
   c54()
  end
 if SN[55] == true then
   c55()
  end
 if SN[56] == true then
   Main()   
  end
end
  XGCK = -1
end
end

function c1()
fastsearch
({{-0.00195311813,16,16384},
{-382906384,-692,4},
{-494030820,-688,4},
},
{
{-516948194,-692,4,false}})
end

function c2()--锁金币--方法名RpcSubCoin
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x3143a6c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3143a70},})
end     

function c3()--锁道具--方法名CostCard
fastsearch
({{-0.00195312232,16,16384},
{-382907280,580,4},
},
{
{-516948194,580,4,false}})
end

function c4()--移动开物--方法名EndUsing
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end

function c5()--攻击吸血--get_BloodSucking
readWrite({{false,295731200,0,4,nil,nil},{-481296384,1932,4},{436207620,1936,4},{-442564508,1940,4}},{{-476052411,1908,4,false},{-516948194,1912,4,false}},4,16384,"攻击吸血")end

function c6()--反弹伤害--方法名get_DamageReflect
fastsearch
({
{-128.00001525879,16,16384},
{-382908368,1260,4}
},
{{-482082800,1260,4},
{-516948194,1264,4,false}})
end

function c7()--基扯改子弹--方法名get_MaxRoundCount
fastsearch
({
{-352321541,4,16384},
{0,4,16},
},
{
{10.5,4,16,false}})
end

function c8()--无间隔--方法名get_CooldownGain
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b13ebc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13ec0},})
end

function c9()--锁子弹--方法名get_CostFree
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end    

function c10()--解锁模式--方法名GetGameModeIsGradeLimit
fastsearch
({{116,4,16384},
{-382908176,-1992,4},
{-494030832,-1988,4},
},
{{-516948194,-1992,4,false}})
end     

function c11()--道具皮肤--方法名OwnCardSkin
fastsearch
({{-0.00048828282,16,16384},
{-382908176,-828,4},
{-494030832,-824,4},
},
{{-516948194,-828,4,false}})
end     

function c12()--道具无CD--方法名GetRemainedCooldownTime
fastsearch
({{-0.00195312256,16,16384},
{-382906896,276,4},
{-494030824,280,4}
},
{{-476053503,276,4},
{-516948194,280,4,false}})
end

function c13()--杀队友
yw=gg.alert("猎杀队友","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end
if yw==2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end
end

function c14()--免费购物--方法名GetCardPrice
yw=gg.alert("超级免费购物","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("免费购物")
	 gg.clearResults()
end
if yw==2 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-5.90295867e21;-2.02910209e20;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT)
	 gg.toast("免费购物关")
	 gg.clearResults()
end
end

function c15()--不死--方法名DamageShield
yw=gg.alert("超级不死","开启","关闭")
if yw==1 then 
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("人物无敌")
	 gg.clearResults()
end
if yw==2 then  
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT)
	 gg.toast("人物无敌关")
	 gg.clearResults()
end
end

function c16()--倒地丢道具--方法名Boolean get_Disabled()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f2eac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f2eac8},})
end

function c17()--超级移速--方法名get_SpeedGain
nc_offset(getso("libil2cpp.so"),{{-476052417,4,0x1b13e18},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13e1c},})
end     

function c18()--武器秒杀--方法名get_Attack
fastsearch--秒杀一切
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end

function c19()--解锁道具--方法名IsOwned
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},})
end

function c20()--无限变身时间--方法名EndShapeShift
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x3c706ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3c706b0},})
end

function c21()--裁判模式--方法名set_PlayingRole
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b13d7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13d80},})
end

function c22()--解锁风格--方法名OwnCardStyle
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b51c68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51c68},})
end

function c23()--枪枪暴击--方法名RealTeammateAttack
gg.alert("局内开启")
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
end

function c24()--超级高跳--方法名get_JumpGain
nc_offset(getso("libil2cpp.so"),{{-476052415,4,0x1b13f50},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13f54},})
end     

function c25()--超级透视--方法名get_IsVisible
yw=gg.alert("超级透视","开启","关闭")
if yw==1 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("128.00001525879;-128.00001525879;0.30000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("超级透视")
	 gg.clearResults()
end
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("128.00001525879;-128.00001525879;-1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.30000001192", gg.TYPE_FLOAT)
	 gg.toast("超级透视关")
	 gg.clearResults()
end
end	

function c26()--全角色--方法名IsOwnCharacter
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
end     

function c27()--直接开门--方法名get_IsOpend
fastsearch
({
{0.00048828166,16,16384},
{-382908368,-988,4},
{0,-352,4}
},
{{-476053503,-988,4},
{-516948194,-984,4,false}})
end

function c28()--无后
yw=gg.alert("超级无后座","开启","关闭")
if yw==1 then 
gg.clearResults()
	gg.setRanges(16384)
	gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("1", gg.TYPE_FLOAT)
	gg.toast("火力无后")
	gg.clearResults()
end     
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;1.0;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00100000005", gg.TYPE_FLOAT)
	 gg.toast("武器无后关闭")
	 gg.clearResults()
end
end

function c29()--全武器间隔--方法名1-get_FireCooldownTime方法名2-get_FireCooldownTimeRatio
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function c30()--稳定锁金--方法名FinishBuy
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f3daec},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3daf0},})
end     

function c31()--子弹穿墙--方法名RpcFinishProjectile
readWrite({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"子弹穿墙")end

function c32()--无视架子--方法名get_IsInvincible
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end

function c33()--无限金币--方法名get_CoinNum
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
end     

function c34()--追捕救人--方法名IsPoliceLike
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdc1ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdc1b0},})
end

function c35()--无视buff--方法名GetBuffById
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54742062e26;-9.38577544e22;-3.69079137e20;-1.50171254e24;-3.68935198e20;-3.68935198e20;-9.39921227e20;-7.16145955e24;-1.30951038e25;-1.30684047e21;-9.4914291e20;-9.40125702e22;-3.70087803e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30951038e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("无视buff")
	 gg.clearResults()
end

function c36()--无视护盾
yw=gg.alert("破追捕盾","开启","关闭")
if yw==1 then
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
if yw==2 then
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
end
end

function c37()--全图踩架
yw=gg.alert("全图踩架","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-382907280;-494030832::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382907280;-494030832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-476053503;-516948194", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end  
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-476053503;-516948194::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-476053503;-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382907280;-494030832", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function c38()--变身攻击--方法名SpawnFireProjectileOrder
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end

function c39()--亮透--方法名get_DisableFogVisual
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end

function c40()--丝血不死--方法名get_IsDying
yw=gg.alert("丝血不死","开启","关闭")
if yw==1 then 
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
if yw==2 then 
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 100.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end
end

function c41()--a内存全武器无间隔
local t = {"libil2cpp.so", "Cd"}
	local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
	local ttt = S_Pointer(t, tt)
	gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end

function c42()--吸人--方法名SetEnablePhysics
nh=gg.alert("基址吸人","开启","关闭")
if nh==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x14D19D8},})
end
if nh==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x14D19D8},})
end
end

function c43()--追捕开锁
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
end

function c44()--开门秒逃--方法名get_Radius
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x4ac39a4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x4ac39a8},})
end     

function c45()--死亡不掉Buff--方法名LocalClearAllBuffAndDebuff
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b1216c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12170},})
end     

function c46()--修改段位
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end

function c47()--满级道具--方法名GetCardLevel
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end     

function c48()--跳跃移动--方法名RpcEndUsing
fastsearch
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})
end

function c49()--观战控人--方法名protected Void Start
yw=gg.alert("观战控人","开启","关闭")
if yw==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd52374},})
end
if yw==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xd52374},})
end
end

function c50()--额外伤害--方法名get_Target
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x38e8240},})
end

function c51()--自动开锁--方法名1--CalculateResult--方法名2--CheckResultable--方法名3--get_CanTrigger
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5ebf8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5eb64},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108+4},})
end

function c52()--角色技能免费--方法名1--get_CoinCost--方法名2--CostCoin
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
end

function c53()--角色技能无冷--方法名1--ReduceCoolingDown--方法名2--CanStartSkill--方法名3--get_ChargeProgress--方法名4--get_Cooldown--方法名5--get_Activating
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

function c54()--逃生秒赢--方法名1--get_GameTime改~A MOV R0, #66, 8;~A BX LR--方法名2--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名3--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名4--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名5--get_IsOpend改~A MOV R0, #1;~A BX LR--方法名6--UpdateMaxLife-Update改~A MOV R0, #0 BX LR
nc_offset(getso("libil2cpp.so"),{{-476,052,414,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfded2c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfded30},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd67f40},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd67f44},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eed014},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eed018},})
end

function c55()--追捕秒赢--方法名1--get_StillPlayingThiefCount改~A MOV R0 #0;~A BX LR--方法名2--get_FinalCapturedThiefCount改~A MOVT R0 #20;~A BX LR--方法名3--get_RemainedThiefCount改~A MOV R0 #0;~A BX LR--方法名4--get_KnockDownNum改~A MOVt R0, #999;~A BX LR--方法名5--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名6--get_GameTime改~A MOVT R0, #17250;~A BX LR--方法名7--get_RealCapturedThiefCount改~A MOV R0 #20;~A BX LR--方法名8--get_SuvivingThiefCount改~A MOV R0 #50;~A BX LR
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


function A()
  SN = gg.multiChoice({
    "火力无隔[局内]",
    "火力锁子弹[全局]",
    "火力无后[全局]",
    "返回脚本"
 }, nil, os.date"倾辰")
  if SN == nil then else
    if SN[1] == true then a() end
    if SN[2] == true then b() end
    if SN[3] == true then c() end
    if SN[4] == true then Main() end
  end
  XGCK = -1
end
function a()
	local t = {"libil2cpp.so", "Cd"}
	local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
	local ttt = S_Pointer(t, tt)
	gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function b()
	nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1BA4524},})
	nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1BA4528},})
end
function c()
	gg.clearResults()
	gg.setRanges(16384)
	gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("1", gg.TYPE_FLOAT)
	gg.toast("火力无后")
	gg.clearResults()
end


function NB()
menu1 = gg.multiChoice({
'吼吼号实体变身',
'阻挡箱实体变身',
'跳高实体变身',
'疾跑实体变身',
'皮卡实体变身',
'滑板实体变身',
"变身道具卡无间隔",
"霸王龙无冷却",
"剑龙无冷却",
"皮卡变霸王龙",
"霸王龙一套",
"皮卡改苍龙",
"苍龙一套",
"苍龙时间",
"三角龙无冷却",
'退出'},
nil,'倾辰')
if menu1 == nil then else
if menu1[1] == true then r1() end
if menu1[2] == true then r2() end
if menu1[3] == true then r3() end
if menu1[4] == true then r4() end
if menu1[5] == true then r5() end
if menu1[6] == true then r6() end
if menu1[7] == true then r7() end
if menu1[8] == true then r8() end
if menu1[9] == true then r9() end
if menu1[10] == true then r10() end
if menu1[11] == true then r11() end
if menu1[12] == true then r12() end
if menu1[13] == true then r13() end
if menu1[14] == true then r14() end
if menu1[15] == true then r15() end
if menu1[16] == true then Main() end
end
GLWW=-1
end
function r7()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x18EF558},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x18EF55C},})
end

function r1()
QQ=gg.prompt({"输入变身代码↓翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
function r2()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r4()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function r5()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({"输入变身代码翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function r6()
QQ=gg.prompt({"翼龙70010  \n三角龙70011 \n 剑龙70012 \n 迅猛龙70013  \n霸王龙70014  \n苍龙70015  \n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end


function r8()
xtnb({{false,1.3872854796815689E-43,4,16,nil,nil},{3.0,12,16},{3.0,20,16}},{{0.01,0,16,false}},16,32,"霸王龙攻击无冷却")
end
function r9()
gg.setRanges(32)
	 gg.searchNumber("7;20D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function r10()
gg.setRanges(32)
	 gg.searchNumber("1.5;35D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function r11()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70014+65536, 10, 2, false}})
	 end
	 
function r12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end
	 
  function r13()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70015+65536, 10, 2, false}})
	 end

function r14()
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
    
function r15()
fastsearch({{256, 4, 32}, {0, -4, 4}, {1065353216, 4, 4}, {0, 8, 4}, {0, 36, 4}, {0.5, 40, 16}, {0, 48, 4}}, {{NH[1], 52, 16, true}})
end

function CC()
menu1 = gg.multiChoice({
"开锁",
"移速",
"高跳",
"视野范围",
"全局加速",
"自身血量",
"部分武器连发",
"医疗箱范围",
"手榴弹伤害",
"手榴弹范围",
"皮卡时间",
"治疗球血量",
"治疗球时间",
"逃生回血速度",
"火箭筒子弹",
"火箭筒伤害",
"蝴蝶改东西",
"医疗箱改东西",
"传送门距离",
"范围拆箱夹",
"皮卡改东西",
"改武器",
"改钻石",
"改动作",
"改文字",
"疾跑buff",
"酒桶buff",
"时光机buff",
"针buff",
"腕炮攻击范围",
"道具投掷范围",
"上帝视角",
"队友回血范围",
"能量碗炮伤害范围",
"冲锋枪连发",
"蹦蹦枪连发",
"能量剑连发",
"巡逻犬伤害",
"返回",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then d16() end
if menu1[17] == true then d17() end
if menu1[18] == true then d18() end
if menu1[19] == true then d19() end
if menu1[20] == true then d20() end
if menu1[21] == true then d21() end
if menu1[22] == true then d22() end
if menu1[23] == true then d23() end
if menu1[24] == true then d24() end
if menu1[25] == true then d25() end
if menu1[26] == true then d26() end
if menu1[27] == true then d27() end
if menu1[28] == true then d28() end
if menu1[29] == true then d29() end
if menu1[30] == true then d30() end
if menu1[31] == true then d31() end
if menu1[32] == true then d32() end
if menu1[33] == true then d33() end
if menu1[34] == true then d34() end
if menu1[35] == true then d35() end
if menu1[36] == true then d36() end
if menu1[37] == true then d37() end
if menu1[38] == true then d38() end
if menu1[38] == true then d399() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function d1()--开锁[自调]
local fy=gg.prompt({"开锁[自调]"}, {[1] = 3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d2()--移速[自调]
local fy=gg.prompt({"移速[自调]"}, {[1] = 3.5}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d3()--高跳[自调]
local fy=gg.prompt({"高跳[自调]"}, {[1] = 6.8}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d4()--视野范围[自调]
local fy=gg.prompt({"视野范围[自调]"}, {[1] = 15}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 10.0,["offset"] =-0x20, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d5()--全局加速[自调]
local fy=gg.prompt({"全局加速[自调]"}, {[1] = 1.2}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 4},
{["name"] = "全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function d6()--自身血量[自调]
local fy=gg.prompt({"自身血量[自调]"}, {[1] = 1200}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "自身血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-20, ["type"] = 16},
{["value"] = fy[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function d7()--部分武器连发[自调]
gh=gg.alert("部分武器连发","开启","恢复")
if gh==1 then 
  local fy=gg.prompt({"输入你想要改的连发"}, {[1] =0 }, {[1] = "text"})
  if fy==nil then os.exit(print("取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[开]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if gh==2 then 
  local gh=gg.prompt({"输入你当前的连发"}, {[1] =0 }, {[1] = "text"})
  if gh==nil then os.exit(print("取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[关]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = gh[1], ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function d8()--医疗箱范围[自调]
local fy=gg.prompt({"医疗箱范围[自调]"}, {[1] = 1.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d9()--手榴弹伤害[自调]
local fy=gg.prompt({"手榴弹伤害[自调]"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d10()--手榴弹范围[自调]
local fy=gg.prompt({"手榴弹范围[自调]"}, {[1] = 2.3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的皮卡时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("皮卡时间")
gg.clearResults()
end

function d12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的治疗球血量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("治疗球血量")
gg.clearResults()
end

function d13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("168;6;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的治疗球存在时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("治疗球时间")
gg.clearResults()
end

function d14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1.5;10::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的逃生回血速度"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("逃生回血速度")
gg.clearResults()
end

function d15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4D;3F;0.8F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的火箭筒子弹数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("火箭筒子弹")
gg.clearResults()
end

function d16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的火箭筒伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("火箭筒伤害")
gg.clearResults()
end

function d17()
    a = gg.prompt({
      "迪迦50001\n赛罗50002\n泽塔50003\n奥博汽车1033\n兔子1014\nboss盾300"
    })
    qmnb = {
      {memory = 32},
      {
        name = "蝴蝶技能"
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

function d18()
local fy=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱"},
{["value"] = 1007, ["type"] = 4},
{["lv"] = 37,["offset"] =0x4, ["type"] = 4},
{["lv"] = 3,["offset"] =-0x10, ["type"] = 4},
{["lv"] = 8,["offset"] =-0x18, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =-0x20, ["type"] = 4},
}
xqmnb(qmnb)
end

function d19()
    gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要的距离"
}, {i = ""})
	 gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("传送门长度开启成功")
	 gg.clearResults()
end

function d20()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;0.2;1;1D;10D;1D;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
    gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(104)
  fw = gg.prompt({
    i = "修改拆箱子和夹子的范围"
  }, {i = "5.00"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("范围拆箱夹开启成功")
end

function d21()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
    i = "医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子\n70500015 苍龙\n70500014 霸王龙\n70500013 迅猛龙\n70500012 剑龙\n70500011 三角龙\n70500010 翼龙"
  }, {i = "70500012"})
	 gg.editAll(fw.i, gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function d22()
fastsearch({
      {
        779514723,
        4,
        32
      },
      {
        1632071241,
        4,
        4
      },
      {
        64048,
        32,
        4
      },
      {
        25600,
        40,
        4
      }
    }, {
      {
        gg.prompt({
          "迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300\n10160 能量球\n11130 滋水枪\n11150 蹦蹦枪\n10140 像素剑\n10130 霰弹枪\n10170 盾位攻击\n10150 回旋镖\n10100 加血枪\n12130 自动手枪\n\n🔥请输入需要修改的武器[也可以改其他的]🔥"
        }, {
          [1] = ""
        })[1],
        -12,
        4,
        false
      }
    })
  end
  
function d23()
mx= gg.prompt({[1]="[只能看不能用]请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("修改不了，重进试试")os.exit()end
    gg.getResults(100)
    gg.editAll("114514",gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end

function d24()
_ENV["gg"]["clearResults"]()
_ENV["gg"]["setRanges"](32)
a = _ENV["gg"]["prompt"]({"招手：\n960001 雇佣兵·招手\n960011 失忆者·招手\n960021 女特工·招手\n960031 小学妹·招手\n960041 机器人·招手\n960051 魔术师·招手\n960571 发明家·招手\n\n嘲讽：\n960061 雇佣兵嘲讽\n960071 失忆者嘲讽\n960081 女鬼嘲讽\n960101 小学妹嘲讽\n960101 机器人嘲讽\n960111 魔术师嘲讽\n\n一个真正的鳗：\n960241 雇佣兵·打篮球\n960251 失忆者·打篮球\n960261 雇佣兵·篮球之舞\n960271 失忆者·篮球之舞\n\n星耀动作加引体向上：\n961351 洛杰星耀\n963561 洛杰星轮[大厅]\n961191 学妹星耀1\n961201 艾克星耀\n961211 狐狸星耀\n961361 雇佣兵星耀\n963571 雇佣兵星轮[大厅]\n961371 女鬼星耀\n961711 梦魇星耀\n961721 发明家星耀\n961731 学妹星耀2\n962701 引体向上\n963781 大黄蜂出场\n\n电摇动作：\n960691 失忆者·应援boy\n960701 女特工·演唱女王\n960681 雇佣兵·摇滚贝斯\n960731 发明家·我为歌狂\n961881 关起来\n961041 贵族风度\n960921 来口西瓜\n960431 花式倒立\n960441 侧滑拳击\n960461 滑步登场\n960491 独轮车\n960551 闪耀登场\n962901 终极闪耀赛罗变身\n962331 怪兽登场\n961941 海上豪杰\n962931 贝利亚变身\n962491 月兔奔月\n960931 冲浪达人", "↑修改前\n↓修改后"}, {"", ""}, {"text", "text"})
if a == nil then
_ENV["gg"]["alert"]("有数值为空")
end
if a[1] == nil then
_ENV["gg"]["alert"]("有数值为空")
end
if a[2] == nil then
_ENV["gg"]["alert"]("有数值为空")
end
_ENV["gg"]["searchNumber"](a[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
b = _ENV["gg"]["getResultCount"]()
_ENV["gg"]["getResults"](b)
_ENV["gg"]["editAll"](a[2], gg.TYPE_DWORD)
end

function d25()
a=gg.prompt({"文字↓","改之后的文字↓[某清的[我懒得搞脚本]"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
gg.toast("修改成功[刷新看一下吧]")
gg.clearResults()
end

function d26()
local SC=gg.prompt({"BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n请输入你想改的buff"}, {[1] = 107}, {[1] = "text"})
if SC==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改BUFF[自调]"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = SC[1],["offset"] =10, ["type"] = 1},
}
xqmnb(qmnb)
end

function d27()
gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("修改成功")
	 end

function d28()
gg.setRanges(32)
	 gg.searchNumber("0.20000000298F;0.10000000149F;547;1.36000001431F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	  gg.toast("开启成功")
gg.clearResults()
	 end

function d29()
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

function d30()
local xt=gg.prompt({"腕炮攻击范围"}, {[1] = 1.1}, {[1] = "text"})
readWrite({{false,0.20000000298023224,12,16,nil,nil},{0.009999999776482582,40,16},{0.009999999776482582,44,16},{0.10000000149011612,56,16}},{{xt[1],0,16,false}},16,32,"腕炮")end

function d31()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('6;6:5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('6;6',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的投掷范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end

function d32()
local fy=gg.prompt({"上帝视角[自调]"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "上帝视角"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function d33()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改回血范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function d34()
gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("5F;1F;0F;1D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1F", gg.TYPE_FLOAT, false,   gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
fw = gg.prompt({
i = "请输入你想要改的能量碗炮范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("成功")
end

function d35()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,092,616,192;4;6;1,066,192,077;1,075,838,976;1,056,964,608::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你要的连发数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("冲锋枪连发")
gg.clearResults()
end

function d36()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-4,787,506,546,675,327,959;0;200::", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_QWORD)
gg.toast("初始化蹦蹦枪")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,113,587,712;1;1,066,192,077;1,077,936,128::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你要的连发数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("蹦蹦枪连发")
gg.clearResults()
end

function d37()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,115,947,008;5;1;1,066,192,077;1,075,838,976::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你要的连发数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("能量剑连发")
gg.clearResults()
end

function d38()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10D;12D;18F;200F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的巡逻犬伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end


function DD()
menu1 = gg.multiChoice({
"🍱4V1传送🍱",
"🍔8V2传送🍔",
"🍘返回界面🍘",
}, nil, os.date("传送功能，非常稳定，8.14.1能用"))
if menu1 == nil then else
if menu1[1] == true then R1() end
if menu1[2] == true then R2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function R1()
menu1 = gg.multiChoice({
"🚗出生点🚗",--1
"🚕禁闭室🚕",--2
"🚙逃生点🚙",--3
"🚌左上锁🚌",--4
"🚎左下锁🚎",--5
"🏎️右上锁🏎️",--6
"🚓右下锁🚓",--7
"🚑上门🚑",--8
"🚒下门🚒",--9
"🚐返回主页🚐",--10
}, nil, os.date("4V1传送"))
if menu1 == nil then else
if menu1[1] == true then k1() end
if menu1[2] == true then k2() end
if menu1[3] == true then k3() end
if menu1[4] == true then k4() end
if menu1[5] == true then k5() end
if menu1[6] == true then k6() end
if menu1[7] == true then k7() end
if menu1[8] == true then k8() end
if menu1[9] == true then k9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end

function k1()
fastsearch({{0.3749999702,16,32},{-10,-152,16}},{{3.31672906876,-212,16},{15.10242652893,-204,16}}) 
end

function k2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{41.2279510498,-212,16},{15.20110321045,-204,16}}) 
end

function k3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.47306060791,-212,16},{15.10242652893,-204,16}}) 
end

function k4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
end

function k5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}}) 
end

function k6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
end

function k7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
end

function k8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function k9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.5991897583,-212,16},{10.4521522522,-204,16}})
end

function R2()
menu1 = gg.multiChoice({
"🚚出生点🚚",--1
"🚛禁闭室🚛",--2
"🚜逃生点🚜",--3
"🛴锁1🛴",--4
"🚲锁2🚲",--5
"🛵锁3🛵",--6
"🏍️锁4🏍️",--7
"🚔锁5🚔",--8
"🚍锁6🚍",--9
"🚘锁7🚘",--10
"🚖锁8🚖",--11
"🚡锁9🚡",--12
"🚠锁10🚠",--13
"🚟上门🚟",--14
"🚂中门🚂",--15
"🛬下门🛬",--16
"⚠️返回主页⚠️",--17
}, nil, os.date("8V2传送"))
if menu1 == nil then else
if menu1[1] == true then k10() end
if menu1[2] == true then k11() end
if menu1[3] == true then k12() end
if menu1[4] == true then k13() end
if menu1[5] == true then k14() end
if menu1[6] == true then k15() end
if menu1[7] == true then k16() end
if menu1[8] == true then k17() end
if menu1[9] == true then k18() end
if menu1[10] == true then k19() end
if menu1[11] == true then k20() end
if menu1[12] == true then k21() end
if menu1[13] == true then k22() end
if menu1[14] == true then k23() end
if menu1[15] == true then k24() end
if menu1[16] == true then k25() end
if menu1[17] == true then Main() end
end
GLWW=-1
end

function k10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end

function k11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end

function k12()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end

function k13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end

function k14()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end

function k15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end

function k16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end

function k17()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end

function k18()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end

function k19()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end

function k20()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end

function k21()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end

function k22()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end

function k23()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end

function k24()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function k25()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end



function EE()
UI = "EE"
local menu = gg.multiChoice({
"加速开锁[局内]",
"无视破译[局内]",
"视野范围[局内]",
"人物移速[局内]",
"人物穿墙[局内]",
"无视架子[局内]",
"人物爬墙[局内]",
"人物透视[局内]",
"倒地复活[局内]",
"人物高跳[局内]",
"范围开锁[局内]",
"移动开物[全局]",
"刷钱",
"停止刷钱",
"️返回主页️",
}, nil, "逃生功能")
if menu then
for b in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","Main",})[b]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function s1()

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
xqmnb(qmnb)--三倍开锁
end

function s2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,177,143,232,148,189,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 59.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99999,[Re_({111,102,102,115,101,116})] =20, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)--0概率

end

function s3()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,167,134,233,135,142})},
{[Re_({118,97,108,117,101})] = 6.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 12.0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 24, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)--视野范围
end

function s4()
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
xqmnb(qmnb)--加速
end

function s5()
fastsearch({
     {-10, 16, 32},
     {49.0, 20, 16}, 
   }, {
      {999999, 0, 16, false},
   },"人物穿墙")
   
end

function s6()
   fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
end

function s7()
  fastsearch({
     {-7.16145954789978E24,16,16384},
     {0.949999988079071, 4, 16}, 
     {4.379627278394057E-36, 8, 16}, 
   }, {
      {-1, 4, 16, false},
   },"人物爬墙")
end

function s8()
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function s9()
   fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end



function s10()
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

function s11()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({232,140,131,229,155,180,229,188,128,233,148,129})},
{[Re_({118,97,108,117,101})] = 1.2999999523162842, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 8, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)--范围开锁
end

function s12()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物')
end
function s13()
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
function s14()
gg.clearList()
gg.toast("停止刷米")
end
function pY()
UI = "pY"
local menu = gg.multiChoice({
"移速自调[稳定]",
"3.8倍移速[稳定]",
"穿墙[稳定]",
"全局内透[不封]",
"视角[自调]",
"追捕刷钱[稳定]",
"️返回主页️",
}, nil, "都在局内开才有效果\n祝你奔放愉快\n作者只想稳..")
if menu then
for i in pairs(menu) do
_ENV[({"F1","F2","F3","F4","F5","F6","Main"})[i]]()
  end
 end 
end
function F1()
local fy=gg.prompt({"移速[自调]"}, {[1] = 3.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end


function F2()
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


function F3()
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

function F4()
if gg.getRangesList("libil2cpp.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0xD571E0; 
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 16,
			value = -1,
		},
	})
	gg.toast("全局内透开启成功")
end
end

function F4()
tg=gg.prompt({i='请输入要修改的视角大小'}, {i='23'})
qmnb = {
{["memory"] = 32},
{["name"] = "视角自调"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = tg["i"],["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end
function F5()
fastsearch({
     {4489188110528151552, 32, 32},
     {256, 20, 4},
     {100, 24, 4},
   }, 
   {{1, 88, 4, true},
    {122879,92,4,true},},"追捕刷钱")
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end


function ZZ()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601211',gg.TYPE_DWORD)
gg.toast("疾跑美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500002',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600971',gg.TYPE_DWORD)
gg.toast("皮卡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500003',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600251',gg.TYPE_DWORD)
gg.toast("侦查眼美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500004',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600906',gg.TYPE_DWORD)
gg.toast("手雷美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500005',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602006',gg.TYPE_DWORD)
gg.toast("医疗箱美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500006',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600116',gg.TYPE_DWORD)
gg.toast("跳高美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500007',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601981',gg.TYPE_DWORD)
gg.toast("生命护盾美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500008',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602026',gg.TYPE_DWORD)
gg.toast("阻挡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650631',gg.TYPE_DWORD)
gg.toast("美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602126',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601691',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602106',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602021',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601776',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602011',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500900',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602111',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601676',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601696',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601836',gg.TYPE_DWORD)
gg.toast("开启成功")gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500010',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒1级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500011',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒2级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500012',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒3级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500021',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500022',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500030',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500031',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500032',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500041',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500042',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500050',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500051',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500052',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500060',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500061',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500062',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500070',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500071',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500072',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪3美化成功")
gg.toast("一键美化成功")
end

function fv()
UI = "p"
local menu = gg.multiChoice({
'霸天斧连发',
'冲锋枪连发',
'自动手枪连发',
'能量剑连发',
'能量炮连发',
'火箭筒连发',
'蹦蹦枪连发',
'乱斗火箭筒连发',
'电球枪连发',
'盾卫连发',
'红蜘蛛炮连发',
'唤风镖连发',
'回旋镖连发',
'迫击炮连发',
'热破炮连发',
'散弹枪连发',
'生物手枪连发',
'圣女连发',
'威整天炮连发',
'像素剑连发',
'水枪连发',
"️返回主页️",
}, nil, "连发功能[温馨提示：乱斗稳定]")
if menu then
for i in pairs(menu) do
_ENV[({"p1","p2","p3","p4","p5","p6","p7","p8","p9","p10","p11","p12","p13","p14","p15","p16","p17","p18","p19","p20","p21","Main",})[i]]()
  end
 end 
end


--------------------------------------------------------------------------------------------------------------
function p1()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function p2()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function p3()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function p4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function p5()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function p6()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function p7() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function p8()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function p9()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function p10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function p11()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function p12()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function p13()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function p14()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a15()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function p17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function p18()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function p19()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function p20()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function p21()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end


function oil()
menu1 = gg.multiChoice({
"碗炮范围",--1
"威正天炮范围",--2
"威正天炮射程",--3
"迫击炮范围",--4
"迫击炮射程",--5
"碗炮射程",--6
"功能",--7
"返回",
}, nil, os.date("倾辰"))
if menu1 == nil then else
if menu1[1] == true then sn1() end
if menu1[2] == true then sn2() end
if menu1[3] == true then sn3() end
if menu1[4] == true then sn4() end
if menu1[5] == true then sn5() end
if menu1[6] == true then sn6() end
if menu1[7] == true then sn7() end
if menu1[8] == true then Main() end
end
GLWW=-1
end


function sn1()
a=gg.prompt({"能量腕炮范围"})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("能量腕炮范围修改为"..a[1])
end

function sn2()
nh({{1114636288, 32, 32}, {0.800000011920929, -76, 16}, {1065353216, -32, 4}, {1071225242, -24, 4}, {1056964608, -20, 4}, {1062836634, -12, 4}, {2.5, 12, 16}, {90200, 16, 4}, {1070386381, -36, 4}}, {{5, -36, 16, false}})
end


function sn3()
 nh({{4333543705419175690, 32, 32}, {7.5, -16, 16}, {0.05999999865889549, -12, 16}, {0.009999999776482582, 4, 16}, {1008981770, 8, 4}, {1028443341, 16, 4}}, {{66, -16, 16, false}})

end

function sn4()
NH=gg.prompt({"输入迫击炮范围(可进行多次修改)↓"},{[1]=""})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{NH[1], -36, 16, false}})
end

function sn5()
NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function sn6()
NH=gg.prompt({"输入腕炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1045220557, 4, 32}, {1, -8, 4}, {0, 4, 4}, {0, 16, 4}, {0.009999999776482582, 28, 16}, {0.009999999776482582, 32, 16}, {0.009999999776482582, 36, 16}, {0.10000000149011612, 44, 16}, {0, 56, 4}}, {{NH[1], -12, 16, false}})
end


function WQ()
UI = "WQ"
menu1 = gg.multiChoice({
"[友]魔法墙随机[局内]",
"[敌]魔法墙随机[局内]",
"[友]魔法墙自调[局内]",
"[敌]魔法墙自调[局内]",
"[局内]疾跑随机buff[局内]",
"[局内]队友全死",
"[局内]原地自杀",
"[自调]疾跑buff[局内]",
"返回buff",
}, nil, os.date("魔法墙buff区"))
if menu1 == nil then else
if menu1[1] == true then if1() end
if menu1[2] == true then if2() end
if menu1[3] == true then if3() end
if menu1[4] == true then if4() end
if menu1[5] == true then if5() end
if menu1[6] == true then if6() end
if menu1[7] == true then if7() end
if menu1[8] == true then Q2() end
end
GLWW=-1
end

function if1()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll("100", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("102", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("103", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("107", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("108", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("300", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("109", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("110", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("111", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("113", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("206", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("301", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("505", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("509", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("510", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("522", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("560", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("542", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("561", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("573", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("11201", gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end

function if2()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll("100", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("102", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("103", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("107", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("108", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("300", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("109", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("110", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("111", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("113", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("206", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("301", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("505", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("509", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("510", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("522", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("560", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("542", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("561", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("573", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("11201", gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end

function if3()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast("开启成功\n倾辰牛逼")
gg.clearResults()
end

function if4()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function if5()
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

function if6()
X(32,{{0.30000001192092896,0x0},{100.0,-0x4},{200.0,0x10},},{{0,-0x8},},16,"队友全死")
end
function if7()
gg.toast(so({"原地自杀",4510805389612679168,32,32},{{100,0,16},{100,-4,16},{200,20,16},{4812096202965778432,-4,32}},{{0,-4,16}}))
end

function Q2()
local SC=gg.prompt({"BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n请输入你想改的buff"}, {[1] = 107}, {[1] = "text"})
if SC==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改BUFF[自调]"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = SC[1],["offset"] =10, ["type"] = 1},
}
xqmnb(qmnb)
end

function JK()
menu1 = gg.multiChoice({
"道具卡范围[局内]",
"刷钱局内]",
"不死捐钱[局内]",
"全图禁闭室[局内]",
"医疗箱改局内]",
"返回buff",
}, nil, os.date("魔法墙buff区"))
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then Main() end
end
GLWW=-1
end
function f1()
  SN = gg.multiChoice({
  "手雷秒杀",--1
  "手雷全屏",--2
  "医疗箱范围",--3
  "酒桶范围",--4
  "酒桶射速",--5
  "拳套定人",--6
  "医疗箱释放范围",--7
  "传送门范围",--8
"退出脚本"
}, nil, "zero")
  if SN[1] == true then a() end
  if SN[2] == true then b() end
  if SN[3] == true then c() end
  if SN[4] == true then d() end
  if SN[5] == true then e() end
  if SN[6] == true then f() end
  if SN[7] == true then g() end
  if SN[8] == true then a1() end
  if SN[9] == true then Main() end XGCK = -1 end
     

function a()
qmnb = {
{["memory"] = 32},
{["name"] ="手雷秒杀"},
{["value"] =4629841154425225216, ["type"] = 32},
{["lv"] = 3.0078125, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =999999, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end


function b()
qmnb = {
{["memory"] = 32},
{["name"] ="手雷全屏"},
{["value"] =4612811918334230528, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = 72, ["type"] = 64},
 }
qmxg = {
{["value"] =999999, ["offset"] = 72, ["type"] = 64},
}
xqmnb(qmnb)
end

--1.89999997616
function c()
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =3.6, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end



function d()
qmnb = {
{["memory"] = 32},
{["name"] ="范围"},
{["value"] =4619567317775286272, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = -356, ["type"] = 16},
 }
qmxg = {
{["value"] =9999, ["offset"] = -356, ["type"] = 16},
}
xqmnb(qmnb)
end



function e()
qmnb = {
{["memory"] = 32},
{["name"] ="范围"},
{["value"] =4619567317775286272, ["type"] = 32},
{["lv"] = 2.4375, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =2.71875, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function f()
qmnb = {
{["memory"] = 32},
{["name"] ="拳套定人"},
{["value"] =4616752568008179712, ["type"] = 32},
{["lv"] = 2.28125, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =0, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end

function g()
qmnb = {
{["memory"] = 32},
{["name"] ="释放范围"},
{["value"] =4618441417868443648, ["type"] = 32},
{["lv"] = 2.375, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =9.0, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end


function a1()
qmnb = {
{["memory"] = 32},
{["name"] ="传送门范围"},
{["value"] =4617315517961601024, ["type"] = 32},
{["lv"] = 2.3125, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =20, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end


function f2()


  end
function f3()--不死捐钱
qmnb = {
      {["memory"] = 32},
      {["name"] = "不死捐钱"},
      {["value"] = 37, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 16, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 32, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 40, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
end 

function f4()--全图禁闭室
fastsearch({{100.0,16,32},{0.30000001192092896,4,16}},{{9999,4,16,false}})
end


function f5()


local xt=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 0})
zn({{false,2303,0,4,nil,nil},{-256,-4,4},{1073741824,4,4}},{{xt[1]*256,-8,4,false}},4,32,"医疗箱")
end

function JW()
menu1 = gg.multiChoice({
"全角色技能免费(大厅)",
"全角色技能冷却(大厅)",
"影之忍者技能攻击范围(局内)",
"影之忍者锁技能+无间隔+免费（局内）",
"小狮子全屏+秒杀+免费（局内）",
"奥博范围攻击(局内)",
"奥博电机时间(局内)",
"返回界面",
}, nil, os.date("8.14.1可以用，非常稳定，角色功能几乎不封"))
if menu1 == nil then else
if menu1[1] == true then M1() end
if menu1[2] == true then M2() end
if menu1[3] == true then M3() end
if menu1[4] == true then M4() end
if menu1[5] == true then M5() end
if menu1[6] == true then M6() end
if menu1[7] == true then M7() end
if menu1[8] == true then Main() end
end
GLWW=-1
end

function M1()
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
{-516948194,-572,4,false},
}, "全角色技能免费")
end

function M2()
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
{-516948194,-532,4,false},
}, "全角色技能冷却")
end

function M3()
local xt=gg.prompt({"影之忍者攻击范围"}, {[1] = 10}, {[1] = "text"})
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,"范围")
end

function M4()
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,"满级影之忍者")
end

function M5()--狮子
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害＋免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-24, ["type"] = 16},
{["value"] = 1,["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-20, ["type"] = 16},
{["value"] = 1.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function M6()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function M7()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end


function Jn()

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


function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

menu = gg.choice({
"武器遍历",
"刷新武器[已修复]",
"返回大厅",
}, nil, os.date("稳定功能"))
if menu == 1 then swq() end
if menu == 2 then ABC() end
if menu == 3 then EFG() end
XGCK=-1
end


function swq()

SB = gg.multiChoice({
"火箭筒",--1
"迫机炮",--2
"冲锋枪",--3
"能量剑",--4
"蹦蹦枪",--5
"散弹枪",--6
"唤风镖",--7
"霸天斧",--8
"治疗枪",--9
"电球枪",--10
"滋水枪",--11
"热破",--12
"威震天",--13
"红蜘蛛",--14
}, nil, os.date("局内刷武器"))--作者yc
if SB == nil then else
if SB[1] == true then a() end
if SB[2] == true then a2() end
if SB[3] == true then a3() end
if SB[4] == true then a4() end
if SB[5] == true then a5() end
if SB[6] == true then a6() end
if SB[7] == true then a7() end
if SB[8] == true then a8() end
if SB[9] == true then a9() end
if SB[10] == true then a10() end
if SB[11] == true then a11() end
if SB[12] == true then a12() end
if SB[13] == true then a13() end
if SB[14] == true then a14() end
if SB[15] == true then a15() end
if SB[16] == true then a16() end
end XGCK = -1 end



function a()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{102*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="火箭筒"
pd=1
end

function a2()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{112*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="迫机炮"
pd=1
end


function a3()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{132*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="冲锋枪"
pd=1
end

function a4()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{142*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="能量剑"
pd=1
end

function a5()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{152*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="蹦蹦枪"
pd=1
end

function a6()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{192*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="散弹枪"
pd=1
end

function a7()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{202*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="唤风镖"
pd=1
end

function a8()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{212*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="霸天斧"
pd=1
end

function a9()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10100*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="治疗枪"
pd=1
end

function a10()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10160*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="电球枪"
pd=1
end

function a11()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{11130*256,13,4}})
----------------------------------------
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="滋水枪"
pd=1
end

function a12()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{90100*256,13,4}})
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="热破"
pd=1
end

function a13()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{90200*256,13,4}})
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="威震天"
pd=1
end

function a14()
yc({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{90300*256,13,4}})
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
wq="红蜘蛛"
pd=1

end







function ABC()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A808, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x302010, 0x4C, 0x1D8, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1DA94, 0x4C, 0x1D8, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1DF48, 0x14, 0x1CC, 0x38, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1DF48, 0x10, 0x194, 0x38, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1DF4C, 0x14, 0x1CC, 0x38, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x1DF4C, 0x10, 0x194, 0x38, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})

local t = {"libil2cpp.so:bss", "Cb"}
local tt = {0x6328C, 0x4C, 0x1D8, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})
SignatureSearch({4561810862086072489,nil,nil,nil,32,32},{{256,0x8C,4}},{{-1.0e-15,0x840,16,false,false,nil}})

end
function JJ()
menu6 = gg.multiChoice({
"强制结算",
"救人数量",
"个人伤害",
"逃生八人",
"逃生四人",
"抓获50人",
"击倒50人",
"返回",
 },nil,'所有功能在大厅开启。强制结算要在游戏30秒之后开，开完后在大厅关闭强制结算 ，继续进入游戏 30秒后开')
  if menu6 == nil then else
    if menu6[1] == true then k1() end
    if menu6[2] == true then k2() end
    if menu6[3] == true then k3() end
    if menu6[4] == true then k4() end
    if menu6[5] == true then k5() end
    if menu6[6] == true then k6() end
    if menu6[7] == true then k7() end
    if menu6[8] == true then Main() end
  end
  GLWW=-1
end
function k1()
qc=gg.alert("强制结算","开启","关闭")
if qc==1 then 
fastsearch--
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4,true},
{-516948194,-472,4,true}},'强制结算')
end
if qc==2 then
fastsearch--
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4,true},
{-494030824,-472,4,true}},'强制结算')
end
end

function k2()
qc=gg.alert("救人数量","开启","关闭")
if qc==1 then 
fastsearch--救人数量
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049917,1112,4,true},
{-516948194,1116,4,true}},'救人数量')
end     
if qc==2 then
fastsearch--救人数量
({
{-128.31251525879,16,16384},
{-476049917,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4,true},
{-494030840,1116,4,true}},'救人数量')
end
end

function k3()
qc=gg.alert("个人伤害'","开启","关闭")
if qc==1 then 
fastsearch--个人伤害'
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4,true},
{-301987312,-540,4,true},
{-289928512,-536,4,true},
{-300938736,-532,4,true},
{-516948194,-528,4,true}},'个人伤害')
end     
if qc==2 then
fastsearch--个人伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4,true},
{-494030840,-540,4,true},
{-442544008,-536,4,true},
{-509591552,-532,4,true},
{-527478779,-528,4,true}},'个人伤害')
end
end

function k4()
qc=gg.alert("逃生八人","开启","关闭")
if qc==1 then 
fastsearch--伤害
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539256,208,4,true},
{-516948194,212,4,true}},'逃生八人')
end
if qc==2 then
fastsearch--伤害
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4,true},
{-494030820,212,4,true}},'逃生八人')
end
end

function k5()
qc=gg.alert("逃生四人","开启","关闭")
if qc==1 then 
fastsearch--逃脱人数8人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539260,208,4,true},
{-516948194,212,4,true}},'逃生四人')
end     
if qc==2 then
fastsearch--逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4,true},
{-494030820,212,4,true}},'逃生四人')
end
end

function k6()
qc=gg.alert("","开启","关闭")
if qc==1 then 
fastsearch--
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4,true},
{-516948194,80,4,true}},'抓获50人')
end     
if qc==2 then
fastsearch--
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4,true},
{-494030820,80,4,true}},'抓获50人')
end
end

function k7()
qc=gg.alert("","开启","关闭")
if qc==1 then 
fastsearch--抓获50人
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4,true},
{-516948194,-752,4,true}},'击倒50人')
end     
if qc==2 then
fastsearch--抓获50人
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4,true},
{-494030840,-752,4,true}},'击倒50人')
end
end


function JO()
menu1 = gg.multiChoice({
"皮卡速度[自调](稳定)",
"滑板速度[自调](稳定)",
"自走球速度[自调](稳定)",
"火力无隔[局内]",
"火力锁子弹[全局]",
"火力无后[全局]",
"碗炮范围",
"威正天炮范围",
"威正天炮射程",
"迫击炮范围",
"迫击炮射程",
"碗炮射程",
"追捕破盾",
"刷钱",
"疾跑buff",
"超大后坐力",
"人物失重",
"人物天线",
"返回",
}, nil, os.date("倾辰自用功能"))
if menu1 == nil then else
if menu1[1] == true then pt1() end
if menu1[2] == true then pt2() end
if menu1[3] == true then pt3() end
if menu1[4] == true then pt4() end
if menu1[5] == true then pt5() end
if menu1[6] == true then pt6() end
if menu1[7] == true then pt7() end
if menu1[8] == true then pt8() end
if menu1[9] == true then pt9() end
if menu1[10] == true then pt10() end
if menu1[11] == true then pt11() end
if menu1[12] == true then pt12() end
if menu1[13] == true then pt13() end
if menu1[14] == true then pt14() end
if menu1[15] == true then pt15() end
if menu1[16] == true then pt16() end
if menu1[17] == true then pt17() end
if menu1[18] == true then pt18() end
if menu1[19] == true then Main() end
end
GLWW=-1
end

function pt1()
xh = gg.prompt({i = "请输入你想要改的皮卡速度"}, {i = "800"})
gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
gg.setRanges(32)
	 gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("皮卡速度")
	 gg.clearResults()
end

function pt2()
xh = gg.prompt({i = "请输入你想要改的滑板速度"}, {i = "800"})
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1019D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("滑板速度")
	 gg.clearResults()
end

function pt3()
xh = gg.prompt({i = "请输入你想要改的自走球速度"}, {i = "800"})
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("自走球速度")
	 gg.clearResults()
end

function pt4()
	local t = {"libil2cpp.so", "Cd"}
	local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
	local ttt = S_Pointer(t, tt)
	gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function pt5()
	nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1BA4524},})
	nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1BA4528},})
end
function pt6()
	gg.clearResults()
	gg.setRanges(16384)
	gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("1", gg.TYPE_FLOAT)
	gg.toast("火力无后")
	gg.clearResults()
end

function pt7()
a=gg.prompt({"能量腕炮范围"})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("能量腕炮范围修改为"..a[1])
end

function pt8()
nh({{1114636288, 32, 32}, {0.800000011920929, -76, 16}, {1065353216, -32, 4}, {1071225242, -24, 4}, {1056964608, -20, 4}, {1062836634, -12, 4}, {2.5, 12, 16}, {90200, 16, 4}, {1070386381, -36, 4}}, {{5, -36, 16, false}})
end


function pt9()
 nh({{4333543705419175690, 32, 32}, {7.5, -16, 16}, {0.05999999865889549, -12, 16}, {0.009999999776482582, 4, 16}, {1008981770, 8, 4}, {1028443341, 16, 4}}, {{66, -16, 16, false}})

end

function pt10()
NH=gg.prompt({"输入迫击炮范围(可进行多次修改)↓"},{[1]=""})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{NH[1], -36, 16, false}})
end

function pt11()
NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function pt12()
NH=gg.prompt({"输入腕炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1045220557, 4, 32}, {1, -8, 4}, {0, 4, 4}, {0, 16, 4}, {0.009999999776482582, 28, 16}, {0.009999999776482582, 32, 16}, {0.009999999776482582, 36, 16}, {0.10000000149011612, 44, 16}, {0, 56, 4}}, {{NH[1], -12, 16, false}})
end


function pt13()--无视护盾
yw=gg.alert("破追捕盾","开启","关闭")
if yw==1 then
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
if yw==2 then
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
end
end


function pt14()
tp = gg.alert("赚钱","41","82","停止")
if tp==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
if tp==2 then

fastsearch({
{4489188110532608000,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{184319,92,4,true}})
end

if tp==3 then

gg.clearList()
gg.toast("停止刷米")
end

end



function pt15()
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改BUFF[自调]"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 107,["offset"] =10, ["type"] = 1},
}
xqmnb(qmnb)
end

function pt16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.30000001192',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.30000001192',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1500)
gg.editAll('5',gg.TYPE_FLOAT)
end


function pt17()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.00999999978',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.00999999978',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10000)
gg.editAll('3',gg.TYPE_FLOAT)
end


function pt18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149011612',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.10000000149011612',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(5000)
gg.editAll('50',gg.TYPE_FLOAT)
	gg.toast("人物天线")
end



function IU()
UI = "C"
local menu = gg.multiChoice({
"跳高换卡[稳定]",
"疾跑换卡[稳定]",
"拳套换卡[稳定]",
"️返回主页️",
}, nil, "不必在意世俗的眼光去追寻属于你的光🍒一定要在大厅")
if menu then
for i in pairs(menu) do
_ENV[({"L1","L2","L3","Main"})[i]]()
  end
 end 
end
function ym()
gg.alert("欢迎下次使用")
end
function L1()
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
function L2()
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
function L3()
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




function Exit()
print("")
os.exit()
end
cs = ""


gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end

