function Main()
  SN = gg.multiChoice({
  "开启防封",
  "退出脚本"
 }, nil, "a内存")
  if SN == nil then
  else
  if SN[1] == true then
   A()
  end
  if SN[2] == true then
   Exit()
  end
end
  XGCK = -1
end



function A()
gg.clearResults()
gg.searchNumber('2201401',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('2201901',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('23580',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('28000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('20800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("请稍后...")
os.remove("/sdcard/Android/data/com.tencent.tmgp.cf/files")
os.remove("/sdcard/Android/data/com.tencent.tmgp.cf/cache")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70658~590336;67109377;67109633", gg.TYPE_DWORD)
gg.refineNumber("70658~590336", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133000~134000;134914", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;144,387", gg.TYPE_DWORD)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;131,330", gg.TYPE_DWORD)
gg.refineNumber("134,914", gg.TYPE_DWORD)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,634;135,682", gg.TYPE_DWORD)
gg.refineNumber("133,634", gg.TYPE_DWORD)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378;135,682", gg.TYPE_DWORD)
gg.refineNumber("133,378", gg.TYPE_DWORD)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135,170", gg.TYPE_DWORD)
gg.refineNumber("135,170", gg.TYPE_DWORD)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("全防开启成功")

--4,197,899D;6,295,051D;4,197,899D;5,246,475D;3,149,323D;4,197,899D;5,246,475D;4,197,899D
--3,895,393D;6,516,588D;7,566,177D;6,516,588D;7,237,481D;6,553,716D;7,566,447D;6,648,673D;6,649,449D;6,644,577D;7,565,409D;1,604,124D;6,581,877D;6,644,590D;4,348,712D;6,775,396D;7,497,063D;6,516,345D;4,343,634D;7,499,634D;6,370,865D;4,484,358D;8,388,638D;8,388,638D;4,473,924D;7,340,032D
end



function Exit()
print("脚本结束")
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









