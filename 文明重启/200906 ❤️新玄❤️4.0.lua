function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do  local tmp = {}local offset = Search[k][2] - base  local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功")else  return false end else  return false end end  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    function split(szFullString, szSeparator) local nFindStartMain = 1 local nSplitMain = 1 local nSplitArray = {} while true do local nFindLastMain = string.find(szFullString, szSeparator, nFindStartMain) if not nFindLastMain then nSplitArray[nSplitMain] = string.sub(szFullString, nFindStartMain, string.len(szFullString)) break end nSplitArray[nSplitMain] = string.sub(szFullString, nFindStartMain, nFindLastMain - 1) nFindStartMain = nFindLastMain + string.len(szSeparator) nSplitMain = nSplitMain + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    KG={1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,}  
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
    function JM1 () KG[15]=KG[15]+KG[1] end
    function JM2 () KG[15]=KG[15]-KG[1] end  
    function ZJY1 () KG[16]=KG[16]+KG[1] end
    function ZJY2 () KG[16]=KG[16]-KG[1] end  
    function DXY1 () KG[17]=KG[17]+KG[1] end
    function DXY2 () KG[17]=KG[17]-KG[1] end  
    function XXX1 () KG[18]=KG[18]+KG[1] end
    function XXX2 () KG[18]=KG[18]-KG[1] end  
    function DJM1 () KG[19]=KG[19]+KG[1] end
    function DJM2 () KG[19]=KG[19]-KG[1] end  
    function RYY1 () KG[20]=KG[20]+KG[1] end
    function RYY2 () KG[20]=KG[20]-KG[1] end  
    function SSS1 () KG[21]=KG[21]+KG[1] end
    function SSS2 () KG[21]=KG[21]-KG[1] end 
    function STT1 () KG[22]=KG[22]+KG[1] end
    function STT2 () KG[22]=KG[22]-KG[1] end  
    function Main ()         
    if KG[2]==0 then TS="➟開" else TS="➟關" end
    if KG[3]==0 then CQ="➟開" else CQ="➟關" end
    if KG[4]==0 then SS="➟開" else SS="➟關" end
    if KG[5]==0 then TX="➟開" else TX="➟關" end
    if KG[6]==0 then YS="➟開" else YS="➟關" end   
    if KG[7]==0 then LT="➟開" else LT="➟關" end
    if KG[8]==0 then ZH="➟開" else ZH="➟關" end
    if KG[9]==0 then XZ="➟開" else XZ="➟關" end
    if KG[10]==0 then DD="➟開" else DD="➟關" end
    if KG[11]==0 then FW="➟開" else FW="➟關" end
    if KG[12]==0 then WK="➟開" else WK="➟關" end
    if KG[13]==0 then BJ="➟開" else BJ="➟關" end
    if KG[14]==0 then LTX="➟開" else LTX="➟關" end
    if KG[15]==0 then JM="➟開" else JM="➟關" end
    if KG[16]==0 then ZJY="➟開" else ZJY="➟關" end
    if KG[17]==0 then DXY="➟開" else DXY="➟關" end
    if KG[18]==0 then XXX="➟開" else XXX="➟關" end
    if KG[19]==0 then DJM="➟開" else DJM="➟關" end
    if KG[20]==0 then RYY="➟開" else RYY="➟關" end
    if KG[21]==0 then SSS="➟開" else SSS="➟關" end
    if KG[22]==0 then STT="➟開" else STT="➟關" end

    MF = gg.choice({  
    
    "囍  准备战斗 ❤️  ",
    "囍  透视视角 ❤️  ",
    "囍  人物强化 ❤️  ",
    "囍  退出科技 ❤️  ",	             
},nil,"群579336216"..os.date("时间为:%m月%d日 %H:%M"))  
    if MF == 1 then  A () end
    if MF == 2 then  B () end
    if MF == 3 then  C () end    
    if MF == 4 then exit () end
    XGCK = -1 end           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function A()
    MF1 = gg.choice({ 
    "️  大厅防封⟬新玄⟭ ",   
    "️  人物自瞄⟬新玄⟭ ",   
    "️  人物范围⟬新玄⟭ ",  
    "️  枪支全开⟬新玄⟭ ",  
    "️  路飞系列⟬新玄⟭ ",  
    "  水下行走⟬新玄⟭ ", 
    "️  返回列表⟬新玄⟭ ", 
},nil,"⟬打造全网最稳辅助 享受高端辅助乐趣⟭\n\n"..os.date("时间为:%m月%d日 %H:%M"))
    if MF1 == 1  then  A1 () end
    if MF1 == 2  then  A2 () end
    if MF1 == 3  then  A3 () end
    if MF1 == 4  then  A4 () end
    if MF1 == 5  then  A5 () end
    if MF1 == 6  then  A6 () end
    if MF1 == 7  then Main () end
    XGCK = -1 end  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function B()
    MF2 = gg.choice({    
    "  人物上色⟬❤️玄⟭ [多选]",
    "  透视全图⟬❤️玄⟭ "..TS,
    "  房屋全透⟬❤️玄⟭ "..FW,
    "  昼夜转换⟬❤️玄⟭ "..ZH,
    "  趴下加速⟬❤️玄⟭ "..CQ,
    "  人物视野⟬❤️玄⟭[多选]",
    "  返回列表⟬❤️玄⟭ ",
},nil,"⟬打造全网最稳辅助 享受高端辅助乐趣⟭\n\n"..os.date("时间为:%m月%d日 %H:%M"))
    if MF2 == 1  then  B1 () end
    if MF2 == 2  then  B2 () end
    if MF2 == 3  then  B3 () end
    if MF2 == 4  then  B4 () end
    if MF2 == 5  then  B5 () end
    if MF2 == 6  then  B6 () end
    if MF2 == 7  then Main () end
    XGCK = -1 end   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function C()
    MF3 = gg.choice({
    "️   人物飞天⟬❤️玄⟭ ",  
    "   人物天线⟬❤️玄⟭ [多选]",
    "  人物夜视⟬⟬❤️玄⟭ "..YS,
    "  灵魂出窍⟬⟬❤️玄⟭ "..LT,
    "  地下建家⟬⟬❤️玄⟭ "..XZ,
    "  半身遁地⟬⟬❤️玄⟭ "..DD,
    "  全身遁地⟬⟬❤️玄⟭ ",
    "  炮筒瞬爆⟬⟬❤️玄⟭  "..WK,
    "  枪械倍镜⟬⟬❤️玄⟭ [多选]",
    "  实体穿墙⟬⟬❤️玄⟭ ",
    "  返回列表⟬⟬❤️玄⟭ ", 
},nil,"⟬打造全网最稳辅助 享受高端辅助乐趣⟭\n\n"..os.date("时间为:%m月%d日 %H:%M"))
    if MF3 == 1  then  C1 () end
    if MF3 == 2  then  C2 () end
    if MF3 == 3  then  C3 () end
    if MF3 == 4  then  C4 () end
    if MF3 == 5  then  C5 () end
    if MF3 == 6  then  C6 () end
    if MF3 == 7  then  C7 () end
    if MF3 == 8  then  C8 () end
    if MF3 == 9  then  C9 () end    
    if MF3 == 10 then  C10 () end    
    if MF3 == 11 then Main () end 
    XGCK = -1 end    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function A1()  
  gg.clearResults()
  shiran = gg.prompt({"请输入防封指数|刚解封误开|默认3"}
  ,{[1]=3},{[1]="number"})[1]
  gg.setRanges(100)
  gg.toast("防封注入%10")
  gg.clearResults()
  gg.searchNumber("0", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast("防封注入%11")
  gg.clearResults()
  gg.searchNumber("0", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast("防封注入%20")
  gg.clearResults()
  gg.searchNumber("0", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast("防封注入%23")
  gg.clearResults(100)
  gg.toast("防封注入%24")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber("0.9123", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("防封注入25%")
  gg.searchNumber("0.9123", gg.TYPE_DPUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("防封注入50%")
  gg.getResults(100)
  gg.editAll("0.722", gg.TYPE_DOUBLE)
  gg.toast("防封注入65%")
  gg.clearResults()
  gg.searchNumber("46", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("防封注入70%")
  gg.searchNumber("46", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("防封注入85%")
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_DWORD)
  gg.toast("防封注入100%")
  gg.clearResults()
  gg.toast("防封注入成功|开大范围可维持久|开启后断网重开即可|闪退说明防封成功|重新开脚本")
  exit()
  end
function A2()   
   F = gg.alert("【单人自瞄适合群架用【单锁死】｜群人自瞄适合单挑用【群锁死】｜远洋自瞄基本都适合【微锁】】", "⟬群人自瞄⟭","⟬单人自瞄⟭","⟬远洋自瞄⟭")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892}}, {{0,284,true}}, gg.TYPE_FLOAT, "锁死注入")
    gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.08817642995", gg.TYPE_FLOAT)
    gg.clearList()
    gg.clearResults()
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
    gg.TYPE_FLOAT, "200m")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local Name='自瞄'
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tb2 = {{0, 0x11C, true},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
    local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
    SearchWrite(tb1, tb2, dataType)    
    gg.clearList()
    local dataType = 16
    local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
    local tb2 = {{0, 4048, true},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()  
    gg.clearResults()
    SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}}, gg.TYPE_FLOAT, "自瞄")
    gg.clearList()
    gg.clearResults()
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
    gg.TYPE_FLOAT, "自瞄开启中")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local Name="注入死锁"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
    local tp2 = {{"0", 0xBE453028, true},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
    local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
    SearchWrite(tb1, tb2, dataType)
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
    gg.toast("群架自瞄已开启")
    elseif F == 2 then  
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
    gg.clearList()
    elseif F == 3 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
    local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.setRanges(16384)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.00010002004", gg.TYPE_FLOAT)
    gg.clearResults()
    local Name="100m"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
    local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.setRanges(32)
    gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("10;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("0.01", gg.TYPE_FLOAT)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.00010002004", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
    gg.REGION_C_BSS, ("自瞄算法"))
    gg.clearList()
    gg.setRanges(16)
    gg.searchNumber("0.0000000078;", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.clearList()
    gg.setRanges(gg.REGION_CODE_APP)
    local Name="200m"
    local dataType = gg.TYPE_FLOAT
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{5.2452575e-38, 0}, {-1.3095104e25, 0x8},{0.00999999978, 0x4},}
    local tb2 = {{1.5, 0x4, false},} 
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
    gg.setRanges(16384)
    gg.searchNumber('9953,2710,795', 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('0.08817642000995',16)
    gg.searchNumber('4.8828148E-4', 16, false, gg.SIGN_EQUAL, 0, -1)
    Name = "230m" 
    gg.setRanges(8)
    local dataType = 16
    local search = {{9.819133540166275E-26, 0},{-5.696554925989424E20, -12},}
    local modify = {{-5.6965553e20, -12},}
    SearchWrite(search,modify,dataType,Name)
    gg.setRanges(16384)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.00010002004", gg.TYPE_FLOAT)
    gg.clearResults()
    local Name="240m"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
    local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.setRanges(32)
    gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892}}, {{0,284,true}}, gg.TYPE_FLOAT, "锁死注入")
    gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.08817642995", gg.TYPE_FLOAT)
    gg.toast("300m")
    gg.clearResults()
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
    gg.TYPE_FLOAT, "200m")
    gg.setRanges(16384)
    local Name='301m'
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tb2 = {{0, 0x11C, true},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
    local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
    SearchWrite(tb1, tb2, dataType)    
    gg.clearList()
    local dataType = 16
    local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
    local tb2 = {{0, 4048, true},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()  
    gg.clearResults()
    SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}}, gg.TYPE_FLOAT, "自瞄")
    gg.clearList()
    gg.clearResults()
    SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
    gg.TYPE_FLOAT, "自瞄开启中")
    gg.clearResults()
    gg.setRanges(16384)
    local Name="注入死锁"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
    local tp2 = {{"0", 0xBE453028, true},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    local Name="注入自瞄"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   gg.setRanges(16384)
   local Name="注入死锁"
   local dataType = gg.TYPE_FLOAT
   local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
   local tp2 = {{"0", 0xBE453028, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   gg.setRanges(16384)
   local Name="注入全屏死锁"
   local dataType = gg.TYPE_FLOAT
   local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
   local tp2 = {{"10", 0xBE453190, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
   gg.TYPE_FLOAT, "自瞄开启中")
   gg.clearList()
   SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
   gg.TYPE_FLOAT, "自瞄")
   gg.clearList()
   gg.clearResults()
    gg.setRanges(16384)
    local dataType = 16
    local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
    local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
    SearchWrite(tb1, tb2, dataType)    
    gg.clearList()
    local dataType = 16
    local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
    local tb2 = {{0, 4048, true},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
   gg.toast("全屏开启成功")
end
end
function A3()
   F = gg.alert("【范围刀禁止用枪｜用枪重新登录即可】", "⟬小范围[稳定]⟭", "⟬范围刀[禁枪]⟭","⟬大范围[十分]⟭")
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
    gg.editAll("6.5", gg.TYPE_FLOAT)
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
   F = gg.alert("【新玄持续为您护航】", "⟬新版全开⟭","⟬旧版全开⟭")
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
   F = gg.alert("【新玄持续为您护航】", "⟬开镜路飞⟭","⟬开镜遁地⟭","⟬秒开倍镜⟭")
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
    elseif F == 3 then  
   gg.clearList()
   gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="温馨提示:秒开镜"
  local tb1={{"0.10000000149",0xCFA2A858},{"0.20000000298",0xCFA2A854},{"3.99000000954",0xCFA2A830}}
  local tb2={{"9",0xCFA2A890,true},}
  local dataType=gg.TYPE_FLOAT
  SearchWrite(tb1,tb2,dataType,Name)
  gg.clearList()
end
end
function A6()
F = gg.alert("【新玄持续为您护航】", "⟬水下开车⟭"..DXY,"⟬水下行走⟭"..XXX,"⟬橡皮路飞⟭"..SSS)
 if F == 1 then
XXI()
elseif F == 2 then  
XXI2()
elseif F == 3 then  
AAA()
end
end

function AAA()
if KG[21]==0 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-0.31400001049;0.02710000053;-0.09340000153;-0.02099999972", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.31400001049",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-3.2135418",gg.TYPE_FLOAT)
gg.toast("路飞已开启，请开镜")
gg.clearResults()
SSS1()
else
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-3.2135418", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-3.2135418",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-0.31400001049",gg.TYPE_FLOAT)
gg.toast("路飞已关闭，请熄镜")
gg.clearResults()
SSS2()
end
end

function XXI()
if KG[17]==0 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.toast("水下开车开启成功:会憋死")
    DXY1()
  else
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("150", gg.TYPE_FLOAT)
    gg.toast("水下开车关闭成功")
    DXY2()
  end
  end
function XXI2()
if KG[18]==0 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("水下行走开启:会死")
    XXX1()
  else
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("10000", gg.TYPE_FLOAT)
    gg.toast("关闭水下行走")
    XXX2()
  end
  end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function B1()
  F = gg.alert("⟬新玄持续为您护航⟭", "⟬联发荧黑⟭","⟬骁龙荧蓝⟭","⟬麒麟荧白⟭")
    if F == 1 then
  gg.clearList()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
  gg.REGION_C_BSS, ("透视开启成功"))
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('0.001953125;512;1;0.5;0.27000001073;0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('9999', gg.TYPE_FLOAT)
  gg.toast('联发上色')
  gg.clearList()
  elseif F == 2 then  
  gg.clearList()
  local Name="视野优化"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-150, 0x2284}, {-30, 0x2280},{0.00999999978, 0x2288},}
  local tb2 = {{0, 0x2288, false},} 
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  gg.searchNumber("3.4897587e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1,669,499,405", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
  gg.REGION_C_BSS, ("透视开启成功"))
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('0.001953125;512;1;0.5;0.27000001073;0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('-9999', gg.TYPE_FLOAT)
  gg.toast('等待上色|自己没有上色|别人上色')
  gg.clearList()
  elseif F == 3 then
  gg.clearList()
  local Name="视野优化"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-150, 0x2284}, {-30, 0x2280},{0.00999999978, 0x2288},}
  local tb2 = {{0, 0x2288, false},} 
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  gg.searchNumber("3.4897587e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1,669,499,405", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
	gg.clearResults()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
  gg.REGION_C_BSS, ("透视开启成功"))
  gg.clearList()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('0.001953125;512;1;0.5;0.27000001073;0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.60000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('-9999', gg.TYPE_FLOAT)
  gg.toast('等待上色|自己没有上色|别人上色')
  gg.clearList()
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
      gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;-2.0:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("-11",gg.TYPE_FLOAT)
  gg.toast(" 左拐右拐 ️趴下加速开启成功️  ") 
    CQ1()
    else
    gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;-11:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-11",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("-2",gg.TYPE_FLOAT)
  gg.toast(" 左拐右拐 趴下加速关闭️  ")
    CQ2()
end
end

function B6()
F = gg.alert("【巨人陪和自瞄|第一人称|效果更加】", "⟬人物三称⟭","⟬巨人浩克|打架开启⟭"..RYY,"⟬人物一称⟭")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("4", gg.TYPE_FLOAT)
    gg.toast("第三人称")
    elseif F == 2 then
	 RY()
    elseif F == 3 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-2", gg.TYPE_FLOAT)
    gg.toast("第一人称")
    end
    end
    function RY()
   if KG[20]==0 then       
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-2.9687729e21;-2.9687729e21;1.0;2.0;-2.0;1.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('5',gg.TYPE_FLOAT)
    gg.toast("功能和天线相似|独家巨人浩克|开启自瞄效果更加")
    gg.clearList()
    RYY1()   
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-2.9687729e21;-2.9687729e21;1.0;2.0;-2.0;1.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2',gg.TYPE_FLOAT)
    gg.toast("关闭成功")
    gg.clearList()
    RYY2()    
end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function C1()
    gg.alert("人物飞天说明:\n必须找到房子开启降落在天花板上面，不要飞的太高会死，降落时要降落在地基上否则会死！禁止蹲下负责会死【注意不要降落在地上只能降落在人物建筑上】请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|")
    gg.clearList()
    gg.clearResults()
   	gg.setRanges(gg.REGION_CODE_APP)
   	gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
   	gg.toast('注入飞天') 
	gg.clearList()
	   
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg=gg.getResults(100)
    sl=gg.getResultCount()
    if sl>100 then sl=100 end
    for i = 1, sl do
      dzy=jg[i].address
      gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.37698}})
      end
   gg.toast("请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|")
