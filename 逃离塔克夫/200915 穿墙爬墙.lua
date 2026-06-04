DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
function mnb(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end



function Main()
  SN = gg.choice({
    "人弹穿墙",
    "爬墙",
    "全关",
    "退出"
  }, 2020, "马牛苾原创(改2死m)")
  if SN == 1 then
    a()
  end

  if SN == 2 then
 
 
    d()
  end
    if SN == 3 then
    c()
  end
if SN==4 then os.exit() end

  XGCK = -1
end


function a()
mnb({{0.25,0,16},{0.10000000149,-4,16},},{{-0.00200000009,-12,16},},4,"mnb",true)
mnb({{30,0,16},{1,-8,16},{100,-4,16},{1,4,16},{60,24,16},{1,64,16},},{{0,0,16},{0,-8,16},{0,-4,16},{0,4,16},{0,24,16},{0,64,16},},8,"mnb",true)

end

function d()
mnb({{0.62160998583,0,16},{0.70710682869,-20,16},{0.70710682869,-16,16},{1,-8,16},{0.00999999978,4,16},},{{999,8,16},},4,"mnb",true)

end

function c()
mnb({{0.25,0,16},{0.10000000149,-4,16},},{{0.4,-12,16},},4,"mnb",true)
mnb({{0.62160998583,0,16},{0.70710682869,-20,16},{0.70710682869,-16,16},{1,-8,16},{0.00999999978,4,16},},{{0.3,8,16},},4,"mnb",true)
end



function Exit()
print("马牛苾")

os.exit()
end
cs = "稳定cnm"



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