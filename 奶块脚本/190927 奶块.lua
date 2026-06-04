function Main()
  SN = gg.choice({
    "透视",
    "高亮",
    "防摔",
    "透物",
    "秒矿",
    "退出脚本"
  }, nil, "自己更改内存范围为(xa)")
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
    Exit()
  end
  XGCK = -1
end


function a()
gg.searchNumber("-1,902W;4,576W;8,672W:7", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1", gg.TYPE_WORD)
  gg.toast("开启成功")
end

function b()
gg.searchNumber("1,176,585,800;1,201,170,651;-120,568,189:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1201170651", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function c()
gg.searchNumber("73.80078887939;-5,000.0;5,000.0:45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-99", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end


function d()
gg.searchNumber("539,228,241;37;53;85:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.toast("开启成功")
end


function e()
gg.searchNumber("1,000.0F;1,000,000.0F;1,000,000.0F:445", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
  gg.clearResults()
  


function Exit()
   print("阿")
  os.exit()
end
cs = "11111111"
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
