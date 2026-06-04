

wljbht = "https://api.iflynote.com/notes/share/note/shareFileDetail?fid=1638621896576386"
  BX = gg.makeRequest(wljbht).content 
  sjb='"'
  tpnb=""
    qwtjqdcs = BX:match("pv"..sjb..":(.-)"..tpnb..""..sjb.."words") 



function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
a = io.open("/sdcard/凉情配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/凉情配置文件.txt"):read("*a") lq = a:match("✔️(.-)✔️") if a == "" then zh = "" end end
 dI=gg.prompt({"📂输入你的迷你号[必填]📂","治愈音乐📽️","介意反馈"},{[1] = lq,[2] = true,[3] =nil},{[1] = "number",[2] = "checkbox",[3] ="text"}) if dI[2] ==true then  YY998() end if dI[3] ==true then DG() end  lq = dI[1]  io.open("/sdcard/凉情配置文件.txt", "w") io.open("/sdcard/凉情配置文件.txt", "w"):write("✔️" .. lq .. "✔️"):close()
b=a 
gg.toast("当前迷你号:"..b.."其实...她可能真的爱你... ")
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🌠","💮","🐾","🌌","🍭","🍥","🔮","💎","👾","🍡","💰","⚓","🌿","⚜️","🎠","🎣",}






  function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
       [1] = sjbq.."⚔️🗡️🛡️开始炸图⚔️🗡️🛡️"..sjbq,
         [2] = sjbq.."⚔️🗡️🛡️PVP功能⚔️🗡️🛡️"..sjbq,
    [6] = sjbq.."⚔️🗡️🛡️播放音乐⚔️🗡️🛡️"..sjbq,
       [3] = sjbq.."⚔️🗡️🛡️漏洞功能⚔️🗡️🛡️"..sjbq,
       [4] = sjbq.."⚔️🗡️🛡️娱乐功能⚔️🗡️🛡️"..sjbq,
       [5] = sjbq.."⚔️🗡️🛡️关于辅助⚔️🗡️🛡️"..sjbq,
    [7] = sjbq.."⚔️🗡️🛡️退出辅助⚔️🗡️🛡️"..sjbq,
},2018,os.date("️   \n🧊北京时间%Y年%m月%d日%H时%M分%S秒🧊\n当前迷你号:"..lq..
"    ❤️辅助开启次数:".."『"..qwtjqdcs.."』"))
 if SY == nil then
    gg.toast("我爱你啊.....")
  end
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==6 then Main3() end
if SY==3 then Main4() end
if SY==4 then Main5() end
if SY==5 then Main6() end
if SY==7 then Exit() end
FX1=0 end

function Main1()  
SN = gg.multiChoice({
"☠☯︎️🛸修改模式☠☯︎️🛸",
"☠☯︎️🛸修改编辑器☠☯︎️🛸",
"☠☯︎️🛸家园道具☠☯︎️🛸",
"☠☯︎️🛸刷勋章☠☯︎️🛸",
"☠☯︎️🛸枪强化☠☯︎️🛸",
"☠☯︎️🛸飞行☠☯︎️🛸",
"☠☯︎️🛸穿墙☠☯︎️🛸",
"☠☯︎️🛸取消身份证.黑名单☠☯︎️🛸",
"☠☯︎️🛸加速☠☯︎️🛸",
"☠☯︎️🛸伪房服主☠☯︎️🛸",
"☠☯︎️🛸远程攻击☠☯︎️🛸",
"☠☯︎️🛸开发者添加编辑器☠☯︎️🛸",
"☠☯︎️🛸第八个添加编辑器☠☯︎️🛸",
"☠☯︎️🛸创造炸图☠☯︎️🛸",
"☠☯︎️🛸取消禁用编辑器☠☯︎️🛸",
"☠☯🛸︎改坐标☠☯︎️🛸",
"ʕ ᵔᴥᵔ ʔ返 回 主 页ʕ ᵔᴥᵔ ʔ",
 }, nil, "🔶为什么说抱歉....明明是我不对🔷，🔆目前此功能区:16个🔆")
