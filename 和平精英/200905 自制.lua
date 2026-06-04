function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function jiuyan(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."修改中,共修改1条数据")else gg.toast(qmnbn.."开启失败")end end end
----------------------------------------------
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

--[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end
--[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
e7sj="220"
e1sj="25;30.5"
e9sj="55"
e8sj="8196"
function Main()
  SN = gg.multiChoice({
  "无后防抖聚点（大厅）",
  "持枪自瞄（落地）",
  "子弹穿墙（落地）",
  "流畅透视（大厅）",
  "40倍加速开启（落地）",
  "40倍加速关闭（落地）",
  "2倍加速（落地）",
  "4倍加速（落地）",
  "瞬间落地（出生）",
  "全图除草（大厅）",
  "全屏屠星（落地）",
  "退出一个试试"
 }, nil, "自制")
  if SN == nil then
  else
  if SN[1] == true then
   dd1()
  end
  if SN[2] == true then
   dd2()
  end
  if SN[3] == true then
   dd3()
  end
  if SN[4] == true then
   dd4()
  end
  if SN[5] == true then
   dd5()
  end
  if SN[6] == true then
   dd6()
  end
  if SN[7] == true then
   dd7()
  end  
  if SN[8] == true then
   dd8()
  end
  if SN[9] == true then
   dd9()
  end
  if SN[10] == true then
   dd10()
  end
    if SN[11] == true then
   dd11()
  end
  if SN[12] == true then
   Exit()
  end
end
  XGCK = -1
end



function dd1()
qmnb = {
{["memory"] = 8},
{["name"] = "全局午后"},
{["value"] = -6196952597921662448, ["type"] = 32},
{["lv"] = -1228926272664233280, ["offset"] = -4, ["type"] = 32},
}
qmxg = {
{["value"] = -1228926276669014016, ["offset"] = -4, ["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111705e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖已成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖已成功")
qmnb = {
{["memory"] = 8},
{["name"] = "全局聚点"},
{["value"] = -1288018490030810559, ["type"] = 32},
{["lv"] = -1292522025222927872, ["offset"] = 8, ["type"] = 32},
}
qmxg = {
{["value"] = -1387800268334956544, ["offset"] = 12, ["type"] = 32},
}
xqmnb(qmnb)
end



function dd2()
 qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "全屏自瞄开启中"},
{["value"] = -2.8488793e28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.4827808e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2464639e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.7270195e28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 0, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
 gg.clearResults()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('360.0;0.0001;-1.0153182e28:21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('9999', gg.TYPE_FLOAT)
  gg.toast('自瞄锁身开启中')
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("-1.0e10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("全屏自瞄开启成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-476,053,504',4,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-476,053,503',4)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("360;0.0001;1478828288", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1905726136855492093", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-1905726136855492092", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11)
gg.editAll("-1901891198902075392", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",16)
--gg.clearResults()
--gg.setRanges(8)
--gg.searchNumber("0.0001;1478828288::", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.getResults(100)
--gg.editAll("180", 16)
qmnb = {
{["memory"] = 8},
{["name"] = "持枪圈圈"},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
gg.toast("持枪圈圈注入完毕")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("360;0.0001;1478828288", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
--gg.clearResults()
--gg.setRanges(8)
--gg.searchNumber("0.0001;1478828288::", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.getResults(100)
--gg.editAll("180", 16)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
qmnb = {
{["memory"] = 8},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
gg.toast("全屏自瞄成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",16)
gg.toast("近战自瞄")
end



function dd3()
gg.clearResults() 
gg.setRanges(32) 
gg.searchNumber("2,810,246,175,001,347,936", 32, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(30) 
gg.editAll("2,810,246,172,909,699,072", 32) 
gg.toast("真伤路飞开启成功") 
end



function dd4()
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "偏移透视"},
{["value"] = 537151744, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 116, ["type"] = 4},
}
qmxg = {
{["value"] = 1123024896, ["offset"] = 116, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "马赛克"},
{["value"] = -2146888784, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = 1123024896, ["offset"] = 72, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "靓仔"},
{["value"] = 271515653, ["type"] = 4},
{["lv"] = 8196, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1194380040, ["offset"] = 12, ["type"] = 4},
{["lv"] = 278139027, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 2, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end



function dd5()
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,287,719,427,143,988,736", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  n=gg.getResultCount()
  jz=gg.getResults(n)
	 	 if gg.getResultCount() == 0 then
gg.toast("不拉回加速")
else
gg.clearResults()
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
         if gg.getResultCount() == 0 then
 for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_QWORD,value = "-1,296,744,149,883,614,555"}})
    gg.setValues({[1] = {address =jz[i].address-0x6F4058,flags = gg.TYPE_QWORD,value = "-1,904,987,454,010,553,855"}})
    gg.setValues({[1] = {address =jz[i].address-0x5E4B0,flags = gg.TYPE_BYTE,value = "-61"}})
end
else
 for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_QWORD,value = "-1,296,744,153,870,237,696"}})
    gg.setValues({[1] = {address =jz[i].address-0x6F4058,flags = gg.TYPE_QWORD,value = "-1,904,987,454,002,175,247"}})
    gg.setValues({[1] = {address =jz[i].address-0x5E4B0,flags = gg.TYPE_BYTE,value = "0"}})
end
end
end
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "40倍加速"},
{["value"] = 0.0005, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0, ["offset"] = 17, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {

{["value"] = 0.07, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
gg.toast("40倍加速开启成功")
end


function dd6()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "关闭加速"},
{["value"] = 0.07, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0, ["offset"] = 17, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {

{["value"] = 0.0005, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,576,460,390",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,728,725,571",gg.TYPE_QWORD)
gg.toast("40倍加速关闭成功")
end

function dd7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("人物微速开启成功")
end
function dd8()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
	 gg.searchNumber("-6.15264497e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("滴")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;50;50;1000;1,065,353,217D;1,065,353,217D;1,065,353,217D;1,065,353,217D;1,065,353,217D;1,065,353,217D;1F;1,065,353,217D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1.29999995232",gg.TYPE_FLOAT)
gg.alert("%50")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;479.5;479.5;5.60519386e-45;5.60519386e-45;100;0::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("479.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(250)
gg.editAll("900",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;900;900;5.60519386e-45;5.60519386e-45;100;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999", gg.TYPE_FLOAT)
end
function dd9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=300000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=300000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=300000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=300000
gg.setValues(setvalues)
gg.toast("瞬间落地已成功")
end
end
end
end
end
function dd10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4,590,068,740,425,724,723",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",32)
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


function dd11()
qmnb = {
{["memory"] = 32},
{["name"] = "全屏屠心"},
{["value"] = 16, ["type"] = 16},
{["lv"] = 4, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 669, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function Exit()
print("自制")
os.exit()
end
cs = "自制"



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









