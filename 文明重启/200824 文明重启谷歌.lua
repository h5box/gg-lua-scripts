
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

    
    MF = gg.choice({  
    " 谷歌打架专区 ",
    " 谷歌透视专区 ",
    " 谷歌强化专区 ",
    " 谷歌循环天线 ",
    " 谷歌建筑专区 ",
    " 谷歌枪械专区 ",
    " 谷歌魔法专区 ",
    " 退出科技 ",	             
},nil,"谷歌作者02官方交流群 ,")  
    if MF == 1 then  A () end
    if MF == 2 then  B () end
    if MF == 3 then  C () end 
    if MF == 4 then  D () end
    if MF == 5 then  E () end  
    if MF == 6 then  F () end
    if MF == 7 then  G () end
    if MF == 8 then exit () end
    XGCK = -1 end           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function A()
    MF1 = gg.choice({ 
    " 透视优化 ",   
    " 内存自瞄 ", 
    " 全屏自瞄 ",  
    " 范围系列 ",  
    " 全枪无后 ",  
    " 狙击连发无后座",
    " 路飞系列 ",  
    " 返回列表 ", 
},nil,"  官方交流群 ")
    if MF1 == 1  then  A1 () end
    if MF1 == 2  then  A2 () end
    if MF1 == 3  then  A3 () end
    if MF1 == 4  then  A4 () end
    if MF1 == 5  then  A5 () end
    if MF1 == 6  then  A6 () end
    if MF1 == 7  then  A7 () end
    if MF1 == 8  then index () end
    XGCK = -1 end  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function B()
    MF2 = gg.choice({    
    " 透视木墙 [开]",
    " 透视石墙 [开]",
    " 透视铁墙 [开]",
    " 透视全图 "..TS,
    " 房屋全透 "..FW,
    " 昼夜转换 "..ZH,
    " 实体穿墙 "..CQ,
    " 返回列表 ",
},nil,"  官方交流群 谷歌牛逼")
    if MF2 == 1  then  B1 () end
    if MF2 == 2  then  B6 () end
    if MF2 == 3  then  B7 () end
    if MF2 == 4  then  B2 () end
    if MF2 == 5  then  B3 () end
    if MF2 == 6  then  B4 () end
    if MF2 == 7  then  B5 () end
    if MF2 == 8  then index () end
    XGCK = -1 end   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function C()
    MF3 = gg.choice({
    " 人物上色 "..SS,  
    " 人物天线 [多选]",
    " 人物夜视 "..YS,
    " 人物连跳 "..LT,
    " 水上行走 "..XZ,
    " 半身遁地 "..DD,
    " 挖矿加速 "..WK,
    " 十字镜8倍 "..BJ,
    " 机瞄8倍镜 [开] ",
    " 返回列表 ", 
},nil,"  作者02官方交流群 ")
    if MF3 == 1  then  C1 () end
    if MF3 == 2  then  C2 () end
    if MF3 == 3  then  C3 () end
    if MF3 == 4  then  C4 () end
    if MF3 == 5  then  C5 () end
    if MF3 == 6  then  C6 () end
    if MF3 == 7  then  C7 () end
    if MF3 == 8  then  C8 () end 
    if MF3 == 9  then  C9 () end 
    if MF3 == 10  then index () end 
    XGCK = -1 end    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function D()
  gg.alert("循环天线开启")
  while true do
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-999", gg.REGION_C_BSS)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-999", gg.REGION_C_BSS)
  if gg.isVisible(true)then
      break
    end
  end
end
-----------------------------------------------------------------------------------------------------------------------
function E()
    MF5 = gg.choice({
    " 地下家深 ", 
    " 地下家潜 ",
    " 实穿天花 ",
    " 特高空家 ",
    " 返回列表 ", 
},nil," 谷歌科技主打稳定")
    if MF5 == 1  then  E1 () end
    if MF5 == 2  then  E2 () end
    if MF5 == 3  then  E3 () end   
    if MF5 == 4  then index () end 
    XGCK = -1 end    