if SN == nil then else
if SN[1]==true then     asms8() end
if SN[2]==true then     asms9() end
if SN[3]==true then     asms10() end
if SN[4]==true then     asms11() end
if SN[5]==true then     asms12() end
if SN[6]==true then     asms13() end
if SN[7]==true then     asms14() end
if SN[8]==true then     asms15() end
if SN[9]==true then     asms16() end
if SN[10]==true then     asms17() end
if SN[11]==true then     asms18() end
if SN[12]==true then     asms19() end
if SN[13]==true then     asms20() end
if SN[14]==true then     asms21() end
if SN[15]==true then     asms23() end
if SN[16]==true then     asms24() end
if SN[17]==true then     Main() end
end
FX=0 end




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




function asms8()
i12= gg.choice({
    "⚔️🗡️🛡️玩法创造⚔️🗡️🛡️",
    "⚔️🗡️🛡️玩法生存⚔️🗡️🛡️",
    "⚔️🗡️🛡️创造⚔️🗡️🛡️",
    "⚔️🗡️🛡️创造生存⚔️🗡️🛡️",
    "⚔️🗡️🛡️️极限生存⚔️🗡️🛡️",
     "⚔️🗡️🛡️️生存⚔️🗡️🛡️",
     "⚔️🗡️🛡️️通用玩法创造⚔️🗡️🛡️",
     "⚔️🗡️🛡️️通用生存创造⚔️🗡️🛡️",
"𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("因为这里面是基址，迷你每次更新我都要修复，我在学校，所以每次修复有点慢，等我放寒假我每次及时修复，以防万一，我放两个xs备用"))
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
local tt = {0x5C0C8, 0x194, 0x80}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags =4 , value = i8}})
end

function tycz1()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23, ["offset"] = -16, ["type"] = 4}
}qmxg = {
{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==5 then tt=v.address break end end
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5, ["offset"] = 0x14, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0x14, ["type"] = 4},
}gg.clearList()
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23, ["offset"] = -16, ["type"] = 4}
}qmxg = {
{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==5 then tt=v.address break end end
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 0x14, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 0x14, ["type"] = 4},
}gg.clearList()
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
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23, ["offset"] = -16, ["type"] = 4}
}qmxg = {
{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==5 then tt=v.address break end end
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5, ["offset"] = 0x14, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0x14, ["type"] = 4},
}gg.clearList()
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "第1步"},
{["value"] = 1053609165, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23, ["offset"] = -16, ["type"] = 4}
}qmxg = {
{["value"] = 5, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
}xqmnb(qmnb)
gg.clearResults()
local tt
for i,v in ipairs(gg.getListItems())do
if v.value==5 then tt=v.address break end end
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] = tt, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x14, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 0x14, ["type"] = 4},
}gg.clearList()
xqmnb(qmnb)
end
end



function asms9()
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
function asms10()  
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
if i2==7 then i=gg.prompt({"虚空方块4095，卡图1049"},{[1]=4095},{[1]="number"})[1] i1() end
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



function asms11()
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




function asms12()
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
xqmnb(qmnb)
end
function asms13()
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

function asms14()
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

function asms15()
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
function asms16()
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







function asms17()
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



function asms18()  
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



function asms19()  
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



function asms20()  
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




function asms21()  
SN = gg.multiChoice({
"☠☯︎️🛸剑改黑龙炸图☠☯︎️🛸",
"☠☯︎️🛸长枪改破坏☠☯︎️🛸",
"☠☯︎️🛸猪蛋改龙蛋☠☯︎️🛸",
"☠☯︎️🛸西瓜改岩浆☠☯︎️🛸",
"☠☯︎️🛸南瓜改卡图☠☯︎️🛸",
"(✧∇✧)返 回 主 页(✧∇✧)",
 }, nil, "🔶十年老兵，申请出战🔷,🔆目前此功能区:5个🔆")
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
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12005,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=12752,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function asms22()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=7310313480601468930,["type"]=32},
{["lv"]=7310313480601468929,["offset"]=-80,["type"]=32},
}
qmxg={
{["value"]=200,["offset"]=-112,["type"]=4,["freeze"] = true}
}
xqmnb(qmnb)
end



