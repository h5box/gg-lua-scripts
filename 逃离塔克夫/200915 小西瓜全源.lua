-----恭喜你解开了，请不要给xxs，谢谢，二改随意
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

gg.alert("选择加入塔科夫反馈群","点击复制群号码")
gg.copyText(1098560224)
function Main()
menu = gg.choice({
'透视专区',
'上色专区',
'其他功能',
'退出脚本'},
2018,'必须挂端口，要不然5分钟必封\n反馈群:1098560224')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'435透视',--1
'625透视',--2
'659透视',--3
'660透视',--4
'665透视',--5
'765透视',--6
'820透视',--7
'835透视',--8
'845透视',--9
'855透视',--10
'855plus透视',--11
'865透视',--12
'敬请期待',--13
'敬请期待',--14
'敬请期待',--15
'返回上一页'},
nil,'不保证都可以用，你们可以自己测试一下，我660就可以用820的透\n自己随便试试')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'435上色(红)',--1
'845上色(绿)',--2
'855上色(红)',--3
'855plus上色(绿)',--4
'865上色(红)',--5
'返回上一页'},
nil,'不保证都可以用')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end




function C()
menu1 = gg.multiChoice({
'全身范围(不刮痧)',--1
'头部范围(不刮痧)',--2
'身体范围(不刮痧)',--3
'范围联合(不刮痧)',--4
'局内除草',--5
'局内天线',--6
'微加速',--7
'人物穿墙',--8
'恢复穿墙',--9
'脱墙卡死',--10
'开启爬墙',--11
'关闭爬墙',--12
'倒退加速',--13(
'开镜路飞(开)',--14
'开镜路飞(关)',--15
'枪械午后(危)',--16
'枪械射速(危)',--17
'人物变大(危)',--18
'返回上一页'},--19
nil,'这些容易封，尽量开天线除草就行了\n全身范围100%不刮痧\n不保证都可以用')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("435透视开启成功")
end



function a2()
gg.setRanges(1048576)
  gg.searchNumber("3.7529575e-40;1.4571822e-40;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("2")
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("625透视开启成功")
end



function a3()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1654D;1655D;1655D;2;-1.0;1.0:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("118", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("118.1", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("118.2", gg.TYPE_FLOAT)
gg.toast("659透视开启成功")
end



function a4()
gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1.47896308e-25F;1.45718225e-40F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("成功％50")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1.66289773e-19F;1.66236937e-19F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("成功")
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber('3.87610054016F;3.76158192e-37F;1.0F',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('9', gg.TYPE_FLOAT)
gg.toast('660透视开启成功')
end



function a5()
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



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.66230242e-19;7.17464814e-43:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.66230242e-19;7.17464814e-43:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;-1.0;9.99999997e-7:9", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.37754505e-39;2.25000214577:9", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.37754505e-39;2.25000214577;2.0;-1.0;1.0:805", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;-1.0;9.99999997e-7:9", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;-1.0;1.0:37", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("765透视开启成功")
end



function a7()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.26870221e-42;1.39125368e-19;1.66289773e-19;1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("820透视开启成功①")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.45718225e-40F;4.7223693e21F;-4.67159277e-40F;4.79615571e21F;3.76158192e-37F;2.0F::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("820透视开启成功②")
end



function a8()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("600")
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("835透视开启成功")
gg.clearResults()
end


function a9()
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
end



function a10()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;1.4012985e-45;1.2282293e-19:357", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("20",gg.TYPE_FLOAT)
gg.toast("偷窥功能已开启")
qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 2, ["type"] = 16},
{["lv"] = 0, ["offset"] = 28, ["type"] = 16},
{["lv"] = 3.4799999e-7, ["offset"] = 44, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function a11()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
end



function a12()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.56918523e-39;4.75926898e21;4.75925997e21;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("第一步成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12050248e-19;1.39125304e-19;1.39125485e-19;1.66236988e-19;1.66236872e-19;3.76158192e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end



function a13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a15()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function b1()--435上色
gg.setRanges(1048576)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  1  } , 
{["类型"]=  4  ,["偏移"]=  -8  ,["副特征码"]=  32771  },
{["类型"]=  4  ,["偏移"]=  8  ,["副特征码"]=  0  },
{["类型"]=  4  ,["偏移"]=  12  ,["副特征码"]=  50331648  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0  , ["冻结"] =  false  , ["修改"] =  6  } , 
} LongTao(tb1, tb2)
end


function b2()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("绿色")
	 gg.clearResults()
  end



function b3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8224, ["type"] = 4},
{["lv"] = 1194363418, ["offset"] = 4, ["type"] = 4},
{["lv"] = 671219721, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("855plus绿色")
end



function b5()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("538,968,074D;786,433D", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("865红色开启")
end

function c1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("全体范围不刮痧开启成功")
gg.clearResults()
end



function c2()
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



function c3()
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



function c4()
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



function c5()
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



function c6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-66", gg.TYPE_FLOAT)
gg.toast("人物天线")
end



function c7()
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
c7()
end



function c8()
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "开启穿墙" }, {value = 0.4000000059604645, type = 16}, { lv = 0.6000000238418579, offset = 4, type = 16 }, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -0.006, offset = 0, type = 16 }, { value = 1.2, offset = -544, type = 16 } } xqmnb(qmnb) 
end



function c9()
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "关闭穿墙" }, {value = -0.006000000052154064, type = 16}, { lv = 0.6000000238418579, offset = 4, type = 16 }, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = 0.4, offset = 0, type = 16 } } xqmnb(qmnb) 
end

function c10()
gg.setRanges(4)
 qmnb = { {memory = 4}, { name = "脱离穿墙卡死" }, {value = -0.006000000052154064, type = 16}, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -5.8125, offset = 0, type = 16 } } xqmnb(qmnb) gg.qjccn(8000) qmnb = { {memory = 4}, { name = "脱离穿墙卡死" }, {value = -5.8125, type = 16}, { lv = 0.10000000149011612, offset = 8, type = 16 }, { lv = 0.25, offset = 12, type = 16 } } qmxg = { { value = -0.006, offset = 0, type = 16 } } xqmnb(qmnb) 
end



function c11()
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



function c12()
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



function c13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", 64)
  gg.toast("倒退加速成功")
end



function c14()
qmnb = {
{["memory"] = 4},
{["name"] = "路飞"},
{["value"] = 1.484, ["type"] = 64},
{["lv"] = 3.7779337e-314, ["offset"] = -8, ["type"] = 64},
{["lv"] = 3.7779337e-314, ["offset"] = 8, ["type"] = 64},
}
qmxg = {
{["value"] = 8, ["offset"] = 0, ["type"] = 64},

}
xqmnb(qmnb)
end




function c15()
qmnb = {
{["memory"] = 4},
{["name"] = "路飞关闭"},
{["value"] = -0.12, ["type"] = 64},
{["lv"] = 8, ["offset"] = 16, ["type"] = 64},
{["lv"] = -0.12, ["offset"] = 32, ["type"] = 64},
}
qmxg = {
{["value"] = 1.484, ["offset"] = 16, ["type"] = 64},

}
xqmnb(qmnb)
end



function c16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2D;700E;4.18359375;10E;1D", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.18359375", 16, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0
      }
    })
  end
  gg.toast("枪械午后开启成功")
  gg.clearResults()
end



function c17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", 16)
  gg.toast("枪械射速开启成功")
end



function c18()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("变大开启成功")
end



function Exit()
print("反馈群:1098560224")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '这里可以填QQ'
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









--孤日批
