--孤日批
function exit(x)
os.exit(print(x))
while true do end end
Judge=gg.makeRequest('http://www.baidu.com').content
if (Judge==nil) then 
os.exit(gg.alert('连接网络失败?!\n网络存在？',''))
exit()
end
yg = {
 a = "http://www.iyuji.cn/iyuji/s/cnNiOWZhRUNpbncyeXFzYkZ0Ykd4UT09/1594911959811583", --链接
 b = "1.0" --版本
}
local yun = gg.makeRequest(yg.a).content:match('<div class="vp_text" id="content">(.-)<div class="report_area">')
local yd = gg.makeRequest(yg.a).content:match('<div class="read_txt">阅读&nbsp; (.-)</div>')
zd = {
 sb = "你看，给你看，可以不???",
 a = yun:match('【脚本开关】(.-)【开关】'),
 b = yun:match('【脚本公告】(.-)【公告】'),
 c = yun:match('【脚本外链】(.-)【外链】'),
 d = yun:match('【最新版本】(.-)【版本】'),
 e = yun:match('【更新公告】(.-)【更新】'),
 f = yun:match('【禁改名称】(.-)【更改】'),
 g = yun:match('【脚本名称】(.-)【名称】'),
 h = yun:match('【设置密码】(.-)【设置】'),
 j = yun:match('【脚本密码】(.-)【密码】'),
 z = yun:match('【联系方式】(.-)【联系】'),
}
lx='具体联系:'..zd.z
if (zd.f == '开') then
local filename=gg.getFile():match('[^/]+$')
if (filename ~= zd.g) then
exit("验证失败，请重新下载原文件\n"..lx) end
end
if (zd.h == '开') then
key=gg.prompt({'请输入正确密码:'},{[1]=''}, {[1]='text'})
if (key == nil) then exit('请输入密码') end
if (key[1] ~= zd.j) then gg.alert("Key error !","") exit('密码错误'..lx) end end
if (zd.a=='开') then
else
exit("脚本已关闭使用\n"..lx)
end
gg.alert('脚本打开次数:'..yd..'\n'..zd.b,'')
if (yg.b == zd.d) then
gg.toast('最新版本！')
else
gxjb=gg.alert('发现新版本!\n当前版本号：'.. 1.0 ..'\n最新版本号：' .. 1.2 .. '\n更新公告:\n'..zd.e,'更新','','退出')
if (gxjb == nil) then exit('退出\n'..lx) end
if (gxjb == 3) or (gxjb == 2) then exit('退出') end end
if (gxjb == 1) then 
local lj=gg.getFile()
ml=lj:gsub('/[^/]+$','')
jb=lj:gsub(ml..'/','')
gx = gg.prompt({"选择放置路径"},{ml},{"path"})
if (gx == nil) or (gx[1] == nil) then exit('退出') end
gxlj=gg.makeRequest(zd.c).content
if (gxlj==nil) then
exit('链接不存在\n'..lx)
else
file = io.open(ml.."/".."["..zd.d.."]"..jb,"w"):write(gxlj):close()
os.exit(print('更新成功,请重新启动脚本\n脚本名称:'.."["..zd.d.."]"..jb))
exit()
end
end

