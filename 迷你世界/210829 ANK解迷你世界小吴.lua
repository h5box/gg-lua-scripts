function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
a = io.open("/sdcard/迷你号配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/迷你号配置文件.txt"):read("*a") zh = a:match("(.-)🍼") if a == "" then zh = "" end end
dI=gg.prompt({"🔰输入你的迷你号！抵制不良游戏，拒绝盗版游戏。\n注意自我保护，谨防受骗上当。\n适度游戏益脑，沉迷游戏伤身。\n合理安排时间，享受健康生活。\n代码是作者四处找来的，制作不易，欢迎大家使用。\n此脚本是免费的，倒卖的注意点。\n搬砖请注明出处，感谢大家支持⚠️（打开失败再打第2次）",},{[1] = zh,[2] = nil},{[1] = "number",[2] = "checkbox"}) if dI[2] ==true then  end   zh = dI[1]  io.open("/sdcard/迷你号配置文件.txt", "w") io.open("/sdcard/迷你号配置文件.txt", "w"):write("" .. zh .. "🐮"):close()
b=a 
local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🔰","🏅","🥌","⭕️","🐥","🐵","🐭","🐶","🍓","🎾","⚽️","🏀","🚗","📱","💗","🇨🇳",}
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"[1]➖🔰基础功能🔰➖",
"[2]➖🔰天空黑化🔰➖",
"[3]➖🔰解锁物品🔰➖",
"[4]➖⚠️攻击模式😘➖",
"[5]➖🔰坐骑专区🔰➖",
"[6]➖多人大房间（创造房间的时候开就是联机大厅那里）➖",
"[7]➖透视方块➖",
"[8]➖🔰崩溃服务器🈲➖",
"[9]➖附魔功能➖",
"[10]➖🔰特效功能🔰➖",
"[11]➖🔰上帝（开启成功，打开背包）🔰➖",
"[12]➖⚠️炸图模式⚠️➖",
"➖➖❌小吴最衰❌➖➖",
}, nil, "某某K解小吴")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then HS8() end
if SN==9 then HS9() end
if SN==10 then HS10() end
if SN==11 then HS11() end
if SN==12 then HS12() end
if SN==13 then os.exit() end
FX1=0
end



function HS1()
SN = gg.multiChoice({
	 "①➖蹦蹦跳（没效果，因为一些地图调了重力）➖",
	 "②➖创造神（⚠️房主用，开启成功点地图）➖",
	 "③➖麒麟臂➖",
	 "④➖闪电侠➖",
	 "⑤➖长臂猿➖",
	 "⑥➖打野人爆经验➖",
	 "⑦➖不死之身（单机开最好，联机有点会崩溃）➖",
	 "⑧➖火眼金睛➖",
	 "⑨➖伤害999+➖",
	 "⑩➖自由穿梭（先看一下地图的高度再开。会有拉回）➖",
	 "➖返回猪页➖",
}, nil, "⚠️有些小白不知道，我说一下:隐藏游戏选23、运行旁路没有和运行守护3！有人反馈说没效果，能不能开功能尽量别动🌚这些功能都可以用，有些只会游戏崩溃尽量不要开太多")
if SN[1]==true then
	 HS51()
end
if SN[2]==true then
	 HS52()
end
if SN[3]==true then
	 HS53()
end
if SN[4]==true then
	 HS54()
end
if SN[5]==true then
	 HS55()
end
if SN[6]==true then
	 HS56()
end
if SN[7]==true then
	 HS58()
end
if SN[8]==true then
	 HS59()
end
if SN[9]==true then
	 HS60()
end
if SN[10]==true then
	 HS665()
end
if SN[11]==true then
	 HS666()
end
FX1=0
FX2=0
end



function HS51()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("60;180;120;220;1;1,073,741,824:153", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("1",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "1"}})
end
gg.toast("踏空（连跳）✔️开启成功✔️")
gg.clearResults()
end
end



