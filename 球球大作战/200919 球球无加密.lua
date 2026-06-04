function shouye()
SN = gg.multiChoice({

    "开启范围",
    "关闭范围",
    "退出脚本"
  }, nil, "️笑叔")

  if SN == nil then

  else

  if SN[1] == true then S1()
    end
   if SN[2] == true then b()
    end
  if SN[3] == true then exit()
    end
  end
XGCK = -1
end

function S1()


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135D;208D;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1000;2::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
v = gg.prompt({i='自己输入分身距离，0～10   默认5'}, {i='5'})--这个就是弹出一个输入框
gg.editAll(v['i'], 16)
gg.toast("开启成功")
end


function b()
gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1000;5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1500)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function exit()
    print("QQ:1750273778")
  os.exit()
end



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    shouye()
  end
end