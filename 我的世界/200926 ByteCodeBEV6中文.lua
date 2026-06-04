--[[
ByteCode BE
V6
作者domexie
原创逻辑设计
特征码来自于糖糖吖.
交流群815594631
有需要可以自己改，但注明作

更新日志：V6添加一次性防封、穿墙飞行
          V5为杀戮也添加了双地址修复，
          添加了杀戮自动修复视野
]]


--唉。。还是添加了伪xs模块（只使用到地址查找部分）
function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find
    (szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] =
      string.sub(szFullString, nFindStartIndex, string.len
      (szFullString))
      break end
    nSplitArray[nSplitIndex] = string.sub
    (szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len
    (szSeparator)
    nSplitIndex = nSplitIndex + 1 end return
  nSplitArray end
function xgxc(szpy, qmxg)
  for x = 1, #(qmxg) do
    xgpy = szpy + qmxg[x]["offset"]
    xglx = qmxg[x]["type"]
    xgsz = qmxg[x]["value"]
    xgdj = qmxg[x]["freeze"]
    if xgdj == nil or xgdj == "" then
      table.insert(ncaArray,xgpy)
      --gg.alert(ncaArray[#ncaArray])
      --ncaArray[1]=xgpy
      --gg.alert("ncaArrayaaaa")
     else
      gg.addListItems({[1]
        = {address = xgpy, flags = xglx,
          freeze = xgdj, value = xgsz}}) end
    xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1]["memory"])
  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
  if gg.getResultCount() == 0 then
    --gg.toast(qmnb[2]["name"] .. "开启失败")
    gg.alert("地址搜索失败，可能是进程选择不对或者脚本未正常退出")
    Exit()
   else
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    if gg.getResultCount() == 0 then
      --gg.toast(qmnb[2]["name"] .. "开启失败")
      gg.alert("地址搜索失败，可能是进程选择不对或者脚本未正常退出")
      Exit()
     else
     --gg.alert("搜索正常")
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      --gg.alert(sz.."个结果")
      xgsl = 0 if sz > 999999 then
        sz = 999999 end for i = 1, sz do
        pdsz = true for v = 4, #(qmnb) do if
            pdsz == true then
            pysz = {} pysz[1]
            = {} pysz[1].address
            = sl[i].address + qmnb[v]["offset"] pysz[1].flags
            = qmnb[v]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd
            = split(pdpd, ";") tzszpd
            = szpd[1] pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true else
              pdjg = false pdsz = false end end end if
          pdjg == true then
          --gg.alert("判定")
          szpy = sl[i].address
          xgxc(szpy, qmxg) 
        end end
    end
  end
end





function noClip()
  if ncNeverUsed == true
    then
    noClipIntl()
    ncNeverUsed = false
  end
  if nc == false
    then
    nc=true
    gg.toast("开启穿墙飞行")
   else
    nc=false
    gg.toast("关闭穿墙飞行")
  end
  addressHandle()
end


function noClipIntl()
    gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="穿墙飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)

end

function SB5()
  qmnb={
    {["memory"] = 4},
    {["name"] ="穿墙飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =0, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end




--主菜单
function Main()
  SN = gg.choice({
    selection1,
    selection2,
    selection3,
    "退出脚本"
  }, 2020, "ByteCode BE V5 by domexie QQGroup:815594631")
  if SN == 1 then
    Killaura()
  end
  if SN == 2 then
    ExJump()
  end
  if SN == 3 then
    noClip()
  end
  if SN == 4 then
    Exit()
  end
  Xz = -1
end

--清除所有冻结
function Clear()
  t = gg.getListItems()
  gg.removeListItems(t)
end

--退出脚本
function Exit()
  ka=false
  ej=false
  nc=false
  addressHandle()
  print("ByteCode deserves your trustee")
  os.exit()
end
cs = "ByteCode BE by domexie  QQ群815594631"

--冻结地址统一处理
function addressHandle()
  Clear()
  if kaNeverUsed == true
    then
    selection1 = "* 旋转杀戮"
   else
    if ka == true
      then
      selection1 = "√ 旋转杀戮"
     else
      selection1 = "× 旋转杀戮"
    end
  end

  if ejNeverUsed == true
    then
    selection2 = "* 连跳"
   else
    if ej == true
      then
      selection2 = "√ 连跳"
     else
      selection2 = "× 连跳"
    end
  end

  if ncNeverUsed == true
    then
    selection3 = "* 穿墙飞行"
   else
    if nc == true
      then
      selection3 = "√ 穿墙飞行"
     else
      selection3 = "× 穿墙飞行"
    end
  end


  if nc == true
    then
    for ncRepeat = 1,#ncaArray do
      gg.setValues({[1]={value=1,address=ncaArray[ncRepeat],flags=gg.TYPE_DWORD}})
    end
  end
  if nc == false and ncNeverUsed == false
    then
    for ncRepeat = 1,#ncaArray do
      gg.setValues({[1]={value=0,address=ncaArray[ncRepeat],flags=gg.TYPE_DWORD}})
    end
  end
  if ka == true
    then
    gg.addListItems({
      [1] = {
        address = kaAddress,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 8486920
      }
    })
  end

  if ej == true
    then
    gg.addListItems({
      [2] = {
        address = ejAddress,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 16777473
      }
    })
  end

  if ka == true
    then
    gg.addListItems({
      [3] = {
        address = kaViewFixAddress,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2.62001
      }
    })
   else
    gg.addListItems({
      [3] = {
        address = kaViewFixAddress,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.62001
      }
    })
  end
end

--杀戮处理
function Killaura()
  Clear()
  gg.setRanges(4)
  --如果没开过杀戮，就进行初始化
  if kaNeverUsed == true
    then
    fixTime = 0
    kaNeverUsed = false
    gg.alert("首次使用，初始化杀戮约需七秒,初始化完毕之前不要移动")
    gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    goto kaCorrection
::kaDoubleAddressCorrection::
    status = "kaDoubleAddressCorrection_step1"
    gg.alert("现在尝试第一个地址，点击确定后请尝试是否有旋转杀戮效果")
    gg.toast("切第三人称看，然后点击悬浮窗")
    jg = gg.getResults(2)
    kaAddress = jg[1].address
    ka = true
    addressHandle()
    Xz = -1
    while status == "kaDoubleAddressCorrection_step1" do
      if gg.isVisible(true)
        then
        Xz = nil
        gg.setVisible(false)
      end
      if Xz == nil
        then
        addressSelection = gg.choice({
          "有效",
          "无效",
          "等等，我再试试"
        }, 2020, "现在有旋转杀戮效果吗")
        if addressSelection == 1 then
          status = "kaAdressOneIsvalid"
        end
        if addressSelection == 2 then
          status = "kaAdressOneIsInvalid"
        end
        Xz = -1
      end
    end
    if status == "kaAdressOneIsInvalid"
      then
      gg.toast("修复完毕，使用第二个地址")
      kaAddress = jg[2].address
     else
      gg.toast("修复完毕，使用第一个地址")
    end

    goto kaSearchComplete
::kaCorrection::
    fixTime = fixTime + 1

    gg.editAll('8486920',gg.TYPE_DWORD)--去除误查
    gg.sleep(1500)
    gg.searchNumber('98312', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll('98313',gg.TYPE_DWORD)
    gg.sleep(1500)
    gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)

    if gg.getResultCount() > 2
      then
      gg.toast("地址过多，正在修正，请稍后")
      goto kaCorrection
     elseif gg.getResultCount() == 2
      then
      --gg.toast(fixTime)
      if fixTime > 1
        then
        gg.alert("出现双地址问题，请配合脚本操作")
        goto kaDoubleAddressCorrection
       else
        goto kaCorrection
      end
     elseif gg.getResultCount() == 0
      then
      gg.alert("未找到目标数据，请检查是否选择了内存占用最大的游戏进程")
      Exit()
    end
    jg = gg.getResults(1)
    kaAddress = jg[1].address
::kaSearchComplete::
    gg.clearResults()
    ka = true
    addressHandle()
    gg.toast("开启旋转杀戮")
   else
    if ka == true
      then
      --关闭杀戮
      ka = false
      addressHandle()
      gg.toast("关闭旋转杀戮")
     else
      --重开杀戮
      ka = true
      addressHandle()
      gg.toast("开启旋转杀戮")
    end
  end

end

function ExJump()
  if ejNeverUsed == true
    then
    fixTime = 0
    gg.alert("首次使用，初始化连跳约需10秒，初始化过程中不要跳跃")
    ejNeverUsed = false
    Clear()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;1.0F;16777473", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16777473", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    goto ejCorrection
::ejDoubleAddressCorrection::
    status = "ejDoubleAddressCorrection_step1"
    gg.alert("现在尝试第一个地址，点击确定后请尝试跳跃,然后点击悬浮窗")
    gg.toast("尝试跳跃，然后点击悬浮窗")
    jg = gg.getResults(2)
    ejAddress = jg[1].address
    ej = true
    addressHandle()
    Xz = -1
    while status == "ejDoubleAddressCorrection_step1" do
      if gg.isVisible(true)
        then
        Xz = nil
        gg.setVisible(false)
      end
      if Xz == nil
        then
        addressSelection = gg.choice({
          "有效",
          "无效",
          "等等，我再试试"
        }, 2020, "现在能连跳吗")
        if addressSelection == 1 then
          status = "ejAdressOneIsvalid"
        end
        if addressSelection == 2 then
          status = "ejAdressOneIsInvalid"
        end
        Xz = -1
      end
    end
    if status == "ejAdressOneIsInvalid"
      then
      gg.toast("修复完毕，使用第二个地址")
      ejAddress = jg[2].address
     else
      gg.toast("修复完毕，使用第一个地址")
    end

    goto ejSearchComplete
::ejCorrection::
    fixTime = fixTime + 1
    gg.editAll('0',gg.TYPE_DWORD)--去除误查
    gg.sleep(1500)
    gg.searchNumber("16777473", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(50)
    gg.editAll('0',gg.TYPE_DWORD)
    gg.sleep(1500)
    gg.searchNumber("16777473", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    if gg.getResultCount() > 2
      then
      gg.toast("地址过多，正在修正，请稍后")
      goto ejCorrection
     elseif gg.getResultCount() == 2
      then
      if fixTime > 3
        then
        gg.alert("出现双地址问题，请配合脚本操作")
        goto ejDoubleAddressCorrection
       else
        goto ejCorrection
      end
     elseif gg.getResultCount() == 0
      then
      gg.alert("未找到目标数据，请检查是否选择了内存占用最大的游戏进程")
      Exit()
    end
    jg = gg.getResults(1)
    ejAddress = jg[1].address
::ejSearchComplete::
    gg.clearResults()
    ej = true
    addressHandle()
    gg.toast("开启连跳")
   else
    if ej == true
      then
      --关闭连跳
      ej = false
      addressHandle()
      gg.toast("关闭连跳")
     else
      --重开连跳
      ej = true
      addressHandle()
      gg.toast("开启连跳")
    end
  end
end


--主体
--gg.setSpeed(1.01)
gg.clearResults()
kaNeverUsed = true
ejNeverUsed = true
ncNeverUsed = true
ka = false
ej = false
nc = false
kaAddress = nil
ejAddress = nil
ncaArray = {}
kaViewFixAddress = nil
selection1 = "* 旋转杀戮"
selection2 = "* 连跳"
selection3 = "* 穿墙飞行"
status = nil
fixTime = 0
gg.toast("视野修复预初始化")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.62001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount == 0 then
  gg.alert("找不到地地址，请检查游戏进程是否选对")
  os.exit()
 else
  kaViewFixAddress = gg.getResults(1)[1].address
end
gg.clearResults()
gg.alert("你正在使用的是ByteCode BE V6，原创逻辑，完全免费")

SN = gg.choice({
  "使用一次性防封",
  "不使用一次性防封",
}, 2020, "要使用一次性防封吗？确保进世界之后使用，使用后你将无法回到主界面！")
if SN == 1 then
  gg.toast("正在进行一次性防封，大约需要10秒")
  gg.setSpeed(10)
  gg.sleep(5000)
  gg.toast("还有五秒")
  gg.sleep(3000)
  gg.toast("还有两秒")
  gg.sleep(2000)
  gg.setSpeed(1)
  gg.alert("防封已开启，请勿退出世界")
end

while true do
  if gg.isVisible(true)
    then
    Xz = nil
    gg.setVisible(false)
  end
  if Xz == nil
    then
    Main()
  end
end