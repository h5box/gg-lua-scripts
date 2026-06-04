function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") print(qmnb[2]["name"] .. "开启失败") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end 
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
  menu = gg.choice({
    "透视合集",--1
    "上色合集",--2
    "配合防封",--3
    "必封功能",--4
    "退出"--5
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分")
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end

function A()
  menu1 = gg.multiChoice({
    "骁龙435",--1
    "骁龙625",--2
    "骁龙660",--3
    "骁龙820",--4
    "骁龙835",--5
    "骁龙845",--6
    "骁龙855",--7
    "骁龙865",--8
    "返回上一页"--9
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
if menu1 == nil then else
if menu1[1] == true then A1() end
if menu1[2] == true then A2() end
if menu1[3] == true then A3() end
if menu1[4] == true then A4() end
if menu1[5] == true then A5() end
if menu1[6] == true then A6() end
if menu1[7] == true then A7() end
if menu1[8] == true then A8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end

function A1()--435透视
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function A2()--625透视
 gg.setRanges(1048576)
  gg.searchNumber("3.7529575e-40;1.4571822e-40;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function A3()--660透视
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "透视完成"},   
{["value"] = 24576.0078125, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.1202039e-19, ["offset"] = 1112, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 1116, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.7615819e-37, ["offset"] = 1120, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 1124, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {{["value"] = 120, ["offset"] =4 , ["type"] = gg.TYPE_FLOAT}, }
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "资源完成"},   
{["value"] = 1.6623694e-19, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {{["value"] = 120, ["offset"] =36 , ["type"] = gg.TYPE_FLOAT}, }
xqmnb(qmnb)
end

function A4()--820透视
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.26870221e-42;1.39125368e-19;1.66289773e-19;1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视1成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.45718225e-40F;4.7223693e21F;-4.67159277e-40F;4.79615571e21F;3.76158192e-37F;2.0F::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视2成功")
end

function A5()--835透视
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function A6()--845透视
   gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("5.3905149e-41;4.75926e21;-4.2038954e-45;5.0359623e21;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-4.2038954e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移马赛克")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2.2970084e-41;6.50000286102;-2.0283851e-39;4.7788715e21;7.9691844e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.0283851e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5444", gg.TYPE_FLOAT)
	 gg.toast("偏移透明化")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("绿色")
	 gg.clearResults()
end

function A7()--855透视
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.40129846e-45;1.25784419e-19:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("118",gg.TYPE_FLOAT)
gg.toast("神奇的马赛克")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12867231e-19;1.96181785e-44;2.0:2549", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("118",gg.TYPE_FLOAT)
gg.toast("偷窥功能已开启")
end

function A8()--865透视
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.56918523e-39;4.75926898e21;4.75925997e21;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("第一步成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12050248e-19;1.39125304e-19;1.39125485e-19;1.66236988e-19;1.66236872e-19;3.76158192e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end

function B()
  menu1 = gg.multiChoice({
    "855花里胡哨1",--1
    "855花里胡哨2",--2
    "855花里胡哨3",--3
    "855蓝色",--4
    "865红色",--5
    "435白色",--6
    "435黑白",--7
    "无",--8
    "返回上一页"--9
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
if menu1 == nil then else
if menu1[1] == true then B1() end
if menu1[2] == true then B2() end
if menu1[3] == true then B3() end
if menu1[4] == true then B4() end
if menu1[5] == true then B5() end
if menu1[6] == true then B6() end
if menu1[7] == true then B7() end
if menu1[8] == true then B8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end

function B1()--花1
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("262,148;1,075,333,392;1,048,580;1,081,098,260;277,217,292;1,081,098,261:149", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function B2()--2
  gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("262,148;1,075,333,392;1,048,580:17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function B3()--3
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,224;1,194,332,179;1,194,363,163:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function B4()--蓝色
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("262,148;1,075,333,392;1,048,580;1,081,098,260;277,217,292;1,081,098,261:149", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,081,098,261", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("蓝色")
end

function B5()--红色
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("538,968,074D;786,433D", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("红色开启")
end

function B6()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  8207  } , 
{["类型"]=  4  ,["偏移"]=  -8  ,["副特征码"]=  671219715  },
{["类型"]=  4  ,["偏移"]=  -4  ,["副特征码"]=  1076887555  },
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  1194328075  },
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  76  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  10  } , 
} LongTao(tb1, tb2)
end

function B7()
gg.setRanges(gg.REGION_VIDEO)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  8207  } , 
{["类型"]=  4  ,["偏移"]=  -8  ,["副特征码"]=  671219715  },
{["类型"]=  4  ,["偏移"]=  -4  ,["副特征码"]=  1076887555  },
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  1194328075  },
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  76  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  27  } , 
} LongTao(tb1, tb2)
end


function B8()

end

function C()
  menu1 = gg.multiChoice({
    "(新)全体范围",--1
    "(旧)身体范围",--2
    "(旧)头部范围",--3
    "全图除草",--4
    "人物爬墙",--5
    "爬墙恢复",--6
    "人物变大",--7
    "人物穿墙",--8
    "穿墙恢复",--9
    "脱离卡墙",--10
    "循环加速",--11
    "倒退加速",--12
    "修复天线",--13
    "返回上一页"--14
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
if menu1 == nil then else
if menu1[1] == true then C1() end
if menu1[2] == true then C2() end
if menu1[3] == true then C3() end
if menu1[4] == true then C4() end
if menu1[5] == true then C5() end
if menu1[6] == true then C6() end
if menu1[7] == true then C7() end
if menu1[8] == true then C8() end
if menu1[9] == true then C9() end
if menu1[10] == true then C10() end
if menu1[11] == true then C11() end
if menu1[12] == true then C12() end
if menu1[13] == true then C13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end

function C1()--范围①
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end


function C2()--身体范围
qmnb = {
	 {["memory"] = 4},
{["name"] = "身体范围"},
{["value"] = 0.08, ["type"] = 16},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function C3()--头部范围
local tou={0.96}
qmnb = {
	 {["memory"] = 4},
{["name"] = "头部范围"},
{["value"] = 0.14, ["type"] = 16},
{["lv"] = 62, ["offset"] = -1, ["type"] = 1},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function C4()--除草
qmnb = {
{["memory"] = 4},
{["name"] = "除草"},   
{["value"] = 16777474, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 3, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 5126, ["offset"] = 68, ["type"] = 4},
}
qmxg = {{["value"] = 0, ["offset"] =96 , ["type"] = 4}, }
xqmnb(qmnb)
end

function C5()--爬墙
 qmnb = {
{["memory"] = 4},
{["name"] = "开启爬墙"},
{["value"] = 0.6216099858283997, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 5.5,["offset"] = 8,  ["type"] = 16},
}
xqmnb(qmnb)
end

function C6()
 qmnb = {
	 {["memory"] = 4},
{["name"] = "关闭爬墙"},
{["value"] = 0.6216099858283997, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.5, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = 8, ["type"] = 16},

}
xqmnb(qmnb)
end



function C7()--变大
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.toast("变大开启成功")
end

function C8()--穿墙
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "开启穿墙" }, {value = 0.4000000059604645, type = 16}, { lv = 0.6000000238418579, offset = 4, type = 16 }, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -0.006, offset = 0, type = 16 }, { value = 1.2, offset = -544, type = 16 } } xqmnb(qmnb) 
end

function C9()--恢复
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "关闭穿墙" }, {value = -0.006000000052154064, type = 16}, { lv = 0.6000000238418579, offset = 4, type = 16 }, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = 0.4, offset = 0, type = 16 } } xqmnb(qmnb) 
end


function C10()--脱墙
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "脱离穿墙卡死" }, {value = -0.006000000052154064, type = 16}, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -5.8125, offset = 0, type = 16 } } xqmnb(qmnb) gg.qjccn(8000) qmnb = { {memory = 4}, { name = "脱离穿墙卡死" }, {value = -5.8125, type = 16}, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -0.006, offset = 0, type = 16 } } xqmnb(qmnb) 
end


