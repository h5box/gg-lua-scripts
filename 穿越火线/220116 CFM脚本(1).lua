

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setVisible(false) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) xxx=gg.getResultCount() if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功\n共搜索"..xxx.."条数据\n修改了" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end gg.clearResults()  end
Memory_offset=function(Search,Write,nc,Type,name) gg.clearResults() gg.setRanges(nc) gg.setVisible(false) lx=Search[1][2] gg.searchNumber(Search[1][1], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("搜索到"..count.."条数据") for i, v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp = {} local num = Search[k][1] if Search[k][3]~= nil then lx=Search[k][3] else lx=Type end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k][2] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w[3] ~= nil then lx = w[3] else lx=Type end t[#t+1] = {} t[#t].address = data[i] + w[2] t[#t].flags = lx if (w[1]~=nil) and (w[1]~=false) then t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) else gg.setValues(t) end end end end gg.loadResults(t) gg.toast(name.."成功，共修改了"..#t.."个数值") else gg.toast(name.."开启失败") end else gg.toast(name.."搜索失败") end gg.clearResults() end
function ts(ts) if ts then gg.toast(ts) return true else gg.toast("nil") return false end end
function getso(name) return gg.getRangesList(name)[1].start end
function Memory_modify(add,ta) addr=add t={} for i=1,#ta do t[i]={} t[i].address=addr+ta[i][3] t[i].flags=ta[i][2] t[i].value=ta[i][1] end gg.setValues(t) end

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
        end
     end
end







function Main()
  SN =gg.multiChoice({
  "透视",
  "中型范围",
  "人物加速",
  "人物高挑",
  "开启血透",
  "5 7 自瞄",
  "X A 自瞄",
  "A 类自瞄",
  "开启锁头",
  "C A 无后",
  "A 类无后",
  "小型范围",
  "开启爬墙",
  "开启快刀",
  "开启隔墙",
  "大型范围",
  "退出脚本",
 }, nil, "交流群734358985")
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
    k()
  end
  if SN[12] == true then
    l()
  end
  if SN[13] == true then
    m()
  end
  if SN[14] == true then
    n()
  end
  if SN[15] == true then
    o()
  end
  if SN[16] == true then
    p()
  end
 if SN[17] == true then
   Exit()
  end
end
  XGCK = -1
end





-- gg.clearResults()-------全防
--	 gg.setRanges(16384)
--	 gg.searchNumber("-1.54742496e26;-3.83749951e21;0.00048828142;-1.54742496e26;-5.9029581e21:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--	 gg.searchNumber("0.00048828142", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--	 jg=gg.getResults(100)
--	 sl=gg.getResultCount()
--	 for i = 1, sl do
--	 	 dzy=jg[i].address
--	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
--	 end
--	 gg.toast("第一步第一次开启成功")
--	 gg.clearResults()





function a()
--gg.clearResults()
--gg.setRanges(4)
--gg.searchNumber("14,680,064;33,554,432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--gg.searchNumber("14,680,064;33,554,432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--jg=gg.getResults(10000)
--sl=gg.getResultCount()
--for i = 1, sl do
--dzy=jg[i].address
--gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
--end
 qmnb = {
{["memory"] = 32},----4
{["name"] = "透视"},
{["value"] = 1050319515, ["type"] = 4},
{["lv"] = 2048, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 10800, ["offset"] = 28, ["type"] = 4},

}
xqmnb(qmnb)
end



function b()



  gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1.7832457e28;-5.4731112e27;-7.9489907e27::20',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
tt =gg.getResults(1)
if tt[1] == nil then
gg.alert("开启失败！")
else
gg.searchNumber('-1.7832457e28',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('加伤开启成功')
end
  gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-5.11526796e27;-9.49143755e20;-5.7831727e26::65',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
tt =gg.getResults(1)
if tt[1] == nil then
gg.alert("开启失败！")
else
gg.searchNumber('-5.11526796e27',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(5)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('加伤开启成功')
end
end




function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("76D;1;1000;1000::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("人物加速开启成功")
end



function d()
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




function e()
gg.setRanges(32)
gg.searchNumber("-1.13686865e-13;-8.50025967e22;-5.90526395e21;6.16301403e-33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-8.50025967e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
end
gg.toast("血透开启成功")
gg.clearResults()
end




function f()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("57.29578018188;1000;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("57.29578018188;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000;0", gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
gg.clearResults()
end




function g()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-3.69511342e20;-5.11944639e31;-1.30015934e28:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.11944639e31", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
end





function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-9.1496139e22;-9.1533104e22;-7.5594757e22::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-9.1496139e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
end




function i()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1058642330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1062339920", gg.TYPE_DWORD)
gg.toast("锁头开启成功")
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1000.0F;1.0F;1000.0F;1.0F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
end





function k()
gg.clearResults()      
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("-1.0061304e28;-2.83437239e28;-2.83249856e28;-5.37881556e27;-3.68935128e20::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.37881556e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)                 
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()      
end 






function l()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.5;1;160D;0.0001',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('3', gg.TYPE_FLOAT)
gg.toast('范围开启成功')
end



function m()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("184,549,368D;452,984,820D;1,051,772,663D;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("全局爬墙开启成功")
end





function n()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.5F;1.0F;1000.0F::30', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('3.4e38',16)
gg.toast('快刀开启成功')
end





function o()
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

function p()
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



function Exit()
os.exit()
end
cs = ""



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