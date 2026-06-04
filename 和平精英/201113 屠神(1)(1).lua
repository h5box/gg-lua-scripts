
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

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


function Main()
SN = gg.multiChoice({
"透色防闪<岛>",
"无抖聚瞄瞬击<大厅>",
"大厅范围<大厅>",
"人物天线<大厅>",
"天黑除草地图暗<岛>",
"飞天汽车🚗",
"加速开",
"加速关",
"步枪伤害",
"跳伞加速",
"除雾",
"车加速",
"车没加速",
"过人头",
"无",
"无",
"无",
"退出脚本",
}, nil,"")
if SN == nil then else
if SN[1] == true then A() end
if SN[2] == true then B() end
if SN[3] == true then C() end
if SN[4] == true then D() end
if SN[5] == true then E() end
if SN[6] == true then F() end
if SN[7] == true then G() end
if SN[8] == true then H() end
if SN[9] == true then  I() end
if SN[10] == true then  J() end
if SN[11] == true then  K() end
if SN[12] == true then  L() end
if SN[13] == true then  M() end
if SN[14] == true then  N() end
if SN[15] == true then  O() end
if SN[16] == true then  P() end
if SN[17] == true then  Q() end
if SN[18] == true then Exit() end
end
XGCK = -1 
end



--------透色防闪--------
function A()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 7.105429051666896E-15, ["type"] = 16},
{["lv"] = 2.250549793243408, ["offset"] = 4, ["type"] = 16},
{["lv"] = 7.105427357601002E-15, ["offset"] = 8, ["type"] = 16},
{["lv"] = 2.25048828125, ["offset"] = 12, ["type"] = 16},
{["lv"] = -1.8368780789755432E-40, ["offset"] = 120, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 120, ["type"] = 16},

}

xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 1.3775394488621898E-39, ["type"] = 16},
{["lv"] = 6.142777035544349E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = -2.761090468136333E-39, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.3912525205939833E-19, ["offset"] = 68, ["type"] = 16},
{["lv"] = 9.183549615799121E-41, ["offset"] = 76, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 40, ["type"] = 16},

}

xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "黄色"},
{["value"] = 1075317250, ["type"] = 4},
{["lv"] = 536887307, ["offset"] = 8, ["type"] = 4},
{["lv"] = 851978, ["offset"] = 20, ["type"] = 4},
{["lv"] = 8200, ["offset"] = 36, ["type"] = 4},}
qmxg = {{["value"] = 14, ["offset"] = 36, ["type"] = 4},}
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.3802073e21;2.00000023842;2;2.8141857e-40;2.8141857e-40;2.3657949e21',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('40', gg.TYPE_FLOAT)
gg.toast('绿色开启成功')


xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "房屋防闪"},
{["value"] = 94.015625, ["type"] = 16},
{["lv"] = 7.077671781985373E-15, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 172, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 172, ["type"] = 16},
}


xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "山区防闪"},
{["value"] = 4.760416270221392E21, ["type"] = 16},
{["lv"] = 9.80908925027372E-45, ["offset"] = 12, ["type"] = 16},
{["lv"] = 1.1202014604847243E-19, ["offset"] = 16, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 132, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 132, ["type"] = 16},

}
xqmnb(qmnb)
end



--------无后防抖聚点自瞄瞬击--------
function B()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功🌴")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("瞬击成功")
end



--------大厅范围--------
function C()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.toast("范围开启成功")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("真伤范围") 
end



--------人物天线--------
function D()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()

  qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =-999999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



--------天黑除草--------
function E()
gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('671,236,104;1,669,562,379;671,236,105;8,200:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('8200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('6',gg.TYPE_DWORD)
	gg.toast('星空天空开启成功')

gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(2220)

  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启成功")
  
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("10000;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除草开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.14;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.10006", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(".5", gg.TYPE_FLOAT)
gg.toast("地图变暗成功")


end




--------飞天--------
function F()
  gg.clearResults()
  gg.searchNumber("0.001;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("轿车飞天开启成功")


end




--------加速开--------
function G()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回开启")
end


---------加速关------------
function H()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回已关闭")

end

--------步枪伤害--------
function I()
gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("全枪伤害开启成功")
end


----------跳伞加速--------
function J()
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1024", 16)
    resultCounts = gg.getResultsCount()
    results = gg.getResults(resultCounts)
    for _FORV_3_ = 1, resultCounts do
      values = {}
      values[1] = {}
      values[1].address = results[_FORV_3_].address - 4
      values[1].flags = 16
      values = gg.getValues(values)
      if values[1].value == 5000 then
        values = {}
        values[1] = {}
        values[1].address = results[_FORV_3_].address - 8
        values[1].flags = 16
        values = gg.getValues(values)
        if values[1].value == 3000 then
          values = {}
          values[1] = {}
          values[1].address = results[_FORV_3_].address - 12
          values[1].flags = 16
          values = gg.getValues(values)
          if values[1].value == 0.5 then
            setvalues = {}
            setvalues[1] = {}
            setvalues[1].address = results[_FORV_3_].address
            setvalues[1].flags = 16
            setvalues[1].value = 999999
            setvalues[2] = {}
            setvalues[2].address = results[_FORV_3_].address - 4
            setvalues[2].flags = 16
            setvalues[2].value = 999999
            setvalues[3] = {}
            setvalues[3].address = results[_FORV_3_].address - 8
            setvalues[3].flags = 16
            setvalues[3].value = 999999
            setvalues[4] = {}
            setvalues[4].address = results[_FORV_3_].address - 12
            setvalues[4].flags = 16
            setvalues[4].value = 999999
            gg.setValues(setvalues)
            gg.toast("一秒落地开启成功")
          end
        end
      end
    end
  end


---------跳伞加速恢复--------
function K()
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.3805679e21;-1.3620439e28;-1.3978205e24:9',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-1.3620439e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('天气除雾开启成功')
end


function L()
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("50"),
        tonumber("-40")
      },
      {
        tonumber("5"),
        tonumber("-36")
      },
      {
        tonumber("0.00999999978"),
        tonumber("0")
      }
    }, {
      {
        tonumber("-0.23"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  
function M()
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("50"),
        tonumber("-40")
      },
      {
        tonumber("5"),
        tonumber("-36")
      },
      {
        tonumber("-0.23"),
        tonumber("0")
      }
    }, {
      {
        tonumber("0.00999999978"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end


function N()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "无视人头大厅"},
{["value"] = 10240, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4095, ["offset"] =32, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65536, ["offset"] = 108, ["type"] =  gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 0, ["offset"] = 116, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 120, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 124, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 128, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 132, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 136, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 140, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 144, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 148, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
}
xqmnb(qmnb)
end



function O()
gg.clearResults()
end
  
  
  
  
  
  
  
  
  function P()
  gg.clearResults()
end

  
  
  
  function Q()
gg.clearResults()
end 
--------退出--------
function Exit()
print"🌸🌸🌸🌸🌸🌸🌸🌸🌸"
print"🌸🌸"
print"🌸🌸🌸🌸🌸🌸🌸🌸🌸"
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