function C11()--加速
qmnb = {
{["memory"] = 4},
{["name"] = "加速"},
{["value"] = 2.390625, ["type"] = 16},
{["lv"] = 1.75, ["offset"] = -120, ["type"] = 16},
{["lv"] = 1.875, ["offset"] = -48, ["type"] = 16},
{["lv"] = 2.3125, ["offset"] = -24, ["type"] = 16},
}

qmxg = {
{["value"] = 1.90625, ["offset"] = -48, ["type"] = 16},
}
xqmnb(qmnb)
C11()
end


function C12()--倒退
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", 64)
gg.toast("加速成功")
end

function C13()--天线
  gg.setRanges(4)
  gg.searchNumber("0.24414631724;0.96865051985;0.18303215504", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("天线")
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-66", gg.TYPE_FLOAT)
gg.toast("人物天线")
end

function D()
  menu1 = gg.multiChoice({
    "枪械午后",--1
    "枪械射速",--3
    "开镜路飞",--3
    "返回上一页"--4
  }, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分 ")
if menu1 == nil then else
if menu1[1] == true then D1() end
if menu1[2] == true then D2() end
if menu1[3] == true then D3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function D1()--无后
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2D;700E;4.18359375;10E;1D", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.18359375", 16, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -20}})
	 end
	 gg.toast("午后开启成功")
	 gg.clearResults()
end

function D2()--射速
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", 16)
gg.toast("开启成功")
end

function D3()--路飞
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("15", 64)
gg.toast("搜索成功")
end




function Exit()
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '狂沙'
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