function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, MS) for x = 1, #(MS) do 
xgpy = szpy + MS[x]["offset"] xglx = MS[x]["type"] 
xgsz = MS[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
MoShinp(MoShi) 
gg.clearResults() 
gg.setRanges(MoShi[1]["memory"]) 
gg.searchNumber(MoShi[3]["value"], MoShi[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(MoShi[2]["name"] .. "开启失败")
else 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
gg.refineNumber(MoShi[3]["value"], MoShi[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(MoShi[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(MoShi) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + MoShi[v]["offset"] 
pysz[1].flags = MoShi[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = MoShi[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, MS) 
xgjg = true end end 
if xgjg == true then 
gg.toast(MoShi[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(MoShi[2]["name"] .. "开启失败") 
end 
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
            gg.toast("搜索失败", false)
            return false
        end
    else
        gg.toast("搜索失败")
        return false
    end
end




----------------------------------------------------------------------------------------- 




--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function Main()
menu = gg.choice({
'训练营专用功能',
'落地持枪版功能',
'不拉回加速开启',  
'上帝视角定位○',
'M4 AK加速有伤',
'不拉回加速关闭',
'其他处理器透色',        
'退出脚本'},
2018,'摸屎自用国际服超级实用变态功能')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then Exit() end
XGCK=-1
end
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗


function A()
menu1 = gg.multiChoice({
'自用透视',
'人车随色',
'人车变色',
'透视防闪',
'无后防抖',
'超大范围',
'近处自瞄',
'大厅除草',
'全图天黑',
'全屏自瞄',
'双肩天线',
'返回上一页'},
nil,'摸屎丶自用国际新版变态脚本 ')
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
if menu1[12] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'持枪地线',
'上帝视角',
'落地全除',
'手臂路飞',
'快速下机',
'原地踏空',
'吉普加速',
'暂无功能',
'暂无功能',
'大厅防封',
'地板透明',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

---透色源码来自网络
function G()
menu1 = gg.multiChoice({
'透视',
'上色',
'返回上一页'},
nil,'全部训练营开启 不然无作用')
if menu1 == nil then else
if menu1[1] == true then G1() end
if menu1[2] == true then G2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function G1()
menu1 = gg.multiChoice({
    "透视 All Device",
    "透视 All Snapdragon",
    "透视 Fix Blink",
    "透视 Fix Scope",
    "透视 SD 400",
    "透视 SD 410",
    "透视 SD 415",
    "透视 SD 425",
    "透视 SD 430",
    "透视 SD 435",
    "透视 SD 450",
    "透视 SD 615",
    "透视 SD 616",
    "透视 SD 625",
    "透视 SD 626",
    "透视 SD 636",
    "透视 SD 650",
    "透视 SD 653",
    "透视 SD 660",
    "透视 SD 670",
    "透视 SD 675",
    "透视 SD 710",
    "透视 SD 800",
    "透视 SD 801",
    "透视 SD 815",
    "透视 SD 820",
    "透视 SD 821",
    "透视 SD 835",
    "透视 SD 845",
    "透视 SD 855",
'返回上一页'},
nil,'全部训练营开启 不然无作用')
if menu1 == nil then else
    if menu1[1] == true then
      ts1()
    end
    if menu1[2] == true then
      ts2()
    end
    if menu1[3] == true then
      ts3()
    end
    if menu1[4] == true then
      ts4()
    end
    if menu1[5] == true then
      ts5()
    end
    if menu1[6] == true then
      ts6()
    end
    if menu1[7] == true then
      ts7()
    end
    if menu1[8] == true then
      ts8()
    end
    if menu1[9] == true then
      ts9()
    end
    if menu1[10] == true then
      ts10()
    end
    if menu1[11] == true then
      ts11()
    end
    if menu1[12] == true then
      ts12()
    end
    if menu1[13] == true then
      ts13()
    end
    if menu1[14] == true then
      ts14()
    end
    if menu1[15] == true then
      ts15()
    end
    if menu1[16] == true then
      ts16()
    end
    if menu1[17] == true then
      ts17()
    end
    if menu1[18] == true then
      ts18()
    end
    if menu1[19] == true then
      ts19()
    end
    if menu1[20] == true then
      ts670()
    end
    if menu1[21] == true then
      ts21()
    end
    if menu1[22] == true then
      ts22()
    end
    if menu1[23] == true then
      ts23()
    end
    if menu1[24] == true then
      ts24()
    end
    if menu1[25] == true then
      ts25()
    end
    if menu1[26] == true then
      ts26()
    end
    if menu1[27] == true then
      ts27()
    end
    if menu1[28] == true then
      ts28()
    end
    if menu1[29] == true then
      ts29()
    end
    if menu1[30] == true then
      ts30()
    end
if menu1[31] == true then HOME() end
end
GLWW=-1
end

function G2()
menu1 = gg.multiChoice({
    "上色 Green [Only Body]",
    "上色 Mix",
    "上色 Purple",
    "上色 Rainbow",
    "上色 Red [Only Body]",
    "上色 Red [Full Color]",
    "上色 Yellow [Only Body]",
    "上色 Yellow [Full Color]",
    "上色 [Exynos, Kirin]",
    "上色 Blue HDR",
    "上色 Red HDR",
    "上色 Yellow HDR",
    "上色 410 Green",
    "上色 415 Green",
    "上色 425 Green",
    "上色 425 Rainbow",
    "上色 425 Red",
    "上色 425 Yellow",
    "上色 615 Cyan",
    "上色 660 Yellow",
    "上色 845 Red",
    "上色 845 Yellow",
'返回上一页'},
nil,'全部训练营开启 不然无作用')
if menu1 == nil then else
    if menu1[1] == true then
      ys1()
    end
    if menu1[2] == true then
      ys2()
    end
    if menu1[3] == true then
      ys3()
    end
    if menu1[4] == true then
      ys4()
    end
    if menu1[5] == true then
      ys5()
    end
    if menu1[6] == true then
      ys6()
    end
    if menu1[7] == true then
      ys7()
    end
    if menu1[8] == true then
      ys8()
    end
    if menu1[9] == true then
      w219()
    end
    if menu1[10] == true then
      ys10()
    end
    if menu1[11] == true then
      ys11()
    end
    if menu1[12] == true then
      ys12()
    end
    if menu1[13] == true then
      ys13()
    end
    if menu1[14] == true then
      ys14()
    end
    if menu1[15] == true then
      ys15()
    end
    if menu1[16] == true then
      ys16()
    end
    if menu1[17] == true then
      ys17()
    end
    if menu1[18] == true then
      ys18()
    end
    if menu1[19] == true then
      ys19()
    end
    if menu1[20] == true then
      ys20()
    end
    if menu1[21] == true then
      ys21()
    end
    if menu1[22] == true then
      ys22()
    end
if menu1[23] == true then HOME() end
end
GLWW=-1
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
function C()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回开启")
end

function D()


MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="视角开启成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =25000, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
gg.toast("3秒后关闭功能")
gg.sleep(2500)
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="视角关闭成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =550, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end


function E()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416伤害开启成功")
     gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("SC伤害开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM伤害开启成功")
end


function F()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回已关闭")
end


--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function a1()

MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] = "偏移马赛克"},
{["value"] = 5.7922799e21, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.8013756e-42, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.7408149e21, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.5695588e-40, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.814603e21, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 5444, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] = "偏移透视"},
{["value"] = -2.5774027e-39, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.1466568e21, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 8.6880505e-44, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.3912519e-19, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.3962204e-43, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.391252e-19, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 5444, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)

end



function a2()
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物变色"},
{["value"] =131072, ["type"] = gg.TYPE_DWORD},
{["lv"] = 196610, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
{["lv"] = 671088640, ["offset"] = 184, ["type"] = gg.TYPE_DWORD},
 }
MS = {
{["value"] =-469, ["offset"] = 184, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="全车绿色"},
{["value"] =131078, ["type"] = gg.TYPE_DWORD},
{["lv"] = 589826, ["offset"] = 32, ["type"] = gg.TYPE_DWORD},
{["lv"] = 524291, ["offset"] = 48, ["type"] = gg.TYPE_DWORD},
{["lv"] = 671088640, ["offset"] = 288, ["type"] = gg.TYPE_DWORD},
 }
MS = {
{["value"] =-485, ["offset"] = 288, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
end

-- 98黄 97红 85绿


--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function a3()
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="人物变色"},
{["value"] =131072, ["type"] = gg.TYPE_DWORD},
{["lv"] = 196610, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
{["lv"] = 671088640, ["offset"] = 184, ["type"] = gg.TYPE_DWORD},
 }
MS = {
{["value"] =-505, ["offset"] = 184, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="全车绿色"},
{["value"] =589826, ["type"] = gg.TYPE_DWORD},
{["lv"] = 131078, ["offset"] = -32, ["type"] = gg.TYPE_DWORD},
{["lv"] = 524291, ["offset"] = 16, ["type"] = gg.TYPE_DWORD},
{["lv"] = 671088640, ["offset"] = 256, ["type"] = gg.TYPE_DWORD},
 }
MS = {
{["value"] =-490, ["offset"] = 256, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
end

--  -241粉色  -240绿色 -239红色  -237蓝色 -244黄色 

function a4()
 MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="房区防闪"},
{["value"] =5.2806111e-40, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.7592633e21, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.0230535e23, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.2963078e-41, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =99999, ["offset"] = 160, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="山区防闪"},
{["value"] =6.50000238419, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.2960275e-41, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.7961557e21, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.8013756e-42, ["offset"] = -12, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =99999, ["offset"] = 148, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end



function a5()
gg.clearResults()
MoShi = {
{["memory"] = 16384},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
gg.clearResults()
gg.clearResults()
MoShi = {
{["memory"] = 16384},
{["name"] = "全局聚点"},
{["value"] = -6.1718715e27, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.7294395e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2382424e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1144502e28, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 90, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
gg.clearResults()
MoShi = {
{["memory"] = 16384},
{["name"] = "防抖第一步"},
{["value"] = -2.8111605430681e+28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -3.7444097189856e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1144501557583e+28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 128, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = 16384},
{["name"] = "防抖第二步"},
{["value"] = -6.1549453500004e+27, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.8638965755821e-20, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] =  -1.1144501557583e+28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end


function a6()
 gg.clearResults()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "头部范围"},
{["value"] = 0.00009203507, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 30.5, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 295, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["value"] = 295, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.66608428955, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 16, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 26, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = -430, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.73961639404, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 18, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = -530, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全身范围"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
--["freeze"] = true   添加这个为冻结
--["freeze"] = false   这个为恢复冻结，取消冻结
{["value"] = 270, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 130, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗




function a7()
 gg.clearResults()
MoShi = {
{["memory"] = 16384},
{["name"] = "锁甲自瞄"},
{["value"] = -5.4827808e27, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.8488793e28, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2464639e28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.7270195e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 0, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 0, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('360;0.0001;1478828288::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.0001',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('超级自瞄开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("自瞄")
end



function a8()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "大厅除草开启成功"},
{["value"] = 29806, ["type"] = gg.TYPE_DWORD},
{["lv"] = 7630437, ["offset"] = 40, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1633907556, ["offset"] = 64, ["type"] = gg.TYPE_DWORD},
}
MS = {
{["value"] = 1936942449, ["offset"] = 140, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
end


function a9()

MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] = "海岛天黑"},
{["value"] = 271519790, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1669332998, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 271388716, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
}
MS = {
{["value"] = 999, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
end



--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗




function a10()
gg.alert("训练营里面拿着手枪p92 开完这个功能之后切换m4 或者akm 拿着你需要自瞄的枪 对着地上开几枪就有自瞄效果了 反正就是你要哪个自瞄你点那个。")
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("p92全屏自瞄 ")
end




function a11()

MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "肩部全局天线"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end



--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function b1()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线开启成功"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =-99999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function b2()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="上帝模式开启成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
MS = {
{["value"] =550, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗




function b3()
 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-9.9065615e27;-5.6544483e27;-8.2433914e19:13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-9.9065615e27',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('大厅全除开启成功')

end

function b4()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "手臂路飞"},
{["value"] = -0.3004361093, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.46691286564, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 23.5222568512, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 50, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 280, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end





function b5()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "加速下飞机开启"},
{["value"] = 0.00050000002, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.40000000596, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 7, ["offset"] = -12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
gg.toast("快速下飞机开启成功")
gg.setRanges(16384)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-1.0070975e28, 0},{-2.8246552e28, -0x8},{-9.9839328e27, -0XC}}
    local tb2 = {{6.1526231e27,-0X10}}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("防拉回开启成功")
gg.toast("10秒后关闭下降加速")
gg.sleep(13500)
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "加速下飞机关闭"},
{["value"] = 0.00050000002, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.40000000596, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 1, ["offset"] = -12, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
gg.toast("关闭快速下飞机")
gg.setRanges(16384)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-1.0070975e28, 0},{-2.8246552e28, -0x8},{-9.9839328e27, -0XC}}
    local tb2 = {{-6.1526231e27,-0X10}}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("防拉回关闭成功")
end


function b6()
MoShi = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "原地踏空飞天"},
{["value"] = 1000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 7.0064923e-45, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 4.2038954e-45, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
MS = {
{["value"] = 99999, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
MoShinp(MoShi)
end



function b7()
MoShi = {
{["memory"] = 32},
{["name"] = "吉普加速"},
{["value"] = 1500, ["type"] = 16},
{["lv"] = 1025, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1000, ["offset"] = 32, ["type"] = 16},
{["lv"] = 10, ["offset"] = 36, ["type"] = 16},
{["lv"] = 50, ["offset"] = 84, ["type"] = 16},
{["lv"] = 5, ["offset"] = 88, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 120, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 124, ["type"] = 16},

}
MS = {
{["value"] = -0.23, ["offset"] = 124, ["type"] = 16},
}
MoShinp(MoShi)
end

  



--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗


function b8()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("-10", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 子弹穿墙")
end





function b9()

end




--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗


function b10()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316;1970037078", 4, false, 536870912, 0, -1)
  gg.searchNumber("1954047316;1970037078", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("9", 4)
  gg.clearResults()
  gg.toast("Antiban 10 Min V1 activated!")
  gg.alert("Activated when at 20 People left and 7 People left!")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Antiban 10 Min V2 activated!")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("257;2131;0F~99999F;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0F~99999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("超级防封开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  if gg.getResultCount() == 0 then
    gg.toast("鉴权失败")
  else
    gg.searchNumber("909391408", gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885", gg.TYPE_DWORD)
    gg.toast("防封鉴权成功")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.4349296e-41;1.4012985e-45;5.6051939e-45;2.986167e-42::", gg.TYPE_FLOAT)
  if gg.getResultCount() == 0 then
    gg.toast("大厅防封搜索失败")
  else
    gg.searchNumber("2.986167e-42", gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.toast("大厅防封手动修改冻结0")
    gg.setVisible(true)
    os.exit()
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("25%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1,953,260,900;1,835,619,425", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,953,260,900;1,835,619,425", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("50%")
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.toast("75%")
  gg.clearResults()
  gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("Successful!")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("50%")
  else
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("Success")
  end
    gg.toast("•°Process!°•")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  local L0_13
  L0_13 = nil
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra.log")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra.log")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra.log")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra.log")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.ini")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/cache/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  L0_13 = os
  L0_13 = L0_13.remove
  L0_13("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  L0_13 = gg
  L0_13 = L0_13.toast
  L0_13("▶️Actived✔")
end




function b11()
MoShi = {
{["memory"] = gg.REGION_BAD},
{["name"] ="地板透明"},
{["value"] =98304, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1669695488, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = -2146435067, ["offset"] = 28, ["type"] = gg.TYPE_DWORD},
 }
MS = {
{["value"] =-234, ["offset"] = 32, ["type"] = gg.TYPE_DWORD},
}
MoShinp(MoShi)
end
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗









function ts1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 All Device Actived✔ ")
end

function ts2()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.6447121e21;-8.3252823e-40;4.9252852e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-8.3252823e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9068373e21;-3.5875931e-39;4.8699618e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3.5875931e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.0544113e21;-3.4039221e-39;4.8699607e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3.4039221e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.6447206e21;-1.0161992e-39;4.9068396e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.0161992e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7223665e21;-8.3246237e-40;4.8330515e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-8.3246237e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("6444", gg.TYPE_FLOAT)
  gg.toast("透视 All Snapdragon Actived✔ ")
end

function ts3()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("透视 Fix Blink Actived✔ ")
end

function ts4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("2.001", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 Fix Scope Actived✔ ")
end

function ts5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 400 Actived✔ ")
end

function ts6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(360)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 410 Actived✔ ")
end

function ts7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 415 Actived✔ ")
end

function ts8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 425 Actived✔ ")
end

function ts9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 430 Actived✔ ")
end

function ts10()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(360)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("27;15;26;23;1,073,741,824;24;-1,082,130,432:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 435 Actived✔ ")
end

function ts11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7961574e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("透视 450 Actived✔ ")
end

function ts12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("122", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP)
  gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 615 Actived✔ ")
end

function ts13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 616 Actived✔ ")
end

function ts14()
  gg.clearResults()
  gg.editAll(0, 20)
  gg.setRanges(131072)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("1.3912525e-19F;8200;96", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("6", 4)
  gg.clearResults()
  gg.toast("透视 625")
end

function ts15()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32769D;32770D;2.0F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("透视 626 Actived✔!")
end

function ts16()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 636 Actived✔!")
end

function ts17()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 650 Actived✔ ")
end

function ts18()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 653 Actived✔ ")
end

function ts19()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("▶️WH SD 660 Actived✔")
end

function ts710()
  local L0_14, L1_15
end

function ts670()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(15)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.toast("透视 670")
end

function ts21()
  gg.setRanges(131072)
  gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(15)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.toast("透视 675 ")
end

function ts22()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视 710 Actived✔ ")
end

function ts23()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 800 Actived✔ ")
end

function ts24()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 801 Actived✔ ")
end

function ts25()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 815 Actived✔ ")
end

function ts26()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 820 Actived✔ ")
end

function ts27()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 821 Actived✔ ")
end

function ts28()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("▶️WH SD 835 ✔")
  gg.clearResults()
end

function ts29()
  gg.setRanges(131072)
  gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(15)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("130", 16)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("1,661,566,999;96;539,246,604;8200::", 4, false, 536870912, 0, -1)
  gg.searchNumber("8200", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("7", 4)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.toast("▶️ Wallhack 845 ")
end

function ts30()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-0.01000213623F;2.0F;-1.0F;0.0F;0.04000854492F;0.11999511719F;-0.02749633789F;-0.57177734375F;0.02200317383F;0.04251098633F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912657e-19F;2.0F;1.6623164e-19F;3.6734353e-39F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("129", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19;3.7615819e-37;2;-1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("129", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.3912559e-19;2;1.6623071e-19::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("129", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.391256e-19;2;1.6623108e-19::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("129", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.5414283e-44;1.1202057e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("129", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("1.3912563e-19;2;1.6623075e-19;2.25000858307;1.6643298e10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("118", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("2.6102227e21F;9;45,259.12109375F;34::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("34", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("透视 855 Actived✔ ")
end











function ys1()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("518")
  gg.getResults(9999)
  gg.editAll("32772", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Green Only Body ✔")
end

function ys2()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false)
  gg.searchNumber("8200", gg.TYPE_DWORD, false)
  gg.getResults(10)
  gg.editAll("8202", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Mix ✔")
end

function ys3()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("32769;768;-2134900730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("51781", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Purple ✔")
end

function ys4()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("▶️✔ Color Rainbow ✔")
end

function ys5()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("090")
  gg.getResults(9999)
  gg.editAll("8199", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Red Only Body ✔")
end

function ys6()
  TG = 0
  gg.clearResults()
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("▶️✔ Color Red Full Color ✔")
end

function ys7()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("090")
  gg.getResults(9999)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Yellow Only Body ✔")
end

function ys8()
  TG = 0
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("▶️✔ Color Yellow Full Color ✔")
end

function w219()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("232;80;6;160;88;6;128;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("89", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("24;802824704;32;2::21", 4, false, 536870912, 0, -1)
  gg.refineNumber("24", 4, false, 536870912, 0, -1)
  gg.getResults(25)
  gg.editAll("22", 4)
  gg.clearResults()
  gg.toast("▶️✔ Color Exynos, Kirin ✔")
end

function ys10()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("1,661,337,615D;8,200D;1,194,380,049D:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("66", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Blue HDR ✔")
end

function ys11()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8.696D;8.692D;8.600D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Red HDR ✔")
end

function ys12()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("856128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("856140", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("196610;1280;196608:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false)
  gg.getResults(10)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color Yellow HDR ✔")
end

function ys13()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8,201;8,202;538,968,081:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color 410 Green ✔")
end

function ys14()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("200761;92;8204;856124;108;196610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("8500", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("856,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("856093", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("196,610;1,280;196,608::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color 415 Green ✔")
end

function ys15()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("200761;92;8204;856124;108;196610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(7)
  gg.editAll("74", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ Color 425 Green ✔")
end

function ys16()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("856128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("200761;92;8204;856124;108;196610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.toast("▶️✔ Color 425 Rainbow ✔")
end

function ys17()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("856,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("856,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("856139", gg.TYPE_DWORD)
  gg.toast("▶️✔ Color 425 Red ✔")
end

function ys18()
  TG = 0
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("856128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("200761;92;8204;856124;108;196610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("96", gg.TYPE_DWORD)
  gg.toast("▶️✔ Color 425 Yellow ✔")
end

function ys19()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("196,608D;196,608D:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196,608;196,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(25)
  gg.editAll("196619", gg.TYPE_DWORD)
  gg.toast("▶️✔ COLOR 615 Cyan ✔")
end

function ys20()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3,874;201,851,904;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("201,851,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("683128", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber(" 3,846;201,851,904;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("201,851,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("683128", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ COLOR 660 YELLOW ✔")
end

function ys21()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1,661,566,999;96;539,246,604;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("▶️✔ COLOR 845 RED ✔")
end

function ys22()
  TG = 0
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber(" 1,080,035,863;1,080,033,308;8,200;1,661,702,144:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("8198", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("▶️✔ COLOR 845 YELLOW ✔")
end







function Exit()
print("摸屎  ")
os.exit()
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

function HOME()
lw=1
Main()
end

--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗
--摸屎出品脚本     盗版二改皆为狗

cs = '摸屎'
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




--MoShi = {
--{["memory"] = gg.REGION_BAD},
--{["name"] ="人物红色"},
--{["value"] =539246599, ["type"] = gg.TYPE_DWORD},
--{["lv"] = 786441, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
--{["lv"] = 1661239308, ["offset"] = 8, ["type"] = gg.TYPE_DWORD},
--{["lv"] = 8200, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
-- }
--MS = {
--{["value"] =7, ["offset"] = 12, ["type"] = gg.TYPE_DWORD},
--}
--MoShinp(MoShi)


--MoShi = {
--{["memory"] = 16384},
--{["name"] = "人物加速"},
--{["value"] = -1.8638977e-20, ["type"] = gg.TYPE_FLOAT},
----{["lv"] = -1.1144502e28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
--{["lv"] = -3.7444097e28, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
--{["lv"] =  -2.793752e28, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
---}
--MS = {
--{["value"] = -2.7937067e28, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
---}
--MoShinp(MoShi)
--