function asms23()  
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("29246", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("29246", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(600)
gg.editAll("28734", gg.TYPE_DWORD)
gg.toast("成功")
gg.clearResults()
end


function asms24()  
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





function Main2()  
SN = gg.multiChoice({
"☠☯︎️🛸自定义动作.特效☠☯︎️🛸",
"☠☯︎️🛸创造背包☠☯︎️🛸",
"☠☯︎️🛸附魔☠☯︎️🛸",
"☠☯︎️🛸自定义开关危险品文字☠☯︎️🛸",
"☠☯︎️🛸自定义跳高☠☯︎️🛸",
"☠☯︎️🛸枪改子弹☠☯︎️🛸",
"☠☯︎️🛸自定义人物大小☠☯︎️🛸",
"☠☯︎️🛸无限脚印☠☯︎️🛸",
"☠☯︎️🛸添加乐器☠☯︎️🛸",
"☠☯︎️🛸转移伤害☠☯︎️🛸",
"☠☯︎️🛸取消个人禁言☠☯︎️🛸",
"☠☯︎️🛸禁用钩爪塞子☠☯︎️🛸",
"☠☯︎️🛸修改分数☠☯︎️🛸",
"☠☯︎️🛸无限星星☠☯︎️🛸",
"☠☯︎️🛸一摔就死☠☯︎️🛸",
"☠☯︎️🛸全房间静止☠☯︎️🛸",
"(✧∇✧)返 回 主 页(✧∇✧)",
 }, nil, "🔶你是我想保护的人啊......🔷,🔆目前此功能区:16个🔆")
if SN == nil then else
if SN[1]==true then     lglq1() end
if SN[2]==true then     lglq2() end
if SN[3]==true then     lglq3() end
if SN[4]==true then     lglq4() end
if SN[5]==true then     lglq5() end
if SN[6]==true then     lglq6() end
if SN[7]==true then     lglq7() end
if SN[8]==true then     lglq8() end
if SN[9]==true then     lglq9() end
if SN[10]==true then     lglq10() end
if SN[11]==true then     lglq11() end
if SN[12]==true then     lglq12() end
if SN[13]==true then     lglq13() end
if SN[14]==true then     lglq14() end
if SN[15]==true then     lglq15() end
if SN[16]==true then     lglq16() end
if SN[17]==true then     Main() end
end
FX=0 end






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
           gg.toast("检测到"..#data.."条外来数据")
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


function QQ1() 
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x588CE0, 0x330, 0x338}
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

function lglq1()  
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








function lglq2()  
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




function lglq3()  
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

function lglq4()  
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

function lglq5()  
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

function lglq6()  
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



function lglq7()  
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

function lglq8()
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
{["value"] =246422080, ["type"] = 4},
{["lv"] = 167772162, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 140,["type"] = 16},
}
xqmnb(qmnb)
	 gg.clearResults()
 elseif  F== 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "凉情自创"},
{["value"] =246422080, ["type"] = 4},
{["lv"] = 167772162, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = 200, ["offset"] = 140,["type"] = 16},
}
xqmnb(qmnb)
	 gg.clearResults()
end
end





function lglq9()
e1 = gg.prompt({"输入要添加的代码11900，11905~11909,"}
,{[1]=11900},{[1]="number"})[1]
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



