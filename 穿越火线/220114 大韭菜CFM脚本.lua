

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
      gg.toast("已修改"..#t.."条数据")
      gg.addListItems(t)
    else
      gg.toast("无数据", false)
      return false
    end
  else
    gg.toast("Not Found")
    return false
  end
end
--------------<配置>----------------
zly={}
function search(t,type)
rt={}
gg.setRanges(type)
gg.clearResults()
gg.searchNumber(t[1], 4, false, gg.SIGN_EQUAL, 0, -1)
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end
end
::last::
return rt
end
-----------<菜单>-------------
---------------<提示>-----
--gg.alert("稚初制作")
---------------<菜单>------------------
function Main()
  menu1 = gg.multiChoice({
  "透视(一把一开)",
  "无后(局内开,全局有效)",
  "防抖(局内)",
  "防烟闪",
  "ca范围(大厅)",
  "大范围",
  "单局爬墙",
  "秒开聚点(局内)",
  "原地加速",
  "加速不拉",
  "全局高跳",
  "57自瞄(大厅)",
  "隔墙自瞄(大厅)",
  "上色",
  "快刀(大厅)",
  "关闭快刀",
  "锁头",
  "加速切枪(局内)",
  "腾讯界面全防",
  "退出脚本"
 }, nil, "猫猫包袋 大韭菜 全火CFM脚本")
  if menu1 == nil then 
  else
  if menu1[1] == true then 
    a()
  end
  if menu1[2] == true then
   b()
  end
  if menu1[3] == true then
   c()
  end
  if menu1[4] == true then
   d()
  end
  if menu1[5] == true then
   e()
  end
  if menu1[6] == true then
   f()
  end
  if menu1[7] == true then
   g()
  end
  if menu1[8] == true then
   h()
  end
  if menu1[9] == true then
   i()
  end
  if menu1[10] == true then
   j()
  end
  if menu1[11] == true then
   k()
  end
  if menu1[12] == true then
   l()
  end
  if menu1[13] == true then
   m()
  end
  if menu1[14] == true then
   n()
  end
  if menu1[15] == true then
   o()
  end
  if menu1[16] == true then
   p()
  end
  if menu1[17] == true then
   q()
  end
  if menu1[18] == true then
   r()
  end
  if menu1[19] == true then
   s()
  end
  if menu1[20] == true then
   Exit()
    end
    FX2=0
    end
  XGCK = -1
end
------------<透视>----------
function a()
local tb1 = {{2048,0}, {1008981770,40}, {1148846080,44}, } 	
local tb2 = {{108900,0}, } 	
local dataType = 4---类型
gg.setRanges(32|4) ---内存
SearchWrite(tb1,tb2, dataType)
gg.toast("透视开启成功")
end
------------<无后>----------
function b()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1000.0F;1.0F;1000.0F;1.0F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("无后开启成功")
end
-------------<防抖>----------
function c()
r=search({"1148846080",{"1069547520",8},{"1065353216",16},{"1148846080",24}},4)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+16
tt[ii].flags=4
tt[ii].value=0
end
gg.setValues(tt)
gg.toast("防抖开启成功，共修改"..#tt.."条")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
else gg.toast("防抖开启失败")
end
end
-------------<烟闪>-----------
function d()
  gg.clearResults(5000)
  gg.setRanges(48)
  gg.searchNumber("1091148186", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", 4)
  gg.clearResults(5000)
  gg.clearResults(5000)
  gg.setRanges(48)
  gg.searchNumber("1056964608D;1092616192D;25::9", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1", 16)
  gg.clearResults(5000)
end
-------------<范围>------------
function e()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('2;0.00001;90;90',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.00001',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('小范围开启成功')
end
------------<范围>--------------
function f()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.00001;-9.4914432e20;-8.7954436e22:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("第一步失败")
  else
    gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("3", gg.TYPE_FLOAT)
    gg.toast("红名开启成功")
  end
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1.0;2.0;4.0;0.00001;90',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
tt =gg.getResults(1)
if tt[1] == nil then
gg.alert("开启失败！")
else
gg.searchNumber('1',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll('3.5', gg.TYPE_FLOAT)
gg.toast('加伤开启成功')
end
end
------------<爬墙>--------------
function g()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("184,549,368D;452,984,820D;1,051,772,663D;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("爬墙开启")
end
-------------<聚点>--------------
function h()
r=search({"-308606462",{"-369098748",12},{"-308401664",24}},32)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+12
tt[ii].flags=4
tt[ii].value=0
end
gg.setValues(tt)
gg.toast("聚点已开启，共修改"..#tt.."条数据")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
else gg.toast("聚点开启失败")
end
end
---------------<加速>--------------
function i()
r=search({"1107296256",{"1101004800",16},{"1077097267",20},{"1073741824",24}},32)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+16
tt[ii].flags=4
tt[ii].value=1116471296
end
gg.setValues(tt)
gg.toast("加速40%")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
end
r=search({"1107296256",{"1077097267",20},{"1073741824",24},{"1112014848",32}},32)
if #r>0 then
tt={}
for i=1,#r do
ii=#tt+1 tt[ii]={}
tt[ii].address=r[i].address+32
tt[ii].flags=4
tt[ii].value=1123024896
end
gg.setValues(tt)
gg.toast("加速60%")
gg.setVisible(false)
gg.sleep(100)
gg.clearResults()
end
end
------------<微加>------------
function j()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4.68580007553F;0.60000002384~0.8;20.0F; 50.0F;0.33000001311F; 0.60000002384F ::512", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("4.68580007553;0.6;20;50;0.33;0.6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("28;1.2;60;90;2.8;6",gg.TYPE_FLOAT)
gg.toast("微加开启成功")
end
------------<高跳>------------
function k()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("-1070386381D;1083568659D;0.6;1101004800D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1070386381D;1083568659D;4.68580007553;1101004800D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.68580007553", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("88",gg.TYPE_FLOAT)
gg.toast("高挑开启")
end
------------<自瞄>-------------
function l()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("57.29578018188;1000;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57.29578018188;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000;0", gg.TYPE_FLOAT)
	 gg.toast("57自瞄开启成功")
	 gg.clearResults()
end
------------<隔墙>---------------
function m()
gg.clearResults()
gg.searchNumber("1,050,253,722;1,050,253,722;1,063,675,494:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,063,675,494", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
------------<上色>---------------
function n()
gg.clearResults()
gg.searchNumber("32770", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(9999999)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end
-------------<快刀>--------------
function o()
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".5F;1.0F;1000.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("3.4e38", gg.TYPE_FLOAT)
  gg.toast("快刀开启成功")
end

function p()
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".5F;3.4e38F;1000.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("3.4e38F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("快刀关闭成功")
end

function q()
o=os.clock()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1058642330;428;80;79;112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1058642330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1062339950", gg.TYPE_DWORD)
if gg.getResultCount()<1000 then
gg.toast("锁头开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>1000 then
gg.toast("锁头开启成功\n  共修改1000条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end

-------------<切枪>---------------
function r()
gg.setRanges(16420)
    gg.setRanges(16420)
    var = gg.getResults(5000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('1000;1;1000;1000;1000::73', gg.POINTER_WRITABLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1', gg.POINTER_WRITABLE, false, gg.SIGN_EQUAL, 0, -1)
    var = gg.getResults(1)
    gg.editAll('3', gg.POINTER_WRITABLE)
    gg.clearResults()
    gg.toast('切枪加速开启成功️')
end
-------------<小号>-----------------
function s()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("268,435,714;1~2,147,441,999;12,075::65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
evert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
-------------<全防>-----------------

-------------<退出>----------------
function Exit()
print("猫猫包袋功能全防")
os.exit()
end
------------<配置>-----------------
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
------------END------------END--------------END------------END-----------------








