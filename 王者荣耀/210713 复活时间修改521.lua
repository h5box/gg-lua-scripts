function Main()
	SN = gg.choice({
	"复活时间变521201314",
	"退出"
},2008,"反馈Q1829338182。️")
if SN == 1 then
	a()
end
if SN == 2 then
	b()
end
  QWER = -1
end


function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("15000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("521201314",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function b()
os.exit()
end


while true do
  if gg.isVisible(true) then
    QWER = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if QWER == 1 then
    Main()
  end
end