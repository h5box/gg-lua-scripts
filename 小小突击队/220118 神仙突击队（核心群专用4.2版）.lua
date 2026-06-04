function SearchWrite(tb1, tb2, dataType, Name)
  local lt1={}
  local lt2={}
  local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType }
  table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={["修改"] = false,["偏移"] = tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end

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


-----------指针作者不知道是谁,  龙套 二改优化

---------此脚本完全免费且开源,请勿倒卖


function Main()
  SN = gg.choice({
    " 退出脚本",
    " 冲锋技能秒杀（大厅）",
    " 伤害反弹（和500倍反弹一起开游戏）",
    " 500倍反弹（游戏）",
    " 集中一点，登峰造极 加大林（游戏开，带加暴击率符文）",
    " 加大林超远射程（游戏开）",
    " 集中一点，登峰造极 散弹猎人（游戏开，带加暴击率符文）",
    " 散弹猎人超远射程（游戏开）",
    " 散弹猎人秒换弹（游戏开）",
    " 散弹猎人锁血（游戏开）",
    " 全英雄锁血（游戏开）",
    " 全英雄子弹击退（游戏开）",
    " 无限攻速配上无限弹开不然卡弹（极速开大厅开）",
    " 散弹无限子弹（极速开游戏开）",
    " 散弹超远射程（极速开游戏开）",
    " 冲锋无限子弹（极速开游戏开）",
       " 退出脚本"
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
  if SN == 1 then 
  print ("欢迎：www.kjdao.net ")
    os.exit() end 
  if SN == 2 then BBBBB() end
  if SN == 3 then CCCCC() end
  if SN == 4 then DDDDD() end
  if SN == 5 then EEEEE() end
  if SN == 6 then FFFFF() end
  if SN == 7 then QQQQQ() end
  if SN == 8 then WWWWW() end
  if SN == 9 then HHHHH() end
  if SN == 10 then SSSSS() end
  if SN == 11 then AAAAA() end
  if SN == 12 then LLLLL() end
  if SN == 13 then MMMMM() end
  if SN == 14 then VVVVV() end
  if SN == 15 then PPPPP() end
  if SN == 16 then UUUUU() end
  if SN == 17 then 
    print ("欢迎加入反馈群:879865820 ")
    os.exit() end end


function AAAAA()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  1  } , 
{["类型"]=  64  ,["偏移"]=  72  ,["副特征码"]=  0.3  },
{["类型"]=  4  ,["偏移"]=  76  ,["副特征码"]=  1070805811  },
{["类型"]=  64  ,["偏移"]=  240  ,["副特征码"]=  0.3  },
{["类型"]=  4  ,["偏移"]=  244  ,["副特征码"]=  1070805811  },
{["类型"]=  64  ,["偏移"]=  384  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  388  ,["副特征码"]=  1.9375  },
{["类型"]=  4  ,["偏移"]=  408  ,["副特征码"]=  776  },
{["类型"]=  4  ,["偏移"]=  412  ,["副特征码"]=  3257  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -24  , ["冻结"] =  true  , ["修改"] =  false  } , 
} LongTao(tb1, tb2)
end

function BBBBB()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  107201  } , 
{["类型"]=  4  ,["偏移"]=  -32  ,["副特征码"]=  100  },
{["类型"]=  4  ,["偏移"]=  -28  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  -20  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  -16  ,["副特征码"]=  60  },
{["类型"]=  4  ,["偏移"]=  -12  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  -8  ,["副特征码"]=  10  },
{["类型"]=  4  ,["偏移"]=  -4  ,["副特征码"]=  -14  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -32  , ["冻结"] =  false  , ["修改"] =  5  } , 
} LongTao(tb1, tb2)
end

function CCCCC()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  64  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  136  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  140  ,["副特征码"]=  20  },
{["类型"]=  4  ,["偏移"]=  144  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  204  ,["副特征码"]=  0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  64  , ["冻结"] =  true  , ["修改"] =  1,071,644,672  } , 
} LongTao(tb1, tb2)
end

function DDDDD()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  64  ,["副特征码"]=  1,071,644,672  },
{["类型"]=  4  ,["偏移"]=  136  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  140  ,["副特征码"]=  20  },
{["类型"]=  4  ,["偏移"]=  144  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  204  ,["副特征码"]=  0  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  60  , ["冻结"] =  true  , ["修改"] =  500  } , 
} LongTao(tb1, tb2)
end

function EEEEE()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  1073217536  } , 
{["类型"]=  4  ,["偏移"]=  -200  ,["副特征码"]=  779  },
{["类型"]=  64  ,["偏移"]=  -124  ,["副特征码"]=  300.0  },
{["类型"]=  64  ,["偏移"]=  -4  ,["副特征码"]=  1.5  },
{["类型"]=  64  ,["偏移"]=  404  ,["副特征码"]=  0.3  },
{["类型"]=  64  ,["偏移"]=  548  ,["副特征码"]=  1.2  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  -4  , ["冻结"] =  true  , ["修改"] =  19  } , 
} LongTao(tb1, tb2)
end

