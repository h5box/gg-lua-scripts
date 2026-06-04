asd = gg.alert('账号验证开启(账号密码获取群:1142804558)','开始登陆','退出脚本')  
 if asd == 1 then  
   aaa='请输入账号'  
   bbb=''  
   b = gg.prompt({  
     '      请输入账号：',  
     '     请输入密码：',  
     '专属登陆系统 '}, {[1] = aaa,[2] = bbb,[3] = true}, {[1] = 'text',[2] = 'text',[3] = 'checkbox'})  
   if b[1] == 'lynb' then  
     if b[2] =='lynb' then  
       gg.alert('登陆成功 感谢使用',' OjbK')  
     else  
       print('账号密码错误') os.exit()  
     end  
   else  
     print('账号密码错误') os.exit()  
   end  
 end  
 if asd == 2 then gg.alert('退出选择',' 退出') os.exit() end 
 

local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("type参数错误")
gg.toast("type参数错误")
os.exit()
end
else
print("memory or array参数错误")
gg.toast("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
--gg.setValues(t)
return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
gg.toast(Name.."共搜索到"..#data.."个数据")
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
gg.toast(Name.."开启成功,共修改"..#t.."条数据")
else
gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了")
return false
end
else
gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了")
return false
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
            gg.toast("搜索η"..#data.."条代码")
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
            gg.toast("无数据", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function encodes(code)
  return (code:gsub("..", function(h)
    return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256)
  end
  ))
end


do
  do
    for _FORV_3_ = 1, 2000 do
      load("local results = gg.getFile(5000)")()
    end
  end
end
gg.setRanges(16420)
local results = gg.getFile()
local results = gg.getResults(5000)
gg.setValues(results)
local results = gg.getFile()
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
else
return false
end
else
return false
end
end
function Main0()
SN = gg.choice({
	 "林烨大厅全防",
	 "新版大厅防封",
	 "大厅除草除雾",
	 "防止隔离追封",
	 "诛仙子弹追踪",
	 "大厅变态一套",
	 "三侬V4大厅防",
	 "退出",
	 "交流群1142804558",
}, nil, "更新公告\n防禁网\n防十年\n防三方\n这次由于抓不到稳定防十年就直接拿三侬的了\n其他的三个防可以防禁网的哦！\n请永远爱林烨相信林烨")
if SN==1 then
	 HS7()
end
if SN==2 then
	 HS8()
end
if SN==3 then
	 HS9()
end
if SN==4 then
	 HS10()
end
if SN==5 then
     HS11()
end
if SN==6 then
     HS12()
end
if SN==7 then
	 HS13()
end
if SN==8 then
	 HS14()
end
if SN==9 then
	 Main1()
end
FX1=0
end

function HS7()
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("720914;1,703,963", gg.TYPE_DWORD)
gg.searchNumber("720924", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,703,963", gg.TYPE_DWORD)
gg.searchNumber("1,703,963", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131075", gg.TYPE_DWORD)
gg.searchNumber("131075", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131076", gg.TYPE_DWORD)
gg.searchNumber("131076", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131077", gg.TYPE_DWORD)
gg.searchNumber("131077", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("147443", gg.TYPE_DWORD)
gg.searchNumber("147443", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131078", gg.TYPE_DWORD)
gg.searchNumber("131078", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131079", gg.TYPE_DWORD)
gg.searchNumber("131079", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("131080", gg.TYPE_DWORD)
gg.searchNumber("131080", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("196610", gg.TYPE_DWORD)
gg.searchNumber("196610", gg.TYPE_DWORD)
jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>9999 then sl=9999 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
gg.toast(os.date("林烨提醒您开启成功十年老兵耗时%S秒"))
end

function HS8()
gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196,609", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("196,609", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("196,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196611", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("196611", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.getResults(50000)
	 gg.editAll("0", gg.TYPE_DWORD)
gg.toast(os.date("林烨提醒您开启成功十年老兵耗时%S秒"))
end

function HS9()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1759781550398895551", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1759781554395021312", gg.TYPE_QWORD)
  gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,590,068,740,425,724,723",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",gg.TYPE_QWORD)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除草"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast('全图除草已成功')
end

function HS10()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
gg.toast(os.date("林烨提醒您防隔离追封开启成功十年老兵耗时%S秒"))
end

function HS11()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(800)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100000", gg.TYPE_FLOAT)
gg.toast("开始值入落点距离")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("15.0F;28.2F;16.0F;26.0F;8.2F;18.2F:512",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("95",gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("715",gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("255",gg.TYPE_FLOAT)
  gg.setRanges(131072)
  gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
  gg.searchNumber("26", 16, false, 536870912, 0, -1)
  gg.getResults(92)
  gg.editAll("-89999960", 16)
  gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
  gg.searchNumber("28", 16, false, 536870912, 0, -1)
  gg.getResults(92)
  gg.editAll("-99999960", 16)
  gg.toast('增加距离')
  gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
  gg.searchNumber("45", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("999999", 16)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast('子弹追踪开启成功')
end

function HS12()
Name = "无后" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = "防抖" 
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0},{-499122175, 4},{-481296380, 8},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-2.8111605430681328E28, -12},{-1476732160.0, -8},{-3.7444097189855772E28, -4},{128.0, 4},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
Name = "聚点" 
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-1.238242388799446E28, -8},{-1.423933276633091E28, -4},{-1.8331474059341755E27, 4},{-7.160887698833495E24, 8},}
local tb2 = {{90, 0},}
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336691171:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("新版自瞄开启成功")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全屏自瞄"},
{["value"] = 3.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.20000004768, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.10000000149, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 36, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 200, ["offset"] = 52, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20, ["offset"] = 56, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
 gg.toast("全屏百米开启成功")
gg.setRanges(16384)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local search = {{-1.4278110478704994E28, 0},{8.562694393506966E-26, -12},{1.8175359108152E-27, -8},}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)
local dataType = 16
local search = {{-3.254379949369797E30, 0},{2.646983324423844E-23, -56},}
local modify = {{0, -56},}
SearchWrite(search,modify,dataType,Name)
gg.toast("变态全开开启成功")
end

function HS13()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("135682", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134658", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134914", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("133378", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("131330", gg.TYPE_DWORD)
--[[ found: 930 ]]
gg.getResults(50000)
--[[ count: 930 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1348759109;1953067887;1634692166;1920287604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.getResults(10)
--[[ count: 0 ]]
gg.alert("数据发生变化，你被迫下线！")
end

function HS14()
	 os.exit()
end

function Main1()
SN = gg.multiChoice({
}, nil, "1142804558")
FX1=0
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end