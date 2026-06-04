
function SHCF()
os.exit()
SHCF()
end
dog=0
CS=0 
function SH_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('偷你🐴？')
nc()
dog = 0
CS=CS-1
end
if CS < 0 then
SHCF()
end
end


function Voice(Rain)

end





local _KY,jldz,jmzj=function(mtz,mzj)for xh=1,10 do mtz=mtz:gsub(mzj[xh],xh-1)end return mtz end,{},{}for xh=1,10 do jmzj[xh]=debug.getinfo(_KY)[string.char(115,111,117,114,99,101)]:sub(xh,xh)end function KYXG(DZ,XGSJ,GNM,JLDZ)local t={}for i=1,#DZ do for k,w in ipairs(XGSJ) do offset=w[1]*4 t[#t+1]={}t[#t].address=DZ[i]+offset t[#t].flags=w[2]t[#t].value=w[3]if(w[4]==true)then local item={}item[#item+1]=t[#t]item[#item].freeze=true gg.addListItems(item)end end end gg.setValues(t)gg.toast("开启成功")end function KY_ZZ(NCLX,SSSJ,XGSJ,GNM)gg.setVisible(false)if jldz[NCLX[4]]==nil then gg.clearResults()gg.setRanges(NCLX[1])gg.searchNumber(NCLX[2],NCLX[3])local count=gg.getResultCount()local result=gg.getResults(count)gg.clearResults()local data={}if(count>0)then for i,v in ipairs(result) do v.isUseful=true end for k=1,#SSSJ do local tmp={}local offset=_KY(SSSJ[k][1],jmzj)*4 local num=_KY(SSSJ[k][2],jmzj)for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp) do if (v.value~=num)then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful)then data[#data+1]=v.address end end if data[1]==nil then gg.toast("开启成功")else if NCLX[4]~=false then jldz[NCLX[4]]=data KYXG(data,XGSJ,GNM,"已记录")else KYXG(data,XGSJ,GNM,"搜索到")end end else gg.toast("开启失败")end else KYXG(jldz[NCLX[4]],XGSJ,GNM,"调用到")end end




function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false) gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do  local tmp = {}local offset = Search[k][2] - base  local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功")else  return false end else  return false end end  

function SearchWriteohnb(Search, Write, Ohnb) gg.clearResults() gg.setVisible(false) SH_searchNumber(Search[1][1], Ohnb) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Ohnb t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("搜索0条数据.修改失败", false) return false end else gg.toast("搜索0条数据.修改失败") return false end end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end










--1. function：函数，功能
--2. gg.alert  弹出提示窗口
--3. gg.toast 屏幕下方弹出提示条( 会自动消失 )
--3. gg.prompt 弹出带有控件的提示窗口
--4. gg.choice 弹出单选列表窗口
--5. gg.clearResults 清除搜索结果
--6. gg.editAll 修改搜索结果
--7. gg.getFile 获取当前脚本所在目录
--8. gg.getResults 获取搜索结果
--9. gg.getResultCount 获取搜索结果数量
--10. gg.setRanges 设置搜索内存
--11. gg.isVisible 判断GG界面是否可见
--12. gg.multiChoice 弹出多选列表窗口
--13. gg.processKill 结束当前选定应用
--14. gg.searchNumber 搜索数据 (重要)
--15. gg.setVisible 设置GG界面是否可见--
--16. getline()读取行数
--17. getlocale0荻取地值
--18. getRanges()洪取内存区域内的
--19. getRangeslist)荻取内存区域列表
--20. getResultCount)荻取結果計数
--21. getResultso :荻取結果井加載
--22. getSpeedo荻取加速
--23. getTargetInfo荻取目棕信息
--24. getTargetPackage0荻取迸程包名GG内存
------------------------------------------------
--------内存范围---------↓↓↓
--Jh内存:	['REGION_JAVA_HEAP'] = 2,--
--Ch内存:	['REGION_C_HEAP'] = 1,
--Ca内存:	['REGION_C_ALLOC'] = 4,
--Cd内存:	['REGION_C_DATA'] = 8,
--Cb内存:	['REGION_C_BSS'] = 16,
--Ps内存:['REGION_PPSSPP'] = 262144,
--A内存:	['REGION_ANONYMOUS'] = 32,
--J内存:	['REGION_JAVA'] = 65536,
--S内存:	['REGION_STACK'] = 64,
--As内存:	['REGION_ASHMEM'] = 524288,
--V内存:	['REGION_VIDEO'] = 1048576,
--O内存	['REGION_OTHER'] = -2080896,
--B内存:	['REGION_BAD'] = 131072,
--Xa内存:	['REGION_CODE_APP'] = 16384,
--Xs内存:	['REGION_CODE_SYS'] = 32768,
------------------------------------------------
--------数据类型---------↓↓↓
--A类搜:	['TYPE_AUTO'] = 127,
--B类搜:	['TYPE_BYTE'] = 1,
--E类搜:	['TYPE_DOUBLE'] = 64,
--D类搜:	['TYPE_DWORD'] = 4,
--F类搜:	['TYPE_FLOAT'] = 16,
--Q类搜:	['TYPE_QWORD'] = 32,
--W类搜:	['TYPE_WORD'] = 2,
--X类搜:	['TYPE_XOR'] = 8,






