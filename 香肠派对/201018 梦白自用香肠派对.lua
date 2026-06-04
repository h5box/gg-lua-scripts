gg.alert("本脚本请在二十四小时内删除――后果自负")
function Main()
menu = gg.choice({
     "枪午后",
     "头范围",
     "身体范围",
     "天线",
     "M4高伤(自测)",
     "天空黑色",
     "范围(备用)",
     "机甲CD",
     "全枪自动",
     "第一人称",
     "冥王无CD",
     "神王无cd",
     "子弹聚点",
     "无限背包(自慰)",
     "退出脚本"
}, nil,"梦白无敌")
if menu == 1 then a() end
if menu == 2 then b() end
if menu == 3 then c() end
if menu == 4 then d() end
if menu == 5 then e() end
if menu == 6 then f() end
if menu == 7 then g() end
if menu == 8 then h() end
if menu == 9 then i() end
if menu == 10 then j() end
if menu == 11 then k() end
if menu == 12 then l() end
if menu == 13 then m() end
if menu == 14 then n() end
if menu == 15 then Exit() end
XGCK=-1
end



function a()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("无后座开启成功")
end



function b()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.3", gg.TYPE_FLOAT)
	 gg.toast("头范围开启成功")
	 gg.clearResults()
end



function c()
gg.clearResults()
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.89",gg.TYPE_FLOAT)
gg.toast("身体范围开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(350)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("天线")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "3.4E+38"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.processResume()
gg.toast("蹦蹦车天线")
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber('1.16546607018', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('手臂天线')
gg.clearResults()
end



function e()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,090,686,812;41;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
   else
    gg.searchNumber("41",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)--设置修改前2个代码
    gg.editAll("90", gg.TYPE_DWORD)
    gg.toast("梦白原创M4高伤开启成功")
    gg.clearResults()
  end
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-99", gg.TYPE_DWORD)
gg.toast("天空黑色开启成功")
gg.clearResults()
end



function g()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.00235145935;0.76544839144;0.1;0.11909916252::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1;0.11909916252", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.299", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.77401280403;0.1;0.11190053821;0;0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1;0.11190053821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.357", gg.TYPE_FLOAT)
  gg.toast("👿稳定范围👿")
end

function i()
fw= gg.prompt({i='手持输入目前枪械子弹(子弹数不能低于2)'}, {i='2'})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(""..fw["i"]..";0;0;1;1;1::21",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("全抢自动")
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("第一人称开启成功")
end

function k()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.40129846e-45;6.0;2.80259693e-45;2.80259693e-45:197", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function l()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.55686277151;0.55686277151;3.64337601e-44;30.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function m()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('0.11999999732;0.20000000298',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.11999999732;0.20000000298',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
  gg.toast("子弹聚点开启成功")
end

function n()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("150;20.0;15.0::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(5)
gg.editAll("99999)",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function Exit()
print("欢迎再来")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '我不见人'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end








