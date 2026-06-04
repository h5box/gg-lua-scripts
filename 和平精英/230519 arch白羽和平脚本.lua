
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, crxg) for x = 1, #(crxg) do xgpy = szpy + crxg[x]["offset"] xglx = crxg[x]["type"] xgsz = crxg[x]["value"] xgdj = crxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function gcrnb(crnb) gg.clearResults() gg.setRanges(crnb[1]["memory"]) gg.searchNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(crnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + crnb[v]["offset"] pysz[1].flags = crnb[v]["type"] szpy = gg.getValues(pysz) pdpd = crnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, crxg) end end if xgjg == true then gg.toast(crnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(crnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

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




function Main()
SN = gg.multiChoice({
"白羽yyds",
"无后自瞄锁狗琨狗头",
"白羽原创",
"人物变大",
"白羽同款范围",
"真伤范围",
"枪械伤害",
"闪电侠",
"加速关闭",
"趴下路飞",
"脑袋电线杆",
"上帝视角",
"子弹瞬击",
"️下蹲左手路飞️",
"独家范围",
"子弹穿墙",
"吉普加速",
"打击特效",
"跳远冠军",
"黄金风衣",
"退出脚本",

}, nil,"白羽QQ3624631670")
if SN == nil then else
if SN[1] == true then A() end
if SN[2] == true then B() end
if SN[3] == true then C() end
if SN[4] == true then D() end
if SN[5] == true then E() end
if SN[6] == true then A6() end
if SN[7] == true then F() end
if SN[8] == true then G() end
if SN[9] == true then H() end
if SN[10] == true then  I() end
if SN[11] == true then J() end
if SN[12] == true then a() end
if SN[13] == true then b() end
if SN[14] == true then c() end
if SN[15] == true then d() end
if SN[16] == true then e() end
if SN[17] == true then f() end
if SN[18] == true then A1() end
if SN[19] == true then A2() end
if SN[20] == true then A3() end
if SN[21] == true then Exit() end
end
XGCK = -1 
end