function FFFFF()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  1073217536  } , 
{["类型"]=  64  ,["偏移"]=  -124  ,["副特征码"]=  300.0  },
{["类型"]=  64  ,["偏移"]=  -4  ,["副特征码"]=  1.5  },
{["类型"]=  64  ,["偏移"]=  404  ,["副特征码"]=  0.3  },
{["类型"]=  64  ,["偏移"]=  548  ,["副特征码"]=  1.2  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  404  , ["冻结"] =  false  , ["修改"] =  2  } , 
} LongTao(tb1, tb2)
end

function QQQQQ()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  432.0  } , 
{["类型"]=  4  ,["偏移"]=  -76  ,["副特征码"]=  779  },
{["类型"]=  64  ,["偏移"]=  120  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  124  ,["副特征码"]=  1.9375  },
{["类型"]=  64  ,["偏移"]=  360  ,["副特征码"]=  0.54  },
{["类型"]=  64  ,["偏移"]=  528  ,["副特征码"]=  0.54  },
{["类型"]=  64  ,["偏移"]=  672  ,["副特征码"]=  1.5  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  120  , ["冻结"] =  true  , ["修改"] =  19  } , 
} LongTao(tb1, tb2)
end

function WWWWW()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  19.0  } , 
{["类型"]=  16  ,["偏移"]=  4  ,["副特征码"]=  2.796875  },
{["类型"]=  64  ,["偏移"]=  240  ,["副特征码"]=  0.54  },
{["类型"]=  64  ,["偏移"]=  408  ,["副特征码"]=  0.54  },
{["类型"]=  64  ,["偏移"]=  552  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  556  ,["副特征码"]=  1.9375  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  408  , ["冻结"] =  false  , ["修改"] =  2  } , 
} LongTao(tb1, tb2)
end

function HHHHH()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  32  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  204  ,["副特征码"]=  0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  32  , ["冻结"] =  false  , ["修改"] =  2147483647  } , 
} LongTao(tb1, tb2)
end

function SSSSS()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  32  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  204  ,["副特征码"]=  0  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  204  , ["冻结"] =  false  , ["修改"] =  -1  } , 
} LongTao(tb1, tb2)
end

function AAAAA()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  568  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  572  ,["副特征码"]=  0  },
{["类型"]=  4  ,["偏移"]=  648  ,["副特征码"]=  -14  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  572  , ["冻结"] =  false  , ["修改"] =  -1  } , 
} LongTao(tb1, tb2)
end

function LLLLL()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  2067  } , 
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  -1  },
{["类型"]=  4  ,["偏移"]=  568  ,["副特征码"]=  -14  },
{["类型"]=  4  ,["偏移"]=  572  ,["副特征码"]=  0  },
{["类型"]=  4  ,["偏移"]=  648  ,["副特征码"]=  -14  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  648  , ["冻结"] =  false  , ["修改"] =  2147483647  } , 
} LongTao(tb1, tb2)
end

function MMMMM()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  623862821  } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  100  },
{["类型"]=  4  ,["偏移"]=  12  ,["副特征码"]=  35  },
{["类型"]=  4  ,["偏移"]=  28  ,["副特征码"]=  9  },
{["类型"]=  4  ,["偏移"]=  40  ,["副特征码"]=  101  },
{["类型"]=  4  ,["偏移"]=  44  ,["副特征码"]=  51  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  4  , ["冻结"] =  true  , ["修改"] =  1  } , 
} LongTao(tb1, tb2)
end

function VVVVV()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  0.54  } , 
{["类型"]=  4  ,["偏移"]=  -72  ,["副特征码"]=  2  },
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  1071728558  },
{["类型"]=  64  ,["偏移"]=  168  ,["副特征码"]=  0.54  },
{["类型"]=  4  ,["偏移"]=  172  ,["副特征码"]=  1071728558  },
{["类型"]=  64  ,["偏移"]=  312  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  316  ,["副特征码"]=  1.9375  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -96  , ["冻结"] =  true  , ["修改"] =  false  } , 
} LongTao(tb1, tb2)
end

function PPPPP()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  0.54  } , 
{["类型"]=  4  ,["偏移"]=  -72  ,["副特征码"]=  2  },
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  1071728558  },
{["类型"]=  64  ,["偏移"]=  168  ,["副特征码"]=  0.54  },
{["类型"]=  4  ,["偏移"]=  172  ,["副特征码"]=  1071728558  },
{["类型"]=  64  ,["偏移"]=  312  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  316  ,["副特征码"]=  1.9375  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  168  , ["冻结"] =  false  , ["修改"] =  2  } , 
} LongTao(tb1, tb2)
end

function UUUUU()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  0.3  } , 
{["类型"]=  4  ,["偏移"]=  -72  ,["副特征码"]=  1  },
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  1070805811  },
{["类型"]=  64  ,["偏移"]=  168  ,["副特征码"]=  0.3  },
{["类型"]=  4  ,["偏移"]=  172  ,["副特征码"]=  1070805811  },
{["类型"]=  64  ,["偏移"]=  312  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  316  ,["副特征码"]=  1.9375  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -96  , ["冻结"] =  true , ["修改"] = false  } , 
} LongTao(tb1, tb2)
end

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    Main()
   end
end
