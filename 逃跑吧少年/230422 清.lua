local org = _ENV["gg"]["searchNumber"]
     hook = function(...)
        _ENV["gg"]["setVisible"](false)
         ret = org(...)
        if _ENV["gg"]["isVisible"](true) then
        _ENV["gg"]["clearResults"]()
        _ENV["gg"]["clearList"]()
_ENV["gg"]["alert"]("请不要在脚本搜值时打开修改器谢谢")
            while true do 
            os.exit()
            EXIT() 
            end
        end
        return ret
    end
    _ENV["gg"]["searchNumber"] = _ENV["hook"]
local file = '/sdcard/本地使用次数.txt'
local cs = 1
if io.open(file, 'r') == nil then
    io.open(file, 'w'):write('1')
else
    cs = io.open(file, 'r'):read("a")
    cs = tonumber(cs) + 1
    io.open(file, 'w'):write(cs)
end
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="逃跑吧！少年" then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n此进程非逃跑吧！少年\n是否继续？","继续","返回")
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
gg.toast("写入成功")
end
local urls = "https://share.weiyun.com/vNyGMWJ0" -- 远程链接
local path = "/sdcard/开关.txt"
local data = gg.makeRequest(urls).content
local switch = data:match("【开关】(.-)【开关】")
local files = io.open(path, "r")
while switch ~= "开" do
  gg.alert("脚本以更新或者关闭")
  os.exit()
end
end
gg.alert('你已启动内部'..cs ..'次\n公益',"我已知晓")
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
function yw(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
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
         gg.toast(Search[2].name..'开启失败')
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
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
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
function setvalue(address,value,flags) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
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

--------------------------------------------------------------
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
		
bqt={"🍓","🥳","🍍","💎","👑","⚡︎"," YW ","🔥","🐔","🍔","❤️","🚫","⭐","💧",}
local APP=gg.getTargetInfo()
function Main()
UI = 'Main'
local sjbq=bqt[math.random(1,#bqt)]
bygy = gg.choice({
sjbq.."防闪防封"..sjbq,--1
sjbq.."逃生功能"..sjbq,--2
sjbq.."追捕功能"..sjbq,--3
sjbq.."新版直装"..sjbq,--4
sjbq.."实体变身"..sjbq,--5
sjbq.."动作修改"..sjbq,--6
sjbq.."角色功能"..sjbq,--7
sjbq.."秒赢功能"..sjbq,--8
sjbq.."换卡功能"..sjbq,--9
sjbq.."连发功能"..sjbq,--10
sjbq.."自调功能"..sjbq,--11
sjbq.."传送功能"..sjbq,--12
sjbq.."道具功能"..sjbq,--13
sjbq.."过青铜区"..sjbq,--14
sjbq.."易封功能"..sjbq,--15
sjbq.."实战美化"..sjbq,--16
sjbq.."调试菜单"..sjbq,--17
sjbq.."一键修改"..sjbq,--18
sjbq.."其他功能"..sjbq,--19
sjbq.."内存直装"..sjbq,--20
sjbq.."火力功能"..sjbq,--21
sjbq.."乱斗功能"..sjbq,--22
sjbq.."修改武器"..sjbq,--23
sjbq.."武器遍历"..sjbq,--24
sjbq.."音乐功能"..sjbq,
sjbq.."xa功能"..sjbq,
sjbq.."代码查询"..sjbq,
sjbq.."退出脚本"..sjbq,
}, Jt,os.date"清\n当前时间:%Y年/️%m月/%d日%H:%M:%S")
if bygy then
    Jt=bygy
    _ENV[({"ID1","ID2","ID3","ID4","ID5","ID6","ID7","ID8","ID9","ID10","ID11","ID12","ID13","ID14","ID15","ID16","ID17","ID18","ID19","ID20","ID21","ID22","ID23","ID24","YU","ZY","CX","TC",})[bygy]]()
 end
end

function YU()
UI = "YU"
local menu = gg.multiChoice({
"奔放音乐",
"好听音乐",
"伤感音乐",
"停止音乐",
"返回主页",
}, nil, "音乐功能")
if menu then
for i in pairs(menu) do
_ENV[({"YUFY1","YUFY2","YUFY3","TZYU","Main",})[i]]()
  end
 end 
end

function YUFY1()
UI = "YUFY1"
local menu = gg.multiChoice({
"你看到了我",
"江南style",
"杨戬擒悟空",
"Arabic Dance[作者喜欢]",
"返回音乐",
}, nil, "奔放音乐")
if menu then
for i in pairs(menu) do
_ENV[({"YUA1","YUA2","YUA3","YUA4","YU",})[i]]()
  end
 end 
end

function YUA1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1377530437.mp3")
end

function YUA2()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=27490912.mp3")
end

function YUA3()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=29999128.mp3")
end

function YUA4()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1899448839.mp3")
end

function YUFY2()
UI = "YUFY2"
local menu = gg.multiChoice({
"阳光开朗大男孩",--1
"爱如火",--2
"少年来也",--3
"Hello 你好",--4
"大唐gang",--5
"专属于男刀的BGM",--6
"求佛[牧童]",--7
"心墙[DJ]",--8
"情人[IKUN]",--9
"洗脑日记[原版 秀儿同款]",--10
"hua me[IKUN]",--11
"Funky Town",--12
"返回音乐",
}, nil, "好听音乐")
if menu then
for i in pairs(menu) do
_ENV[({"YUB1","YUB2","YUB3","YUB4","YUB5","YUB6","YUB7","YUB8","YUB9","YUB10","YUB11","YUB12","YU",})[i]]()
  end
 end 
end

function YUB1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1895164923.mp3")
end

function YUB2()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1999552137.mp3")
end

function YUB3()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1964096683.mp3")
end

function YUB4()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=33211676.mp3")
end

function YUB5()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1810577953.mp3")
end

function YUB6()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=563129860.mp3")
end

function YUB7()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=2008953965.mp3")
end

function YUB8()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1834268297.mp3")
end

function YUB9()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1450574147.mp3")
end

function YUB10()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1823076298.mp3")
end

function YUB11()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1965890511.mp3")
end

function YUB12()
gg.playMusic("http://music.163.com/song/media/outer/url?id=27203942.mp3")
end

function YUFY3()
UI = "YUFY3"
local menu = gg.multiChoice({
"心做[DJ]",
"菲律宾没有雪",
"返回音乐",
}, nil, "伤感音乐[暂时只有1首以后加]")
if menu then
for i in pairs(menu) do
_ENV[({"YUC1","YBC2","YU",})[i]]()
  end
 end 
end

function YUC1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=2005190306.mp3")
end

function YUC2()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2007861279.mp3")
end

function TZYU()
    gg.toast("正在停止音乐")
    for i=1,100 do
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
    end
end

function ZY()
UI = "ZY"
local menu = gg.multiChoice({
"激活锁位",--1
"变身无间",--2
"队友箭头",--3
"服装变色",--4
"老版大厅",--5
"强制准备",--6
"返回主页",
}, nil, "xa功能随便模糊都能模糊出来")
if menu then
for i in pairs(menu) do
_ENV[({"DJ1","DJ2","DJ3","DJ4","DJ5","DJ6","Main",})[i]]()
  end
 end 
end

function DJ1()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x177b60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x177b610},})
end

function DJ2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x118aa08},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x118aa0c},})
end

function DJ3()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd5cdbc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd5cdd0},})
end

function DJ4()
a=gg.prompt({"1 绿色 2红色 3白色黑色[其他的也行]"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0x1ced84c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ced850},})
end

function DJ5()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x100b680},})
end

function DJ6()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
end

function CX()
gg.alert([[
抓功能各类型理解
A类型 全部搜索

D类型 整数

F类型 小数/百分比

----普通代码----
500001 疾跑
500002 皮卡
500003 侦查眼
500004 手雷
500005 医疗箱
500006 跳高
500007 护盾
500008 阻挡箱
500009 引力场
500200 狗
500300 针
500400 酒桶
500500 飞爪
500600 传送门
500700 自走球
500800 毒液
500900 滑板
501000 魔法墙
501100 引力场2
501200 治疗球
501300 气垫
501400 导弹
501500 追踪雷
501600 震荡波
501700 小灰机
501800 时光机
501900 跳杆
502000 拳套
502100 吼吼号
502200 噗噗蛋
100 长椅子
101 床
102 箱子
103 仙人掌
104 凳子
105 马桶
106 电脑
107 抽屉
108 花
109 桌子
110 路障
115 牌
116 鼓
117 绿色垃圾桶
118 蓝色垃圾桶
119 鸭子
120 球

----武器卡---
500010 火箭筒
500020 迫击炮
500030 冲锋枪
500040 能量剑
500050 蹦蹦枪
500060 能量腕炮
500070 霰弹枪
500080 换风镖
10500006 回旋镖
10500008 盾位攻击
10500011 电球枪
10500030 霰弹枪2
10500040 像素剑
10500051 回血枪
105000646 滋水枪
10500030 霰弹枪

----特殊卡----
70010 翼龙
70011 三角龙
70012 剑龙
70013 迅猛龙
70014 霸王龙
70015 苍龙
70500015 苍龙
70500014 霸王龙
70500013 迅猛龙
70500012 剑龙
70500011 三角龙
70500010 翼龙
70500005 小恶魔
70500004 全体护盾
70500003 时光机
70500002 夹子
70500001 巡航导弹
50050001 迪迦
50050002 赛罗
50050003 泽塔
50050124 小灰机
10500001 疾跑
10500002 冲锋
10500003 狐狸链子
10500004 天降之物
10500005 生物炸弹
10500007 盾位护盾
10500009 盾位冲锋
10500010 火力支援
10500012 骇客飞爪
10500013 骇客隐身
10500014 蛋黄酥
10500015 粽子
10500016 高跳团子
90001 擎天柱
90002 大黄蜂
90003 热破
90004 威震天
90005 声波
90006 红蜘蛛
1603338240 擎天柱2
1603403776 大黄蜂2
1603469312 热破2
1603534848 威震天2
1603600384 声波2
1603665920 红蜘蛛2
1033 奥博
10007 团子技能

----道具卡----
200 疾跑
201 跳高
300 侦查眼
301 阻挡箱
400 手雷
401 医疗箱
500 护盾
700 狗
701 针
800 酒桶
801 飞爪
900 传送门
901 自走球
1000 毒液
1001 滑板
1002 魔法墙
1003 引力场
1004 治疗球
1005 气垫
1006 导弹
1007 追踪雷
1008 震荡波
1009 小灰机
1010 时光机
1011 跳杆
1012 拳套
1016 吼吼号
50001 迪迦
50002 泽塔
50003 赛罗

----武器卡2----
100 火箭筒
110 迫击炮
120 冲锋枪
140 能量剑
150 蹦蹦枪
180 能量碗炮
190 霰弹枪
200 换风镖
60100 火箭筒
50110 迫击炮
50130 霰弹枪
10160 能量球
11130 滋水枪
11150 蹦蹦枪
10140 像素剑
10130 霰弹枪
10170 盾位攻击
10150 回旋镖
10100 加血枪
12130 自动手枪

----buff----
100 暴怒
101 夹子
102 跳杆
103 疾跑
105 手雷
107 追捕无敌
108 针
109 学妹
110 学妹2
111 持续暴走
112 变羊术
113 雷达
114 天降正义
200 酒桶
201 毒液
202 加速
203 狗
204 魔法墙正面
205 魔法墙负面
206 护盾
300 boss护盾
301 吸血
302 boss眩晕
400 机器人
401 学妹3
402 幽灵
403 缴械
404 天降正义2
405 减速
501 水
502 应力场
505 超级加速
506 加速
508 减速
509 boss攻速
510 boss吸血
511 boss盾
512 解控
520 梦魇泡泡
521 梦魇
522 梦魇无敌
528 缴械
529 缈
530 缈2
531 缈3
532 缈4
533 缈和圣女
534 圣女2
535 圣女3
537 盾位
538 盾位2
539 盾位3
540 盾位4
542 狮子吸血
543 泷
544 泷2
543 泷
547 时光机
548 狮子视野
549 狮子冷却
550 毒
551 命石
552 命石2
553 命石3
554 命石4
557 减血
558 眩晕
559 无敌
560 永久加速
561 超级加速
564 团子
566 团子2
567 机器人
568 恐龙
570 奥博
571 眩晕
572 护盾
573 疾跑
575 狮子视野
577 指绘师
578 指绘师2
70110 全体护盾
70109 竞速掉血
70108 - 70103 恐龙护盾
70102 竞速减速
70101 竞速夹子
10509 红方旗子
10508 蓝方旗子
10203 减血
10600 电球枪buff
11201 针
10201 毒
10103 狂暴
]])
end

function ID1()
UI = "ID1"
local menu = gg.multiChoice({
"新版防闪",--1
"解封设备",--2
"----↑防闪 设备↑----",--3
"----↓内部 防封↓----",--4
"内部防检",--5
"独家内防",--6
"服务断开",--7
"大厅防封",--8
"----↓普通防封↓----",--9
"局内防封",--10
"XA防封",--11
"----↓特殊の防↓----",--12
"去除ace",--13
"----↓退出使用↓----",--14
"防止追封",--15
"返回主页",
}, nil, "防闪和防封[大厅开]其实搞这么多防也没什么用，只留一些有些许用的防")
if menu then
for i in pairs(menu) do
_ENV[({"a1","a2","a3","a4","a5","a6","a7","a8","a9","a10","a11","a12","a13","a14","a15","Main",})[i]]()
  end
 end 
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

function a2()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="逃跑吧！少年" then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n此进程非逃跑吧！少年 无法解封设备！\n是否继续？","继续","返回")
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
local shanchu=gg.alert("文件写入成功！请重启游戏即可！\n是否清除残留日志","确定","取消")
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
	
function a3() 
gg.alert("俺就是个文字你都要点")
end

function a4() 
gg.alert("俺就是个文字你都要点")
end

function a5()
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
end

function a6()
gg.alert("初始化")
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x36f4f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x36f4f7c},})
gg.alert("XA")
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
	 gg.toast("XA1")
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
	gg.toast("XA2")
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
	gg.toast("XA3")
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
	gg.toast("XA4")
