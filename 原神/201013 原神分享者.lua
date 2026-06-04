--[[
分享名单以及功能↓
敲里吗分享一键无CD

我代表使用脚本的人在这里感谢各位大佬的分享
--作者:野欲  交流群:143598878
需要把自己的功能分享在这里的请在群里@我
]]
function LongTao(Search, Write)  gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移 "..#t.." 条数据")      else       gg.toast("未搜到数据！")       return false     end    else     gg.toast("未搜到数据！")     return false   end end    
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法 xqmnb(qmnb)



function Main()
SN = gg.prompt({
  "1.人物无cd类   分享者:敲里吗",
  "退出脚本",
},{false,false,false,false,false,false,false,false,"",false},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","number","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
-------1-------2------3-------4-------5-------6-------7------8-----9------10-------------1-----------------2-----------------3----------------4----------------5-----------------6-----------------7----------------8-----------------9--------------10-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1---
if SN == nil then else
if SN[1] == true then F1Main() end
--if SN[2] == true then yuanshen2() end
if SN[3] == true then yuanshen3() end
if SN[4] == true then yuanshen4() end
if SN[5] == true then yuanshen5() end
if SN[6] == true then yuanshen6() end
if SN[7] == true then yuanshen7() end
if SN[8] == true then F2Main() end
if SN[9] == "" then else yuanshen9() end
if SN[10] == true then yuanshen10() end
if SN[2] == true then Exit() end
end XGCK = -1 end

function F1Main()
SN1 = gg.prompt({
  "    1. 安柏CD",
  "    2. 刻晴CD",
  "    3. 香菱CD",
  "    4. 芭芭拉CD",
  "    5. 一键无CD开(加载时需要关闭否则卡进度条处)",
  "    6. 一键无CD关",
},{false,false,false,false,false,false,false,false,false,false},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
-------1-------2------3-------4-------5-------6-------7------8-----9------10-------------1-----------------2-----------------3----------------4----------------5-----------------6-----------------7----------------8-----------------9--------------10-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1-------1---
if SN1 == nil then else
if SN1[1] == true then yuanshena1() end
if SN1[2] == true then yuanshena2() end
if SN1[3] == true then yuanshena3() end
if SN1[4] == true then yuanshena4() end
if SN1[5] == true then yuanshena5() end
if SN1[6] == true then yuanshena6() end
if SN1[7] == true then yuanshena7() end
if SN1[8] == true then yuanshena8() end
end XGCK = -1 end

function yuanshena1()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "安柏CD"},
{["value"] = 10032, ["type"] = gg.TYPE_DWORD},
{["lv"] = 256, ["offset"] = 52, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1097859072, ["offset"] = 96, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1, ["offset"] = 120, ["type"] = gg.TYPE_DWORD},
}--数值中间不能带有英文符号

qmxg = {
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = true},--
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = false},--
}
xqmnb(qmnb)
end
function yuanshena2()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "香菱CD"},
{["value"] = 10232, ["type"] = gg.TYPE_DWORD},
{["lv"] = 256, ["offset"] = 52, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1094713344, ["offset"] = 96, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1, ["offset"] = 120, ["type"] = gg.TYPE_DWORD},
}--数值中间不能带有英文符号

qmxg = {
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = true},--
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = false},--
}
xqmnb(qmnb)
end
function yuanshena3()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "刻晴CD"},
{["value"] = 10422, ["type"] = gg.TYPE_DWORD},
{["lv"] = 256, ["offset"] = 52, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1089470464, ["offset"] = 96, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1, ["offset"] = 120, ["type"] = gg.TYPE_DWORD},
}--数值中间不能带有英文符号

qmxg = {
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = true},--
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = false},--
}
xqmnb(qmnb)
end
function yuanshena4()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "芭芭拉CD"},
{["value"] = 10071, ["type"] = gg.TYPE_DWORD},
{["lv"] = 256, ["offset"] = 52, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1107296256, ["offset"] = 96, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1, ["offset"] = 120, ["type"] = gg.TYPE_DWORD},
}--数值中间不能带有英文符号

qmxg = {
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = true},--
{["value"] = 0, ["offset"] = 96, ["type"] = gg.TYPE_DWORD, ["freeze"] = false},--
}
xqmnb(qmnb)
end

function yuanshena5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4;0;26;27;14;60::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if 0~=gg.getResultCount() then
gg.searchNumber('4',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-1',gg.TYPE_DWORD)
gg.toast(" 一键无CD开启 ")
else
gg.toast(" 一键无CD开启失败 ")
end
end

function yuanshena6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4;0;26;27;14;-1::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if 0~=gg.getResultCount() then
gg.searchNumber('-1',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('60',gg.TYPE_DWORD)
gg.toast(" 一键无CD关闭 ")
else
gg.toast(" 一键无CD关闭失败 ")
end
end






function Exit() os.exit() end
while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false) end gg.clearResults() if XGCK == 1 then Main() end end
--结束语段