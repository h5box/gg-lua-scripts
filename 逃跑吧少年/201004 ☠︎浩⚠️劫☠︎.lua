function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
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
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end

function Main0()
SN = gg.choice({
     "☠️方案①☠️",
     "⚔️方案②⚔️",
     "🛡️方案③🛡️","退出"
}, nil, "逃少毁🤡灭计划")
if SN==1 then Main1() end
if SN==2 then Main2() end
if SN==3 then Main3() end
if SN==4 then os.exit() end
FX1=0
end

function Main1()--方案①
SN = gg.multiChoice({
	 "全图透视(大厅开启)",--1
	 "疾跑改迫击炮(大厅开启)",--2
	 "迫击炮无限连射(大厅开启)",--3
	 "部分卡无冷却(大厅开启)",--4
	 "迫击炮无后坐力(必开，大厅开启)",--5
	 "疯狗移速+疯狗跳跃(一局一开)",--6
	 "无限金币(一局一开)",--7
	 "倒地复活锁血(倒地后开一次)",--8
	 "炮无限子弹(买完炮开)",--9
	 "迫击炮全屏范围(开炮再开)",--10
	 "游客解封(封号时开)",--11
	 "返回功能主页"--12
}, nil, "请确保是游客登录\n👑迫击炮👑")
if SN[1]==true then HS3() end
if SN[2]==true then HS4() end
if SN[3]==true then HS7() end
if SN[4]==true then HS11() end
if SN[5]==true then HS12() end
if SN[6]==true then HS8() end
if SN[7]==true then HS5() end
if SN[8]==true then HS13() end
if SN[9]==true then HS10() end
if SN[10]==true then HS6() end
if SN[11]==true then HS9() end
if SN[12]==true then HS14() end
FX1=0
end

function HS3()--全图透视
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS4()--疾跑改迫击炮
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;1000::61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("210", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS7()--迫击炮无限连射
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;1;1.1F::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS11()--部分道具无冷却
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000~1023D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS12()--迫击炮无后坐力
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;1;1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS8()--疯狗移速+疯狗跳跃
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.15033960342", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("跌跌撞撞遇到你")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.69346046448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("飞奔起来！")
	 gg.clearResults()
end

function HS5()--无限金币
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  444444  } , 
{["类型"]=  16  ,["偏移"]=  -56  ,["副特征码"]=  70.0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  999999999  } , 
} LongTao(tb1, tb2)
end

function HS13()--倒地复活锁血
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("锁血开启成功")
	 gg.clearResults()
end

function HS10()--炮无限子弹
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;444444;444445;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS6()--迫击炮全屏范围
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10e37", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS9()--游客解封
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

function HS14()--返回主页
Main0()
end

function Main2()--方案②
SN = gg.multiChoice({
     "全图透视(大厅开启)",--1
     "疾跑改狗(大厅开启)",--2
     "部分道具卡无冷却(大厅开启)",--3
     "疯狗移速+疯狗跳跃(一局一开)",--4
     "无限金币(一局一开)",--5
     "手雷全屏范围(扔一颗开)",--6
     "倒地复活锁血(倒地后开一次)",--7
     "游客解封(封号时开)",--8
     "返回功能主页",--9
}, nil, "请确保是游客登录\n👑无限狗👑")
if SN[1]==true then HS20() end
if SN[2]==true then HS21() end
if SN[3]==true then HS22() end
if SN[4]==true then HS23() end
if SN[5]==true then HS24() end
if SN[6]==true then HS28() end
if SN[7]==true then HS25() end
if SN[8]==true then HS26() end
if SN[9]==true then HS27() end
FX1=0
end

function HS20()--全图透视
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS21()--疾跑改狗
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;1000::61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("109", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS22()--部分道具卡无冷却
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000~1023D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS23()--疯狗移速+疯狗跳跃
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.15033960342", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("跌跌撞撞遇到你")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.69346046448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("飞奔起来！")
	 gg.clearResults()
end

function HS24()--无限金币
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  444444  } , 
{["类型"]=  16  ,["偏移"]=  -56  ,["副特征码"]=  70.0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  999999999  } , 
} LongTao(tb1, tb2)
end

function HS28()--手雷全屏范围
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10e37", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS25()--倒地复活锁血
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("锁血开启成功")
	 gg.clearResults()
end

function HS26()--游客解封
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

function HS27()--返回主页
Main0()
end

