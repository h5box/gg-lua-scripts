

--[[表 情 包]]bqt={"☁","🔱","🔰","🏆","♨","💎","🎐","🍁"} SN=1
JM=1 GT=0 AT=1 BT=1 CT=1 DT=1 ET=1 FT=1 HT=1
if loadfile('/storage/emulated/0/tencent/晓夜配置.txt') then
  set=dofile('/storage/emulated/0/tencent/晓夜配置.txt')
 else
  set={0,0}
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败，重启试试") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败，重启试试") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条代码") else gg.toast(qmnb[2]["name"] .. "开启失败，重启试试") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

---------------------------使用时间配置区-----------------------
local time=os.clock()
-------------------------------配置文件------------------------------

--最自由的服务器，不禁止toolbox仅此一家!
function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end

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

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n脚本开启共用时:"..os.clock()-time.."秒")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD


function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
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
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          -- gg.toast("已修改"..#t.."条数据")
          -- gg.addListItems(t)
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------
--------------内置配置-----------------请勿动---------------------

function Main()
JM=1
xy=bqt
xy=xy[math.random(1, #bqt)]
local SN=gg.choice({
[1]='生存模式'..xy,
[2]='联机模式'..xy,
[3]='云服模式'..xy,
[4]='娱乐模式'..xy,
[5]='切换模式'..xy,
[6]='炸图模式'..xy,
[7]='退出辅助'..xy},GT,'迷你号:['..set[2]..']\n房间号:['..set[1]..']\n辅助公告:[完全免费!]')
if SN then GT=SN
_G[({'JM_1','JM_2','JM_3','JM_4','JM_5','JM_6','exit'})[SN]]()
end
end
function JM_6()
JM=7
SN = gg.multiChoice({
"修 改 模 式",
"选 择 编 辑 器",
"家 园 道 具",
"创 造 炸 图",
"取 消 禁 用 编 辑 器",
"返 回 主 页",
 }, nil, "")
if SN == nil then else
if SN[1]==true then     CXK1() end
if SN[2]==true then     CXK2() end
if SN[3]==true then     CXK3() end
if SN[4]==true then     CXK4() end
if SN[5]==true then     CXK5() end
if SN[6]==true then     Main() end
end
FX=0 end


-------------炸图功能



function CXK1()
i12= gg.choice({
    "️🍓玩 法 创 造🍓",
    "🍓️玩 法 生 存🍓️",
    "🍓️创 造🍓️",
    "🍓创 造 生 存🍓️",
    "🍓️️极 限 生 存🍓️",
     "🍓️️生 存🍓️",
     "🍓️️通 用 玩 法 创 造🍓️",
     "🍓通 用 生 存 创 造🍓️",
"𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("[🍋用一辈子去爱你,用一辈子去伤你....🍋]"))
if i12==1 then i8=4 i11() end
if i12==2 then i8=5 i11() end
if i12==3 then i8=1 i11() end
if i12==4 then i8=3 i11() end
if i12==5 then i8=2 i11() end
if i12==6 then i8=0 i11() end
if i12==7 then     tycz1() end
if i12==8 then     tycz2() end
XGCK=-1 end

function i11()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0xF1544, 0xB0}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = i8}})
end

function tycz1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 4, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end


function tycz2()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end


function CXK2()  
cc3= gg.choice({
    "🧊自 定 义 编 辑 器🧊",
    "🧊添 加 编 辑 器🧊",
    "🧊开 发 者 编 辑 器🧊",
    "🧊喷 漆 改 编 辑 器🧊",
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("你没有成就就闭嘴,去努力吧️"))
if cc3==1 then  CXKccc1() end
if cc3==2 then  CXKccc2() end
if cc3==3 then  CXKccc3() end
if cc3==4 then  CXKccc4() end
if cc3==5 then  Main() end
XGCK=-1 end




function CXKccc1()
as = gg.prompt({"→输入要更改物品的代码←12005能量剑-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头"}
,{[1]="12005"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function CXKccc3()  
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("再次点击悬浮窗自动恢复")
gg.clearResults()          
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
qmnb = {
{["memory"] = 4},
{["name"] = "开发者关闭"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
 Main()
end
end
end
end
end



function CXKccc2()  
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=10500,["type"]=4},
{["lv"]=2,["offset"]=56,["type"]=4},
{["lv"]=3,["offset"]=60,["type"]=4},
{["lv"]=2,["offset"]=64,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4,["freeze"] = true}
} 
xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加编辑器"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0xD0, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x1A0, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x270, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x340, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x410, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x4E0, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x5B0, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end





function CXKccc4()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12239,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end







function i1()
qmnb = {
{["memory"] = 4},
{["name"] = "道具"},
{["value"] = 42949672960230, ["type"] = 32},
{["lv"] = 6582127, ["offset"] = 140, ["type"] = 32},
}
qmxg = {
{["value"] = i, ["offset"] = -92, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function CXK3()  
i2= gg.choice({
    "⚔️🗡️🛡️炸药桶⚔️🗡️🛡️",
    "⚔️🗡️🛡️刷怪方块⚔️🗡️🛡️",
    "⚔️🗡️🛡️宠物窝⚔️🗡️🛡️",
    "⚔️🗡️🛡️天气控制器⚔️🗡️🛡️",
    "⚔️🗡️🛡️️重力装置⚔️🗡️🛡️",    
    "⚔️🗡️🛡️️空心树⚔️🗡️🛡️",
    "⚔️🗡️🛡️自定义方块⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式沙发⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式桌子⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式餐桌⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式洗手台⚔️🗡️🛡️",   
    "⚔️🗡️🛡️中式椅子⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式马桶⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式浴缸⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式屏风⚔️🗡️🛡️",
    "⚔️🗡️🛡️️中式立体灯⚔️🗡️🛡️",    
    "⚔️🗡️🛡️中式吊灯️⚔️🗡️🛡️", 
    "⚔️🗡️🛡️中式门️⚔️🗡️🛡️",
    "⚔️🗡️🛡️中式窗⚔️🗡️🛡️",
    "⚔️🗡️🛡️️中式楼梯⚔️🗡️🛡️",    
    "⚔️🗡️🛡️中式墙砖⚔️🗡️🛡️", 
   "⚔️🗡️🛡️中式地砖⚔️🗡️🛡️", 
    "⚔️🗡️🛡️中式半砖⚔️🗡️🛡️", 
    "⚔️🗡️🛡️中式围栏⚔️🗡️🛡️", 
    "𒅒🌟现代床🌟𒅒", 
    "𒅒🌟现代沙发🌟𒅒", 
    "𒅒🌟现代书桌🌟𒅒", 
    "𒅒🌟现代餐桌🌟𒅒",
    "𒅒🌟现代茶几🌟𒅒",
    "𒅒🌟现代洗手台🌟𒅒",
    "𒅒🌟现代椅子🌟𒅒",
    "𒅒🌟现代马桶🌟𒅒",
    "𒅒🌟现代浴缸🌟𒅒",
    "𒅒🌟现代衣柜🌟𒅒",
    "𒅒🌟现代橱柜🌟𒅒",
    "𒅒🌟现代半格橱柜🌟𒅒",
    "𒅒🌟现代组合柜🌟𒅒",
    "𒅒🌟现代屏风🌟𒅒",
    "𒅒🌟现代立体灯🌟𒅒",
    "𒅒🌟现代吊灯🌟𒅒",
    "𒅒🌟现代壁灯🌟𒅒",
    "𒅒🌟现代门🌟𒅒",
    "𒅒🌟现代窗🌟𒅒",
    "𒅒🌟现代楼梯🌟𒅒",
    "𒅒🌟现代墙砖🌟𒅒",
    "𒅒🌟现代砖🌟𒅒",
    "𒅒🌟现代半砖🌟𒅒",
   "𒅒🌟现代围栏🌟𒅒", 
    "𒅒❄️童话床❄️𒅒",
    "𒅒❄童话沙发️❄️𒅒",
    "𒅒❄童话书桌❄𒅒",
    "𒅒❄童话桌子️❄𒅒",
    "𒅒❄童话茶几️❄𒅒",
    "𒅒❄️童话洗手池❄𒅒",
    "𒅒❄️童话椅子❄𒅒",
    "𒅒❄️童话马桶❄𒅒",
    "𒅒❄童话浴缸️❄𒅒",
    "𒅒❄童话衣柜️❄𒅒",
    "𒅒❄童话橱柜️❄𒅒",
    "𒅒❄童话半格橱柜️❄𒅒",
    "𒅒❄童话箱子️❄𒅒",
    "𒅒❄童话屏风️❄𒅒",
    "𒅒❄童话台灯️❄𒅒",
    "𒅒❄️童话吊灯❄𒅒",
    "𒅒❄️童话壁灯❄𒅒",
    "𒅒❄️童话门❄𒅒",
    "𒅒❄童话窗️❄𒅒",
    "𒅒❄️童话楼梯❄𒅒",
    "𒅒❄童话墙砖️❄𒅒",
    "𒅒❄️童话地砖❄𒅒",
    "𒅒❄️童话半砖❄𒅒",
    "𒅒❄️童话围栏❄𒅒",
    "𒅒🎋科幻床️🎋𒅒",
    "𒅒🎋️科幻沙发🎋𒅒",
    "𒅒🎋科幻书桌🎋𒅒",
    "𒅒🎋科幻桌子🎋𒅒", 
    "𒅒🎋科幻茶几🎋𒅒",
    "𒅒🎋科幻洗手台🎋𒅒",
    "𒅒🎋科幻椅子🎋𒅒",
    "𒅒🎋科幻马桶🎋𒅒",
    "𒅒🎋科幻浴缸🎋𒅒",
    "𒅒🎋科幻衣柜🎋𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("姜小北原创"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"虚空方块4095"},{[1]=4095},{[1]="number"})[1] i1() end
if i2==8 then i=1575 i1() end
if i2==9 then i=1576 i1() end
if i2==10 then i=1577 i1() end
if i2==11 then i=1579 i1() end
if i2==12 then i=1580 i1() end
if i2==13 then i=1581 i1() end
if i2==14 then i=1582 i1() end
if i2==15 then i=1587 i1() end
if i2==16 then i=1588 i1() end
if i2==17 then i=1589 i1() end
if i2==18 then i=1591 i1() end
if i2==19 then i=1592 i1() end
if i2==20 then i=1593 i1() end
if i2==21 then i=1594 i1() end
if i2==22 then i=1595 i1() end
if i2==23 then i=1596 i1() end
if i2==24 then i=1597 i1() end
if i2==25 then i=1598 i1() end
if i2==26 then i=1599 i1() end
if i2==27 then i=1600 i1() end
if i2==28 then i=1601 i1() end
if i2==29 then i=1602 i1() end
if i2==30 then i=1603 i1() end
if i2==31 then i=1604 i1() end
if i2==32 then i=1605 i1() end
if i2==33 then i=1606 i1() end
if i2==34 then i=1607 i1() end
if i2==35 then i=1608 i1() end
if i2==36 then i=1609 i1() end
if i2==37 then i=1610 i1() end
if i2==38 then i=1611 i1() end
if i2==39 then i=1612 i1() end
if i2==40 then i=1613 i1() end
if i2==41 then i=1614 i1() end
if i2==42 then i=1615 i1() end
if i2==43 then i=1616 i1() end
if i2==44 then i=1617 i1() end
if i2==45 then i=1618 i1() end
if i2==46 then i=1619 i1() end
if i2==47 then i=1620 i1() end
if i2==48 then i=1621 i1() end
if i2==49 then i=1622 i1() end
if i2==50 then i=1623 i1() end
if i2==51 then i=1624 i1() end
if i2==52 then i=1625 i1() end
if i2==53 then i=1626 i1() end
if i2==54 then i=1627 i1() end
if i2==55 then i=1628 i1() end
if i2==56 then i=1629 i1() end
if i2==57 then i=1630 i1() end
if i2==58 then i=1631 i1() end
if i2==59 then i=1632 i1() end
if i2==60 then i=1633 i1() end
if i2==61 then i=1634 i1() end
if i2==62 then i=1635 i1() end
if i2==63 then i=1636 i1() end
if i2==64 then i=1637 i1() end
if i2==65 then i=1638 i1() end
if i2==66 then i=1639 i1() end
if i2==67 then i=1640 i1() end
if i2==68 then i=1641 i1() end
if i2==69 then i=1642 i1() end
if i2==70 then i=1643 i1() end
if i2==71 then i=1644 i1() end
if i2==72 then i=1645 i1() end
if i2==73 then i=1646 i1() end
if i2==74 then i=1647 i1() end
if i2==75 then i=1648 i1() end
if i2==76 then i=1649 i1() end
if i2==77 then i=1650 i1() end
if i2==78 then i=1651 i1() end
if i2==79 then i=1652 i1() end
if i2==80 then i=1653 i1() end
if i2==81 then i=1654 i1() end
if i2==82 then i=1655 i1() end
XGCK=-1 end





function CXK4()  
SN = gg.multiChoice({
"剑 改 黑 龙 炸 图",
"长 枪 改 破 坏",
"猪 蛋 改 龙 蛋",
"西 瓜 改 岩 浆",
"自 定 义 修 改",
"返 回 主 页",
 }, nil, "")
if SN == nil then else
if SN[1]==true then     go1() end
if SN[2]==true then     go2() end
if SN[3]==true then     go3() end
if SN[4]==true then     go4() end
if SN[5]==true then     go5() end
if SN[6]==true then     Main() end
end
FX=0 end


function go1()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12005,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=15056,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end




function go2()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12004,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=11551,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end


function go3()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=13402,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=13502,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function go4()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12006,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=12751,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end




function go5()  
as2 = gg.prompt({"→输入要更改物品的代码←"}
,{[1]="12006"},{[1]="number"})[1]
as3 = gg.prompt({"→输入要更改物品的代码←"}
,{[1]="15056"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as2,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=as3,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end


function CXK5()  
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("29246", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("29246", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(600)
gg.editAll("28734", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
end


-------------炸图功能



function JM_1()
JM=2
SN = gg.multiChoice({
"创 造 背 包",
"附 魔",
"枪 改 子 弹",
"自 定 义 人 物 大 小",
"无 限 脚 印",
"取 消 个 人 禁 言",
"禁 用 钩 爪塞 子 ",
"第 一 格 无 限 耐 久",
"一 摔 就 死",
"全 房 间 静 止",
"修 改 宠 物",
"动 态 发 图 片",
"刷 勋 章",
"修 改 房 间 名 字",
"︎崩 溃 房 间",
"︎可 挖 基 岩",
"剑 无 限 c d",
"吸 人",
"强 制 改 密 码",
"锁 血",
"第 一 个 无 限 物 品",
"添 加 坐 骑",
"单 机 变 联 机",
"无 限 氧 气",
"家 园 果 实",
"返 回 主 页",
 }, nil, "")
if SN == nil then else
if SN[1]==true then     a8() end
if SN[2]==true then     a9() end
if SN[3]==true then     a10() end
if SN[4]==true then     a11() end
if SN[5]==true then     a12() end
if SN[6]==true then     a13() end
if SN[7]==true then     a14() end
if SN[8]==true then     a15() end
if SN[9]==true then     a16() end
if SN[10]==true then     a17() end
if SN[11]==true then     a18() end
if SN[12]==true then     a19() end
if SN[13]==true then     a20() end
if SN[14]==true then     a21() end
if SN[15]==true then     a23() end
if SN[16]==true then     a24() end
if SN[17]==true then     a25() end
if SN[18]==true then     a26() end
if SN[19]==true then     a27() end
if SN[20]==true then     a28() end
if SN[21]==true then     a29() end
if SN[22]==true then     a31() end
if SN[23]==true then     a32() end
if SN[24]==true then     a33() end
if SN[25]==true then     a34() end
if SN[26]==true then     Main() end
end
FX=0 end


----------房主功能
function a34()
SN = gg.choice({
"一级",
"二级",
"三级",
"四级",
"五级",
"六级",
"七级",
"八级",
"九级",
"十级",
"十一级",
"十二级",
"返回",
 },nil, "请选择等级")
if SN == nil then else
if SN==1 then Fruits('1;70','1') end
if SN==2 then Fruits('2;70','2') end
if SN==3 then Fruits('3;100','3') end
if SN==4 then Fruits('4;140','4') end
if SN==5 then Fruits('5;180','5') end
if SN==6 then Fruits('6;260','6') end
if SN==7 then Fruits('7;260','7') end
if SN==8 then Fruits('8;260','8') end
if SN==9 then Fruits('9;570','9') end
if SN==10 then Fruits('10;690','10') end
if SN==11 then Fruits('11;900','11') end
if SN==12 then Fruits('12;1100','12') end
if SN==13 then jm_1() end
end
end
--封装函数
function Fruits(Level,num)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(Level,32)
gg.searchNumber(num,32)
gg.getResults(100)
gg.editAll("25",32)
end

function a8()  
qmnb = {
{["memory"] = 4},
{["name"] = "电脑版创造背包"},
{["value"] =281510439550976 , ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 328, ["type"] = 32},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 328,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end


function a9()  
F = gg.alert("🔰请选择｛武器 工具｝🔰","🍁武器🍁","🍁️工具🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 605, ["offset"] = 16, ["type"] = 4},
{["value"] = 1005, ["offset"] = 20, ["type"] = 4},
{["value"] = 1105, ["offset"] = 24, ["type"] = 4},
{["value"] = 705, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2505, ["offset"] = 12, ["type"] = 4},
{["value"] = 2603, ["offset"] = 16, ["type"] = 4},
{["value"] = 2401, ["offset"] = 20, ["type"] = 4},
{["value"] = 1505, ["offset"] = 24, ["type"] = 4},
{["value"] = 1105, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end



function a10()  
F = gg.alert("🔰请选择🔰","🍁狙击🍁","🍁️冲锋🍁️️","🎾重机🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪强化"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if   F==2   then
A5 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪强化"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A5, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if    F==3  then
A6 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪强化"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A6, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end end



function a11()  
   F = gg.alert("🔰请选择｛自己 别人｝🔰","🍁自己🍁","🍁️别人🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
mn2=gg.prompt({"『自定义大小』"},{'3'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "凉情自创"},
{["value"] =lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"] = mn2, ["offset"] = 148,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
mn2=gg.prompt({"『玩家迷你号』"},{'3'},{"number"})[1]
mn1=gg.prompt({"『自定义大小』"},{'3'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "凉情自创"},
{["value"] =mn2, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"] = mn1, ["offset"] = 148,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function a12()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "凉情自创"},
{["value"] =28274328, ["type"] = 4},
{["lv"] = 28275432, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4,["type"] = 16},
}
xqmnb(qmnb)
	 gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "凉情自创"},
{["value"] =28274328, ["type"] = 4},
{["lv"] = 28275432, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 200, ["offset"] = -4,["type"] = 16},
}
xqmnb(qmnb)
	 gg.clearResults()
end
end





function a13()
qmnb = {
{["memory"] = 4},
{["name"] = "取消禁言"},
{["value"] =lq, ["type"] = 4},
{["lv"] = 12862, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -36, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("在自己房间开启")
end






function a14()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12006, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12008, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end




function a15()
qmnb = {
{["memory"] = 4},
{["name"] = "无限耐久"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end






function a16()  
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =28965208, ["type"] = 4},
{["lv"] =38522944 , ["offset"] = -176, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=-156,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =28965208, ["type"] = 4},
{["lv"] =38522944 , ["offset"] = -176, ["type"] = 4},
}
qmxg = {
{["value"]=100.0,["offset"]=-156,["type"]=16},
}
xqmnb(qmnb)
end
end




function a17()  
F = gg.alert("🔰请选择🔰","🍁开始界面🍁","🍁️开始按纽🍁️️","🎾关🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "界面"},
{["value"] = 3000, ["type"] = 4},
{["lv"] = 900, ["offset"] = 40, ["type"] = 4},}
qmxg = {
{["value"] = 16777472, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if   F==2   then
qmnb = {
{["memory"] = 4},
{["name"] = "按钮"},
{["value"] = 811, ["type"] = 4},
{["lv"] = 629, ["offset"] = -8, ["type"] = 4},}
qmxg = {
{["value"] = 16777472, ["offset"] = -12, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if    F==3  then
qmnb = {
{["memory"] = 4},
{["name"] = "界面"},
{["value"] = 3000, ["type"] = 4},
{["lv"] = 900, ["offset"] = 40, ["type"] = 4},}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end end


function a18()
b = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
,{[1]=3512},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end


function a19()
gg.alert("🧊先点击动态发布按钮🧊","🍁️开启🍁️️")
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65536;65792;421;16777216;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end




function a20()
F = gg.alert("🔰请选择｛皮肤 强大 家园｝🔰","🍁华丽变身🍁","🍁️强大如我🍁","🍓家园植物🍓️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
vip= gg.prompt({"输入你拥有的一个皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤勋章"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},

}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "凉情原创"},
{["value"] =1080360960, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 500, ["offset"] = -20,["type"] = 64},
}
xqmnb(qmnb)
elseif  F== 3 then
pcall(load(gg.makeRequest("https://cdn.410wl.cn/api/1641112124-825.lua").content))
end
end






function a21()
aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义地图名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 8, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 12, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 16, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 20, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 24, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 28, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 32, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 36, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 40, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 44, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 64, 
["type"] = 4},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 4},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("自定义地图名开启成功")
if gg.getResultCount() == 0 then
gg.toast("自定义地图名开启失败")
else
end
end


function a23()  
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end







function a24()  
gg.toast("请选择手撸基石开关。")
F = gg.alert("请选择手撸基岩[开 关]","🍔开🍔","🍔关🍔")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩开启成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("🎋恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('违规操作🎋制作不易且行且珍惜\n🎋请勿在执行时打开🎋','🎋强制结束🎋') gg.clearResults() gg.toast("🎋开启失败🎋")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 







function a25()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end



function a26()
gg.toast("请选择开关")
F = gg.alert("💋请选择｛开 关｝💋","💅🏼开👎🏻","🙏🏾️关👣")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("🎁你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.toast("正在开启，请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
elseif F == 2 then gg.toast("正在开启，请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)
gg.clearResults() end end



function a27()
F=gg.alert("请选择｛开 关｝", "开", "关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
if F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码关闭"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
end
function a28()
gg.toast("开启成功后点击继续探险")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] =-192 , ["type"] = 4},
}
qmxg = {
{["value"] = 10000, ["offset"] = -256, ["type"] = 16,["freeze"] = true},
{["value"] = 10000, ["offset"] = -252, ["type"] = 16,["freeze"] = true},
{["value"] = 9999, ["offset"] = -80, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end




function a29()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=94580388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end
end

function a31()  
o2= gg.choice({"𒅒🧊自定义输入🧊𒅒","𒅒🧊机灵飞鼠🧊𒅒","𒅒🧊瑞祥麒麟🧊𒅒","𒅒🧊陆行鸟🧊𒅒","𒅒🧊️大白象🧊𒅒","𒅒🧊️超能海豹🧊𒅒","𒅒🧊舞狮猫猫🧊𒅒","𒅒🧊星河天马🧊𒅒","𒅒🧊桃香扇缘🧊𒅒","𒅒🧊深渊咆哮🧊𒅒","𒅒🧊皎月仙宫🧊𒅒","𒅒🧊冰雪传说🧊𒅒","𒅒🧊缤纷幻想🧊𒅒","𒅒🧊福运哞哞🧊𒅒","𒅒🧊浮游山海🧊𒅒","𒅒🧊镜花水月🧊𒅒","𒅒🧊️鹿王本身🧊𒅒","𒅒🧊️精灵南瓜车🧊𒅒","𒅒🧊️竹 蜻 蜓🧊𒅒","𒅒🧊曦光绘梦️🧊𒅒","𒅒🧊️裂空机甲🧊𒅒","𒅒🧊️星河机甲🧊𒅒","𒅒🧊环海诺诺🧊𒅒","𒅒🧊尼东若若🧊𒅒","𒅒🧊️虚空龙祖🧊𒅒","𒅒🧊️繁花夜明🧊𒅒","𒅒🧊️星月魔毯🧊𒅒","𒅒🧊化石龙🧊𒅒","𒅒🧊千机隼🧊𒅒","𒅒🧊无线电音🧊𒅒",  
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒首次使用先打开召唤坐骑面板𒅒"))
if o2==1 then o=gg.prompt({"『请输入坐骑代码』4541星月魔毯"},{4541},{"number"})  o=o[1] o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4526 o4() end
if o2==24 then o=4529 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=3432 o4() end
if o2==29 then o=4545 o4() end
if o2==30 then o=4548 o4() end
end
function o4()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = o, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end



function a32()  
F = gg.alert("🔰请选择｛开启成功以后点小地图刷新｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
end
end






function a33()  
qmnb = {
{["memory"] = 4},
{["name"] = "无限氧气"},
{["value"] =1041865114, ["type"] = 4},
{["lv"] = 1028443341, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"]=10,["offset"]=-168,["type"]=16,["freeze"] = true},
}
xqmnb(qmnb)
end

-------------房主功能





function JM_2()
JM=3
SN = gg.multiChoice({
"飞 行",
"穿 墙",
"取 消 身 份 证.黑 名 单",
"加 速",
"伪 房 服 主",
"远 程 攻 击",
"︎改 坐 标",
"自 定 义 动 作 .特 效",
"自 定 义 开 关 危 险 品 文 字",
"自 定 义 跳 高",
"添 加 乐 器",
"无 限 星 星",
"踢 房 主",
"联 机 修 改 头 像",
"刷 怪 方 块 鸡 改 坐 骑",
"飞 行 速 度",
"秒 拿 东 西",
"死 亡 移 动",
"添 加 火 箭 背 包",
"改 名 字",
"上 帝 视 角",
"无 限 跳",
"蝙 蝠 模 式",
"地 心 人 走 路",
"自 定 义 修 改 高 度",
"篮 足 球 模 式",
"替 别 人 打 字",
"解 锁 物 品",
"钩 爪 塞 子 连 发",
"仙 人 掌 特 殊 方 块",
"刷 怪 方 块 B O S S",
"创 造 取 物",
"狙 击 枪",
"奖 杯 按 键",
"联 机 取 物",
"返 回 主 页",
 }, nil, "")
if SN == nil then else
if SN[1]==true then     b1() end
if SN[2]==true then     b2() end
if SN[3]==true then     b3() end
if SN[4]==true then     b4() end
if SN[5]==true then     b5() end
if SN[6]==true then     b6() end
if SN[7]==true then     b7() end
if SN[8]==true then     b8() end
if SN[9]==true then     b9() end
if SN[10]==true then     b10() end
if SN[11]==true then     b11() end
if SN[12]==true then     b12() end
if SN[13]==true then     b13() end
if SN[14]==true then     b14() end
if SN[15]==true then     b15() end
if SN[16]==true then     b16() end
if SN[17]==true then     b17() end
if SN[18]==true then     b18() end
if SN[19]==true then     b19() end
if SN[20]==true then     b20() end
if SN[21]==true then     b21() end
if SN[22]==true then     b22() end
if SN[23]==true then     b23() end
if SN[24]==true then     b24() end
if SN[25]==true then     b25() end
if SN[26]==true then     b26() end
if SN[27]==true then     b27() end
if SN[28]==true then     b28() end
if SN[29]==true then     b29() end
if SN[30]==true then     b30() end
if SN[31]==true then     b31() end
if SN[32]==true then     b32() end
if SN[33]==true then     b33() end
if SN[34]==true then     b34() end
if SN[35]==true then     b35() end
if SN[36]==true then     Main() end
end
FX=0 end

-----------联机功能
function b34()
qmnb = {
{["memory"] = 4},
{["name"] = "奖励"},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
function b35()

lgnb=gg.prompt({"请输入物品代码 默认代码破坏方块11551 击飞11552 狙击枪15004 子弹15003"},{'15056'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "冒险任务改物品"},
{["value"] = 11627, ["type"] = 4},
{["lv"] = 817, ["offset"] = 16, ["type"] = 4},
{["lv"] = 3, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
{["value"] = lgnb, ["offset"] = 16, ["type"] = 4},
{["value"] = 999, ["offset"] = 20, ["type"] = 4},
{["value"] = 1, ["offset"] = 24, ["type"] = 4},
{["value"] = 9999999, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "第一个成就无限领"},
{["value"] = 1221, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4}}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "无"},
{["value"] = 1919898634, ["type"] = 4},
{["lv"] = 925972590, ["offset"] = -136, ["type"] = 4},
{["lv"] = 26723, ["offset"] = 4, ["type"] = 4}}
qmxg = {
{["value"] = 15056, ["offset"] = -304, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)

xqmnb(qmnb)
end





function b33()
local time=os.clock()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
      gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
end


function b1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777472,["offset"]=-76,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777216,["offset"]=-76,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function b2()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end end

function b3()
F = gg.alert("🔰请选择｛身份证 黑名单｝🔰","🍁取消身份证🍁","🍁️取消黑名单🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "取消实名认证"},
{["value"] =458686464, ["type"] = 4},
{["lv"] = 6999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 4,freeze = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
  qmnb = {
{["memory"] = 4},
{["name"] = "取消黑名单"},
{["value"] =4295032832 , ["type"] = 32},
{["lv"] = 16777472, ["offset"] = 32, ["type"] = 32},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 32,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
end
function b4()
AA3 = gg.prompt({"输入加数倍数"}
,{[1]=70},{[1]="number"})[1]
qmnb = {
    {["memory"] = 4},
    {["name"] = "基础速度"},
    {["value"] = 72058702139490303, ["type"] = 32},
    {["lv"] = 16777473, ["offset"] = 4, ["type"] = 4},
  }
  qmxg = {
    {["value"] = AA3, ["offset"] = 32, ["type"] = 16, ["freeze"] = true},
  }
  xqmnb(qmnb)
  gg.clearResults()
end







function b5()
F = gg.alert("🔰请选择｛房主 服主｝🔰","🍁伪房主🍁","🍁️伪服主🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 y = gg.prompt({"『输入服主的迷你号』"}
,{[1]=12345},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "云服服主"},
{["value"] =y, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] =32767, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lq, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
end
end



function b6()  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end






function b7()  
W = gg.prompt({"请输入你想要去的横坐标后面加两个0"}
,{[1]=500},{[1]="number"})[1]
Q = gg.prompt({"请输入你想要去的坚坐标后面加两个0"}
,{[1]=500},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = W, ["offset"] = 8, ["type"] = 4},
{["value"] = Q, ["offset"] = 16, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
 end



function QQ1() 
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x619398, 0x330, 0x340}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = Q1, freeze = true}})
end


function QQ3()
    gg.setRanges(4)
local dataType = 32
local tb1 = {{lq,0},{16777473,-56} }
local tb2 = {{Q3, -68  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end

function b8()  
 menu1 = gg.choice({
    "𒅒♥️紫色月亮♥️𒅒",
    "𒅒♥️碧琪特效♥️𒅒",
    "𒅒♥️绿色特效♥️𒅒",
    "𒅒♥️彩虹拖尾♥️𒅒",
    "𒅒♥️️蓝色特效♥️𒅒",
    "𒅒♥️️花小楼特效♥️𒅒",
    "𒅒♥️️冰公主特效♥️𒅒",
    "𒅒♥️️叶萝莉特效♥️𒅒",
    "𒅒♥️跳舞动作♥️𒅒",
    "𒅒♥️抱坐动作♥️𒅒",
    "𒅒♥️睡觉动作♥️𒅒",
    "𒅒♥️️欢呼动作♥️𒅒",    
    "𒅒♥️漂浮动作️♥️𒅒", 
    "𒅒♥️摸空气动作️♥️𒅒",
    "𒅒♥️抠鼻子动作♥️𒅒",
    "𒅒♥️️害羞动作♥️𒅒",    
    "𒅒♥️死亡动作️♥️𒅒", 
    "𒅒♥️自定义动作️♥️𒅒", 
    "𒅒♥️自定义特效️♥️𒅒", 
   "𒅒♥️恢复动作️特效♥️𒅒", 
    "𒅒🎡返 回 主 页🎡𒅒", },2018,os.date("𒅒人们只会注意最耀眼的烟火，所以，骚年请保存你的耀眼𒅒"))
if menu1==1 then Q1=12 QQ1() end
if menu1==2 then Q1=13 QQ1() end
if menu1==3 then Q1=14 QQ1() end
if menu1==4 then Q1=15 QQ1() end
if menu1==5 then Q1=16 QQ1() end
if menu1==6 then Q1=17 QQ1() end
if menu1==7 then Q1=18 QQ1() end
if menu1==8 then Q1=19 QQ1() end
if menu1==9 then Q3=999479 QQ3() end
if menu1==10 then Q3=99999927 QQ3() end
if menu1==11 then Q3=3122 QQ3() end
if menu1==12 then Q3=954418 QQ3() end
if menu1==13 then Q3=42002 QQ3() end
if menu1==14 then Q3=222221442 QQ3() end
if menu1==15 then Q3=2167939 QQ3() end
if menu1==16 then Q3=1606835 QQ3() end
if menu1==17 then Q3=16777217 QQ3() end
if menu1==18 then Q3=gg.prompt({"『自定义动作』"},{'0'},{"number"})[1]
gg.clearResults() QQ3()  gg.clearList() end
if menu1==19 then Q1=gg.prompt({"『自定义特效』"},{'0'},{"number"})[1]
gg.clearResults() QQ1()  gg.clearList() end
if menu1==20 then Q3=0 QQ3()  gg.clearList() end
if menu1==21 then Main() end
XGCK=-1 end










function b9()  
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"自定义改文字"}
,{[1]=":"},{[1]="text"})[1]
mnmc = ":ggggggggggg"

qmnb = {
{["memory"] = 4},
{["name"] = "开关危险品_改文字开启成功"},
{["value"] = -1733433962, ["type"] = 4},
{["lv"] = 10723814, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 12, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 13, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 14, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 15, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 16, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 17, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 18, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 19, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 20, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 21, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 22, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 23, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 24, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 25, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 26, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 27, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 28, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 29, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 30, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 31, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 32, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 33, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 34, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 35, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 36, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 37, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 38, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 39, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 40, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 41, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 42, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 43, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 44, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 45, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 46, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 47, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 49, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 50, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 51, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 53, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 54, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 55, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 57, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 58, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 59, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 1},
{["value"] = 0, ["offset"] = 64, ["type"] = 4},

{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 97, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 98, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 99, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 100, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 101, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 102, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 103, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 104, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 105, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 106, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 107, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 108, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 109, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 110, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 111, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 112, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 113, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 114, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 115, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 116, ["type"] = 1},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("开关危险品_改文字开启成功")
if gg.getResultCount() == 0 then
gg.toast("开关危险品_改文字开启失败")
else
end
end

function b10()  
gg.alert("开启后如果想恢复，退出房间重新进即可")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.toast("nil")
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数(60等于2.3倍，自己算)，0～1000   默认150'}, {i='150'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("开启成功")
end



function b11()
menu9= gg.choice({
    "𒅒⛄二胡️⛄𒅒",
    "𒅒⛄古筝⛄𒅒",
    "𒅒⛄唢呐️⛄𒅒",
    "𒅒⛄️琵琶⛄𒅒",    
    "𒅒⛄笛子⛄𒅒", 
    "𒅒⛄鼓⛄𒅒",
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("𒅒未来一片黑暗,但是你要记住,总会有人为你提灯𒅒"))
if menu9==1 then e1=11900 bbb1() end
if menu9==2 then e1=11905 bbb1() end
if menu9==3 then e1=11906 bbb1() end
if menu9==4 then e1=11907 bbb1() end
if menu9==5 then e1=11908 bbb1() end
if menu9==6 then e1=11909 bbb1() end
if menu9==7 then Main() end
XGCK=-1 end


function bbb1()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=e1,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=e1,["offset"]=0,["type"]=4,["freeze"] = true}
} 
xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==e1 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0xD0, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x1A0, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x270, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x340, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x410, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x4E0, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x5B0, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end




function b12()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =4, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =8, ["type"] = 4},
{["lv"] = 1097859072,["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = 99999,["offset"] =32, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end




function b13()  
t = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] =t , ["type"] = 4},
{["lv"] = lq, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = t, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end







function b14()
gg.clearResults()
lxnm = gg.prompt({"请输入你使用的头像框代码[清凉一夏:20222.........]♡这个修改的自己看不见的，别人能看见。可以联机哦♡([头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇)"}
,{[1]=20222},{[1]="number"})[1]
knm = gg.prompt({"输入你要改的头像框代码[头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇"}
,{[1]=20281},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改头像框"},
{["value"] = lxnm, ["type"] = 4},
{["lv"] = lxnm, ["offset"] = 0, ["type"] = 4},
{["lv"] = lxnm, ["offset"] = 0, ["type"] = 4},

}
qmxg = {
{["value"] = knm, ["offset"] = 0, ["type"] = 4},
{["value"] = knm, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end


function b15()
o6= gg.choice({
    "𒅒缤纷幻想𒅒",
    "𒅒福运哞哞𒅒",
    "𒅒浮游山海𒅒",
    "𒅒镜花水月𒅒",
    "𒅒️鹿王本身𒅒", 
     "𒅒️精灵南瓜车𒅒", 
      "𒅒️竹 蜻 蜓𒅒", 
      "𒅒曦光绘梦️𒅒", 
      "𒅒️裂空机甲𒅒", 
      "𒅒️星河机甲𒅒", 
      "𒅒环海诺诺𒅒", 
      "𒅒尼东若若𒅒", 
      "𒅒️虚空龙祖𒅒",          
      "𒅒️繁花夜明𒅒", 
       "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("永远的神凉情城𒅒"))
if o6==1 then o0=3487 o9() end
if o6==2 then o0=3489 o9() end
if o6==3 then o0=3492 o9() end
if o6==4 then o0=3497 o9() end
if o6==5 then o0=4503 o9() end
if o6==6 then o0=4507 o9() end
if o6==7 then o0=4510 o9() end
if o6==8 then o0=4515 o9() end
if o6==9 then o0=4518 o9() end
if o6==10 then o0=4521 o9() end
if o6==11 then o0=4526 o9() end
if o6==12 then o0=4529 o9() end
if o6==13 then o0=4533 o9() end
if o6==14 then o0=4537 o9() end
XGCK=-1 end
function o9()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑修改"},
{["value"] = 1084920320, ["type"] = 4},
{["lv"] = 4, ["offset"] = -92, ["type"] = 4},
{["lv"] = 1084932096, ["offset"] = 208, ["type"] = 4},
}
qmxg = {
{["value"] = o0, ["offset"] = -20, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end






function b16()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.20926383e-38F;1.29999995232F;5.11472262e17F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(5)
	 sl=gg.getResultCount()
	 if sl>10 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 12}})
	 end
	 gg.toast("哟西哟西")
	 gg.clearResults()
end




function b17()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384},
{["name"]="箱子拿东西"},
{["value"]=973078777,["type"]=4},
{["lv"]=1112014848,["offset"]=268,["type"]=4}
}
qmxg={
{["value"]=10,["offset"]=264,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="箱子拿东西"},
{["value"]=973078777,["type"]=4},
{["lv"]=1112014848,["offset"]=268,["type"]=4}
}
qmxg={
{["value"]=1000,["offset"]=264,["type"]=16}
}
xqmnb(qmnb)
end
end


function b18()
gg.alert("死亡的时候开启，不可以攻击别人，别人也不可以攻击你，不过可以使用编辑器和移动","🍁️开启🍁️️")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "死亡隐身"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = -256, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function b19()  
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"]=12253,["type"]=4},
{["lv"]=0,["offset"]=4,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
{["lv"]=4,["offset"]=12,["type"]=4},
}
qmxg={
{["value"]=12253,["offset"]=0,["type"]=4,["freeze"] = true}
} xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==12253 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加火箭背包-蓝风制作"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 600, ["offset"] = 8, ["type"] = 4},
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end end



function b20()
mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":#b#"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "临时改名"},
{["value"] = lq, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 0, ["offset"] = -36, ["type"] = 4},
{["lv"] = 0, ["offset"] = -40, ["type"] = 4},
{["lv"] = 0, ["offset"] = -44, ["type"] = 4},
{["lv"] = 0, ["offset"] = -48, ["type"] = 4},
{["lv"] = 0, ["offset"] = -52, ["type"] = 4},
{["lv"] = 0, ["offset"] = -56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 32, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -64, ["type"] = 4},
}
qmxg = {










{["value"] = mnmz, ["offset"] = 65, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = 245838898, ["offset"] = 60, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)





gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, gg.TYPE_BYTE)
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end



function b21()
LQ = gg.prompt({"输入"}
,{[1]=4000},{[1]="number"})[1]
qmnb={
{["memory"]=16384},
{["name"]=""},
{["value"]=436207691,["type"]=4},
{["lv"]=1138819072,["offset"]=-16,["type"]=4},
{["lv"] =1114636288, ["offset"] = -28, ["type"] = 4},
}
qmxg={
{["value"]=LQ,["offset"]=-20,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
end


function b22()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] =773094113340, ["type"] = 32},
{["lv"] = 180, ["offset"] = 4, ["type"] = 4},
{["lv"] = 515396075740, ["offset"] = 16, ["type"] = 32},
}
qmxg = {
{["value"]=1,["offset"]=120,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] =773094113340, ["type"] = 32},
{["lv"] = 180, ["offset"] = 4, ["type"] = 4},
{["lv"] = 515396075740, ["offset"] = 16, ["type"] = 32},
}
qmxg = {
{["value"]=0,["offset"]=120,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end
end


function b23()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] =lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=999,["offset"]=-8,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] =lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=1,["offset"]=-8,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
end
end



function b24()
F = gg.alert("请选择｛开 关｝","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
 elseif  F== 2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})
	 end
end
end


function b25()
mn7=gg.prompt({"『输入你要的高度+后面加两个0』"},{'5200'},{"number"})[1]
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "锁定高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = mn7, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("")
end



function b26()
F = gg.alert("🔰请选择🔰","🍁篮球🍁","🍁️足球🍁️️","🎾关🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 304, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if   F==2   then
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},}
qmxg = {
{["value"] = 1, ["offset"] = 304, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end
if    F==3  then
qmnb = {
{["memory"] = 4},
{["name"] = "篮球模式"},
{["value"] = lq, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = 304, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end end
function b27()
t = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
s = gg.prompt({"『输入要模仿的人迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "模仿别人打字"},
{["value"] =t , ["type"] = 4},
{["lv"] = lq, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = s, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end




function b28()
qmnb = {
{["memory"] = 4},
{["name"] = "图鉴解锁"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 200, ["offset"] = -360, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end







function b29()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="连发"},
{["value"]=11074,["type"]=4},
{["lv"]=300,["offset"]=-16,["type"]=4},
}
qmxg={
{["value"]=6,["offset"]=60,["type"]=4},
{["value"]=6,["offset"]=-32,["type"]=4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb={
{["memory"]=4},
{["name"]="连发"},
{["value"]=11074,["type"]=4},
{["lv"]=300,["offset"]=-16,["type"]=4},
}
qmxg={
{["value"]=1,["offset"]=60,["type"]=4},
{["value"]=1,["offset"]=-32,["type"]=4},
}
xqmnb(qmnb)
gg.clearResults()
end
end





function b30()
F = gg.alert("🔰请选择｛修改成功打开编辑器选择仙人掌｝🔰","🍁钢琴🍁","🍁️卡图🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "特殊方块"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 12, ["offset"] = 388, ["type"] = 4},
}
qmxg = {
{["value"] = 726, ["offset"] = 348, ["type"] = 4},

}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "特殊方块"},
{["value"] = 1731093611, ["type"] = 4},
{["lv"] = 1668246626, ["offset"] = -4, ["type"] = 4},
{["lv"] = 12, ["offset"] = 388, ["type"] = 4},
}
qmxg = {
{["value"] = 1049, ["offset"] = 348, ["type"] = 4},

}
xqmnb(qmnb)
end  
end

function b31()
o6= gg.choice({
    "𒅒黑龙𒅒",
    "𒅒运古巨人𒅒",
    "𒅒蛇神𒅒",
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("打开刷怪方块选择鸡𒅒"))
if o6==1 then o0=3504 o9() end
if o6==2 then o0=3514 o9() end
if o6==3 then o0=3878 o9() end
XGCK=-1 end
function o9()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑修改"},
{["value"] = 1084920320, ["type"] = 4},
{["lv"] = 4, ["offset"] = -92, ["type"] = 4},
{["lv"] = 1084932096, ["offset"] = 208, ["type"] = 4},
}
qmxg = {
{["value"] = o0, ["offset"] = -20, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function b32()
F = gg.alert("🔰请选择{第一次打开退出房间重新进 }  🔰","🍁取物🍁","🍁️创造背包🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] =281510439550976 , ["type"] = 32},
{["lv"] = 16777216, ["offset"] = 328, ["type"] = 32},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 328,["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
end
end


-----------联机功能






function JM_3()
JM=4
SN=gg.multiChoice({
'云服1开密码1',
'云服1无密码',
'关闭云服1',
'开启云服1',
'重启云服1',
'云服1维护',
'云服1解除维护',
'开启云服6',
'关闭云服6',
'重启云服6',
'返回功能',})
if(SN)==nil then else
if SN[1] ==true then aa1() end
if SN[2] ==true then aa2() end
if SN[3] ==true then aa3() end
if SN[4] ==true then aa4() end
if SN[5] ==true then aa5() end
if SN[6] ==true then aa6() end
if SN[7] ==true then aa7() end
if SN[8] ==true then aa8() end
if SN[9] ==true then aa9() end
if SN[10] ==true then aa10() end
if SN[11] ==true then Main() end
end GLWW=-1 end

function aa1()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGalHoN7LXhGa1fARTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fGy1Oxy4WGa4QSa1VXaiyGy4H7yjVXy7Wlp2ajL588sXYhyPy6y73FaPWxNmafZPqwc4WXy7dlNjOANjsiHo3fZ1flp4sGH4wjNj9jp5Hly1OqajRFNjR8p4r7HiajH7R8NFa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=36929").content
end

function aa2()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGalHoN7LXhGa1fisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4dly1YAy4yMyjdXH7Y7NiyANjyGy1H7y4V6RiNfZ5Q7Z1fGp43jyjgwa1gFRT9UvPOhy4H7yjVXN4WANFa8Lo9kcPyAa1rXa4NFHPyxN4WMN1YXy7H6a1YxH7Q8H7dAajHlRTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=7e83f").content
end

function aa3()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGa7L5Qfc4VisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4WqNjyAyP9SN53Sp4VGN4HANjyGy1H7y4V6RiNfZ5Q7Z1qjy5QSaPr6aj3wRT9UvPOhy4H7yjVXN1HMyma8Lo9kc48jHXdXyXy7pPHXajylyX3iy1Wfa53FN7d7aPy6NPRSRTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=e2302").content
end

function aa4()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGa7L5Qfc4WisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4Wqp4sAyPyMa1QiH4Q8NiHANjyGy1H7y4V6RiNfZ5Q7Z1fxHiNSH4y7NjaFRT9UvPOhy4H7yjVXN1slNma8Lo9kc4y6y1dMHXOfH49iN5RFN7SlHXOlH4VGNXR8H4Oxy138RTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=9ae63").content
end

function aa5()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaJs1qGaoNfHoRfRTRJvXqCZPrhymafZPqwc4WXy7dlNjrMN1siHo3fZ1qFNPawy1VMa1R8H4s6H7sxN49jN1yqHPR8p1d7H4dAyGa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=cc243").content
end

function aa6()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGaBHPwIL5QUvjfARTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fANjYAy4W6a5WqN1VAyPaiy4H7yjVXy7Wlp2ajL588sXYhN4VMpPOlp1a8aFafZPqwc4WXy7dlNjrMp1SiHo3fZ1f6a4V7p4yAa1y6H4dfpPy7N5HfyPdxp53SH4SXaP9SNma7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=7b3c1").content
end

function aa7()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGaBHPwIL5QUvjflRTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fAN7rGy4Wqp1SqN1RFy4aSy4H7yjVXy7Wlp2ajL588sXYhyXrfN73Fy7g8y2afZPqwc4WXy7dlNjr6N4ViHo3fZ1qFpPWXyXRSNPR8aiQwHPH7y1R8y7sMH7d7Hj8wyjOfyGa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=44f26").content
end
function aa8()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4HivMVhZPxivGa7L5Qfc4WisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4OqN7WAHjY6yPH7N7sGp4WXy7dlNjyAy1YiHM9kHoNkc4wFHX98y7yXNidiL5wBa4fANjyGy1H7NjHqRiQqL5Yhyir6yjyGyXaFpPOlp4y7N1Oxp49wyjO7aPHGy19wN4Wis7Rfc4WXy7dlNjyAy1HiLPwIc4WGy7rqRTawsjfA0jrIyma8s5wUa1fARiA8vishy2ajvM3ILKRxcONpRTyMa4fA&s7t=b57a2").content
end

function aa9()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4HivMVhZPxivGa7L5Qfc4VisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4y7y1WAN5rfHir7yj88HjWXy7dlNjyAy1YiHM9kHoNkcPylHP9wa18iNPOiL5wBa4fANjyGy1H7N1y6RiQqL5Yhp1d6p1sxH7YMy1OGa5QSN4VXHPdqyiNSaiOMyP9FH4Vis7Rfc4WXy7dlNjyAy1HiLPwIc4WGy7rqRTawsjfA0jrIyma8s5wUa1fARiA8vishy2ajvM3ILKRxcONpRTyMa4fA&s7t=9e079").content
end

function aa10()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaJs1qGaoNfHoRfRTRJvXqCZPrhNFafZPqwc4WXy7dlNjyxp1HiHo3fZ1qia5R8N1g8ajwwH4OAa4R8aPd6NiWAN4Q8NjylN4sxpma7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=b31a4").content
end

function JM_4()
JM=5
gg.alert("看你妈没了")
Main()
end

function JM_5()--娱乐
JM=6--界面
local SN=gg.choice({
'音乐模式',--1
'设置模式',
'切换模式',
'其他模式',
'返回功能'},ET)
if SN then ET=SN
_G[({'yinyue','shezhi','qiehuan','qita','Main'})[SN]]()
end
end

bangdan="热歌榜"
function yinyue()--娱乐
Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content
zuozhe=Obtain:match('"artistsname":"(.-)"')
mc=Obtain:match('"name":"(.-)"')
local SN=gg.choice({
'开启音乐',--1
'暂停音乐',
'切换榜单',
'返回功能'},GT,'作者:'..zuozhe..'\n音乐:'..mc..'\n榜单:'..bangdan..'')
if SN then GT=SN
_G[({'yy','zt','bd','Main'})[SN]]()
end
end
function zt()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
end
end
function yy() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort="..bangdan.."&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) gg.toast("正在开启ing") end 
function bd()
local SN=gg.multiChoice({
"热歌榜",
"新歌榜",
"飙升榜",
"原唱榜",
"黑胶VIP爱听榜",
"云音乐说唱榜",
"云音乐古典榜",
"云音乐电音榜",
"云音乐AGG榜",
"云音乐韩语榜",
"云音乐国电榜",
"云音乐古风榜",
"网络热歌榜",
"中文DJ榜",
"返回功能",})
if(SN)==nil then else
if SN[1] ==true then bangdan="热歌榜" end
if SN[2] ==true then bangdan="新歌榜" end
if SN[3] ==true then bangdan="飙升榜" end
if SN[4] ==true then bangdan="原唱榜" end
if SN[5] ==true then bangdan="黑胶VIP爱听榜" end
if SN[6] ==true then bangdan="云音乐说唱榜" end
if SN[7] ==true then bangdan="云音乐古典榜" end
if SN[8] ==true then bangdan="云音乐电音榜" end
if SN[9] ==true then bangdan="云音乐AGG榜" end
if SN[10] ==true then bangdan="云音乐韩语榜" end
if SN[11] ==true then bangdan="云音乐国电榜" end
if SN[12] ==true then bangdan="云音乐古风榜" end
if SN[13] ==true then bangdan="网络热歌榜" end
if SN[14] ==true then bangdan="中文DJ榜" end
if SN[15] == true then Main() end
end GLWW=-1 end

function shezhi()--设置
  local GT=gg.prompt({
    '房间迷你号',
    '自己迷你号',
  },set,{'number','number'})
  if GT then
    for i,v in ipairs(GT) do
      if v:find('%a+') then
        GT[i]=set[i]
      end
    end
    set=GT
    gg.saveVariable(set,'/storage/emulated/0/tencent/晓夜配置.txt')
    gg.toast('设置成功')
  end
end

function qita()--娱乐
local SN=gg.choice({
'搜索功能',
'功能列表',
'',
'',
'返回功能'},HT)
if SN then HT=SN
_G[({'ssgn','gnlb','','','Main'})[SN]]()
end
end

local gn1={}
gn1["b1"]=""
gn1["b2"]=""
gn1["b3"]=""
gn1["b4"]=""
gn1["b5"]=""
gn1["b6"]=""
gn1["b7"]=""
gn1["b8"]=""

function gnlb()
s=gg.multiChoice(gn1,nil,"功能列表")
if s then

for k,v in pairs(s) do
_G[k]()
end
end
end

function ssgn()
local y=gg.prompt({"请输入功能名称"},{},{"text"})

if y then
local XXX=os.clock()
tt={}
for i,v in pairs(gn1) do
if string.find(v,y[1])~=nil then
tt[i]=v
end
end
local g=gg.multiChoice(tt,nil,"搜索完毕！\n耗时"..os.clock()-XXX.."秒")
if g then
for i,v in pairs(g) do
_G[i]()
end
end
end
end


function exit()
os.exit()
end

while(true)do
if gg.isVisible(true) then
gg.setVisible(false)
_G[({'Main','JM_1','JM_2','JM_3','JM_4','JM_5','JM_6'})[JM]]()
end
end