------------------------------------------------------------------------------------------------------------------------
function F()
    MF6 = gg.choice({    
    " 手枪全开 ",
    " 冲锋全开 ",
    " 乌兹全开 ",
    " 改装全开 ",
    " 半自动开 ",
    " AKM全开 ",
    " QBZ全开 ",
    " M16全开 ",
    " M24秒换  ",
    " 全枪瞬击  ",
    " 返回列表",
},nil," 谷歌感谢你们支持")
    if MF6 == 1  then  F1 () end
    if MF6 == 2  then  F2 () end
    if MF6 == 3  then  F3 () end
    if MF6 == 4  then  F4 () end
    if MF6 == 5  then  F5 () end
    if MF6 == 6  then  F6 () end
    if MF6 == 7  then  F7 () end
    if MF6 == 8  then  F8 () end
    if MF6 == 9  then  F9 () end
    if MF6 == 10  then  F10 () end
    if MF6 == 10  then index () end
    XGCK = -1 end   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function G()
    MF7 = gg.choice({
    " 水下行走[开] ", 
    " 水下行走[关] ",
    " 无视炮台[开] ",
    " 全服定怪[开] ",
    " 隐身一步[开] ",
    " 隐身二步[开] ", 
    " 隔墙吸弹[开] ",
    " 趴下加速[开] ",
    " 趴下加速[关] ",
    " 麒麟上色[开] ",
    " 麒麟人透[开] ", 
    " 子弹穿墙[开] ",
    " 浮空建家[开] ",
    " 全屏除草[开] ",
    " 动物变大[开] ",
    " 返回列表 ", 
},nil," 谷歌科技主打稳定")
    if MF7 == 1  then  G1 () end
    if MF7 == 2  then  G2 () end
    if MF7 == 3  then  G3 () end   
    if MF7 == 4  then  G4 () end
    if MF7 == 5  then  G5 () end
    if MF7 == 6  then  G6 () end
    if MF7 == 7  then  G7 () end   
    if MF7 == 8  then  G8 () end
    if MF7 == 9  then  G9 () end
    if MF7 == 10  then  G10 () end
    if MF7 == 11  then  G11 () end   
    if MF7 == 12  then  G12 () end
    if MF7 == 13  then  G13 () end
    if MF7 == 14  then  G14 () end
    if MF7 == 15  then  G15 () end
    if MF7 == 16  then index () end 
    XGCK = -1 end    
------------------------------------------------------------------------------------------------------------------------
function G1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("水下开启成功:会憋死")
end
function G2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("水下关闭成功")
end
function G3()
  gg.clearResults(99999)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16D;84,000D;65,537D::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("15", gg.TYPE_DWORD)
  gg.toast("无视炮台开启成功")
end
function G4()
  gg.clearResults(99999)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16D;84,000D;65,537D::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("15", gg.TYPE_DWORD)
  gg.toast("全服定怪开启成功")
end
function G5()
  gg.clearResults(99999)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16D;84,000D;65,537D::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("15", gg.TYPE_DWORD)
  gg.toast("实体隐身第一步开启成功")
end
function G6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 9.4
      }
    })
  end
  gg.toast("实体隐身第二步开启成功")
  gg.clearResults()
  gg.clearList()
end
function G7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 8
      }
    })
  end
  gg.toast("注入隔墙吸子弹50%")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("注入成功")
end
function G8()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_FLOAT)
  gg.toast("趴下加速开启成功")
end
function G9()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("趴下加速关闭成功")
end
function G10()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("麒麟上色")
  gg.clearList()