function HS52()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5D;0.05139018595F::512", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("5",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "4"}})
end
gg.toast("创造开启成功✔️⚠️点开小地图")
gg.clearResults()
end
end



function HS53()
gg.clearResults()
local FKC_a1 = os.clock()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3~200F;1F;15;10000;100~1000::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓秒撸方块是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗") gg.toast("❌开启失败❌")    else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("3~200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓秒撸是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗")gg.toast("❌开启失败❌")     else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("2C")
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("✔️秒撸方块开启成功✔️")
gg.clearResults()
end end end



function HS54()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,120,403,456D;100.0F;0.5;0.80000001192;1.29999995232;3,600D", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("0.80000001192;1.29999995232",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--居然被你破解了😱
gg.editAll("5", FLOAT)
gg.toast("✔️人物加速开启成功✔️")
gg.clearResults()
end
end



function HS55()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("400;500", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌️")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--你牛逼
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "9999"}})
end
gg.toast("✔️人物超远攻击开启成功✔️")
gg.clearResults()
end
end



function HS56()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3101;12526;13", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("13",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)--到卖没妈！
gg.editAll("999999", DWORD)
gg.toast("✔️开启成功，把野人打嗝屁就有了✔️")
gg.clearResults()
end
end



function HS58()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1120403456;100F;1120403456;100F", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("1120403456",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--不要二改
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "2143289344"}})
end
gg.toast("✔️无限血开启成功✔️")
gg.clearResults()
end
end



function HS59()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10;30000::", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("30000",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--可以借鉴借鉴
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "0"}})
end
gg.toast("✔️透视开启成功️✔️")
gg.clearResults()
end
end



function HS60()
qmnb = {
{["memory"] = 4},
{["name"] = "乱杀"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 56, ["type"] = 16},
}
xqmnb(qmnb)
end