end


function C2()
   F = gg.alert("【新玄持续为您护航】", "⟬蓝色天线⟭"..LTX,"⟬原色天线⟭"..TX)
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
gg.alert("实体穿墙已和谐|现在灵魂出窍只能看房子|有实体穿墙我们会第一时间更新谢谢大家")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("17D;65,537D;65,636D:25", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("16",gg.TYPE_DWORD)
gg.toast("小威原创新灵魂出窍")
qmnb = {{["memory"] = 4},{["name"] = "第二步"},{["value"] = -1.0e32, ["type"] = 16},{["lv"] = 999, ["offset"] = 32, ["type"] = 16},{["lv"] = 1.0e32, ["offset"] = 52, ["type"] = 16},{["lv"] = 0.39999997616, ["offset"] = 64, ["type"] = 16},}
qmxg = {{["value"] = 7.98745632172, ["offset"] = 52, ["type"] = 16},}
xqmnb(qmnb)
gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
          for _FORV_3_ = 1, sl do
            dzy = jg[_FORV_3_].address
            gg.addListItems({
              [1] = {
                address = dzy,
                flags = gg.TYPE_FLOAT,
                freeze = true,
                value = 8
              }
            })
          end
        end
      end
    LT1()
    else
qmnb = {{["memory"] = 4},{["name"] = "已关闭"},{["value"] = -1.0e32, ["type"] = 16},{["lv"] = 999, ["offset"] = 32, ["type"] = 16},{["lv"] = 7.98745632172, ["offset"] = 52, ["type"] = 16},{["lv"] = 0.39999997616, ["offset"] = 64, ["type"] = 16},}
qmxg = {{["value"] = 1.0e32, ["offset"] = 52, ["type"] = 16},}
xqmnb(qmnb)	
 g={}
g[1]={}
g[1].address=lhdz
g[1].flags=gg.TYPE_DWORD
g[1].value=tonumber(sj)
g[1].freeze = true
gg.addListItems(g)

    LT2()

end
end
function C5()
F = gg.alert("【地下建家大厅开启|三段跳地下建家配合】", "地下建家"..DJM,"三段跳跳"..ZJY)
    if F == 1 then
    XDV()
    elseif F == 2 then  
    ZZZ()
end
end
function XDV()
if KG[19]==0 then       
    gg.clearList()
    gg.alert("大厅开启")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("1.83", gg.TYPE_FLOAT)
    gg.toast("地下建家|大厅开启|找高点建家")
    DJM1()   
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.1591722e24;-2.9687729e21;1.83;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.83", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("2", gg.TYPE_FLOAT)
    gg.toast("关闭成功")
    DJM2()    
end
end
function ZZZ()
  if KG[16]==0 then       
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    local dataType = 16   
    local tb1 = {{3.8685732e25, 0x4A9C}, {1, 0x4AA0},{1.00999999046, 0x4AB0},}   
    local tb2 = {{0.10000000149, 0x4AA0, false},}   
    SearchWrite(tb1, tb2, dataType)  
    gg.toast("连跳已开启")    
    ZJY1()   
    else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    local dataType = 16  
    local tb1 = {{3.8685732e25, 0x4A9C}, {0.10000000149, 0x4AA0},{1.00999999046, 0x4AB0},}  
    local tb2 = {{1, 0x4AA0, false},}    
    SearchWrite(tb1, tb2, dataType)                    
    gg.toast("连跳已关闭")     
    ZJY2()    
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
F = gg.alert("【第一步大厅开|第二步游戏开|不然会死|不能进很深的地下】", "⟬第一步⟭","⟬第二步⟭")
 if F == 1 then
 gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(800)
  gg.editAll("1.96",gg.TYPE_FLOAT)
  gg.toast("开启成功")
elseif F == 2 then  
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16,261W;25W;161W;1W;1.03999996185",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2.222222",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if 100 < sl then
    sl=100
  end
  for _FORV_3_=1,sl do
    dzy=jg[_FORV_3_].address
    gg.addListItemsX({
      [1]={
        address=dzy,
        flags=gg.TYPE_FLOAT,
        freeze=true,
        value=1.1
      }
    })
  end
  gg.toast("手动冻结改0人物遁地已开启")
end
end

function C8()
    if KG[12]==0 then
    gg.clearList()
    gg.clearList()
    Name="炮筒瞬爆"
    gg.setRanges(gg.REGION_ANONYMOUS) 
    local SS={{278,0}} 	
    local XG={{9999,-8,true}}	
    local Type = gg.TYPE_FLOAT
    SSearchWrite(SS,XG,Type)
    gg.toast("已开启")  
    gg.clearList()
    WK1()
    else
    gg.clearList()
     Name="关闭炮筒瞬爆"
    gg.setRanges(gg.REGION_ANONYMOUS) 
    local SS={{9999,0}} 	
    local XG={{278,8}}	
    local Type = gg.TYPE_FLOAT
    SSearchWrite(SS,XG,Type)
    gg.toast("已关闭")  
    gg.clearList()
    WK2()
end
end

function C9()
   F = gg.alert("【本功能部分手机支持使用】", "⟬十字镜八倍⟭"..BJ,"⟬机瞄十倍⟭"..JM,"⟬十字镜十倍⟭"..LTX)
    if F == 1 then
    XV()
    elseif F == 2 then  
    XV1()
    elseif F == 3 then  
    XV2()
end
end

function XV()
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
function XV1()
if KG[15]==0 then
    Name="机瞄十倍"
    gg.setRanges(gg.REGION_ANONYMOUS) 
    local SS={{400,0},{-360,-56},{360,-60},{80,-52},{-70,-48}} 	
    local XG={{-70,-72,true}}	
    local Type = gg.TYPE_FLOAT
    SSearchWrite(SS,XG,Type)
    JM1()
    else
    Name="机瞄十倍"
    gg.setRanges(gg.REGION_ANONYMOUS) 
    local SS={{400,0},{-360,-56},{360,-60},{80,-52},{-50,-48}} 	
    local XG={{8,-72,true}}	
    local Type = gg.TYPE_FLOAT
    SSearchWrite(SS,XG,Type)
    gg.clearResults() 
    gg.clearList()
    JM2()
end 
end
function XV2()
if KG[14]==0 then
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="十字十倍镜"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{8, 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  LTX1()
else
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="十字十倍关闭成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{"56", 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  LTX2()
end
end


function C10()
      F = gg.alert("【新玄持续为您护航】", "⟬穿墙方法⟭","⟬实体穿墙⟭","⟬穿墙防死⟭"..STT)
      if F == 1 then
      gg.alert("实体穿墙方法:戴放毒面罩到货轮上面开启功能，然后下船上岸，不能死，不能上车，上岸之后你会发现你还在跟随货轮移动的方向自动动，然后跑到要穿的家往里穿就行了")
      elseif F == 2 then  
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("实体穿墙开启")
      elseif F == 3 then
      gg.alert("开启后水面行走无效果冻结0|防死到岸边关闭可穿墙")
      SZZ()
      end
      end
      function SZZ()
      if KG[22]==0 then
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)   
      local dataType = 16
      local tb1 = {{1.0e32, 0},{49, 20},{999, 4},}
      local tb2 = {{0.37, 0x8, true},}
      SearchWrite(tb1, tb2, dataType) 
      gg.setRanges(16384)
      local dataType = 16
      local tb1 = {{3.8685732e25, 0}, {1.00999999046, 4},}
      local tb2 = {{0.06, 0x4, false},} 
      SearchWrite(tb1, tb2, dataType)
      STT1()
      else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(16384)
      local dataType = 16
      local tb1 = {{3.868532e25, 0}, {1.0099999046,20},}
      local tb2 = {{1, 4, false},} 
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.toast("已关闭")  
      STT2()
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
function SSearchWrite(Search, Write, Type)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber(Search[1][1],Type)
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
      local t = {}
      local base = Search[1][2]
      for i=1, #data do
        for k, w in ipairs(Write) do
          offset = w[2] - base t[#t+1] = {}
          t[#t].address = data[i] + offset
          t[#t].flags = Type
          t[#t].value = w[1]

          if Name == "拉回" then
            lhdz="0x"..string.format("%#x",t[#t].address)
            ttt = {}
            ttt[1] = {}
            ttt[1].address =lhdz
            ttt[1].flags = gg.TYPE_DWORD
            rr = gg.getValues(ttt)
            sj=rr[1].value
          end

          if (w[3] == true) then
            local item = {}
            item[#item+1] = t[#t]
            item[#item].freeze = true
            gg.addListItems(item)
          end
        end
      end
      gg.setValues(t)
      gg.toast("注入成功")
     else
     gg.toast("开启失败")
      return false
    end
   else
gg.toast("没有搜索到第一个特征码数据")
    return false
  end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function exit()
    print("❌OS.EXIT❌")
    os.exit()
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
cs = "BY：小威"
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