end
gg.alert("独家防封[秒开但是多可能有点慢]")
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9acc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9ae4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9af4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b08},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b20},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b30},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b48},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b64},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b80},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8dc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe89c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe888},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe858},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe83c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe828},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe808},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe73c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe74c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe778},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe908},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c39ef0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d09a84},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1ce88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d39284},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d3d860},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d42684},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4daf700},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e025a4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e02684},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e14578},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e289f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28bdc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28d40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e44f1c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3928},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x5270},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x1a8d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x24af4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042b3c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042c84},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x47d1278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x47ebf7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4827b5c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c2799c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3472788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x1ae2dfc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x485e100},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x497e004},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x497fa78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e45bac},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6fc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe70c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe728},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe738},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe748},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe76c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7bc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe878},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe968},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe978},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea68},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea6c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3704fd4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c32d80},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x259a80c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4288},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4308},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4358},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4398},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6bc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6dc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4108},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4118},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4128},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de412c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4138},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de413c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4148},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de414c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de415c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4168},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4178},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3ff8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4008},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4018},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4028},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4038},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4048},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4058},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4068},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4078},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4088},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4098},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})--要不要菠萝
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

function a7()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdb3d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdb3d8},})
end

function a8()
--大厅防封
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9887cc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9887d0},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98985c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989860},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9896d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9896d4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98917c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989180},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989df0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989df4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989038},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x98903c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x988da4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x988da8},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989b8c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989b90},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98a440},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x98a444},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989f80},})
--防各种检测
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eee08c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eee090},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eeeb9c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eeeb9c+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eec530},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eec534},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eed36c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eed370},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eea2f0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eea2f4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eea100},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eea104},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eee570},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eee574},})
--无视弹窗
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3820},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3824},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3da8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3da8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3b0c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3b10},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e341c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3420},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3158},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e315c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e2e34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e2e38},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e2b04},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e2b08},})
end

function a9() 
gg.alert("俺就是个文字你都要点")
end

function a10()
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
	 
