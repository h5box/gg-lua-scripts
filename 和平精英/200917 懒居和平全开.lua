--配置
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, crxg) for x = 1, #(crxg) do xgpy = szpy + crxg[x]["offset"] xglx = crxg[x]["type"] xgsz = crxg[x]["value"] xgdj = crxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function gcrnb(crnb) gg.clearResults() gg.setRanges(crnb[1]["memory"]) gg.searchNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(crnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + crnb[v]["offset"] pysz[1].flags = crnb[v]["type"] szpy = gg.getValues(pysz) pdpd = crnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, crxg) end end if xgjg == true then gg.toast(crnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(crnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function ZBY(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.alert(qmnbn.."开启失败")end end end 



---懒居出品必是精品---

function Main()
SN = gg.multiChoice({
"彩色除草",
"一秒落地",
"人物透色",
"落地防闪",
"无后秒开",
"全屏自瞄",
"大厅范围",
"人物天线",
"上帝视角",
"全伤加速",
"加速关闭",
"子弹射速",
"美化功能",
"车辆加速",
"全枪瞬击",
"车辆秒刹",
"退出脚本",
}, nil,"干就完了")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then a9() end
if SN[10] == true then a10() end
if SN[11] == true then a11() end
if SN[12] == true then a12() end
if SN[13] == true then a13() end
if SN[14] == true then a14() end
if SN[15] == true then a15() end
if SN[16] == true then a16() end
if SN[17] == true then os.exit() end
if SN[18] == true then a18() end
if SN[19] == true then a19() end
if SN[20] == true then a20() end
if SN[21] == true then Exit() end
end
XGCK = -1 
end

--------透视--------
function a1()

  
  gg.clearResults()

  gg.setRanges(gg.REGION_VIDEO)

  gg.clearResults()

  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)

  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("-90", gg.TYPE_FLOAT)

  gg.clearResults()

  h5sj="1"

  gg.toast("黑夜模式已开启")
  
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.000005;0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0.45", gg.TYPE_FLOAT)
gg.toast("大厅除草开启成功")
end
  
  
  


function a2()
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
            gg.toast("跳伞秒落开启")
          end
        end
      end
    end
  end

--------防闪--------
function a3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 1.836712725756753E-39, ["type"] = 16},
{["lv"] = 1.285696946211877E-39, ["offset"] = 16, ["type"] = 16},
{["lv"] = -1.8368780789755432E-40, ["offset"] = 176, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 176, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移透视"},
{["value"] = 2.2958958117405662E-39, ["type"] = 16},
{["lv"] = 1.291499723152646E-39, ["offset"] = -8, ["type"] = 16},
{["lv"] = -2.761090468136333E-39, ["offset"] = 144, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 144, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色"},
{["value"] = 2.7550648847397363E-40, ["type"] = 16},
{["lv"] = 1.0761972206014595E-42, ["offset"] = 52, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 188, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 188, ["type"] = 16},

}
xqmnb(qmnb)
end



--------无后--------
function a4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.854625e-42;2.0:505", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("9.76256614e-41;2.0:201", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


--------防抖--------
function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("半防抖已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点已部署")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', 16)
gg.refineNumber('-1.1144502e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.clearResults()
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', 16)
gg.refineNumber('-1.1144502e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.toast('全枪秒切部署➤%80')
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(55)
gg.editAll("-9", gg.TYPE_FLOAT)
gg.toast("倍镜秒开部署➤%100")
end
 




--------除草黑色--------
function a6()
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
end


-------




--------范围--------
function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "范围部署➤%50"},
{["value"] = 9.201618194580078, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 28, ["type"] = 16},
{["lv"] = 28.0, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = 16},
{["value"] = 180, ["offset"] = 28, ["type"] = 16},
{["value"] = 180, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围部署➤%100"},
{["value"] = 35, ["type"] = 16},
{["lv"] = 33, ["offset"] = 4, ["type"] = 16},
{["lv"] = 62, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 145, ["offset"] = 0, ["type"] = 16},
{["value"] = 145, ["offset"] = 4, ["type"] = 16},
{["value"] = 145, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end


function a8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)  
end



--------关闭--------
function a9()
gg.clearResults()    
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("350", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启")

  end




function a10()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%70")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] = 68000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 68000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =71500, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 71500, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =88000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="全伤加速部署➤%100"},
{["value"] =87000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function a11()
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
gg.toast("加速部署关闭%100")
end

function a12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.125", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('-5',gg.TYPE_FLOAT)
gg.toast("单局加速部署➤%100")
end


function a13()
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,600;103,006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103,006,013", gg.TYPE_DWORD)
gg.toast("Mini14")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10800400;108004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("108004029", gg.TYPE_DWORD)
gg.toast("平底锅")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004025", gg.TYPE_DWORD)
gg.toast("M416")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800;101008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101008016", gg.TYPE_DWORD)
gg.toast("M762")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100600;101006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101,006,011", gg.TYPE_DWORD)
gg.toast("AUG")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002007", gg.TYPE_DWORD)
gg.toast("M16A4")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001025", gg.TYPE_DWORD)
gg.toast("AK47")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100500;101005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101005011", gg.TYPE_DWORD)
gg.toast("GROZA")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003024", gg.TYPE_DWORD)
gg.toast("SCAR-L")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,100,700;101,007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101007003", gg.TYPE_DWORD)
gg.toast("QBZ")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,100,900;101,009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101009002", gg.TYPE_DWORD)
gg.toast("Mk47")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,101,000;101,010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,101,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,101,0004", gg.TYPE_DWORD)
gg.toast("G36C")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,100;102,001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,1013", gg.TYPE_DWORD)
gg.toast("UZI")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,200;102,002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,2019", gg.TYPE_DWORD)
gg.toast("UMP45")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,300;102,003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,3008", gg.TYPE_DWORD)
gg.toast("Vector")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,500;102,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,5001", gg.TYPE_DWORD)
gg.toast("野牛")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,400;103,004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,300,4010", gg.TYPE_DWORD)
gg.toast("SKS")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,500;103,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,300,5007", gg.TYPE_DWORD)
gg.toast("VSS")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600100;3306001::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600200;3306002::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600300;3306003::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.toast("玛莎美化➤%100")
end




function a14()
ZBY({{32},{"全车加速部署➤%50"},{0.72727274895, 16},{0.34377467632, 4, 16},{0.25, -0xe8, 16}},{{99, 0, 16},{99, 4, 16},{99, -0xe8, 16}})
ZBY({{32},{"全车加速部署➤%100"},{1059431846, 4},{0.30000001192, 0x4, 16},{0.94117647409, 0x8, 16},{1, 0x10, 16},{0.76000005007, 0x14, 16},{0.96078431606, 0x18, 16},{1, 0x1c, 16},{0.74509805441, 0x20, 16}},{{90, 0, 16},{90, 0x4, 16}})
end



    
    
function a15()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA) 
gg.searchNumber("CFDA7DEEr;5002DDE5r;010010E3r;7D00001Ar;FE05A0E3r;FF1D0FE3r;100184E5r::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("CFDA7DEEr", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("瞬击开启成功")
end


function a16()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "车速刹车部署➤%100"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end


--------退出--------
function Exit()
print"懒居反馈交流群959857092"
print""
print""
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








