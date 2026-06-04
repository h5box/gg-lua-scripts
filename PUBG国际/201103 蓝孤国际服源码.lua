
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast("🇧 🇾 🇱 🇬") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Main()
  check0=gg.prompt({
    "🚫天线🚫",
    "🚫范围🚫",
    "🚫开镜🚫",
    "🚫午后🚫",
    "🚫自瞄🚫",
    "🚫加速[开]🚫",
    "🚫加速[关]🚫",
    "🚫上色[绿]🚫",
    "🚫透视🚫",
    "🚫天空[黑]🚫",
    "🚫加速[微]🚫",
    "🚫锁头🚫",
    "🚫视角🚫",
    "🚫减少午后🚫",
    "🚫瞬击🚫",
    "🚫透视[↓]🚫",
    "🚫骁龙855🚫",
    "🚫骁龙625🚫",
    "🚫骁龙835🚫",
    "🚫骁龙660🚫",---29
    "🚫骁龙865🚫",
    "🚫865上色[红]🚫",
    "🚫飞天[飞天前准备]🚫",
    "🚫飞天[跳伞前准备]🚫",
    "🚫骁龙450🚫",
    "🚫联发科p22🚫",
    "🚫修伤[加速]🚫",
    "🚫骁龙845🚫",
    "退出"
  },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox",})
if check0==nil then
    Main()
  else
    if check0[1] then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(6)
      gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("千米天线")
    end
    if check0[2] then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('9.20161819458;23;28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResultCount()
      gg.searchNumber('23;28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('180', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber('9.3613598e-38;0.0001;0.00999999978', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResultCount()
      gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('75', gg.TYPE_FLOAT)
      gg.toast('头部范围开启成功')
      qmnb = {
        {["memory"] = gg.REGION_ANONYMOUS},
        {["name"] ="全身范围"},
        {["value"] =9.20161819458, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 0.00009203507, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
      }
      qmxg = {
        {["value"] =140.123456, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
        {["value"] =140.123456, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
        {["value"] =140.123456, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
      }
      xqmnb(qmnb)
    end
    if check0[3] then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(55)
      gg.editAll("-9", gg.TYPE_FLOAT)
      g13sj="1"
      gg.toast("秒开倍镜开启")
    end
    if check0[4] then
      qmnb = {
        {["memory"] = gg.REGION_CODE_APP},
        {["name"] = "全局午后"},
        {["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
      }
      qmxg = {
        {["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
      }
      xqmnb(qmnb)
      qmnb = {
        {["memory"] = 16384},
        {["name"] = "防抖"},
        {["value"] = -1476732160.0, ["type"] = 16},
        {["lv"] = -3.7444097189855772E28, ["offset"] = 4, ["type"] = 16},
        {["lv"] = -1.114450155758339E28, ["offset"] = 8, ["type"] = 16},
        {["lv"] = 128.0, ["offset"] = 12, ["type"] = 16},
      }
      qmxg = {
        {["value"] = 0, ["offset"] = 8, ["type"] = 16},
      }
      xqmnb(qmnb)
      qmnb = {
        {["memory"] = 16384},
        {["name"] = "全局防抖"},
        {["value"] = -6.154945350000412E27, ["type"] = 16},
        {["lv"] = -2.656333398413989E21, ["offset"] = 4, ["type"] = 16},
        {["lv"] = -1.114450155758339E28, ["offset"] = 12, ["type"] = 16},
        {["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
      }
      qmxg = {
        {["value"] = 0, ["offset"] = 12, ["type"] = 16},
      }
      xqmnb(qmnb)
      qmnb = {
        {["memory"] = 16384},
        {["name"] = "全局聚点"},
        {["value"] = -1.2382423887994e+28, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -1.4239332766331e+28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -1.1144501557583e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = -1.8331474059342e+27, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
      }
      qmxg = { {["value"] = 90, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, }
      xqmnb(qmnb)
      gg.toast("开启成功")
    end
    if check0[5] then
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
      gg.toast("全屏自瞄开启成功")
    end
    if check0[6] then
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
      gg.clearResults()
      gg.toast("全局加速不拉回开启")
    end
    if check0[7] then
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
      gg.clearResults()
      gg.toast("全局加速不拉回已关闭")
    end

    if check0[8] then
      gg.alert(os.date("🚫建议开两遍上色🚫"))
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("285933568D;2.3802073e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2.3802073e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("12", gg.TYPE_FLOAT)
      gg.toast("上绿开启成功")
    end
    if check0[9] then
      gg.alert(os.date("🚫建议开两遍透视🚫"))
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("5.8013756e-42;-5.5695588e-40;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.toast("开启中")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("1.3912567e-19;1.1202056e-19;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      qmnb = {
        {["memory"] = gg.REGION_BAD},
        {["name"] ="房区防闪开启中"},
        {["value"] =5.2806111e-40, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 4.7592633e21, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 3.0230535e23, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 2.2963078e-41, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
      }
      qmxg = {
        {["value"] =99999, ["offset"] = 160, ["type"] = gg.TYPE_FLOAT},
      }
      xqmnb(qmnb)
      qmnb = {
        {["memory"] = gg.REGION_BAD},
        {["name"] ="山区防闪开启中"},
        {["value"] =6.50000238419, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 2.2960275e-41, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 4.7961557e21, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
        {["lv"] = 5.8013756e-42, ["offset"] = -12, ["type"] = gg.TYPE_FLOAT},
      }
      qmxg = {
        {["value"] =99999, ["offset"] = 148, ["type"] = gg.TYPE_FLOAT},
      }
      xqmnb(qmnb)
    end
    if check0[10] then
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
      gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
      gg.getResults(510)
      gg.editAll('0',gg.TYPE_QWORD)
      gg.toast("天空黑色开启成功")
    end
    if check0[11] then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50",gg.TYPE_FLOAT,false,gg.SIGN_FUZZY_EQUAL,0,-1)
      gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_FUZZY_EQUAL,0,-1)
      gg.getResults(300)
      gg.editAll("1.07", gg.TYPE_FLOAT)
      gg.clearResults()
    end
    if check0[12] then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("9.20161819458;23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResultCount()
      gg.searchNumber("25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.getResults(10)
      gg.editAll("85",gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("Headshot 99% On")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('9.20161819458;23;25;30.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('25;30.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('300', gg.TYPE_FLOAT)
      gg.toast('锁头')
    end
    if check0[13] then
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("256;8200;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(21)
      gg.editAll("6", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast("上帝视角开启成功")
    end


    if check0[14] then
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1,288,018,485,726,672,383",gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1)
      gg.refineAddress("A30",-1,gg.TYPE_QWORD,gg.SIGN_EQUAL,0,-1)
      gg.getResults(7243)
      gg.editAll("-1,288,018,485,926,672,383",gg.TYPE_QWORD)
      gg.clearResults(7243)
      gg.toast("减少午后")
      gg.clearResults()
    end
    if check0[15] then
      gg.clearResults()

      gg.setRanges(gg.REGION_ANONYMOUS)

      gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.getResults(100)

      gg.editAll("0.02600000292", gg.TYPE_FLOAT)

      gg.toast("M4射速已开启")

      gg.clearResults()

      gg.setRanges(gg.REGION_ANONYMOUS)

      gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.getResults(100)

      gg.editAll("0.02600000083", gg.TYPE_FLOAT)

      gg.toast("Scar射速已开启")

      gg.clearResults()

      gg.setRanges(gg.REGION_ANONYMOUS)

      gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

      gg.getResults(10)

      gg.editAll("0.00100000005", gg.TYPE_FLOAT)

      h6sj="1"

      gg.toast("AK射速已开启")

    end

    if check0[16] then
  
    end

    if check0[17] then
      gg.clearResults()
      gg.setRanges(131072)
      gg.searchNumber("95D;2;9.2194229e-41::100", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.getResults(100)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", 16, false, 536870912, 0, -1)
      gg.searchNumber("2", 16, false, 536870912, 0, -1)
      gg.getResults(100)
      gg.editAll("120", 16)
      gg.clearResults()
      gg.toast("骁龙855开启成功")
    end

  if check0[18] then
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
    gg.searchNumber('5.79227989e21;-5.56955884e-40;2.0;1.39125666e-19;2.0:9285', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(50)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('骁龙625透视开启成功')
end

  if check0[19] then
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("骁龙835透视开启成功")
  end
  
    if check0[20] then
    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("骁龙660开启成功")
    end
    
      if check0[21] then
      gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("9.76354705e-41;4.92528123e21;2;1.66230358e-19;1.8425141e-39;4.72237774e21;1.74488844e-39;3.75000238419", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.83305652e21;2.88667484e-43;1.39125343e-19;2.52233724e-44;1.12020508e-19;3.76158192e-37;0.0;2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("865透视")
      end
      
        if check0[22] then
        gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,194,347,012;8,196;1,194,347,015;8,199;1,194,344,477;8,200;1,194,380,062;524,292", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("红色开启成功")
        end
        
        if check0[23] then
        gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("100.0;1", gg.TYPE_FLOAT)
gg.searchNumber("100.0", gg.TYPE_FLOAT)
gg.getResults("100")
gg.editAll("2", gg.TYPE_FLOAT)
        end
        
        
        if check0[24] then
        gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults("100")
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("飞天开启成功")
        end
        
        
        if check0[25] then
          gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7961574e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("骁龙450透视开启成功")
        end
        
       
       if check0[26] then
           gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('"2.0F;6.0F;5.0F;1.0F;0.0F;0.0F;3.0F;4.0F::569"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('"3"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
    for i, i in ipairs((gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if i.flags == gg.TYPE_FLOAT then
      end--Ꮲsᴀʏᴄʜᴏ
    end--Ꮲsᴀʏᴄʜᴏ
    gg.addListItems((gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.toast('联发科p22开启成功')
       end
       
       
       
       if check0[27] then
          gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416伤害开启成功")
     gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("SC伤害开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM伤害开启成功")
       
       end
       
       
             if check0[28] then
                   gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("60", gg.TYPE_FLOAT)
      gg.toast("马赛克开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("60", gg.TYPE_FLOAT)
      gg.toast("透明化开启成功")
             end





    if check0[29] then
      exit()
    end
  end
  ttqka=0
end

function exit()--这玩意儿是退出
  print("🚫🇧 🇾 🇱 🇬 🚫")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end

repeat
  if gg.isVisible(true) then
    ttqka=1
    gg.setVisible(false)
  end
  if ttqka==1 then
    Main()
  end
until false
--蓝孤--