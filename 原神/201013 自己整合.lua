function Main()
  SN = gg.multiChoice({
  "无cd",
  "皇女秒杀",
  "安柏秒杀",
  "无cd关",
  "怪无视",
  "定怪",
  "范围捡东西",
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
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4;0;26;27;14;60::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('4',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('3',gg.TYPE_DWORD)
gg.toast("无cd开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1054990936", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1055885497", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1058257460", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1058329602", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1060667004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.toast("皇女秒杀开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1052307253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1056058638", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1055770070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.searchNumber("1058531600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1182307253", gg.TYPE_DWORD)
gg.toast("安博开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3;0;26;27;14;60::21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('3',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('4',gg.TYPE_DWORD)
gg.toast("恢复")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("99999;0.066;0.2;0.3;0.4::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.066", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("222", gg.TYPE_FLOAT)
gg.toast("怪无视开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1743855065D;1::18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("定怪开启成功")
end

function g()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0F;0.0F;0.0F;2.0F;0.0F;0.0F::61", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("75;50", gg.TYPE_FLOAT)
gg.toast("范围拾取开启成功")
end


function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"



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









