function Main0()
SN = gg.choice({
"复制",
"退出脚本",
}, nil, "由于脚本在1m以上上传不了，请自行点此脚本中的复制转移到浏览器下载")
if SN==1 then HS1() end
if SN==2 then os.exit() end
FX1=0
end



function HS1()
gg.copyText("https://www.lanzoui.com/iIDOZgyd37i")
gg.toast("复制下载位置成功")
end





while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end
