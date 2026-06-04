function Main()
  SN = gg.choice({
  "全机型透视+上色",
  "无后座+防抖",
  "聚点+准星",
  "退出脚本"
 }, nil, "真6")
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
   Exit()
  end
  XGCK = -1
end




function a()
o=os.clock()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("57.29578018188;1000;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("57.29578018188;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("99999;0", gg.TYPE_FLOAT)
if gg.getResultCount()<5 then
gg.toast("透色开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>5 then
gg.toast("透色开启成功\n  共修改5条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end


function b()
gg.clearResults()      
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("-1.0061304e28;-2.83437239e28;-2.83249856e28;-5.37881556e27;-3.68935128e20::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.37881556e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)                 
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()      
if gg.getResultCount()<5 then
gg.toast(":开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>5 then
gg.toast("开启成功\n  共修改5条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end


function c()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-1.13686865e-13;-8.50025967e22;-5.90526395e21;6.16301403e-33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-8.50025967e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 if gg.getResultCount()<5 then
gg.toast("开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>5 then
gg.toast("开启成功\n  共修改5条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end

function Exit()
print("！")
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









