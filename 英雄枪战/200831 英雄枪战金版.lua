

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end    gq="1"  gw="2"  ge="3"  gr="4"  gt="5" gy="6"  gu="7"  gi="8"  go="9"  gp="0"
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "修改中,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local t = gg.getResults(9999)
    gg.clearResults()
    if t ~= nil then
        local r = {}
        for j=2, #Search do
            for i, v in ipairs(t) do
                r[i] = {}
                r[i].address = v.address + Search[j][2] - Search[1][2]
                r[i].flags = v.flags
            end
            r = gg.getValues(r)
            for i = #t, 1, -1 do
                if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
                    table.remove(t, i)
                    table.remove(r, i)
                end
            end       
        end
        --写入数据
        local r = {}
        for i=1, #t do
            for j=1, #Write do
                r[#r+1] = {}
                r[#r].address = t[i].address + Write[j][2] - Search[1][2]
                r[#r].flags = t[i].flags
                r[#r].value = Write[j][1]
                r[#r].freeze = true--冻结的话修改后面加false
            end 
        end
        gg.setValues(r)
        
       -- gg.addListItems(r)
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
            gg.toast("没有发现数据请退出游戏重进", false)
            return false
        end
    else
        gg.toast("没有发现数据请退出游戏重进")
        return false
    end
end

bb ={} if bb == gx1 then else   gxjb={} if gxjb==1 then  goto exit else if gxjb==2 then  gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[NQ]" .. gg.name .. gg.randomName .. ""                os.remove(gg.getFile(),"w")             gg.outFile = io.open(file, "w")       gg.outFile:write(gg.makeRequest(gx2).content)    gg.outFile:close()            goto exit else goto exit end end end while(true) do end ::exit:: 
function ZWCF()
gg.alert("脚本执行中请勿触碰悬浮窗图标")
os.exit()
ZWCF()
end
dog=0
CS=1 --容忍次数，0则立刻送机票
function ZW_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('警告！\n请勿窥码，后果自负！')
dog = 0
CS=CS-1
end
if CS < 0 then
ZWCF()
end
end

function DZSH()--[[DZSH为回调主界面]]
gg.alert("穿墙开启过程中需要一直点跳跃，恢复后需要死一次才有效果，无敌每次进游戏开启，打完游戏关闭，榴弹推荐改400或500！！！注！！！刷金币在游戏登入界面开启，然后再进入游戏，领完退出，如此重复，仅对新手期的号有效。")
menu = gg.multiChoice({--[[菜单]] 
"艾伦子弹秒杀",
"克拉克子弹秒杀",
"雷诺子弹秒杀",
"人物穿墙",
"关闭人物穿墙",
"艾伦榴弹秒杀",
"艾伦无CD加秒射",
"开启无敌",
"关闭无敌",
"视角飞天",
"秒射",
"和叶子无限子弹",
"潘无限子弹",
 "狙击手无限子弹",
	 "艾伦无限子弹",
	 "潘视角",
	 "全英雄高跳",
	 "艾伦聚点",
	 "艾伦五倍加速",	 
	 "自瞄1【自测】",
     "自瞄2【自测】",
     "自瞄3【玛雅追踪那个拿刀的和扑克牌的】",
     "自瞄4【自测】",
     "大厅加速3倍",
     "大厅自定义加速",
     "范围伤害1",
     "范围伤害2",
     "范围伤害3",
     "克里克无限子弹",
     "胧无限大招",
     "杰兰无限刀第一步(大厅)",
     "杰兰无限刀第二步(游戏)",
     "人物加速(游戏中开启)",
"人物连跳飞天(游戏中开启)",
"人物爬墙(游戏中开启)",
"子弹跟踪(选英雄界面开启)",
"修改金币",
" 退出脚本",
},nil,os.date"平凡专属脚本范围进游戏后3个全部勾上一起开")--[[置顶文字这里date时间]]
if menu == nil then else--[[线程]]
if menu[1] == true then a() end--[[这里需要注意，then后面的a()为功能function后面的a()对应，不对应则报错]]
if menu[2] == true then b() end --[[线程]]
if menu[3] == true then c() end
if menu[4] == true then d() end--[[线程]]
if menu[5] == true then e() end --[[线程]]
if menu[6] == true then f() end
if menu[7] ==true then g() end
if menu[8] ==true then h() end
if menu[9] ==true then i() end
if menu[10] ==true then j() end
if menu[11] ==true then k() end
if menu[12] ==true then l() end
if menu[13] ==true then m() end
if menu[14] ==true then n() end
if menu[15] ==true then o() end
if menu[16] ==true then p() end
if menu[17] ==true then q() end
if menu[18] ==true then r() end
if menu[19] ==true then s() end
if menu[20] ==true then a2() end
if menu[21] ==true then a3() end
if menu[22] ==true then a4() end
if menu[23] ==true then a5() end
if menu[24] ==true then a1() end
if menu[25] ==true then a6() end
if menu[26] ==true then a7() end
if menu[27] ==true then a8() end
if menu[28] ==true then a9() end
if menu[29] ==true then a10() end
if menu[30] ==true then a11() end
if menu[31] ==true then a12() end
if menu[32] ==true then a13() end
if menu[33] ==true then a14() end
if menu[34] ==true then a15() end
if menu[35] ==true then a16() end
if menu[36] ==true then a17() end
if menu[37] ==true then a18() end
if menu[38] ==true then exit() end
end
PD1 = 0
PD2 = 0
end

function a()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("101;1001;22F;9F::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ax1= gg.prompt({i='请输入子弹数量:'}, {i='10'})
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.setValues({[1]={address = jz[i].address+88,flags = gg.TYPE_DWORD,value = ax1["i"]}})
gg.toast("开启成功")
	 gg.clearResults()
end
end

function b()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("301;1003;95F;27F;22F::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("1003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	ax2= gg.prompt({i='请输入子弹数量:'}, {i='10'})
	n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.setValues({[1]={address = jz[i].address+88,flags = gg.TYPE_DWORD,value = ax2["i"]}})
gg.toast("开启成功")
	 gg.clearResults()
	 end
end

function c()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("1010;5F;5F;15F;1004;1::189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("1010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	ax3= gg.prompt({i='请输入子弹数量:'}, {i='10'})
	n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.setValues({[1]={address = jz[i].address+88,flags = gg.TYPE_DWORD,value = ax3["i"]}})
gg.toast("开启成功")
	 gg.clearResults()
	 end
end

function d()
gg.clearResults()
gg.setRanges(32)
ZW_searchNumber("1D;999D;1F;0.40000000596;0.20000000298::100",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("1D",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("第一步开启")
gg.clearResults()
gg.setRanges(16)
ZW_searchNumber("0.5;0.0001;10000;1::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9765", gg.TYPE_FLOAT)
gg.toast("穿墙开启成功")
gg.clearResults()
end

function e()
gg.clearResults()
gg.setRanges(32)
ZW_searchNumber("0D;999D;1F;0.40000000596;0.20000000298::100",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("0D",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("第一步关闭")
gg.clearResults()
gg.setRanges(16)
ZW_searchNumber("0.5;0.0001;9765;1::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("9765", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10000", gg.TYPE_FLOAT)
gg.toast("关闭成功")
gg.clearResults()
end

function f()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("102;2.5F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1001", gg.TYPE_DWORD)
	 gg.toast("伤害已开启")
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("1001;2.5F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	ax3= gg.prompt({i='请输入伤害范围:'}, {i='25'})
	n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.setValues({[1]={address = jz[i].address+0x18,flags = gg.TYPE_FLOAT,value = ax3["i"]}})
gg.toast("开启成功")
end

function g()
gg.clearResults()
 gg.setRanges(32)
ZW_searchNumber("10014D;1D;0.30000001192F::100",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("1",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
ZW_searchNumber("10014D;0D;0.30000001192F::100",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ZW_searchNumber("0.30000001192F",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.toast("开启成功")
end

function h()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("2.5;0.10000000149;0.11999999732;0.28999999166;0.30000001192;4;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function i()
	 gg.clearResults()
	 gg.setRanges(32)
	 ZW_searchNumber("2.5;999;0.11999999732;0.28999999166;0.30000001192;4;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 ZW_searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.10000000149", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;-15;1.45::100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("视角飞天开启成功")
	 gg.clearResults()
	 end
end

function k()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1F;0.001F;12D;404D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("秒射开启成功")
	 gg.clearResults()
end

function l()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;1301;1;1;1402::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("和叶子无限子弹开启成功")
	 gg.clearResults()
end

function m()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0;0;1101~1102::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("潘无限子弹开启成功")
	 gg.clearResults()
	 	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0;0;0;1101~1102::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_DWORD)
	 gg.toast("潘一秒20发开启成功")
	 gg.clearResults()
end

function n()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0;0;501~502::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_DWORD)
	 gg.toast("狙击手无限子弹开启成功")
	 gg.clearResults()
end


function o()
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("3D;1D;6D;2D;4,003D;1,036,831,949~1,077,936,128D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("1,036,831,949~1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll("0", gg.TYPE_DWORD)
     gg.toast("艾伦无限子弹开启成功")
     gg.clearResults()
     
end

function p()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15;1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("35", gg.TYPE_FLOAT)
	 gg.toast("潘视角开启成功")
	 gg.clearResults()
end

function q()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-15;1.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 gg.toast("高跳开启成功")
	 gg.clearResults()
end

function r()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101D;0.60000002384;1.5;1.29999995232::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.60000002384;1.5;1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("聚点已开启")
	 gg.clearResults()
end

function s()
	 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5.5;-15;1.45::100",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("5.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("20",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.1~0.11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("自瞄成功")
end

function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.14~0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("自瞄成功")
end

function a4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.12~0.13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("自瞄成功")
end

function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.15~0.16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("自瞄成功")
end

function a1()
gg.clearResults()
gg.searchNumber("1D;5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("16", gg.TYPE_FLOAT)
gg.toast("加速成功")
end

function a6()
local m = gg.prompt({
    "5.5为1倍速，推荐改10，自行修改"
  }, {
    [1] = 6
  }, {
    [1] = "number"
  })[1]
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5.5;-15;1.45::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2000)
  gg.editAll(m, gg.TYPE_FLOAT)
  gg.toast("加速成功")
end

function a7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.13;0.11:10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.11;0.3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("999999999",gg.TYPE_FLOAT)
gg.toast("范围第一步")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.3;0.4:5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.3;0.4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("99999999",gg.TYPE_FLOAT)
gg.toast("范围第二步")
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.55;0.2:10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2;0.55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("99999999",gg.TYPE_FLOAT)
gg.toast("范围开启成功")
end



function a10()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1003D;4003D;1.5F~1.7F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5~2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("克里克无限子弹")
	 end
	 
	 
	 
	 function a11()
	gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("10031D;5;85;5~40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5~40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("转圈圈的快乐(✪▽✪)")
end
	 
	 
	 
function a12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10083D;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("第一步开启成功")
end


function a13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;85;1~10::100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1~10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("第二步开启成功")
end

function a14()
gg.clearResults(5000)
gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("15", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults(5000)
end



function a15()
gg.clearResults(5000)
gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.getResults(5000)
end


function a16()
gg.clearResults(5000)
gg.searchNumber("0.70710676908;0.00999999978;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.getResults(5000)
end



function a17()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults(5000)
gg.searchNumber('0.15', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.15', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll('999999999', gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults(5000)
end

function a18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("111", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
	 HS1()
	 
end

function HS1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.0078125E;1F;0.33333334327F::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("加速15倍开启成功")
	 gg.clearResults()
end

function exit()
local Zyiubb5 = gg.alert("确定退出脚本？\n您关闭脚本再打开需要一段时间。","确认退出","复制账号","")
if Zyiubb5 == nil then ZyZs() end
if Zyiubb5 == 1 then
gg.clearResults()
gg.toast("已退出本脚本，感谢你的使用")
print("")
os.exit()
end
if Zyiubb5 == 2 then
gg.alert("8848钛合金手机")
end
if Zyiubb5 == 3 then
gg.copyText("8848太监手机")
end
end

repeat
  if gg.isVisible(true) then
    ttqka=1
    gg.setVisible(false)
  end
  if ttqka==1 then
    DZSH()
  end
until false


                       