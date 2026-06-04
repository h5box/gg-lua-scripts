function Main1()
  SN = gg.choice({
    "855透视",
    "855上色",
    "无后",
    "头部范围",
    "全身范围（新）",
    "上帝视角",
    "实体变大",
    "天线",
    "枪械射速",
    "开镜路飞",
    "范围拾取",
    "穿墙",
    "倒退加速",
    "退出程序"
  }, nil, "快猫搬砖工制作，脚本将持续更新")
  if SN == 1 then
    HS19()
  end
  if SN == 2 then
    HS20()
  end
  if SN == 3 then
    HS2()
  end
  if SN == 4 then
    HS3()
  end
  if SN == 5 then
    HS17()
  end
  if SN == 6 then
    HS4()
  end
  if SN == 7 then
    HS7()
  end
  if SN == 8 then
    HS11()
  end
  if SN == 9 then
    HS13()
  end
  if SN == 10 then
    HS14()
  end
  if SN == 11 then
    HS15()
  end
  if SN == 12 then
    HS16()
  end
  if SN == 13 then
    HS18()
  end
  if SN == 14 then
    HS5()
  end
  FX = 0
end

function HS19()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.25784444e-19;1,186,988,033D;30,720.001953125;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("855透视成功")
  gg.clearResults()
end

function HS20()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8220;8224;8225::60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 3
      }
    })
  end
  gg.toast("855上色成功")
  gg.clearResults()
end

function HS2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("700", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DOUBLE,
        freeze = true,
        value = 0
      }
    })
  end
  gg.toast("无后开启成功")
  gg.clearResults()
end

function HS3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("头部范围开启成功")
  gg.clearResults()
end

function HS17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  gg.toast("新范围成功")
  gg.clearResults()
end

function HS4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.89999997616;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 51
      }
    })
  end
  gg.toast("上帝视角开启成功")
  gg.clearResults()
end

function HS7()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.81
      }
    })
  end
  gg.toast("")
  gg.clearResults()
end

function HS11()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = -120
      }
    })
  end
  gg.toast("")
  gg.clearResults()
end

function HS13()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 6
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function HS14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.484;0.284;0.924", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.484;0.284;0.924", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 15
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function HS15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("5D;0E;1F;2F::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 100
      }
    })
  end
  gg.toast("范围拾取成功")
  gg.clearResults()
end

function HS16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.001", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_WORD,
        freeze = true,
        value = 9999
      }
    })
  end
  gg.toast("穿墙成功")
  gg.clearResults()
end

function HS18()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 10
      }
    })
  end
  gg.toast("倒退加速成功")
  gg.clearResults()
end

function HS5()
  os.exit()
end
Main1()