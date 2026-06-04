function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
       
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                  
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("未搜到任何数据")
        return false
    end
end

YX="夕"


function Main()
menu = gg.choice({
'排位功能 (全)',
'巨人透视 (全)',
'退出脚本 (退)'},
2018,'')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'范围 一',
'范围 二',
'恢复 一',
'伤透',
'无后 小刀',
'飞天 虫子',
'返回上一页'},
nil,'By:夕')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'秒开透视 一',
'普通透视 二',
'巨人 (小)',
'巨人 (大)',
'返回上一页'},
nil,'By:夕')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.1104317E27;-1.3079928E21;0.00001;6.1630427E-33", 16, false, 536870912, 0, -1)
gg.searchNumber("0.00001", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("11", 16)
gg.toast("xa红名/ok")
gg.clearResults()
end



function a2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.5;1.0;0.0001;2;4;0.00001", 16, false, 536870912, 0, -1)
gg.searchNumber("0.5;1.0;0.0001", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("15", 16)
gg.toast("ca伤害/ok")
end



function a3()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.1104317E27;-1.3079928E21;0.00001;6.1630427E-33", 16, false, 536870912, 0, -1)
gg.searchNumber("11", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0.00001", 16)
gg.toast("xa红名恢复/ok")
gg.clearResults()
end



function a4()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("0.7;0.7;0.7;0.3::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("伤透/ok")
gg.clearResults()
end



function a5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D~300D;30D~300D;1D;5D~500D;1065353216D;1D~10D;0.1~2;0.002~0.9;1~15;2~10;0.02~10;1065353216D~1069547520D::153", 16, false, 536870912, 0, -1)
gg.searchNumber("0.001~0.19;0.3~2;2~15", 16, false, 536870912, 0, -1)
gg.getResults(7000)
gg.editAll("1.4012985E-45", 16)
gg.clearResults(5000)
gg.toast("无后/ok")

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("10,702,001D;3D;2D::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101", gg.TYPE_DWORD)
gg.toast("小刀/ok")
gg.clearResults()
end



function a6()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("0.30000001192;0.00999999978;8:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-30", gg.TYPE_FLOAT)
gg.toast("飞天/ok")
gg.clearResults()

gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0~50;2E-35F~2E-34F;100000006D~100000300D;2E-35F~2E-34F;100000006D~100000300D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100000006-100000300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("120000039", gg.TYPE_DWORD)
gg.toast("虫子/ok")
gg.clearResults()
end



function b1()
 gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_DWORD
local tb1 = {{1148846080, 0}, {2048, -48}, }
local tb2 = {{1113325568, 0}, {108805, -48}, }
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-3147809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3147809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-3147800", gg.TYPE_DWORD)
  gg.toast("透视/ok")
  gg.clearResults()
end



function b2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2048;1065353216;1008981770;1148846080::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2048;1148846080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("108801;1111111111", gg.TYPE_DWORD)
	 gg.toast("50%")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-3147809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-3147809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-3147800", gg.TYPE_DWORD)
	 gg.toast("100%")
	 gg.clearResults()
end



function b3()
gg.clearResults(5000)
gg.setRanges(5)
gg.searchNumber("4726824;1064313029;1F::512", 4, false, 536870912, 0, -1)
gg.getResultCount()
gg.searchNumber("1F;1F;1F::9", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("1;1;1;3;0.6;-0.1", 16)
gg.toast("巨人 小/ok")
gg.clearResults(5000)
end



function b4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1064313029;4726824;1F:237", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;1;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("1;1;1;1;1;1;1,8;0.7;-1", gg.TYPE_FLOAT)
gg.clearResults(5000)
gg.toast("巨人 大/ok")
end



function Exit()
print("")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = ''
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










