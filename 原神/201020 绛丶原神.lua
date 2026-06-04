function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '开启成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '开启失败') end end end end
--核心配置↓不懂勿改
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end      
--核心配置↑不懂勿改



function Main()
  SN =gg.multiChoice({
  "弓箭手蓄力秒杀",
  "弓箭手蓄力神射速",
  "全角色无CD",
  "香菱普攻改大招",
  "香菱大招秒杀",
  "定怪",
  "3倍移速",
  "8倍平a攻速",
  "范围拾取_捡破烂",
  "浮空",
  "安波普攻秒杀",
  "芭芭拉普攻四段秒杀",
  "退出脚本"
 }, nil, "这里可以填写你的QQ")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   p()
  end
  if SN[12] == true then
   ji()
  end
  if SN[13] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
range=32
search="9999999"
search="9999999"
search="9999999"
search="1.24"
type=16
better="1.24"
typetwo=16
make="999"
maketype=16
tips="开启成功"
library()
end



function b()
qmnb = {
{["memory"] = 4},
{["name"] = "神射速"},
{["value"] = 0.64999997616, ["type"] = 16},
{["lv"] = 0.89999997616, ["offset"] = 48, ["type"] = 16},
{["lv"] = 1, ["offset"] = 180, ["type"] = 16},
}
qmxg = {
{["value"] = -9, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4;0;26;27;14;60::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('4;60',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 4;0;26;27;14;60,}})
end

gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10235;12F;10231;20F',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10235;10231',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('10231;10235',gg.TYPE_DWORD)
end



function e()
range=32
search="9999999"
search="9999999"
search="9999999"
search="1.12"
type=16
better="1.12"
typetwo=16
make="9999"
maketype=16
tips="开启成功"
library()
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('99999;0.066;0.2;0.3;0.4::55',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.066',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('9999',16)
end



function g()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('1,869,410,625D;1F;65792D;16D;3512D::49',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('3',16)
end



function h()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('1743855065D;1::18',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('8',16)
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3;2',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('3;2',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10000)
gg.editAll('100;50',16)
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('100F;128F;400F:100',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('100F;128F;400F:100',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("浮空")
end
function p()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.36120000482',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.36120000482',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll('9999',16)
end
function ji()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.552',16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.552',16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll('9999',16)
end

function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"

function library() 
gg.clearResults() 
gg.setRanges(range) 
gg.searchNumber( search,type,false, gg.SIGN_EQUAL, 0, -1) 
if gg.isVisible(false) 
then  
gg.alert("防偷窥警告")
gg.clearResults() 
os.exit() 
else   
if gg.getResultCount() >= 1 
then 
gg.searchNumber(better,typetwo, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1000)  
gg.editAll(make, maketype) 
gg.toast(tips) 
gg.clearResults()	
else  
gg.toast("搜索失败！") 
end   
end  
end




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