function A()
qmnb = {
{["memory"] = 1048576},
{["name"] = "天空黑"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1669562379, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("671,236,110;8,200:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(2000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "7"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function B()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
end

function C()
gg.clearResults()
  gg.searchNumber("0.001;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("轿车飞天开启成功")
end



function D()
qmnb = {
{["memory"] = 32},
{["name"] = "变大"},
{["value"] = 2121728, ["type"] = 4},
{["lv"] = -1028653056, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 1.2, ["offset"] = 192, ["type"] = 16},
{["value"] = 1.2, ["offset"] = 196, ["type"] = 16},
{["value"] = 1.2, ["offset"] = 200, ["type"] = 16},}
xqmnb(qmnb)
end

function A6()
gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("180", gg.TYPE_FLOAT)
    gg.toast("范围开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("160", gg.TYPE_FLOAT)
    gg.toast("新版范围开启成功 ")
    gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("170", gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("真伤范围")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("295", gg.TYPE_FLOAT)
  gg.toast("范围打击开启成功")
end

function E()
qmnb = {
{["memory"] = 32},
{["name"] = "范围打击"},
{["value"] = 35.0, ["type"] = 16},
{["lv"] = 33.0, ["offset"] = 4, ["type"] = 16},}
qmxg = {
{["value"] = 170.0, ["offset"] = 0, ["type"] = 16},
{["value"] = 171.0, ["offset"] = 4, ["type"] = 16},
{["value"] = 171.0, ["offset"] = 8, ["type"] = 16},}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.refineNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("172", gg.TYPE_FLOAT)
gg.toast("范围还有一半哦")
gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  gg.alert("追踪头部开启成功")

end
function F()
gg.clearResults()gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("m4开启伤害%")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("akm开启伤害")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("scar开启伤害")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("m16开启伤害")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("m762开启伤害")
end


function G()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.toast("不拉加速开启成功")
end

function H()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.toast("可挽不拉加速关闭成功")
end

function I()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614273071;0.53446769714;-3.42663764954;1.7763571e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.53446769714", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("趴下路飞开启成功")
end

function J()
qmnb = {
{["memory"] = 32},
{["name"] = "天线"},
{["value"] = -100.91194152832031, ["type"] = 16},
{["lv"] = 90.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 87.27782440185547, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -4, ["type"] = 16},
{["value"] = 1.96875, ["offset"] = -8, ["type"] = 16},
{["value"] = 999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a()
qmnb = {
{["memory"] = 32},
{["name"] = "上帝视角"},
{["value"] = 6.852349490548355E-41, ["type"] = 16},
{["lv"] = 2.802596928649634E-45, ["offset"] = -44, ["type"] = 16},
{["lv"] = 220.0, ["offset"] = -32, ["type"] = 16},
{["lv"] = 178.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 350, ["offset"] = -32, ["type"] = 16},

}
xqmnb(qmnb)
end

function b()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0.999", gg.TYPE_FLOAT)
  gg.toast("枪械射速开启成功")
end

function c()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.1359036e-25;18.38787841797;0.53867292404", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("140", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.90990912914", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-0.90990912914", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.42232513428", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.42232513428", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("250", gg.TYPE_FLOAT)
gg.toast("左手路飞已开启")
end
function d()
gg.getResultCount()
  gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("头部区块开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.toast("xa中区块开启成功")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("9.3613598e-38;0.0001;0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  gg.toast("xa下区块开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.0530367e28;-5.8454586e27;-2.786015113484864649181e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-2.7860151e28;-3.7444097e28;-2.79375848481846461681545481812e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("修伤开启成功")
  gg.setRanges(32)
end

function e()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList("libUE4.so")[1].start
py=0x4F755A4
setvalue(so+py,16,90)
gg.toast("大鱼:子弹穿墙成功")
end

function f()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速开启成功")
end
  
function A1()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList("libUE4.so")[1].start
py=0x45E1510
setvalue(so+py,4,0)
gg.toast("大号:打击特效开启")
end

function A2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-305132800;-409010176;-509587455;-442564256;-443547640;-444334072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-305132800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("加速跳远")
end

function A3()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 501001009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 501002009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 501003009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("103003001",gg.TYPE_DWORD)
gg.toast("awm美化成功")
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("103001009",gg.TYPE_DWORD)
gg.toast("98k美化成功")
gg.searchNumber("10300200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10300200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("103002012",gg.TYPE_DWORD)
gg.toast("m24美化成功")
gg.clearResults()
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101004028", gg.TYPE_DWORD)
gg.toast("M4星际")
gg.clearResults()
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101001018", gg.TYPE_DWORD)
gg.toast("AK百万伏特")
gg.clearResults()
gg.clearResults()
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101003022", gg.TYPE_DWORD)
gg.toast("SCAR龙骨")
gg.clearResults()
gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101008016", gg.TYPE_DWORD)
gg.toast("M762蜘蛛侠")
gg.clearResults()
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101002007", gg.TYPE_DWORD)
gg.toast("M16a4快乐主宰")
gg.clearResults()
gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("108004002", gg.TYPE_DWORD)
gg.toast("平底锅龙骨")
gg.clearResults()
gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("104002002", gg.TYPE_DWORD)
gg.toast("s1897百万伏特")
gg.clearResults()
gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("104001004", gg.TYPE_DWORD)
gg.toast("s686蜘蛛侠")
gg.clearResults()
gg.clearResults()
gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101005005", gg.TYPE_DWORD)
gg.toast("狗砸")
gg.clearResults()
gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101007006", gg.TYPE_DWORD)
gg.toast("qbz")
gg.clearResults()
gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("102002019", gg.TYPE_DWORD)
gg.toast("UMP45")
gg.clearResults()
gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("105001008", gg.TYPE_DWORD)
gg.toast("大菠萝")
gg.clearResults()
gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("105002003", gg.TYPE_DWORD)
gg.toast("大盘鸡")
gg.clearResults()
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("404049", gg.TYPE_DWORD)
gg.toast("s1裤开启成功")
gg.clearResults()
gg.clearResults()
gg.searchNumber("405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("405241", gg.TYPE_DWORD)
gg.toast("鞋子")
gg.clearResults()
gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102001009", gg.TYPE_DWORD)
gg.toast("UZI美化成功")
gg.clearResults()
gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102003008", gg.TYPE_DWORD)
gg.toast("维克多美化成功")
gg.clearResults()
gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102004009", gg.TYPE_DWORD)
gg.toast("汤姆逊美化成功")
gg.clearResults()
gg.searchNumber("330600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330600600", gg.TYPE_DWORD)
gg.toast("金色玛莎")
gg.clearResults()
gg.searchNumber("330600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330600600", gg.TYPE_DWORD)
gg.toast("金色玛莎")
gg.clearResults()
gg.searchNumber("330600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330600600", gg.TYPE_DWORD)
gg.toast("金色玛莎")
gg.clearResults()
gg.searchNumber("330800100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330800400", gg.TYPE_DWORD)
gg.toast("摩托车")
gg.clearResults()
gg.searchNumber("330800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330800400", gg.TYPE_DWORD)
gg.toast("摩托车")
gg.clearResults()
gg.searchNumber("330400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330401000", gg.TYPE_DWORD)
gg.toast("吉普万圣节")
gg.clearResults()
gg.searchNumber("330100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330100800", gg.TYPE_DWORD)
gg.toast("蹦蹦")
gg.clearResults()
gg.searchNumber("330100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("330100800", gg.TYPE_DWORD)
gg.toast("蹦蹦")
gg.clearResults()
gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("403188", gg.TYPE_DWORD)
gg.toast("衣服")
end


--------退出--------
function Exit()
print"某某K路过"
os.exit()
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