--下面放脚本源码
gg.searchNumber,Searchnumber=Searchnumber,gg.searchNumber
function gg.searchNumber(a,b,c,d,e,f)
gg.setVisible(false)
if not search_e then
search_e=string.char(0,0,0,0,0,0,0)
for i=1,22 do
search_e=search_e..search_e
end
end
gg.getResults(1)
gg.editAll(search_e,4)
local s,j={},{}
for i=1,50 do
j[i]=math.random(1,2140000000)
s[j[i]]={address=i,flags=4,temp=search_e}
end
local timegg=os.clock()+os.time()
s=gg.getValues(s)
local dateinit=os.clock()+os.time()
for i=1,50 do
while s[j[i]].value~=0 or dateinit-timegg>2.1 do
gg.clearResults()
os.exit()
end
end
Searchnumber(a,b,c,d,e,f)
gg.getResults(0)
gg.editAll(search_e,4)
while gg.isVisible(true) do
gg.clearResults()
os.exit()
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
           gg.toast("搜索n条数据"..#data.."修改9条")
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
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("开启失败")
        return false
    end
end
---------------------------------------------------------------------[----功能-----]------------------------------------------------------------------------------
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
           gg.toast("开启成功"..#data.."可以奔放了")
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
            gg.toast("欢迎使用", false)
            return false
        end
    else
        gg.toast("开启成功")
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

gg.toast("✨啸天提示你隐藏23旁路选择没有✨")
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

function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."🐷开启成功🐷"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."🐷开启成功🐷"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."🐷开启失败🐷", false)  return false  end  else  gg.toast("🐷开启失败🐷")  return false  end end
function Main()
menu = gg.choice({
os.date
'稳定防封',
'变态功能',
'持枪功能',
'抖音功能',
'加速功能',
'透色功能',
'退出脚本'},
2018,os.date'✨当前时间:%F %X啸天最强脚本不接受任何反驳啸天交流群:没有✨')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then K() end
if menu == 7 then  gg.toast("已经退出脚本")
   Exit()
    end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'ʚ大厅防封ɞ',
'ʚ老外防封ɞ',
'ʚ文件防封ɞ',
'ʚ登录防封ɞ',
'ʚ防客户端ɞ',
'ʚ返回主页ɞ'},
nil,'☞啸天提示:\n还得要演一下封了别怪我\n文件防封有10%能卡出bug所以一定要在游戏里面开启☜')
if menu1 == nil then gg.toast("您已取消选择")
  else
if menu1[1] == true then a1()  gg.toast("开始启动...")
   end
if menu1[2] == true then a2() gg.toast("开始启动...")
   end
if menu1[3] == true then a3() gg.toast("开始启动...")
   end
if menu1[4] == true then a4() gg.toast("开始启动...")
   end
if menu1[5] == true then a5() gg.toast("开始启动...")
   end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'ʚ太空步ɞ',
'ʚ啸天范围ɞ',
'ʚ新范围1ɞ',
'ʚ新范围2ɞ',
'ʚ上帝视角ɞ',
'ʚ吉普加速ɞ',
'ʚ天空黑色ɞ',
'ʚ诛仙范围ɞ',
'ʚ不漏天线ɞ',
'ʚ穿墙路飞ɞ',
'ʚ轿车飞天ɞ',
'ʚ啸天天线ɞ',
'ʚ高级物资天线ɞ',
'ʚ返回主页ɞ'},
nil,'→_→(全部都不稳定可以滚蛋)←_←')
if menu1 == nil then  gg.toast("您已取消选择")
   else
if menu1[1] == true then b1() gg.toast("开始启动...")
   end
if menu1[2] == true then b11() gg.toast("开始启动...")
   end
if menu1[3] == true then b2() gg.toast("开始启动...")
   end
if menu1[4] == true then b3() gg.toast("开始启动...")
   end
if menu1[5] == true then b4() gg.toast("开始启动...")
   end
if menu1[6] == true then b5() gg.toast("开始启动...")
   end
if menu1[7] == true then b6() gg.toast("开始启动...")
   end
if menu1[8] == true then b7() gg.toast("开始启动...")
   end
if menu1[9] == true then b8() gg.toast("开始启动...")
   end
if menu1[10] == true then b9() gg.toast("开始启动...")
   end
if menu1[11] == true then b10() gg.toast("开始启动...")
   end
if menu1[12] == true then b12() gg.toast("开始启动...")
   end
   if menu1[13] == true then b13() gg.toast("开始启动...")
   end
if menu1[14] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'ʚ无后防抖ɞ',
'ʚ枪械聚点ɞ',
'ʚ近远自瞄ɞ',
'ʚ持枪自瞄ɞ',
'ʚ诛仙自瞄ɞ',
'ʚ返回主页ɞ'},
nil,'配合啸天辅助=无敌')
if menu1 == nil then gg.toast("您已取消选择")
  else
if menu1[1] == true then c1() gg.toast("开始启动...")
   end
if menu1[2] == true then c2() gg.toast("开始启动...")
   end
if menu1[3] == true then c3() gg.toast("开始启动...")
   end
if menu1[4] == true then c4() gg.toast("开始启动...")
   end
if menu1[5] == true then c5() gg.toast("开始启动...")
   end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'ʚ全图脚步ɞ',
'ʚ关闭脚步ɞ',
'ʚ伸缩头ɞ',
'ʚ返回主页ɞ'},
nil,'(`o´)☞抖音主播专用☜(`o´)')
if menu1 == nil then gg.toast("您已取消选择")
  else
if menu1[1] == true then d1() gg.toast("开始启动...")
   end
