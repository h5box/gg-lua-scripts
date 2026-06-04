gg.alert("本辅助为小鹏制作，倒卖死妈")
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
           gg.toast("搜索η"..#data.."条ΔΘ")
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
            gg.toast("小鹏提示:开启失败", false)
            return false
        end
    else
        gg.toast("小鹏提示:未找到游戏数据！开启失败")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  


function Main()
menu = gg.choice({
'汽车功能',
'轿车功能',
'退出脚本'},
nil,'本辅助由小鹏制作，除本人外，二改者死妈！')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
if menu == 4 then Exit() end
XGCK=-1
end
function A()
menu1 = gg.multiChoice({
  "吉普飞天",
  "吉普关闭",
  "蹦蹦飞天",
  "蹦蹦关闭",
  "装甲飞天",
  "装甲关闭",
  "吉蹦加速",
  "轿车加速",
  "吉普加速",
  "蹦蹦加速",
  "摩托加速",
  "汽车锁油",
  "汽车秒刹",
  "车辆浮空",
  "全车加速(自测)",
  "全车速关",
  "蹦蹦穿墙",
  "返回主页"},
nil,"小鹏祝你游戏愉快！")
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then a17() end
if menu1[18] == true then HOME() end
end
GLWW=-1
end


function a1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00055555557;49.9999961853;24.99999809265",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00055555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00455555557",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00055555557",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.04111111114",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00111111114",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00016666666;;49.9999961853", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00016666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00416666666",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00016666666",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll("-2", gg.TYPE_FLOAT)
gg10sj="1"
gg.toast("吉普蹦蹦飞天加速已开启")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.03", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-0.55",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("吉普加速")
end



function a10()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦加速")
end



function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
end



function a12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end



function a13()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function a14()
Name = "车浮空" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.139455925665468E27, 0},
{-7.583908064996921E27, 4},
{-5.112866641183671E27, 8},
{-1.2793503529145021E28, 12},
{-7.600827713809233E27, 16},
{-7.600830074992474E27, 20},
{-7.593578290962217E27, 24},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end



function a15()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end



function a16()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj="0"
  gg.toast("全车加速已关闭")
end



function a17()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end







function B()
menu1 = gg.multiChoice({
"防封十年",
"防举报封",
"离线防封",
"轿车飞天",
"轿车关闭",
'返回上一页'},
nil,'除本人外，二改死妈，不玩时开离线防封')

if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then HOME() end
end
end


function b1()
 gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("防封50%")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
	   dzy=jg[i].address
	   gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
  end
  gg.toast("防封100%")
  gg.clearResults()
end



function b2()
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/afd/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_helicopter_0.19.3.13455.pak")
gg.toast("放举报成功")
end





function b3()
gg.clearResults()
 gg.setRanges(32) gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) gg.editAll('0', 16) gg.toast('离线防追封开启成功')
end


function b4()
gg.clearResults()
gg.searchNumber("0.00100000005;49.9999961853;24.99999809265::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("轿车飞天")
end



function b5()
gg.clearResults()
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("飞天关闭")
end





function Exit()
print("小鹏制作，除本人外二改死妈！")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '欢迎下次使用'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
