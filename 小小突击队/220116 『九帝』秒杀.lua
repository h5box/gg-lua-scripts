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

function Main()
  SN = gg.choice({
  "火男秒杀",
  "冲锋战士秒杀",
  "散弹秒杀",
  "退出脚本"
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
    if SN == 1 then QQQQQ() end
    if SN == 2 then JJJJJ() end
    if SN == 3 then SSSSS() end
    if SN == 4 then 
        print ("『九帝』制作 ")
    os.exit() end end
    
function QQQQQ()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  1.5  } , 
{["类型"]=  16  ,["偏移"]=  4  ,["副特征码"]=  1.9375  },
{["类型"]=  64  ,["偏移"]=  240  ,["副特征码"]=  0.2  },
{["类型"]=  64  ,["偏移"]=  408  ,["副特征码"]=  0.2  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  120  , ["冻结"] =  false  , ["修改"] =  20000  } , 
} LongTao(tb1, tb2)
end

function JJJJJ()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  16  ,["主特征码"] =  1.9375  } , 
{["类型"]=  64  ,["偏移"]=  -4  ,["副特征码"]=  1.5  },
{["类型"]=  64  ,["偏移"]=  236  ,["副特征码"]=  0.3  },
{["类型"]=  64  ,["偏移"]=  404  ,["副特征码"]=  0.3  },
{["类型"]=  64  ,["偏移"]=  548  ,["副特征码"]=  1.5  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  116  , ["冻结"] =  false  , ["修改"] =  20000  } , 
} LongTao(tb1, tb2)
end
function SSSSS()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={ 
{["类型"] =  64  ,["主特征码"] =  0.54  } , 
{["类型"]=  64  ,["偏移"]=  -240  ,["副特征码"]=  1.5  },
{["类型"]=  16  ,["偏移"]=  -236  ,["副特征码"]=  1.9375  },
{["类型"]=  64  ,["偏移"]=  168  ,["副特征码"]=  0.54  },
{["类型"]=  64  ,["偏移"]=  312  ,["副特征码"]=  1.5  },
}
 local tb2={ 
 {["类型"] =  64 ,["偏移"] =  -120  , ["冻结"] =  false  , ["修改"] =   20000 } , 
} LongTao(tb1, tb2)
end
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    Main()
   end
end