if menu1[2] == true then d2() gg.toast("开始启动...")
   end
if menu1[3] == true then d3() gg.toast("开始启动...")
   end
if menu1[4] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
'ʚ秒落地ɞ',
'ʚ开始加速ɞ',
'ʚ原创加速ɞ',
'ʚ加速防拉ɞ',
'ʚ关闭加速ɞ',
'ʚ返回主页ɞ'},
nil,'秒落地出生岛开启')
if menu1 == nil then gg.toast("您已取消选择")
  else
if menu1[1] == true then b1() gg.toast("开始启动...")
   end
if menu1[2] == true then e1() gg.toast("开始启动...")
   end
if menu1[3] == true then e4() gg.toast("开始启动...")
   end
if menu1[4] == true then e2() gg.toast("开始启动...")
   end
if menu1[5] == true then e5() gg.toast("开始启动...")
   end
if menu1[6] == true then HOME() end
end
GLWW=-1
end

function K()
menu1 = gg.multiChoice({
"835透视",
"660透视",
"845透视",
"855透视",
"865透视",
"652透视",
"970透视",
"625透视",
"980透视",
"675透视",
"物品透视",
'点击确定返回上一页'},
nil,'透视上色落地开启,效果不佳多开两次即可')
if menu1 == nil then else
if menu1[1] == true then k1() gg.toast("开始启动...")end
if menu1[2] == true then k2() gg.toast("开始启动...")end
if menu1[3] == true then k3() gg.toast("开始启动...")end
if menu1[4] == true then k4() gg.toast("开始启动...")end
if menu1[5] == true then k5() gg.toast("开始启动...")end
if menu1[6] == true then k6() gg.toast("开始启动...")end
if menu1[7] == true then k7() gg.toast("开始启动...")end
if menu1[8] == true then k8() gg.toast("开始启动...")end
if menu1[9] == true then k9() gg.toast("开始启动...")end
if menu1[10] == true then k10() gg.toast("开始启动...")end
if menu1[11] == true then k11() gg.toast("开始启动...")end
if menu1[12] == true then HOME() gg.toast("开始启动...")end
end
GLWW=-1
end

function a1()
  gg.alert('第三方请换框架解决✔️\n禁网请自行断网解决✔️️️\n闪退自行去看防闪退教程✔️')
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"4451"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.toast("防封成功✔️")
end