function HS665()
AA1 = gg.prompt({"请输入你的高度"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = AA1, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end



function HS666()
	 Main0()
end



function HS2()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","✔️开✔️","❌关❌️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空黑化"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空黑化"},
{["value"] = 1133248512, ["type"] = 4},
{["lv"] = 1117782016, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0.400000000596, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 end
end



function HS3()
SN = gg.multiChoice({
  "①解锁火箭筒（虽然说不能用，但是能装X吓xxs）",
  "②解锁金铁床",
  "③解锁弩",
  "④解锁公主床",
  "⑤解锁豪华床",
  "⑥解锁精致木床",
  "⑦解锁火箭背包",
  "⑧解锁家园道具",
  "➖返回主页➖",
}, nil, "🈲止到卖，反馈Q群:894155215")
if SN[1]==true then
	 HS20()
end
if SN[2]==true then
	 HS21()
end
if SN[3]==true then
	 HS22()
end
if SN[4]==true then
	 HS23()
end
if SN[5]==true then
	 HS24()
end
if SN[6]==true then
	 HS25()
end
if SN[7]==true then
	 HS26()
end
if SN[8]==true then
	 HS27()
end
if SN[9]==true then
	 HS28()
end
FX1=0
FX2=0
end




function HS20()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
  gg.clearResults()
end



function HS21()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function HS22()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function HS23()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("884;31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function HS25()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("883;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function HS26()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("✔️开启成功✔️")
	 gg.clearResults()
end



function i1()
qmnb = {
{["memory"] = 4},
{["name"] = "道具"},
{["value"] = 42949672960230, ["type"] = 32},
{["lv"] = 6582127, ["offset"] = 0x64, ["type"] = 32},
}
qmxg = {
{["value"] = i, ["offset"] = -0x5C, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function HS27()  
i2= gg.choice({
    "🎋炸药桶🎋",
    "🎋刷怪方块🎋",
    "🎋宠物窝🎋",
    "🎋天气控制器🎋",
    "🎋️重力装置🎋",    
    "🎋️空心树🎋",
    "🎋自定义方块🎋",
    "🎋中式沙发🎋",
    "🎋中式桌子🎋",
    "🎋中式餐桌🎋",
    "🎋中式洗手台🎋",   
    "🎋中式椅子🎋",
    "🎋中式马桶🎋",
    "🎋中式浴缸🎋",
    "🎋中式屏风🎋",
    "🎋️中式立体灯🎋",    
    "🎋中式吊灯️🎋", 
    "🎋中式门️🎋",
    "🎋中式窗🎋",
    "🎋️中式楼梯🎋",    
    "🎋中式墙砖🎋", 
    "🎋中式地砖🎋", 
    "🎋中式半砖🎋", 
    "🎋中式围栏🎋", 
    "🎋现代床🎋", 
    "🎋现代沙发🎋", 
    "🎋现代书桌🎋", 
    "🎋现代餐桌🎋",
    "🎋现代茶几🎋",
    "🎋现代洗手台🎋",
    "🎋现代椅子🎋",
    "🎋现代马桶🎋",
    "🎋现代浴缸🎋",
    "🎋现代衣柜🎋",
    "🎋现代橱柜🎋",
    "🎋现代半格橱柜🎋",
    "🎋现代组合柜🎋",
    "🎋现代屏风🎋",
    "🎋现代立体灯🎋",
    "🎋现代吊灯🎋",
    "🎋现代壁灯🎋",
    "🎋现代门🎋",
    "🎋现代窗🎋",
    "🎋现代楼梯🎋",
    "🎋现代墙砖🎋",
    "🎋现代砖🎋",
    "🎋现代半砖🎋",
   "🎋现代围栏🎋", 
    "🎋️童话床🎋️🎋",
    "🎋童话沙发️🎋️🎋",
    "🎋童话书桌🎋",
    "🎋童话桌子️🎋",
    "🎋童话茶几️🎋",
    "🎋️童话洗手池🎋",
    "🎋️童话椅子🎋",
    "🎋️童话马桶🎋",
    "🎋童话浴缸️🎋",
    "🎋童话衣柜️🎋",
    "🎋童话橱柜️🎋",
    "🎋童话半格橱柜️🎋",
    "🎋童话箱子️🎋",
    "🎋童话屏风️🎋",
    "🎋童话台灯️🎋",
    "🎋️童话吊灯🎋",
    "🎋️童话壁灯🎋",
    "🎋️童话门🎋",
    "🎋童话窗️🎋",
    "🎋️童话楼梯🎋",
    "🎋童话墙砖️🎋",
    "🎋️童话地砖🎋",
    "🎋️童话半砖🎋",
    "🎋️童话围栏🎋",
    "🎋科幻床️🎋",
    "🎋️科幻沙发🎋",
    "🎋科幻书桌🎋",
    "🎋科幻桌子🎋", 
    "🎋科幻茶几🎋",
    "🎋科幻洗手台🎋",
    "🎋科幻椅子🎋",
    "🎋科幻马桶🎋",
    "🎋科幻浴缸🎋",
    "🎋科幻衣柜🎋",
    "🎋返 回 主 页🎋",},i2,os.date("🎋开启后打开编辑器在植物那个分类里找到南瓜🎋"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"输入方块代码"},{[1]=4095},{[1]="number"})[1] i1() end
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



function HS28()
	 Main0()
end



function HS4()
SN = gg.multiChoice({
	 "①😘狙击枪攻击变成加特林",
	 "②狙击枪无后坐力",
	 "③狙击枪攻击力9999",
	 "④石矛秒杀",
	 "⑤能量剑无CD",
	 "⑥子弹模式",
	 "⑦子弹穿墙（⚠️只能房主用）",
	 "⑧攻击不同队的队友",
	 "➖返回主页➖",
}, nil,"直接乱杀") 
if SN[1]==true then
	 HS61()
end
if SN[2]==true then
	 HS62()
end
if SN[3]==true then
	 HS63()
end
if SN[4]==true then
	 HS64()
end
if SN[5]==true then
	 HS65()
end
if SN[6]==true then
	 HS66()
end
if SN[7]==true then
	 HS67()
end
if SN[8]==true then
	 HS68()
end
if SN[9]==true then
	 HS69()
end
FX1=0
FX2=0
end



function HS61()
qmnb={
{["memory"]=4},
{["name"]="狙击枪"},
{["value"]=15004,["type"]=4},
{["lv"]=15004,["offset"]=4,["type"]=4},
{["lv"]=15003,["offset"]=140,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=72,["type"]=4},
{["value"]=0,["offset"]=104,["type"]=4},
{["value"]=1,["offset"]=136,["type"]=4}
}
xqmnb(qmnb)
end



function HS62()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("15003;60;1077936128;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("狙击枪无后坐力已开启")
	 gg.clearResults()
end



function HS63()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("15004;100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_WORD,freeze = true,value = 9999}})
	 end
	 gg.toast("狙击枪攻击力9999已开启")
	 gg.clearResults()
end



function HS64()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12002;12002;35F", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("35F",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "9999"}})
end
gg.toast("石矛秒杀开启成功")
gg.clearResults()
end
end



function HS65()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
end



function HS66()
F = gg.alert("🔰请选择功能🔰","✔️彩蛋枪强化1✔️","🍁自定义️子弹2🍁️️")
 if  F~=1 and F~=2 then
  else 
  end
 if F == 2 then
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=0},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "子弹选择"},
{["value"] = 12247, ["type"] = 4},
{["lv"] = 12247, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 72, ["type"] = 4},
{["lv"] = 1, ["offset"] = 136, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "彩蛋枪"},
{["value"] = 12247, ["type"] = 4},
{["lv"] = 12247, ["offset"] = 4, ["type"] = 4},
{["lv"] = 9830400, ["offset"] = 72, ["type"] = 4},
{["lv"] = 12249, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 72, ["type"] = 4},
{["value"] = 0, ["offset"] = 100, ["type"] = 4},
{["value"] = 12299, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
end
end



function HS67()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","✔️开✔️","❌️关❌️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
end



function HS68()
b99 = gg.prompt({"[输入不同队的人的迷你号]开启成功后打队友，伤害会到你输入迷你号的那个人身上"}
,{[1]=0},{[1]="number"})[1]
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "攻击队友"},
{["value"] = 999, ["type"] = 4},
{["lv"] = 180, ["offset"] = 20, ["type"] = 4},
{["lv"] = 60, ["offset"] = 24, ["type"] = 4},
{["lv"] = 220, ["offset"] = 28, ["type"] = 4},
{["lv"] = 120, ["offset"] = 32, ["type"] = 4},
{["lv"] = 120, ["offset"] = 36, ["type"] = 4},
{["lv"] = -1, ["offset"] = 208, ["type"] = 4},
{["lv"] = -1, ["offset"] = 212, ["type"] = 4},
{["lv"] = -1, ["offset"] = 216, ["type"] = 4},
}
qmxg = {
{["value"] = b99, ["offset"] = 340, ["type"] = 4,["freeze"] = true},
{["value"] = 999, ["offset"] = 0, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 212, ["type"] = 4,["freeze"] = true},
{["value"] = -1, ["offset"] = 216, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)

end



function HS69()
	 Main0()
end



function HS5()
SN = gg.multiChoice({
     "解锁坐骑（⚠️只能自己单人用联机会掉线！打开放坐骑的地方）",
	 "①狼生化石龙",
	 "②狼生麒麟",
	 "③狼生小飞鼠",
	 "④恢复🐺生化石龙",
	 "⑤恢复🐺生麒麟",
	 "⑥恢复🐺生小飞鼠",
	 "⑦所有坐骑蛋秒孵化",
	 "返回主页😂",
}, nil, "⚠️先准备好草垛，一个也可以！然后用奇怪的肘子喂野生的狼不是被驯服的！本来是想搞二级三级的，可是孵不出来😂")
if SN[1]==true then
	 HS49()
end
if SN[2]==true then
	 HS41()
end
if SN[3]==true then
	 HS42()
end
if SN[4]==true then
	 HS43()
end
if SN[5]==true then
	 HS44()
end
if SN[6]==true then
	 HS45()
end
if SN[7]==true then
	 HS46()
end
if SN[8]==true then
	 HS47()
end
if SN[9]==true then
	 HS48()
end
FX1=0
FX2=0
end



function HS49()
o2= gg.choice({
    "化石龙",
    "机灵飞鼠",
    "瑞祥麒麟",
    "陆行鸟",
    "️大白象",    
    "️超能海豹",
    "舞狮猫猫",
    "星河天马",
    "桃香扇缘",
    "深渊咆哮",
    "皎月仙宫",
    "冰雪传说",   
    "缤纷幻想",
    "福运哞哞",
    "浮游山海",
    "镜花水月",
    "鹿王本身", 
     "精灵南瓜车", 
      "竹 蜻 蜓",     
    "返 回 主 页",},2021,os.date("可用,开启成功后打开坐骑位就是在右边那个跳跃键上面"))
if o2==1 then o=3432 o4() end
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
XGCK=-1 end
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



function HS41()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3430}})
	 end
	 gg.toast("化石龙开启成功去喂吧！")
	 gg.clearResults()
end



function HS42()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3436}})
	 end
	 gg.toast("麒麟开启成功去喂吧！")
	 gg.clearResults()
