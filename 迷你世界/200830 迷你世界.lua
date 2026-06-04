--配置↓↓↓勿修改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)


function Main()
  menu = gg.choice({
    '局内修改',
    '修改皮肤',
    '退出脚本'},
  2018,'2504476807')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    '无限跳跃',
    '副功能名称2',
    '副功能名称3',
    '副功能名称4',
    '副功能名称5',
    '副功能名称6',
    '副功能名称7',
    '副功能名称8',
    '副功能名称9',
    '副功能名称10',
    '返回上一页'},
  nil,'作者：曦悦，2504476807')
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
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    '记住你修改皮肤的号码，然后点我',
    '齐天小圣512',
    '兔美美800',
    '迪斯拉1100',
    '琉璃酱1300',
    '乔治1600',
    '安妮1800',
    '花小楼5400',
    '雨姬3200',
    '二郎神6400',
    '返回上一页'},
  nil,'记住你想改的皮肤后的号码')
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;721420288;1073741824;100663296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
  end
  gg.toast("高度无限跳开启")
end



function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_DWORD)
  gg.toast("开启成功")
end



function b1()

  --用于用户输入值来改变公有方法
  a = gg.prompt({"输入你刚刚记住的号码。"},{[1]=6400--[[编辑框文字]]},{[1]="number"})[1]
  gg.alert("你输入了："..a)

qmnb = {
{["memory"] = 4},
{["name"] = "向日葵"},
{["value"] = 1016489992, ["type"] = 4},
{["lv"] =  -1799756798, ["offset"] = 64, ["type"] = 4},
{["lv"] = -424755228, ["offset"] = 68, ["type"] = 4},
{["lv"] = 45213, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = a, ["offset"] = 96 , ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end



function b2()
  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function Exit()
  print("这里是退出脚本后的提示文字")
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










