function Main()
  SN = gg.choice({
  "树麻浆果高亮",
  "除草",
  "卡通模式",
  "半身遁地(自由移动)",
  "天空高亮(夜晚开启)",
  "贴物体高跳)",
  "白天黑夜快速轮流",
  "更新中.....",
  "退出脚本"
 }, nil, "欢迎加入非人类集中营860138713")
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
  if SN == 9 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-0.5;3.5;768D;32768D;32,769D;32770D;1::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-0.1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-99999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("-9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.5;11;-190", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45;11", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("-1",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.75;6D;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-190", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-190", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-120",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function g()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("120E;3.46875::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("120", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("8888",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end



function Exit()
print("纯蓝色制作")
os.exit()
end
cs = "欢迎加入非人类集中营(神仙)，群聊号码：860138713"



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









