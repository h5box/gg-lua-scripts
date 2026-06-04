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
  SN = gg.multiChoice({
  "人物蓝",
  "人物绿",
  "人物红",
  "人枪透视",
  "透视[备用]",
  "内存防封",
  "无后[全局]",
  "范围[单局]",
  "退出脚本"
 }, nil, "不管在那个页面开，内存防封开启后提示数量必须在90以上，不然封号")
  if SN == nil then else
  if SN[1] == true then aa() end
  if SN[2] == true then ab() end
  if SN[3] == true then ac() end
  if SN[4] == true then b() end
  if SN[5] == true then c() end
  if SN[6] == true then d() end
  if SN[7] == true then e() end
  if SN[8] == true then f() end
  if SN[9] == true then Exit() end
end
  XGCK = -1
end



function aa()
gg.setRanges(4)
local tb1={ 
{["类型"] = 4 ,["主特征码"] = 14944769 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 327680 },
{["类型"]= 4 ,["偏移"] = -8 ,["副特征码"] = 65537 },
{["类型"]= 4 ,["偏移"] = -228 ,["副特征码"] = 12 },
}
local tb2={
{["类型"]= 4, ["偏移"] = -232 , ["冻结"] = false , ["修改"] = 11 },
{["类型"]= 4, ["偏移"] = -236 , ["冻结"] = false , ["修改"] = 96 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end

function ab()
gg.setRanges(4)
local tb1={ 
{["类型"] = 4 ,["主特征码"] = 14944769 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 327680 },
{["类型"]= 4 ,["偏移"] = -8 ,["副特征码"] = 65537 },
{["类型"]= 4 ,["偏移"] = -228 ,["副特征码"] = 12 },
}
local tb2={
{["类型"]= 4, ["偏移"] = -232 , ["冻结"] = false , ["修改"] = 13 },
{["类型"]= 4, ["偏移"] = -236 , ["冻结"] = false , ["修改"] = 96 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end

function ac()
gg.setRanges(4)
local tb1={ 
{["类型"] = 4 ,["主特征码"] = 14944769 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 327680 },
{["类型"]= 4 ,["偏移"] = -8 ,["副特征码"] = 65537 },
{["类型"]= 4 ,["偏移"] = -228 ,["副特征码"] = 12 },
}
local tb2={
{["类型"]= 4, ["偏移"] = -232 , ["冻结"] = false , ["修改"] = 15 },
{["类型"]= 4, ["偏移"] = -236 , ["冻结"] = false , ["修改"] = 96 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end




function b()
gg.setRanges(4)
local tb1={ 
{["类型"] = 4 ,["主特征码"] = 160 },
{["类型"]= 4 ,["偏移"] = -28 ,["副特征码"] = 1 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 1 },
{["类型"]= 4 ,["偏移"] = -76 ,["副特征码"] = 1056964608 },
{["类型"]= 4 ,["偏移"] = -92 ,["副特征码"] = 1056964608 },
}
local tb2={
{["类型"]= 4, ["偏移"] = -92 , ["冻结"] = true , ["修改"] = 9999 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end



function c()

gg.setRanges(4)
local tb1={ 
{["类型"] = 4 ,["主特征码"] = 160 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 1 },
{["类型"]= 4 ,["偏移"] = -12 ,["副特征码"] = 1 },
{["类型"]= 4 ,["偏移"] = -60 ,["副特征码"] = 1056964608 },
{["类型"]= 4 ,["偏移"] = -76 ,["副特征码"] = 1056964608 },
}
local tb2={
{["类型"]= 4, ["偏移"] = -92 , ["冻结"] = true , ["修改"] = 9999 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end



function d()
--封号
gg.setRanges(4)
local tb1={
{["类型"] = 64 ,["主特征码"] = 0.1 },
{["类型"]= 1 ,["偏移"] = 0 ,["副特征码"] = -102 },
{["类型"]= 1 ,["偏移"] = 1 ,["副特征码"] = -103 },
{["类型"]= 1 ,["偏移"] = 2 ,["副特征码"] = -103 },
{["类型"]= 1 ,["偏移"] = 3 ,["副特征码"] = -103 },
{["类型"]= 1 ,["偏移"] = 4 ,["副特征码"] = -103 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 0 },
{["类型"]= 4 ,["偏移"] = 8 ,["副特征码"] = 0 },
{["类型"]= 4 ,["偏移"] = 12 ,["副特征码"] = 0 },
}
local tb2={
{["类型"]= 64, ["偏移"] = 0 , ["冻结"] = true , ["修改"] = 999999999 },
} LongTao(tb1, tb2, tb1[1]["类型"])

end


function e()
gg.setRanges(4)
local tb1={
{["类型"] = 64 ,["主特征码"] = 0.001 },
{["类型"]= 16 ,["偏移"] = 100 ,["副特征码"] = 1.75 },
{["类型"]= 64 ,["偏移"] = 112 ,["副特征码"] = 0.1 },
}
local tb2={
{["类型"]= 64, ["偏移"] = 112 , ["冻结"] = false , ["修改"] = 0 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end



function f()
gg.setRanges(4)
local tb1={
{["类型"] = 16 ,["主特征码"] = 0.14 },
{["类型"]= 1 ,["偏移"] = -1 ,["副特征码"] = 62 },
}
local tb2={
{["类型"]= 16, ["偏移"] = 0 , ["冻结"] = false , ["修改"] = 1.3 },
} LongTao(tb1, tb2, tb1[1]["类型"])
gg.setRanges(4)
local tb1={
{["类型"] = 16 ,["主特征码"] = 0.18 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 0 },
{["类型"]= 4 ,["偏移"] = -12 ,["副特征码"] = 0 },
}
local tb2={
{["类型"]= 16, ["偏移"] = 0 , ["冻结"] = false , ["修改"] = 1.3 },
} LongTao(tb1, tb2, tb1[1]["类型"])
end





function Exit()
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