function Main3()--方案③
SN = gg.multiChoice({
     "全图透视(大厅开启)",--1
     "火箭筒Lv1改Lv3(大厅开启)",--2
     "火箭筒无间隔(大厅开启)",--3
     "火箭筒10连发(大厅开启)",--4
     "火箭筒无坐力(大厅开启",--5
     "部分道具卡无冷却(大厅开启)",--6
     "疯狗移速+疯狗跳跃(一局一开)",--7
     "无限金币(一局一开)",--8
     "视角拉远(一局一开)",--9
     "倒地复活锁血(倒地后开一次)",--10
     "火箭筒导弹加强(买炮后开)",--11
     "炮无限子弹(买炮后开)",--12
     "手雷全屏范围(一局一开)",--13
     "游客解封(封号时开)",--14
     "返回功能主页",--15
}, nil, "请确保是游客登录\n👑火箭筒👑")
if SN[1]==true then HS40() end
if SN[2]==true then HS41() end
if SN[3]==true then HS42() end
if SN[4]==true then HS43() end
if SN[5]==true then HS44() end
if SN[6]==true then HS45() end
if SN[7]==true then HS46() end
if SN[8]==true then HS47() end
if SN[9]==true then HS48() end
if SN[10]==true then HS49() end
if SN[11]==true then HS50() end
if SN[12]==true then HS51() end
if SN[13]==true then HS52() end
if SN[14]==true then HS53() end
if SN[15]==true then HS54() end
FX1=0 
end

function HS40()--全图透视
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS41()--火箭筒Lv1改Lv3
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("火箭筒1改3修改成功")
	 gg.clearResults()
end

function HS42()--火箭筒无间隔
local tb1={ 
{["类型"] =  16  ,["主特征码"] =  1.100000023841858  } , 
{["类型"]=  4  ,["偏移"]=  -16  ,["副特征码"]=  1008  },
{["类型"]=  16  ,["偏移"]=  4  ,["副特征码"]=  -0.05999999865889549  },
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  13  },
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  -10e37  } , 
} LongTao(tb1, tb2)
end

function HS43()--火箭筒10连发
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56F;1;1.1F::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS44()--火箭筒无后坐力
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  100  } , 
{["类型"]=  16  ,["偏移"]=  -296  ,["副特征码"]=  1.0  },
{["类型"]=  16  ,["偏移"]=  -292  ,["副特征码"]=  1.0  },
{["类型"]=  16  ,["偏移"]=  -184  ,["副特征码"]=  1.0  },
{["类型"]=  16  ,["偏移"]=  -180  ,["副特征码"]=  1.0  },
{["类型"]=  16  ,["偏移"]=  40  ,["副特征码"]=  1.0  },
{["类型"]=  16  ,["偏移"]=  44  ,["副特征码"]=  1.0  },
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -296  , ["冻结"] =  false  , ["修改"] =  0  } , 
 {["类型"] =  16 ,["偏移"] =  -184  , ["冻结"] =  false  , ["修改"] =  0  } , 
 {["类型"] =  16 ,["偏移"] =  40  , ["冻结"] =  false  , ["修改"] =  0  } , 
} LongTao(tb1, tb2)
end

function HS45()--部分道具卡无冷却
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000~1023D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS46()--疯狗移速+疯狗跳跃
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.15033960342", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("跌跌撞撞遇到你")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.69346046448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("飞奔起来！")
	 gg.clearResults()
end

function HS47()--无限金币
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  444444  } , 
{["类型"]=  16  ,["偏移"]=  -56  ,["副特征码"]=  70.0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  999999999  } , 
} LongTao(tb1, tb2)
end

function HS48()--视角拉远
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  16  ,["主特征码"] =  12.0  } , 
{["类型"]=  16  ,["偏移"]=  -96  ,["副特征码"]=  6.0  },
{["类型"]=  16  ,["偏移"]=  -76  ,["副特征码"]=  6.0  },
{["类型"]=  16  ,["偏移"]=  -72  ,["副特征码"]=  6.0  },
{["类型"]=  16  ,["偏移"]=  -68  ,["副特征码"]=  10.0  },
{["类型"]=  16  ,["偏移"]=  -64  ,["副特征码"]=  30.0  },
{["类型"]=  16  ,["偏移"]=  -16  ,["副特征码"]=  10.0  },
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  20.0  } , 
} LongTao(tb1, tb2)
end

function HS49()--倒地复活锁血
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("锁血开启成功")
	 gg.clearResults()
end

function HS50()--火箭筒导弹加强
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("火箭筒全屏射程修改成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;99;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("火箭筒导弹加速修改成功")
	 gg.clearResults()
end

function HS51()--炮无限子弹
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;444444;444445;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS52()--手雷全屏范围
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10e37", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS53()--游客解封
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

function HS54()--返回功能主页
Main0()
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