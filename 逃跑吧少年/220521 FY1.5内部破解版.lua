--function lq()
gg.alert("★欢迎使用风影逃跑内部脚本破解版★")
--[[gg.copyText("https://521.kim/QqPI")
gg.alert("★已复制风影发卡网链接★\n★打开浏览器搜索链接即可★")
function unXXX(str64)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local temp={}
    for i=1,64 do
        temp[string.sub(b64chars,i,i)] = i
    end
    temp['=']=0
    local str=""
    for i=1,#str64,4 do
        if i>#str64 then
            break
        end
        local data = 0
        local str_count=0
        for j=0,3 do
            local str1=string.sub(str64,i+j,i+j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1]-1
                str_count = str_count + 1
            end
        end
        for j=16,0,-8 do
            if str_count > 0 then
                str=str..string.char(math.floor(data/math.pow(2,j)))
                data=math.fmod(data,math.pow(2,j))
                str_count = str_count - 1
            end
        end
    end
 
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    ddd=str
end
 lqSJ = math.random(2685355,99999999)
 lqc=io.open('/storage/emulated/0/.41269806_1','r')
 if lqc == nil then
   lqc=io.open('/storage/emulated/0/Android/.41269806_int','w')
   lqc:write(lqSJ*6-967)
   lqc=io.open('/storage/emulated/0/.41269806_1','w')
   lqc:write(lqSJ*6-967)
   lqd = io.open('/storage/emulated/0/Android/.41269806_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 else
  abc=io.open('/storage/emulated/0/Android/.41269806_int','w')
  if abc == nil then
   lqdd = io.open('/storage/emulated/0/.41269806_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   lqd = io.open('/storage/emulated/0/Android/.41269806_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.41269806_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
   lqdd = io.open('/storage/emulated/0/.41269806_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   yanzheng = lqdm == lqdmm
   if yanzheng == true then print("") else
   lqd = io.open('/storage/emulated/0/Android/.41269806_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.41269806_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 end
 lqdm = (lqdm + 967)/6
 lqs = io.open('/storage/emulated/0/Android/.41269806_1_dll','r')
 if lqs == nil then
   lqsa=gg.alert('请选择激活卡密,如果否定请退出','激活卡密','退出')
   if lqsa ~= 1 then print('激活失败') os.exit()
   else
     lqv = gg.prompt({'[FY]逃跑内部脚本\n风影发卡网链接:https://521.kim/QqPI\n打开浏览器搜索链接\n购买即可\n只有永久卡\n永久卡10r\n进入内部群找群主免费获得永久卡密\n内部群还有很多福利\n内部群25r\n一定要看商品说明和使用说明,不然后果自负!!![慎重购买,概不退货]\n请输入您的激活码:','您的专属机器码是: ' .. lqdm},{[1]='',[2]= lqdm },{[1] = 'text',[2] = 'text'})
     if lqv == nil then print('运行失败') os.exit() end
     if lqv[1] == '' then print('卡密不能为空') os.exit() end
     unXXX(lqv[1])
     if ddd==lqv[1] then gg.toast('请输入正确的激活码格式') os.exit() end
     local lqB = ddd
     local lqC = lqdm
     if lqv[1]==ddd then gg.toast('请输入正确的激活码格式') os.exit() end
     pd = tonumber(lqB)
     if pd ~= lqB then gg.toast('请输入正确的激活码格式') os.exit() end
     lqD = pd
     lqA = lqD
     unXXX("MTU0NzQ2")
          zcj = tonumber(ddd)
     if zcj ~= ddd then gg.toast('激活码错误') os.exit() end
     aaa = (1*lqdm+zcj)..''
     bbb = (7*lqdm+zcj)..''
     ccc = (30*lqdm+zcj)..''
     ddd = (5000*lqdm+zcj)..''
     if lqA == aaa then
     aaaa = 1
     gg.alert('激活码情况: 恭喜激活天卡 谢谢使用','确定')
     else
       if lqA == bbb then
       aaaa = 7
       gg.alert('激活码情况: 恭喜激活周卡 谢谢使用','确定')
       else
         if lqA == ccc then
         aaaa = 30
         gg.alert('激活码情况: 恭喜激活月卡 谢谢使用','确定')
         else
         if lqA == ddd then
         aaaa = 5000
         gg.alert('激活码情况: 恭喜激活永久卡 谢谢使用','确定')
         else
           gg.alert('激活码错误 请加作者购买激活码') os.exit()
         end
       end
     end
   end
   end
   ms = aaaa*24*60*60
   Yz = ((os.time() + ms)*lqdm)+lqdm..''
   Yza = Yz
   Yzb =io.open('/storage/emulated/0/Android/.41269806_1_dll','w')
   Yzb:write(Yza)
   Yzb:close()
   Yzb =io.open('/storage/emulated/0/.41269806_2','w')
   Yzb:write(100000000-(Yza-lqdm))
   Yzb:close()
 else
   Yzb =io.open('/storage/emulated/0/.41269806_2','r')
   if Yzb == nil then
   os.remove("/storage/emulated/0/.41269806_2")    
   os.remove("/storage/emulated/0/Android/.41269806_1_dll")
   os.remove("/storage/emulated/0/.41269806_1")    
   os.remove("/storage/emulated/0/Android/.41269806_int")
   os.exit()
   end
   YZZZ=Yzb:read('*a')
   Yzb:close()
   Yzd=io.open('/storage/emulated/0/Android/.41269806_1_dll','r')
   Yzda=Yzd:read('*a')
   Yzd:close()
   YZYZ=Yzda-lqdm+YZZZ
   if YZYZ ~=100000000 then
   os.remove("/storage/emulated/0/.41269806_2")    
   os.remove("/storage/emulated/0/Android/.41269806_1_dll")
   os.remove("/storage/emulated/0/.41269806_1")    
   os.remove("/storage/emulated/0/Android/.41269806_int")
   print("您恶意更改了内容")
   os.exit()
   end
   Yzd=io.open('/storage/emulated/0/Android/.41269806_1_dll','r')
   Yzda=Yzd:read('*a')
   Yzd:close()
   Yzf = os.time()
   Yzda = (Yzda-lqdm)/lqdm
   YZZ = Yzda
   YZA = (Yzda - Yzf)/3600/24
   YZB = YZA*24*3600
    YZC = (Yzda - Yzf -YZB)/60/60
    YZD = YZC*3600
    YZE = (Yzda - Yzf -YZB - YZD)/60
    YZF = YZE*60
    YZG = Yzda - Yzf -YZB - YZD -YZF
   if Yzda > Yzf then gg.alert('登录成功   当前剩余时间 '.. YZA ..'天' .. YZC .. '小时' .. YZE .. '分钟' .. YZG .. '秒')
     else
       gg.alert('不好意思,您的余额已欠费,请缴费后使用')
   os.remove("/storage/emulated/0/.41269806_2")    
   os.remove("/storage/emulated/0/Android/.41269806_1_dll")
   os.remove("/storage/emulated/0/.41269806_1")    
   os.remove("/storage/emulated/0/Android/.41269806_int")
       os.exit()
     end
 end
end
lq()]]
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

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
           gg.toast("\n共修改"..#data.."条数据")
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
            gg.toast("\n开启失败", false)
            return false
        end
    else
        gg.toast("\n开启失败")
        return false
    end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器

function Main()
menu = gg.choice({
	 "☆逃生内部区☆",
	 "☆追捕内部区☆",
	 "☆其他功能区☆",
	 "☆过青铜区☆",
	 "☆内部逃跑防☆",
	 "☆全版本通用防闪☆",
	 "☆美化道具皮肤区☆",
	 "☆FY逃跑交流区☆",
	 "️✘️退出脚本️✘️",
}, nil, os.date("★欢迎使用[FY]逃跑内部脚本★\n★目前时间:%Y年/️%m月/%d日%H:%M:%S★"))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then H() end
if menu == 9 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
"★实体金币[稳定]★",
"★实体金币[关闭]★",
"★3倍开锁[超稳定]★",
"★3.8倍移速[超稳定]★",
"★高跳[超稳定]★",
"★锁血[半稳]★",
"★明透[稳定]★",
"★范围锁门人[稳定]★",
"★增大视野范围[超稳定]★",
"★增大道具释放范围[稳定]★",
"★1.5倍全局加速[超稳定]★",
"★1.5倍全局加速[关闭]★",
"★xa无后坐力[稳定]★",
"★xa无后坐力[关闭]★",
"️☆返回主页️☆",
}, nil, os.date("★逃生内部区★"))
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
if menu1[15] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
"★明透[稳定]★",
"★增大视野范围[超稳定]★",
"★增大道具释放范围[稳定]★",
"★1.5倍全局加速[超稳定]★",
"★1.5倍全局加速[关闭]★",
"★xa无后坐力[稳定]★",
"★xa无后坐力[关闭]★",
"️☆返回主页☆",
}, nil, os.date("★追捕内部区★"))
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
"★医疗箱微范围★",
"★疾跑微加速★",
"★手榴弹微范围★",
"★增大手榴弹伤害★",
"★踩夹子微加速★",
"★踩夹子不减速★",
"★实体金币[大]★",
"★实体金币[大][关闭]★",
"★开启延迟★",
"★关闭延迟★",
"★4v1吸人★",
"★8v2吸人★",
"★锁金币无冷却★",
"★关闭锁金币无冷却★",
"★开局小量金币★",
"★开局大量金币★",
"★8v2秒赢★",
"★4v1秒赢★",
"★开门加速★",
"★增加血量★",
"★1秒开补给箱夹子★",
"★部分武器100连发★",
"★部分武器100连发[关闭]★",
"★显示夹子范围★",
"★全图禁闭室★",
"★震荡波定人★",
"★震荡波释放范围★",
"★震荡波小范围★",
"★震荡波大范围★",
"★震荡波瞬移★",
"★震荡波全屏范围★",
"★震荡波定人[关闭]★",
"★震荡波瞬移[关闭]★",
"★弹簧拳套无冷却★",
"★跳跳杆远跳★",
"★跳跳杆最大远跳★",
"★跳跳杆秒落地★",
"★跳跳杆远跳反弹★",
"★跳跳杆跳高★",
"★弹簧拳套无后坐力★",
"★弹簧拳套拉长★",
"★弹簧拳套增大击退距离★",
"★弹簧拳套最大击退距离★",
"★弹簧拳套定人★",
"★完美开锁★",
"★移动点锁位置★",
"★减慢开锁指针速度★",
"★0概率触发开锁★",
"★流畅点锁★",
"️☆返回主页☆",
}, nil, os.date("★其他功能区★"))
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then c19() end
if menu1[20] == true then c20() end
if menu1[21] == true then c21() end
if menu1[22] == true then c22() end
if menu1[23] == true then c23() end
if menu1[24] == true then c24() end
if menu1[25] == true then c25() end
if menu1[26] == true then c26() end
if menu1[27] == true then c27() end
if menu1[28] == true then c28() end
if menu1[29] == true then c29() end
if menu1[30] == true then c30() end
if menu1[31] == true then c31() end
if menu1[32] == true then c32() end
if menu1[33] == true then c33() end
if menu1[34] == true then c34() end
if menu1[35] == true then c35() end
if menu1[36] == true then c36() end
if menu1[37] == true then c37() end
if menu1[38] == true then c38() end
if menu1[39] == true then c39() end
if menu1[40] == true then c40() end
if menu1[41] == true then c41() end
if menu1[42] == true then c42() end
if menu1[43] == true then c43() end
if menu1[44] == true then c44() end
if menu1[45] == true then c45() end
if menu1[46] == true then c46() end
if menu1[47] == true then c47() end
if menu1[48] == true then c48() end
if menu1[49] == true then c49() end
if menu1[50] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
"★4v1激活逃生门[逃生]★",
"★秒开一切[逃生]★",
"★10倍移速[逃生]★",
"★2倍全局加速[逃生]★",
"★锁血[逃生]★",
"★手雷全屏秒杀[追捕]★",
"️☆返回主页☆",
}, nil, os.date("★过青铜区★"))
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
"★内部逃跑防[大厅开]★",
"️☆返回主页☆",
}, nil, os.date("★内部逃跑防★"))
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end



