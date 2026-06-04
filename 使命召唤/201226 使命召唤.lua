

gg.alert("公告:\n自瞄有一点问题，如果你不玩狙建议别开\n备用范围就是一局一开")





DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD


function SearchWrite(Search, Write, Type, Name)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
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
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          gg.toast(Name.."开启成功！已修改"..#t.."条数据")
          gg.addListItems(t)
        else
            gg.toast(Name.."开启失败", false)
            return false
        end
    else
        gg.toast(Name.."开启失败")
        return false
    end
end


function Main()
  SN =gg.multiChoice({
  "透视上色",
  "锁死自瞄",
  "变态范围",
  "备用范围",
  "人物加速",
  "加速关闭",
  "持刀加速",
  "人物高跳",
  "黑暗模式(有bug)",
  "敬请期待",
  "退出脚本"
}, nil,'小西瓜提醒'..os.date('：\n此脚本全服通用\n现在国服还没检测，被封的基本上都是主播上报到官方群\n交流群:1038505456\n当地时间:%Y年 %m月%d日 %H时 %M分%S秒'))
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
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('338,558,000~338,559,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll('1,999,255,999', gg.TYPE_DWORD)
gg.toast("透视")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5.24592502e-29;3;32769D::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast("上色蓝开启成功")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-3.8369228e21;-9.1643713e22;-9.1717464e22;-6.0171296e27::16', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-6.0171296e27', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast("第一步开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.5474806e26;-9.153296e22;-1.0525532e28::12', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.0525532e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast("第二步开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-3.8369228e21;6.1629795e-33;-2.794721e28;-3.7444097e28::16', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast("第三步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8323923e28;-2.7250869e28;-2.786982e28;-3.7444097e28::16', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast("第四步开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.01;0.05;60;0.25;1.62;0.37;0.81::60", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.3~0.9",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(200)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "8"}})
end
gg.toast("范围开启成功")
gg.clearResults()
end


gg.sleep(20)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.01;0.2~0.3;2D::20", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.2～0.3",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(500)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "8"}})
end
gg.toast("范围1开启成功")
gg.clearResults()
end
gg.sleep(20)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.01;0.05;60;0.25;1.62;0.37;0.81::60", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.3~0.9",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(200)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "8"}})
end
gg.toast("范围开启成功")
gg.clearResults()
end
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.01;0.05;60;0.25;1.62;0.37;0.81::60', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3~0.9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll('7', gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.01;0.2~0.3;2D::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2～0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('6', gg.TYPE_FLOAT)
gg.toast("完美近战范围开启成功443111563")
gg.clearResults()
Main()
end



function e()
gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(400)
	gg.editAll('3', gg.TYPE_FLOAT)
	gg.toast("加速开启成功")
end



function f()
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(400)
 gg.editAll('4.28000020981', gg.TYPE_FLOAT)
 gg.toast("关闭成功")
end



function g()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("1.1115000248", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2.85", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("持刀加速开启成功")
end



function h()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("7.5;0.8::5", gg.TYPE_FLOAT)
	 gg.refineNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("7.5;4::5", gg.TYPE_FLOAT)
	 gg.refineNumber("7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("高跳开启成功")
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.62876077e-29;2",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("0.5",gg.TYPE_FLOAT)
gg.toast("黑暗模式开启成功")
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function Exit()
gg.alert("快猫社区:小西瓜\n期待你的关注")
os.exit()
end
cs = "这里可以改成你的QQ"



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









