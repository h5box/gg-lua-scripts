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
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------


DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




function Main()
  SN = gg.multiChoice({
  "雷神间隔[稳]",
  "雷神间隔[关]",
  "3倍开锁[稳]",
  "3.5倍高跳[稳]",
  "人物速度5倍[稳]",
  "范围开门[稳]",
  "稳定一套[枫叶]",
  "锁定金币[演]",
  "全局1.5倍加速[稳]",
  "全局加速关闭",
  "完美开锁[风影]",
  "全服通用防闪",
  "内部防封[风影]",
  "实体金币[稳]",
  "实体金币[关]",
  "手雷伤害50[稳]",
  "追捕4v1吸人[稳]",
  "追捕8v2吸人[稳]",
  "复制身份证",
  "使用说明",
  "️☆退出脚本☆",
 }, nil, "枫叶qq3242694227.交流群834868261.定制脚本,脚本加卡密,脚本加密,可以加q留言! 逃生强力推荐稳定一套")
  if SN == nil then
  else
  
  if SN[1] == true then
   a1()
  end
  
  if SN[2] == true then
   a2()
  end
  
  if SN[3] == true then
   a3()
  end
  
  if SN[4] == true then
   a4()
  end
  
  if SN[5] == true then
   a5()
  end
  
 if SN[6] == true then
   a6()
  end
  
  if SN[7] == true then
   a7()
  end
  
  
  if SN[8] == true then
   a8()
  end

   if SN[9] == true then
   a9()
  end
  
  if SN[10] == true then
   a10()
  end
  
 if SN[11] == true then
   a11()
  end
  
  if SN[12] == true then
   a12()
  end
  
  if SN[13] == true then
   a13()
  end
  
    
   if SN[14] == true then
   a14()
  end
  
  if SN[15] == true then
   a15()
  end
  
  
   if SN[16] == true then
   a16()
  end
  
  if SN[17] == true then
   a17()
  end
  
   if SN[18] == true then
   a18()
  end
  
  
   if SN[19] == true then
   a19()
  end
  
   if SN[20] == true then
   a20()
  end
  
  
      if SN[21] == true then
   Exit()
  end
end
  XGCK = -1
end



function a1()
 gg.clearResults()--雷神间隔
	 gg.setRanges(32)
	 gg.searchNumber("0.98;-0.06", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.98", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.41", FLOAT)
	 gg.toast("火箭筒间隔开启成功")
	 gg.clearResults()
end



function a2()
 gg.clearResults()--雷神间隔
	 gg.setRanges(32)
	 gg.searchNumber("0.41;-0.06", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.41", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.98", FLOAT)
	 gg.toast("火箭筒间隔关成功")
	 gg.clearResults()
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
{["value"] = 3.5,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end




function a4()--高跳
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


	
function a5()--3.8倍移速
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


function a6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("60;0.2;1.3;1:150", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6.5", FLOAT)
  gg.toast("锁+门范围开启成功")
  gg.clearResults()
end




function a7()
a3()
a4()
a5()
a6()
end

 

function a8()--锁金币无冷却
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



function a9()--1.2倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.2倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.3,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function a10()--1.2倍全局加速[关闭]
qmnb = {
{["memory"] = 4},
{["name"] = "1.5倍全局加速[关闭]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.3,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end


function a11()--完美开锁
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 300,["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end


function a12()
es=gg.alert("请在出现进入游戏按钮后手动重选进程\n作者qq3242694227","选好了","重新选")
if es==1 then
local Addr=getnc("libtersafe2.so:bss","Cb")
  local List={0xbc}
  local List=readPointer(Addr,List)
  setvalue(List,0,4)
  gg.toast("已注入防闪")
end
if es==2 then
os.exit(print("重新选"))
  end 
  end
  
  
function a13()--内部逃跑防
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
gg.toast("逃跑防封开启成功")
gg.clearResults()
end



function a14()--实体金币
gg.alert("温馨提示:\n开补给箱和夹子就可以获得金币了,白银可能没效果......","★确定★")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0.85", FLOAT)
gg.toast("实体金币开启成功")
gg.clearResults()
end
end



function a15()--实体金币[关闭]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.85", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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


function a16()
 gg.clearResults()--手雷伤害50
	 gg.setRanges(32)
	 gg.searchNumber("33", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("55", FLOAT)
	 gg.toast("手雷伤害50开启成功")
	 gg.clearResults()
end


function a17()--4v1吸人
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




function a18()--8v2吸人
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



function a19()--身份证复制
gg.copyText("雷库----610425198305201751 刘智----360421198907172815 丁建峰----362324198712101510 巢峰----430681198009222951 余小云----421125198509161324 黄帆----362523198512051621柳会锋----130127198002221511曾建华----132429197908042110金彦中----413024197505203519吴建华----362531197910254219陈忠贺----23212619820228521X白英侠----110106198804094838沙磊----512301197301207096霍保强----130122197106094610刘超----15272219810920704张红----152722198712020929刘越----152722198407162429邱陵----513227196409064423官章芬----513227196107094424赵宏波----220882197902170326茆提求----22060219710104213李义----220602196101080913裴铭浩----220723198410101016管澎----220204198909140915姚远----220204199111221227尹靖琦----210102198004201226范微微----210105198008031921杨振兴----220204198204100016王克新----212719190105313271孙运才----320721198109103013杨振耕----231027196412087212郝志明----21010519621004521X孟卫东----220102196811242211于国颖----220202197310024224徐募----220104197609258428宫雪莉----22010219780125482X吕彪----222401196903080039付市东----372801196803063439刘朝军----130183198501200011刘娜----130125198904289547王瑞海----132122196407020399郭红飞----130526198209166332郭冬勤----410182198711193746马立标----130602196405290037李晓光----140427198804040016张巨权----330326197307285011侯宜梁----230103198405091312何海涛----320303196906201624蒲宗辉----510723197504034613扎西当周----532321197004120034严国庆----32128119870601713X张静----37292519871028676X王发根----360281196708306012黄志超----230224198610080310马道华----420123197002182718陈晶晶----420621198207227739谭艳云----452226199101182466何玉玲----452501198307217446庞昆雄----452501196811252911王越----410811198901300074王志平----430525198507076137丰雨滋----450302195106111514唐钟海----452524197507191439周志庆----452502198105318456谭昌明----452501198201120718郭森振----45282619801216001X徐萍----635251197212168225王波----371428198611190536陈静锋----310106197912280411吕莹斐----33010419880617352X肖锋----430105198002201513刘墨妮----510105198707022523俞力----330722197505140012苗艳军----222326196208040053杨华池----440883199110055238张文韬----440229197107314817蒋保安----610202196010032036陈雷----330381198506221431吴雪松----370202197404264918许正豪----632826196509130013汤杰----420324197901111056刘士英----110104196001071817高篙----110102198703161549陆晓岚----310115198801091969杨秀中----31010119610129408X单天恒----232301197309256813张娟叶----610626197203070028曹光海----632826196804010014孙临----310103197211183222")
gg.alert("身份证已复制,可能有一些不能用")
end


function a20()--使用说明
SN = gg.multiChoice({
}, nil, "该脚本更新时间为2022年3月16日20:44")
FX1=0
end

function Exit()
gg.copyText("834868261")
gg.alert("已自动复制枫叶逃少交流群★")
print("枫叶最帅")
os.exit()
end
cs = "3242694227"





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