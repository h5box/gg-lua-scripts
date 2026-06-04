function QCFZ()
menu = gg.multiChoice({
    "透视防闪【大厅】",--1
    "人车透视【大厅】",--2
    "除树除草【游戏】",--3
    "天空黑色【随时】",--4
    "退出辅助"--5
  }, nil, "QC辅助 联发科"..sj)
if menu == nil then  else
if menu[1] == true then A() end
if menu[2] == true then B() end
if menu[3] == true then C() end
if menu[4] == true then D() end
if menu[5] == true then Exit() end
end    PD1 = 1                  end

function A()
gg.clearResults()---↓多选内存范围---
gg.setRanges(16384 | 8 | 4)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
end


function B()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0;-1;2;1;2;1;0;-127;0.24022650719;2;0::521", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("联发科人物透视开启失败")
else
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("联发科透视已开启")
end end



function C()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,590,068,740,425,724,723",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",gg.TYPE_QWORD)
gg.toast('全图除草')
for i=1,2 do
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2;-1;50;1;-1;-0.33299461007;0.99999558926;-0.12123910338;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("联发科除树开启失败")
else
gg.getResults(15)
gg.editAll("-2", gg.TYPE_FLOAT)
gg.toast("全图除树成功")
end end end



function D()
gg.clearResults()  
gg.setRanges(32)  
gg.searchNumber("28992425112437505",gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)  
gg.searchNumber("28992425112437505",gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)  
gg.getResults(510)   
gg.editAll("0",gg.TYPE_QWORD)   
gg.toast("天空黑色开启成功")   
end


function E()
for i=1,1000 do
gg.searchNumber("28992425112437505",gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)  
gg.toast("测试"..sj)   
end
end

function Exit()
gg.clearList()
print("『QC』倾城辅助")
os.exit()
end
--盗版属于严重，无耻行为
--请尊重正版，表明出处
function HOME()
QCFZ()
end
cs = '倾城 QC'
while true do
sj = os.date("\nQCFZ \n%c")
QCFZLB = gg.searchNumber
QCFZNB = gg.editAll
QCFZNP = gg.clearResults
if gg.isVisible(true) then
PD1 = nil
gg.setVisible(false)
end
if PD1 == nil then
QCFZ()
end
end