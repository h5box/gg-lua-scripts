if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
    gg.clearResults()
  else
    local al=gg.alert("选定的进程不是指定游戏", "继续","退出")
  if al==nil or al==2 then
    os.exit()
 end
  end
  
local al=gg.alert(os.date([[神明]]), "启动防封","退出")  
 if al==nil or al==2 then
    os.exit()
 end
      gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("神明爱你")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
 end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
 end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
 end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
 end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
 end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
 end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
 end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
 end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
 end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.toast("S14")
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
gg.alert("记得反馈 神明交流群797034578")