function lglq10()
LQ = gg.prompt({"输入别人迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=1117126656,["type"]=4},
{["lv"]=256,["offset"]=-36,["type"]=4},
{["lv"] =65793, ["offset"] = -92, ["type"] = 4},
}
qmxg={
{["value"]=LQ,["offset"]=-140,["type"]=4,["freeze"] = true}
}
xqmnb(qmnb)
gg.clearResults()
end

function lglq11()
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






function lglq12()
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





function lglq13()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("⚠️凉情⚠️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  mvi3() end
if m3==4 then  mvi4() end
if m3==5 then  mvi5() end
if m3==6 then  mvi6() end
if m3==7 then  Main() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -164},{6553600, 12} }
local tb2 = {{mn2, -164  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -148},{6553600, 12} }
local tb2 = {{mn2, -148  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -132},{6553600, 12} }
local tb2 = {{mn2, -132  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -116},{6553600, 12} }
local tb2 = {{mn2, -116  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -100},{6553600, 12} }
local tb2 = {{mn2, -100  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
gg.setRanges(4)
local dataType = 4
local tb1 = {{6553700, 0}, {mn1, -84},{6553600, 12} }
local tb2 = {{mn2, -84  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end




function lglq14()
gg.toast("我c")
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


function lglq15()  
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
{["value"] =-637534055, ["type"] = 4},
{["lv"] =167772178 , ["offset"] = 240, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=316,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =-637534055, ["type"] = 4},
{["lv"] =167772178 , ["offset"] = 240, ["type"] = 4},
}
qmxg = {
{["value"]=100.0,["offset"]=316,["type"]=16},
}
xqmnb(qmnb)
end
end




function lglq16()  
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




function Main4()  
SN = gg.multiChoice({
"☠☯︎️🛸添加火箭背包☠☯︎️🛸",
"☠☯︎️🛸剑无限cd☠☯︎️🛸",
"☠☯︎️🛸观战模式☠☯︎️🛸",
"☠☯︎️🛸开狙击镜(所有枪)☠☯︎️🛸",
"☠☯︎️🛸锁高度☠☯︎️🛸",
"☠☯︎️🛸吸人☠☯︎️🛸",
"☠☯︎️🛸强制改密码☠☯︎️🛸",
"☠☯︎️🛸修改血量(锁血)☠☯︎️🛸",
"☠☯︎️🛸改名字☠☯︎️🛸",
"☠☯︎️🛸上帝视角☠☯︎️🛸",
"☠☯︎️🛸第一个无限物品☠☯︎️🛸",
"☠☯︎️🛸无限跳☠☯︎️🛸",
"☠☯︎️🛸蝙蝠模式☠☯︎️🛸",
"☠☯︎️🛸人物形象☠☯︎️🛸",
"╰(⇀‸↼)╯返 回 主 页╰(⇀‸↼)╯",
 }, nil, "🔶他好像一只狗啊哈哈🔷🔆目前此功能区:13个🔆")
if SN == nil then else
if SN[1]==true then     yflq1() end
if SN[2]==true then     yflq2() end
if SN[3]==true then     yflq3() end
if SN[4]==true then     yflq4() end
if SN[5]==true then     yflq5() end
if SN[6]==true then     yflq6() end
if SN[7]==true then     yflq7() end
if SN[8]==true then     yflq8() end
if SN[9]==true then     yflq9() end
if SN[10]==true then     yflq10() end
if SN[11]==true then     yflq11() end
if SN[12]==true then     yflq12() end
if SN[13]==true then     yflq13() end
if SN[14]==true then     yflq14() end
if SN[15]==true then     Main() end
end
FX=0 end


function yflq1()  
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



function yflq2()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end

function yflq3()
gg.toast("请选择观战模式开关")
F=gg.alert("🌚请选择观战模式｛开 关｝🌚", "🌞开🌞", "🌝关🌝")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-56,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-56,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end

function yflq4()
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
{["name"] = "自动"},
{["value"] =15004, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=75.0,["offset"]=-12,["type"]=16,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动"},
{["value"] =15004, ["type"] = 4},
{["lv"] =  -1082130432, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=-12,["type"]=16,["freeze"] = true},
}
xqmnb(qmnb)
end
end

function yflq5()
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "锁定高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 800, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 gg.toast("加上超远攻击直接乱杀")
end





function yflq6()
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



function yflq7()
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
function yflq8()
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

function yflq9()
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



function yflq10()
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





function yflq11()
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




function yflq12()
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


function yflq13()
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


function lqnbnb1()
qmnb = {
{["memory"] = 4},
{["name"] = "天线"},
{["value"] = 169478669, ["type"] = 4},
{["lv"] = 36196, ["offset"] = 20, ["type"] = 4},
{["lv"] = 6407, ["offset"] = 24, ["type"] = 4},}
qmxg = {
{["value"] = e1, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end

function yflq14()
menu1= gg.choice({
    "𒅒🔰人 物 天 线🔰𒅒",
    "𒅒🔰人 物 头 动🔰𒅒",
    "𒅒🔰人 物 无 头🔰𒅒",
    "𒅒🔰️人 物 恢 复🔰𒅒",    
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("如果不是你....我会一直抑郁？"))
if menu1==1 then e1=5 lqnbnb1() end
if menu1==2 then e1=2 lqnbnb1() end
if menu1==3 then e1=999 lqnbnb1() end
if menu1==4 then e1=1 lqnbnb1() end
if menu1==5 then Main0() end
XGCK=-1 end







function Main5()  
SN = gg.multiChoice({
"☠☯︎️🛸青凤结界☠☯︎️🛸",
"☠☯︎️🛸大厅黑色☠☯︎️🛸",
"☠☯︎️🛸箱子界面☠☯︎️🛸",
"☠☯︎️🛸篮足球模式☠☯︎️🛸",
"☠☯︎️🛸替别人打字☠☯︎️🛸",
"☠☯︎️🛸单机聊天☠☯︎️🛸",
"☠☯︎️🛸雾里☠☯︎️🛸",
"☠☯︎️🛸重复走路☠☯︎️🛸",
"U ´꓃ ` U返 回 主 页U ´꓃ ` U",
 }, nil, "🔶星辰大海是我们的征辰🔷🔆目前此功能区:8个🔆")
if SN == nil then else
if SN[1]==true then     xclq1() end
if SN[2]==true then     xclq2() end
if SN[3]==true then     xclq3() end
if SN[4]==true then     xclq4() end
if SN[5]==true then     xclq5() end
if SN[6]==true then     xclq6() end
if SN[7]==true then     xclq7() end
if SN[8]==true then     xclq8() end
if SN[9]==true then     Main() end
end
FX=0 end



function xclq1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("天眼开启成功")
	 gg.clearResults()
end


function xclq2()
qmnb={
{["memory"]=4},
{["name"]="大厅全黑"},
{["value"]=4980746,["type"]=4},
{["lv"]=16777472,["offset"]=144,["type"]=4}
}
qmxg={
{["value"]=-16777216,["offset"]=144,["type"]=4}
}
xqmnb(qmnb)
gg.clearResults()
end

function xclq3()
qmnb = {
{["memory"] = 4},
{["name"] = "联机箱子"},
{["value"] = 5519032975372, ["type"] = 32},
{["lv"] = 16777216, ["offset"] = -392, ["type"] = 4},}
qmxg = {
{["value"] = 16777472, ["offset"] = -392, ["type"] = 4},
}
xqmnb(qmnb)
end


function xclq4()
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
function xclq5()
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



function xclq6()
gg.setRanges(4)
local dataType = 4
local tb1 = {{1130889216,0},{155648,-108} }
local tb2 = {{16777472, -76,true  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("单机聊天")
	 gg.clearResults()
end






function xclq7()
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
{["value"] =50765636, ["type"] = 4},
{["lv"] =50758248 , ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=272,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =50765636, ["type"] = 4},
{["lv"] =50758248 , ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"]=100.0,["offset"]=272,["type"]=16},
}
xqmnb(qmnb)
end
end


function xclq8()
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
{["value"] =1134559233, ["type"] = 4},
{["lv"] =436207666 , ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"]=-10.0,["offset"]=-252,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =1134559233, ["type"] = 4},
{["lv"] =436207666 , ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"]=101.0,["offset"]=-252,["type"]=16},
}
xqmnb(qmnb)
end
end




function Main6()  
SN = gg.multiChoice({
"☠☯︎️🛸作者背景☠☯︎️🛸",
"☠☯︎️🛸联系作者(点击复制迷你号)☠☯︎️🛸",
"☠☯︎️🛸特别感谢☠☯︎️🛸",
"☠☯︎️🛸更新时间☠☯︎️🛸",
"☠☯︎️🛸辅助公告☠☯︎️🛸",
"ฅ۶•ﻌ•♡返 回 主 页ฅ۶•ﻌ•♡",
 }, nil, "🔶时间过去了.....也许不会回来吧？🔷")
if SN == nil then else
if SN[1]==true then     djlq1() end
if SN[2]==true then     djlq2() end
if SN[3]==true then     djlq3() end
if SN[4]==true then     djlq4() end
if SN[5]==true then     djlq5() end
if SN[6]==true then     Main() end
end
FX=0 end




function djlq1()
gg.alert[[
作者:凉情城
出生日期:2007.4.14
做过的辅助:凉情-龙哥 凉情辅助por 星辰阁辅助 第七使徒辅助 LQ炸图辅助 神灵.凉情
性别:男
徒弟:柯南 夜辰 剑圣 恹梵 叶帆
师傅北海
友好交往:ttp 重回巅峰
]]
end



function djlq2()
gg.copyText("凉情迷你号1421879199")
end


djlq3=function()
 SN=gg.multiChoice({
'💔龙半岁💔',
'💔工藤新一💔',
'💔慕辞💔',
'💔傲傲💔',
'💔沈一岁💔',
'💔小可💔',
'💔姜.小北(跑路北)💔',
'💔XE💔',
'💔夜辰💔',
'💔剑圣💔',
'💔北少💔',
'💔北海💔',
'💔凉兮💔',
'💔叶帆💔',
'💔阿哲💔',
'💔ca💔',
'💔星辰💔',
'💘寒风💘',
'💘北仙💘',
'💘白九💘',
'💘倾城💘',
'🍓无名🍓',
'🍓神圣🍓',
'🍓白露🍓',
'🍓天跑🍓',
'🍓墨凉🍓',
'🍓苏辰逸🍓',
'🍓林鹤辰🍓',
'❣️返回辅助❣️'},
nil,'我们不想出名，只不过是不想那么快被忘记.....')
if SN == 1 then Main() end
if SN == 2 then Main() end
if SN == 3 then Main() end
if SN == 4 then Main() end
if SN == 5 then Main() end
if SN == 6 then Main() end
if SN == 7 then Main() end
if SN == 8 then Main() end
if SN == 9 then Main() end
if SN == 10 then Main() end
if SN == 11 then Main() end
if SN == 12 then Main() end
if SN == 13 then Main() end
if SN == 14 then Main() end
if SN == 15 then Main() end
if SN == 16 then Main() end
if SN == 17 then Main() end
if SN == 18 then Main() end
if SN == 19 then Main() end
if SN == 20 then Main() end
if SN == 21 then Main() end
if SN == 22 then Main() end
if SN == 23 then Main() end
if SN == 24 then Main() end
if SN == 25 then Main() end
if SN == 26 then Main() end
if SN == 27 then Main() end
if SN == 28 then Main() end
if SN == 29 then Main() end
if SN == 30 then Main() end
if SN == 31 then Main() end
GLWW=-1
end



function djlq4()
gg.alert[[
2022.1.2.4.38.54
]]
end


function djlq5()
gg.alert[[
滚一边玩去，曹尼玛b
]]
end


local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"红色高跟鞋","10"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词

--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
XGCK=-1
end
end
function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页


 









function Main3()  
 SN = gg.choice({
   "𒅒♥搜索歌曲🔍♥️𒅒",
   "𒅒♥️搜索列表🌐♥️𒅒",
   "𒅒♥️播放热歌🗣️♥️𒅒",
   "𒅒♥️停止播放💤♥️𒅒",
   "𒅒♥️️清除冻结➖♥️𒅒",
   "𒅒♥️返回主页️➗♥️𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then Main11() end
if SN==6 then Main() end
XGCK=-7
end



--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️
--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️--------------♦️凉 情♦️






---
function s1()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end





function Exit()
gg.toast(os.date("[ 🔆🔆🔆🔆作者:凉情城🔆🔆🔆🔆 ]\n                关闭时间：%D   %T"))
  os.exit(print("✧*｡٩(ˊᗜˋ*)و✧*｡祝你玩得愉快"))
end

while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end