function a11() 
gg.setRanges(16384)
	 gg.searchNumber("16384;26,691,200", 4, false, gg.SIGN_EQUAL, 0, -1)
	 	 gg.searchNumber("26,691,200", 4, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100000)
	 gg.editAll("0", 4)
	 gg.setRanges(16384)
	 gg.searchNumber("109,446,722", 4, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100000)
	  gg.editAll("0", 4) 
	 gg.setRanges(16384)
	 gg.searchNumber("16384;26,690,944", 4, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("26,690,944", 4, false, gg.SIGN_EQUAL, 0, -1)
	  gg.getResults(100000)
	  gg.editAll("0", 4)
	gg.setRanges(4)  
	gg.searchNumber("1,375,731,712", 4, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100000)
	  gg.editAll("0", 4)
	 gg.setRanges(4)  
	 gg.searchNumber("285,212,672", 4, false, gg.SIGN_EQUAL, 0, -1)
	  gg.getResults(100000)
	  gg.editAll("0", 4)
	  gg.setRanges(4)  
	  gg.searchNumber("9061", 4, false, gg.SIGN_EQUAL, 0, -1)
	   gg.getResults(100000)
	   gg.editAll("0", 4)
	   gg.setRanges(4)  
	   gg.searchNumber("30886", 4, false, gg.SIGN_EQUAL, 0, -1)
	    gg.getResults(100000)
	    gg.editAll("0", 4)
	   gg.setRanges(4)  
gg.searchNumber("1,442,840,576", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
 gg.editAll("0", 4)
 gg.clearResults()
gg.setRanges(4)  
 gg.searchNumber("16384;8,400,896", 4, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("8,400,896", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 gg.editAll("0", 4)
 gg.setRanges(4)  
 gg.searchNumber("16384;8,392,720", 4, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("8,392,720", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 gg.editAll("0", 4)
 gg.setRanges(4)  
 gg.searchNumber("16384;32768", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32768", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 gg.editAll("0", 4)
 gg.setRanges(4)  
 gg.searchNumber("16384;17,039,360", 4, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("17,039,360", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 gg.editAll("0", 4)
 gg.clearResults()
 end
 
function a12()
gg.alert("俺就是个文字你都要点")
end

function a13()
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

function a14() 
gg.alert("俺就是个文字你都要点")
end

function a15()
gg.alert("要退出游戏的时候开不然会闪退","我知道了")
ac=gg.getTargetPackage()
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bfire.da.xinh/gameplugins/"..ac.."/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bfire.da.xinh/gameplugins")
gg.toast("获取成功,已删除追封文件")
end
	 
function ID2()
UI = "ID2"
local menu = gg.multiChoice({
"一键开启",--1
"跳跃开物",--2
"人物穿墙",--3
"人物爬墙",--4
"明亮透视",--5
"不死捐钱",--6
"范围开锁",--7
"开锁金币",--8
"完美开锁",--9
"倒地复活",--10
"稳定移速",--11
"三倍开锁",--12
"开锁无窗",--13
"路过开物（不稳）",--14
"返回主页",
}, nil, "逃生区[倒地复活半危,刷钱半稳]")
if menu then
for i in pairs(menu) do
_ENV[({"ba1","ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","ba10","ba11","ba12","ba13","ba14","Main",})[i]]()
  end
 end 
end

function ba1()
qmnb = {
{["memory"] = 32},
{["name"] = "3倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

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

fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end
   
function ba2()
fastsearch--跳跃开物
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})
end

function ba3()
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

function ba4()
qmnb = {
    {memory = 16384},
    {name = "爬墙"},
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

function ba5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function ba6()
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

function ba7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("3", FLOAT)
gg.toast("范围开锁开启成功")
gg.clearResults()
end
end

function ba8()
yw=gg.alert("开锁金币","4v1","8v2")
if yw==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
if yw ==2 then
fastsearch({
{4489188110532608000,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{184319,92,4,true}})
end
end

function ba9()
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

function ba10()
  fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end

function ba11()
qmnb = {
{["memory"] = 32},
{["name"] = "3.6倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function ba12()
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

function ba13()
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

function ba14()
gg.alert("请配合移动开物和范围开锁")
fastsearch({{1147207680,4,32},{20.0,-8,16}},{{0.1,8,16,false},{0,-4,16,false}})
end

function ID3()
UI = "ID3"
local menu = gg.multiChoice({
"一键开启",--1
"逃生减血",--2
"全图烧人",--3
"逃生倒地",--4
"腕炮范围",--5
"奥博速刷",--6
"狮子速刷",--7
"武器无后",--8
"人物透视",--9
"稳定移速",--10
"视野提高",--11
"返回主页",
}, nil, "追捕区")
if menu then
for i in pairs(menu) do
_ENV[({"bb1","bb2","bb3","bb4","bb5","bb6","bb7","bb8","bb9","bb10","bb11","Main",})[i]]()
  end
 end 
end

function bb1()
   fastsearch({
     {76111644, 4, 16384},
     {76111664, -4, 4}, 
   }, {
     {-476053503, 4, 4, false},
      {-516948194, 8, 4, false},
   },"人物透视")

qmnb = {
{["memory"] = 32},
{["name"] = "3倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnp(qmnp)
end

function bb2()
qmnb = {
{["memory"] = 32},
{["name"] = "逃生减血"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -20, ["type"] = 16},
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function bb3()
qmnb = {
{["memory"] = 32},
{["name"] = "全图烧人"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function bb4()
qmnb = {
{["memory"] = 32},
{["name"] = "逃生倒地"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-0x4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =0x10, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-0x8, ["type"] = 16},
}
xqmnb(qmnb)
end

function bb5()
a=gg.prompt({"腕炮范围↓"})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("腕炮范围修改为"..a[1])
end

function bb6()
yw=gg.alert("奥博速刷","有减血","无减血")
if yw==1 then
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

qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end
if yw==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 100,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function bb7()
yw=gg.alert("狮子速刷","有减血","无减血")
if yw==1 then
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

qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害+免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-0x20, ["type"] = 16},
{["value"] = 1,["offset"] =-0x24, ["type"] = 16},
{["value"] = 0,["offset"] =-0xA4, ["type"] = 4},
}
xqmnb(qmnb)
end
if yw==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害+免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-0x20, ["type"] = 16},
{["value"] = 100,["offset"] =-0x24, ["type"] = 16},
{["value"] = 0,["offset"] =-0xA4, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function bb8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无后坐力")
	 gg.clearResults()
end

function bb9()
   fastsearch({
     {76111644, 4, 16384},
     {76111664, -4, 4}, 
   }, {
     {-476053503, 4, 4, false},
      {-516948194, 8, 4, false},
   },"人物透视")
end

function bb10()
qmnb = {
{["memory"] = 32},
{["name"] = "3倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function bb11()
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnp(qmnp)
end

function ID4()
UI = "ID4"
local menu = gg.multiChoice({
"角色全皮[已复]",--1
"锁定金币[已修]",--2
"锁定道具[已复]",--3
"移动开物[已修]",--4
"攻击吸血[已修]",--5
"反弹伤害[已修]",--6
"一百发子[已复]",--7
"卡屏间隔[已复]",--8
"锁定子弹[已复]",--9
"解锁模式[已复]",--10
"解锁皮肤[已复]",--11
"道具冷却[已复]",--12
"杀死队友[已修]",--13
"免费购物[已修]",--14
"超级不死[已修]",--15
"倒地丢物[已修]",--16
"超级移速[已复]",--17
"武器秒杀[已修]",--18
"解锁道具[已修]",--19
"变身时间[没测]",--20
"裁判模式[没测]",--21
"解锁风格[已修]",--22
"枪枪暴击[已修]",--23
"超级高跳[已修]",--24
"超级透视[已修]",--25
"解锁角色[已修]",--26
"直接开门[已修]",--27
"武器无后[已修]",--28
"不卡无间[已修]",--29
"稳定锁金[已修]",--30
"子弹穿墙[已修]",--31
"无视架子[已修]",--32
"无限金币[没测]",--33
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
"逃生秒赢[测试]",--54
"追捕秒赢[已修]",--55
"返回主页",
}, nil, "直装功能\n已修的都是新赛季能用的")
if menu then
for i in pairs(menu) do
_ENV[({"c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13","c14","c15","c16","c17","c18","c19","c20","c21","c22","c23","c24","c25","c26","c27","c28","c29","c30","c31","c32","c33","c34","c35","c36","c37","c38","c39","c40","c41","c42","c43","c44","c45","c46","c47","c48","c49","c50","c51","c52","c53","c54","c55","Main",})[i]]()
  end
 end 
end

function c1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end

function c2()--锁金币--方法名RpcSubCoin
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x3143a6c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3143a70},})
end     

function c3()--锁道具--方法名CostCard
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end

function c4()--移动开物--方法名EndUsing
yw=gg.alert("移动开物","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT)
	 gg.toast("移动开物关")
	 gg.clearResults()
end
end

function c5()--攻击吸血--get_BloodSucking
readWrite({{false,295731200,0,4,nil,nil},{-481296384,1932,4},{436207620,1936,4},{-442564508,1940,4}},{{-476052411,1908,4,false},{-516948194,1912,4,false}},4,16384,"攻击吸血")end

function c6()--反弹伤害--方法名get_DamageReflect
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x1b148d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b148d8},})
end

function c7()--基扯改子弹--方法名get_MaxRoundCount
nc_offset(getso("libil2cpp.so"),{{-476053404,4,0xf3d288},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d28c},})
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
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end     

function c11()--道具皮肤--方法名OwnCardSkin
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end     

function c12()--道具无CD--方法名GetRemainedCooldownTime
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
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
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x363fa94},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x363fa98},})
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
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea5158},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea515c},})
end     

function c27()--直接开门--方法名get_IsOpend
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function c28()--无后
yw=gg.alert("超级无后座","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
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
nc_offset(getso("libil2cpp.so"),{{-471858942,4,0x1f401d8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f401dc},})
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
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end

function c42()--吸人--方法名SetEnablePhysics
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17e1380},})
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
gg.alert("被和谐了所以用移动开物")
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

function ID5()
UI = "ID5"
local menu = gg.multiChoice({
"变身道具",
"变身技能",
"返回主页",
}, nil, "变身区")
if menu then
for i in pairs(menu) do
_ENV[({"d1","d2","Main",})[i]]()
  end
 end 
end

function d1()
UI = "d1"
local menu = gg.multiChoice({
"奥博-1",
"团子-2",
"幽妍-3",
"滑板-4",
"皮卡-5",
"疾跑-6",
"阻箱-7",
"返回变身",
}, nil, "变身道具")
if menu then
for i in pairs(menu) do
_ENV[({"da1","da2","da3","da4","da5","da6","da7","ID5",})[i]]()
  end
 end 
end

function da1()
u=gg.prompt({"迪迦50001\n赛罗50002\n泽塔50003\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011剑龙\n70012三角龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{90001},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "奥博自调"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function da2()
u=gg.prompt({"迪迦50001\n赛罗50002\n泽塔50003\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011剑龙\n70012三角龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{90001},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "团子"},
{["value"] = 1.29999995232, ["type"] = 16},
{["lv"] = 1069547520, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1045220557, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -8, ["type"] = 4},
}
xqmnb(qmnb)
end

function da3()
a = gg.prompt({
      "迪迦50001\n赛罗50002\n泽塔50003\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011剑龙\n70012三角龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"
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
  
function da4()
u=gg.prompt({"迪迦50001\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011三角龙\n70012剑龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{90001},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "滑板实体"},
{["value"] = -1080170863, ["type"] = 4},
{["lv"] = 116,["offset"] =28, ["type"] = 4},
}
qmxg = {
{["value"] = u[1],["offset"] =8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end

function da5()
u=gg.prompt({"迪迦50001\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011三角龙\n70012剑龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{90001},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡实体"},
{["value"] = 125762601315951, ["type"] = 32},
{["lv"] = 29281,["offset"] =4, ["type"] = 2},
{["lv"] = -65536,["offset"] =16, ["type"] = 4},
{["lv"] = 65535,["offset"] =20, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =12, ["type"] = 2, ["freeze"] = false},
{["value"] = u[1]+65536,["offset"] =10, ["type"] = 2, ["freeze"] = false},
}
xqmnb(qmnb)
end

function da6()
nh({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"迪迦50001\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011三角龙\n70012剑龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end

function da7()
nh({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"迪迦50001\n奥博汽车1033\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006红蜘蛛\n70010翼龙\n70011三角龙\n70012剑龙\n70013迅猛龙\n70014霸王龙\n70015苍龙\n1023光球"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end

function d2()
UI = "d2"
local menu = gg.multiChoice({
"苍龙无冷",--1
"霸龙无冷",--2
"剑龙无冷",--3
"角龙无冷",--4
"苍龙跳移",--5
"苍龙范伤",--6
"迪迦数量",--7
"迪迦时间",--8
"擎天范围",--9
"苍龙时间",--10
"霸龙一键",--11
"霸龙范伤",--12
"霸龙范围",--13
"返回变身",
}, nil, "变身技能")
if menu then
for i in pairs(menu) do
_ENV[({"dd1","dd2","dd3","dd4","dd5","dd6","dd7","dd8","dd9","dd10","dd11","dd12","dd13","ID5",})[i]]()
  end
 end 
end

function dd1()
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

function dd2()
xtnb({{false,1.3872854796815689E-43,4,16,nil,nil},{3.0,12,16},{3.0,20,16}},{{0.01,0,16,false}},16,32,"霸王龙攻击无冷却")
end

function dd3()
gg.setRanges(32)
	 gg.searchNumber("7;20D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function dd4()
gg.setRanges(32)
	 gg.searchNumber("1.5;35D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function dd5()
qmnb = {
      {["memory"] = 32},
      {["name"] = "跳高移速"},--高跳移速
      {["value"] = 4453159313486957773, ["type"] = 32},
      {["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
      {["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 7,["offset"] =0, ["type"] = 16},
      {["value"] = 3.3,["offset"] =-16, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function dd6()
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
      {["value"] = 20, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function dd7()
gg.setRanges(32)
gg.clearResults()
gg.searchNumber("12;1.5;3;1.5",16)
gg.searchNumber(12,16)
q=gg.getResults(500)
for k=1,#q do
gg.addListItems({{address=q[k].address+0x58,flags=4,value=100,freeze=true}})
end
end

function dd8()
qmnb = {
{["memory"] = 32},
{["name"] = "激光无限"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 3.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =28, ["type"] = 4},
{["value"] = 999,["offset"] =60, ["type"] = 16},
}
xqmnb(qmnb)
end

function dd9()
local xt=gg.prompt({"擎天柱技能范围"}, {[1] = 20})
xtnb({{false,120.0,8,16,nil,nil},{60.0,4,16},{3.0,0,16}},{{xt[1],16,16,false}},16,32,"擎天柱技能范围")end

function dd10()
yw=gg.prompt({"输入苍龙持续时间"},{[1]=""})
fastsearch({{256, 4, 32}, {0, -4, 4}, {1065353216, 4, 4}, {0, 8, 4}, {0, 36, 4}, {0.5, 40, 16}, {0, 48, 4}}, {{yw[1], 52, 16, true}})
end

function dd11()
yw = gg.prompt({[1]="请输入想要改的霸王龙伤害"}, {[1]= "114514"})
qmnb = {
{["memory"] = 32},
{["name"] = "霸王龙无间隔+伤害"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1,["offset"] =-4, ["type"] = 4},
{["lv"] = 99,["offset"] =-8, ["type"] = 4},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 0,["offset"] =4, ["type"] = 4},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-12, ["type"] = 16},
{["value"] = yw[1],["offset"] =-8, ["type"] = 4},
{["value"] = 99,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end

function dd12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;99;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;9999999;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function dd13()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("426,248,996,127;1,077,936,128::", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,083,808,154", gg.TYPE_QWORD)
	 gg.toast("霸王龙范围")
	 gg.clearResults()
	 end

function ID6()
UI = "ID6"
local menu = gg.multiChoice({
"一键动作",--1
"自调动作",--2
"修改文字",--3
"返回主页",
}, nil, "动作修改")
if menu then
for i in pairs(menu) do
_ENV[({"e1","e2","e3","Main",})[i]]()
  end
 end 
end

function e1()
fastsearch
({{950001,4,32},{6,-4,4},{0,8,4},{0,12,4},{0,16,4},{0,20,4},{0,-8,4},{0,-12,4}},{{961351,0,4},{961361,4,4},{961371,8,4},{961731,12,4},{961721,16,4},{961211,20,4,false}})
end

function e2()
_ENV["gg"]["clearResults"]()
_ENV["gg"]["setRanges"](32)
a = _ENV["gg"]["prompt"]({"招手：\n960001 雇佣兵·招手\n960011 失忆者·招手\n960021 女特工·招手\n960031 小学妹·招手\n960041 机器人·招手\n960051 魔术师·招手\n960571 发明家·招手\n\n嘲讽：\n960061 雇佣兵嘲讽\n960071 失忆者嘲讽\n960081 女鬼嘲讽\n960101 小学妹嘲讽\n960101 机器人嘲讽\n960111 魔术师嘲讽\n\n一个真正的鳗：\n960241 雇佣兵·打篮球\n960251 失忆者·打篮球\n960261 雇佣兵·篮球之舞\n960271 失忆者·篮球之舞\n\n星耀动作加引体向上：\n961351 洛杰星耀\n963561 洛杰星轮[大厅]\n961191 学妹星耀1\n961201 艾克星耀\n961211 狐狸星耀\n961361 雇佣兵星耀\n963571 雇佣兵星轮[大厅]\n961371 女鬼星耀\n961711 梦魇星耀\n961721 发明家星耀\n961731 学妹星耀2\n962701 引体向上\n963781 大黄蜂出场\n\n电摇动作：\n960691 失忆者·应援boy\n960701 女特工·演唱女王\n960681 雇佣兵·摇滚贝斯\n960731 发明家·我为歌狂\n961881 关起来\n961041 贵族风度\n960921 来口西瓜\n960431 花式倒立\n960441 侧滑拳击\n960461 滑步登场\n960491 独轮车\n960551 闪耀登场\n962901 终极闪耀赛罗变身\n962331 怪兽登场\n961941 海上豪杰\n962931 贝利亚变身\n962491 月兔奔月\n960931 冲浪达人\n\n涂鸦：\n950001 我爱DMM\n950141 陷阱夹子\n950331 伪装宝盒\n950661 DMM战队\n950671 DMM奖杯\n\n变身道具：\n长椅100\n床101\n箱子102\n仙人掌103\n凳子104\n马桶105\n电脑106\n抽屉107\n花108109\n桌子110\n路障115\n牌116\n鼓117\n绿色垃圾桶118\n蓝色垃圾桶119\n120球", "↑修改前\n↓修改后"}, {"", ""}, {"text", "text"})
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

function e3()
a=gg.prompt({"文字↓","改之后的文字↓"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
gg.toast("修改成功[刷新看一下吧]")
gg.clearResults()
end

function ID7()
UI = "ID7"
local menu = gg.multiChoice({
"角色技能",
"角色服装",
"修改角色",
"返回主页",
}, nil, "角色功能区")
if menu then
for i in pairs(menu) do
_ENV[({"f1","f2","f3","Main",})[i]]()
  end
 end 
end

function f1()
UI = "f1"
local menu = gg.multiChoice({
"命石抱摔距离",--1
"命石冲刺距离",--2
"锁定抱摔免费",--3
"狐狸队友[天赋]",--4
"狐狸冷却[天赋]",--5
"狐狸免费无冷",--6
"水忍护盾[天赋]",--7
"水忍冷却[天赋]",--8
"水忍数量免费",--9
"骇客开锁[天赋]",--10
"骇客技能无冷",--11
"骇客技能数量",--12
"盾位范围拉人",--13
"魔术木偶无限",--14
"团子免费[天赋]",--15
"圣女普攻修改",--16
"圣女技能修改",--17
"狮子全屏免费",--18
"奥博全屏免费",--19
"奥博技能免费",--20
"影忍全屏范围",--21
"影忍免费数量",--22
"梦魇伤害[天赋]",--23
"梦魇时间[天赋]",--24
"梦魇免费[天赋]",--25
"劲凯伤害范围",--26
"全角色技免费",--27
"全角色技无冷",--28
"返回角色",
}, nil, "角色技能[天赋是角色天赋页面再开]")
if menu then
for i in pairs(menu) do
_ENV[({"fa1","fa2","fa3","fa4","fa5","fa6","fa7","fa8","fa9","fa10","fa11","fa12","fa13","fa14","fa15","fa16","fa17","fa18","fa19","fa20","fa21","fa22","fa23","fa24","fa25","fa26","fa27","fa28","ID7",})[i]]()
  end
 end 
end

function fa1()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end

function fa2()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 20, 16, false}})
end

function fa3()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end

function fa4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "负数为杀队友，正数为加护盾"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("35;30;25;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的冷却时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function fa6()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] =10.0 } , 
{["类型"]=  4  ,["偏移"]=  -80  ,["副特征码"]= 50},
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -84 , ["冻结"] =  false  , ["修改"] = 0  } , --冷却
  {["类型"] =  16 ,["偏移"] =  -80 , ["冻结"] =  true  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function fa7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;38;43;48::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的护盾"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;52;44;36::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的冷却CD"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa9()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 0.5 } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  60},
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -4 , ["冻结"] =  false  , ["修改"] = 114514  } , --技能
  {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] = 0  } , ---冷却
   {["类型"] =  4 ,["偏移"] =  4 , ["冻结"] =  false  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function fa10()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.3;1.6;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的距离"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa11()
readWrite({{false,60.0,0,16,nil,nil},{55.0,4,16},{50.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能无冷却")
end

function fa12()
qmnb = {
{["memory"] = 32},
{["name"] = "琪琪技能"},
{["value"] = 8.407790785948902E-44, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 114514, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
end

function fa13()
u=gg.prompt({"输入你的当前60主技能的冷却"},{15.0},{"number"})
f=gg.prompt({"请输入你想改的范围"},{10},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "盾位范围拉人"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = u[1], ["offset"] = -124, ["type"] = 16},
{["lv"] = 60, ["offset"] = -120, ["type"] = 4},
{["lv"] = 1.25, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -124, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = -120, ["type"] = 4, ["freeze"] = false},
{["value"] = f[1], ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function fa14()
u=gg.prompt({"输入你的想要的冷却"},{0},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "魔术师"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 100, ["offset"] = 64, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function fa15()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80;75;65;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你要改的钱数"
}, {i = "0"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa16()
qf=  gg.prompt({"无间隔","无后座","锁子弹"},nil,{"checkbox","checkbox","checkbox"})
if qf ~= nil then
if qf[1] then
    search(1089470464, 4, 32)
    py1(1050253722, 4, -4)
    py1(65536, 4, 152)
    xg1(0, 4, -12, true)
    gg.toast("无间隔")
end
if qf[2] then
    search(1089470464, 4, 32)
    py1(1050253722, 4, -4)
    py1(65536, 4, 152)
    xg1(0, 16, -8, false)
    gg.toast("无后座")
end
if qf[3] then
    search(1089470464, 4, 32)
    py1(1050253722, 4, -4)
    py1(65536, 4, 152)
    xg1(0, 4, 24, true)
    xg1(0, 4, 28, true)
    gg.toast("锁子弹")
end
end
end

function fa17()
qf=  gg.prompt({"免费无冷","自动攻击无间隔","攻击范围","持续时间"},nil,{"checkbox","checkbox","checkbox","checkbox"})
if qf ~= nil then
if qf[1] then
    search(1109393408, 4, 32)
    py1(100, 4, 4)
    py1(5, 16, 88)
    xg1(0, 16, 0, false)
    xg1(0, 4, 4, false)
    xg1(1, 4, 100, false)
    gg.toast("圣光倾泄免费无冷")
end
if qf[2] then
    search(1082130432, 4, 32)
    py1(1084227584, 4, 20)
    py1(1065353216, 4, 72)
    xg1(0, 16, -12, false)
    gg.toast("无间隔")
end
if qf[3] then
hj=gg.prompt({[1]="输入你要改的攻击范围"}, {[1]=""}, {[1]="number"})
if hj==nil then else
    search(1082130432, 4, 32)
    py1(1084227584, 4, 20)
    py1(1065353216, 4, 72)
    xg1(hj[1], 16, -8, false)
    gg.toast("已修改为"..hj[1].."范围")
end
end
if qf[4] then
hj=gg.prompt({[1]="输入你要改的持续时间"}, {[1]=""}, {[1]="number"})
if hj==nil then else
    search(1082130432, 4, 32)
    py1(1084227584, 4, 20)
    py1(1065353216, 4, 72)
    xg1(hj[1], 16, -4, false)
    gg.toast("已修改为"..hj[1].."持续时间")
end
end
end
end

function fa18()
u=gg.prompt({"输入你的想要的伤害"},{},{"number"})
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
{["value"] = u[1],["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)
end

function fa19()
u=gg.prompt({"输入你的想要的伤害"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = u[1],["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end

function fa20()
readWrite({{false,140.0,0,16,nil,nil},{135.0,4,16},{125.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能免费")
end

function fa21()
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{99,84,16,false}})
end

function fa22()
qmnb = {
{["memory"] = 32},
{["name"] = "影之忍者技能变多+免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =-36, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4},
{["value"] = 9999,["offset"] =-40, ["type"] = 4,},
}
xqmnb(qmnb)
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{0,88,4},{9999,92,16,false}})
end

function fa23()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;10;15;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的泡泡伤害"
}, {i = "100"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa24()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4;5;7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的火梦魇之力时间"
}, {i = "50"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;135;120;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的技能钱数"
}, {i = "0"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fa26()
local LL=gg.prompt({"↓伤害↓","↓吸人范围↓","↓冲刺距离↓","↓吸人时间↓"},{[1]="" },{[2]=""},{[3]=""},{[4]=""})
fastsearch
({{-934560717,4,32},{80,-0x20,4},{8,-0x24,16}},
{
{0,-0x20,4}--金币
,{0,-0x24,16}--冷却时间
,{LL[1],0x94,16}--伤害
,{LL[2],0x4C,16}--范围
,{LL[3],0x64,16}--攻击距离
,{LL[4],0x70,16}--吸人时间
})
end

function fa27()
fastsearch--全角色技能免费
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

function fa28()
fastsearch--全角色技能无冷
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

function f2()
UI = "f2"
local menu = gg.multiChoice({
"失忆者变发明家",--1
"雇佣兵变失忆者",--2
"发明家变失忆者",--3
"失忆者变女特工",--4
"命石者变小狮子",--5
"战斗少女变他哥",--6
"魔术师变机器人",--7
"失忆者变小梦魇",--8
"返回角色",
}, nil, "角色服装修改[修改成功后点对应的初始时装]")
if menu then
for i in pairs(menu) do
_ENV[({"fb1","fb2","fb3","fb4","fb5","fb6","fb7","fb8","ID7",})[i]]()
  end
 end 
end

function fb1()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7001;7002;7003;7004;7005", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;1001;1002;1003;1004;1005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2001;2002;2003;2004;2005", gg.TYPE_DWORD)
	 gg.toast(".")
	 gg.clearResults()
end

function fb3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;7001;7002;7003;7004;7005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7001;7002;7003;7004;7005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2001;2002;2003;2004;2005", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3063;3064;3065;3066;3067", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16001;16002;16003::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16001;16002;16003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15001;15002;15003", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;8001;8002;8003;8004;8005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8001;8002;8003;8004;8005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7063;7064;7065;7066;7067", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;6001;6002;6003;6004;6005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5001;5002;5003;5004;5005", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function fb8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10001;10002;10003;10004;10005", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function f3()
u=gg.prompt({"输入你的想要的角色\n\n100雇佣兵\n300女特工\n400小学妹\n500机器人\n600魔术师\n700发明家\n800战斗少女\n900小狐狸\n1000小梦魇\n1100水之忍者\n1200影之忍者\n1300星辰圣女\n1400黎明盾位\n1500小狮子\n1600命石者\n1700小骇客\n1800灵膳子\n1900机械之心\n2000指绘师\n2100劲凯\n10000BOSS"},{},{"number"})
fastsearch({{429496729602, 32, 32}, {0, -4, 4}, {100, 4, 4}}, {{u[1], 8, 4, true}})end

function ID8()
UI = "ID8"
local menu = gg.multiChoice({
"一键控分",--1
"备用控分",--2
"逃生秒赢",--3
"追捕秒赢[修复]",--4
"造成伤害",--5
"救人次数",--6
"击倒次数",--7
"备用伤害",--8
"备用救人",--9
"备用击倒",--10
"返回主页",
}, nil, "秒赢区域")
if menu then
for i in pairs(menu) do
_ENV[({"g1","g2","g3","g4","g5","g6","g7","g8","g9","g10","Main",})[i]]()
  end
 end 
end

function g1()
qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function g2()
qmnb = {
{["memory"] = 32},
{["name"] = "备用控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function g3()
fastsearch({{250612577,4,16384},
{-481296384,1136,4},
{436207620,1140,4},}, 
{{-476052414, 1112, 4,false},
{-516948194, 1116, 4,false},},"秒赢")

fastsearch({{184549354,4,16384},
{-481296384,100,4},{436207635,104,4},}, 
{{-486539256, 76, 4,false},
{-516948194, 80, 4,false},},"秒赢")

fastsearch({{250612577,4,16384},
{-481296384,2084,4},{436207620,2088,4},}, 
{{-486537216, 2060, 4,false},
{-301987312, 2064, 4,false},},"秒赢")

fastsearch({{250612577,4,16384},
{-481296384,2084,4},
{436207620,2088,4},}, 
{{-289928512, 2068, 4,false},
{-300938736, 2072, 4,false},},"秒赢")

fastsearch({{250612577,4,16384},
{-481296384,2084,4},
{436207620,2088,4},}, 
{{-516948194, 2076, 4,false},},"秒赢")

fastsearch({{184549290,4,16384},
{-481296384,392,4},
{436207644,396,4},
{-442563852,400,4},}, 
{{-476053504, 368, 4,false},
{-516948194, 372, 4,false},},"秒赢")

fastsearch({{184549350,4,16384},
{-481296384,116,4},
{436207635,120,4},
{-442563972,124,4},}, 
{{-476053494, 92, 4,false},
{-516948194, 96, 4,false},},"秒赢")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,"输入功能名称")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"")
fastsearch({{246450752,4,16384},
{-481296384,5948,4},
{436207620,5952,4},
{-442564508,5956,4},}, 
{{-476053503, 5924, 4,false},
{-516948194, 5928, 4,false},},"秒赢开启成功")
end

function g4()
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

function g5()
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
{["value"] = 2048,["offset"] =48, ["type"] = 16},
}
xqmnb(qmnb)
end

function g6()--救人次数
qmnb = {
{["memory"] = 32},
{["name"] = "救人次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
}
xqmnb(qmnb)
end

function g7()--击倒次数
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
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function g8()--备用造成伤害
qmnb = {
{["memory"] = 32},
{["name"] = "备用造成伤害"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =48, ["type"] = 16},
}
xqmnb(qmnb)
end

function g9()--备用救人次数
qmnb = {
{["memory"] = 32},
{["name"] = "备用救人次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
}
xqmnb(qmnb)
end

function g10()--备用击倒次数
qmnb = {
{["memory"] = 32},
{["name"] = "备用击倒次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function ID9()
UI = "ID9"
local menu = gg.multiChoice({
"疾跑换卡",--1
"跳高换卡",--2
"拳套换卡",--3
"阻箱换卡",--4
"皮卡换卡",--5
"返回主页",
}, nil, "换卡功能")
if menu then
for i in pairs(menu) do
_ENV[({"h1","h2","h3","h4","h5","Main",})[i]]()
  end
 end 
end

function h1()
u=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 20528, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51200, ["offset"] = 40, ["type"] = 4},

}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function h2()
u=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "跳高"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25653, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51456, ["offset"] = 40, ["type"] = 4},

}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function h3()
u=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "拳套"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 259072, ["offset"] = 40, ["type"] = 4},

}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function h4()
u=gg.prompt({"阻挡箱改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "阻挡箱"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 77056, ["offset"] = 40, ["type"] = 4},

}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function h5()
u=gg.prompt({"皮卡改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 46129, ["offset"] = 32, ["type"] = 4},
{["lv"] = 28416, ["offset"] = 40, ["type"] = 4},

}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function ID10()
UI = "ID10"
local menu = gg.multiChoice({
"火箭筒武器连发",--1
"迫击炮武器连发",--2
"冲锋枪武器连发",--3
"能量剑武器连发",--4
"蹦蹦枪武器连发",--5
"能量炮武器连发",--6
"霰弹枪武器连发",--7
"唤风镖武器连发",--8
"霸天斧武器连发",--9
"黎明盾武器连发",--10
"星辰女武器连发",--11
"威震天武器连发",--12
"热破枪武器连发",--13
"红蜘蛛武器连发",--14
"自动枪武器连发",--15
"电球枪武器连发",--16
"生物枪武器连发",--17
"像素剑武器连发",--18
"滋水枪武器连发",--19
"返回主页",
}, nil, "连发功能[级危]")
if menu then
for i in pairs(menu) do
_ENV[({"i1","i2","i3","i4","i5","i6","i7","i8","i9","i10","i11","i12","i13","i14","i15","i16","i17","i18","i19","Main",})[i]]()
  end
 end 
end

function i1()
qc=gg.alert("火箭筒连发","普通","乱斗")
if qc==1 then
u=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{u[1], 8, 4, false}, {0, 24, 16, false}})end
if qc==2 then
NH=gg.prompt({"输入乱斗火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
end

function i2()
u=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{u[1], 8, 4, false}, {0, 24, 16, false}})end

function i3()
u=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{u[1], 8, 4, false}})end

function i4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end

function i5()
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end

function i6()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end

function i7()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end

function i8()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end

function i9()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end

function i10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function i11()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end

function i12()
NH=gg.prompt({"输入威震天连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function i13()
NH=gg.prompt({"输入热破枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end

function i14()
NH=gg.prompt({"输入红蜘蛛(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end

function i15()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end

function i16()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end

function i17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end

function i18()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function i19()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function ID11()
UI = "ID11"
local menu = gg.multiChoice({
"医箱改物",--1
"实战改等",--2
"倒地移速",--3
"狗狗大小",--4
"疾跑改武",--5
"箭筒改武",--6
"疾跑buff",--7
"局内改等",--8
"局外改等",--9
"返回主页",
}, nil, "自调功能")
if menu then
for i in pairs(menu) do
_ENV[({"j1","j2","j3","j4","j5","j6","j7","j8","j9","Main",})[i]]()
  end
 end 
end

function j1()
local xt=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 0})
xtnb({{false,2303,0,4,nil,nil},{-256,-4,4},{1073741824,4,4}},{{xt[1]*256,-8,4,false}},4,32,"医疗箱")
end

function j2()
fastsearch({{1170,2,16384},{9232, 2, 2},{1164, 4, 2},{9200, 6, 2},{1164, 8, 2},{-5843, 12, 2},{-20464, 14, 2},{-7539, 16, 2},{25232, 18, 2},{-6753, 20, 2},{16384, 22, 2},{-7776, 24, 2},{20481, 26, 2}}, {{-476053491, 10, 4}, {-516948194, 14, 4}})
gg.clearResults()
local gy=gg.prompt({"大厅不显示局内有效"}, {[1] = 13}, {[1] = "text"})
if gy==nil then os.exit(print("你点击了取消哦")) end
fastsearch({{1170,2,16384},{9232, 2, 2},{1164, 4, 2},{9200, 6, 2},{1164, 8, 2},{-7264, 12, 2},{-226, 14, 2},{-7889, 16, 2},{25232, 18, 2},{-6753, 20, 2},{16384, 22, 2},{-7776, 24, 2},{20481, 26, 2}}, {{gy[1], 10, 2}})
end

function j3()
yw=gg.prompt({[1]='请输入要修改的倒地移速'}, {[1]='0.9'})
qmnb = {
{["memory"] = 32},
{["name"] = "倒地加速"},
{["value"] = 900.0, ["type"] = 16},
{["lv"] = 0.24199999868869781, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = yw[1], ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function j4()
yw=gg.prompt({"请输入你要改的大小"},{[1]="1.0" })
fastsearch({{18.0, 16, 32}, {8.0, -8, 16}, {1.0, -4, 16},  {-1.0, 8, 16}}, 
{
{yw[1], 4, 16, false}})
end

function j5()
yw=gg.prompt({"疾跑改:火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n请输入需要修改的道具卡↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改武器"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241,["offset"] =4, ["type"] = 4},
{["lv"] = 20528,["offset"] =32, ["type"] = 4},
{["lv"] = 51200,["offset"] =40, ["type"] = 4},
}
qmxg = {
{["value"] = yw[1],["offset"] =-12, ["type"] = 4},
}
xqmnb(qmnb)
end

function j6()
yw=gg.prompt({"火箭筒改:火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({{779514723,4,32},{1632071241,4,4},{64048,32,4},{25600,40,4}},{{yw[1],-12,4,false}})
end

function j7()
yw=gg.prompt({"BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"},{[1]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "疾跑buff"},
      {["value"] = 6750208, ["type"] = 4},
      {["lv"] = 106147, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = yw[1], ["offset"] = 0, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function j8()
a=gg.prompt({"输入想改的等级"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0xd4d630},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d634},})
end

function j9()
a=gg.prompt({"输入想改的等级"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0x1b3ec9c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b3ec9c+4},})
end

function ID12()
UI = "ID12"
local menu = gg.multiChoice({
"--切换82传送--",--1
"出生点",--2
"禁闭室",--3
"逃生点",--4
"左上锁",--5
"左下锁",--6
"右上锁",--7
"右下锁",--8
"上逃门",--9
"下逃门",--10
"一键锁",--11
"返回主页",
}, nil, "当前41传送")
if menu then
for i in pairs(menu) do
_ENV[({"ka1","ka2","ka3","ka4","ka5","ka6","ka7","ka8","ka9","ka10","ka11","Main",})[i]]()
  end
 end 
end

function ka2()
fastsearch({{0.3749999702,16,32},{-10,-152,16}},{{3.31672906876,-212,16},{15.10242652893,-204,16}}) 
end

function ka3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{41.2279510498,-212,16},{15.20110321045,-204,16}}) 
end

function ka4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.47306060791,-212,16},{15.10242652893,-204,16}}) 
end

function ka5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
end

function ka6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}}) 
end

function ka7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
end

function ka8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
end

function ka9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function ka10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.5991897583,-212,16},{10.4521522522,-204,16}})
end

function ka11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function ka1()
UI = "ka1"
local menu = gg.multiChoice({
"--切换乱斗传送--",--1
"逃生",--2
"禁闭",--3
"追捕",--4
"锁1",--5
"锁2",--6
"锁3",--7
"锁4",--8
"锁5",--9
"锁6",--10
"锁7",--11
"锁8",--12
"锁9",--13
"锁10",--14
"上门",--15
"中门",--16
"下门",--17
"一键",--18
"返回主页",
}, nil, "当前82传送")
if menu then
for i in pairs(menu) do
_ENV[({"kb1","kb2","kb3","kb4","kb5","kb6","kb7","kb8","kb9","kb10","kb11","kb12","kb13","kb14","kb15","kb16","kb17","kb18","Main",})[i]]()
  end
 end 
end

function kb2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end

function kb3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end

function kb4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end

function kb5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end

function kb6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end

function kb7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end

function kb8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end

function kb9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end

function kb10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end

function kb11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end

function kb12()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end

function kb13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end

function kb14()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end

function kb15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end

function kb16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function kb17()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end

function kb18()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function kb1()
UI = "kb1"
local menu = gg.multiChoice({
"--切换41传送--",--1
"boss房",--2
"教堂处",--3
"海盗船",--4
"C字楼",--5
"返回主页",
}, nil, "当前乱斗传送")
if menu then
for i in pairs(menu) do
_ENV[({"ID12","kc2","kc3","kc4","kc5","Main",})[i]]()
  end
 end 
end

function kc2()
fastsearch({{0.3749999702,16,32},{1111752704,-132,4}},{{66.4966506958,-212,16},{55.80109786987,-204,16},{3,-208,16,false}}) 
end

function kc3()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{95.24781799316,-212,16},{19.73115158081,-204,16},{3,-208,16,false}}) 
end

function kc4()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{69.37117767334,-212,16},{24.43232536316,-204,16},{3,-208,16,false}}) 
end

function kc5()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{44.47694778442,-212,16},{81.638671875,-204,16},{3,-208,16,false}}) 
end

function ID13()
UI = "ID13"
local menu = gg.multiChoice({
"针改时间",--1
"针改攻速",--2
"阻箱锁血",--3
"无限弹窗",--4
"无限食针",--5
"迫击秒落",--6
"迫击范围",--7
"拍击射程",--8
"毒液范围",--9
"引力范围",--10
"箭筒间隔",--11
"道具品质",--12
"疾跑无敌",--13
"一键美化",--14
"箱子千金",--15
"斧头范围",--16
"蹦枪无间",--17
"唤风无间",--18
"迫炮无间",--19
"冲锋无间",--20
"箭筒无间",--21
"返回主页",
}, nil, "道具功能\n无限弹窗是开锁弹窗")
if menu then
for i in pairs(menu) do
_ENV[({"l1","l2","l3","l4","l5","l6","l7","l8","l9","l10","l11","l12","l13","l14","l15","l16","l17","l18","l19","l20","l21","Main",})[i]]()
  end
 end 
end

function l1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("45,716,912.0;5.0;0.40000000596::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的针时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("肾上腺素无限时间")
	 gg.clearResults()
end

function l2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.12;-0.25::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.12;-0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "修改事例↓正数是移速负数是攻速[中间要有分号]"
}, {i = "0.5;-8"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function l3()
fastsearch
({
{0.00048828148,16,16384},
{-382907280,-1924,4},
{0,-2228,4}
},
{
{-516948194,-1924,4,false}})
end

function l4()
  fastsearch({
     {1200, 4, 32},
     {230.0, 0x48, 16},
   }, {
     {0, 0x48, 16, false },
     {0, 0x4C, 16, false},
     {0, 0x50, 16, false},
     {30.0, 0x40, 16, false},
     {30.0, 0x44, 16, false},
   })
   fastsearch({
     {10.0, 16, 32},
     {3.0, -4, 16},
     {0.30000001192092896, -8, 16},
   }, {
     {9999.0, -8, 16, false},
   },"超级开锁")
end

function l5()
qmnb = {
{["memory"] = 32},
{["name"] = "无限食针"},
{["value"] = -2048357704, ["type"] = 4},
{["lv"] = -1598756934, ["offset"] = 4, ["type"] = 4},
{["lv"] = 65536,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = 12, ["type"] = 16},
{["value"] = -1.5,["offset"] =16, ["type"] = 16},
}
xqmnb(qmnb)
end

function l6()
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

function l7()
NH=gg.prompt({"输入迫击炮范围(可进行多次修改)↓"},{[1]=""})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{NH[1], -36, 16, false}})end

function l8()
NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function l9()
u=gg.prompt({"输入你的想要的毒液范围"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "毒液范围"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = u[1], ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end

function I10()
u=gg.prompt({"输入你的想要的引力场范围"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "引力场范围"},
{["value"] = 500, ["type"] = 16},
{["lv"] = 20, ["offset"] = -0x4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =0x8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =0xc, ["type"] = 16},
}
qmxg = {
{["value"] = u[1], ["offset"] = 0x8, ["type"] = 16},
{["value"] = 2.5,["offset"] =168, ["type"] = 16},
}
xqmnb(qmnb)
end

function l11()
ran = gg.prompt({
   R  = "1级0.98ㅤㅤ5级0.78ㅤㅤ  9级0.58\n2级0.93ㅤㅤ6级0.73ㅤㅤ10级0.53\n3级0.88ㅤㅤ7级0.68ㅤㅤ11级0.48\n4级0.83ㅤㅤ8级0.63ㅤㅤ12级0.43\n13级0.38\n 14级0.35\n 15 0.3\n 16 0.25 \n 17 0.2 \n 18 0.15 \n 19 0.1\n 20 0.05 21 0\n↓请输入当前对应等级间隔↓",
   Y = "0.32超稳,亲自测试过的\n配合针嘎嘎快,又稳又爽\n↓请输入想要改的间隔数字:↓",
}, {i = "搜索值"})
if ran == nil then else
fastsearch({
{-0.05,16,32},
{ran.R,-0x4,16},
{1.8216880036222622E-44,0x4,16},
{1.6815581571897805E-44,0x8,16},
{2.1019476964872256E-43,0xC,16},
{4.203895392974451E-43,0x10,16}},
{{ran.Y,-0x4,16, false}})
gg.toast("火箭筒间隔修改成功")
end
end

function l12()
fastsearch({
     {26222, 2, 32},
     {-28646, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"普通卡")

	 fastsearch({
     {31232, 2, 32},
     {26377, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"稀有卡")
   
	fastsearch({
     {21490, 2, 32},
     {-29737, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"史诗卡")
end

function l13()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function l14()
qmnb = {
{["memory"] = 32},
{["name"] = "一键皮肤美化"},
{["value"] = 500001, ["type"] = 4},
{["lv"] = 500004, ["offset"] = 0x4, ["type"] = 4},
{["lv"] = 500005, ["offset"] = 0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 601211,["offset"] =0, ["type"] = 4},
{["value"] = 600756,["offset"] =0x4, ["type"] = 4},
{["value"] = 600366,["offset"] =0x8, ["type"] = 4},
{["value"] = 600016,["offset"] =0xC, ["type"] = 4},
{["value"] = 601571,["offset"] =0x10, ["type"] = 4},
{["value"] = 601566,["offset"] =0x14, ["type"] = 4},
{["value"] = 500009,["offset"] =0x18, ["type"] = 4},
{["value"] = 601686,["offset"] =0x1C, ["type"] = 4},
{["value"] = 600231,["offset"] =0x20, ["type"] = 4},
{["value"] = 600386,["offset"] =0x24, ["type"] = 4},
{["value"] = 600116,["offset"] =0x28, ["type"] = 4},
{["value"] = 601306,["offset"] =0x2C, ["type"] = 4},
{["value"] = 600431,["offset"] =0x30, ["type"] = 4},
{["value"] = 600811,["offset"] =0x34, ["type"] = 4},
{["value"] = 600331,["offset"] =0x38, ["type"] = 4},
{["value"] = 600391,["offset"] =0x3C, ["type"] = 4},
{["value"] = 601476,["offset"] =0x40, ["type"] = 4},
{["value"] = 600941,["offset"] =0x44, ["type"] = 4},
{["value"] = 600251,["offset"] =0x48, ["type"] = 4},
{["value"] = 601166,["offset"] =0x4C, ["type"] = 4},
{["value"] = 600161,["offset"] =0x50, ["type"] = 4},
{["value"] = 601591,["offset"] =0x54, ["type"] = 4},
{["value"] = 601171,["offset"] =0x58, ["type"] = 4},
{["value"] = 600946,["offset"] =0x5C, ["type"] = 4},
{["value"] = 600181,["offset"] =0x60, ["type"] = 4},
{["value"] = 601076,["offset"] =0x64, ["type"] = 4},
{["value"] = 600696,["offset"] =0x68, ["type"] = 4},
{["value"] = 601221,["offset"] =0x6C, ["type"] = 4},
{["value"] = 601976,["offset"] =0x70, ["type"] = 4},
{["value"] = 600746,["offset"] =0x74, ["type"] = 4},
{["value"] = 601256,["offset"] =0x78, ["type"] = 4},
{["value"] = 600881,["offset"] =0x7C, ["type"] = 4},
{["value"] = 601786,["offset"] =0x80, ["type"] = 4},
{["value"] = 601891,["offset"] =0x84, ["type"] = 4},
{["value"] = 601331,["offset"] =0x88, ["type"] = 4},
{["value"] = 601471,["offset"] =0x8C, ["type"] = 4},
{["value"] = 601716,["offset"] =0x90, ["type"] = 4},
{["value"] = 601836,["offset"] =0x94, ["type"] = 4},
{["value"] = 601881,["offset"] =0x98, ["type"] = 4},
}
xqmnb(qmnb)
end

function l15()
fastsearch({
{68477524,4,16384},
{68478236,-4,4}
},
{{-5.9029947e21,4,16,false},
{-2.02910209e20,8,16,false}
},"补给箱1000金币")
end

function l16()
qmnb = {
{["memory"] = 32},
{["name"] = "霸天斧范围"},
{["value"] = 6.25, ["type"] = 16},
{["lv"] = -1.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5,["offset"] =4, ["type"] = 16},
{["value"] = 0.25,["offset"] =8, ["type"] = 16},
{["value"] = 0.5,["offset"] =12, ["type"] = 16},
{["value"] = 1.5,["offset"] =-12, ["type"] = 16},
{["value"] = 584,["offset"] =-24, ["type"] = 4},
{["value"] = 583,["offset"] =-48, ["type"] = 4},
{["value"] = 200,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function l17()
qmnb = {
{["memory"] = 32},
{["name"] = "蹦蹦枪无间隔[仿xs]"},
{["value"] = 0.80000001192, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-16, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function l18()
qmnb = {
{["memory"] = 32},
{["name"] = "唤风镖无间隔[仿xs]"},
{["value"] = 0.80000001192, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-16, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function l19()
qmnb = {
{["memory"] = 32},
{["name"] = "迫击炮无间隔[仿xs]"},
{["value"] = 1.10000002384, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-16, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function l20()
qmnb = {
{["memory"] = 32},
{["name"] = "冲锋枪无间隔[仿xs]"},
{["value"] = 1.10000002384, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-16, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function l21()
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒无间隔[仿xs]"},
{["value"] = 0.98000001907, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-16, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function ID14()
UI = "ID14"
local menu = gg.multiChoice({
"41激活门",
"秒开一切",
"10倍移速",
"手雷全秒",
"全图救人",
"疾跑苍龙",
"苍龙全屏",
"返回主页",
}, nil, "过青铜区域")
if menu then
for i in pairs(menu) do
_ENV[({"m1","m2","m3","m4","m5","m6","m7","Main",})[i]]()
  end
 end 
end

function m1()
qmnb = {
{["memory"] = 32},
{["name"] = "4v1激活逃生门"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function m2()
yw=gg.alert("秒开一切","开启","关闭")
if yw==1 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("秒开一切开启成功")
gg.clearResults()
end
end
if yw==2 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0.6875", FLOAT)
gg.toast("秒开一切关闭成功")
gg.clearResults()
end
end
end

function m3()
qmnb = {
{["memory"] = 32},
{["name"] = "10倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function m4()
qmnb = {
{["memory"] = 32},
{["name"] = "手雷全屏秒杀"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end

function m5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("全屏救人开启成功")
	 gg.clearResults()
end


function m6()
nh({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{70015+65536, 10, 2, false}, {1, 12, 1, false}})end

function m7()
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
      {["value"] = 999, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function ID15()
UI = "ID15"
local menu = gg.multiChoice({
"四一吸人",--1
"八二吸人",--2
"锁金无冷",--3
"拳套杀人",--4
"人物锁血",--5
"实体隐身",--6
"丝血不死",--7
"护盾上限",--8
"护盾加血",--9
"实吸必开",--10
"实体吸人",--11
"关闭实吸",--12
"踩夹暴走",--13
"子弹穿墙",--14
"子弹射程",--15
"上帝视角",--16
"挥刀距离",--17
"逃生改阵",--18
"返回主页",
}, nil, "易封就图一乐")
if menu then
for i in pairs(menu) do
_ENV[({"n1","n2","n3","n4","n5","n6","n7","n8","n9","n10","n11","n12","n13","n14","n15","n16","n17","n18","Main",})[i]]()
  end
 end 
end

function n1()
qmnb = {
{["memory"] = 32},
{["name"] = "4v1吸人"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 30,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end

function n2()
qmnb = {
{["memory"] = 32},
{["name"] = "8v2吸人"},
{["value"] = 39, ["type"] = 4},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 88,["offset"] =-4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function n3()
yw=gg.alert("锁金无冷","开启","关闭")
if yw==1 then
qmnb = {
    {["memory"] = 32},
    {["name"] = "锁金无冷"},
    {["value"] = 89, ["type"] = 4},
    {["lv"] = 100,["offset"] =4, ["type"] = 4},
    {["lv"] = 102,["offset"] =36, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 0,["offset"] =36, ["type"] = 4},
  }
  xqmnb(qmnb)
  gg.clearResults()
end
if yw==2 then
qmnb = {
    {["memory"] = 32},
    {["name"] = "锁金冷"},
    {["value"] = 89, ["type"] = 4},
    {["lv"] = 100,["offset"] =4, ["type"] = 4},
    {["lv"] = 0,["offset"] =36, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 102,["offset"] =36, ["type"] = 4},
  }
  xqmnb(qmnb)
  gg.clearResults()
end
end

function n4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-1,638,525,344;1,083,179,008;21;4:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("拳套杀人")
	 gg.clearResults()
end

function n5()
fastsearch({{2.0,16,32},{1.5,4,16},{10.0,8,16},{0,12,16}},{{100,0,16},{-1,8,4,false}})
end

function n6()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69511342e20;-3.69679101e20;-3.68935057e20;-7.16094304e24;-1.30928164e25;-1.30683765e21;-9.40429064e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-5.90295867e21;-1.50466474e24:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function n7()
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

function n8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,128,792,064;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216::25", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1128792064",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1145141919810", DWORD)
gg.toast("生命护盾无上限")
gg.clearResults()
end
end

function n9()
fastsearch
({
{0.30000001192,16,16384},
{-1023406079,-660,4}
},
{
{110.5,0,16,false}},"护盾加血")
end

function n10()--实吸必开
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x180D518},})
end

function n11()--实体吸人
nc_offset(getso("libil2cpp.so"),{{-2.02910209e20,16,0x180D518},})
end

function n12()--关闭实吸
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x180D518},})
end

function n13()
qmnb = {
{["memory"] = 32},
{["name"] = "踩夹暴走"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
{["lv"] = 101,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 0.0,["offset"] =12, ["type"] = 16},
{["value"] = 111,["offset"] =16, ["type"] = 4},
}
xqmnb(qmnb)
end

function n14()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935128e20;-3.68935057e20;-9.39921227e20;-3.70087803e20;-1.54741998e26;-1.30951038e25;-1.30684047e21;-9.49145725e20;-9.40128224e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30951038e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("子弹穿墙")
	 gg.clearResults()
end

function n15()
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒射程"},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1073741824,["offset"] =-4, ["type"] = 4},
{["lv"] = 1088421888,["offset"] =-12, ["type"] = 4},
}
qmxg = {
{["value"] = 1176255488,["offset"] =-8, ["type"] = 4},
}
xqmnb(qmnb)
end

function n16()
fastsearch({{40.0,16,32},{6.0,4,16},{10.0, 12, 16},{30.0, 16, 16},}, {{45, 28, 16}})
end

function n17()
a=gg.prompt({"能量剑距离"})
fastsearch({{1115947008, 32, 32}, {240, 0x8, 4}, {1135869952, 0x14, 4},}, {{a[1], 0x30, 16, false}})
end	 

function n18()
fastsearch({{620124558209024,32, 32},{144384, 4,4},{51200, 8, 4},{7936, 16, 4}},--143,360
{{0,12,4},--1
{0,1180,4},--2
{0,9492+12,4},--3
{0,10680+12,4},--4
{0,2340+12,4},--5
{0,6484+12,4},--6
{0,8908+12,4},--7
{0,5296+12,4}--8
},'逃生改阵营')  
end

function ID16()
UI = "ID16"
local menu = gg.multiChoice({
"疾跑美化",--1
"箭筒一级",--2
"箭筒二级",--3
"箭筒三级",--4
"迫击一级",--5
"迫击二级",--6
"迫击三级",--7
"医箱美化",--8
"手弹美化",--9
"跳高美化",--10
"皮卡美化",--11
"冲锋美化",--12
"酒桶美化",--13
"走球美化",--14
"阻箱美化",--15
"传门美化",--16
"飞爪美化",--17
"狗狗美化",--18
"针针美化",--19
"毒液美化",--20
"滑板美化",--21
"能剑一级",--22
"能剑二级",--23
"能剑三级",--24
"蹦枪美化",--25
"能量碗炮",--26
"灰机美化",--27
"生命护盾",--28
"气垫美化",--29
"魔墙美化",--30
"战术导弹",--31
"追雷美化",--32
"疗球美化",--33
"引力美化",--34
"美时光机",--35
"返回主页",
}, nil, "实战美化")
if menu then
for i in pairs(menu) do
_ENV[({"o1","o2","o3","o4","o5","o6","o7","o8","o9","o10","o11","o12","o13","o14","o15","o16","o17","o18","o19","o20","o21","o22","o23","o24","o25","o26","o27","o28","o29","o30","o31","o32","o33","o34","o35","Main",})[i]]()
  end
 end 
end

function o1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600051\n7级\n600056\n10级\n600061\n13级\n600066\n秋枫\n600661\n蝙蝠\n600761\n心之痕\n600981\n蜜蜂\n601126\n彩带\n601181\n青龙\n601211\n蝶舞\n601681'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end


function o2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o3()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o4()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o5()
 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o6()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o7()
 gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o8()
 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='网红同款:600086\nDMM彩豆蛋糕:600091\n自制爱心便当:600096\n圣光之箱:600271\n外卖盒:600366\n月饼盒:600411\n新春礼盒600486\n春日野菜篮600516\nDMM掌机：600966\nD胜客披萨：600996\n3周年蛋糕：601271\n千星攻略：600576'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o9()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='新款:600071\n大棵菠萝:600041\n小猪储钱罐:600046\n氪金石脉冲弹:600226\n粽子:600336\n2019新春爆竹:600221\n圣诞雪球:600196\n单但瓦斯600521\n幸福捧花600576\n量子星星600756\n棉花枕头600781\n星能源石600906\n娃娃闹钟600931\n萌萌河豚601201\n金币爆弹601276'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o10()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='活泼:600101\n花式跑酷:600106\n恶搞之舞:600111\n完美空翻:600116'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o11()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='热销款:600121\n购物车:600001\n摇滚小黄鸭:600006\nDMM-R超跑:600231\n星猪骑士:600266\n幻影流星跑车600416\n皇家马车600466\n3周年皮肤601286\n浪漫花车:600561\n浪漫花车[梦幻]:650071\n小花喵：600776\n小花喵［噶呜］650251\n驯鹿礼物车：600851\n方程式赛车：600971\n夏洛克车：601486\n德拉木巡逻车:650581\n摇滚小黄鸭[甜心]:650061'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o12()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='马克Z1:600346\n古斯塔夫45:600351\n激光:600376 \n黄金枪:600436\n腾龙600941'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o13()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='白橡木:600126\n陈年老坛酒:600131\n女巫的魔药:600136\n幻想伏特加:600311\n超能水600371\n烟花桶600391\n冰镇鸡尾酒600451\n爆米花：600791\n爆米花［草莓］：650281\n乌贼：601071\n像素炼药锅：601236\n腰鼓：601356\n压力罐：601411\n压力罐［危险品］\n考拉滚滚：601436\n晶源之星：601691'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o14()
gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='环保款:600301\n光能双环:600306\n魔力紫球:600316\n闪闪飞轮:600321\n风火轮600476\n蝴蝶泡泡:600566\n蝴蝶泡泡[甜心]:650081\n星能时计：600811\n水流术：601066\n庆典彩球：601226\n小鸡扭蛋：601311\n小鸡扭蛋［成年］：650491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o15()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='DMM快递箱:600141\n老式游戏机:600026\n熊猫表情包:600021\n真龙之印:600281\n2019元旦快乐:600201\n周年蛋糕:600386\n快乐豆娃:600401\n未来音箱:600406\n大冰块:600456\n聚能魔方601366'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o16()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='深海之光:600291\n爱心水池:600296\n彩虹的约定:600326\n真龙现世:600331\n电音舞台600531\n电音舞台风格650031\n枫林:600666\n古树灵泉：600711\n古树灵泉［精灵］：650211\n圣诞之环：600846\n温泉：600976\n次元虫洞：601081\n莲花宝座：601636\n空间之门：601651'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o17()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='科技款:600151\n马桶抽:600156\n超凡蜘蛛网:600161\n神龙金爪:600276\n食人花:600341\n猫抓冰棒:600446\n量子飞爪600531\n量子飞爪风格650021\n布谷鸟：600716\n布谷鸟［桃粉］：650221\n星握：601386\n深海船锚：601186\n深海船锚［镀金］：650421\n捷德之爪：601466\n鲨鱼咬咬：601551'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='阿棕:600146\n短腿柯基:600031\n幼年哈士奇:600036\n黄金猎犬:600216\n彩虹贵宾犬:600471\n祭奠柴犬:600626\n祭奠柴犬 [黑柴]:650151\b憨憨胖达：\n憨巴狗：600866\n吐司犬：601046\n宇航员：601096\n幼年像素狗：601291\n气球犬：601296\n气球犬［喷涂］650401\n绘雪灵犬：601641'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o19()
	 gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='冷静药水:600166\nbobo奶瓶:600171\n校长的热狗:600176\nDNA超进化:600181\n大葱600421\n香蕉萌萌600481\n冰淇淋:600651\n雪顶奶茶：600856\n玉净瓶：600891\n玉净瓶［琉璃］：650321\n糖葫芦：600921\n星空糖果：601101\n锦鲤：601421\n小姜饼：601446\n神光棒：601511\n黑暗神光棒：650591\n朔夜之晶：601761'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o20()
	 ggg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='二甲苯蓝:600356\n女巫的毒药:600361\n蜘蛛粘液:600381\n蜜罐:600386\n水滴:600426\n黄金毒:600431\n闪耀的灯球600541\n闪耀的灯球风格650041\n时之星云：600956\n岩浆：601061\n致命提灯：601196\n致命提灯［萤火］：650441\n像素毒液瓶：603231\n爱辣五油：601706'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='青青双翘600469\n雷射子弹600501\n电音派对600526\n电音派对风格650011\n青龙之握601206\n滑板麒麟传说[熔岩]650131\n电音派对：600526\n电音派对[橙金]:650011\n鲤鱼浪板:600636\n鲤鱼浪板[乌焰]:650171\n海豚：600861\b重岩大剑：600896\n重岩打剑［玄冰］：650331\n科技星能：600946：\n数码链接：600961\n青龙之握：601206\n虎虎生威：601521\n叱咤风云：601621\n便携推进器：601746'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o22()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o23()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o24()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o25()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='青空爆弹600871\n夜之歌［樱花］：650301\n电能新星：601586\n王朝之辉：601591\n草莓果汁：601026\n草莓果汁［蓝莓］：650361\n聚星者：601361\n聚星者［炫晶］：650511\n贝利亚之力：601501\n紫金葫芦：601626'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o26()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500060", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500060", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='疾雷［圣洁］：650611\n科技之作：601721\n焦土之光：601726\n驭星者：601686\n驭星者［炫晶］：'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o27()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='绿玫瑰601366\n夜幕601314\n复古601406\n复古［烈空］：650551\n胜利飞燕1号：601471\n胜利飞燕2号：650571\n小葵试卷：601581'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o28()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='深蓝:600606\n离子能量:600611\n离子能量[天使]:650121\n超能粒子：601536\n雄狮之力：601541\n绵羊：600786\n绵羊［巧克力］：650271\n占星：600796\n防爆护盾：600911\n夹心饼干：601036\n夹心饼干［可可］：650381\n跃动音符：601056\n青龙盾：601216\n凌晶：601396\n帕拉吉之盾：601476\n福运到：601526\n晶能磐石：601701'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o29()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='Q弹柠檬:600681\n黑科技:600686\n黑科技[粉萌]:650191\n晶格科技：600741\n遗迹机关：600746\n熊猫气垫：600701\n节奏达人：600836\n橘子布丁：601031\n橘子布丁［草莓］：650371\n异星蘑菇：601086\n呼噜噜：601141\n好眠枕垫：601596'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o30()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='能源之门:600506\n迷你喷泉:600511\n彩虹孤影:600596\n圣殿之门:600621\n圣殿之门[冰晶]:650141\n热血竞技:600546\n蔷薇之恋:600571\n蔷薇之恋[初恋]:650091\n竹晚：600706\n山河屏风：600901\n山河屏风［星月］：650341\n霓虹光影：601166\n星空：601381\n侦案现场：601416\n侦案现场［投影］：650541\n星航中枢：601676'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o31()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='雷霆打击：600826\n爆破8号：600831\n爆破8号［魅影］：650291\n雷神制导：601251\n陷落文明：601256\n窜天猴：600926\n撒糖甜筒：601041\n撒糖甜筒［缤纷］：650391\n赞赞飞弹：601316\n火爆玉米：601351\n陨石流星：601371\n考场利器：601731'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o32()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='苍岚：601006\n紫盲：601011\n紫盲［春樱］：650351\n智械守卫：601601\n圣金甲虫：601606\n异星魔虫：601091\n纸箱鼹鼠：601306\n纸箱鼹鼠［白箱］：650481\n太鼓：601346\n雪人手办：601441'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o33()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='小蓝:600581\n小Y:600586\n小Y[甜心]:6500111\n治疗精灵：600721\n治疗精灵［粉灵］：650231\n电疗精灵600726\n女神使者：600731\n炫音精灵：600841\n助手机器人：600916\n兔兔花灯：600936\n牙牙：601136\n魔法茶壶：601171\n异星精灵：601376\n迪迦之光：601461\n护理终端：601741\n护理终端［急诊］：650651'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o34()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='蓝光:600551\n水之漩涡:600556\n水之漩涡[神秘]:650051\n飓风之力:600671\n魔能沙暴:600676\n幻星黑洞：600751\n极地暴雪：600801\n龙啸之域：601221\n魔力扫把：601391\n紧箍咒：601631\n紧箍咒［玉侓］：650621\n夜愿：601696'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function o35()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='\n绿野仙踪：601426\n紫气东来：601431\n紫气东来［余霞］：650561\n小小汤圆：601531'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ID17()
gg.alert("设置好数值后，对应的功能修改数值将会是你填的数值")
UI = "ID17"
local menu = gg.multiChoice({
"基础调试",
"连发调试",
"返回主页",
}, nil, "调试菜单[连发有两个，一个是直接连发功能里面，那个是自调，另一个在一键修改里面]")
if menu then
for i in pairs(menu) do
_ENV[({"ts1","ts2","Main",})[i]]()
  end
 end 
end

function ts1()
gg.toast("读取成功！")
     if not io.open('/sdcard/Download/人物加速','r') or not io.open('/sdcard/Download/人物血量','r') or not io.open('/sdcard/Download/开锁速度','r') or not io.open('/sdcard/Download/人物视角','r') or not io.open('/sdcard/Download/全局加速','r') or not io.open('/sdcard/Download/金币数量','r') or not io.open('/sdcard/Download/人物高跳','r') or not io.open('/sdcard/Download/医箱范围','r') or not io.open('/sdcard/Download/手雷伤害','r') or not io.open('/sdcard/Download/手雷范围','r') then
io.open('/sdcard/Download/人物加速','w'):write(0)--1
io.open('/sdcard/Download/人物血量','w'):write(0)--2
io.open('/sdcard/Download/开锁速度','w'):write(0)--3
io.open('/sdcard/Download/人物视角','w'):write(0)--4
io.open('/sdcard/Download/全局加速','w'):write(0)--5
io.open('/sdcard/Download/金币数量','w'):write(0)--6
io.open('/sdcard/Download/人物高跳','w'):write(0)--7
io.open('/sdcard/Download/医箱范围','w'):write(0)--8
io.open('/sdcard/Download/手雷伤害','w'):write(0)--9
io.open('/sdcard/Download/手雷范围','w'):write(0)--10
end

if gg.alert("基础调试")==1 then
TS = gg.prompt({
'人物加速',
'人物血量[100;10000]',
'开锁速度[0;100]',
'人物视角[12;100]',
'全局加速[1;10]',
'金币数量[1;100000]',
'人物高跳',
'医箱范围',
'手雷伤害[1;1000]',
'手雷范围',
},{"2.8","100","3","3","3","1000","2.8","2.8","1","2.8",},{

'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
'number',
})
if TS==nil then
TS_1=0
TS_2=0
TS_3=0
TS_4=0
TS_5=0
TS_6=0
TS_7=0
TS_8=0
TS_9=0
TS_10=0
else
TS_1=TS[1]
TS_2=TS[2]
TS_3=TS[3]
TS_4=TS[4]
TS_5=TS[5]
TS_6=TS[6]
TS_7=TS[7]
TS_8=TS[8]
TS_9=TS[9]
TS_10=TS[10]
end
io.open('/sdcard/Download/人物加速','w'):write(TS_1)
io.open('/sdcard/Download/人物血量','w'):write(TS_2)
io.open('/sdcard/Download/开锁速度','w'):write(TS_3)
io.open('/sdcard/Download/人物视角','w'):write(TS_4)
io.open('/sdcard/Download/全局加速','w'):write(TS_5)
io.open('/sdcard/Download/金币数量','w'):write(TS_6)
io.open('/sdcard/Download/人物高跳','w'):write(TS_7)
io.open('/sdcard/Download/医箱范围','w'):write(TS_8)
io.open('/sdcard/Download/手雷伤害','w'):write(TS_9)
io.open('/sdcard/Download/手雷范围','w'):write(TS_10)
gg.toast("保存成功！")
end
end

function ts2()
gg.toast("读取成功！")
     if not io.open('/sdcard/Download/火箭筒普通连发','r') or not io.open('/sdcard/Download/火箭筒乱斗连发','r') or not io.open('/sdcard/Download/迫击炮1级连发','r') or not io.open('/sdcard/Download/冲锋枪连发','r') or not io.open('/sdcard/Download/能量剑普通连发','r') or not io.open('/sdcard/Download/能量剑金库连发','r') or not io.open('/sdcard/Download/能量剑乱斗连发','r') or not io.open('/sdcard/Download/蹦蹦枪普通连发','r') or not io.open('/sdcard/Download/蹦蹦枪金库连发','r') or not io.open('/sdcard/Download/蹦蹦枪乱斗连发','r') or not io.open('/sdcard/Download/能量炮1级连发','r') or not io.open('/sdcard/Download/霰弹枪普通连发','r') or not io.open('/sdcard/Download/霰弹枪金库连发','r') or not io.open('/sdcard/Download/换风镖连发','r') or not io.open('/sdcard/Download/霸天斧连发','r') or not io.open('/sdcard/Download/盾位连发','r') or not io.open('/sdcard/Download/圣女连发','r') or not io.open('/sdcard/Download/威震天连发','r') or not io.open('/sdcard/Download/热破连发','r') or not io.open('/sdcard/Download/红蜘蛛连发','r') or not io.open('/sdcard/Download/自动手枪连发','r') or not io.open('/sdcard/Download/电球枪连发','r') or not io.open('/sdcard/Download/生物手枪连发','r') or not io.open('/sdcard/Download/像素剑连发','r') or not io.open('/sdcard/Download/滋水枪连发','r') then

io.open('/sdcard/Download/火箭筒普通连发','w'):write(0)--1
io.open('/sdcard/Download/火箭筒乱斗连发','w'):write(0)--2
io.open('/sdcard/Download/迫击炮1级连发','w'):write(0)--3
io.open('/sdcard/Download/冲锋枪连发','w'):write(0)--4
io.open('/sdcard/Download/能量剑普通连发','w'):write(0)--5
io.open('/sdcard/Download/能量剑金库连发','w'):write(0)--6
io.open('/sdcard/Download/能量剑乱斗连发','w'):write(0)--7
io.open('/sdcard/Download/蹦蹦枪普通连发','w'):write(0)--8
io.open('/sdcard/Download/蹦蹦枪金库连发','w'):write(0)--9
io.open('/sdcard/Download/蹦蹦枪乱斗连发','w'):write(0)--10
io.open('/sdcard/Download/能量炮1级连发','w'):write(0)--11
io.open('/sdcard/Download/霰弹枪普通乱发','w'):write(0)--12
io.open('/sdcard/Download/霰弹枪金库连发','w'):write(0)--13
io.open('/sdcard/Download/换风镖连发','w'):write(0)--14
io.open('/sdcard/Download/霸天斧连发','w'):write(0)--15
io.open('/sdcard/Download/盾位连发','w'):write(0)--16
io.open('/sdcard/Download/圣女连发','w'):write(0)--17
io.open('/sdcard/Download/威震天连发','w'):write(0)--18
io.open('/sdcard/Download/热破连发','w'):write(0)--19
io.open('/sdcard/Download/红蜘蛛连发','w'):write(0)--20
io.open('/sdcard/Download/自动手枪连发','w'):write(0)--21
io.open('/sdcard/Download/电球枪连发','w'):write(0)--22
io.open('/sdcard/Download/生物手枪连发','w'):write(0)--23
io.open('/sdcard/Download/像素剑连发','w'):write(0)--24
io.open('/sdcard/Download/滋水枪连发','w'):write(0)--25
end

if gg.alert("连发调试[5较稳]")==1 then
TS = gg.prompt({
'火箭筒普通连发[2;1000]',--1
'火箭筒乱斗连发[2;1000]',--2
'迫击炮1级连发[2;1000]',--3
'冲锋枪连发[2;1000]',--4
'能量剑普通连发[2;1000]',--5
'能量剑金库连发[2;1000]',--6
'能量剑乱斗连发[2;1000]',--7
'蹦蹦枪普通连发[2;1000]',--8
'蹦蹦枪金库连发[2;1000]',--9
'蹦蹦枪乱斗连发[2;1000]',--10
'能量炮1级连发[2;1000]',--11
'霰弹枪普通连发[2;1000]',--12
'霰弹枪金库连发[2;1000]',--13
'换风镖连发[2;1000]',--14
'霸天斧连发[2;1000]',--15
'盾位连发[2;1000]',--16
'圣女连发[2;1000]',--17
'威震天连发[2;1000]',--18
'热破连发[2;1000]',--19
'红蜘蛛连发[2;1000]',--20
'自动手枪连发[2;1000]',--21
'电球枪连发[2;1000]',--22
'生物手枪连发[2;1000]',--23
'像素剑连发[2;1000]',--24
'滋水枪连发连发[2;1000]',--25
},{"5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5","5",},{

'number',--1
'number',--2
'number',--3
'number',--4
'number',--5
'number',--6
'number',--7
'number',--8
'number',--9
'number',--10
'number',--11
'number',--12
'number',--13
'number',--14
'number',--15
'number',--16
'number',--17
'number',--18
'number',--19
'number',--20
'number',--21
'number',--22
'number',--23
'number',--24
'number',--25
})
if TS==nil then
TS_1=0
TS_2=0
TS_3=0
TS_4=0
TS_5=0
TS_6=0
TS_7=0
TS_8=0
TS_9=0
TS_10=0
TS_11=0
TS_12=0
TS_13=0
TS_14=0
TS_15=0
TS_16=0
TS_17=0
TS_18=0
TS_19=0
TS_20=0
TS_21=0
TS_22=0
TS_23=0
TS_24=0
TS_25=0
else
TS_1=TS[1]
TS_2=TS[2]
TS_3=TS[3]
TS_4=TS[4]
TS_5=TS[5]
TS_6=TS[6]
TS_7=TS[7]
TS_8=TS[8]
TS_9=TS[9]
TS_10=TS[10]
TS_11=TS[11]
TS_12=TS[12]
TS_13=TS[13]
TS_14=TS[14]
TS_15=TS[15]
TS_16=TS[16]
TS_17=TS[17]
TS_18=TS[18]
TS_19=TS[19]
TS_20=TS[20]
TS_21=TS[21]
TS_22=TS[22]
TS_23=TS[23]
TS_24=TS[24]
TS_25=TS[25]
end
io.open('/sdcard/Download/火箭筒普通连发','w'):write(TS_1)--1
io.open('/sdcard/Download/火箭筒乱斗连发','w'):write(TS_2)--2
io.open('/sdcard/Download/迫击炮1级连发','w'):write(TS_3)--3
io.open('/sdcard/Download/冲锋枪连发','w'):write(TS_4)--4
io.open('/sdcard/Download/能量剑普通连发','w'):write(TS_5)--5
io.open('/sdcard/Download/能量剑金库连发','w'):write(TS_6)--6
io.open('/sdcard/Download/能量剑乱斗连发','w'):write(TS_7)--7
io.open('/sdcard/Download/蹦蹦枪普通连发','w'):write(TS_8)--8
io.open('/sdcard/Download/蹦蹦枪金库连发','w'):write(TS_9)--9
io.open('/sdcard/Download/蹦蹦枪乱斗连发','w'):write(TS_10)--10
io.open('/sdcard/Download/能量炮1级连发','w'):write(TS_11)--11
io.open('/sdcard/Download/霰弹枪普通乱发','w'):write(TS_12)--12
io.open('/sdcard/Download/霰弹枪金库连发','w'):write(TS_13)--13
io.open('/sdcard/Download/换风镖连发','w'):write(TS_14)--14
io.open('/sdcard/Download/霸天斧连发','w'):write(TS_15)--15
io.open('/sdcard/Download/盾位连发','w'):write(TS_16)--16
io.open('/sdcard/Download/圣女连发','w'):write(TS_17)--17
io.open('/sdcard/Download/威震天连发','w'):write(TS_18)--18
io.open('/sdcard/Download/热破连发','w'):write(TS_19)--19
io.open('/sdcard/Download/红蜘蛛连发','w'):write(TS_20)--20
io.open('/sdcard/Download/自动手枪连发','w'):write(TS_21)--21
io.open('/sdcard/Download/电球枪连发','w'):write(TS_22)--22
io.open('/sdcard/Download/生物手枪连发','w'):write(TS_23)--23
io.open('/sdcard/Download/像素剑连发','w'):write(TS_24)--24
io.open('/sdcard/Download/滋水枪连发','w'):write(TS_25)--25
gg.toast("保存成功！")
end
end

function ID18()
UI = "ID18"
local menu = gg.multiChoice({
"基础一键",
"连发一键",
"返回主页",
}, nil, "一键修改[在调试菜单里面调试完后在来改]")
if menu then
for i in pairs(menu) do
_ENV[({"p1","p2","Main",})[i]]()
  end
 end 
end

function p1()
UI = "p1"
local menu = gg.multiChoice({
"人物加速",--1
"人物血量",--2
"开锁速度",--3
"人物视角",--4
"全局加速",--5
"金币数量",--6
"人物高跳",--7
"医箱范围",--8
"手雷伤害",--9
"手雷范围",--10
"返回主页",
}, nil, "一键修改[孤影原创]")
if menu then
for i in pairs(menu) do
_ENV[({"pa1","pa2","pa3","pa4","pa5","pa6","pa7","pa8","pa9","pa10","Main",})[i]]()
  end
 end 
end

function pa1()
A1 = io.open('/sdcard/Download/人物加速','r'):read("*a")
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1048039129, ["type"] = 4},
{["lv"] = 1084017869,["offset"] =-12, ["type"] = 4},
}
qmxg ={
{["value"] = A1,["offset"] =-28, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end


function pa2()--2
A2 = io.open('/sdcard/Download/人物血量','r'):read("*a")
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1050253722,["offset"] =-16, ["type"] = 4},
}
qmxg ={
{["value"] = A2,["offset"] =-24, ["type"] = 16,["freeze"] = false},
{["value"] = A2,["offset"] =-20, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end


function pa3()--3
A3 = io.open('/sdcard/Download/开锁进度','r'):read("*a")
qmnb = {
{["memory"] = 32},
{["name"] = "开锁速度"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = A3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function pa4()--4
A4 = io.open('/sdcard/Download/人物视角','r'):read("*a")
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1109393408, ["type"] = 4},
{["lv"] = 1086324736,["offset"] =4, ["type"] = 4},
}
qmxg ={
{["value"] = A4,["offset"] =28, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end

function pa5()--5
A5 = io.open('/sdcard/Download/全局加速','r'):read("*a")
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1020054733, ["type"] = 4},
{["lv"] = 1031127695,["offset"] =-4, ["type"] = 4},
}
qmxg ={
{["value"] = A5,["offset"] =-8, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end

function pa6()--6
A6 = io.open('/sdcard/Download/金币数量','r'):read("*a")
fastsearch({
     {1104150528, 4, 32},
     {2, 64, 4},
   }, {
     {A6, 52, 4, false},
   },"无限金币")
end

function pa7()
A7 = io.open('/sdcard/Download/人物高跳','r'):read("*a")
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = A7,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function pa8()
A8 = io.open('/sdcard/Download/医箱范围','r'):read("*a")
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = A8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function pa9()
A9 = io.open('/sdcard/Download/手雷伤害','r'):read("*a")
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = A9,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function pa10()
A10 = io.open('/sdcard/Download/手雷范围','r'):read("*a")
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = A10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function p2()
UI = "ID10"
local menu = gg.multiChoice({
"火箭筒武器连发",--1
"迫击炮武器连发",--2
"冲锋枪武器连发",--3
"能量剑武器连发",--4
"蹦蹦枪武器连发",--5
"能量炮武器连发",--6
"霰弹枪武器连发",--7
"唤风镖武器连发",--8
"霸天斧武器连发",--9
"黎明盾武器连发",--10
"星辰女武器连发",--11
"威震天武器连发",--12
"热破枪武器连发",--13
"红蜘蛛武器连发",--14
"自动枪武器连发",--15
"电球枪武器连发",--16
"生物枪武器连发",--17
"像素剑武器连发",--18
"滋水枪武器连发",--19
"返回主页",
}, nil, "连发一键[在一键调试中调试完后再开]")
if menu then
for i in pairs(menu) do
_ENV[({"pb1","pb2","pb3","pb4","pb5","pb6","pb7","pb8","pb9","pb10","pb11","pb12","pb13","pb14","pb15","pb16","pb17","pb18","pb19","Main",})[i]]()
  end
 end 
end

function pb1()
qc=gg.alert("火箭筒连发","普通","乱斗")
if qc==1 then
B1 = io.open('/sdcard/Download/火箭筒普通连发','r'):read("*a") fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{A1, 8, 4, false}, {0, 24, 16, false}})end
if qc==2 then
B2 = io.open('/sdcard/Download/火箭筒乱斗连发连发','r'):read("*a") fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{B2, 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{B2, 8, 4, false}, {0, 24, 16, false}})end
end

function pb2()
B3 = io.open('/sdcard/Download/迫击炮1级连发','r'):read("*a") fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{B3, 8, 4, false}, {0, 24, 16, false}})end

function pb3()
B4 = io.open('/sdcard/Download/冲锋枪连发','r'):read("*a") fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{B4, 8, 4, false}})end

function pb4()
qc=gg.alert("能量剑","普通","金库","大乱斗新地图") if qc==1 then B5 = io.open('/sdcard/Download/能量剑普通连发','r'):read("*a") fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B5, 8, 4, false}}) end if qc==2 then B6 = io.open('/sdcard/Download/能量剑金库连发','r'):read("*a") fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B6, 8, 4, false}}) end if qc==3 then B7 = io.open('/sdcard/Download/能量剑乱斗连发','r'):read("*a") fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B7, 8, 4, false}}) end
end

function pb5()
qc=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then B8 = io.open('/sdcard/Download/蹦蹦枪普通连发','r'):read("*a") fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B8, 8, 4, false}, {0, 24, 16, false}}) end if qc==2 then B9 = io.open('/sdcard/Download/蹦蹦枪金库连发','r'):read("*a") fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B9, 8, 4, false}, {0, 24, 16, false}}) end if qc==3 then B10 = io.open('/sdcard/Download/蹦蹦枪乱斗连发','r'):read("*a") fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B10, 8, 4, false}, {0, 24, 16, false}}) end
end

function pb6()
B11 = io.open('/sdcard/Download/能量炮1级连发','r'):read("*a") fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B11, 8, 4, false}, {0, 24, 16, false}})end

function pb7()
qc=gg.alert("霰弹枪","普通","金库") if qc==1 then B12 = io.open('/sdcard/Download/霰弹枪普通连发','r'):read("*a") fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{B12, 8, 4, false}, {0, 24, 16, false}}) end if qc==2 then B13 = io.open('/sdcard/Download/霰弹枪金库连发','r'):read("*a") fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{B13, 8, 4, false}, {0, 24, 16, false}}) end
end

function pb8()
B14 = io.open('/sdcard/Download/换风镖连发','r'):read("*a") fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{B14, 8, 4, false}, {0, 24, 16, false}})end

function pb9()
B15 = io.open('/sdcard/Download/霸天斧连发','r'):read("*a") fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{B15, 8, 4, false}})end

function pb10()
B16 = io.open('/sdcard/Download/盾位连发','r'):read("*a") fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B16, 8, 4, false}})end

function pb11()
B17 = io.open('/sdcard/Download/圣女连发','r'):read("*a") fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{B17, 8, 4, false}, {0, 24, 16, false}})end

