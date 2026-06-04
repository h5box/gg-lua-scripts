--你想干什么盗脚本？诶我有反编码你气不气？
mima = "WER5N5"
v_value = gg.prompt({
  "🌙密码WER5N5🌙"
  }, {
    [1] = 0
    }, {
      [1] = "number"
      })
      function m()
        print("卡密✔️")
        end
        function end_c()
          print("卡密❌")
            os.exit()
            end
            if v_value[1] == mima then
              m()
              else
                end_c()
                end
gg.alert("秒欢迎使用此脚本✔作者:歌脚本，作者QQ:291863684","进入")

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
'🔰防封区🔰',
'🔴逃生区🔴',
'👣追捕区👣',
'♋逃生天赋区♋',
'🌟追捕天赋区🌟',
'🌈设备解封🌈',
'🐬退出脚本🐬'},
2018,'')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'①.O防封🔵',
'②.O防封🔵',
'③.Xs防封🔵',
'④.Xa防封🔵',
'⑤.Cd防封🔵',
'⑥.静态防封🔵',
'返回上一页🔵'},
nil,'')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'1.🔴稳定透视🔴',
'2.🔴护盾加血🔴',
'3.🔴范围开锁🔴',
'4.️🔴人物移速🔴',
'5.🔴开锁加速🔴',
'6.🔴变态秒赢🔴',
'7.🔴人物高跳🔴',
'8.🔴无限金币🔴',
'9.🔴增加血量🔴',
'10.⚫人物回血范围⚫',
'11.⚫低风险上帝视角⚫',
'12.⚫皮卡加速⚫',
'🌈返回上一页🌈'},
nil,'')
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
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'①🖤人物微加速🖤',
'②🖤迫击炮循环范围🖤',
'③🖤迫击炮10发子弹🖤',
'④🖤火箭筒10发子弹🖤',
'⑤🖤追捕透视🖤',
'⑥🖤火箭筒伤害增加🖤',
'⑦🖤开局火箭筒3级🖤',
'🍉返回主页🍉'},
nil,'')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'1.❤️战斗少女❤️',
'2.❤️小狐狸❤️',
'3.❤️水之忍者❤️',
'4.❤️星辰少女❤️',
'⛄返回上一页☃️'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
'1.🎃女特工🎃',
'2.🎃发明家🎃',
'3.🎃小梦魇🎃',
'4.🎃影之忍者🎃',
'🇨🇳返回上一页🇨🇳'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end