function a2()
  gg.alert('老外的话:\nThe contents of the box are almost the same but the difference is that it is relaxing\n诛仙翻译:\n这个内容和直装的差不多一样唯一不同的就是有防封')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1 331 928 324 405 720 525", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("AF8", -1, 32, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1 331 928 328 390 574 080", 32)
  gg.clearResults()
  gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B8", -1, 32)
  gg.getResults(10)
  gg.editAll("-1 387 800 268 364 578 816", 32)
  gg.clearResults()
  gg.searchNumber("4 827 858 804 535 200 272", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("4 827 858 800 541 171 712", 32)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-486470332;-298841535;-409731072:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-298841535", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("98")
  gg.getResults(551)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults() gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("550;560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.setRanges(16384)
  gg.clearResults()
  gg.searchNumber("4216233945178116059", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("6C8", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(7243)
  gg.editAll("4216233945183813632", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h0AF872B922214CB9EC343A38", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("h22214CB9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("h00009643", gg.TYPE_BYTE)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("300;305", 16)
  gg.clearResults()
  gg.toast("制作者:HACK_PUBG_ROOT")
end


function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("执行完成")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67109377;67109633", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 4)
  gg.clearResults()
  gg.searchNumber("70658", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("0", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1", gg.TYPE_DOUBLE)
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("937", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("937", gg.TYPE_DOUBLE)
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67109377", 4)
  gg.getResults(10000)
  gg.editAll("0", 4)
  gg.clearResults()
  gg.searchNumber("524288", 4, false, 536870912, 0, -1)
  revert = gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67109633", 4)
  gg.getResults(10000)
  gg.editAll("0", 4)
  gg.clearResults()
  gg.searchNumber("65793", 4, false, 536870912, 0, -1)
  revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("17185", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("17313", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("17441", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("131586", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 4)
  revert = gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67109377;12547::100", 4, false, 536870912, 0, -1)
  gg.searchNumber("12547", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.frezee = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0;0~20;131586::9", 4, false, 536870912, 0, -1)
  gg.searchNumber("131586", 4, false, 536870912, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == 4 then
      i.value = "0"
      i.freeze = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("133378", 4, false, 536870912, 0, -1)
  revert = gg.getResults(140701, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(140701, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_DWORD then
      i.value = "0"
      i.freeze = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(140701, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("133634", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 4)
  revert = gg.getResults(20000)
  for i, i in ipairs((gg.getResults(20000))) do
    if i.flags == gg.TYPE_DWORD then
      i.value = "0"
      i.freeze = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(20000)))
  gg.setRanges(4)
  gg.searchNumber("134658", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 4)
  revert = gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_DWORD then
      i.value = "0"
      i.freeze = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.setRanges(4)
  gg.searchNumber("134914", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 4)
  revert = gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_DWORD then
      i.value = "0"
      i.freeze = true
    end--Iғ 𝙰𝙷
  end--Fᴏʀ 𝙰𝙷
  gg.addListItems((gg.getResults(20000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("147971", 4, false, 536870912, 0, -1)
  gg.getResults(20000)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", 4, false, 536870912, 0, -1)
  gg.refineNumber("1801989935;1768710958;1920233061;1919905893", 4, false, 536870912, 0, -1)
  gg.refineNumber("1801989935;1768710958;1920233061;1919905893", 4, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("2015175168", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.986167e-42", gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("909391408", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.alert("此防风可以让你不被那么容易追查到可以说就是二代防追封")
end



function a5()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408;808923191::8",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(10000)
    sl = gg.getResultCount()
    for _FORV_3_ = tonumber("1"), sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_DWORD,
          freeze = true,
          value = tonumber("0")
        }
      })
      end
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 	   gg.alert("提示:\n断网返回大厅重连进游戏才能稳定前方高能把他摁死就稳定[滑稽]")
end
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)--Pesaycho
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end








function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('9999', gg.TYPE_FLOAT)
  gg.toast('太空️')
end

function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.201618;30.5;25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('2000000', gg.TYPE_FLOAT)
  gg.toast('范围1✔️')
  gg.clearResults()
end

function b3()
  gg.setRanges(131108)
  var = gg.getResults(5000)
  gg.clearResults()
  gg.editAll('0', 20)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('-88.66608428955;26:512', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('26', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(2)
  gg.editAll('-460', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.searchNumber('-88.73961639404;28:512', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('28', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(2)
  gg.editAll('-560', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.201618;30.5;25', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('25;30.5', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(10)
  gg.editAll('250', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.toast('范围2✔️')
end

function b4()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber('220;178;15 ', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('220', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll('350', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('上帝视角✔️')
end

function b6()
  gg.alert('天空黑色落地一小会儿后开启')
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('100.0;403200.0:9', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('100', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll('-99', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('3.4028235e38;1.4210855e-14;3.4028235e38;3.4028235r38;0.05000000075:85', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.05000000075', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('120', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('988,635.5625;988,635.5625;556,708.125;1,127,720.75;3.4028235e38;0.05000000075:25', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.05000000075', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('120', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_C_ALLOC)
  gg.searchNumber('49;50;1;131;133;55;56;135;140:173', _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('56', _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll('12', _G.gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('天空黑色✔️')
  gg.setRanges(gg.REGION_ANONYMOUS)
end

function b5()
  gg.alert("上车时开启，车速不要超过200不然会被限速(女朋友受不了)")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('0.647058857;0.30000001192;0.94117647409::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll('150.241295', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('吉普加速✔️')
end

function b7()
gg.alert("诛仙原创感觉好用加群")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;0.00009203507;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;0.00009203507;23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("30", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40;33;69.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("诛仙牛逼")
end

function b8()
  qmnb = {
    {memory = 32},
    {
      name = "天线开启"
    },
    {value = -100.91194152832, type = 16},
    {
      lv = 87.27782440186,
      offset = -4,
      type = 16
    },
    {
      lv = 88.50576019287,
      offset = -8,
      type = 16
    },
    {
      lv = 1.4012985E-45,
      offset = 16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1.96875,
      offset = -8,
      type = 16
    },
    {
      value = 1.96875,
      offset = -4,
      type = 16
    },
    {
      value = 999999,
      offset = 4,
      type = 16
    },
    {
      value = 2,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", 16, false, 536870912, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", 16, false, 536870912, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", 16)
  gg.toast("不漏人天线开启成功")
end

function b10()
  gg.clearResults()
  gg.processResume()
  gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("轿车飞天✔️")
  gg.processResume()
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
end


function b12()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("新版天线")
end
function b11()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("300", gg.TYPE_FLOAT)
  b1sj="300"
  gg.toast("范围伤害已开启")
end
    

function b13()
 A = gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{7.1689529418945, 0x38A4}, {9.2457857132, 0x489C}, {13.18564987183, 0x4894},}
    local tb2 = {{999999, 0x38A4},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.4779739379883, 0x749C}, {1.38781404495, 0x7498}, {2.03120303154, 0x748C},}
    local tb2 = {{99999, 0x749C, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{7.4993133544922, 0xD1C4}, {-25.68770980835, 0xD1C0}, {17.2485370636, 0xD1BC},}
    local tb2 = {{99999, 0xD1C4, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.10485887527, 0x7B60}, {4.03340053558, 0x7B5C}, {15.11002922058, 0x7B58},}
    local tb2 = {{99999, 0x7B60, false},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("3级装备+8倍镜天线已开启  ") 
   gg.setRanges(gg.REGION_VIDEO)                      
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("消音器天线开启成功")
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("步枪快扩天线已开启")    
 gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("6.95975875854", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("88996", gg.TYPE_FLOAT)
    gg.toast("5.56子弹定位成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("7.14577531815", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("三级头定位开启成功")
end
    
    
    
function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('4848124999984742400', gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('-4767057191527907328', gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast('穿墙路飞✔️')
end








function c1()
  gg.clearResults()
  gg.searchNumber('0.2~0.3;53;30;1::', gg.TYPE_FLOAT, false)
  gg.searchNumber('0.2~0.3;1::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('防抖')
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("176293393;8F;9.5F;15F::", gg.TYPE_DWORD)
  gg.searchNumber("176293393", gg.TYPE_DWORD)
  gg.getResults(10)
  gg.editAll("176293392", gg.TYPE_DWORD)
  gg.toast("无后")  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("️无后")
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  b2sj="0"
  gg.toast("全枪无后已开启")
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.9244102e12;7.3983547e31::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('3.9244102e12', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(11)
  gg.editAll('3.9244102e11',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('全局手部防抖已开启')
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('7.0062189E22;3.9928675E24;3.9413961E12::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('7.0062189e22', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(111)
  gg.editAll('0',gg.TYPE_FLOAT)
  gg.clearResults()
  b3sj="0"
  gg.toast("全局镜防抖已开")
end

function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.3599998951', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('聚点️')
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("准心聚点已开启")
end

function c3()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber('360.0;0.0001;-1.0153182e28:21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(16384)
  gg.editAll('999', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(16384)
  gg.editAll("1999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(16384)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("演员开启成功")
end

function c4()
Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.2573531344941352E23, 0},{-9.90656151829801E27, -40},}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)
Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {{1.1625219467270265E33, 0},{7.476871833205223E-4, 64},}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336691171:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("持枪自瞄开启成功")
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-438760708", 4)
  resultCounts = gg.getResultsCount()
  results = gg.getResults(resultCounts)
  for _FORV_3_ = 1, resultCounts do
    values = {}
    values[1] = {}
    values[1].address = results[_FORV_3_].address - 4
    values[1].flags = 4
    values = gg.getValues(values)
    if values[1].value == -308344081 then
      setvalues = {}
      setvalues[1] = {}
      setvalues[1].address = results[_FORV_3_].address - 5792
      setvalues[1].flags = 4
      setvalues[1].value = -301987263
      setvalues[2] = {}
      setvalues[2].address = results[_FORV_3_].address - 2060
      setvalues[2].flags = 4
      setvalues[2].value = -301921727
      setvalues[3] = {}
      setvalues[3].address = results[_FORV_3_].address
      setvalues[3].flags = 4
      setvalues[3].value = -438760960
      setvalues[4] = {}
      setvalues[4].address = results[_FORV_3_].address - 12
      setvalues[4].flags = 4
      setvalues[4].value = -301987264
      setvalues[5] = {}
      setvalues[5].address = results[_FORV_3_].address + 4472
      setvalues[5].flags = 4
      setvalues[5].value = -290387456
      setvalues[6] = {}
      setvalues[6].address = results[_FORV_3_].address + 6796
      setvalues[6].flags = 4
      setvalues[6].value = -509587454
      gg.setValues(setvalues)
      gg.toast("全屏自瞄开启成功")
    end
  end
end

function c5()
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
 gg.toast("开启成功")
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
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function d1()
Name = "同款号" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.165185949292467E26, 0},

}
local modify = {{-3.836923e21 ,-20},}
SearchWrite(search,modify,dataType,Name)
end

function d2()
Name = "关" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.165185949292467E26, 0},

}
local modify = {{-3.83692277e21 ,-20},}
SearchWrite(search,modify,dataType,Name)
end



function d3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("666", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end

function e3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20000;750;0.0001;0.07 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0005", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,576,460,390",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,728,725,571",gg.TYPE_QWORD)
gg.toast("关闭成功")
end

function e2()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('-5',gg.TYPE_FLOAT)
  gg.toast('加速防拉回开启成功')
end

function e1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20000;750;0.0001;0.0005 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
  gg.toast("开启成功")
end

function e4()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速开启中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_CODE_APP)
local dataType=gg.TYPE_FLOAT Name="全速统一"
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00050000002,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.02, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
gg.toast("稳定加速")
end
function e4()
Name = "秒下飞机"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {3000.0, 0},
    {5000.0, 4},
    {1024.0, 8},
    {89.0, 36},

  }
  local modify = {{200000, 0},{200000, 4},{200000, 8},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("快速跳伞开启成功")
end


function k1()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("5.1650996e21F;5.23888883e21F;-5.56955884e-40F:605", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.75000095367F;6.05053825e21F;-2.57740266e-39F:141", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视成功")
end 

function k2()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4.7408166e21;4.72236648e21;4.74081492e21;4.81460302e21;2.0:89",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("骁龙660马赛克开启成功")
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1.39125666e-19;1.1202056e-19;2.0;0.24022650719;0.69314718246:93", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("骁龙660马赛克开启成功")
end



function k3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("透明化开启成功")
end

function k4()
Name = "流畅透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-1.6815581571897805E-44, 0}, 
{4.925287423079891E21, -28}, 
{4.906834486556694E21, -4},
 }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-2.5774194758203506E-39, 0}, 
{6.087445810522475E21, -20}, 
{6.105893117546138E21, -12},
{5.626278334579643E21, -4}, 
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
end

  

function k5()
gg.setRanges(1048576)
local tb1 = {{1.1078273e-39,0},{4.7223665e21,4},{-9.185091e-41,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.setRanges(1048576)
local tb1 = {{5.3248159e-29,0},{3.75000596046,4},{-1.6590645e-39,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.toast("骁龙765/765G/865/865plus人物透视开启成功")
end


 
function k6()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4.7408166e21;-5.5695588e-40;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(14)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("马赛克")
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1.3912568e-19;1.1202057e-19;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("透明化")
end

function k7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('112;-1,951,875,776;-1,389,575,936;-1,864,298,348;-1,162,341,632:685',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('112',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('8',gg.TYPE_DWORD)
gg.toast("开启成功")
end


function k8()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("5.1650996e21F;5.23888883e21F;-5.56955884e-40F:605", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.75000095367F;6.05053825e21F;-2.57740266e-39F:141", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视成功")
end 



  function k9()
  gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("112;256;128;2848;352;32;384;16;2848;336;16;272;332;352;368;384;388;392;396;400;404;468;784;734,003,200;64;16;4095;4095;4095;4095;4095;112:6477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100000)
     gg.editAll("4", gg.TYPE_DWORD)
	 gg.toast("980透视开启成功")
	 gg.alert("第一次开启闪的话请切到桌面或后台重进游戏，以后就都不会闪了哈")
end
	 
	 
	 function k10()
	  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125666e-19F;3.9236357e-44F;1.1202056e-19F;3.76158192e-37F;2.0F;-1.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT )
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.40491684e21F;1.33123354e-43F;1.39125653e-19F;2.0F;1.66231134e-19F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT )
gg.clearResults()
gg.toast("675透视开启成功")
end


function k11()
    Name = "物品透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-7.006492321624085E-45, 0}, 
{4.759266726416505E21, -52}, 
{5.568031422025374E-40, -48}, 
{1.107830132135128E-39, -32},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-3.128393216411297E-39, 0}, 
{5.294235815352964E21, -28}, 
{4.980641729049856E21, -20}, 
{4.888404630981587E21, -4},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
end




function Exit()
print("本脚本是啸天一人完成没有什么合作完成等啸天粉丝群:没有")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '脚本作者快猫啸天GG修改器'
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










