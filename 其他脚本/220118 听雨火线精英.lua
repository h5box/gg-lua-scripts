function Main()
  SN = gg.multiChoice({
    "骁龙透视",
    "实体巨人",
    "全屏自瞄",
    "退出脚本"
  }, nil, "🌙月亮入云雾，大海落星辰✨\n源")
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
      Exit()
    end
  end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2;5;6;7;-7.41840401e-40;3.76158192e-37", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(300)
  gg.editAll("0",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end


function b()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0;1.875;-0.00003169477;8.23960694e-40;-1.59657374e29;123,262.0;123,262.0;0.02795042656", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("2.5625",gg.TYPE_FLOAT)
  gg.toast("巨人开启成功")
end


function c()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1610612736",64)
  result=gg.getResults(gg.getResultCount())
  for k,v in pairs(result)do
    if getValues(v.address+4,16)==27.0 then
      if getValues(v.address+12,16)==1.0 then
        freezeValues(v.address+4,4,-1,true)
        gg.toast("全屏自瞄")
      end
    end
  end
end


function Exit()
  print("听雨编写")
  os.exit()
end



cs = "by听雨"
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