function pb12()
B18 = io.open('/sdcard/Download/威震天连发','r'):read("*a") fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B18, 8, 4, false}})end

function pb13()
B19 = io.open('/sdcard/Download/热破连发','r'):read("*a") fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{B19, 8, 4, false}, {0, 24, 16, false}})end

function pb14()
B20 = io.open('/sdcard/Download/红蜘蛛连发','r'):read("*a") fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{B20, 8, 4, false}})end

function pb15()
B21 = io.open('/sdcard/Download/自动手枪连发','r'):read("*a") fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{B21, 8, 4, false}})end

function pb16()
B22 = io.open('/sdcard/Download/电球枪连发','r'):read("*a") fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B22, 8, 4, false}, {0, 16, 16, false}})end

function pb17()
B23 = io.open('/sdcard/Download/生物手枪连发','r'):read("*a") 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {B23, 8, 4, false}})end

function pb18()
B24 = io.open('/sdcard/Download/像素剑连发','r'):read("*a") fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B24, 8, 4, false}})end

function pb19()
B25 = io.open('/sdcard/Download/滋水枪连发','r'):read("*a") fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B25, 8, 4, false}})end

function ID19()
UI = "ID19"
local menu = gg.multiChoice({
"追无限狂",--1
"延迟功能",--2
"实体美化",--3
"优化战绩",--4
"全图高亮",--5
"极速回血",--6
"阻箱全屏",--7
"人物上色",--8
"攻击吸血",--9
"人物反伤",--10
"修改段位",--11
"大神资格",--12
"灵魂出窍",--13
"皮卡跳跃",
"返回主页",
}, nil, "其他功能")
if menu then
for i in pairs(menu) do
_ENV[({"q1","q2","q3","q4","q5","q6","q7","q8","q9","q10","q11","q12","q13","q14","Main",})[i]]()
  end
 end 