--主页
function Main()
 os.exit()
XGCK=-1
end

function Main5()
menu4 = gg.choice({
'人物            Gd',
'枪械            Gd',
'建筑            Gd',
'视野            Gd',
'退出            Gd'},
nil,'')
if menu4 == 1 then Main6() end
if menu4 == 2 then Main7() end
if menu4 == 3 then Main8() end
if menu4 == 4 then Main9() end
if menu4 == 5 then Main() end
XGCK=-1
end


function Main9()
menu5 = gg.choice({
' ➣ 循环天线',
' ➣ 水下开车',
' ➣ 视野优化',
'上一页'},
nil,'')
if menu5 == 1 then N1() end
if menu5 == 2 then N4() end
if menu5 == 3 then N3() end
if menu5 == 4 then Main5() end
XGCK=-1
end

function N4()
F = gg.alert("【水下开车功能选择】", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("水下行走开启")

   elseif F==2 then
   gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("10000", gg.TYPE_FLOAT)
      gg.toast("关闭水下行走")
   
end
end


 
      


 
    




function N1()
gg.clearResults()
if gg.isVisible()==true then else
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
  
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999, ["offset"] = 0, ["type"] = 16},}

    xqmnb(qmnb)
    if gg.isVisible()==true then else
    N1()
    end end end
    
    
    function N2()
    gg.clearResults()
    gg.setRanges(32)
    SearchWrite({
      {
        -1111490560,
        6584
      },
      {
        0,
        6588
      },
      {
        0,
        6596
      }
    }, {
      {
        1084410514,
        6584,
        false
      }
    }, 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.toast("30%")
    SearchWrite({
      {
        -1110704128,
        36264
      },
      {
        0,
        36256
      },
      {
        0,
        36268
      }
    }, {
      {
        1084410514,
        36264,
        false
      }
    }, 4)
    gg.toast("80%")
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
    L45_493278 = gg.getResults(100)
    L50_493283 = gg.getResultCount()
    if L50_493283 > 100 then
      L50_493283 = 100
    end
    for _FORV_9_ = 1, L50_493283 do
      L54_493286 = L45_493278[_FORV_9_].address
      gg.addListItems({
        [1] = {
          address = L54_493286,
          flags = 16,
          freeze = true,
          value = 5
        }
      })
    end
    gg.toast("Nice！兄dei！")
    gg.clearResults()
    end
    
    
    function N3()
    gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.20000000298;0.30000001192;-0.20000000298", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.20000000298", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("视野优化")
end
    





function Main6()
menu1 = gg.choice({
' ➣ 天线',
' ➣ 上色',
' ➣ 视角',
' ➣ 地图',
' ➣ 倒地加速',
'上一页'},
nil,'')
if menu1 == 1 then A1() end
if menu1 == 2 then A4() end
if menu1 == 3 then A3() end
if menu1 == 4 then A2() end
if menu1 == 5 then m1() end
if menu1 == 6 then Main5() end
XGCK=-1
end


function A4()
local a = gg.prompt({"➣果冻人物自定义上色\n➣输入【999】为人物白色\n➣输入【-999】为人物黑色"
 }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;-1;3;0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll(a, gg.TYPE_FLOAT)
gg.toast("开启成功")
   end
   end






function Main7()
menu2 = gg.choice({
'全枪无后',
'全枪射速',
'内存自瞄',
'机瞄路飞',
'带镜路飞',
'机瞄八倍',
'人物隐身',
'全图定怪',
'全枪瞬击',


'上一页'},
nil,'')
if menu2 == 1 then A9() end
if menu2 == 2 then Q1() end
if menu2 == 3 then M12() end
if menu2 == 4 then A10() end
if menu2 == 5 then A11() end
if menu2 == 6 then N2() end
if menu2 == 7 then P1() end
if menu2 == 8 then P2() end
if menu2 == 9 then P3() end
if menu2 == 10 then Main5() end
XGCK=-1
end


function Main8()
menu3 = gg.choice({
'浮空建筑',
'建筑框透',
'建筑全透',
'建筑定位',
'上一页'},
nil,'')
if menu3 == 1 then A8() end
if menu3 == 2 then A7() end
if menu3 == 3 then A6() end
if menu3 == 4 then A5() end
if menu3 == 5 then Main5() end
XGCK=-1
end



function Q1()
gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("940000000", 4)
    gg.toast("全抢射速已开启️")
    gg.clearResults()
  end


function P1()
F = gg.alert(" ➣ 隐身教程：\n ➣ 人物隐身：\n ➣ 需要任意载具配合开启\n ➣ 点击乘坐，在车上开启第一步\n ➣ 开启成功后，点击下车，然后开启第二步即可隐身\n\n ➣ 注：请在人物可视范围内开启，距离过远无效", " ➣ 第一步" ," ➣ 第二步")
if F==1 then
    gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("16",gg.TYPE_DWORD)
gg.toast("第一步成功")

   elseif F==2 then
   gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("17",gg.TYPE_DWORD)
gg.toast("第二步成功")
end
end



function P2()
F = gg.alert(" ➣ 教程：\n ➣ 游戏里开启第一步，开启成功后，返回大厅，重新进游戏，然后开始第二步即可定怪\n\n ➣ 注：无效果换号即可", " ➣ 第一步" ," ➣ 第二步")
if F==1 then
        gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("16",gg.TYPE_DWORD)
gg.toast("第一步成功")

   elseif F==2 then
   gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("17",gg.TYPE_DWORD)
gg.toast("第二步成功")
   
end
end


function P3()
gg.clearResults()
gg.setRanges(16384)   gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
    end


function Main90()
menu7 = gg.choice({
'①角色天线',
'②地图优化',
'③人称视角',
'④建筑高光',
'⑤建筑定位',
'⑥建筑透视',
'⑦建筑框透',
'⑧强制建筑',
'⑨枪械无后',
'⑩机瞄路飞',
'⑩①带镜路飞',
'⑩②近战范围',
'⑩③新版飞天',
'⑩④全枪秒换',
'①⑤AK聚点瞬击',
'①⑥AK射速增加',
'○点击返回'},
nil,'')
if menu7 == 1 then A1() end
if menu7 == 2 then A2() end
if menu7 == 3 then A3() end
if menu7 == 4 then A4() end
if menu7 == 5 then A5() end
if menu7 == 6 then A6() end
if menu7 == 7 then A7() end
if menu7 == 8 then A8() end
if menu7 == 9 then A9() end
if menu7 == 10 then A10() end
if menu7 == 11 then A11() end
if menu7 == 12 then A12() end
if menu7 == 13 then A13() end
if menu7 == 14 then A14() end
if menu7 == 15 then A15() end
if menu7 == 16 then A16() end
if menu7 == 17 then Main() end
XGCK=-1
end


function A15()
B1()
B2()
B3()
end


function A16()
B4()
end



  
  
 



function m1()
F = gg.alert("【倒地加速开关选择】", "开" ,"关")
if F==1 then
    gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;-2.0:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("-11",gg.TYPE_FLOAT)
  gg.toast(" 倒地加速开启成功️  ")

   elseif F==2 then
   gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;-11:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-11",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("-2",gg.TYPE_FLOAT)
  gg.toast(" 倒地加速关闭成功️  ")
   
end
end






function A14()
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
    gg.toast("全枪秒换")  
    gg.clearList()
    gg.clearResults()
end




function B1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;35;50", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("原创AK聚点")
end

function B2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("735;30;110", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("735", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99999)
gg.editAll("9999999999",gg.TYPE_FLOAT)
gg.toast("原创AK瞬击")
end

function B3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999999)
gg.editAll("999999",gg.TYPE_FLOAT)
gg.toast("原创镜头固定")
end

function B4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("95;101", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("95", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("原创AK射速增加")
end



function A13()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if sl > 10 then
    sl = 10
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0.5
      }
    })
  end
  gg.toast("100%")
end




function M12()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("自瞄")
end




function B0()
F = gg.alert("【GM工具登陆界面开】", "GM工具" ,"防止拉回【暂未开放】")
if F==1 then
    gg.setRanges(32)
local dataOhnb = 4
local tb1 = {{16777216, 0}, {0, -48}, }
local tb2 = {{1, -48, true}, }
SearchWriteohnb(tb1, tb2, dataOhnb)
gg.clearList()--GM工具

   elseif F==2 then
   gg.alert("暂未开启")


end
end





function A10()
F = gg.alert("【请选择机瞄路飞模式】", "向上路飞" ,"向下路飞")
if F==1 then
    AS()

   elseif F==2 then
   AX()
   
end
end





function AS()
F = gg.alert("【向上机瞄路飞选择】", "开启" ,"关闭")
if F==1 then
    KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[17]],[[16]],[[1.8]]},},[[机瞄路飞]])
          gg.clearList()

   elseif F==2 then
   
   gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[17]],[[16]],[[0]]},},[[机瞄路飞]])
          gg.clearList()