function F()
menu1 = gg.multiChoice({
'🌚全版本设备解封🌚',
'🌝返回上一页🌝'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end




function a1()
qmnb = {
{["memory"] = -2080896},--O内存
{["name"] = "O防封①"},
{["value"] = 1952541952, ["type"] = 4},
{["lv"] = 1392538476, ["offset"] = -1000, ["type"] = 4},
{["lv"] = 1702130553, ["offset"] = -996, ["type"] = 4},
{["lv"] = 1128869485, ["offset"] = -992, ["type"] = 4},
{["lv"] = 1634757999, ["offset"] = -988, ["type"] = 4},
{["lv"] = 1818386802, ["offset"] = -984, ["type"] = 4},
{["lv"] = 1866673765, ["offset"] = -980, ["type"] = 4},
{["lv"] = 1953719652, ["offset"] = -264, ["type"] = 4},
{["lv"] = 1952542313, ["offset"] = -260, ["type"] = 4},
{["lv"] = 1097756521, ["offset"] = -256, ["type"] = 4},
{["lv"] = 2036429426, ["offset"] = -252, ["type"] = 4},
{["lv"] = 2035512137, ["offset"] = -100, ["type"] = 4},
{["lv"] = 1986351616, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1702064741, ["offset"] = -52, ["type"] = 4},
{["lv"] = 1952797440, ["offset"] = -48, ["type"] = 4},
{["lv"] = 1769235301, ["offset"] = 96, ["type"] = 4},
{["lv"] = 1734307439, ["offset"] = 100, ["type"] = 4},
{["lv"] = 1130329189, ["offset"] = 104, ["type"] = 4},
{["lv"] = 1684627301, ["offset"] = 692, ["type"] = 4},
{["lv"] = 1953724755, ["offset"] = 992, ["type"] = 4},
{["lv"] = 1127116133, ["offset"] = 996, ["type"] = 4},
{["lv"] = 1701604463, ["offset"] = 1000, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = -1000, ["type"] = 4},
{["value"] = 0, ["offset"] = -996, ["type"] = 4},
{["value"] = 0, ["offset"] = -992, ["type"] = 4},
{["value"] = 0, ["offset"] = -988, ["type"] = 4},
{["value"] = 0, ["offset"] = -984, ["type"] = 4},
{["value"] = 0, ["offset"] = -980, ["type"] = 4},
{["value"] = 0, ["offset"] = -264, ["type"] = 4},
{["value"] = 0, ["offset"] = -260, ["type"] = 4},
{["value"] = 0, ["offset"] = -256, ["type"] = 4},
{["value"] = 0, ["offset"] = -252, ["type"] = 4},
{["value"] = 0, ["offset"] = -100, ["type"] = 4},
{["value"] = 0, ["offset"] = -56, ["type"] = 4},
{["value"] = 0, ["offset"] = -52, ["type"] = 4},
{["value"] = 0, ["offset"] = -48, ["type"] = 4},
{["value"] = 0, ["offset"] = 96, ["type"] = 4},
{["value"] = 0, ["offset"] = 100, ["type"] = 4},
{["value"] = 0, ["offset"] = 104, ["type"] = 4},
{["value"] = 0, ["offset"] = 692, ["type"] = 4},
{["value"] = 0, ["offset"] = 992, ["type"] = 4},
{["value"] = 0, ["offset"] = 996, ["type"] = 4},
{["value"] = 0, ["offset"] = 1000, ["type"] = 4},
}
xqmnb(qmnb)
end

function a2()
qmnb = {
{["memory"] = -2080896},--O内存
{["name"] = "O防封②"},
{["value"] = 11959, ["type"] = 4},
{["lv"] = 60, ["offset"] = -500, ["type"] = 4},
{["lv"] = -341995295, ["offset"] = -492, ["type"] = 4},
{["lv"] = 1895302240, ["offset"] = -488, ["type"] = 4},
{["lv"] = 524289, ["offset"] = -484, ["type"] = 4},
{["lv"] = 975382, ["offset"] = -480, ["type"] = 4},
{["lv"] = -341995295, ["offset"] = -464, ["type"] = 4},
{["lv"] = 1895302240, ["offset"] = -460, ["type"] = 4},
{["lv"] = 524289, ["offset"] = -456, ["type"] = 4},
{["lv"] = 975412, ["offset"] = -452, ["type"] = 4},
{["lv"] = 524289, ["offset"] = -428, ["type"] = 4},
{["lv"] = 974054, ["offset"] = -424, ["type"] = 4},
{["lv"] = 1895302240, ["offset"] = -292, ["type"] = 4},
{["lv"] = 7, ["offset"] = -276, ["type"] = 4},
{["lv"] = -341995295, ["offset"] = -268, ["type"] = 4},
{["lv"] = 1895302240, ["offset"] = -264, ["type"] = 4},
{["lv"] = -341995295, ["offset"] = -44, ["type"] = 4},
{["lv"] = 1895302240, ["offset"] = -40, ["type"] = 4},
{["lv"] = 524289, ["offset"] = -36, ["type"] = 4},
{["lv"] = 975688, ["offset"] = -32, ["type"] = 4},
{["lv"] = 975718, ["offset"] = -4, ["type"] = 4},
{["lv"] = 77, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -492, ["type"] = 4},
{["value"] = -1, ["offset"] = -488, ["type"] = 4},
{["value"] = -1, ["offset"] = -484, ["type"] = 4},
{["value"] = -1, ["offset"] = -480, ["type"] = 4},
{["value"] = -1, ["offset"] = -464, ["type"] = 4},
{["value"] = -1, ["offset"] = -460, ["type"] = 4},
{["value"] = -1, ["offset"] = -456, ["type"] = 4},
{["value"] = -1, ["offset"] = -452, ["type"] = 4},
{["value"] = -1, ["offset"] = -428, ["type"] = 4},
{["value"] = -1, ["offset"] = -424, ["type"] = 4},
{["value"] = -1, ["offset"] = -292, ["type"] = 4},
{["value"] = -1, ["offset"] = -268, ["type"] = 4},
{["value"] = -1, ["offset"] = -264, ["type"] = 4},
{["value"] = -1, ["offset"] = -44, ["type"] = 4},
{["value"] = -1, ["offset"] = -40, ["type"] = 4},
{["value"] = -1, ["offset"] = -36, ["type"] = 4},
{["value"] = -1, ["offset"] = -32, ["type"] = 4},
{["value"] = -1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function a3()
qmnb = {
{["memory"] = 32768},--Xs内存
{["name"] = "Xs防封③"},
{["value"] = -159562176, ["type"] = 4},
{["lv"] = -1610549043, ["offset"] = -700, ["type"] = 4},
{["lv"] = -1660514043, ["offset"] = -696, ["type"] = 4},
{["lv"] = 442113281, ["offset"] = -692, ["type"] = 4},
{["lv"] = -231157758, ["offset"] = -688, ["type"] = 4},
{["lv"] = 1747713793, ["offset"] = -684, ["type"] = 4},
{["lv"] = 521705733, ["offset"] = -680, ["type"] = 4},
{["lv"] = 1745444904, ["offset"] = -676, ["type"] = 4},
{["lv"] = 788795015, ["offset"] = -632, ["type"] = 4},
{["lv"] = -1727669448, ["offset"] = -628, ["type"] = 4},
{["lv"] = 210234112, ["offset"] = -624, ["type"] = 4},
{["lv"] = 94562895, ["offset"] = -188, ["type"] = 4},
{["lv"] = 1177604098, ["offset"] = -184, ["type"] = 4},
{["lv"] = -33230280, ["offset"] = -180, ["type"] = 4},
{["lv"] = 436806148, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1182990023, ["offset"] = 4, ["type"] = 4},
{["lv"] = 16837076, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},
{["value"] = -1, ["offset"] = -700, ["type"] = 4},
{["value"] = -1, ["offset"] = -696, ["type"] = 4},
{["value"] = -1, ["offset"] = -692, ["type"] = 4},
{["value"] = -1, ["offset"] = -688, ["type"] = 4},
{["value"] = -1, ["offset"] = -684, ["type"] = 4},
{["value"] = -1, ["offset"] = -680, ["type"] = 4},
{["value"] = -1, ["offset"] = -676, ["type"] = 4},
{["value"] = -1, ["offset"] = -632, ["type"] = 4},
{["value"] = -1, ["offset"] = -628, ["type"] = 4},
{["value"] = -1, ["offset"] = -624, ["type"] = 4},
{["value"] = -1, ["offset"] = -188, ["type"] = 4},
{["value"] = -1, ["offset"] = -184, ["type"] = 4},
{["value"] = -1, ["offset"] = -180, ["type"] = 4},
{["value"] = -1, ["offset"] = -4, ["type"] = 4},
{["value"] = -1, ["offset"] = 4, ["type"] = 4},
{["value"] = -1, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function a4()
qmnb = {
{["memory"] = 16384},--Xa内存
{["name"] = "Xa防举报④"},
{["value"] = 29538, ["type"] = 4},
{["lv"] = 1752461413, ["offset"] = -10000, ["type"] = 4},
{["lv"] = 1836216142, ["offset"] = -9996, ["type"] = 4},
{["lv"] = 1416850529, ["offset"] = -9992, ["type"] = 4},
{["lv"] = 1970567269, ["offset"] = -9988, ["type"] = 4},
{["lv"] = 17841128, ["offset"] = -9980, ["type"] = 4},
{["lv"] = 1717916255, ["offset"] = -9976, ["type"] = 4},
{["lv"] = 1952671084, ["offset"] = -9972, ["type"] = 4},
{["lv"] = 7237481, ["offset"] = -9968, ["type"] = 4},
{["lv"] = 17841112, ["offset"] = -9964, ["type"] = 4},
{["lv"] = 1767984479, ["offset"] = -9960, ["type"] = 4},
{["lv"] = 2019906670, ["offset"] = -9956, ["type"] = 4},
{["lv"] = 17841096, ["offset"] = -9948, ["type"] = 4},
{["lv"] = 2019906655, ["offset"] = -9944, ["type"] = 4},
{["lv"] = 17841080, ["offset"] = -9936, ["type"] = 4},
{["lv"] = 1986350175, ["offset"] = -9932, ["type"] = 4},
{["lv"] = 17841064, ["offset"] = -9924, ["type"] = 4},
{["lv"] = 1633899359, ["offset"] = -9920, ["type"] = 4},
{["lv"] = 17841048, ["offset"] = -9912, ["type"] = 4},
{["lv"] = 1684099679, ["offset"] = -9908, ["type"] = 4},
{["lv"] = 7566697, ["offset"] = -9904, ["type"] = 4},
{["lv"] = 17841032, ["offset"] = -9900, ["type"] = 4},
{["lv"] = 2019906655, ["offset"] = -9896, ["type"] = 4},
{["lv"] = 17841000, ["offset"] = -9876, ["type"] = 4},
{["lv"] = 1818326623, ["offset"] = -9872, ["type"] = 4},
{["lv"] = 17840976, ["offset"] = -9864, ["type"] = 4},
{["lv"] = 7492568, ["offset"] = -9860, ["type"] = 4},
{["lv"] = 17424764, ["offset"] = -9856, ["type"] = 4},
{["lv"] = -382908176, ["offset"] = -9840, ["type"] = 4},
{["lv"] = -315782384, ["offset"] = -9836, ["type"] = 4},
{["lv"] = -498216872, ["offset"] = -9832, ["type"] = 4},
{["lv"] = -494071744, ["offset"] = -9824, ["type"] = 4},
{["lv"] = -195032337, ["offset"] = -9820, ["type"] = 4},
{["lv"] = -493941203, ["offset"] = -9816, ["type"] = 4},
{["lv"] = -323122416, ["offset"] = -9128, ["type"] = 4},
{["lv"] = -390248208, ["offset"] = -9124, ["type"] = 4},
{["lv"] = -367654856, ["offset"] = -9120, ["type"] = 4},
{["lv"] = -484380672, ["offset"] = -9116, ["type"] = 4},
{["lv"] = 1023680776, ["offset"] = -8996, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8992, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8988, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -8984, ["type"] = 4},
{["lv"] = -16777216, ["offset"] = -8856, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -8840, ["type"] = 4},
{["lv"] = -195015953, ["offset"] = -8500, ["type"] = 4},
{["lv"] = -493940778, ["offset"] = -8496, ["type"] = 4},
{["lv"] = -195007761, ["offset"] = -8492, ["type"] = 4},
{["lv"] = -493941194, ["offset"] = -8488, ["type"] = 4},
{["lv"] = -351261294, ["offset"] = -7932, ["type"] = 4},
{["lv"] = -493933018, ["offset"] = -7928, ["type"] = 4},
{["lv"] = -442559796, ["offset"] = -7924, ["type"] = 4},
{["lv"] = -194901265, ["offset"] = -7920, ["type"] = 4},
{["lv"] = 1065952402, ["offset"] = -7404, ["type"] = 4},
{["lv"] = 1065952402, ["offset"] = -7400, ["type"] = 4},
{["lv"] = 1065952402, ["offset"] = -7396, ["type"] = 4},
{["lv"] = -1140784636, ["offset"] = -7376, ["type"] = 4},
{["lv"] = -493924479, ["offset"] = -6436, ["type"] = 4},
{["lv"] = -509603836, ["offset"] = -6432, ["type"] = 4},
{["lv"] = -350878313, ["offset"] = -6428, ["type"] = 4},
{["lv"] = -442559984, ["offset"] = -6424, ["type"] = 4},
{["lv"] = 7499628, ["offset"] = -5756, ["type"] = 4},
{["lv"] = 17839344, ["offset"] = -5752, ["type"] = 4},
{["lv"] = 1734954079, ["offset"] = -5748, ["type"] = 4},
{["lv"] = 1933669480, ["offset"] = -5744, ["type"] = 4},
{["lv"] = 1684108625, ["offset"] = -5740, ["type"] = 4},
{["lv"] = 17839324, ["offset"] = -5732, ["type"] = 4},
{["lv"] = -527499264, ["offset"] = -5032, ["type"] = 4},
{["lv"] = -444563456, ["offset"] = -5028, ["type"] = 4},
{["lv"] = -350878664, ["offset"] = -5024, ["type"] = 4},
{["lv"] = -442564240, ["offset"] = -5020, ["type"] = 4},
{["lv"] = -444579840, ["offset"] = -4368, ["type"] = 4},
{["lv"] = -493936831, ["offset"] = -4364, ["type"] = 4},
{["lv"] = -350878830, ["offset"] = -4360, ["type"] = 4},
{["lv"] = -442564332, ["offset"] = -4356, ["type"] = 4},
{["lv"] = -527499264, ["offset"] = -4352, ["type"] = 4},
{["lv"] = -444579840, ["offset"] = -4348, ["type"] = 4},
{["lv"] = -493936829, ["offset"] = -4344, ["type"] = 4},
{["lv"] = -350878835, ["offset"] = -4340, ["type"] = 4},
{["lv"] = -442564324, ["offset"] = -4336, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -3476, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -3472, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -3468, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -3464, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -3460, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -3456, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -3452, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -3448, ["type"] = 4},
{["lv"] = -350855565, ["offset"] = -3040, ["type"] = 4},
{["lv"] = -442564192, ["offset"] = -3036, ["type"] = 4},
{["lv"] = -509603835, ["offset"] = -3032, ["type"] = 4},
{["lv"] = -509599740, ["offset"] = -3028, ["type"] = 4},
{["lv"] = -527499264, ["offset"] = -3024, ["type"] = 4},
{["lv"] = -509607931, ["offset"] = -3008, ["type"] = 4},
{["lv"] = -351344718, ["offset"] = -3004, ["type"] = 4},
{["lv"] = -442564220, ["offset"] = -3000, ["type"] = 4},
{["lv"] = -509603835, ["offset"] = -2996, ["type"] = 4},
{["lv"] = -444243968, ["offset"] = -2428, ["type"] = 4},
{["lv"] = -527495167, ["offset"] = -2424, ["type"] = 4},
{["lv"] = -377159671, ["offset"] = -2420, ["type"] = 4},
{["lv"] = -494600116, ["offset"] = -2416, ["type"] = 4},
{["lv"] = 1684960623, ["offset"] = -1820, ["type"] = 4},
{["lv"] = 17837000, ["offset"] = -1812, ["type"] = 4},
{["lv"] = 1766092367, ["offset"] = -1808, ["type"] = 4},
{["lv"] = 1685015908, ["offset"] = -1804, ["type"] = 4},
{["lv"] = -493940508, ["offset"] = -1020, ["type"] = 4},
{["lv"] = -195032337, ["offset"] = -1016, ["type"] = 4},
{["lv"] = -493936404, ["offset"] = -1012, ["type"] = 4},
{["lv"] = -442564336, ["offset"] = -1008, ["type"] = 4},
{["lv"] = -194958609, ["offset"] = -1004, ["type"] = 4},
{["lv"] = -351166371, ["offset"] = -464, ["type"] = 4},
{["lv"] = -444268544, ["offset"] = -460, ["type"] = 4},
{["lv"] = -493940874, ["offset"] = -456, ["type"] = 4},
{["lv"] = -444268540, ["offset"] = -452, ["type"] = 4},
{["lv"] = -527482876, ["offset"] = -448, ["type"] = 4},
{["lv"] = -442564324, ["offset"] = -192, ["type"] = 4},
{["lv"] = -509603835, ["offset"] = -188, ["type"] = 4},
{["lv"] = -509599740, ["offset"] = -184, ["type"] = 4},
{["lv"] = 8192260, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1668444006, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1718037861, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1869229432, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1668444006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1718037861, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1768172920, ["offset"] = 12, ["type"] = 4},
{["lv"] = 1952671090, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1668444006, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1718037861, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1953705336, ["offset"] = 32, ["type"] = 4},
{["lv"] = 1668444006, ["offset"] = 40, ["type"] = 4},
{["lv"] = 1718037861, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -10000, ["type"] = 4},
{["value"] = -1, ["offset"] = -9996, ["type"] = 4},
{["value"] = -1, ["offset"] = -9992, ["type"] = 4},
{["value"] = -1, ["offset"] = -9988, ["type"] = 4},
{["value"] = -1, ["offset"] = -9980, ["type"] = 4},
{["value"] = -1, ["offset"] = -9976, ["type"] = 4},
{["value"] = -1, ["offset"] = -9972, ["type"] = 4},
{["value"] = -1, ["offset"] = -9968, ["type"] = 4},
{["value"] = -1, ["offset"] = -9964, ["type"] = 4},
{["value"] = -1, ["offset"] = -9960, ["type"] = 4},
{["value"] = -1, ["offset"] = -9956, ["type"] = 4},
{["value"] = -1, ["offset"] = -9948, ["type"] = 4},
{["value"] = -1, ["offset"] = -9944, ["type"] = 4},
{["value"] = -1, ["offset"] = -9936, ["type"] = 4},
{["value"] = -1, ["offset"] = -9932, ["type"] = 4},
{["value"] = -1, ["offset"] = -9924, ["type"] = 4},
{["value"] = -1, ["offset"] = -9920, ["type"] = 4},
{["value"] = -1, ["offset"] = -9912, ["type"] = 4},
{["value"] = -1, ["offset"] = -9908, ["type"] = 4},
{["value"] = -1, ["offset"] = -9904, ["type"] = 4},
{["value"] = -1, ["offset"] = -9900, ["type"] = 4},
{["value"] = -1, ["offset"] = -9896, ["type"] = 4},
{["value"] = -1, ["offset"] = -9876, ["type"] = 4},
{["value"] = -1, ["offset"] = -9872, ["type"] = 4},
{["value"] = -1, ["offset"] = -9864, ["type"] = 4},
{["value"] = -1, ["offset"] = -9860, ["type"] = 4},
{["value"] = -1, ["offset"] = -9856, ["type"] = 4},
{["value"] = -1, ["offset"] = -9840, ["type"] = 4},
{["value"] = -1, ["offset"] = -9836, ["type"] = 4},
{["value"] = -1, ["offset"] = -9832, ["type"] = 4},
{["value"] = -1, ["offset"] = -9824, ["type"] = 4},
{["value"] = -1, ["offset"] = -9820, ["type"] = 4},
{["value"] = -1, ["offset"] = -9816, ["type"] = 4},
{["value"] = -1, ["offset"] = -9128, ["type"] = 4},
{["value"] = -1, ["offset"] = -9124, ["type"] = 4},
{["value"] = -1, ["offset"] = -9120, ["type"] = 4},
{["value"] = -1, ["offset"] = -9116, ["type"] = 4},
{["value"] = -1, ["offset"] = -8996, ["type"] = 4},
{["value"] = -1, ["offset"] = -8992, ["type"] = 4},
{["value"] = -1, ["offset"] = -8988, ["type"] = 4},
{["value"] = -1, ["offset"] = -8984, ["type"] = 4},
{["value"] = -1, ["offset"] = -8856, ["type"] = 4},
{["value"] = -1, ["offset"] = -8840, ["type"] = 4},
{["value"] = -1, ["offset"] = -8500, ["type"] = 4},
{["value"] = -1, ["offset"] = -8496, ["type"] = 4},
{["value"] = -1, ["offset"] = -8492, ["type"] = 4},
{["value"] = -1, ["offset"] = -8488, ["type"] = 4},
{["value"] = -1, ["offset"] = -7932, ["type"] = 4},
{["value"] = -1, ["offset"] = -7928, ["type"] = 4},
{["value"] = -1, ["offset"] = -7924, ["type"] = 4},
}
xqmnb(qmnb)
end

function a5()
qmnb = {
{["memory"] = 8},--Cd内存
{["name"] = "Cd防封⑤"},
{["value"] = 257, ["type"] = 4},
{["lv"] = 50528770, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -488, ["type"] = 4},
{["value"] = 0, ["offset"] = -472, ["type"] = 4},
{["value"] = 0, ["offset"] = -468, ["type"] = 4},
{["value"] = 0, ["offset"] = -464, ["type"] = 4},
{["value"] = 0, ["offset"] = -460, ["type"] = 4},
{["value"] = 0, ["offset"] = -456, ["type"] = 4},
{["value"] = 0, ["offset"] = -444, ["type"] = 4},
{["value"] = 0, ["offset"] = -424, ["type"] = 4},
{["value"] = 0, ["offset"] = -420, ["type"] = 4},
{["value"] = 0, ["offset"] = -412, ["type"] = 4},
{["value"] = 0, ["offset"] = -404, ["type"] = 4},
{["value"] = 0, ["offset"] = -400, ["type"] = 4},
{["value"] = 0, ["offset"] = -396, ["type"] = 4},
{["value"] = 0, ["offset"] = -8, ["type"] = 4},
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 0, ["offset"] = 12, ["type"] = 4},
{["value"] = 0, ["offset"] = 248, ["type"] = 4},
{["value"] = 0, ["offset"] = 260, ["type"] = 4},
{["value"] = 0, ["offset"] = 264, ["type"] = 4},
{["value"] = 0, ["offset"] = 268, ["type"] = 4},
{["value"] = 0, ["offset"] = 272, ["type"] = 4},
{["value"] = 0, ["offset"] = 304, ["type"] = 4},
{["value"] = 0, ["offset"] = 332, ["type"] = 4},
{["value"] = 0, ["offset"] = 336, ["type"] = 4},
{["value"] = 0, ["offset"] = 348, ["type"] = 4},
{["value"] = 0, ["offset"] = 392, ["type"] = 4},
{["value"] = 0, ["offset"] = 396, ["type"] = 4},
{["value"] = 0, ["offset"] = 400, ["type"] = 4},
{["value"] = 0, ["offset"] = 404, ["type"] = 4},
{["value"] = 0, ["offset"] = 408, ["type"] = 4},
{["value"] = 0, ["offset"] = 432, ["type"] = 4},
{["value"] = 0, ["offset"] = 440, ["type"] = 4},
{["value"] = 0, ["offset"] = 444, ["type"] = 4},
{["value"] = 0, ["offset"] = 448, ["type"] = 4},
{["value"] = 0, ["offset"] = 452, ["type"] = 4},
{["value"] = 0, ["offset"] = 456, ["type"] = 4},
{["value"] = 0, ["offset"] = 488, ["type"] = 4},
{["value"] = 0, ["offset"] = 492, ["type"] = 4},
{["value"] = 0, ["offset"] = 496, ["type"] = 4},
{["value"] = 0, ["offset"] = 500, ["type"] = 4},
}
xqmnb(qmnb)
end


function a6()
	 gg.clearResults()
	 gg.setRanges(32768)
	 gg.searchNumber("1,107,448,656", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
end



function a7()
end



function a8()
end



function a9()
end



function a10()

gg.toast("开启成功")
end



function a11()

gg.toast("开启成功")
end



function a12()

gg.toast("开启成功")
end



function b1()--稳定透视
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("透视开启成功-稳定")
end



function b2()--护盾加血
nc_offset(getso("libil2cpp.so"),{{9999.0,16,13820304},})
end



function b3()--范围开锁
gg.clearResults()
gg.setRanges(32)--A内存
gg.searchNumber('1.3',16,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1.3',16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll('7', 16)
gg.toast('范围开锁，门，救人开启成功')
gg.clearResults()
end



function b4()--人物加速
	 	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("移速开启成功")
	 gg.clearResults()
	 end



function b5()--开锁加速
gg.setRanges(32)
gg.searchNumber("1;1.5;2;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 fw= gg.prompt({i='建议3-3.4'}, {i='1'})
gg.editAll(fw["i"], gg.TYPE_FLOAT)
gg.toast("开锁速度开启成功")
gg.clearResults()
end



function b6()
gg.toast("选择逃生模式")
    F = gg.alert("王者", "4vs1", "8VS2", "使用事项")
  if F == 1 then
  gg.searchNumber("30;1.3::",gg.TYPE_FLOAT)
gg.searchNumber("30",gg.TYPE_FLOAT)
gg.getResults(300)
gg.editAll("0",gg.TYPE_FLOAT)
gg.timeJump("14:0")
gg.sleep(3600)
gg.timeJump("15:0")
gg.sleep(800)
XG("30",gg.TYPE_FLOAT)
    elseif F == 2 then
    gg.searchNumber("45;1.3::",gg.TYPE_FLOAT)
gg.searchNumber("45",gg.TYPE_FLOAT)
gg.getResults(500)
gg.editAll("0",gg.TYPE_FLOAT)
gg.timeJump("14:0")
gg.sleep(3600)
gg.timeJump("15:0")
gg.sleep(800)
gg.editAll("45",gg.TYPE_FLOAT)
	   elseif F == 3 then
	   a = gg.prompt({"请输入牛逼"},
{[1]="爱你吖"})[1]
gg.alert("你随便弄个数字也可以查看其实"..a)--弹框提示
gg.toast("你个大傻子"..a)--小弹窗提示

	gg.alert("注意：\n1.此功能最多裸到钻石\n2.白银随便开随便裸奔")
end
end

function b7()--人物高跳
	 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20.0;900;4.90000009537::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.90000009537", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b8()--无限金币
gg.alert"开启之后开个夹子再点击修改器即可关闭"
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.6875", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.6875", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1.54",gg.TYPE_FLOAT)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.53999996185", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.53999996185", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.6875",gg.TYPE_FLOAT)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
Main0()
end
end
end
end
end



function b9()--增加血量
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.0F;100.0F;0.30000001192F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("血量加1000开启成功")
gg.clearResults()
end



function b10()
gg.alert("开启此功能后：\n人物回血范围增强！人物回血增强！","确定")
  local Addr=getnc("libil2cpp.so:bss","Cb")
  local List={0x15424,0x5C,0x10,0x24,0x10,0x0}
  local List=readPointer(Addr,List)
  setvalue(List+0x10,30000,16)
  setvalue(List+0x18,30000,16)
  gg.toast("人物回血范围 开启成功")
  gg.toast("人物秒回血 开启成功")
end



function b11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18", gg.TYPE_FLOAT)
	 gg.toast("高视角修改成功")
	 gg.clearResults()
end



function b12()
gg.toast("选啥都可以")
    F = gg.alert("稳定奔放", "加速", "时间", "反馈交流群:797948278")
  if F == 1 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1003D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1.8", gg.TYPE_FLOAT)
	 gg.toast("皮卡开启成功")
	 gg.clearResults()
  elseif F == 2 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end
end



function c1()
  local Addr=getnc("libil2cpp.so:bss","Cb")
  local List={0x15424,0x5C,0x10,0x50,0x8}
  local List=readPointer(Addr,List)
  setvalue(List,3.8,16)
  gg.toast("人物加速 开启成功")
end


function c2()--迫击炮循环范围
while( true )
do
gg.setRanges(32)
local dataType = 16
local tb1 = {{1000.0, 0}, {0.20000000298023224, -24}, {1.0, -12}, {20.0, -4}, {2.0, 8}, {2.5, 12}, }
local tb2 = {{2.8, 8}, }
SearchWrite(tb1, tb2, dataType)
end
end



function c3()
qmnb = {
{["memory"] = 32},
{["name"] = "迫击炮1级 10发子弹"},
{["value"] = 1120272384, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "迫击炮2级 10发子弹"},
{["value"] = 1120272384, ["type"] = 4},
{["lv"] = 3, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "迫击炮3级 10发子弹"},
{["value"] = 1120272384, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
end



function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒10发子弹"},
{["value"] = 1113587712, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 10, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
end



function c5()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910209e20;0.3;-1.30939601e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("追捕透视稳定开启成功")
	 gg.clearResults()
end



function c6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;0.5;6;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("67", gg.TYPE_FLOAT)
	 gg.toast("伤害增强")
	 gg.clearResults()
	 end



function c7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("250;100;1,008;500,010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("火箭筒三级开启成功")
	 gg.clearResults()
end



function c8()

gg.toast("开启成功")
end



function c9()

gg.toast("开启成功")
end



function c10()

gg.toast("开启成功")
end



function c11()

gg.toast("开启成功")
end



function c12()

gg.toast("开启成功")
end

function d1()--战斗少女 全技能 技能时间减半
gg.alert("战斗少女 全技能 冷却减半 充能上限","确定")
gg.setRanges(32)
local dataType = 16
local tb1 = {{25.0, 0}, {20.0, 4}, }
local tb2 = {{15, 0}, {10, 4}, {8, 8}, {1, 12}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(32)
local dataType = 16
local tb1 = {{60.0, 0}, {50.0, 4}, {40.0, 8}, {20.0, 12}, }
local tb2 = {{30, 0}, {25, 4}, {20, 8}, {10, 12}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(32)
local dataType = 16
local tb1 = {{4.0, 0}, {2.0, -8}, {3.0, -4}, {5.0, 4}, }
local tb2 = {{8, 0}, {4, -8}, {6, -4}, {10, 4}, }
SearchWrite(tb1, tb2, dataType)
end

function d2()
gg.alert("小狐狸 全技能 冷却金币减半 治愈加半","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "甜心锁链 时间减半"},
{["value"] = 24.0, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 28.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 12, ["offset"] = 0, ["type"] = 16},
{["value"] = 15, ["offset"] = -8, ["type"] = 16},
{["value"] = 14, ["offset"] = -4, ["type"] = 16},
{["value"] = 10, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "灵狐闪现 金币减半"},
{["value"] = 70.0, ["type"] = 16},
{["lv"] = 90.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 80.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 35, ["offset"] = 0, ["type"] = 16},
{["value"] = 45, ["offset"] = -8, ["type"] = 16},
{["value"] = 40, ["offset"] = -4, ["type"] = 16},
{["value"] = 25, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "治愈灵波 治愈加半"},
{["value"] = 5.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 0, ["type"] = 16},
{["value"] = 20, ["offset"] = 4, ["type"] = 16},
{["value"] = 30, ["offset"] = 8, ["type"] = 16},
{["value"] = 40, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function d3()
gg.alert("水之忍者 全技能 无冷却 冰墙加半","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "水龙术 时间减半"},
{["value"] = 35.0, ["type"] = 16},
{["lv"] = 33.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 17.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 16.5, ["offset"] = 4, ["type"] = 16},
{["value"] = 15, ["offset"] = 8, ["type"] = 16},
{["value"] = 12.5, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "寒冰柱 冰墙加半"},
{["value"] = 150.0, ["type"] = 16},
{["lv"] = 160.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 170.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 180.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 300, ["offset"] = 0, ["type"] = 16},
{["value"] = 320, ["offset"] = 4, ["type"] = 16},
{["value"] = 340, ["offset"] = 8, ["type"] = 16},
{["value"] = 360, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "护身膘 无时间"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 70.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 65.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 60.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function d4()
gg.alert("星辰少女 全技能 金币冷却减半 几率100%","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "圣光倾泄 金币减半"},
{["value"] = 130.0, ["type"] = 16},
{["lv"] = 120.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 110.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 65, ["offset"] = 0, ["type"] = 16},
{["value"] = 60, ["offset"] = 4, ["type"] = 16},
{["value"] = 55, ["offset"] = 8, ["type"] = 16},
{["value"] = 50, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "时光快进 超级减少"},
{["value"] = 5.0, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 4.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 50, ["offset"] = 0, ["type"] = 16},
{["value"] = 60, ["offset"] = -12, ["type"] = 16},
{["value"] = 70, ["offset"] = -8, ["type"] = 16},
{["value"] = 80, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "光能加速 100%几率"},
{["value"] = 0.2199999988079071, ["type"] = 16},
{["lv"] = 0.18000000715255737, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.25999999046325684, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.999, ["offset"] = 0, ["type"] = 16},
{["value"] = 0.999, ["offset"] = -4, ["type"] = 16},
{["value"] = 0.999, ["offset"] = 4, ["type"] = 16},
{["value"] = 0.999, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end

function d5()
end

function d6()
end

function e1()
gg.alert("女特工 全技能 冷却超减","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "隐形 时间减半"},
{["value"] = 18.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 14.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 9, ["offset"] = 0, ["type"] = 16},
{["value"] = 8, ["offset"] = 4, ["type"] = 16},
{["value"] = 7, ["offset"] = 8, ["type"] = 16},
{["value"] = 5, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "自制陷阱 冷却超减"},
{["value"] = 180.0, ["type"] = 16},
{["lv"] = 150.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 120.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 60.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 0, ["type"] = 16},
{["value"] = 30, ["offset"] = 4, ["type"] = 16},
{["value"] = 20, ["offset"] = 8, ["type"] = 16},
{["value"] = 5, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "天降正义 冷却减半"},
{["value"] = 50.0, ["type"] = 16},
{["lv"] = 40.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 25, ["offset"] = 0, ["type"] = 16},
{["value"] = 20, ["offset"] = 4, ["type"] = 16},
{["value"] = 15, ["offset"] = 8, ["type"] = 16},
{["value"] = 5, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function e2()
gg.alert("发明家 全技能 冷却金币减半 几率提升","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "能量禁锢 冷却减半"},
{["value"] = 6.0, ["type"] = 16},
{["lv"] = 14.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 3, ["offset"] = 0, ["type"] = 16},
{["value"] = 7, ["offset"] = -12, ["type"] = 16},
{["value"] = 6, ["offset"] = -8, ["type"] = 16},
{["value"] = 5, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "火力压制 几率提升"},
{["value"] = 0.15000000596046448, ["type"] = 16},
{["lv"] = 0.07999999821186066, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.25, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 0.7, ["offset"] = -8, ["type"] = 16},
{["value"] = 0.9, ["offset"] = -4, ["type"] = 16},
{["value"] = 0.999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "机械改造 金币减半"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 230.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 170.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 120.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = 0, ["type"] = 16},
{["value"] = 115, ["offset"] = -4, ["type"] = 16},
{["value"] = 87.5, ["offset"] = 4, ["type"] = 16},
{["value"] = 60, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end

function e3()
gg.alert("小梦魇 瞌睡气泡 植梦 梦魇之力 金币减半 扣血加半 时间加半","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "瞌睡气泡 金币减半"},
{["value"] = 150.0, ["type"] = 16},
{["lv"] = 135.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 120.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 75, ["offset"] = 0, ["type"] = 16},
{["value"] = 67.5, ["offset"] = 4, ["type"] = 16},
{["value"] = 60, ["offset"] = 8, ["type"] = 16},
{["value"] = 50, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "植梦 扣血加半"},
{["value"] = 5.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 0, ["type"] = 16},
{["value"] = 20, ["offset"] = 4, ["type"] = 16},
{["value"] = 30, ["offset"] = 8, ["type"] = 16},
{["value"] = 40, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "梦魇之力 时间加半"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 4.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 7.0, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 16},
{["value"] = 8, ["offset"] = 4, ["type"] = 16},
{["value"] = 10, ["offset"] = 8, ["type"] = 16},
{["value"] = 14, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end

function e4()
gg.alert("影之忍者 秘技·影分身 秘技·暴击 秘技·影割 冷却减半 伤害加半","确定")
qmnb = {
{["memory"] = 32},
{["name"] = "秘技·影分身 冷却减半"},
{["value"] = 15.0, ["type"] = 16},
{["lv"] = 35.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 7.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 17.5, ["offset"] = -12, ["type"] = 16},
{["value"] = 15, ["offset"] = -8, ["type"] = 16},
{["value"] = 5, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "秘技·影击 伤害加半"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = -12, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.999, ["offset"] = 0, ["type"] = 16},
{["value"] = 0.5, ["offset"] = -12, ["type"] = 16},
{["value"] = 0.6, ["offset"] = -8, ["type"] = 16},
{["value"] = 0.9, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "秘技·影割 冷却减半"},
{["value"] = 15.0, ["type"] = 16},
{["lv"] = 22.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 18.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 7.5, ["offset"] = 0, ["type"] = 16},
{["value"] = 11, ["offset"] = -8, ["type"] = 16},
{["value"] = 9, ["offset"] = -4, ["type"] = 16},
{["value"] = 5, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function f1()
  local jincheng=gg.getTargetInfo()
  local mingcheng=jincheng["label"]
  local baoming=gg.getTargetPackage()
  local queding
  if mingcheng~="逃跑吧！少年" then
    local xuanze=gg.alert("当前进程:"..mingcheng.."！\n此进程非逃跑吧！少年 无法解封设备！\n是否继续？","继续","返回")
    if xuanze==1 then queding=true end
    if xuanze==2 then Main() return false end
  else
    queding=true
  end
  if queding==true then
    local File="/storage/emulated/0/Android/data/"..baoming.."/files/VirtualUniqueDeviceID.txt"
    if io.open(File)~=nil then
      local xieru=math.random(1111111,999999999)
      io.open(File,"w"):write(xieru)
      gg.toast("写入成功。")
      local shanchu=gg.alert("文件写入成功！请重启游戏即可！\n是否清除残留日志？","确定","取消")
    else
      gg.alert("检测到文件不存在！无法修改文件！")
    end
  end
end

function Exit()
print("☃️谢谢支持🌚歌最帅🎃")
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

















--[[Welcome to Dluae]]