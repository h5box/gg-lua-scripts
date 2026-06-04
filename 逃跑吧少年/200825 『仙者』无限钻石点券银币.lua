


function Main()
SN = gg.choice({
	 "无限钻石",
	 "无限点券",
	 "无限银币"
}, nil, "作者QQ:2716745084")
if SN==1 then mx1()end
if SN==2 then mx2()end
if SN==3 then mx3()end
FX1=0
FX2=0
end

function mx1()
mx=  gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})--输入框
if mx == nil then else--取消返回
--以下是搜索
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber( mx[1] , gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 300 then gg.alert("您的数据发生变化,被迫下线")os.exit()end
  gg.getResults(100)
  gg.editAll("999999999",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("无限钻石修改成功")
  gg.clearResults()
end
end

function mx2()
mx=  gg.prompt({[1]="请输入您当前的点券（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})--输入框
if mx == nil then else--取消返回
--以下是搜索
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0D~999999999;1D;900,001D;910,001D;0D~500D;0D~999999999;"..mx[1].."::60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber( mx[1] , gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 300 then gg.alert("您的数据发生变化,被迫下线")os.exit()end
  gg.getResults(100)
  gg.editAll("999999999",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("无限点券修改成功")
  gg.clearResults()
end
end

function mx3()
mx=  gg.prompt({[1]="请输入您当前的银币（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})--输入框
if mx == nil then else--取消返回
--以下是搜索
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("-0.0000000000001~100000F;"..mx[1]..";1D;900,001D;910,001D::52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber( mx[1] , gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 300 then gg.alert("您的数据发生变化,被迫下线")os.exit()end
  gg.getResults(100)
  gg.editAll("999999999",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("无限银币修改成功")
  gg.clearResults()
end
end




function mx4()
  os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main()
  end
end