function F()
menu1 = gg.multiChoice({
"★防闪[登入界面开]★",
"️☆返回主页☆",
}, nil, os.date("★全版本通用防闪★"))
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end



function G()
menu1 = gg.multiChoice({
"★治疗球集卡活动皮肤★",
"★飞爪氪金皮肤★",
"★小灰机赛季宝藏皮肤★",
"★生命护盾氪金皮肤★",
"★皮卡赛季宝藏皮肤★",
"★火箭筒集卡活动皮肤★",
"★火箭筒集卡活动皮肤2★",
"★火箭筒集卡活动皮肤3★",
"★冲锋枪签到活动皮肤★",
"★冲锋枪签到活动皮肤2★",
"★冲锋枪签到活动皮肤3★",
"★蹦蹦枪氪金皮肤★",
"★蹦蹦枪氪金皮肤2★",
"★蹦蹦枪氪金皮肤3★",
"★迫击炮赛季宝藏皮肤★",
"★迫击炮赛季宝藏皮肤2★",
"★迫击炮赛季宝藏皮肤3★",
"★肾上腺素赛季宝藏皮肤★",
"★滑板新年皮肤★",
"★生命护盾新年皮肤★",
"★肾上腺素汤圆皮肤★",
"★飞爪鲨鱼皮肤★",
"★能量腕炮4级皮肤★",
"★能量腕炮4级皮肤2★",
"★能量腕炮4级皮肤3★",
"★能量腕炮7级皮肤★",
"★能量腕炮7级皮肤2★",
"★能量腕炮7级皮肤3★",
"★跳跳杆4级皮肤★",
"★弹簧拳套4级皮肤★",
"★小灰机赛季宝藏皮肤[风格]★",
"★皮卡赛季宝藏皮肤[风格]★",
"★肾上腺素赛季宝藏皮肤[风格]★",
"★迫击炮赛季宝藏皮肤[风格]★",
"★迫击炮赛季宝藏皮肤[风格]2★",
"★迫击炮赛季宝藏皮肤[风格]3★",
"★能量腕炮7级皮肤[风格]★",
"★能量腕炮7级皮肤[风格]2★",
"★能量腕炮7级皮肤[风格]3★",
"️☆返回主页☆",
}, nil, os.date("★美化道具皮肤区★"))
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then g5() end
if menu1[6] == true then g6() end
if menu1[7] == true then g7() end
if menu1[8] == true then g8() end
if menu1[9] == true then g9() end
if menu1[10] == true then g10() end
if menu1[11] == true then g11() end
if menu1[12] == true then g12() end
if menu1[13] == true then g13() end
if menu1[14] == true then g14() end
if menu1[15] == true then g15() end
if menu1[16] == true then g16() end
if menu1[17] == true then g17() end
if menu1[18] == true then g18() end
if menu1[19] == true then g19() end
if menu1[20] == true then g20() end
if menu1[21] == true then g21() end
if menu1[22] == true then g22() end
if menu1[23] == true then g23() end
if menu1[24] == true then g24() end
if menu1[25] == true then g25() end
if menu1[26] == true then g26() end
if menu1[27] == true then g27() end
if menu1[28] == true then g28() end
if menu1[29] == true then g29() end
if menu1[30] == true then g30() end
if menu1[31] == true then g31() end
if menu1[32] == true then g32() end
if menu1[33] == true then g33() end
if menu1[34] == true then g34() end
if menu1[35] == true then g35() end
if menu1[36] == true then g36() end
if menu1[37] == true then g37() end
if menu1[38] == true then g38() end
if menu1[39] == true then g39() end
if menu1[40] == true then HOME() end
end
GLWW=-1
end