end

function q1()
xtnb({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) end

function q2()
yw=gg.alert("延迟功能","开启","关闭")
if yw==1 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("666", FLOAT)
gg.toast("延迟开启成功")
gg.clearResults()
end
end
if yw==2 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("666", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1000", FLOAT)
gg.toast("人物延迟关闭成功")
gg.clearResults()
end
end
end

function q3()
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

function q4()
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function q5()
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

function q6()
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

function q7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function q8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.19999998808;1.2:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function q9()
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

function q10()
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

function q11()
qc=gg.alert("改段位","逃生","追捕")
if qc==1 then 
local qm=gg.prompt({"逃生改段位"}, {[1] = 999}, {[1] = "text"})
if qm==nil then os.exit(print("亲～你点击了取消哦")) end
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "逃生实体段位"},
{["value"] = 900001, ["type"] = D},
{["lv"] = 910001,["offset"] =4, ["type"] = D},
{["lv"] = 0,["offset"] =8, ["type"] = D},
},
{
{["value"] = qm[1],["offset"] =-44, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
if qc==2 then 
local qm=gg.prompt({"追捕改段位"}, {[1] = 999}, {[1] = "text"})
if qm==nil then os.exit(print("亲～你点击了取消哦")) end
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "追捕实体段位 "},
{["value"] = 900001, ["type"] = D},
{["lv"] = 910001,["offset"] =4, ["type"] = D},
{["lv"] = 0,["offset"] =8, ["type"] = D},
},
{
{["value"] = qm[1],["offset"] =-36, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
end

function q12()
fastsearch({{104,4,32},{103,-4, 4},{102,-8,4},{101,-12,4},{4,-16,4}},{{304,0,4},{303,-4,4},{302,-8,4},{301,-12,4}})
end

function q13()
qmnb = {
{["memory"] = 32},
{["name"] = "灵魂出窍"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = -1,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function q14()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-4,294,967,177;4,294,967,295;8;4,294,967,295:125", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_QWORD)
	 gg.toast("倒车改跳跃")
	 gg.clearResults()
	 end

function ID20()
UI = "ID20"
local menu = gg.multiChoice({
"登陆防闪\n----直装区域----",--1
"全图高亮",--2
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
"击倒数量",--13
"营救次数",--14
"伤害数量",--15
"道具无冷",--16
"武器秒杀\n----逃生稳定----",--17
"三倍开锁",--18
"完美开锁",--19
"踩夹暴走",--20
"皮卡效果",--21
"跳高效果",--22
"渲染透视",--23
"快速回血",--24
"人物明透",--25
"反弹伤害",--26
"黎明盾位",--27
"命石抱摔",--28
"水忍滑铲",--29
"无视指盘\n----追捕稳定----",--30
"逃生减血",--31
"皮卡效果",--32
"一键控分",--33
"攻击吸血",--34
"明亮透视",--35
"酒桶一套",--36
"影忍技能",--37
"劲凯技能",--38
"梦魇免费",--39
"返回主页",
}, nil, "A内存直装")
if menu then
for i in pairs(menu) do
_ENV[({"r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28","r29","r30","r31","r32","r33","r34","r35","r36","r37","r38","r39","Main",})[i]]()
  end
 end 
end

function r1()--登录防闪
qmnb = {
{["memory"] = 8},
{["name"] = "登录防闪"},
{["value"] = 778923875, ["type"] = 4},
{["lv"] = 28527,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = -1,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end     

function r2()--全图高亮
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

function r3()--人物反伤
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

function r4()--武器间隔
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

function r5()--人物加速
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

function r6()
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

function r7()
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

function r8()
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

function r9()
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

function r10()
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

function r11()
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

function r12()
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

function r13()
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

function r14()
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

function r15()
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

function r16()
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

function r17()
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

function r18()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function r19()
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

function r20()
qmnb = {
{["memory"] = 32},
{["name"] = "踩夹暴走"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
{["lv"] = 101,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 0.0,["offset"] =12, ["type"] = 16},
{["value"] = 111,["offset"] =16, ["type"] = 4},
}
xqmnb(qmnb)
end

function r21()
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
end

function r22()
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
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

function r23()
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

function r24()--极速回血
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
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

function r25()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
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

function r26()--人物反伤
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
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

function r27()--黎明盾卫
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "黎明盾卫第一步"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 60,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "黎明盾卫第二步"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 15.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r28()--命石抱摔
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "命石抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = -156, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0, ["offset"] = -260, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = -256, ["type"] = 4, ["freeze"] = true},
{["value"] = 3.0, ["offset"] = -100, ["type"] = 16, ["freeze"] = true},
{["value"] = 80.0, ["offset"] = -96, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  

function r29()--水忍滑铲
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "水忍滑铲"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 70,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
}
xqmnb(qmnb)
end

function r30()--无视锁盘
qmnb = {
{["memory"] = 32},
{["name"] = "无视锁盘"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function r31()
qmnb = {
{["memory"] = 32},
{["name"] = "逃生减血"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1.0, ["offset"] = -20, ["type"] = 16},
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function r32()
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
end

function r33()
qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function r34()--攻击吸血
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 0.20, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r35()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
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

function r36()--酒桶一套
gg.alert("酒桶一套配合减血直接秒杀！")
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

function r37()--影忍技能
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "影忍技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =-36, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
{["value"] = 1.5,["offset"] =84, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  

function r38()--劲铠技能
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "劲铠技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 8.0,["offset"] =-36, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 6.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 3.3,["offset"] =104, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r39()--梦魇免费
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "梦魇免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 6.0,["offset"] =-36, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function ID21()
UI = "ID21"
local menu = gg.multiChoice({
"全部间隔",--1
"锁定子弹",--2
"无后座力",--3
"腕炮范围",--4
"武器秒杀",--5
"道具无冷",--6
"返回主页",
}, nil, "火力功能")
if menu then
for i in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","Main",})[i]]()
  end
 end 
end

function s1()
yw=gg.alert("无间隔","卡屏无间隔","全武器无间隔","a内存无间隔")
if yw==1 then
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b13ebc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13ec0},})
end
if yw==2 then
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
if yw==3 then
local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end
end

function s2()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end    

function s3()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
	 gg.clearResults()
end     

function s4()
a=gg.prompt({"腕炮范围↓"})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("腕炮范围修改为"..a[1])
end

function s5()
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

function s6()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end

function ID22()
UI = "ID22"
local menu = gg.multiChoice({
"A无间隔",--1
"半高移速",--2
"人物爬墙",--3
"移动开物",--4
"乱斗锁卡",--5
"道具无冷",--6
"无后座力",--7
"锁定子弹",--8
"子弹穿墙",--9
"超远射程",--10
"疾跑无敌",--11
"返回主页",
}, nil, "乱斗功能")
if menu then
for i in pairs(menu) do
_ENV[({"t1","t2","t3","t4","t5","t6","t7","t8","t9","t10","t11","Main",})[i]]()
  end
 end 
end

function t1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end

function t2()
qmnb = {
{["memory"] = 32},
{["name"] = "5倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function t3()
qmnb = {
    {memory = 16384},
    {name = "爬墙"},
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

function t4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end

function t5()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end

function t6()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end

function t7()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
	 gg.clearResults()
end     

function t8()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end   

function t9() 
readWrite({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"子弹穿墙")end

function t10()
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒射程"},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1073741824,["offset"] =-4, ["type"] = 4},
{["lv"] = 1088421888,["offset"] =-12, ["type"] = 4},
}
qmxg = {
{["value"] = 1176255488,["offset"] =-8, ["type"] = 4},
}
xqmnb(qmnb)
end

function t11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ID23()
UI = "ID23"
local menu = gg.multiChoice({
"改能量剑",--1
"改迫击炮",--2
"改能量炮",--3
"改蹦蹦枪",--4
"刷新武器",--5
"冻结武器",--6
"清除冻结",--7
"返回主页",
}, nil, "修改武器[要持火箭筒/清提供]")
if menu then
for i in pairs(menu) do
_ENV[({"u1","u2","u3","u4","u5","u6","u7","Main",})[i]]()
  end
 end 
end

function u1()
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{6553600, 52, 4},{65536, 56, 4},}, {{9175040, 52, 4,false}})
gg.clearResults()
end

function u2()
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{6553600, 52, 4},{65536, 56, 4},}, {{7340032, 52, 4,false}})
gg.clearResults()
end

function u3()
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{6553600, 52, 4},{65536, 56, 4},}, {{11796480, 52, 4,false}})
gg.clearResults()
end

function u4()
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{6553600, 52, 4},{65536, 56, 4},}, {{9830400, 52, 4,false}})
gg.clearResults()
end

function u5()
fastsearch({4561810862086072489,nil,nil,nil,32,32},{{256,0x8C,4}},{{-1.0e-15,0x840,16,false,false,nil}})
end

function u6()
fastsearch({4561810862086072489,nil,nil,nil,32,32},{{256,0x8C,4}},{{-1.0e-15,0x840,16,true,true,nil}})
end

function ID24()
res = gg.choice({
    "初始化",--1
    "火箭筒",--2
    "能量剑",--3
    "蹦蹦枪",--4
    "旋风镖",--5
    "能腕炮",--6
    "迫击炮",--7
    "冲锋枪",--8
    "霞弹枪",--9
    "霸天斧",--10
    "治疗枪",--11
    "回旋镖",--12
    "电球枪",--13
    "滋水枪",--14
    "自动枪",--15
    "像素剑",--16
    "热破枪",--17
    "威震天",--18
    "红蜘蛛",--19
    "返回",
  },2023, "使用前开启初始化")
if res==1 then
yw({{841901421,4,32},{16396336,4,4},{262144,20,4}})
end
if res==2 then--火箭筒
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 25600,}})
end end
if res==3 then--能量剑
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 35840,}})
end end
if res==4 then--蹦蹦枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 38400,}})
end end
if res==5 then--旋风标
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 51200,}})
end end
if res==6 then--能腕炮
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 46080,}})
end end
if res==7 then--迫击炮
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 28160,}})
end end
if res==8 then--冲锋枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 33280,}})
end end
if res==9 then--霞弹枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 48640,}})
end end
if res==10 then--霸天斧
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 53760,}})
end end
if res==11 then--治疗枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 2585600,}})
end end
if res==12 then--回旋镖
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 2600960,}})
end end
if res==13 then--电球枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 2600960,}})
end end
if res==14 then--滋水枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 2849280,}})
end end   
if res==15 then--自动枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 3105280,}})
end end
if res==16 then--像素剑
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 2595840,}})
end end
if res==17 then--热破枪
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 23065600,}})
end end
if res==18 then--威震天
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 23091200,}})
end end
if res==19 then--红蜘蛛
for i=1,#Addr do
gg.setValues({{address = Addr[i]+13,flags = 4,value = 23116800,}})
end end
if res==20 then
Main()
end
end

function u7()
gg.clearList()
end

function TC()
print("为什么要退出😭😭😭")
os.exit()
end

function HOME()
lw=1
Main()
end
-------------------------------------------------------------------------------------------------------------
gg.showUiButton()

while true do
if gg.isClickedUiButton() then Main()end
end