end
end


function AX()
F = gg.alert("【向下机瞄路飞选择】", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[17]],[[16]],[[-1.8]]},},[[机瞄路飞]])
          gg.clearList()

   elseif F==2 then
   gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[17]],[[16]],[[0]]},},[[机瞄路飞]])
          gg.clearList()
   
end
end

function A11()
F = gg.alert("【请选择带镜路飞模式】", "向上路飞" ,"向下路飞")
if F==1 then
    ASS()

   elseif F==2 then
   AXX()
   
end
end



function ASS()
F = gg.alert("【向上带镜路飞模式】", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[15]],[[16]],[[-1.8]]},},[[带镜路飞]])
          gg.clearList()

   elseif F==2 then
   gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[15]],[[16]],[[0]]},},[[带镜路飞]])
          gg.clearList()
          end
   
end

function AXX()
F = gg.alert("【向下带镜路飞模式】", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[15]],[[16]],[[1.8]]},},[[带镜路飞]])
          gg.clearList()

   elseif F==2 then
   gg.clearResults()
          KY_ZZ({[[32]],[[1036831949]],[[4]],false},{{[[-10]],[[1082088489]]},},{{[[15]],[[16]],[[0]]},},[[带镜路飞]])
          gg.clearList()
   end
end





         




function A1()
gg.clearResults()
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb)
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("-12",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(100)
    gg.editAll("999",gg.TYPE_FLOAT )
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("-12",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(100)
    gg.editAll("999",gg.TYPE_FLOAT )
    gg.toast("骁龙蓝色")
    gg.clearResults()
    
  end




function A2()
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
    gg.toast("地图优化")
    end




function A3()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768;1.85000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('9', gg.TYPE_FLOAT)
  gg.toast('  人称视角已开启️  ')
  end


function A12()
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
    A12()
end end end  end



function A9()
gg.clearResults()
  KY_ZZ({[[32]],[[1067869798]],[[4]],false},{{[[-13]],[[1067030938]]},},{{[[-2]],[[16]],[[0]]},{[[-3]],[[16]],[[0]]},{[[-4]],[[16]],[[0]]},{[[3]],[[16]],[[0]]},{[[32]],[[16]],[[0]]},{[[34]],[[16]],[[0]]},},[[全枪无后]])
KY_ZZ({[[32]],[[1114636288]],[[4]],false},{{[[-2]],[[1067030938]]},{[[6]],[[1045220557]]},},{{[[7]],[[16]],[[0]]},{[[8]],[[16]],[[0]]},{[[9]],[[16]],[[0]]},{[[14]],[[16]],[[0]]},{[[43]],[[16]],[[0]]},},[[全枪无后]])
KY_ZZ({[[32]],[[1067869798]],[[4]],false},{{[[-5]],[[1050253722]]},{[[-13]],[[1067030930]]},},{{[[-8]],[[16]],[[9999]]},},[[全枪无后]])
gg.clearResults()
       
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("自瞄")




A14()


    end
    
    

function A5()
F = gg.alert("【建筑定位天线】", "开启" ,"关闭")
if F==1 then
    gg.alert("本功能联发科，麒麟无效")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("木墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("石墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("铁墙天线开启成功")
  

   elseif F==2 then
   
       gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("木墙天线关闭成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("石头天线开启关闭")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("铁墙天线关闭成功")
  end
end

  
  

function A6()
F = gg.alert("【建筑物资透视】", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", gg.REGION_C_BSS)
    gg.toast("房屋透视开启完毕")
    gg.clearResults()


   elseif F==2 then
   gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", gg.REGION_C_BSS)
    gg.toast("透视关闭")
    gg.clearResults()
    end
   
end





    
    
    
    function A8()
    gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("2;3.6734198e-40 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("6.6734198e-40", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("强制建筑开启成功")
      end



function A7()
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.032023508101701736, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.03202327340841293, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.007704700343310833, ['type'] = 16},{['lv'] = 20,['offset'] = -24,['type'] = 16},{['lv'] = -2.0,['offset'] = 8,['type'] = 16},{['lv'] = -2.0,['offset'] = 70,['type'] = 16},{['lv'] = 2.0,['offset'] = 72,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = 40,['type'] = 16},{['value'] = 0,['offset'] = 72,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.1500033140182495, ['type'] = 16},{['lv'] = -2.0,['offset'] = -36, ['type'] = 16},{['lv'] = -2.0,['offset'] = -4,['type'] = 16},{['lv'] = -2.0,['offset'] = 28,['type'] = 16},{['lv'] = 2.0,['offset'] = 60,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -36,['type'] = 16},{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 60,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.14999663829803467, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -4, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 28, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 60, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 92, ['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -4, ['type'] = 16},{['value'] = 0, ['offset'] = 28, ['type'] = 16},{['value'] = 0, ['offset'] = 60, ['type'] = 16},{['value'] = 0, ['offset'] = 92, ['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = -16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 48,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 48,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.41978082060813904, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.013329435139894485, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060922980308533, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -148, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -116,['type'] = 16},{['lv'] = 2.0, ['offset'] = -84,['type'] = 16},{['lv'] = -2.0, ['offset'] = -52,['type'] = 16},{['lv'] = -2.0, ['offset'] = -20,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -148,['type'] = 16},{['value'] = 0, ['offset'] = -116,['type'] = 16},{['value'] = 0, ['offset'] = -84,['type'] = 16},{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = -20,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060521841049194, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -80, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -48,['type'] = 16},{['lv'] = 2.0, ['offset'] = -16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 48,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -80,['type'] = 16},{['value'] = 0, ['offset'] = -48,['type'] = 16},{['value'] = 0, ['offset'] = -16,['type'] = 16},{['value'] = 0, ['offset'] = 16,['type'] = 16},{['value'] = 0, ['offset'] = 40,['type'] = 16},{['value'] = 0, ['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},{['lv'] = 1.8001794815063477,['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = -52,['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 46,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16}, {['value'] = 0, ['offset'] = 76,['type'] = 16},}xqmnb(qmnb)dx5=dx2
      gg.clearResults()
      gg.clearList()
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
      gg.clearResults()
      gg.clearList()
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = 28,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 100,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 100,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = -20,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.15298263728618622, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -4,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 20,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.1057068407535553, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = 4,['type'] = 16},{['lv'] = 2.178743600845337,['offset'] = 28,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17565540969371796, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = -20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.19516216218471527, ['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = -20,['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = 52,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] = 53,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17744342982769012, ['type'] = 16},{['lv'] = 2.0771946907043457, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.21184007823467255, ['type'] = 16},{['lv'] = 2.1394925117492676, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 1.2077791464015598E-41, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -16,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 8,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 8,['type'] = 16},}xqmnb(qmnb)
      qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.8982726335525513, ['type'] = 16},{['lv'] = 2.1371371746063232, ['offset'] = -8,['type'] = 16},{['lv'] = 2.0411479473114014,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -8,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)dx5=dx2
      gg.clearResults()
      gg.clearList()

    end 

cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main5()
end
end