end



function HS43()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3433}})
	 end
	 gg.toast("小飞鼠开启成功去喂吧！")
	 gg.clearResults()
end



function HS44()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3809}})
	 end
	 gg.toast("恢复化石龙成功！")
	 gg.clearResults()
end



function HS45()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3809}})
	 end
	 gg.toast("恢复麒麟成功！")
	 gg.clearResults()
end



function HS46()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3407;3407;3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3809}})
	 end
	 gg.toast("恢复小飞鼠成功！")
	 gg.clearResults()
end



function HS47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("950;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("秒孵化坐骑🥚开启")
	 gg.clearResults()
end



function HS48()
	 Main0()
end



function HS6()
qmnb = {
{["memory"] = 4},
{["name"] = "PC大房间"},
{["value"] = 1111490560, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1108082688, ["offset"] = 4, ["type"] = 4},
{["lv"] = 393222, ["offset"] = 8, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 460, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 460, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end



function HS7()
qmnb = {
{["memory"] = 4},
{["name"] = "迷你透视"},
{["value"] = 30000.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.6014886498451233, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function HS8()
SN = gg.choice({
     "①开启崩服器",
     "③关闭崩服器(查看效果)",
     "②超级崩服器(请先开启崩服器)",
     "返回界面",
}, nil, "按顺序开！进入服务器崩它全家的，最后有惊喜！")
if SN==1 then
     HS70()
end
if SN==2 then
     HS71()
end
if SN==3 then
     HS72()
end
if SN==4 then
     HS73()     
end
FX1=0
end



function HS70()
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



function HS71()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;16777216;16777472;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("时间已过，自动开始崩服")
     gg.clearResults()
     Main0()
end



function HS72()
     function jiuyan(qmnb,qmxg)
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
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end



function HS73()
	 Main0()
end



function HS9()
menu1 = gg.multiChoice({
'①武器附魔第一格',
'②工具附魔第一格',
'③弓箭附魔第一格',
'④装备附魔第一格',
'⑤附魔第一个属性',
'⑥附魔第二个属性',
'⑦附魔第三个属性',
'⑧附魔第四个属性',
'⑨附魔第五个属性',
'⑩查看全附魔代码',
'⑩①第一格无限耐久',
'返回上一个主页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then ww1() end
if menu1[2] == true then ww2() end
if menu1[3] == true then ww3() end
if menu1[4] == true then ww4() end
if menu1[5] == true then ww5() end
if menu1[6] == true then ww6() end
if menu1[7] == true then ww7() end
if menu1[8] == true then ww8() end
if menu1[9] == true then ww9() end
if menu1[10] == true then ww10() end
if menu1[11] == true then ww11() end
if menu1[12] == true then C() end
end
GLWW=-1
end



function ww1()
qmnb = {
{["memory"] = 4},
{["name"] = "武器附魔"},
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
end



function ww2()
qmnb = {
{["memory"] = 4},
{["name"] = "工具附魔"},
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
end

function ww3()
qmnb = {
{["memory"] = 4},
{["name"] = "弓箭附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 1005, ["offset"] = 16, ["type"] = 4},
{["value"] = 905, ["offset"] = 20, ["type"] = 4},
{["value"] = 1305, ["offset"] = 24, ["type"] = 4},
{["value"] = 1405, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww4()
qmnb = {
{["memory"] = 4},
{["name"] = "装备附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2205, ["offset"] = 12, ["type"] = 4},
{["value"] = 1805, ["offset"] = 16, ["type"] = 4},
{["value"] = 1705, ["offset"] = 20, ["type"] = 4},
{["value"] = 1605, ["offset"] = 24, ["type"] = 4},
{["value"] = 2305, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww5()
c = gg.prompt({"请输入要修改的附魔属性代码(505是击飞五 605是锐利五 705是人类猎手五 805是动物猎手五 905是魔物猎手五 1005是点燃五 1105是击退五 1203是幸运狩猎三 1305是强力射击五 1405是无限射击五 1505是耐久五 1605是近战抗性五 1705是远程抗性五 1805是爆炸抗性五 1905是燃烧抗性五 2005是毒素抗性5 2105是混乱抗性五 2205是反击五 2305是击退抗性五 2401是精准采集 2505是速度五 2603是幸运挖掘三 2701是爆炸射击 2801是龙之缓落 2905是野人猎手五 3005是速降五 3105是爬墙五"}
,{[1]=1505},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = c, ["offset"] = 28, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function ww6()
d = gg.prompt({"请输入要修改的附魔属性代码(505是击飞五 605是锐利五 705是人类猎手五 805是动物猎手五 905是魔物猎手五 1005是点燃五 1105是击退五 1203是幸运狩猎三 1305是强力射击五 1405是无限射击五 1505是耐久五 1605是近战抗性五 1705是远程抗性五 1805是爆炸抗性五 1905是燃烧抗性五 2005是毒素抗性5 2105是混乱抗性五 2205是反击五 2305是击退抗性五 2401是精准采集 2505是速度五 2603是幸运挖掘三 2701是爆炸射击 2801是龙之缓落 2905是野人猎手五 3005是速降五 3105是爬墙五"}
,{[1]=1505},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = d, ["offset"] = 24, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function ww7()
e = gg.prompt({"请输入要修改的附魔属性代码(505是击飞五 605是锐利五 705是人类猎手五 805是动物猎手五 905是魔物猎手五 1005是点燃五 1105是击退五 1203是幸运狩猎三 1305是强力射击五 1405是无限射击五 1505是耐久五 1605是近战抗性五 1705是远程抗性五 1805是爆炸抗性五 1905是燃烧抗性五 2005是毒素抗性5 2105是混乱抗性五 2205是反击五 2305是击退抗性五 2401是精准采集 2505是速度五 2603是幸运挖掘三 2701是爆炸射击 2801是龙之缓落 2905是野人猎手五 3005是速降五 3105是爬墙五"}
,{[1]=1505},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = e, ["offset"] = 20, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function ww8()
f = gg.prompt({"请输入要修改的附魔属性代码(505是击飞五 605是锐利五 705是人类猎手五 805是动物猎手五 905是魔物猎手五 1005是点燃五 1105是击退五 1203是幸运狩猎三 1305是强力射击五 1405是无限射击五 1505是耐久五 1605是近战抗性五 1705是远程抗性五 1805是爆炸抗性五 1905是燃烧抗性五 2005是毒素抗性5 2105是混乱抗性五 2205是反击五 2305是击退抗性五 2401是精准采集 2505是速度五 2603是幸运挖掘三 2701是爆炸射击 2801是龙之缓落 2905是野人猎手五 3005是速降五 3105是爬墙五"}
,{[1]=1505},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = f, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function ww9()
g = gg.prompt({"请输入要修改的附魔属性代码(505是击飞五 605是锐利五 705是人类猎手五 805是动物猎手五 905是魔物猎手五 1005是点燃五 1105是击退五 1203是幸运狩猎三 1305是强力射击五 1405是无限射击五 1505是耐久五 1605是近战抗性五 1705是远程抗性五 1805是爆炸抗性五 1905是燃烧抗性五 2005是毒素抗性5 2105是混乱抗性五 2205是反击五 2305是击退抗性五 2401是精准采集 2505是速度五 2603是幸运挖掘三 2701是爆炸射击 2801是龙之缓落 2905是野人猎手五 3005是速降五 3105是爬墙五"}
,{[1]=1505},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = g, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function ww10()
gg.alert[[
501击飞1
502击飞2
503击飞3
504击飞4
505击飞5

601锐利1
602锐利2
603锐利3
604锐利4
605锐利5

701人类猎手1
702人类猎手2
703人类猎手3
704人类猎手4
705人类猎手5

801动物猎手1
802动物猎手2
803动物猎手3
804动物猎手4
805动物猎手5

901魔物猎手1
902魔物猎手2
903魔物猎手3
904魔物猎手4
905魔物猎手5

1001点燃1
1002点燃2
1003点燃3
1004点燃4
1005点燃5

1101击退1
1102击退2
1103击退3
1104击退4
1105击退5

1201狩猎幸运1
1202狩猎幸运2
1203狩猎幸运3

1301强力射击1
1302强力射击2
1303强力射击3
1304强力射击4
1305强力射击5

1401无限射击1
1402无限射击2
1403无限射击3
1404无限射击4
1405无限射击5

1501耐久1
1502耐久2
1503耐久3
1504耐久4
1505耐久5

1601近战抗性1
1602近战抗性2
1603近战抗性3
1604近战抗性4
1605近战抗性5

1701远程抗性1
1702远程抗性2
1703远程抗性3
1704远程抗性4
1705远程抗性5

1801爆炸抗性1
1802爆炸抗性2
1803爆炸抗性3
1804爆炸抗性4
1805爆炸抗性5

1901燃烧抗性1
1902燃烧抗性2
1903燃烧抗性3
1904燃烧抗性4
1905燃烧抗性5

2001毒素抗性1
2002毒素抗性2
2003毒素抗性3
2004毒素抗性4
2002毒素抗性5

2101混乱抗性1
2102混乱抗性2
2103混乱抗性3
2104混乱抗性4
2105混乱抗性5

2201反击1
2202反击2
2203反击3
2204反击4
2205反击5

2301击退抗性1
2302击退抗性2
2303击退抗性3
2304击退抗性4
2305击退抗性5

2401精准采集1

3201速度1
2502速度2
2503速度3
2504速度4
2505速度5

2601幸运挖掘1
2602幸运挖掘2
2603幸运挖掘3

2701爆炸射击1

2801龙之缓落1

2901野人猎手1
2902野人猎手2
2903野人猎手3
2904野人猎手4
2905野人猎手5

3001速降(护腿)1
3002速降(护腿)2
3003速降(护腿)3
3004速降(护腿)4
3005速降(护腿)5

3101爬墙(鞋子)1
3102爬墙(鞋子)2
3103爬墙(鞋子)3
3104爬墙(鞋子)4
3105爬墙(鞋子)5

]]
end



function ww11()
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



function C()
	 Main0()
end



function HS10()
menu1 = gg.multiChoice({
'①月亮特效🍼',
'②碧琪特效🍼',
'③迈形特效🍼',
'④🌈特效🍼',
'⑤蓝色特效🍼',
'⑥修复特效🍼',
'💨返回主页💨'},
nil,2021,os.date"欢迎使用小吴辅助，                                 当前时间%Y年%m月%d日%H时%M分%S秒")
if menu1 == nil then else
if menu1[1] == true then aaa1() end
if menu1[2] == true then aaa2() end
if menu1[3] == true then aaa3() end
if menu1[4] == true then aaa4() end
if menu1[5] == true then aaa5() end
if menu1[6] == true then aaa6() end
if menu1[7] == true then HSB() end
end
XGCK=-1
end



function aaa1()
qmnb={
{["memory"]=4},
{["name"]="月亮特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=12,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function aaa2()
qmnb={
{["memory"]=4},
{["name"]="碧琪特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function aaa3()
qmnb={
{["memory"]=4},
{["name"]="迈形特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=14,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function aaa4()
qmnb={
{["memory"]=4},
{["name"]="🌈特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=15,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function aaa5()
qmnb={
{["memory"]=4},
{["name"]="蓝色特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=16,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function aaa6()
V=gg.prompt({"『请输入修复特效代码』【0】是修复代码"},{'0'},{"number"})[1]
qmnb={
{["memory"]=4},
{["name"]=" 恢复特效"},
{["value"]=117901056,["type"]=4},
{["lv"]=117901056,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=V,["offset"]=4,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end



function HSB()
	 Main0()
end



function HS11()
F = gg.alert("⚠️请选择｛开 关｝🔰","✔️开","️❌关❌️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=16384},
{["name"]="创造"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=0,["offset"]=4,["type"]=16},
{["value"]=0,["offset"]=-60,["type"]=16},
{["value"]=0,["offset"]=-80,["type"]=16},
{["value"]=0,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb={
{["memory"]=16384},
{["name"]="创造关"},
{["value"]=939814400,["type"]=4},
{["lv"]=1187006320,["offset"]=8,["type"]=4},
{["lv"]=939879936,["offset"]=12,["type"]=4}
}
qmxg={
{["value"]=13.51617717743,["offset"]=4,["type"]=16},
{["value"]=13.51617717743,["offset"]=-60,["type"]=16},
{["value"]=13.51617717743,["offset"]=-80,["type"]=16},
{["value"]=13.51617717743,["offset"]=16,["type"]=16}
}
xqmnb(qmnb)
end
end



function HS12()
SN = gg.multiChoice({
  "🔰解锁危险物品🔰",
  "🔰能量剑改地形编辑器🔰",
  "🔰观战模式🔰",
  "➖返回主页➖",
}, nil, "好像只支持4399版本！反馈群☞894155215")
if SN[1]==true then
	 HS57()
end
if SN[2]==true then
	 HS248()
end
if SN[3]==true then
	 HS250()
end
if SN[4]==true then
     HS249()
end
FX1=0
FX2=0
end



function HS57()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("13.51625156403", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❌开启失败❌")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--虐xxs，不香吗¿
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "0"}})
end
gg.toast("✔️解锁危险物品开启成功✔️")
gg.clearResults()
end
end



function HS248()
	 gg.clearResults()
function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."❌开启失败❌")
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
gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"能量剑改地形编辑器"}, 
{12005, gg.TYPE_DWORD},
{2, 4, gg.TYPE_DWORD}, 
{10, 68, gg.TYPE_DWORD}, 
},
{
{10500, 0, gg.TYPE_DWORD, false},
}
)
	 gg.clearResults()
end



function HS250()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "观战模式"},
{["value"] = 1121452032, ["type"] = 4},
{["lv"] = 1118568448, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -56, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
end



function HS249()
	 Main0()
end







while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end