end
function G11()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.toast("天线开启")
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("人物透视")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("2.0;-1.0;1.0;0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("人物白色") 
	gg.clearResults()
	gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.toast("麒麟上色")
	gg.clearResults()
	gg.clearList()
end
function G12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('16,261W;25W;161W;1W;1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.toast('子弹穿墙')
end
function G13()
  gg.clearResults()
  gg.searchNumber('1,073,741,824D;1,120,403,456D;3.6734198e-40', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('3.6734198e-40', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('浮空建筑开启成功')
  gg.toast('没效果多开')
  gg.clearResults()
end
function G14()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('3.7314056e-40', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll('0',16)
  gg.toast('除草已开启')
end
function G15()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-​2.0;2.0;2.0;-2.9687729e21;0.00195311802", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8", gg.TYPE_FLOAT)
  gg.toast("动物变大开启成功")
end



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
end
function A3()  
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
function A4()
    F = gg.alert("【范围刀禁止用枪｜用枪重新登录即可】", "小范围[稳定]", "范围刀[禁枪]","大范围[10分封]☢")
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
function A5()
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
    gg.toast("无后 瞬击 秒换弹已开启")  
    gg.clearList()
    gg.clearResults()
end
function A6()
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
end
function A7()
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
end
function B6()
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
end
function B7() 
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
function C9()
     gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("基瞄8倍开启")
  gg.clearResults()
end

function E1()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("2.5", gg.TYPE_FLOAT)
      gg.toast("请冻结调零，并且大厅开启")
    end

function E2()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.97", gg.TYPE_FLOAT)
  gg.toast("    提墨开启成功，请在游戏大厅开启️  ")
end

function E3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16,261W;25W;161W;1W;1.03999996185",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.03999996185", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.5}})
	 end
	 gg.toast("️不成功多试几次️")
	 gg.clearResults()
end

function F1()
  gg.setRanges(32)
  SearchWrite({{600, 116},{-1, 120},{83, 104}}, {{480,116,false}},
  gg.REGION_C_BSS, ("手枪射速加快"))
  gg.clearList()
  SearchWrite({{18, 212},{15, 224},{3, 240}}, {{0.01,224,false}},
  gg.REGION_C_BSS, ("手枪无后"))
  gg.clearList()
  SearchWrite({{6, 40},{300, 52},{-0.5, 64}}, {{1000000000,52,false}},
  gg.REGION_C_BSS, ("手枪瞬击"))
  gg.clearList()
  gg.toast("手枪全开成功")
end
function F2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4,525,216,907,494,477,005Q;4,575,657,222,462,033,101Q;4,539,628,425,454,813,184Q;4,539,628,425,446,424,576Q;4,546,834,186,568,204,288Q;4,768,186,106,537,154,970Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("864D;2::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  SMG开启成功  ")
end
function F3()
  gg.setRanges(32)
  SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
  gg.REGION_C_BSS, ("乌兹无后"))
  gg.clearList()

  SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
  gg.REGION_C_BSS, ("乌兹瞬击"))
  gg.clearList()

  SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
  gg.REGION_C_BSS, ("乌兹射速加快"))
  gg.clearList()

  gg.setRanges(4)
  SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
  gg.REGION_C_BSS, ("乌兹射速加快"))
  gg.clearList()
  gg.toast("UZI开启成功")
end
function F4()
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{40, 3908}, {7, 3920},{15, 3932},}
  local tb2 = {{0.00999999978,3920,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.20000000298, 0}, {1, -8},{360, -12},}
  local tb2 = {{1.0E19,-12, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.76666688919, 88}, {1.2107219E-42, 80},}
  local tb2 = {{0.00999999978,88,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("  改装开启成功 ")
end
function F5()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
  local tb2 = {{0.00999999978, 0x40, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.60000002384, 32},{480, 20},{80, 4},}
  local tb2 = {{1000000,20,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("  半自动开启成功  ")
end
function F6()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{30, 0xD4}, {10, 0xE0},{13, 0xEC},}
  local tb2 = {{0.00999999978, 0xE0, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.66666674614, 24}, {1.2107219E-42, 16},}
  local tb2 = {{0.00999999978, 24,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("  AKM开启成功  ")
end
function F7()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.10000000149, 0x24}, {6, 0x50},{4, 0x60},}
  local tb2 = {{0.00999999978, 0x50, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.375, 0},{540, -20},{-0.5, -8},}
  local tb2 = {{1000000000,-20,false}}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
  local tb2 = {{0.00999999978, 0x98, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
  local tb2 = {{0.00999999978, 0xD8, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("  QBZ开启成功 ")
end
function F8()
  gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("  M4无后  "))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("  M4瞬击  "))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("  M4秒换弹%50  "))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, ("  M4秒换弹%100  "))
  gg.clearList()
  gg.toast("  M4开启成功  ")
end
function F9()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.2107219e-42;3.1333334446;5.49309e-43::57', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('3.1333334446', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功 ")
end
function F10()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("SMG冲锋枪瞬击开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("667F;300F;100F;75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("改装瞬击开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("qbz瞬击开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("ak瞬击开启成功")
  gg.clearResults()
  gg.toast("全枪瞬击开启成功")
  gg.clearResults()
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
    print("02")
    os.exit()
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
cs = "  谷歌期待你下次使用"
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