function H()
menu1 = gg.multiChoice({
"★复制交流群号[点击]★",
"️☆返回主页️☆",
}, nil, os.date("逃跑玩家交流群[1]\n622195270\n逃跑玩家交流群[2]\n957673750\n逃跑玩家交流群[3]\n338303208"))
if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end



function h1()
gg.copyText("★逃跑玩家交流群[1]★622195270★逃跑玩家交流群[2]★957673750★逃跑玩家交流群[3]★338303208")
gg.alert("★交流群号已复制成功★\n★打开qq搜索群号即可★")
end



function f1()--全版本通用防闪
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("1,886,680,168;791,624,307;-2000000000~-666666", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("-2000000000~-666666",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0", DWORD)
gg.toast("全版本通用防闪开启成功")
gg.clearResults()
end
end



function a1()--实体金币
gg.alert("✨温馨提示✨\n开启后,开补给箱和夹子就可以获得大量的金币了,记得关闭,不然封号,会玩的自然稳定","★确定★")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", FLOAT)
gg.toast("实体金币开启成功")
gg.clearResults()
end
end



function a2()--实体金币[关闭]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0.6875", FLOAT)
gg.toast("实体金币关闭成功")
gg.clearResults()
end
end



function a3()--3倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function a4()--3.8倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function a5()--高跳
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function a6()--锁血
qmnb = {
{["memory"] = 32},
{["name"] = "锁血"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
{["value"] = -1,["offset"] =4, ["type"] = 4},
}
xqmnb(qmnb)
end


function a7()--明透
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function a8()--范围锁门人
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("3", FLOAT)
gg.toast("范围锁门人开启成功")
gg.clearResults()
end
end



function a9()--增大视野范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 1,["offset"] =4, ["type"] = 4},
{["lv"] = 10.0,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function a10()--增大道具释放范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大道具释放范围"},
{["value"] = -0.25, ["type"] = 16},
{["lv"] = 6.0,["offset"] =-0x84, ["type"] = 16},
}
qmxg = {
{["value"] = 9,["offset"] =-0x84, ["type"] = 16},
}
xqmnb(qmnb)
end



function a11()--1.5倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.5倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function a12()--1.5倍全局加速[关闭]
qmnb = {
{["memory"] = 4},
{["name"] = "1.5倍全局加速[关闭]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function a13()--xa无后坐力
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力"},
{["value"] = 981668463, ["type"] = 4},
{["lv"] = 29032048,["offset"] =4, ["type"] = 4},
{["lv"] = 29032584,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 1073741824,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end



function a14()--xa无后坐力[关闭]
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力[关闭]"},
{["value"] = 1073741824, ["type"] = 4},
{["lv"] = 29032048,["offset"] =4, ["type"] = 4},
{["lv"] = 29032584,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 981668463,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end



function b1()--明透
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function b2()--增大视野范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 1,["offset"] =4, ["type"] = 4},
{["lv"] = 10.0,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function b3()--增大道具释放范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大道具释放范围"},
{["value"] = -0.25, ["type"] = 16},
{["lv"] = 6.0,["offset"] =-0x84, ["type"] = 16},
}
qmxg = {
{["value"] = 9,["offset"] =-0x84, ["type"] = 16},
}
xqmnb(qmnb)
end



function b4()--1.5倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.5倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function b5()--1.5倍全局加速[关闭]
qmnb = {
{["memory"] = 4},
{["name"] = "1.5倍全局加速[关闭]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function b6()--xa无后坐力
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力"},
{["value"] = 981668463, ["type"] = 4},
{["lv"] = 29032048,["offset"] =4, ["type"] = 4},
{["lv"] = 29032584,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 1073741824,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end



function b7()--xa无后坐力[关闭]
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力[关闭]"},
{["value"] = 1073741824, ["type"] = 4},
{["lv"] = 29032048,["offset"] =4, ["type"] = 4},
{["lv"] = 29032584,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 981668463,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end



function c1()--医疗箱微范围
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱微范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c2()--疾跑微加速
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑微加速"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 6.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c3()--手榴弹微范围
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹微范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 2.3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c4()--增大手榴弹伤害
qmnb = {
{["memory"] = 32},
{["name"] = "增大手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 50,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c5()--踩夹子微加速
qmnb = {
{["memory"] = 32},
{["name"] = "踩夹子微加速"},
{["value"] = -0.75, ["type"] = 16},
{["lv"] = 6.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 0.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c6()--踩夹子不减速
qmnb = {
{["memory"] = 32},
{["name"] = "踩夹子不减速"},
{["value"] = -0.75, ["type"] = 16},
{["lv"] = 6.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c7()--实体金币[大]
gg.alert("✨温馨提示✨\n开启后,开补给箱和夹子就可以获得大量的金币了,记得关闭,不然封号,会玩的自然稳定","★确定★")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("实体金币[大]开启成功")
gg.clearResults()
end
end



function c8()--实体金币[大][关闭]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0.6875", FLOAT)
gg.toast("实体金币[大]关闭成功")
gg.clearResults()
end
end



function c9()--开启延迟
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("666", FLOAT)
gg.toast("延迟开启成功")
gg.clearResults()
end
end



function c10()--关闭延迟
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("666", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1000", FLOAT)
gg.toast("延迟关闭成功")
gg.clearResults()
end
end



function c11()--4v1吸人
qmnb = {
{["memory"] = 32},
{["name"] = "4v1吸人"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 30,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c12()--8v2吸人
qmnb = {
{["memory"] = 32},
{["name"] = "8v2吸人"},
{["value"] = 39, ["type"] = 4},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 88,["offset"] =-4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c13()--锁金币无冷却
qmnb = {
{["memory"] = 32},
{["name"] = "锁金币无冷却"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 102,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end



function c14()--关闭锁金币无冷却
qmnb = {
{["memory"] = 32},
{["name"] = "关闭锁金币无冷却"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 0,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 102,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end



function c15()--开局小量金币
qmnb = {
{["memory"] = 32},
{["name"] = "开局小量金币"},
{["value"] = 3840, ["type"] = 4},
{["lv"] = 100,["offset"] =88, ["type"] = 4},
}
qmxg = {
{["value"] = 1500,["offset"] =88, ["type"] = 4},
}
xqmnb(qmnb)
end



function c16()--开局大量金币
qmnb = {
{["memory"] = 32},
{["name"] = "开局大量金币"},
{["value"] = 3840, ["type"] = 4},
{["lv"] = 100,["offset"] =88, ["type"] = 4},
}
qmxg = {
{["value"] = 99999,["offset"] =88, ["type"] = 4},
}
xqmnb(qmnb)
end



function c17()--8v2秒赢
gg.timeJump("17:50")
end



function c18()--4v1秒赢
gg.timeJump("14:50")
end



function c19()--开门加速
qmnb = {
{["memory"] = 32},
{["name"] = "开门加速"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = 6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c20()--增加血量
qmnb = {
{["memory"] = 32},
{["name"] = "增加血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 1200,["offset"] =-20, ["type"] = 16},
{["value"] = 1200,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end



function c21()--1秒开补给箱夹子
qmnb = {
{["memory"] = 32},
{["name"] = "1秒开补给箱夹子"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 5.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 1,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c22()--部分武器100连发
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器100连发"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end



function c23()--部分武器100连发[关闭]
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器100连发[关闭]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end



function c24()--显示夹子范围
qmnb = {
{["memory"] = 32},
{["name"] = "显示夹子范围"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-12, ["type"] = 16},
}
xqmnb(qmnb)
end



function c25()--全图禁闭室
qmnb = {
{["memory"] = 32},
{["name"] = "全图禁闭室"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c26()--震荡波定人
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波定人"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c27()--震荡波释放范围
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波释放范围"},
{["value"] = 7.0, ["type"] = 16},
{["lv"] = 7.0,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c28()--震荡波小范围
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波小范围"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
{["value"] = 3,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c29()--震荡波大范围
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波大范围"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6,["offset"] =0, ["type"] = 16},
{["value"] = 6,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c30()--震荡波瞬移
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波瞬移"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c31()--震荡波全屏范围
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波全屏范围"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c32()--震荡波定人[关闭]
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波定人[关闭]"},
{["value"] = 9999, ["type"] = 16},
{["lv"] = 4.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.30000001192092896, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c33()--震荡波瞬移[关闭]
qmnb = {
{["memory"] = 32},
{["name"] = "震荡波瞬移[关闭]"},
{["value"] = 9999, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 4.0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c34()--弹簧拳套无冷却
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套无冷却"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 13,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c35()--跳跳杆远跳
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆远跳"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c36()--跳跳杆最大远跳
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆最大远跳"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end



function c37()--跳跳杆秒落地
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆秒落地"},
{["value"] = 1025, ["type"] = 4},
{["lv"] = 0.5,["offset"] =-36, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-36, ["type"] = 16},
}
xqmnb(qmnb)
end



function c38()--跳跳杆远跳反弹
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆远跳反弹"},
{["value"] = 1025, ["type"] = 4},
{["lv"] = 0.75,["offset"] =-32, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-32, ["type"] = 16},
}
xqmnb(qmnb)
end



function c39()--跳跳杆跳高
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆跳高"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 1025,["offset"] =28, ["type"] = 4},
}
qmxg = {
{["value"] = 10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c40()--弹簧拳套无后坐力
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套无后坐力"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c41()--弹簧拳套拉长
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套拉长"},
{["value"] = 0.30000001192, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c42()--弹簧拳套增大击退距离
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套增大击退距离"},
{["value"] = 0.23000000417, ["type"] = 16},
{["lv"] = 4.5,["offset"] =-32, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =-32, ["type"] = 16},
}
xqmnb(qmnb)
end



function c43()--弹簧拳套最大击退距离
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套增大击退距离"},
{["value"] = 0.23000000417, ["type"] = 16},
{["lv"] = 4.5,["offset"] =-32, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =-32, ["type"] = 16},
}
xqmnb(qmnb)
end



function c44()--弹簧拳套定人
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套定人"},
{["value"] = 0.23000000417, ["type"] = 16},
{["lv"] = 4.5,["offset"] =-28, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-28, ["type"] = 16},
}
xqmnb(qmnb)
end



function c45()--完美开锁
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c46()--移动点锁位置
qmnb = {
{["memory"] = 32},
{["name"] = "移动点锁位置"},
{["value"] = -280.0, ["type"] = 16},
{["lv"] = -160.0,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
{["value"] = 0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end



function c47()--减慢开锁指针速度
qmnb = {
{["memory"] = 32},
{["name"] = "减慢开锁指针速度"},
{["value"] = 230.0, ["type"] = 16},
{["lv"] = 59.0,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function c48()--0概率触发开锁
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end



function c49()--流畅点锁
qmnb = {
{["memory"] = 32},
{["name"] = "流畅点锁"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 59.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function d1()--4v1激活逃生门[逃生]
qmnb = {
{["memory"] = 32},
{["name"] = "4v1激活逃生门[逃生]"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function d2()--秒开一切[逃生]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("秒开一切[逃生]开启成功")
gg.clearResults()
end
end



function d3()--10倍移速[逃生]
qmnb = {
{["memory"] = 32},
{["name"] = "10倍移速[逃生]"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function d4()--2倍全局加速[逃生]
qmnb = {
{["memory"] = 4},
{["name"] = "2倍全局加速[逃生]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 2.0,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function d5()--锁血[逃生]
qmnb = {
{["memory"] = 32},
{["name"] = "锁血[逃生]"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
{["value"] = -1,["offset"] =4, ["type"] = 4},
}
xqmnb(qmnb)
end



function d6()--手雷全屏秒杀[追捕]
qmnb = {
{["memory"] = 32},
{["name"] = "手雷全屏秒杀[追捕]"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end



function e1()--内部逃跑防
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("17585", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("11253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("15992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16046", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("12906", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("内部逃跑防开启成功")
gg.clearResults()
end



function g1()--治疗球集卡活动皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501200", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601461", DWORD)
gg.toast("治疗球集卡活动皮肤美化成功")
gg.clearResults()
end
end



function g2()--飞爪氪金皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500500", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601466", DWORD)
gg.toast("飞爪氪金皮肤美化成功")
gg.clearResults()
end
end



function g3()--小灰机赛季宝藏皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501700", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601471", DWORD)
gg.toast("小灰机赛季宝藏皮肤美化成功")
gg.clearResults()
end
end



function g4()--生命护盾氪金皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500007", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601476", DWORD)
gg.toast("生命护盾氪金皮肤美化成功")
gg.clearResults()
end
end



function g5()--皮卡赛季宝藏皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500002", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601486", DWORD)
gg.toast("皮卡赛季宝藏皮肤美化成功")
gg.clearResults()
end
end



function g6()--火箭筒集卡活动皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500010", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601491", DWORD)
gg.toast("火箭筒集卡活动皮肤美化成功")
gg.clearResults()
end
end



function g7()--火箭筒集卡活动皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500011", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601491", DWORD)
gg.toast("火箭筒集卡活动皮肤2美化成功")
gg.clearResults()
end
end



function g8()--火箭筒集卡活动皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500012", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601491", DWORD)
gg.toast("火箭筒集卡活动皮肤3美化成功")
gg.clearResults()
end
end



function g9()--冲锋枪签到活动皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500030", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601496", DWORD)
gg.toast("冲锋枪签到活动皮肤美化成功")
gg.clearResults()
end
end



function g10()--冲锋枪签到活动皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500031", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601496", DWORD)
gg.toast("冲锋枪签到活动皮肤2美化成功")
gg.clearResults()
end
end



function g11()--冲锋枪签到活动皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500032", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601496", DWORD)
gg.toast("冲锋枪签到活动皮肤3美化成功")
gg.clearResults()
end
end



function g12()--蹦蹦枪氪金皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500050", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601501", DWORD)
gg.toast("蹦蹦枪氪金皮肤美化成功")
gg.clearResults()
end
end



function g13()--蹦蹦枪氪金皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500051", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601501", DWORD)
gg.toast("蹦蹦枪氪金皮肤2美化成功")
gg.clearResults()
end
end



function g14()--蹦蹦枪氪金皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500052", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601501", DWORD)
gg.toast("蹦蹦枪氪金皮肤3美化成功")
gg.clearResults()
end
end



function g15()--迫击炮赛季宝藏皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500020", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601506", DWORD)
gg.toast("迫击炮赛季宝藏皮肤美化成功")
gg.clearResults()
end
end



function g16()--迫击炮赛季宝藏皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500021", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601506", DWORD)
gg.toast("迫击炮赛季宝藏皮肤2美化成功")
gg.clearResults()
end
end



function g17()--迫击炮赛季宝藏皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500022", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601506", DWORD)
gg.toast("迫击炮赛季宝藏皮肤3美化成功")
gg.clearResults()
end
end



function g18()--肾上腺素赛季宝藏皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500300", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601511", DWORD)
gg.toast("肾上腺素赛季宝藏皮肤美化成功")
gg.clearResults()
end
end



function g19()--滑板新年皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500900", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601521", DWORD)
gg.toast("滑板新年皮肤美化成功")
gg.clearResults()
end
end



function g20()--生命护盾新年皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500007", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601526", DWORD)
gg.toast("生命护盾新年皮肤美化成功")
gg.clearResults()
end
end



function g21()--肾上腺素汤圆皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500300", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601531", DWORD)
gg.toast("肾上腺素汤圆皮肤美化成功")
gg.clearResults()
end
end



function g22()--飞爪鲨鱼皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500500", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601551", DWORD)
gg.toast("飞爪鲨鱼皮肤美化成功")
gg.clearResults()
end
end



function g23()--能量腕炮4级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500060", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601556", DWORD)
gg.toast("能量腕炮4级皮肤美化成功")
gg.clearResults()
end
end



function g24()--能量腕炮4级皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500061", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601556", DWORD)
gg.toast("能量腕炮4级皮肤2美化成功")
gg.clearResults()
end
end



function g25()--能量腕炮4级皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500062", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601556", DWORD)
gg.toast("能量腕炮4级皮肤3美化成功")
gg.clearResults()
end
end



function g26()--能量腕炮7级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500060", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601561", DWORD)
gg.toast("能量腕炮7级皮肤美化成功")
gg.clearResults()
end
end



function g27()--能量腕炮7级皮肤2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500061", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601561", DWORD)
gg.toast("能量腕炮7级皮肤2美化成功")
gg.clearResults()
end
end



function g28()--能量腕炮7级皮肤3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500062", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601561", DWORD)
gg.toast("能量腕炮7级皮肤3美化成功")
gg.clearResults()
end
end



function g29()--跳跳杆4级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501900", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601566", DWORD)
gg.toast("跳跳杆4级皮肤美化成功")
gg.clearResults()
end
end



function g30()--弹簧拳套4级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502000", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601571", DWORD)
gg.toast("弹簧拳套4级皮肤美化成功")
gg.clearResults()
end
end



function g31()--小灰机赛季宝藏皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501700", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650571", DWORD)
gg.toast("小灰机赛季宝藏皮肤[风格]美化成功")
gg.clearResults()
end
end



function g32()--皮卡赛季宝藏皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500002", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650581", DWORD)
gg.toast("皮卡赛季宝藏皮肤[风格]美化成功")
gg.clearResults()
end
end



function g33()--肾上腺素赛季宝藏皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500300", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650591", DWORD)
gg.toast("肾上腺素赛季宝藏皮肤[风格]美化成功")
gg.clearResults()
end
end



function g34()--迫击炮赛季宝藏皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500020", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650601", DWORD)
gg.toast("迫击炮赛季宝藏皮肤[风格]美化成功")
gg.clearResults()
end
end



function g35()--迫击炮赛季宝藏皮肤[风格]2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500021", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650601", DWORD)
gg.toast("迫击炮赛季宝藏皮肤[风格]2美化成功")
gg.clearResults()
end
end



function g36()--迫击炮赛季宝藏皮肤[风格]3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500022", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650601", DWORD)
gg.toast("迫击炮赛季宝藏皮肤[风格]3美化成功")
gg.clearResults()
end
end



function g37()--能量腕炮7级皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500060", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650611", DWORD)
gg.toast("能量腕炮7级皮肤[风格]美化成功")
gg.clearResults()
end
end



function g38()--能量腕炮7级皮肤[风格]2
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500061", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650611", DWORD)
gg.toast("能量腕炮7级皮肤[风格]2美化成功")
gg.clearResults()
end
end



function g39()--能量腕炮7级皮肤[风格]3
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500062", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650611", DWORD)
gg.toast("能量腕炮7级皮肤[风格]3美化成功")
gg.clearResults()
end
end








function Exit()
print("★[FY]逃跑内部脚本已结束★")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = ''
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
