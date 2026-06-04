function Main()
  SN = gg.choice({
  "💐骁龙660马赛克💐",
  "💐骁龙660透视💐",
  "💐骁龙660上色💐",
  "💐骁龙710马赛克💐",
  "💐骁龙710透视💐",
  "💐骁龙710黑天💐",
  "💐骁龙710上色💐",
"退出脚本"
 }, nil, "💐QQ反馈群:818772924💐")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.7223665e21;4.7408149e21;2.0:81",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(24)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("660马赛克")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("6.4292188e-29;4.2038954e-44;2.0:105", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("660透视")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("536,887,301;1,661,337,605;8,200:77:69", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("660高清红色")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.4382593e-43;5.0913126e21;2.0:57", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("710马赛克开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.37548971176;4.2038954e-44;2.0:133", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("710透视开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,194,330,632;1,669,562,379;8,200:45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("710黑色天空开启成功")
end


function g()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,661,566,995;738,344,979;8,200:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("710绿色上色开启成功")
end



function Exit()
print("💐QQ反馈群:818772924💐")
os.exit()
end
cs = "💐QQ反馈群:818772924💐"



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









