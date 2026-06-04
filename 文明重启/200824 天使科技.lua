-----------------------------------------------------------------------------------------------------------------------------------------------------------------------   
--[[做人不要太攀比，踏踏实实做自己]]
    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do  local tmp = {}local offset = Search[k][2] - base  local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功")else  return false end else  return false end end  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    KG={1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,}  
    function TS1 () KG[2]=KG[2]+KG[1] end
    function TS2 () KG[2]=KG[2]-KG[1] end
    function CQ1 () KG[3]=KG[3]+KG[1] end
    function CQ2 () KG[3]=KG[3]-KG[1] end
    function SS1 () KG[4]=KG[4]+KG[1] end
    function SS2 () KG[4]=KG[4]-KG[1] end    
    function TX1 () KG[5]=KG[5]+KG[1] end
    function TX2 () KG[5]=KG[5]-KG[1] end
    function YS1 () KG[6]=KG[6]+KG[1] end
    function YS2 () KG[6]=KG[6]-KG[1] end
    function LT1 () KG[7]=KG[7]+KG[1] end
    function LT2 () KG[7]=KG[7]-KG[1] end  
    function ZH1 () KG[8]=KG[8]+KG[1] end
    function ZH2 () KG[8]=KG[8]-KG[1] end  
    function XZ1 () KG[9]=KG[9]+KG[1] end
    function XZ2 () KG[9]=KG[9]-KG[1] end 
    function DD1 () KG[10]=KG[10]+KG[1] end
    function DD2 () KG[10]=KG[10]-KG[1] end
    function FW1 () KG[11]=KG[11]+KG[1] end
    function FW2 () KG[11]=KG[11]-KG[1] end  
    function WK1 () KG[12]=KG[12]+KG[1] end
    function WK2 () KG[12]=KG[12]-KG[1] end  
    function BJ1 () KG[13]=KG[13]+KG[1] end
    function BJ2 () KG[13]=KG[13]-KG[1] end  
    function LTX1 () KG[14]=KG[14]+KG[1] end
    function LTX2 () KG[14]=KG[14]-KG[1] end  
         
    function index ()         
    if KG[2]==0 then TS="[OFF]" else TS="[ON]" end
    if KG[3]==0 then CQ="[OFF]" else CQ="[ON]" end
    if KG[4]==0 then SS="[OFF]" else SS="[ON]" end
    if KG[5]==0 then TX="[OFF]" else TX="[ON]" end
    if KG[6]==0 then YS="[OFF]" else YS="[ON]" end   
    if KG[7]==0 then LT="[OFF]" else LT="[ON]" end
    if KG[8]==0 then ZH="[OFF]" else ZH="[ON]" end
    if KG[9]==0 then XZ="[OFF]" else XZ="[ON]" end
    if KG[10]==0 then DD="[OFF]" else DD="[ON]" end
    if KG[11]==0 then FW="[OFF]" else FW="[ON]" end
    if KG[12]==0 then WK="[OFF]" else WK="[ON]" end
    if KG[13]==0 then BJ="[OFF]" else BJ="[ON]" end
    if KG[14]==0 then LTX="[OFF]" else LTX="[ON]" end

    
    TS = gg.choice({  
    " 打架系列 ",
    " 透视系列 ",
    " 强化系列 ",
    " 退出科技 ",	             
},nil,"【天使】\n最新科技群:780351268")  
    if TS == 1 then  A () end
    if TS == 2 then  B () end
    if TS == 3 then  C () end    
    if TS == 4 then exit () end
    XGCK = -1 end           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function A()
    TS1 = gg.choice({ 
    " 透视优化 ",   
    " 自瞄系列 ",   
    " 范围系列 ",  
    " 无后系列 ",  
    " 路飞系列 ",  
    " 返回列表 ", 
},nil,"【天使】")
    if TS1 == 1  then  A1 () end
    if TS1 == 2  then  A2 () end
    if TS1 == 3  then  A3 () end
    if TS1 == 4  then  A4 () end
    if TS1 == 5  then  A5 () end
    if TS1 == 6  then index () end
    XGCK = -1 end  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function B()
    TS2 = gg.choice({    
    " 透视墙壁 ",
    " 透视全图 "..TS,
    " 房屋全透 "..FW,
    " 昼夜转换 "..ZH,
    " 断网穿墙 "..CQ,
    " 返回列表 ",
},nil,"【天使】")
    if TS2 == 1  then  B1 () end
    if TS2 == 2  then  B2 () end
    if TS2 == 3  then  B3 () end
    if TS2 == 4  then  B4 () end
    if TS2 == 5  then  B5 () end
    if TS2 == 6  then index () end
    XGCK = -1 end   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function C()
    TS3 = gg.choice({
    " 人物上色 "..SS,  
    " 人物天线 [多选]",
    " 人物夜视 "..YS,
    " 人物连跳 "..LT,
    " 水上行走 "..XZ,
    " 半身遁地 "..DD,
    " 挖矿加速 "..WK,
    " 十字镜8倍 "..BJ,
    " 返回列表 ", 
},nil,"【天使】")
    if TS3 == 1  then  C1 () end
    if TS3 == 2  then  C2 () end
    if TS3 == 3  then  C3 () end
    if TS3 == 4  then  C4 () end
    if TS3 == 5  then  C5 () end
    if TS3 == 6  then  C6 () end
    if TS3 == 7  then  C7 () end
    if TS3 == 8  then  C8 () end    
    if TS3 == 9  then index () end 
    XGCK = -1 end    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function A1()    
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.8133309e-40", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(100)
    gg.editAll("0", 16)
    gg.clearResults()  
    gg.setRanges(131072)
    local dataType = 16
    local tb1 = {{-150, 0x2284}, {-30, 0x2280},{0.00999999978, 0x2288},}
    local tb2 = {{0, 0x2288, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(131072)
    gg.searchNumber("3.4897587e-39", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("1,669,499,405", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", 4)
    gg.clearResults()          
    gg.toast("人物透视|载具透视|地图优化|已开启")
end
function A2()   
    F = gg.alert("【全屏自瞄适合单挑｜内存适合群架】", "内存自瞄","全屏自瞄")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.00048828148, 760}, {0.00048828148, 812},}
    local tb2 = {{0, 572, true},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 16
    local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
    local tb2 = {{0, 4048, true},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.toast("内存自瞄已开启")
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
    local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()   
    gg.toast("全屏自瞄已开启")     
end
end
function A3()
    F = gg.alert("【范围刀禁止用枪｜用枪重新登录即可】", "小范围[稳定]", "范围刀[禁枪]","大范围[10分封]")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.toast("循环小范围已开启")   
    WDFW()
    elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.toast("循环范围刀已开启")   
    FWD()
    elseif F == 3 then
    gg.clearList()
    gg.clearResults()
    gg.toast("循环大范围已开启")   
    ZDFW()
end
end

function FWD()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    if gg.isVisible()==true then else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.isVisible()==true then else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    if gg.isVisible()==true then else
    gg.editAll("4.5", gg.TYPE_FLOAT)
    gg.clearResults()
    FWD()
end end end end
    xx1 = 4
    xx2 = 3.7
    xx3 = 7.6
    xx4 = 2.8
    cao1=xx1-xx4
    cao2=cao1+xx4
    cao3=xx2-xx3
    cao4=cao3+4
    cao5=xx1-1
    xx6 = cao2*-216
function A4()
    F = gg.alert("【打造全网最稳辅助—享受极致辅助乐趣】", "全新无后","旧版无后")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {7.8472714e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {8.9683102e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{1, -12},{2000,40}}
    local tb2 = {{10000, 0, false},{1500, 64, false},{-1, 68, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{20, -12},{80,40}}
    local tb2 = {{-100, 64, false}} 
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(4)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063425514,-156},{1019625236,-152},{-1125603554,-160},{-1090519040,-144}}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2,dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063415448,-156},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1077237078,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1076957458,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("新版 无后 瞬击 秒换弹 狙连发 已成功开启")  
    gg.clearList()
    gg.clearResults()
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    local dataType = 16
    local tb1 = {{-20.0, 0x634}, {10, 0x620},{540,0x674}}
    local tb2 = {{1.0e19, 0x674, false},{0.1, 0x620, false},{60,0x6B8,false}} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-40.0, 0x13C}, {7, 0x148}}
    local tb2 = {{1.0e19, 0x19C, false},{0.1, 0x148, false},{60,0x1E0,false}} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-30.0, 0x13C},{480, 0x19C}}
    local tb2 = {{1.0e19, 0x19C, false},{0.1, 0x148, false},{60,0x1E0,false}} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{1.20000004768, 0xB0},{40, 0xA4},{2000,0xCC}}
    local tb2 = {{10000, 0xA4, false}} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
    local tb2 = {{0.1, 0x40, false},} 
    SearchWrite(tb1, tb2, dataType)   
    gg.setRanges(4)
    local dataType = 16
    local tb1 = {{-2.76666688919, 0x58}, {1.2107219e-42, 0x50},}
    local tb2 = {{9.9999461e-41, 0x58, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
    local tb2 = {{1.4012985e-45, 0x98, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
    local tb2 = {{1.4012985e-45, 0xD8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-2.16666674614, 0x98}, {1.2107219e-42, 0x90},}
    local tb2 = {{1.4012985e-45, 0x98, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-2.66666674614, 0x18}, {1.2107219e-42, 0x10},}
    local tb2 = {{1.4012985e-45, 0x18, false},} 
    SearchWrite(tb1, tb2, dataType)    
    gg.toast("旧版无后 瞬击 秒换弹已开启")  
    gg.clearList()
    gg.clearResults()
end
end
function A5()
    F = gg.alert("【打造全网最稳辅助—享受极致辅助乐趣】", "开镜路飞","开镜遁地")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.alert("提示一∶请将冻结间隔改为[0]\n提示二∶假如开启无效请重试")  
    gg.setRanges(4)
    local dataType = 16
    local tb1 = {{0.3, 0}, {-0.20000000298, 4},{0, -4}}
    local tb2 = {{-1.39999985695, 0, true},{-1.39999985695,-4,true}}
    SearchWrite(tb1, tb2, dataType)
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.alert("提示一∶请将冻结间隔改为[0]\n提示二∶假如开启无效请重试")    
    gg.setRanges(4)
    local dataType = 16
    local tb1 = {{0.3, 0}, {-0.20000000298, 4},{0, -4}}
    local tb2 = {{1.39999985695, 0, true},{1.39999985695,-4,true}}
    SearchWrite(tb1, tb2, dataType)
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function B1()
    F = gg.alert("【打造全网最稳辅助—享受极致辅助乐趣】", "木墙透视","石墙透视","铁墙透视")
    if F == 1 then
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.032023508101701736, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.03202327340841293, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.007704700343310833, ['type'] = 16},{['lv'] =  20,['offset'] = -24,['type'] = 16},{['lv'] = -2.0,['offset'] =   8,['type'] = 16},{['lv'] = -2.0,['offset'] =  70,['type'] = 16},{['lv'] =  2.0,['offset'] =  72,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = 40,['type'] = 16},{['value'] = 0,['offset'] = 72,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.1500033140182495, ['type'] = 16},{['lv'] = -2.0,['offset'] = -36, ['type'] = 16},{['lv'] = -2.0,['offset'] = -4,['type'] = 16},{['lv'] = -2.0,['offset'] = 28,['type'] = 16},{['lv'] = 2.0,['offset'] = 60,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -36,['type'] = 16},{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 60,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.14999663829803467, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -4, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 28, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 60, ['type'] = 16},{['lv'] =  2.0, ['offset'] = 92, ['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -4, ['type'] = 16},{['value'] = 0, ['offset'] = 28, ['type'] = 16},{['value'] = 0, ['offset'] = 60, ['type'] = 16},{['value'] = 0, ['offset'] = 92, ['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = -16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 48,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] =  48,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.41978082060813904, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.013329435139894485, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060922980308533, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -148, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -116,['type'] = 16},{['lv'] = 2.0, ['offset'] = -84,['type'] = 16},{['lv'] = -2.0, ['offset'] = -52,['type'] = 16},{['lv'] = -2.0, ['offset'] = -20,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -148,['type'] = 16},{['value'] = 0, ['offset'] = -116,['type'] = 16},{['value'] = 0, ['offset'] = -84,['type'] = 16},{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = -20,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060521841049194, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -80, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -48,['type'] = 16},{['lv'] = 2.0, ['offset'] = -16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 48,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -80,['type'] = 16},{['value'] = 0, ['offset'] = -48,['type'] = 16},{['value'] = 0, ['offset'] = -16,['type'] = 16},{['value'] = 0, ['offset'] = 16,['type'] = 16},{['value'] = 0, ['offset'] = 40,['type'] = 16},{['value'] = 0, ['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},{['lv'] = 1.8001794815063477,['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = -52,['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 46,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16}, {['value'] = 0, ['offset'] = 76,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast("木墙透视已开启")  
    elseif F == 2 then  
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6826953887939453, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},{['lv'] = 2.0,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},} xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6826953887939453, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},{['lv'] = 2.0,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.682696521282196, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6827419400215149, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -144, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -64,['type'] = 16},{['lv'] = -2.0, ['offset'] = 16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 96,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -144,['type'] = 16},{['value'] = 0,['offset'] = -64,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 96,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6827935576438904, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -216, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -96,['type'] = 16},{['lv'] = 2.0, ['offset'] = -16,['type'] = 16},{['lv'] = 2.0, ['offset'] = 24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -216,['type'] = 16},{['value'] = 0,['offset'] = -96,['type'] = 16},{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6828041672706604, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 24, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 96,['type'] = 16},{['lv'] = 2.0, ['offset'] = 104,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 24,['type'] = 16},{['value'] = 0,['offset'] = 96,['type'] = 16},{['value'] = 0,['offset'] = 104,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6828030347824097, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -16, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 64,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -64,['type'] = 16},{['value'] = 0,['offset'] = 64,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.8979434967041016, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -120,['type'] = 16},{['lv'] = 2.0, ['offset'] = -88,['type'] = 16},{['lv'] = -2.0, ['offset'] = -56,['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -120,['type'] = 16},{['value'] = 0,['offset'] = -88,['type'] = 16},{['value'] = 0,['offset'] = -56,['type'] = 16},{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.9821171760559082, ['type'] = 16},{['lv'] = -1.9338666200637817, ['offset'] = -24,['type'] = 16},{['lv'] = 1.933866262435913, ['offset'] = -16,['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 8,['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 16,['type'] = 16},{['lv'] = -1.9338667392730713, ['offset'] = 24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 8,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.018658097833395004, ['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 4,['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 12,['type'] = 16},{['lv'] = 1.9338667392730713, ['offset'] = 20,['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 44,['type'] = 16},{['lv'] = -1.9338668584823608, ['offset'] = 60,['type'] = 16},{['lv'] = 1.9338668584823608, ['offset'] = 100,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 12,['type'] = 16},{['value'] = 0,['offset'] = 20,['type'] = 16},{['value'] = 0,['offset'] = 44,['type'] = 16},{['value'] = 0,['offset'] = 60,['type'] = 16},{['value'] = 0,['offset'] = 100,['type'] = 16},}xqmnb(qmnb) 
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.08303508162498474, ['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 16,['type'] = 16},{['lv'] = -1.9338666200637817, ['offset'] = 56,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 56,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast("石墙透视已开启")  
    elseif F == 3 then  
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = 28,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 100,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 100,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = -20,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.15298263728618622, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -4,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 20,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.1057068407535553, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = 4,['type'] = 16},{['lv'] = 2.178743600845337,['offset'] = 28,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17565540969371796, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = -20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.19516216218471527, ['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = -20,['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = 52,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] =  53,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17744342982769012, ['type'] = 16},{['lv'] = 2.0771946907043457, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.21184007823467255, ['type'] = 16},{['lv'] = 2.1394925117492676, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 1.2077791464015598E-41, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -16,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 8,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 8,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.8982726335525513, ['type'] = 16},{['lv'] = 2.1371371746063232, ['offset'] = -8,['type'] = 16},{['lv'] = 2.0411479473114014,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -8,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast("铁墙透视已开启")  
end 
end   
function B2()
    if KG[2]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    gg.searchNumber("0.81399995089", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", 16)
    gg.clearResults()
    gg.toast("全图透视已开启")  
    TS1()
    else    
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(100)
    gg.editAll("0.81399995089", 16)   
    gg.clearResults()
    gg.toast("全图透视已关闭")  
    TS2()
end
end
function B3()
    if KG[11]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("1.12020366e-19;5.6051939e-45:5", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.searchNumber("5.6051939e-45", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.toast("房屋透视已开启")  
    FW1()
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("7.0064923e-45;1.12020366e-19;0::9", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.searchNumber("0", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(1)
    gg.editAll("5.6051939e-45", 16)
    gg.clearResults()
    gg.toast("房屋透视已关闭")  
    FW2()
end
end
function B4()
    if KG[8]==0 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1,004,243,884D;9.2194229e-41;-1D::", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("9.2194229e-41",16,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(1)
    gg.editAll("999",16)
    gg.toast("时间转换已切换")  
    ZH1()
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1,004,243,884D;999;-1D::", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("999",16,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(1)
    gg.editAll("9.2194229e-41",16)
    gg.toast("时间转换已切换")  
    ZH2()
end
end
function B5()
    if KG[3] ==0 then
    qmnb = {
    {["memory"] = 4},
    {["name"] = "断网穿墙已开启"},
    {["value"] = -1.0e32, ["type"] = 16},
    {["lv"] = 999, ["offset"] = 32, ["type"] = 16},
    {["lv"] = 1.0e32, ["offset"] = 52, ["type"] = 16},
    {["lv"] = 0.39999997616, ["offset"] = 64, ["type"] = 16},
    }
    qmxg = {
    {["value"] = 7.98745632172, ["offset"] = 52, ["type"] = 16},
    }
    xqmnb(qmnb) 
    gg.toast("开启成功|禁止框架网络权限即可")  
    CQ1()
    else
    qmnb = {
    {["memory"] = 4},
    {["name"] = "关闭"},
    {["value"] = -1.0e32, ["type"] = 16},
    {["lv"] = 999, ["offset"] = 32, ["type"] = 16},
    {["lv"] = 1.0e32, ["offset"] = 52, ["type"] = 16},
    {["lv"] = 0.39999997616, ["offset"] = 64, ["type"] = 16},
    }
    qmxg = {
    {["value"] = 1.0e32, ["offset"] = 52, ["type"] = 16},
    }
    xqmnb(qmnb)
    gg.toast("断网穿墙已关闭")  
    CQ2()
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function C1()
    if KG[4]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    local dataType = 16
    local tb1 = {{-0.10998535156, 0}, {1, 4},}
    local tb2 = {{40.12345504761, 4, false},}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("上色已开启")  
    SS1()
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    local dataType = 16
    local tb1 = {{-0.10998535156, 0x0}, {40.12345504761, 0x4},}
    local tb2 = {{1, 0x4, false},}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("上色已关闭")  
    SS2()
end
end
function C2()
    F = gg.alert("【打造全网最稳辅助—享受极致辅助乐趣】", "蓝色天线"..LTX,"原色天线"..TX)
    if F == 1 then
    LSTX()
    elseif F == 2 then  
    YSTX()
end
end


function YSTX()
    if KG[5]==0 then
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999999, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb)
    TX1()
    else
    qmnb = {{["memory"] = 4},
    {["name"] = "关闭天线"},
    {["value"] = -999999, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = 0.16947640478610992, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb) 
    TX2()
end
end

function LSTX()
    if KG[14]==0 then
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999999, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb)
    gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("颜色已开启")  
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{2.7859868e28, 0}, {0.0549999997, 0x-4},{0.04044999927, 0x-8},}
    local tb2 = {{2, 0x-4, false},}  
    SearchWrite(tb1, tb2, dataType) 
    LTX1()
    else
    qmnb = {{["memory"] = 4},
    {["name"] = "关闭天线"},
    {["value"] = -999999, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = 0.16947640478610992, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb)
    gg.toast("颜色已关闭")  
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16   
    local tb1 = {{2.7859868e28, 0}, {2, 0x-4},{0.04044999927, 0x-8},}  
    local tb2 = {{0.0549999997, 0x-4, false},}    
    SearchWrite(tb1, tb2, dataType)    
    LTX2()
    
end
end


function C3()
    if KG[6]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{2.7859868e28, 0}, {0.0549999997, 0x-4},{0.04044999927, 0x-8},}
    local tb2 = {{2, 0x-4, false},}  
    SearchWrite(tb1, tb2, dataType) 
    gg.toast("夜视已开启")  
    YS1()
    else  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16   
    local tb1 = {{2.7859868e28, 0}, {2, 0x-4},{0.04044999927, 0x-8},}  
    local tb2 = {{0.0549999997, 0x-4, false},}    
    SearchWrite(tb1, tb2, dataType)    
    gg.toast("夜视已关闭")  
    YS2()    
end     
end
function C4()
    if KG[7]==0 then       
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    local dataType = 16   
    local tb1 = {{3.8685732e25, 0x4A9C}, {1, 0x4AA0},{1.00999999046, 0x4AB0},}   
    local tb2 = {{0.10000000149, 0x4AA0, false},}   
    SearchWrite(tb1, tb2, dataType)  
    gg.toast("连跳已开启")    
    LT1()   
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    local dataType = 16  
    local tb1 = {{3.8685732e25, 0x4A9C}, {0.10000000149, 0x4AA0},{1.00999999046, 0x4AB0},}  
    local tb2 = {{1, 0x4AA0, false},}    
    SearchWrite(tb1, tb2, dataType)                    
    gg.toast("连跳已关闭")     
    LT2()    
end
end
function C5()
    if KG[9]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)   
    local dataType = 16
    local tb1 = {{1.0e32, 0},{49, 20},{999, 32},}
    local tb2 = {{0.37, 0x-8, true},}
    SearchWrite(tb1, tb2, dataType) 
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{3.8685732e25, 0}, {1.00999999046, 20},}
    local tb2 = {{0.06, 0x4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.alert("提示一∶冻结间隔改为[0]\n提示二∶水边开启")  
    XZ1()
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{3.8685732e25, 0}, {1.00999999046,20},}
    local tb2 = {{1, 4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.toast("水上行走已关闭")  
    XZ2()
end
end
function C6()
    if KG[10]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W  ;1W;1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2.222222',gg.TYPE_FLOAT)
    gg.toast("遁地开启成功")
    DD1()
    else
    gg.clearList()
    gg.clearResults()
    gg.toast("遁地已关闭")
    DD2()
end
end
function C7()
    if KG[12]==0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('0.14177720249', 16, false, gg.SIGN_EQUAL, 0, -1)  
    gg.getResults(3)
    gg.editAll('0.1492135418', 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('6.30000019073', 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('3.3157794', 16)
    gg.toast("加速挖矿已开启")  
    WK1()
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('0.1492135418', 16, false, gg.SIGN_EQUAL, 0, -1)  
    gg.getResults(3)
    gg.editAll('0.14177720249', 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('3.3157794', 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('6.30000019073', 16)
    gg.toast("加速挖矿已关闭")  
    WK2()
end
end
function C8()
    if KG[13]==0 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
    end    
    gg.toast("十字镜八倍已开启")
	gg.clearResults()
    BJ1()
    else
    gg.clearResults() 
    gg.clearList()
    gg.toast("十字镜八倍已关闭")
    BJ2()
end 
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function WDFW()
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536205, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536207, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536203, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536198, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536201, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536199, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536210, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536200, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536211, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536206, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    WDFW()
end end end end end end end end end end end end end end end end end end end end end
function ZDFW()    
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536205, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536207, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536203, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536198, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536201, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536199, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536210, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536200, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536211, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536206, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    ZDFW()
end end end end end end end end end end end end end end end end end end end end end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function exit()
    print("You have successfully withdrawn ✅")
    os.exit()
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
cs = "测试"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    index()
  end
end
