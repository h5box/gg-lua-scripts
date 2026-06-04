--开源脚本仅供学习，请勿倒卖或做商业用途，后果引起的法律责任与本人无关！！！！！
--一次小更新都会使大部分功能失效，没有点基础是不会修复的
Energy = 0
function wxnldz() -- 获取能量地址
  gg.setVisible(false)
  gg.clearResults()
  if nl_flag ~= 1 then
    gg.setRanges(4)
    gg.searchNumber("1411", gg.TYPE_DWORD)
    gg.refineNumber("1411", gg.TYPE_DWORD)
    wxfks = gg.getResultCount()
    if wxfks ~= 0 then
      wxf = gg.getResults(wxfks)
      tmp = {}
      for _FORV_3_, _FORV_4_ in pairs(wxf) do
        tmp[#tmp + 1] = {}
        tmp[#tmp].address = _FORV_4_.address -280
        tmp[#tmp].flags = 4
      end
      tmp = gg.getValues(tmp)
      for _FORV_3_, _FORV_4_ in pairs(tmp) do
        if _FORV_4_.value == 256 then
          wxf[1] = tmp[_FORV_3_]
          break
        end
      end
      energy = {}
      energy[1] = {}
      energy[1].address = wxf[1].address +4
      gg.toast("获取能量地址成功！")
      gg.clearResults()
      Energy = 1
    end
  end
end

function getEnergyAddress()
  local status, err = pcall(wxnldz)
  if status then
    --    wxnldz()
   else
    gg.alert(err)
    Main() FX = "Main"
  end
end

nl_flag = 0
function wxnl()--无限能量
  if Energy ~= 1 then
    getEnergyAddress()
  end
  if nl_flag ~= 1 then
    energy[1].flags = gg.TYPE_FLOAT
    energy[1].value = 10
    energy[1].freeze = true
    gg.addListItems(energy)
    gg.toast("⚡无限能量开启，再点关闭⚡")
    nl_flag = 1
   else
    energy[1].value = 10
    energy[1].freeze = false
    gg.setValues(energy)
    gg.addListItems(energy)
    gg.toast("⚡无限能量关闭⚡")
    nl_flag = 0
  end
end
xh_flag = 0
function hsxh()--化身小黑
  if Energy ~= 1 then
    getEnergyAddress()
  end
  if xh_flag ~= 1 then
    energy[1].flags = gg.TYPE_FLOAT
    energy[1].value = -3
    energy[1].freeze = true
    gg.addListItems(energy)
    gg.toast("⚡小黑人开启，再点关闭⚡")
    xh_flag = 1
   else
    energy[1].value = 14
    energy[1].freeze = false
    gg.setValues(energy)
    gg.addListItems(energy)
    gg.toast("⚡小黑人关闭⚡")
    xh_flag = 0
  end
end
dp_flag = 0
function wybb()--无翼宝贝
  if Energy ~= 1 then
    getEnergyAddress()
  end
  if dp_flag ~= 1 then
    wypy = {}
    wypy[1] = {}
    wypy[1].address = energy[1].address + 40
    wypy[1].flags = gg.TYPE_FLOAT
    wypy[1].value = 0
    wypy[1].freeze = true
    gg.addListItems(wypy)
    gg.clearResults()
    gg.toast("⚡斗篷消失，再点还原⚡")
    dp_flag = 1
   else
    wypy[1].value = 1
    wypy[1].freeze = false
    gg.setValues(wypy)
    gg.addListItems(wypy)
    gg.toast("⚡斗篷还原⚡")
    dp_flag = 0
  end
end
wd_flag = 0
function wdzt()--无敌状态
  if Energy ~= 1 then
    getEnergyAddress()
  end
  if wd_flag ~= 1 then
    wdpy = {}
    wdpy[1] = {}
    wdpy[1].address = energy[1].address + 128
    wdpy[1].flags = gg.TYPE_DWORD
    wdpy[1].value = 0
    wdpy[1].freeze = true
    gg.addListItems(wdpy)
    gg.clearResults()
    gg.toast("⚡无敌状态开启，再点关闭⚡")
    wd_flag = 1
   else
    wdpy[1].value = 0
    wdpy[1].freeze = false
    gg.setValues(wdpy)
    gg.addListItems(wdpy)
    gg.toast("⚡无敌状态关闭⚡")

    wd_flag = 0
  end
end
function zbyy()--自爆羽翼
  if Energy ~= 1 then
    getEnergyAddress()
  end
  num = gg.prompt({"输入1爆一颗，输入-1增加一颗"},{[1]= 1},{[1]= "number"})
  if num == nil then
    zbyy()
  end
  local tmp = {} tmp[1] = num[1] --不知道啥原因这行代码不能少
  wdpy = {}
  wdpy[1] = {}
  wdpy[1].address = energy[1].address + 128
  wdpy[1].flags = gg.TYPE_DWORD
  wdpy[1].value = num[1]
  gg.setValues(wdpy)
  gg.clearResults()
  gg.toast("希望人没事🙏🙏🙏")
end
TX_flag = 0
function ggtx() --更改体型
  if TX_flag == 0 then
    TX_flag = 1
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(4)
    gg.searchNumber("16933", gg.TYPE_DWORD)
    gg.refineNumber("16933", gg.TYPE_DWORD)
    resultCount = gg.getResultCount()
    if resultCount == 0 then
      gg.toast("体型数据基址获取失败")
      os.exit()
    end
    result = gg.getResults(resultCount)

    tmp = {}
    for i, v in ipairs(result) do
      tmp[#tmp+1] = {}
      tmp[#tmp].address = v.address -608
      tmp[#tmp].flags = gg.TYPE_DWORD
    end

    tmp = gg.getValues(tmp)
    for i, v in ipairs(tmp) do
      if v.value == 29281 then
        result[1] = tmp[i]
        break
      end
    end
  end

  local tmp = {}
  tmp[1] = {}
  tmp[1].address = result[1].address +760
  tmp[1].flags = gg.TYPE_FLOAT

  tmp = gg.getValues(tmp)
  local p = {}
  p[1] = tmp[1].value
  tx_int = p[1]
  TX = gg.prompt({'请输入想修改的体型大小'}, {[1] = tx_int}, {[1] = 'number'})
  if(TX == nil or #TX == 0) then
    Main()
   else
    tx = {}
    tx[1] ={}
    tx[1].address = result[1].address +760
    tx[1].flags = gg.TYPE_FLOAT
    tx[1].value = TX[1]
    gg.setValues(tx)
    gg.toast("更改成功")
  end
  TX_flag = 0
end

function dzsj() --动作升级
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(4)
  gg.searchNumber("1,972,794,995", gg.TYPE_DWORD)
  gg.refineNumber("1,972,794,995", gg.TYPE_DWORD)
  resultCount = gg.getResultCount()
  result = gg.getResults(resultCount)
  tmp = {}
  for i, v in ipairs(result) do
    tmp[#tmp+1] = {}
    tmp[#tmp].address = v.address + 36
    tmp[#tmp].flags = gg.TYPE_DWORD
  end
  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value == 2 then
      result[1] = tmp[i]
      break
    end
  end
  local dz = result[1].address
  local dzuodz = dz + 52
  local dzuo = {}
  for i = 1, 100 do
    dzuo[i] = {}
    dzuo[i].address = dzuodz + (i-2) * 48
    dzuo[i].flags = gg.TYPE_FLOAT
    dzuo[i].value = 4
    --    dzuo[i].freeze = true
  end
  gg.setValues(dzuo)
  --  gg.addListItems(dzuo)
  gg.clearResults()
  gg.toast("动作升级完毕")
end
function DZSJ()
  local status, err = pcall(dzsj)
  if status then
    --    dzsj()
   else
    gg.alert(err)
    Main() FX = "Main"
  end
end

function NLmenu()
  menu_nl = gg.choice({
    '无限能量',
    '化身小黑',
    '无翼宝贝',
    '无敌状态',
    '自爆羽翼',
    '更改体型',
    '动作升级',
    '返回主页'
  }, nil,nil)
  if menu_nl == 1 then wxnl() end
  if menu_nl == 2 then hsxh() end
  if menu_nl == 3 then wybb() end
  if menu_nl == 4 then wdzt() end
  if menu_nl == 5 then zbyy() end
  if menu_nl == 6 then ggtx() end
  if menu_nl == 7 then DZSJ() end
  if menu_nl == 8 then Main() end
  FX1=nil
end



function sit_down()--自动坐下
  zuo = {}
  zuo[1] = {}
  zuo[1].address = zero.address + 13148
  zuo[1].flags = gg.TYPE_DWORD
  zuo[1].value = 2
  gg.setValues(zuo)
  gg.toast("站着好累啊，坐着吧")
end


function dlz()--点蜡烛
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3267887104", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
  local num = gg.getResultCount()
  if num ~= 0 then
    local jq = gg.getResults(num)
    local tmp = {}
    for k, v in pairs(jq) do
      tmp[#tmp + 1] = {}
      tmp[#tmp].address = v.address - 8
      tmp[#tmp].flags = gg.TYPE_DWORD
    end
    tmp = gg.getValues(tmp)
    for k, v in pairs(tmp) do
      if v.value == 1 then
        jq[1] = tmp[k]
        break
      end
    end
    local dz = jq[1].address
    lzdz = dz - 48
    local lz = {}
    for i = 1, 320 do
      lz[i] = {}
      lz[i].address = lzdz + i * 448
      lz[i].flags = gg.TYPE_FLOAT
      lz[i].value = 1
      lz[i].freeze = true
    end
    gg.addListItems(lz)
    gg.toast("点蜡烛成功")
   else
    gg.toast("获取蜡烛地址失败")
  end
  gg.clearResults()

end


function zdh()--炸大花
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1133903872", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
  local num = gg.getResultCount()
  if num ~= 0 then
    local jq = gg.getResults(num)
    local tmp = {}
    for k, v in pairs(jq) do
      tmp[#tmp + 1] = {}
      tmp[#tmp].address = v.address - 4
      tmp[#tmp].flags = gg.TYPE_DWORD
    end
    tmp = gg.getValues(tmp)
    for k, v in pairs(tmp) do
      if v.value == 3 then
        jq[1] = tmp[k]
        break
      end
    end
    local dz = jq[1].address
    dhdz = dz + 4
    local dh = {}
    for i = 1, 245 do
      dh[i] = {}
      dh[i].address = dhdz + i * 8
      dh[i].flags = gg.TYPE_FLOAT
      dh[i].value = "0"
      dh[i].freeze = true
    end
    gg.addListItems(dh)
    gg.toast("炸花成功")
   else
    gg.toast("获取大花地址失败")
  end
  gg.clearResults()
end



function XSZH()-- 当前图吸收烛火
  gg.clearResults();
  gg.setRanges(4)
  gg.searchNumber("-842203136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local num = gg.getResultCount()
  local xh = gg.getResults(num)

  for k, v in pairs(xh) do
    v.isMatch = true
  end

  local shtmp = {}
  for i, v in ipairs(xh) do
    shtmp[#shtmp+1] = {}
    shtmp[#shtmp].address = v.address - 12
    shtmp[#shtmp].flags = gg.TYPE_FLOAT
  end

  shtmp = gg.getValues(shtmp)
  for i, v in ipairs(shtmp) do
    if "" .. v.value ~= "3.5" then
      xh[i].isMatch = false
    end
  end

  local shdata = {}
  for i, v in ipairs(xh) do
    if (v.isMatch) then
      shdata[#shdata+1] = v.address - 12
    end
  end

  shsl = #shdata
  local shqd = {}
  for i = 1, shsl do
    shqd[#shqd+1] = {}
    shqd[#shqd].address = shdata[i]
    shqd[#shqd].flags = gg.TYPE_FLOAT
    shqd[#shqd].value = 9999
  end

  gg.setValues(shqd)
  gg.clearResults()
  gg.toast("吸烛光，停两秒")
  gg.sleep(2000)
end



function getSelfAddress()--获取人物坐标基址
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(4)
  gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD)
  gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
  resultCount = gg.getResultCount()
  if resultCount == 0 then
    gg.toast("人物坐标获取失败")
    os.exit()
  end
  result = gg.getResults(resultCount)

  local tmp = {}
  for i, v in ipairs(result) do
    tmp[#tmp+1] = {}
    tmp[#tmp].address = v.address +180
    tmp[#tmp].flags = gg.TYPE_DWORD
  end

  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value > 3000 and v.value < 4000 then
      result[1] = tmp[i]
      break
    end
  end

  zero = {}
  zero[1] = {}
  zero[1].address = result[1].address + 20
  zero[1].flags = gg.TYPE_FLOAT
  zero = gg.getValues(zero)
  zero = zero[1]
  gg.clearResults()
  gg.toast("人物坐标获取完毕")
end


function getSelfCoordinate()--获取自身坐标
  tmp = {}
  xyz = {}
  for i=1, 3 do
    tmp[i] = {}
    tmp[i].address = zero.address + i * 4
    tmp[i].flags = gg.TYPE_FLOAT
    tmp = gg.getValues(tmp)
    xyz[i] = tmp[i].value
  end
  dx = xyz[1]
  dz = xyz[2]
  dy = xyz[3]
end

function getJinrenAddress()--获取小金人坐标基址
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(4)
  gg.searchNumber("20556", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0x6000000000, 0x8000000000)
  gg.refineNumber("20556", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0x6000000000, 0x8000000000)
  resultCount = gg.getResultCount()
  if resultCount == 0 then
    gg.toast("金人坐标基址获取失败")
    os.exit()
  end
  result = gg.getResults(resultCount)
  local tmp = {}
  for i, v in ipairs(result) do
    tmp[#tmp+1] = {}
    tmp[#tmp].address = v.address - 148
    tmp[#tmp].flags = gg.TYPE_DWORD
  end

  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value == 31073 then
      result[1] = tmp[i]
      break
    end
  end

  Jinren = {}
  Jinren[1] = {}
  Jinren[1].address = result[1].address + 5216
  Jinren[1].flags = gg.TYPE_FLOAT
  Jinren = gg.getValues(Jinren)
  Jinren = Jinren[1]
  gg.clearResults()
  gg.toast("金人坐标基址获取完毕")
end


jinren_flag = 0
function AbsorbJinren1()--吸金人国际服
  if jinren_flag == 0 then
    getJinrenAddress()
    jinren_flag = 1
  end
  temp={}
  for i = 1,76 do
    temp[i] = {}
    temp[i].address = Jinren.address + (i-3)*304
    temp[i].flags = gg.TYPE_DWORD
    temp[i].value = 3
  end
  gg.setValues(temp)
  gg.addListItems(temp)
  gg.toast("🎉吸金人ing，等待3秒，切图再吸🎉")
  gg.sleep(3000)
  for i = 1,75 do
    temp[i] = {}
    temp[i].address = Jinren.address + (i-3)*304
    temp[i].flags = gg.TYPE_DWORD
    temp[i].value = 1
  end
  gg.setValues(temp)
end


function Teleport(xyz)--瞬移传送函数
  tmp = {}
  for i = 1, 3 do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = zero.address + i * 4
    tmp[#tmp].flags = gg.TYPE_FLOAT
    tmp[#tmp].value = xyz[i]
  end
  gg.setValues(tmp)
end


function Move()--定点瞬移
  getSelfCoordinate()
  local positionPrT = gg.prompt(
  {"坐标X(左右)","坐标Z(上下)","坐标Y(前后)"},
  {[1]= dx,[2]= dz,[3]= dy},
  {[1]="number",[1]="number",[1]="number"})
  if(positionPrT[1] == nil or positionPrT[2] == nil
    or positionPrT[3] == nil or #positionPrT == 0) then
    PositionMenu()
   else
    tmp = {}
    for i=1, 3 do
      tmp[#tmp+1] = {}
      tmp[#tmp].address = zero.address + i * 4
      tmp[#tmp].flags = gg.TYPE_FLOAT
      tmp[#tmp].value = positionPrT[i]
      tmp[#tmp].freeze = true
    end
    gg.setValues(tmp)
    gg.addListItems(tmp)
    gg.toast("瞬移完成，坐标已冻结")
  end
end

function Unfreeze()--解冻坐标
  gg.removeListItems(tmp)
  gg.toast("坐标已解冻")
end
function Move2()--输入坐标瞬移
  getSelfCoordinate()
  local positionPrT = gg.prompt(
  {"请输入瞬移位置格式{X;Z;Y}"},
  {[1]="{"..string.format("%.2f",dx)..";"..string.format("%.2f",dz)..";"..string.format("%.2f",dy).."}"},
  {[1]="text"})
  if(positionPrT == nil or #positionPrT == 0) then
    ZBmenu()
   else
    Teleport(assert(load("return " .. positionPrT[1]))())
    gg.toast("角色瞬移完成！")
  end
end
function getXyz()--复制当前位置坐标
  getSelfCoordinate()
  gg.copyText("{"..string.format("%.2f",dx)..";"..string.format("%.2f",dz)..";"..string.format("%.2f",dy).."}")
  gg.toast("复制完成")
end

function ZBmenu()
  FX = "ZBmenu"
  menu_p = gg.choice({
    "定点瞬移",
    "解冻坐标",
    "坐标瞬移",
    "复制坐标",
    "返回上页"
  },nil,nil)
  if menu_p == 1 then Move() end
  if menu_p == 2 then Unfreeze() end
  if menu_p == 3 then Move2() end
  if menu_p == 4 then getXyz() end
  if menu_p == 5 then Main() end
  FX1=nil
end

function getCSMcodeAddress()--获取传送门代码基址
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(4)
  gg.searchNumber("334,569,360", gg.TYPE_DWORD)
  gg.refineNumber("334,569,360", gg.TYPE_DWORD)
  resultCount = gg.getResultCount()
  if resultCount == 0 then
    gg.toast("传送门代码基址获取失败")
    os.exit()
  end
  result = gg.getResults(resultCount)

  local tmp = {}
  for i, v in ipairs(result) do
    tmp[#tmp+1] = {}
    tmp[#tmp].address = v.address +16
    tmp[#tmp].flags = gg.TYPE_DWORD
  end

  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value > 150000 and v.value < 160000 then
      result[1] = tmp[i]
      break
    end
  end
  CSM_zero = {}
  CSM_zero[1] = {}
  CSM_zero[1].address = result[1].address + 856
  CSM_zero[1].flags = gg.TYPE_DWORD
  CSM_zero = gg.getValues(CSM_zero)
  CSM_zero = CSM_zero[1]
  gg.toast("传送门代码获取完毕")
end

csmcode_flag = 0
function getCSMCodeCoordinate()--获取传送门代码坐标
  if csmcode_flag == 0 then
    getCSMcodeAddress()
    csmcode_flag = 1
  end
  tmp = {}
  abcdef = {}
  for i=1, 6 do
    tmp[i] = {}
    tmp[i].address = CSM_zero.address + i * 4
    tmp[i].flags = gg.TYPE_DWORD
    tmp = gg.getValues(tmp)
    abcdef[i] = tmp[i].value
  end
  gg.addListItems(tmp)
  gg.copyText('{' .. abcdef[1].. ';' .. abcdef[2].. ';' .. abcdef[3]..';'
  .. abcdef[4]..';' .. abcdef[5]..';' .. abcdef[6].. '}')
end

local csmw = {}
function getCSMaddress()--获取传送门基址
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1,487,508,559", 4, false, gg.SING_EQUAL, 0, -1)
  gg.refineNumber("1,487,508,559", 4, false, gg.SING_EQUAL, 0, -1)
  z = gg.getResultCount()
  csmw = gg.getResults(z)
  tmp = {}
  for i, v in ipairs(csmw) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address + 4
    tmp[#tmp].flags = 4
  end
  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value == 11 then
      csmw[1] = tmp[i]
      break
    end
  end
end

csm_flag = 0
local csm = {}
function CSM(csm)--传送门
  if csm_flag == 0 then
    getCSMaddress()
    csm_flag = 1
  end
  csmw.address = csmw[1].address + 4
  for i = 1, 6 do
    local r = {}
    r[i] = {}
    r[i].address = csmw.address + i * 4
    r[i].flags = 4
    r[i].value = csm[i]
    gg.setValues(r)
    gg.addListItems(r)
  end
  gg.toast("修改成功！请使用[回遇境]进行传送！")
  gg.clearResults()
end


function CSMmenu()
  menu_csm = gg.choice({
    "〖"..CSMcode[1][1].."〗",
    "〖"..CSMcode[2][1].."〗",
    "〖"..CSMcode[3][1].."〗",
    "〖"..CSMcode[4][1].."〗",
    "〖"..CSMcode[5][1].."〗",
    "〖"..CSMcode[6][1].."〗",
    "〖"..CSMcode[7][1].."〗",
    "〖"..CSMcode[8][1].."〗",
    "〖"..CSMcode[9][1].."〗",
    "〖"..CSMcode[10][1].."〗",
    "〖"..CSMcode[11][1].."〗",
    "〖"..CSMcode[12][1].."〗",
    "〖"..CSMcode[13][1].."〗",
    "〖"..CSMcode[14][1].."〗",
    "〖"..CSMcode[15][1].."〗",
    "〖"..CSMcode[16][1].."〗",
    "〖"..CSMcode[17][1].."〗",
    "〖"..CSMcode[18][1].."〗",
    "〖"..CSMcode[19][1].."〗",
    "〖"..CSMcode[20][1].."〗",
    "〖"..CSMcode[21][1].."〗",
    "〖"..CSMcode[22][1].."〗",
    "〖"..CSMcode[23][1].."〗",
    "〖"..CSMcode[24][1].."〗",
    "〖"..CSMcode[25][1].."〗",
    "〖"..CSMcode[26][1].."〗",
    "〖"..CSMcode[27][1].."〗",
    "〖"..CSMcode[28][1].."〗",
    "〖"..CSMcode[29][1].."〗",
    "〖"..CSMcode[30][1].."〗",
    "〖"..CSMcode[31][1].."〗",
    "〖"..CSMcode[32][1].."〗",
    "〖"..CSMcode[33][1].."〗",
    "〖"..CSMcode[34][1].."〗",
    "〖"..CSMcode[35][1].."〗",
    "〖"..CSMcode[36][1].."〗",
    "〖"..CSMcode[37][1].."〗",
    "〖"..CSMcode[38][1].."〗",
    "〖"..CSMcode[39][1].."〗",
    "〖"..CSMcode[40][1].."〗",
    "复制传送门代码",
    "返回主页"
  },nil,nil)
  if menu_csm == 1 then CSM(CSMcode[1][2]) end
  if menu_csm == 2 then CSM(CSMcode[2][2]) end
  if menu_csm == 3 then CSM(CSMcode[3][2]) end
  if menu_csm == 4 then CSM(CSMcode[4][2]) end
  if menu_csm == 5 then CSM(CSMcode[5][2]) end
  if menu_csm == 6 then CSM(CSMcode[6][2]) end
  if menu_csm == 7 then CSM(CSMcode[7][2]) end
  if menu_csm == 8 then CSM(CSMcode[8][2]) end
  if menu_csm == 9 then CSM(CSMcode[9][2]) end
  if menu_csm == 10 then CSM(CSMcode[10][2]) end
  if menu_csm == 11 then CSM(CSMcode[11][2]) end
  if menu_csm == 12 then CSM(CSMcode[12][2]) end
  if menu_csm == 13 then CSM(CSMcode[13][2]) end
  if menu_csm == 14 then CSM(CSMcode[14][2]) end
  if menu_csm == 15 then CSM(CSMcode[15][2]) end
  if menu_csm == 16 then CSM(CSMcode[16][2]) end
  if menu_csm == 17 then CSM(CSMcode[17][2]) end
  if menu_csm == 18 then CSM(CSMcode[18][2]) end
  if menu_csm == 19 then CSM(CSMcode[19][2]) end
  if menu_csm == 20 then CSM(CSMcode[20][2]) end
  if menu_csm == 21 then CSM(CSMcode[21][2]) end
  if menu_csm == 22 then CSM(CSMcode[22][2]) end
  if menu_csm == 23 then CSM(CSMcode[23][2]) end
  if menu_csm == 24 then CSM(CSMcode[24][2]) end
  if menu_csm == 25 then CSM(CSMcode[25][2]) end
  if menu_csm == 26 then CSM(CSMcode[26][2]) end
  if menu_csm == 27 then CSM(CSMcode[27][2]) end
  if menu_csm == 28 then CSM(CSMcode[28][2]) end
  if menu_csm == 29 then CSM(CSMcode[29][2]) end
  if menu_csm == 30 then CSM(CSMcode[30][2]) end
  if menu_csm == 31 then CSM(CSMcode[31][2]) end
  if menu_csm == 32 then CSM(CSMcode[32][2]) end
  if menu_csm == 33 then CSM(CSMcode[33][2]) end
  if menu_csm == 34 then CSM(CSMcode[34][2]) end
  if menu_csm == 35 then CSM(CSMcode[35][2]) end
  if menu_csm == 36 then CSM(CSMcode[36][2]) end
  if menu_csm == 37 then CSM(CSMcode[37][2]) end
  if menu_csm == 38 then CSM(CSMcode[38][2]) end
  if menu_csm == 39 then CSM(CSMcode[39][2]) end
  if menu_csm == 40 then CSM(CSMcode[40][2]) end
  if menu_csm == 41 then getCSMCodeCoordinate() end
  if menu_csm == 42 then Main() end
  FX1=nil
end



function loadzbdm()--加载装扮代码
  body={
    {"全身白",1887022437},
    {"白棉裤",268095236},
    {"圣岛裤",1394323104},
    {"凛冬裤1",-1203892007},
    {"凛冬裤2",3114889986},
    {"凛冬裤3",2119378818},
    {"凛冬裤4",570621080},
    {"细腿裤",4086661700},
    {"原始裤",3691343236},
    {"阔腿裤",2432891829},
    {"萝卜裤",4145832489},
    {"原始裤",1212774255},
    {"acknowledge",38798400},
    {"backflip",1154523481},
    {"beacon",3599231951},
    {"cheer",801819898},
    {"dance",3777675530},
    {"float",695339321},
    {"jelly",4078911489},
    {"juggle",28439235},
    {"kiss",1021189534},
    {"questap01",3454227119},
    {"questap05",3691947440},
    {"rally",2069718115},
    {"salute",561104938},
    {"think",3988556959},
  }

  mask={
    {"🐴鹿头🐴",1044037391},
    {"😳害羞😳",1304488902},
    {"🐥鸭嘴🐥",570479295},
    {"矮人",2954671753},
    {"鹰嘴红",3555166118},
    {"鸟嘴尖长",3716657324},
    {"鸟嘴勾",1837529177},
    {"鸟嘴短",2580070469},
    {"鬼头",2535142832},
    {"鬼脸",2726619261},
    {"红脸兔子面具",4228619598},
    {"黄鼠狼",3107843108},
    {"眉毛胡子老爷爷",2228385984},
    {"智者白胡子",2479708305},
    {"长胡子",1453662570},
    {"八字胡",2699133379},
    {"眼镜",497608138},
    {"黑脸",4267756678},
    {"backflip",3117037165},
    {"bow",3066704308},
    {"carry",1968067367},
    {"celebrate",378937945},
    {"crabvoice",1900956891},
    {"crabwalk",4264449179},
    {"die",685288461},
    {"doublefive",1984844986},
    {"facepalm",2297892564},
    {"force",1929978494},
    {"lazycool",2001622605},
    {"lookaround",3659135953},
    {"nod",1481505198},
    {"nothanks",1600525874},
    {"npc_marketing2",3663390882},
    {"playfight",1464727579},
    {"questap03",1934512129},
    {"questap04",3095923099},
    {"scare",3456549768},
    {"shh",1917734510},
    {"sorry",252652358},
    {"tripleaxel",1884179272},
    {"wave",576463963},
    {"wipe",3207378178},
  }

  hair={
    {"万圣节南瓜",2926311387},
    {"头顶一撮黑",2942907137},
    {"光头",1740771042},
    {"感恩黄鼠狼",3441194314},
    {"感恩宋小宝",499685406},
    {"感恩唐僧帽",777066155},
    {"追光道姑",4152249299},
    {"追光背头",4161779120},
    {"追光帽子",3342968869},
    {"追光斗笠",2231097150},
    {"归属发卡",168028151},
    {"归属蝴蝶结",1859574381},
    {"凛冬雨伞",1636174276},
    {"凛冬小龙人",298050356},
    {"凛冬大草鸡",3216257586},
    {"凛冬扁平发",640785264},
    {"凛冬季精神小伙",1458373057},
    {"魔法帽",4147463881},
    {"魔法帽",862984657},
    {"魔法季帽子",1001062354},
    {"魔法阿拉伯人",1469931494},
    {"魔法季发型",1881845530},
    {"魔法大裤衩",3559895758},
    {"魔法季毕业头",3225530939},
    {"圣岛草帽",2656707950},
    {"圣岛麻花尾",185578776},
    {"圣岛圆头",2589518446},
    {"圣岛地中海",579079763},
    {"圣岛水母头",3711594408},
    {"圣岛季短发",3423843452},
    {"晨岛毕业大胡子",416680174},
    {"霞谷毕业卡卡西",777821397},
    {"晨岛拒绝",589320403},
    {"晨岛萌新",158418233},
    {"晨岛马尾",2784461785},
    {"云野船工",1779588853},
    {"云野招手",1091766677},
    {"云野大笑",1960678833},
    {"云野冲天辫",3075031305},
    {"云野鼓掌",2802448856},
    {"小龙骨",1966947567},
    {"雨林麻花辫",1415190429},
    {"雨林小揪揪",189805609},
    {"雨林哭泣",1151632134},
    {"雨林寒冷",21382025},
    {"雨林跺脚",1092648973},
    {"雨林震惊",392918653},
    {"雨林蘑菇头",3668577427},
    {"霞谷平菇",310226317},
    {"霞谷棉花糖",2666640712},
    {"扎手狮子头",651777506},
    {"柔顺狮子头",3437606455},
    {"暮土平头哥",1472657881},
    {"暮土趴倒",351601302},
    {"暮土晕倒",1075871354},
    {"暮土背头",2582832281},
    {"禁阁长发",766797080},
    {"禁阁光头",4055513070},
    {"禁阁长发",1747536341},
  }

  horn={
    {"无",3680499229},
    {"红耳机",343022577},
    {"魔法耳坠",3886634356},
    {"一周年礼帽",299998503},
  }

  wing={
    {"斗篷消失",0},
    {"白底TGC",4204389920},
    {"黑底TGC",2219120716},
    {"万圣节蝙蝠",2496216296},
    {"感恩白斗",1205733815},
    {"感恩红绒",3130294398},
    {"追光螃蟹花瓣",1516488095},
    {"追光金边蔚蓝",2716527852},
    {"追光紫边蔚蓝",2766860709},
    {"归属白金",1740444614},
    {"归属红金",3740388568},
    {"归属黑金",2181608090},
    {"凛冬棉斗",844189904},
    {"凛冬白鸟",803430286},
    {"凛冬紫斗",844189904},
    {"魔法季黄斗",2473421893},
    {"魔法黄色金边",4002608101},
    {"魔法季深色斗",705761080},
    {"魔法棕色金边",3952275244},
    {"圣岛黄蝴蝶边",2091421626},
    {"圣岛粉红花瓣",2230620057},
    {"圣岛花花绿绿",798847432},
    {"圣岛毕业鲲斗",1632614382},
    {"云野黄斗",4290017146},
    {"白底黄斗",3329648148},
    {"雨林紫斗",3466800656},
    {"雨林蓝斗",1611389272},
    {"霞谷红斗",2038455273},
    {"霞谷粉斗",4009091214},
    {"暮土黑斗",4282852965},
    {"暮土绿斗",3167707894},
    {"禁阁深蓝",1676224199},
    {"禁阁白斗",2642234311},
  }

  prop={
    {"空",2035109393},
    {"秋千",3580839943},
    {"篝火",3779226149},
    {"大花伞",3634028466},
    {"梯形木琴",399957901},
    {"排箫",1237767078},
    {"尤克里里",2352004821},
    {"吉他",3269660804},
    {"高音钢琴",3275797515},
    {"笛子",396560731},
    {"雨伞",2574095143},
    {"空灵鼓",900914909},
    {"铃铛小钟",4246711693},
    {"水壶大钟",4196378836},
    {"钢琴",1889256860},
    {"椅子",992885953},
    {"竖琴",2671000446},
    {"牛角",1021011859},
    {"烟花棒",3280753494},
    {"圆鼓琴",1064146256},
    {"双边鼓",2003040587},
    {"nothanks",2186944737},
    {"tgc_alexey",2041015009},
    {"tgc_atlas",776794517},
  }

  neck={
    {"感恩季项链",2348358260},
    {"追光季项链",1117786973},
    {"归属季项链",1962184054},
    {"凛冬季项链",3594119491},
    {"魔法季项链",3076646648},
    {"圣岛季项链",268594609},
    {"圣岛黑领结",1539087887},
  }
end

function kz() --换装裤子
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwkzpy={}
  zwkzpy[1] = {}
  zwkzpy[1].address = energy[1].address +12412+ 4
  zwkzpy[1].flags = gg.TYPE_DWORD
  zwkzpy[1].value = kzdm
  zwkzpy[1].freeze = true
  gg.addListItems(zwkzpy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function dp() --换装斗篷
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwdppy={}
  zwdppy[1] = {}
  zwdppy[1].address = energy[1].address +12412 + 8
  zwdppy[1].flags = gg.TYPE_DWORD
  zwdppy[1].value = dpdm
  zwdppy[1].freeze = true
  gg.addListItems(zwdppy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function tf() --换装头发
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwtfpy={}
  zwtfpy[1] = {}
  zwtfpy[1].address = energy[1].address +12412 + 12
  zwtfpy[1].flags = gg.TYPE_DWORD
  zwtfpy[1].value = tfdm
  zwtfpy[1].freeze = true
  gg.addListItems(zwtfpy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function mj() --换装面具
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwmjpy={}
  zwmjpy[1] = {}
  zwmjpy[1].address = energy[1].address +12412 + 16
  zwmjpy[1].flags = gg.TYPE_DWORD
  zwmjpy[1].value = mjdm
  zwmjpy[1].freeze = true
  gg.addListItems(zwmjpy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function xl() --换装项链
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwxlpy={}
  zwxlpy[1] = {}
  zwxlpy[1].address = energy[1].address +12412 + 20
  zwxlpy[1].flags = gg.TYPE_DWORD
  zwxlpy[1].value = xldm
  zwxlpy[1].freeze = true
  gg.addListItems(zwxlpy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function ts() --换装头饰
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwtspy={}
  zwtspy[1] = {}
  zwtspy[1].address = energy[1].address +12412 + 28
  zwtspy[1].flags = gg.TYPE_DWORD
  zwtspy[1].value = tsdm
  zwtspy[1].freeze = true
  gg.addListItems(zwtspy)
  gg.clearResults()
  gg.toast("换装成功！")
end

function bs() --换装背饰道具
  if Energy ~= 1 then
    getEnergyAddress()
  end
  zwbspy={}
  zwbspy[1] = {}
  zwbspy[1].address = energy[1].address +12412 + 36
  zwbspy[1].flags = gg.TYPE_DWORD
  zwbspy[1].value = bsdm
  zwbspy[1].freeze = true
  gg.addListItems(zwbspy)
  gg.clearResults()
  gg.toast("换装成功！")
end
function hz_kz()
  menu_kz = gg.choice({
    '裤子【'..body[1][1]..'】',
    '裤子【'..body[2][1]..'】',
    '裤子【'..body[3][1]..'】',
    '裤子【'..body[4][1]..'】',
    '裤子【'..body[5][1]..'】',
    '裤子【'..body[6][1]..'】',
    '裤子【'..body[7][1]..'】',
    '裤子【'..body[8][1]..'】',
    '裤子【'..body[9][1]..'】',
    '裤子【'..body[10][1]..'】',
    '裤子【'..body[11][1]..'】',
    '裤子【'..body[12][1]..'】',
    '裤子【'..body[13][1]..'】',
    '裤子【'..body[14][1]..'】',
    '裤子【'..body[15][1]..'】',
    '裤子【'..body[16][1]..'】',
    '裤子【'..body[17][1]..'】',
    '裤子【'..body[18][1]..'】',
    '裤子【'..body[19][1]..'】',
    '裤子【'..body[20][1]..'】',
    '裤子【'..body[21][1]..'】',
    '裤子【'..body[22][1]..'】',
    '裤子【'..body[23][1]..'】',
    '裤子【'..body[24][1]..'】',
    '裤子【'..body[25][1]..'】',
    '裤子【'..body[26][1]..'】',
  },nil,nil)

  if menu_kz == 1 then kzdm= body[1][2] kz() end
  if menu_kz == 2 then kzdm= body[2][2] kz() end
  if menu_kz == 3 then kzdm= body[3][2] kz() end
  if menu_kz == 4 then kzdm= body[4][2] kz() end
  if menu_kz == 5 then kzdm= body[5][2] kz() end
  if menu_kz == 6 then kzdm= body[6][2] kz() end
  if menu_kz == 7 then kzdm= body[7][2] kz() end
  if menu_kz == 8 then kzdm= body[8][2] kz() end
  if menu_kz == 9 then kzdm= body[9][2] kz() end
  if menu_kz == 10 then kzdm= body[10][2] kz() end
  if menu_kz == 11 then kzdm= body[11][2] kz() end
  if menu_kz == 12 then kzdm= body[12][2] kz() end
  if menu_kz == 13 then kzdm= body[13][2] kz() end
  if menu_kz == 14 then kzdm= body[14][2] kz() end
  if menu_kz == 15 then kzdm= body[15][2] kz() end
  if menu_kz == 16 then kzdm= body[16][2] kz() end
  if menu_kz == 17 then kzdm= body[17][2] kz() end
  if menu_kz == 18 then kzdm= body[18][2] kz() end
  if menu_kz == 19 then kzdm= body[19][2] kz() end
  if menu_kz == 20 then kzdm= body[20][2] kz() end
  if menu_kz == 21 then kzdm= body[21][2] kz() end
  if menu_kz == 22 then kzdm= body[22][2] kz() end
  if menu_kz == 23 then kzdm= body[23][2] kz() end
  if menu_kz == 24 then kzdm= body[24][2] kz() end
  if menu_kz == 25 then kzdm= body[25][2] kz() end
  if menu_kz == 26 then kzdm= body[26][2] kz() end
  FX1=nil
end
function hz_mj()
  menu_mj = gg.choice({
    '面具【'..mask[1][1]..'】',
    '面具【'..mask[2][1]..'】',
    '面具【'..mask[3][1]..'】',
    '面具【'..mask[4][1]..'】',
    '面具【'..mask[5][1]..'】',
    '面具【'..mask[6][1]..'】',
    '面具【'..mask[7][1]..'】',
    '面具【'..mask[8][1]..'】',
    '面具【'..mask[9][1]..'】',
    '面具【'..mask[10][1]..'】',
    '面具【'..mask[11][1]..'】',
    '面具【'..mask[12][1]..'】',
    '面具【'..mask[13][1]..'】',
    '面具【'..mask[14][1]..'】',
    '面具【'..mask[15][1]..'】',
    '面具【'..mask[16][1]..'】',
    '面具【'..mask[17][1]..'】',
    '面具【'..mask[18][1]..'】',
    '面具【'..mask[19][1]..'】',
    '面具【'..mask[20][1]..'】',
    '面具【'..mask[21][1]..'】',
    '面具【'..mask[22][1]..'】',
    '面具【'..mask[23][1]..'】',
    '面具【'..mask[24][1]..'】',
    '面具【'..mask[25][1]..'】',
    '面具【'..mask[26][1]..'】',
    '面具【'..mask[27][1]..'】',
    '面具【'..mask[28][1]..'】',
    '面具【'..mask[29][1]..'】',
    '面具【'..mask[30][1]..'】',
    '面具【'..mask[31][1]..'】',
    '面具【'..mask[32][1]..'】',
    '面具【'..mask[33][1]..'】',
    '面具【'..mask[34][1]..'】',
    '面具【'..mask[35][1]..'】',
    '面具【'..mask[36][1]..'】',
    '面具【'..mask[37][1]..'】',
    '面具【'..mask[38][1]..'】',
    '面具【'..mask[39][1]..'】',
    '面具【'..mask[40][1]..'】',
    '面具【'..mask[41][1]..'】',
    '面具【'..mask[42][1]..'】',
  },nil,nil)

  if menu_mj == 1 then mjdm= mask[1][2] mj() end
  if menu_mj == 2 then mjdm= mask[2][2] mj() end
  if menu_mj == 3 then mjdm= mask[3][2] mj() end
  if menu_mj == 4 then mjdm= mask[4][2] mj() end
  if menu_mj == 5 then mjdm= mask[5][2] mj() end
  if menu_mj == 6 then mjdm= mask[6][2] mj() end
  if menu_mj == 7 then mjdm= mask[7][2] mj() end
  if menu_mj == 8 then mjdm= mask[8][2] mj() end
  if menu_mj == 9 then mjdm= mask[9][2] mj() end
  if menu_mj == 10 then mjdm= mask[10][2] mj() end
  if menu_mj == 11 then mjdm= mask[11][2] mj() end
  if menu_mj == 12 then mjdm= mask[12][2] mj() end
  if menu_mj == 13 then mjdm= mask[13][2] mj() end
  if menu_mj == 14 then mjdm= mask[14][2] mj() end
  if menu_mj == 15 then mjdm= mask[15][2] mj() end
  if menu_mj == 16 then mjdm= mask[16][2] mj() end
  if menu_mj == 17 then mjdm= mask[17][2] mj() end
  if menu_mj == 18 then mjdm= mask[18][2] mj() end
  if menu_mj == 19 then mjdm= mask[19][2] mj() end
  if menu_mj == 20 then mjdm= mask[20][2] mj() end
  if menu_mj == 21 then mjdm= mask[21][2] mj() end
  if menu_mj == 22 then mjdm= mask[22][2] mj() end
  if menu_mj == 23 then mjdm= mask[23][2] mj() end
  if menu_mj == 24 then mjdm= mask[24][2] mj() end
  if menu_mj == 25 then mjdm= mask[25][2] mj() end
  if menu_mj == 26 then mjdm= mask[26][2] mj() end
  if menu_mj == 27 then mjdm= mask[27][2] mj() end
  if menu_mj == 28 then mjdm= mask[28][2] mj() end
  if menu_mj == 29 then mjdm= mask[29][2] mj() end
  if menu_mj == 30 then mjdm= mask[30][2] mj() end
  if menu_mj == 31 then mjdm= mask[31][2] mj() end
  if menu_mj == 32 then mjdm= mask[32][2] mj() end
  if menu_mj == 33 then mjdm= mask[33][2] mj() end
  if menu_mj == 34 then mjdm= mask[34][2] mj() end
  if menu_mj == 35 then mjdm= mask[35][2] mj() end
  if menu_mj == 36 then mjdm= mask[36][2] mj() end
  if menu_mj == 37 then mjdm= mask[37][2] mj() end
  if menu_mj == 38 then mjdm= mask[38][2] mj() end
  if menu_mj == 39 then mjdm= mask[39][2] mj() end
  if menu_mj == 40 then mjdm= mask[40][2] mj() end
  if menu_mj == 41 then mjdm= mask[41][2] mj() end
  if menu_mj == 42 then mjdm= mask[42][2] mj() end
  FX1=nil
end
function hz_tf()
  menu_tf = gg.choice({
    '发型【'..hair[1][1]..'】',
    '发型【'..hair[2][1]..'】',
    '发型【'..hair[3][1]..'】',
    '发型【'..hair[4][1]..'】',
    '发型【'..hair[5][1]..'】',
    '发型【'..hair[6][1]..'】',
    '发型【'..hair[7][1]..'】',
    '发型【'..hair[8][1]..'】',
    '发型【'..hair[9][1]..'】',
    '发型【'..hair[10][1]..'】',
    '发型【'..hair[11][1]..'】',
    '发型【'..hair[12][1]..'】',
    '发型【'..hair[13][1]..'】',
    '发型【'..hair[14][1]..'】',
    '发型【'..hair[15][1]..'】',
    '发型【'..hair[16][1]..'】',
    '发型【'..hair[17][1]..'】',
    '发型【'..hair[18][1]..'】',
    '发型【'..hair[19][1]..'】',
    '发型【'..hair[20][1]..'】',
    '发型【'..hair[21][1]..'】',
    '发型【'..hair[22][1]..'】',
    '发型【'..hair[23][1]..'】',
    '发型【'..hair[24][1]..'】',
    '发型【'..hair[25][1]..'】',
    '发型【'..hair[26][1]..'】',
    '发型【'..hair[27][1]..'】',
    '发型【'..hair[28][1]..'】',
    '发型【'..hair[29][1]..'】',
    '发型【'..hair[30][1]..'】',
    '发型【'..hair[31][1]..'】',
    '发型【'..hair[32][1]..'】',
    '发型【'..hair[33][1]..'】',
    '发型【'..hair[34][1]..'】',
    '发型【'..hair[35][1]..'】',
    '发型【'..hair[36][1]..'】',
    '发型【'..hair[37][1]..'】',
    '发型【'..hair[38][1]..'】',
    '发型【'..hair[39][1]..'】',
    '发型【'..hair[40][1]..'】',
    '发型【'..hair[41][1]..'】',
    '发型【'..hair[42][1]..'】',
    '发型【'..hair[43][1]..'】',
    '发型【'..hair[44][1]..'】',
    '发型【'..hair[45][1]..'】',
    '发型【'..hair[46][1]..'】',
    '发型【'..hair[47][1]..'】',
    '发型【'..hair[48][1]..'】',
    '发型【'..hair[49][1]..'】',
    '发型【'..hair[50][1]..'】',
    '发型【'..hair[51][1]..'】',
    '发型【'..hair[52][1]..'】',
    '发型【'..hair[53][1]..'】',
    '发型【'..hair[54][1]..'】',
    '发型【'..hair[55][1]..'】',
    '发型【'..hair[56][1]..'】',
    '发型【'..hair[57][1]..'】',
    '发型【'..hair[58][1]..'】',
    '发型【'..hair[59][1]..'】',
  },nil,nil)

  if menu_tf == 1 then tfdm= hair[1][2] tf() end
  if menu_tf == 2 then tfdm= hair[2][2] tf() end
  if menu_tf == 3 then tfdm= hair[3][2] tf() end
  if menu_tf == 4 then tfdm= hair[4][2] tf() end
  if menu_tf == 5 then tfdm= hair[5][2] tf() end
  if menu_tf == 6 then tfdm= hair[6][2] tf() end
  if menu_tf == 7 then tfdm= hair[7][2] tf() end
  if menu_tf == 8 then tfdm= hair[8][2] tf() end
  if menu_tf == 9 then tfdm= hair[9][2] tf() end
  if menu_tf == 10 then tfdm= hair[10][2] tf() end
  if menu_tf == 11 then tfdm= hair[11][2] tf() end
  if menu_tf == 12 then tfdm= hair[12][2] tf() end
  if menu_tf == 13 then tfdm= hair[13][2] tf() end
  if menu_tf == 14 then tfdm= hair[14][2] tf() end
  if menu_tf == 15 then tfdm= hair[15][2] tf() end
  if menu_tf == 16 then tfdm= hair[16][2] tf() end
  if menu_tf == 17 then tfdm= hair[17][2] tf() end
  if menu_tf == 18 then tfdm= hair[18][2] tf() end
  if menu_tf == 19 then tfdm= hair[19][2] tf() end
  if menu_tf == 20 then tfdm= hair[20][2] tf() end
  if menu_tf == 21 then tfdm= hair[21][2] tf() end
  if menu_tf == 22 then tfdm= hair[22][2] tf() end
  if menu_tf == 23 then tfdm= hair[23][2] tf() end
  if menu_tf == 24 then tfdm= hair[24][2] tf() end
  if menu_tf == 25 then tfdm= hair[25][2] tf() end
  if menu_tf == 26 then tfdm= hair[26][2] tf() end
  if menu_tf == 27 then tfdm= hair[27][2] tf() end
  if menu_tf == 28 then tfdm= hair[28][2] tf() end
  if menu_tf == 29 then tfdm= hair[29][2] tf() end
  if menu_tf == 30 then tfdm= hair[30][2] tf() end
  if menu_tf == 31 then tfdm= hair[31][2] tf() end
  if menu_tf == 32 then tfdm= hair[32][2] tf() end
  if menu_tf == 33 then tfdm= hair[33][2] tf() end
  if menu_tf == 34 then tfdm= hair[34][2] tf() end
  if menu_tf == 35 then tfdm= hair[35][2] tf() end
  if menu_tf == 36 then tfdm= hair[36][2] tf() end
  if menu_tf == 37 then tfdm= hair[37][2] tf() end
  if menu_tf == 38 then tfdm= hair[38][2] tf() end
  if menu_tf == 39 then tfdm= hair[39][2] tf() end
  if menu_tf == 40 then tfdm= hair[40][2] tf() end
  if menu_tf == 41 then tfdm= hair[41][2] tf() end
  if menu_tf == 42 then tfdm= hair[42][2] tf() end
  if menu_tf == 43 then tfdm= hair[43][2] tf() end
  if menu_tf == 44 then tfdm= hair[44][2] tf() end
  if menu_tf == 45 then tfdm= hair[45][2] tf() end
  if menu_tf == 46 then tfdm= hair[46][2] tf() end
  if menu_tf == 47 then tfdm= hair[47][2] tf() end
  if menu_tf == 48 then tfdm= hair[48][2] tf() end
  if menu_tf == 49 then tfdm= hair[49][2] tf() end
  if menu_tf == 50 then tfdm= hair[50][2] tf() end
  if menu_tf == 51 then tfdm= hair[51][2] tf() end
  if menu_tf == 52 then tfdm= hair[52][2] tf() end
  if menu_tf == 53 then tfdm= hair[53][2] tf() end
  if menu_tf == 54 then tfdm= hair[54][2] tf() end
  if menu_tf == 55 then tfdm= hair[55][2] tf() end
  if menu_tf == 56 then tfdm= hair[56][2] tf() end
  if menu_tf == 57 then tfdm= hair[57][2] tf() end
  if menu_tf == 58 then tfdm= hair[58][2] tf() end
  if menu_tf == 59 then tfdm= hair[59][2] tf() end
  FX1=nil
end
function hz_ts()
  menu_ts = gg.choice({
    '头饰【'..horn[1][1]..'】',
    '头饰【'..horn[2][1]..'】',
    '头饰【'..horn[3][1]..'】',
    '头饰【'..horn[4][1]..'】',
  },nil,nil)

  if menu_ts == 1 then tsdm= horn[1][2] ts() end
  if menu_ts == 2 then tsdm= horn[2][2] ts() end
  if menu_ts == 3 then tsdm= horn[3][2] ts() end
  if menu_ts == 4 then tsdm= horn[4][2] ts() end
  FX1=nil
end
function hz_dp()
  menu_dp = gg.choice({
    '斗篷【'..wing[1][1]..'】',
    '斗篷【'..wing[2][1]..'】',
    '斗篷【'..wing[3][1]..'】',
    '斗篷【'..wing[4][1]..'】',
    '斗篷【'..wing[5][1]..'】',
    '斗篷【'..wing[6][1]..'】',
    '斗篷【'..wing[7][1]..'】',
    '斗篷【'..wing[8][1]..'】',
    '斗篷【'..wing[9][1]..'】',
    '斗篷【'..wing[10][1]..'】',
    '斗篷【'..wing[11][1]..'】',
    '斗篷【'..wing[12][1]..'】',
    '斗篷【'..wing[13][1]..'】',
    '斗篷【'..wing[14][1]..'】',
    '斗篷【'..wing[15][1]..'】',
    '斗篷【'..wing[16][1]..'】',
    '斗篷【'..wing[17][1]..'】',
    '斗篷【'..wing[18][1]..'】',
    '斗篷【'..wing[19][1]..'】',
    '斗篷【'..wing[20][1]..'】',
    '斗篷【'..wing[21][1]..'】',
    '斗篷【'..wing[22][1]..'】',
    '斗篷【'..wing[23][1]..'】',
    '斗篷【'..wing[24][1]..'】',
    '斗篷【'..wing[25][1]..'】',
    '斗篷【'..wing[26][1]..'】',
    '斗篷【'..wing[27][1]..'】',
    '斗篷【'..wing[28][1]..'】',
    '斗篷【'..wing[29][1]..'】',
    '斗篷【'..wing[30][1]..'】',
    '斗篷【'..wing[31][1]..'】',
    '斗篷【'..wing[32][1]..'】',
    '斗篷【'..wing[33][1]..'】',
  },nil,nil)

  if menu_dp == 1 then dpdm= wing[1][2] dp() end
  if menu_dp == 2 then dpdm= wing[2][2] dp() end
  if menu_dp == 3 then dpdm= wing[3][2] dp() end
  if menu_dp == 4 then dpdm= wing[4][2] dp() end
  if menu_dp == 5 then dpdm= wing[5][2] dp() end
  if menu_dp == 6 then dpdm= wing[6][2] dp() end
  if menu_dp == 7 then dpdm= wing[7][2] dp() end
  if menu_dp == 8 then dpdm= wing[8][2] dp() end
  if menu_dp == 9 then dpdm= wing[9][2] dp() end
  if menu_dp == 10 then dpdm= wing[10][2] dp() end
  if menu_dp == 11 then dpdm= wing[11][2] dp() end
  if menu_dp == 12 then dpdm= wing[12][2] dp() end
  if menu_dp == 13 then dpdm= wing[13][2] dp() end
  if menu_dp == 14 then dpdm= wing[14][2] dp() end
  if menu_dp == 15 then dpdm= wing[15][2] dp() end
  if menu_dp == 16 then dpdm= wing[16][2] dp() end
  if menu_dp == 17 then dpdm= wing[17][2] dp() end
  if menu_dp == 18 then dpdm= wing[18][2] dp() end
  if menu_dp == 19 then dpdm= wing[19][2] dp() end
  if menu_dp == 20 then dpdm= wing[20][2] dp() end
  if menu_dp == 21 then dpdm= wing[21][2] dp() end
  if menu_dp == 22 then dpdm= wing[22][2] dp() end
  if menu_dp == 23 then dpdm= wing[23][2] dp() end
  if menu_dp == 24 then dpdm= wing[24][2] dp() end
  if menu_dp == 25 then dpdm= wing[25][2] dp() end
  if menu_dp == 26 then dpdm= wing[26][2] dp() end
  if menu_dp == 27 then dpdm= wing[27][2] dp() end
  if menu_dp == 28 then dpdm= wing[28][2] dp() end
  if menu_dp == 29 then dpdm= wing[29][2] dp() end
  if menu_dp == 30 then dpdm= wing[30][2] dp() end
  if menu_dp == 31 then dpdm= wing[31][2] dp() end
  if menu_dp == 32 then dpdm= wing[32][2] dp() end
  if menu_dp == 33 then dpdm= wing[33][2] dp() end
  FX1=nil
end
function hz_bs()
  menu_bs = gg.choice({
    '背饰【'..prop[1][1]..'】',
    '背饰【'..prop[2][1]..'】',
    '背饰【'..prop[3][1]..'】',
    '背饰【'..prop[4][1]..'】',
    '背饰【'..prop[5][1]..'】',
    '背饰【'..prop[6][1]..'】',
    '背饰【'..prop[7][1]..'】',
    '背饰【'..prop[8][1]..'】',
    '背饰【'..prop[9][1]..'】',
    '背饰【'..prop[10][1]..'】',
    '背饰【'..prop[11][1]..'】',
    '背饰【'..prop[12][1]..'】',
    '背饰【'..prop[13][1]..'】',
    '背饰【'..prop[14][1]..'】',
    '背饰【'..prop[15][1]..'】',
    '背饰【'..prop[16][1]..'】',
    '背饰【'..prop[17][1]..'】',
    '背饰【'..prop[18][1]..'】',
    '背饰【'..prop[19][1]..'】',
    '背饰【'..prop[20][1]..'】',
    '背饰【'..prop[21][1]..'】',
    '背饰【'..prop[22][1]..'】',
    '背饰【'..prop[23][1]..'】',
    '背饰【'..prop[24][1]..'】',
  },nil,nil)

  if menu_bs == 1 then bsdm= prop[1][2] bs() end
  if menu_bs == 2 then bsdm= prop[2][2] bs() end
  if menu_bs == 3 then bsdm= prop[3][2] bs() end
  if menu_bs == 4 then bsdm= prop[4][2] bs() end
  if menu_bs == 5 then bsdm= prop[5][2] bs() end
  if menu_bs == 6 then bsdm= prop[6][2] bs() end
  if menu_bs == 7 then bsdm= prop[7][2] bs() end
  if menu_bs == 8 then bsdm= prop[8][2] bs() end
  if menu_bs == 9 then bsdm= prop[9][2] bs() end
  if menu_bs == 10 then bsdm= prop[10][2] bs() end
  if menu_bs == 11 then bsdm= prop[11][2] bs() end
  if menu_bs == 12 then bsdm= prop[12][2] bs() end
  if menu_bs == 13 then bsdm= prop[13][2] bs() end
  if menu_bs == 14 then bsdm= prop[14][2] bs() end
  if menu_bs == 15 then bsdm= prop[15][2] bs() end
  if menu_bs == 16 then bsdm= prop[16][2] bs() end
  if menu_bs == 17 then bsdm= prop[17][2] bs() end
  if menu_bs == 18 then bsdm= prop[18][2] bs() end
  if menu_bs == 19 then bsdm= prop[19][2] bs() end
  if menu_bs == 20 then bsdm= prop[20][2] bs() end
  if menu_bs == 21 then bsdm= prop[21][2] bs() end
  if menu_bs == 22 then bsdm= prop[22][2] bs() end
  if menu_bs == 23 then bsdm= prop[23][2] bs() end
  if menu_bs == 24 then bsdm= prop[24][2] bs() end
  FX1=nil
end
function hz_xl()
  menu_xl = gg.choice({
    '项链【'..neck[1][1]..'】',
    '项链【'..neck[2][1]..'】',
    '项链【'..neck[3][1]..'】',
    '项链【'..neck[4][1]..'】',
    '项链【'..neck[5][1]..'】',
    '项链【'..neck[6][1]..'】',
    '项链【'..neck[7][1]..'】',
  },nil,nil)

  if menu_xl == 1 then xldm= neck[1][2] xl() end
  if menu_xl == 2 then xldm= neck[2][2] xl() end
  if menu_xl == 3 then xldm= neck[3][2] xl() end
  if menu_xl == 4 then xldm= neck[4][2] xl() end
  if menu_xl == 5 then xldm= neck[5][2] xl() end
  if menu_xl == 6 then xldm= neck[6][2] xl() end
  if menu_xl == 7 then xldm= neck[7][2] xl() end
  FX1=nil
end



function GHZB()
  FX = "GHZB"
  loadzbdm()
  menu_hz = gg.choice({
    '裤子',
    '面具',
    '头发',
    '头饰',
    '斗篷',
    '背饰',
    '项链',
    '返回主页'
  }, nil,nil)

  if menu_hz == 1 then hz_kz() end
  if menu_hz == 2 then hz_mj() end
  if menu_hz == 3 then hz_tf() end
  if menu_hz == 4 then hz_ts() end
  if menu_hz == 5 then hz_dp() end
  if menu_hz == 6 then hz_bs() end
  if menu_hz == 7 then hz_xl() end
  if menu_hz == 8 then Main() FX ="Main" end
  FX1=nil
end



function loadCoordinate()
  --跑图-晨岛
  map1= {}
  map1[1] = {153.00785827637;86.48435974121;-251.92892456055}--左洞三花3
  map1[2] = {160.23219299316;85.74584960938;-248.42921447754}--左洞三花2
  map1[3] = {150.65158081055;86.59052276611;-237.01953125}--左洞三花1
  map1[4] = {156.18676757812;103.23870849609;-294.5241394043}--终点一烛火
  map1[5] = {146.608154296875,103.332015991210,-265.2575988769531}--大殿左三烛
  map1[6] = {158.461898803710,103.341232299804,-264.0795593261719}--大殿右三烛
  map1[7] = {372.57305908203;52.57130813599;-11.77190208435}--右侧双人门内烛1
  map1[8] = {118.10299682617;0.97198873758;-1733.97021484375}--cg

  --跑图-云野
  map2= {}
  map2[1] = {125.69341278076;196.24737548828;-434.72247314453}--云入口大蜡烛1
  map2[2] = {115.60176086426;196.81085205078;-434.86502075195}--云入口烛1
  map2[3] = {119.39235687256;196.66189575195;-431.43505859375}--云入口烛2
  map2[4] = {120.78240203857;196.61921691895;-427.14166259766}--云入口烛3
  map2[5] = {119.99072265625;196.18881225586;-423.10766601562}--云入口大蜡烛2
  map2[6] = {111.2927780151;196.303131103515;-418.99429321289}--云初始图大蜡烛
  map2[7] = {82.07817840576;157.82202148438;50.2978515625}--云一出口烛
  map2[8] = {90.35874176025;156.30891418457;46.62478637695}--云一大蜡烛4
  map2[9] = {145.0370330810547;161.82015991210938;6.304953575134277}--云一左副起烛
  map2[10] = {102.6978302002;154.87182617188;16.57647514343}--云一先祖烛
  map2[11] = {78.95572662353516;150.85690307617188;2.1293842792510986}--云一大蜡烛3
  map2[12] = {58.6725959777832;150.79380798339844;7.27370023727417}--云一洞内烛
  map2[13] = {26.2653865814209;158.4989471435547;-20.397123336791992}--云一右副入烛

  map2[14] = {-17.372812271118164;171.26510620117188;-2.61037540435791}--云一右副入传
  map2[15] = {-104.82821655273438;158.04147338867188;53.739620208740234}--云一右副内起下烛
  map2[16] = {-102.8588104248;171.53695678711;57.33250808716}--云一右副跳台
  map2[17] = {-145.45869445801;170.86224365234;85.90411376953}--云一右副平台
  map2[18] = {-159.85511779785156;158.31936645507812;116.78955841064453}--云一右副内一洞烛
  map2[19] = {-194.755615234375;177.94134521484375;83.04451751708984}--云一右副内二洞烛
  map2[20] = {-181.7674407959;189.21780395508;124.93006134033}--云一右副小高台
  map2[21] = {-197.4191436767578;205.3974609375;86.28669738769531}--云一右副内二高台烛
  map2[22] = {-157.05372619628906;196.1898956298828;118.16311645507812}--云一右副内一高台烛
  map2[23] = {-192.32135009765625,195.81077575683594,86.8828125}--二高台下蜡烛
  map2[24] = {-144.75381469726562,180.6094512939453,120.46715545654297}--一高台下蜡烛
  map2[25] = {-157.21900939941406,181.3249969482422,110.2362060546875}--一高台下大蜡烛
  map2[26] = {-198.01205444336;179.79231262207;86.30323791504}--云一右副大蜡烛5

  map2[27] = {-44.61409378051758;167.82762145996094;35.79931640625}--云一右副内回传点
  map2[28] = {171.47674560546875;162.5426025390625;7.549071788787842}--云一左副起传
  map2[29] = {279.54852294922;186.29521179199;82.25734710693}--云一左副大蜡烛6
  map2[30] = {302.11297607421875;187.87973022460938;65.82952117919922}--云一左副内一烛
  map2[31] = {296.7933654785156;182.36087036132812;134.3046112060547}--云一左副内二烛
  map2[32] = {310.7386779785156,181.86241149902344,139.56170654296875}--左副大蜡烛7
  map2[33] = {282.44036865234375;196.65106201171875;96.31594848632812}--云一左副内右高一烛
  map2[34] = {258.6740417480469;199.00433349609375;127.19725799560547}--云一左副内右高二烛
  map2[35] = {399.2491455078125;181.25975036621094;199.69834899902344}--云一左副内左洞一烛
  map2[36] = {410.10217285156;185.59422302246;210.34518432617}--云一左副内左洞二烛
  map2[37] = {375.05728149414;180.9786529541;225.53833007812}--云一左副内左洞三烛
  map2[38] = {313.75122070312;187.85140991211;203.14541625977}--云一左副内左洞四烛
  map2[39] = {268.4595947265625;193.2919464111328;213.52085876464844}--云一左副内末烛
  map2[40] = {242;200;229}--云一左副出口传

  map2[41] = {88.88761138916016,181.466064453125,232.123779296875}--一塔双人门前烛
  map2[42] = {99.62325286865234;194.76731872558594;253.397216796875}--一塔双人门上烛
  map2[43] = {94.33356475830078;198.77125549316406;271.86090087890625}--云二一庙台
  map2[44] = {97.43883514404297;200.88613891601562;271.3404235839844}--云二一庙台花1
  map2[45] = {95.98023986816406;200.88546752929688;275.63824462890625}--云二一庙台花2
  map2[46] = {95.71527099609375;203.97286987304688;272.7143859863281}--云二一庙台花2
  map2[47] = {90.84739685058594,188.0705108642578,350.7940673828125}--二塔前烛
  map2[48] = {67.30188751220703;193.91302490234375;361.1446838378906}--云二二庙台
  map2[49] = {68.12491607666016;198.15322875976562;363.5646667480469}--云二二庙台花
  map2[50] = {64.27306365966797;195.9739990234375;363.77020263671875}--云二二庙台花
  map2[51] = {65.89633178710938;187.16192626953125;362.7370910644531}--云二二塔庙内烛1
  map2[52] = {56.4631233215332,186.21075439453125,368.4039001464844}--云二二塔庙内烛2
  map2[53] = {48.18705368041992,186.28463745117188,356.8960876464844}--云野二塔庙外烛1
  map2[54] = {31.48331069946289,184.8007049560547,349.2330627441406}--云野二塔庙外烛2
  map2[55] = {26.259557724;183.24858093262;273.34768676758}--云二大蜡烛8
  map2[56] = {-11.526509284973145,188.7675018310547,325.5375061035156}--云野三塔下烛
  map2[57] = {-16.80780792236328;195.0;318.3951110839844}--云二三庙台
  map2[58] = {-19.12663841248;196.83535766602;318.02593994141}--三塔上花
  map2[59] = {-41.27402114868164;183.34471130371094;317.0710754394531}--蝴蝶门口烛

  map2[60] = {112.51117706298828,254.22671508789062,456.34918212890625}--云顶大蜡烛
  map2[61] = {133.95735168457;250.58154296875;456.18634033203}--云顶水边
  map2[62] = {122.13149261475;254.35276794434;477.18838500977}--云顶门口
  map2[63] = {132.1917266845703;255.7042694091797;486.8236083984375}--云顶传
  map2[64] = {-101.19943237304688,83.73453521728516,44.51408386230469}--云顶蜡烛1
  map2[65] = {-106.39923095703;84.48821258545;40.20069885254}--云顶蜡烛2
  map2[66] = {-109.84103393554688;87.26282501220703;45.893775939941406}--云顶蜡烛3
  map2[67] = {-127.89055633544922;75.16905975341797;42.62199401855469}--顶下笑脸烛
  map2[68] = {-529.02185058594;8.60619068146;-213.8217010498}--cg

  map2[70] = {246.0168914794922;97.04044342041016;221.04881286621094}--进图浮岛花
  map2[71] = {54.9398307800293;102.46432495117188;302.3519592285156}--山顶大蜡烛
  map2[72] = {24.346878051757812;55.22391891479492;328.5481872558594}--钟楼大蜡烛
  map2[73] = {51.021888732910156;0.7169703841209412;331.5585632324219}--水母叫先祖旁花
  map2[74] = {78.4205551147461;28.85598373413086;331.473388671875}--瀑布下湖边隧道入口花
  map2[75] = {109.75102996826172;19.452768325805664;332.7462158203125}--二段瀑布湖边花
  map2[76] = {119.25177001953125;19.75253677368164;324.1789855957031}--二段瀑布湖边大蜡烛
  map2[77] = {102.67682647705078;0.970489501953125;361.9521484375}--爬梯下花
  map2[78] = {97.95136260986328;4.7415751218795776;292.763916015625}--螃蟹洞底小花
  map2[79] = {89.35597229003906;6.130274295806885;292.2822570800781}--螃蟹洞大花1
  map2[80] = {93.02381896972656;6.310474395751953;292.3747863769531}--螃蟹洞大花2
  map2[81] = {79.45489501953125;10.500417709350586;298.6233825683594}--环边坡花1
  map2[82] = {74.69537353515625;21.107227325439453;281.2580261230469}--环边坡花2
  map2[83] = {141.9976806640625;13.70602798461914;283.33367919921875}--螃蟹洞出口

  map2[90] = {-26.135927200317383;58.50359344482422;-44.97946548461914}--放狗烛
  map2[91] = {6.328524112701416;39.7131233215332;2.5973944664001465}
  map2[92] = {2.472965955734253;39.698638916015625;6.047092914581299}
  map2[93] = {-2.7053558826446533;39.698184967041016;6.218640327453613}
  map2[94] = {-5.901349067687988;39.698421478271484;2.4995827674865723}
  map2[95] = {-6.104748249053955;39.699100494384766;-2.6554818153381348}
  map2[96] = {-2.5024335384368896;39.69771194458008;-6.034959316253662}
  map2[97] = {2.3979220390319824;39.697975158691406;-5.867894649505615}
  map2[98] = {6.067203044891357;39.69892883300781;-2.5306944847106934}

  --跑图-雨林
  map3 = {}
  map3[1] = {131.82736206055;217.6923828125;-627.33093261719}--雨林大蜡烛1
  map3[2] = {131.85511779785;218.42578125;-616.24346923828}--雨林大蜡烛2
  map3[3] = {143.29095458984;219.55976867676;-606.51159667969}--雨林大蜡烛3
  map3[4] = {-2.203404426574707;94.5761489868164;-228.66403198242188}--树下花
  map3[5] = {18.45735740661621;95.40001678466797;-218.06982421875}--门前花
  map3[6] = {20.990663528442383;97.03652954101562;-197.72007751464844}--进门左侧花
  map3[7] = {2.9503402709960938;100.0687026977539;-189.71299743652344}--右侧走廊花
  map3[8] = {6.103365421295166,104.18611145019531,-189.73472595214844}--大蜡烛4
  map3[9] = {26.574356079101562;97.6395263671875;-176.4409637451172}--门前
  map3[10] = {9.373396873474121;97.7729263305664;-153.47169494628906}--右一
  map3[11] = {8.411911964416504,100.22760009765625,-139.58946228027344}--右二
  map3[12] = {14.51413345336914;99.12451934814453;-131.0629425048828}--右三
  map3[13] = {31.91049575805664;97.89644622802734;-145.87973022460938}--左一
  map3[14] = {30.677902221679688;99.5719985961914;-133.22152709960938}--左二
  map3[15] = {27.94578742980957,98.43452453613281,-120.19326782226562}--左三
  map3[16] = {29.446800231933594;98.68903350830078;-108.74456024169922}--进二图

  map3[17] = {27.463327407836914;100.2190933227539;-106.79547119140625}--进图花
  map3[18] = {32.01351165771;106.14221191406;-72.17198181152}--雨林大蜡烛6
  map3[19] = {29.97222900390625,105.7504653930664,-68.5757827758789}--右侧亭子花
  map3[20] = {17.570165634155273;106.4460678100586;-66.62906646728516}--条件图门口花
  map3[21] = {68.45333862304688;107.14192962646484;-88.78266906738281}--左亭子花
  map3[22] = {97.56385040283203;112.40455627441406;-102.85734558105469}--左洞花
  map3[23] = {70.75733184814453;107.232666015625;-61.490875244140625}--中间管道洞花
  map3[24] = {67.08811950683594;106.40901184082031;-52.508697509765625}--树下烛
  map3[25] = {41.83656692504883;97.60095977783203;-45.62275314331055}--树下花
  map3[26] = {89.12765502929688;99.47599792480469;-29.770153045654297}--亭下花
  map3[27] = {106.83905792236328;112.14656066894531;-49.159645080566406}--露天亭下花
  map3[28] = {81.92449951171875;103.03842163085938;17.71517562866211}--先祖花1
  map3[29] = {86.60550689697266,103.45911407470703,13.963166236877441}--先祖烛
  map3[30] = {93.28926849365234;99.50831604003906;33.01365280151367}--先祖花2
  map3[31] = {76.68873596191406;96.98365020751953;28.59961700439453}--先祖花3
  map3[32] = {64.62691497803;100.23136138916;49.59238433838}--雨林大蜡烛7
  map3[33] = {50.784584045410156;102.33153533935547;30.589534759521484}--出口前右边花
  map3[34] = {38.77291488647461;104.95604705810547;-2.9528141021728516}--桥边楼梯花
  map3[35] = {63.19426727294922;96.74542999267578;11.217307090759277}--桥下花
  map3[36] = {55.3155403137207;97.33916473388672;-4.644059658050537}--螃蟹洞口花
  map3[37] = {45.73755645751953;99.83983612060547;-4.416775703430176}--螃蟹洞内烛
  map3[38] = {38.238365173339844;99.22483825683594;-10.521968841552734}--螃蟹洞内烛
  map3[39] = {24.924467086791992;117.56786346435547;-25.419710159301758}--右侧高花
  map3[40] = {-2;113;-52}--雨二右隐藏图传

  map3[41] = {13.74974536895752;83.5116195678711;-57.24790954589844}
  map3[42] = {-1.2992981672286987;85.30338287353516;-53.561256408691406}
  map3[43] = {-16.270732879638672;84.96279907226562;-31.028697967529297}
  map3[44] = {-1.0055354833602905;84.93438720703125;-11.711012840270996}
  map3[45] = {-8.16575813293;84.82319641113;-7.70112085342}--雨林大蜡烛8
  map3[46] = {9.832176208496094;92.75342559814453;7.1179704666137695}
  map3[47] = {-17.455183029174805;95.89004516601562;20.984111785888672}
  map3[48] = {-30.485225677490234;94.82850646972656;14.06503677368164}
  map3[49] = {0.07870174944400787;89.75100708007812;70.5005874633789}--出口前花
  map3[50] = {16.45709800720215;88.46916198730469;97.94193267822266}--亭边花
  map3[51] = {6.142397880554199;89.98209381103516;68.2716293334961}--大蜡烛
  map3[52] = {5.6106004715;90.33228302002;67.97341918945}--雨林大蜡烛9
  map3[53] = {54.191062927246094;54.770408630371094;43.37236785888672}--隐藏图进地底隐藏图

  map3[54] = {63.319236755371094;78.37176513671875;-281.47509765625}
  map3[55] = {61.785152435302734;80.08026885986328;-287.1666259765625}
  map3[56] = {60.600929260253906,79.91897583007812,-282.9878234863281}
  map3[57] = {1.76633882522583;121.0093994140625;-365.9449157714844}
  map3[58] = {-54.46755599975586;132.1262664794922;-198.9167938232422}
  map3[59] = {-37.388763427734375;132.10345458984375;-197.3150177001953}
  map3[60] = {-33.27627944946289;133.17440795898438;-193.63510131835938}
  map3[61] = {-57.56206130981445;210.17996215820312;-283.5279541015625}--出隐藏图中隐藏图
  map3[62] = {17.838523864746094;87.8037338256836;124}--进水母图

  map3[63] = {-79.4979019165039;153.09243774414062;155.51388549804688}--出口小花
  map3[64] = {-74.6307373046875;134.41847229003906;175.82106018066406}--大鲲花
  map3[65] = {-63.85072708129883;143.30435180664062;220.92047119140625}--哭泣顶大花
  map3[66] = {-69.11176300048828;144.4777069091797;228.58154296875}--哭泣顶小花
  map3[67] = {-82.51073455810547;136.01907348632812;213.83433532714844}--哭泣内大花
  map3[68] = {-92.72491455078125;136.0518035888672;225.72854614257812}--哭泣洞口花
  map3[69] = {-82.17101287841797;134.72496032714844;230.28773498535156}--哭泣无效花
  map3[70] = {-76.02677154541016;134.48060607910156;230.77593994140625}--哭泣洞口花
  map3[71] = {-47.30995178222656;134.73764038085938;224.183837890625}
  map3[72] = {-47.30995178222656;134.73764038085938;224.183837890625}--一塔下洞花(删)
  map3[73] = {-35.12477111816406;136.9717559814453;159.58932495117188}
  map3[74] = {2.4307680130004883;137.19619750976562;193.8965606689453}
  map3[75] = {25.628307342529297;135.096435546875;221.997802734375}
  map3[76] = {49.76029586791992;134.6642303466797;218.80902099609375}--鱼叫龙骨花
  map3[77] = {73.95918273925781;145.99652099609375;134.69493103027344}
  map3[78] = {123.17234802246094,164.48109436035156,156.62033081054688}
  map3[79] = {90.22545623779297;138.3655242919922;109.40245056152344}
  map3[80] = {52.240909576416016;143.88363647460938;73.66879272460938}
  map3[81] = {44.975379943847656;145.29437255859375;53.761775970458984}--跪拜先祖旁花
  map3[82] = {23.501495361328125;139.66944885253906;12.078184127807617}
  map3[83] = {-11.234320640563965;138.20846557617188;85.80290222167969}
  map3[84] = {-6.650374889373779;138.0;111.88002014160156}
  map3[85] = {-9.166512489318848;134.5615997314453;137.6543731689453}
  map3[86] = {-17.130474090576172;134.39584350585938;165.3542022705078}
  map3[87] = {-21.000049591064453;135.44834899902344;197.0061492919922}--一塔下洞花
  map3[88] = {-21.60939025879;139.92657470703;193.96231079102}--雨林大蜡烛11
  map3[89] = {-23.678184509277344;139.99234008789062;221.4693145751953}
  map3[90] = {-24.22772216796875;141.31878662109375;246.83804321289062}
  map3[91] = {-17.36788558959961;182.655517578125;402.27899169921875}--雨林终点传

  map3[92] = {6.333451747894287;104.5926284790039;-12.134096145629883}
  map3[93] = {16.43203353881836;113.34284973144531;-15.379371643066406}
  map3[94] = {-16.122543334960938;105.5932388305664;-5.3551716804504395}
  map3[95] = {-13.461468696594238;105.8984146118164;7.52207088470459}
  map3[96] = {8.754039764404297;109.80486297607422;69.82687377929688}
  map3[97] = {-10.5328369140625;108.21336364746094;96.94149780273438}
  map3[98] = {-9.981240272521973;108.2040023803711;67.60970306396484}
  map3[99] = {19.141273498535156,107.6715087890625,84.41532135009766}
  map3[100] = {0.22106818855;106.93251800537;97.13048553467}--雨林大蜡烛12
  map3[101] = {4.75970983505;8.97922229767;503.04428100586}--cg

  --跑图-霞谷
  map4 = {}
  map4[1] = {-44.76485443115;306.10290527344;22.63001441956}--霞谷大蜡烛1
  map4[2] = {-32.5977897644;306.44381713867;1.42672419548}--霞谷大蜡烛2
  map4[3] = {-125.28434753417969;267.6664123535156;-110.53711700439453}--左1
  map4[4] = {-102.8718490600586,259.8855895996094,-118.10279083251953}--中1
  map4[5] = {-92.59186553955078;255.79177856445312;-148.4453125}
  map4[6] = {-98.97477722167969;251.66648864746094;-164.38717651367188}
  map4[7] = {-103.35491943359375;249.83128356933594;-172.832763671875}
  map4[8] = {-105.87772369384766;248.24029541015625;-179.77073669433594}
  map4[9] = {-108.69766235351562;246.6088104248047;-187.23260498046875}
  map4[10] = {-110.41412353515625;244.8678436279297;-194.4726104736328}
  map4[11] = {-122.05194091796875;239.70791625976562;-223.7830047607422}
  map4[12] = {-149.92735290527344;226.8570556640625;-227.44825744628906}--中2
  map4[13] = {-135.61172485351562;198.6570281982422;-332.2059020996094}--中3
  map4[14] = {-64.35780334472656;124.6812515258789;-449.7171936035156}--中4
  map4[15] = {10.450285911560059;87.33418273925781;-454.9671936035156}
  map4[16] = {67.18917846679688;75.29890441894531;-478.4848327636719}
  map4[17] = {94.21472930908203;72.43785095214844;-490.087158203125}--中7
  map4[18] = {158.03570556640625;75.53165435791016;-446.781982421875}--断桥
  map4[19] = {172.24948120117188;44.3740119934082;-486.6772766113281}
  map4[20] = {220.7824249267578,44.34064865112305,-516.4169921875}
  map4[21] = {220.2457733154297,44.3352165222168,-522.1133422851562}
  map4[22] = {190.0805206298828,44.4460105895996,-546.340576171875}
  map4[23] = {186.0705413818359,44.5347824096679,-547.484130859375}
  map4[24] = {160.35694885254;45.13550949097;-531.51977539062}--霞谷大蜡烛4
  map4[25] = {186.60269165039;48.10845947266;-526.18041992188}--霞谷大蜡烛3
  map4[26] = {188.892822265625,91.91397094726562,-581.4492797851562}--备用坐标
  map4[27] = {206.29270935058594;57.820106506347656;-604.9664916992188}--进门

  map4[28] = {57.4171257019;474.75738525391;56.47984695435}--霞谷大蜡烛5
  map4[29] = {115.29063415527344;477.0027770996094;16.06882095336914}
  map4[30] = {99.04637145996094;472.1065673828125;1.187245488166809}
  map4[31] = {79.5333251953125;480.4363708496094;24.503482818603516}
  map4[32] = {17.844085693359375;506.92388916015625;-4.885674953460693}
  map4[33] = {26.237258911132812;530.4208984375;-38.021541595458984}
  map4[34] = {95.77713775634766;560.3527221679688;-47.58984375}--最高中间
  map4[35] = {113.61669921875;534.3023681640625;-27.5811824798584}--最高右亭子
  map4[36] = {92.50080871582031;530.6990966796875;-50.65768051147461}--半高中间
  map4[37] = {112.9736633300781,534.1878051757812,-27.649215698242188}--半高右亭子
  map4[38] = {112.4807434082;474.06539916992;-68.50860595703}--霞谷大蜡烛6
  map4[39] = {105.09220886230469;478.4993591308594;-90.68204498291016}--柱子1
  map4[40] = {129.60484313964844;478.4994812011719;-71.72990417480469}
  map4[41] = {143.32379150390625;480.37640380859375;-98.64441680908203}
  map4[42] = {122.619140625;480.37640380859375;-113.82420349121094}
  map4[43] = {140.4347381591797;485.3722839355469;-132.65879821777344}
  map4[44] = {155.61138916015625;485.3722839355469;-120.56465911865234}
  map4[45] = {175.20889282226562;494.9730224609375;-144.44924926757812}
  map4[46] = {155.66905212402344;495.0263671875;-158.6274871826172}--柱子8
  map4[47] = {204.70770263671875;491.51055908203125;-205.14031982421875}--进飞行赛道

  map4[48] = {187.60020446777344;1186.941650390625;406.51434326171875}
  map4[49] = {177.66615295410156;1186.94140625;404.269775390625}
  map4[50] = {170.40806579589844;1187.875732421875;403.1292724609375}
  map4[51] = {173.63829040527344;1186.94091796875;388.72137451171875}
  map4[52] = {180.91175842285156;1186.9412841796875;390.77227783203125}
  map4[53] = {191.1328887939453;1186.9703369140625;392.504150390625}
  map4[54] = {167.76588439941406;1186.6871337890625;390.9236755371094}--手动开门
  map4[55] = {-409.8077087402344,1172.381103515625,175.7042236328125}--拿点光之碎片
  map4[56] = {149;1020;-96}--云传
  map4[57] = {54;155;-138}--千鸟城传
  map4[58] = {36.95596694946;135.67933654785;-220.98320007324}--霞谷大蜡烛7
  map4[59] = {79.19212341309;135.67930603027;-218.0965423584}--霞谷大蜡烛8
  map4[60] = {55.74037551879883,134.72238159179688,-259.8628234863281}--门前烛火左
  map4[61] = {63.63780212402344,136.11033630371094,-263.8480834960937}--门前烛火右
  map4[62] = {60.74193572998047;137.8476104736328;-292.3225402832031}--进终点门
  map4[63] = {9.373971939086914;141.13034057617188;-188.0401153564453}--终点烛火
  map4[64] = {9.239028930664062;141.1038360595703;-190.01651000976562}--终点烛火
  map4[65] = {-30.518871307373047;146.9903564453125;-149.07537841796875}--迷宫花1
  map4[66] = {-30.08305549621582;140.20761108398438;-149.08651733398438}--迷宫花2
  map4[67] = {-19.137134552001953;153.4862060546875;-127.01026916503906}--迷宫花3
  map4[68] = {-11.268678665161133,153.3721160888672,-118.00331115722656}--迷宫花4
  map4[69] = {-30.94803810119629,139.75027465820312,-150.14767456054688}--迷宫花5
  map4[70] = {314.90731811523;173.38836669922;-783.63726806641}--黑夜千鸟城

  --跑图-墓土
  map5 = {}
  map5[1] = {-70.51749420166016;66.21754455566406;-759.3367919921875}--墓土大蜡烛1
  map5[2] = {-97.19038391113281;62.81600570678711;-789.6600341796875}--墓土大蜡烛2
  map5[3] = {-210.83389282226562;43.8532829284668;-825.1362915039062}--进漩涡传

  map5[4] = {85.952392578125,1.13772700726985931,324.6623840332031}--右1
  map5[5] = {82.22171020507812;1.6361188888549805;303.9442138671875}--右2
  map5[6] = {46.11151885986328,1.07818882912397385,229.293701171875}--右3
  map5[7] = {39.335487365722656,1.2563512921333313,233.9141387939453}--右4
  map5[8] = {31.781368255615234;1.8271701335906982;234.020751953125}--右5
  map5[9] = {7.473144054412842,4.2638818919658661,300.5526123046875}--中花1
  map5[10] = {-4.706258773803711,1.4308849573135376,295.9241027832031}--中花2
  map5[11] = {-31.7234992981;2.23189425468;243.71058654785}--墓土大蜡烛3
  map5[12] = {-29.96484375;4.7772810459136963;238.7903594970703}--中花3
  map5[13] = {-25.748836517333984;4.8391969203948975;236.46823120117188}--中花4
  map5[14] = {-31.288619995117188,4.5398526787757874,234.09078979492188}--中花5
  map5[15] = {-27.673227310180664;1.8092966675758362;216.30819702148438}--庙内花
  map5[16] = {-53.329036712646484;1.8884901404380798;220.55726623535156}--管1
  map5[17] = {-57.57217025756836;1.10154907405376434;227.09129333496094}--管2
  map5[18] = {-59.24860382080078;2.9662719964981079;230.25357055664062}--管3
  map5[19] = {-91.76660919189453;2.182464361190796;327.45355224609375}--左边花
  map5[20] = {-78.54911804199219;8.32947063446045;165.12667846679688}--门口花1
  map5[21] = {-82.88870239258;9.85094451904;164.39083862305}--墓土大蜡烛4
  map5[22] = {-80.60059356689453,9.616663932800293,160.7895965576172}--门口花3

  map5[23] = {151.09547424316;1.08663058281;46.78000259399}--入口小船
  map5[24] = {148.12478637695312,134.1525421142578,306.6596984863281}
  map5[25] = {160.6216278076172,124.83026885986328,323.26129150390625}
  map5[26] = {138.09275817871094,119.20018768310547,343.875244140625}
  map5[27] = {122.05918884277344,124.1304702758789,372.0146179199219}
  map5[28] = {112.80741119384766,142.01040649414062,385.5040283203125}
  map5[29] = {105.84814453125;116.32081604004;462.41174316406}
  map5[30] = {77.37850189209;109.62291717529;486.12353515625}
  map5[31] = {42.14425277710;108.72409057617;500.89166259766}
  map5[32] = {79.73130798340;108.74385070801;523.66644287109}
  map5[33] = {96.17122650146;108.55562591553;510.29357910156}
  map5[34] = {61.19565582275;109.15430450439;501.40725708008}
  map5[35] = {280.19207763672;104.21625518799;363.10455322266}
  map5[36] = {285.39682006836;103.35955810547;344.58203125000}
  map5[37] = {302.95071411133;113.31649017334;349.68161010742}
  map5[38] = {285.56661987305;121.38081359863;353.24407958984}
  map5[39] = {282.82232666016;115.49257659912;513.79394531250}
  map5[40] = {283.13558959961;116.17700958252;532.32537841797}
  map5[41] = {300.85494995117;122.43910980225;522.30999755859}
  map5[42] = {302.52099609375;120.60543060303;544.35998535156}
  map5[43] = {330.75439453125;120.46106719971;557.20898437500}
  map5[44] = {-54.00922012329;142.34405517578;166.86026000976}--出口小船

  map5[45] = {-93.77214813232422;11.91988754272461;156.5588836669922}--进二图传
  map5[46] = {70.05243682861328;90.65315246582031;259.2244567871094}--一龙图花1
  map5[47] = {44.96949768066406;89.7125244140625;228.27366638183594}--一龙图花2
  map5[48] = {52.33485412597656;99.00350952148438;155.31607055664062}--一龙图花3
  map5[49] = {47.50992202758789;93.41293334960938;143.01904296875}--花1
  map5[50] = {36.06306457519531;93.42144012451172;140.0792999267578}--花2
  map5[51] = {41.17033386230469;95.34392547607422;119.3170166015625}--花3
  map5[52] = {64.20258331298828;66.70899963378906;-14.94819450378418}--四龙图花1
  map5[53] = {49.47285079956055;69.81143951416016;-60.76486587524414}--墓土大蜡烛5
  map5[54] = {85.78913879394531;65.72119903564453;-100.14730072021484}--四龙图大花
  map5[55] = {72.0611343383789;68.98323059082031;-157.65599060058594}--光圈警告
  map5[56] = {44.40232849121;82.52998352051;-132.0393371582}--墓土大蜡烛6
  map5[57] = {7.971547603607178;77.91605377197266;-142.2152862548828}--鬼鬼祟祟先祖花
  map5[58] = {-5.699362754821777;81.82476043701172;-123.96440124511719}--楼梯花1
  map5[59] = {-7.448570251464844;84.0191650390625;-127.59477233886719}--楼梯花2
  map5[60] = {-7.7204270362854;88.84687805175781;-132.92320251464844}--楼梯花3
  map5[61] = {0.5131586194038391;88.84307098388672;-134.4518585205078}--有蝴蝶呦
  map5[62] = {38.06135177612305;69.32980346679688;-213.41641235351562}--出口前水里花
  map5[63] = {39.53430175781;70.68551635742;-220.12673950195}--墓土大蜡烛7
  map5[64] = {192.6549835205078;68.13046264648438;-72.91191864013672}--进沉船

  map5[65] = {-179.8131866455078;4.489591598510742;492.492919921875}--出风口花
  map5[66] = {-188.30636596679688;1.7212764024734497;477.6970520019531}--两管道旁花
  map5[67] = {-199.87953186035156;5.4726884365081787;432.5182189941406}--船外花1
  map5[68] = {-189.15496826171875;5.2094459533691406;402.3337707519531}--船内花
  map5[69] = {-173.2374267578125;5.6304585933685303;421.8516845703125}--船外花2
  map5[70] = {-133.42332458496094;5.5071215629577637;417.37127685546875}--方石头旁边花
  map5[71] = {-158.58485412597656;4.09282410144805908;377.59698486328125}--罐头多多
  map5[72] = {-167.72647094726562;11.929642677307129;366.0670166015625}--船尾高处花
  map5[73] = {-162.05456542969;7.41181182861;356.38223266602}--船尾大蜡烛
  map5[74] = {-210.74435424804688;15.510222434997559;430.4295959472656}--船头大蜡烛
  map5[75] = {-269.3519592285156;8.549202919006348;428.485595703125}--出口低花1
  map5[76] = {-268.362548828125;10.289545059204102;422.1428527832031}--出口低花2
  map5[77] = {-273.6253662109375;14.02497673034668;426.47314453125}--出口低花3
  map5[78] = {-290.1520690917969;21.27915382385254;419.63385009765625}--出口中花
  map5[79] = {-287.4808654785156;28.822416305541992;404.7793273925781}--出口高花1
  map5[80] = {-292.0284423828125;31.26352310180664;404.3487243652344}--出口高花2
  map5[81] = {-349.27203369140625;34.950706481933594;387.2141418457031}--进古战场

  map5[82] = {-49.45585632324219;104.3731460571289;-78.39041900634766}--矛盾的花
  map5[83] = {-185.26156616210938;121.75447082519531;-170.52597045898438}--城墙右
  map5[84] = {-213.20013427734;131.12268066406;-167.01449584961}--城墙高处大蜡烛
  map5[85] = {-215.11512756347656;141.1907958984375;-163.4281005859375}--城墙高处
  map5[86] = {-244.9800567626953;119.35491180419922;-152.34176635742188}--城墙左
  map5[87] = {-228.95977783203125;102.30264282226562;-184.24244689941406}--先祖旁花
  map5[88] = {-251.5270233154297;101.23624420166016;-196.60752868652344}--远古战场大花
  map5[89] = {-231.3864288330078;101.58375549316406;-230.49464416503906}--大花旁边
  map5[90] = {-270.6065979003906;105.22481536865234;-235.367431640625}--冥想旁边
  map5[91] = {-217.3268737793;104.3557434082;-242.1534576416}--墓土大蜡烛10
  map5[92] = {-238.48216247558594;96.1323013305664;-285.8638916015625}--左1
  map5[93] = {-207.58657836914062;96.81498718261719;-304.279052734375}--右1
  map5[94] = {-275.43218994140625;84.69686889648438;-339.19384765625}--左2
  map5[95] = {-225.3247833251953;83.31451416015625;-364.2699890136719}--右2
  map5[96] = {-269.1346740722656;88.83450317382812;-368.968505859375}--开门石坛边
  map5[97] = {-289.4688415527344;93.0536117553711;-404.3544921875}--终点门

  map5[98] = {2.5172619819641113;208.28602600097656;-2.3382880687713623}--终点右烛火
  map5[99] = {0.6634777784347534;210.26255798339844;-4.156835556030273}--终点中间烛火
  map5[100] = {-3.2547483444213867;207.8109588623047;-1.532777190208435}--终点左边烛火
  map5[101] = {0.2770621180534363;206.4495086669922;2.669926404953003}--冥想台前烛
  map5[102] = {-416.08380126953;12.07369232178;411.0588684082}--cg

  --跑图-禁阁
  map6 = {}
  map6[1] = {-42.6407585144043;38.3612060546875;-98.20526123046875}--传入禁阁双人门
  map6[2] = {49.52402877807617;541.9310913085938;26.100252151489258}--入口跳台
  map6[3] = {72.527587890625;565.5419921875;-17.291431427001953}--走廊右
  map6[4] = {72.91015625;565.54443359375;-31.447776794433594}--走廊左
  map6[5] = {62.031402587890625;551.7857666015625;-37.67901611328125}--地上1
  map6[6] = {62.031402587890625;551.7857666015625;-37.67901611328125}--地上1
  map6[7] = {75.9461441040039;552.2857666015625;-13.311773300170898}--地上2
  map6[8] = {56.83321762084961;552.2857666015625;-18.24776840209961}--地上3
  map6[9] = {54.64695739746094;543.9213256835938;-41.42433166503906}--梯子左边烛1
  map6[10] = {61.42679977416992;543.9197998046875;-41.227542877197266}--梯子左边烛2
  map6[11] = {85.45635986328125;554.7832641601562;-31.61080551147461}--梯子上边烛1
  map6[12] = {78.7142105102539;554.781494140625;-31.344039916992188}--梯子上边烛2
  map6[13] = {30.31833267211914;541.48876953125;28.513368606567383}--传出禁阁双人门

  map6[14] = {28.540447235107422;38.07013702392578;-134.73544311523438}--办公室1
  map6[15] = {31.749393463134766;47.23781204223633;-137.4134063720703}--办公室2
  map6[16] = {39.12406539916992;47.25458526611328;-126.51768493652344}--办公室3
  map6[17] = {34.42249298095703;42.4506721496582;-118.51801300048828}--办公室4
  map6[18] = {6.875062465667725;37.83162307739258;-70.44316101074219}--中间烛
  map6[19] = {-5.561983585357666;40.103902435302734;-31.540401458740234}--大蜡烛1
  map6[20] = {-0.856074333190918;40.54676055908203;24.941452026367188}--大蜡烛2
  map6[21] = {-21.10405731201172;41.94309616088867;-3.3227999210357666}--大蜡烛3
  map6[22] = {-47.0875129699707;40.470706939697266;-16.555070877075195}--一楼四人门烛1
  map6[23] = {-62.76368713378906;42.02508544921875;-13.030984878540039}--烛2
  map6[24] = {-60.87627029418945;41.1917724609375;22.810108184814453}--烛3
  map6[25] = {-21.906911849975586;79.67255401611328;-6.882327556610107}--二楼大蜡烛1
  map6[26] = {21.782958984375;79.3741226196289;6.502643585205078}--二楼大蜡烛2
  map6[27] = {10.8324613571167;82.27471923828125;22.120616912841797}--二楼四人门烛1
  map6[28] = {19.622499465942383;82.8123779296875;19.496427536010742}--二楼四人门烛2
  map6[29] = {40.719417572021484;84.09902954101562;38.68824005126953}--二楼四人门烛3
  map6[30] = {23.886920928955078;84.06071472167969;49.00627517700195}--二楼四人门烛4
  map6[31] = {-15.60280990600586;149.64524841308594;-35.53164291381836}--三楼白烛
  map6[32] = {-3.377932071685791;147.39173889160156;-29.869091033935547}--三楼红烛
  map6[33] = {-1.4552849531173706;213.37742614746094;-1.2852287292480469}--三楼传入四楼

  map6[34] = {-38.9185791015625;129.7910614013672;9.597574234008789}--四楼最低烛
  map6[35] = {-44.64923095703125;140.41917419433594;11.390042304992676}--大蜡烛
  map6[36] = {-16.004741668701172;164.96554565429688;-48.31135177612305}--浮空先祖烛
  map6[37] = {24.96385383605957;148.62644958496094;34.02261734008789}--鲲叫烛
  map6[38] = {12.094552993774414;183.45237731933594;41.65492248535156}--四楼最高烛
  map6[39] = {3.3063101768493652;295.04205322265625;1.9167511463165283}--顶楼1
  map6[40] = {-4.9123945236206055;294.71636962890625;-0.47722509503364563}--大蜡烛
  map6[41] = {-3.139939546585083;295.62304687;6.463057518005371}--顶楼2
  map6[42] = {6.680523872375488;302.7969970703125;48.605003356933594}--顶楼左
  map6[43] = {9.066164016723633;304.0225830078125;52.24799346923828}--大蜡烛
  map6[44] = {9.990453720092773;306.50445556640625;56.88602828979492}--顶楼左
  map6[45] = {-1.7243967056274414;304.51104736328125;58.92866897583008}--顶楼中
  map6[46] = {-10.980016708374023;307.62066650390625;59.13224792480469}--顶楼右
  map6[47] = {-0.12866953015327454;310.7763366699219;70.04006958007812}--顶楼冥想
  map6[48] = {-0.11620468646287918;195.86016845703125;12.002913475036621}--cg

end



function QT()
  gg.sleep(8000)
end

function home()--遇境
  menu0 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『暴风伊甸』",
    "『返回主页』",
  },nil, "当前位置:遇境")
  if menu0 == 1 then CandleRun() end
  if menu0 == 2 then AbsorbJinren1() end
  if menu0 == 3 then G() end
  if menu0 == 4 then Main() end
  FX1 = nil
end
function a1()--晨岛
  local t1 = os.clock()
  for i = 1, 8 do
    Teleport(map1[i])
    gg.toast("瞬移晨岛蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
  local t2 = os.clock()
  gg.toast(string.format("耗时:%.2f秒\n", t2-t1))
end
function A1()--晨岛
  menu1 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『传往云野』",
    "『返回主页』",
  }, nil, "当前位置:晨岛")
  if menu1 == 1 then a1() end
  if menu1 == 2 then AbsorbJinren1() end
  if menu1 == 3 then Teleport({479;214;-1033}) end
  if menu1 == 4 then Main() end
  FX1 = nil
end


function b1() --云野初始图
  for i = 1,13 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b2() --云野右侧隐藏图
  for i = 15,26 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b3() --圣岛图
  for i = 70, 83 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b4() --云野左侧隐藏图
  for i = 29,39 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b5() --云野三塔图
  for i = 41,62 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b6() --云野八人门
  for i = 90, 98 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function b7() --云野终点神殿图
  for i = 64,68 do
    Teleport(map2[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end

function B1()--云野初始图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进浮岛图』",
    "『进三塔图』",
    "『进山洞图』",
    "『进晨岛图』",
    "『返回主页』",
  }, nil, "当前位置:云野初始图")
  if menu2 == 1 then b1() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({-17.37;171.265;-2.61}) end
  if menu2 == 4 then Teleport({78.14214324951,160.35305786133,67.12189483643}) end
  if menu2 == 5 then Teleport({171.47;162.5;7.549}) end
  if menu2 == 6 then Teleport({119.57;201.49;-456.95}) end
  if menu2 == 7 then Main() end
  FX1 = nil
end
function B2()--云野浮岛图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进圣岛图』",
    "『进三塔图』",
    "『进初始图』",
    "『       』",
    "『返回主页』",
  }, nil, "当前位置:云野浮岛图")
  if menu2 == 1 then b2() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({-355;132;105}) end
  if menu2 == 4 then Teleport({-106;186;176}) end
  if menu2 == 5 then Teleport({-44.6140;167.827621;35.7993})end
  if menu2 == 6 then end
  if menu2 == 7 then Main() end
  FX1 = nil
end
function B3()--云野圣岛图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进浮岛图』",
    "『』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:云野圣岛图")
  if menu2 == 1 then b3() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({272;175;-26})end
  if menu2 == 4 then end
  if menu2 == 5 then end
  if menu2 == 6 then end
  if menu2 == 7 then Main() end
  FX1 = nil
end
function B4()--云野山洞图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进三塔图』",
    "『进初始图』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:云野山洞图")
  if menu2 == 1 then b4() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({242;200;229}) end
  if menu2 == 4 then Teleport({190.48;171.75;11.20}) end
  if menu2 == 5 then end
  if menu2 == 6 then end
  if menu2 == 7 then Main() end
  FX1 = nil
end
function B5()--云野三塔图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进八人门』",
    "『进终点图』",
    "『进浮岛图』",
    "『进山洞图』",
    "『进初始图』",
    "『返回主页』",
  }, nil, "当前位置:云野三塔图")
  if menu2 == 1 then b5() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({-52.46;180;324.89}) end
  if menu2 == 4 then Teleport({132.2;255.7;486.82}) end
  if menu2 == 5 then Teleport({-65.15;202.27;205.75})end
  if menu2 == 6 then Teleport({163.21;199.93;222.58})end
  if menu2 == 7 then Teleport({30.28;192.30;183.38})end
  if menu2 == 8 then Main() end
  FX1 = nil
end
function B6()--云野八人门
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进三塔图』",
    "『』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:云野八人门")
  if menu2 == 1 then b6() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({32.00;43.24;0.39})end
  if menu2 == 4 then end
  if menu2 == 5 then end
  if menu2 == 6 then end
  if menu2 == 7 then Main() end
  FX1 = nil
end
function B7()--云野终点图
  menu2 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『传往雨林』",
    "『进三塔图』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:云野终点图")
  if menu2 == 1 then b7() end
  if menu2 == 2 then AbsorbJinren1() end
  if menu2 == 3 then Teleport({-133;109;42})end
  if menu2 == 4 then Teleport({-61.73;85.29;42.55})end
  if menu2 == 5 then end
  if menu2 == 6 then end
  if menu2 == 7 then Main() end
  FX1 = nil
end


function c1() --雨林一图
  for i = 1, 15 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
    if(i ==6 ) then
      gg.sleep(3000)
      gg.toast("5秒内手动跳过动画")
    end
  end
end
function c2() --雨林二图
  for i = 17, 39 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
  Teleport({0.9430078268051147;112.58056640625;-55.39155197143555})
end
function c3()--八先祖图
  for i = 41, 52 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
  Teleport({52.07526779174805;77.4840087890625;43.989315032958984})
end
function c4()--地下隐藏图
  for i = 54, 60 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
  Teleport({-63.73969268798828;210.88873291015625;-284.4853820800781})
end
function c5() --雨林水母图
  for i = 63, 90 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
  Teleport({-17.777355194091797;183.1484375;400.3921203613281})
end
function c6() --雨林终点图
  for i = 92, 101 do
    Teleport(map3[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function C1()--雨林初始图
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进中间图』",
    "『回云野图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:雨林初始图")
  if menu3 == 1 then c1() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({29.4;98.7;-108.7})--[[进雨林中间图]]end
  if menu3 == 4 then Teleport({153.96;219.90;-644.62})end
  if menu3 == 5 then end
  if menu3 == 6 then Main() end
  FX1 = nil
end
function C2()--雨林中间图
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进八仙祖』",
    "『进水母图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:雨林中间图")
  if menu3 == 1 then c2() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({-2;113;-52})--[[八先祖图传]] end
  if menu3 == 4 then Teleport({65.44;101.22;56.59})end
  if menu3 == 5 then end
  if menu3 == 6 then Main() end
  FX1 = nil
end
function C3()--雨林八先祖
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进地下图』",
    "『进水母图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:雨林八仙祖")
  if menu3 == 1 then c3() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({54.2;54;43.4})--[[隐藏图进地底隐藏图]] end
  if menu3 == 4 then Teleport({17.8;87.8;124})--[[进水母图]]end
  if menu3 == 5 then end
  if menu3 == 6 then Main() end
  FX1 = nil
end
function C4()--雨林地下隐藏图
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进八先祖』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:雨林地下隐藏图")
  if menu3 == 1 then c4() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({-57.5;210;-283.5})--[[出隐藏图中隐藏图]]end
  if menu3 == 4 then end
  if menu3 == 5 then end
  if menu3 == 6 then Main() end
  FX1 = nil
end
function C5()--雨林水母图
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进终点图』",
    "『回中间图』",
    "『进八先祖』",
    "『返回主页』",
  }, nil, "当前位置:雨林水母图")
  if menu3 == 1 then c5() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({-17.3;184;402.3})--[[雨林终点传]]end
  if menu3 == 4 then Teleport({33.38;140.86;-25.05})end
  if menu3 == 5 then Teleport({-87.24;153.75;111.09})end
  if menu3 == 6 then Main() end
  FX1 = nil
end
function C6()--雨林终点图
  menu3 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『传往霞谷』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:雨林终点图")
  if menu3 == 1 then c6() end
  if menu3 == 2 then AbsorbJinren1() end
  if menu3 == 3 then Teleport({6;197;225})--[[传往霞谷]] end
  if menu3 == 4 then end
  if menu3 == 5 then end
  if menu3 == 6 then Main() end
  FX1 = nil
end


function d1()
  for i = 1, 11 do
    Teleport(map4[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(1000)
  end
  for i = 12, 26 do
    Teleport(map4[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function d2()
  for i = 28, 46 do
    Teleport(map4[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function d3()
  Teleport({88.07906341552734;1184.613525390625;396.5653381347656})
  gg.sleep(2000)
  Teleport({-85.45684814453125;1175.94287109375;362.0528869628906})
  gg.sleep(2000)
  Teleport({-178.68106079101562;1174.4202880859375;348.1898498535156})
  gg.sleep(2000)
  Teleport({-400.47857666015625;1172.0635986328125;170.3997802734375})
  gg.sleep(2000)
  Teleport({-396.528564453125;1163.3624267578125;47.95263671875})
  gg.toast("拿个光翼")
  gg.sleep(2000)
  Teleport({67.20990753173828;1049.7012939453125;-28.670040130615234})
  gg.toast("拿个光翼")
  gg.sleep(2000)
  Teleport({149;1020;-96})
  gg.toast("切图")
  gg.sleep(10000)
  Teleport({40.49601364135742;184.8617401123047;73.11174774169922})
  gg.toast("拿个光翼")
  gg.sleep(2000)
  Teleport({54;155;-138})
end
function d4()
  for i = 58, 61 do
    Teleport(map4[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function d5()
  for i = 63, 70 do
    Teleport(map4[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function d6()
  Teleport({195.69;631.17;-421.49})--拿个光翼
  gg.toast("拿个光翼")
  gg.sleep(1000)
  Teleport({208.15991210938,617.72698974609,-447.23425292969})
  gg.sleep(1000)
  Teleport({225.34;609.22;-501.12})
  gg.sleep(1000)
  Teleport({229.60;600.93;-523.56})
  gg.sleep(1000)
  Teleport({239.33;595.69;-538.87})
  gg.sleep(1000)
  Teleport({256.20028686523,585.98559570312,-564.76477050781})--赛道终点传
  gg.sleep(6000)
  Teleport({40.49601364135742;184.8617401123047;73.11174774169922})
  gg.toast("拿个光翼")
  gg.sleep(1000)
  Teleport({54;155;-138})
  gg.toast("来领蜡烛🕯️🕯️🕯️")
end
function D1()--霞谷初始图
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进霞光城』",
    "『进滑行图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:霞谷初始图")
  if menu4 == 1 then d1() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({206;58;-605})--[[霞光城传]] end
  if menu4 == 4 then Teleport({290.24816894531;39.45797729492;-527.30267333984}) end
  if menu4 == 5 then end
  if menu4 == 6 then Main() end
  FX1 = nil
end
function D2()--霞光城
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进飞行图』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:霞光城")
  if menu4 == 1 then d2() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({204.7;492;-205})--[[飞行赛道传]]end
  if menu4 == 4 then end
  if menu4 == 5 then end
  if menu4 == 6 then Main() end
  FX1 = nil
end
function D3()--霞谷飞行赛道
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进终点图』",
    "『秘密基地』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:霞谷飞行赛道")
  if menu4 == 1 then d3() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({149;1020;-96})--[[云传]] end
  if menu4 == 4 then Teleport({-459.00;1561.58;86.63})--[[落日城]]end
  if menu4 == 5 then end
  if menu4 == 6 then Main() end
  FX1 = nil
end
function D4()--霞谷赛道终点
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进神殿图』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:霞谷赛道终点图")
  if menu4 == 1 then d4() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({60.7;138;-292})--[[终点神庙传]]end
  if menu4 == 4 then end
  if menu4 == 5 then end
  if menu4 == 6 then Main() end
  FX1 = nil
end
function D5()--霞谷终点神殿
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『传往暮土』",
    "『迷惑影子』",
    "『夜千鸟城』",
    "『返回主页』",
  }, nil, "当前位置:霞谷终点神殿")
  if menu4 == 1 then d5() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({8;141;-197})--[[传往暮土]] end
  if menu4 == 4 then Teleport({-22.97;170.13;-168.11})end
  if menu4 == 5 then Teleport({314.90;174;-783.6})end
  if menu4 == 6 then Main() end
  FX1 = nil
end
function D6()--霞谷滑行
  menu4 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进终点图』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:霞谷滑行赛道")
  if menu4 == 1 then d6() end
  if menu4 == 2 then AbsorbJinren1() end
  if menu4 == 3 then Teleport({256,586,-564.7})end
  if menu4 == 4 then end
  if menu4 == 5 then end
  if menu4 == 6 then Main() end
  FX1 = nil
end

function e1() --暮土初始图
  for i = 1, 2 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function e2() --暮土漩涡下图
  for i = 4, 22 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function e3()--失落方舟
  for i = 24, 44 do
    Teleport(map5[i])
    gg.sleep(2000)
  end
  gg.toast("结束了哦！")
end
function e4() --一龙四龙
  for i = 46, 63 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function e5() --沉船图
  for i = 65, 80 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function e6() --远古战场
  for i = 82, 96 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function e7() --暮土终点
  for i = 98, 102 do
    Teleport(map5[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function E1()--暮土初始图
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进入漩涡』",
    "『回霞谷图』",
    "『冰淇淋山』",
    "『返回主页』",
  }, nil, "当前位置:暮土初始图")
  if menu5 == 1 then e1() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({-211;44;-825})--[[进入漩涡]]end
  if menu5 == 4 then Teleport({9.17;141.78;-196.50})end
  if menu5 == 5 then Teleport({-85;5047;-842})end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E2()--漩涡下图
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『入口小船』",
    "『进一龙图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:暮土螃蟹岛")
  if menu5 == 1 then e2() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({151.1;1.3;47})--[[入口小船]]end
  if menu5 == 4 then Teleport({-94;12;156})--[[暮土龙图传]]end
  if menu5 == 5 then end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E3()--失落方舟
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:暮土失落方舟")
  if menu5 == 1 then e3() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then end
  if menu5 == 4 then end
  if menu5 == 5 then end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E4()--暮土龙图
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进沉船图』",
    "『进古战场』",
    "『回螃蟹岛』",
    "『返回主页』",
  }, nil, "当前位置:暮土龙图")
  if menu5 == 1 then e4() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({105.58;90.29;-5.77})--[[进沉船]]end
  if menu5 == 4 then Teleport({33.53;78.95;-255.59})end
  if menu5 == 5 then Teleport({55;94.02;367})end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E5()--暮土沉船图
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进古战场』",
    "『进四龙图』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:暮土沉船图")
  if menu5 == 1 then e5() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({-349.3;35;387.2})--[[进古战场]]end
  if menu5 == 4 then Teleport({-43.23;10.1;529.09})end
  if menu5 == 5 then end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E6()--暮土古战场
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进终点图』",
    "『进四龙图』",
    "『进沉船图』",
    "『返回主页』",
  }, nil, "当前位置:暮土古战场")
  if menu5 == 1 then e6() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({-289.5;93;-404})--[[终点门]]end
  if menu5 == 4 then Teleport({43.03;92.59;-40.36})end
  if menu5 == 5 then Teleport({58.68;112.91;-262.95})end
  if menu5 == 6 then Main() end
  FX1 = nil
end
function E7()--暮土终点神殿
  menu5 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『传往禁阁』",
    "『C G 动画』",
    "『        』",
    "『返回主页』",
  }, nil, "当前位置:暮土终点神殿")

  if menu5 == 1 then e7() end
  if menu5 == 2 then AbsorbJinren1() end
  if menu5 == 3 then Teleport({-2;208;-67})--[[传往禁阁]]end
  if menu5 == 4 then Teleport({-416;12;411})end
  if menu5 == 5 then end
  if menu5 == 6 then Main() end
  FX1 = nil
end



function f1()
  Teleport({0.13;65;-8.03})
  gg.sleep(2000)
  Teleport({-10.93;64;3.92})
  gg.sleep(2000)
  Teleport({7.157510280609131;62.34695816040039;-26.602800369262695})
end
function f2()
  for i = 2, 13 do
    Teleport(map6[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function f3()
  for i = 14, 32 do
    Teleport(map6[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end
function f4()
  for i = 34, 47 do
    Teleport(map6[i])
    gg.toast("瞬移蜡烛 [" .. i .. "] 完成")
    gg.sleep(2000)
  end
end

function F1()--禁阁办公室
  menu6 = gg.choice({
    "『带人跑图』",
    "『出办公室』",
    "『太空站』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:禁阁办公室")
  if menu6 == 1 then f1() end
  if menu6 == 2 then Teleport({7.15;62.3;-26.6})end
  if menu6 == 3 then Teleport({7067.19;6928.10;9084.01})end
  if menu6 == 4 then end
  if menu6 == 5 then end
  if menu6 == 6 then Main() end
  FX1 = nil
end
function F2()--禁阁地下室
  menu6 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『回123楼』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:禁阁地下室")
  if menu6 == 1 then f2() end
  if menu6 == 2 then AbsorbJinren1() end
  if menu6 == 3 then Teleport({30.3;541.4;28.5}) end
  if menu6 == 4 then end
  if menu6 == 5 then end
  if menu6 == 6 then Main() end
  FX1 = nil
end
function F3()--禁阁123楼
  menu6 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『进办公室』",
    "『进地下室』",
    "『传往四楼』",
    "『二楼先祖』",
    "『三楼先祖』",
    "『返回主页』",
  }, nil, "当前位置:禁阁123楼")
  if menu6 == 1 then f3() end
  if menu6 == 2 then AbsorbJinren1() end
  if menu6 == 3 then dpdm = 2219120716 dp() Teleport({31.92;47;-151.90})end
  if menu6 == 4 then Teleport({-42.6;38;-98.2})--[[传入禁阁双人门]] end
  if menu6 == 5 then Teleport({-1;213;-1})--[[禁阁四楼传]]end
  if menu6 == 6 then Teleport({47.44;85;42.66}) end
  if menu6 == 7 then Teleport({-37.36;144;-22.52})end
  if menu6 == 8 then Main() end
  FX1 = nil
end
function F4()--禁阁456楼
  menu6 = gg.choice({
    "『带人跑图』",
    "『吸小金人』",
    "『终点冥想』",
    "『』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:禁阁456楼")
  if menu6 == 1 then f4() end
  if menu6 == 2 then AbsorbJinren1() end
  if menu6 == 3 then Teleport({-0.06;309.83;67.01})end
  if menu6 == 4 then end
  if menu6 == 5 then end
  if menu6 == 6 then Main() end
  FX1 = nil
end
function F5()--禁阁终点神殿
  menu6 = gg.choice({
    "『蜡像馆』",
    "『闪电岛』",
    "『日月岛』",
    "『暴风眼』",
    "『』",
    "『返回主页』",
  }, nil, "当前位置:禁阁456楼")
  if menu6 == 1 then Teleport({0.36330926418;195.0870513916;8.39365291595}) end
  if menu6 == 2 then Teleport({-0.96439945698;336.14559936523;64.37212371826}) end
  if menu6 == 3 then Teleport({68.92450714111;240.40475463867;-185.50691223145})end
  if menu6 == 4 then end
  if menu6 == 5 then end
  if menu6 == 6 then Main() end
  FX1 = nil
end

function G()--暴风伊甸
  menu7 = gg.choice({
    "『进暴风眼』",
    "『一图终点』",
    "『二图终点』",
    "『失色之地』",
    "『自爆光翼』",
    "『拥抱金人』",
    "『重生路一』",
    "『重生路二』",
    "『重生之门』",
    "『返回主页』",
  }, nil, nil)
  if menu7 == 1 then Teleport({-26;1;-15})end
  if menu7 == 2 then Teleport({-3.08880496025;196.74859619141;-21.4596366})end
  if menu7 == 3 then Teleport({6.62452173233;265.95574951172;-244.71562194824})end
  if menu7 == 4 then Teleport({-617.92;8.43;-502.78})end
  if menu7 == 5 then zbyy() end
  if menu7 == 6 then Teleport({803.8468017578125,0.2411956787109375,-11.73253059387207})end
  if menu7 == 7 then Teleport({845.9514770507812,2673.114501953125,154.03053283691406})end
  if menu7 == 8 then Teleport({-45.95044708251953,2489.866455078125,2273.8876})end
  if menu7 == 9 then Teleport({-0.48404788970947266;0.17157337069511414;239.1744842529297})end
  if menu7 == 10 then Main() end
  FX1 = nil
end

function WZPD()--位置判断
  if csmcode_flag == 0 then
    getCSMcodeAddress()
    csmcode_flag = 1
  end
  tmp = {}
  abcdef = {}
  X = 0
  for i=1, 6 do
    tmp[i] = {}
    tmp[i].address = CSM_zero.address + i * 4
    tmp[i].flags = gg.TYPE_DWORD
    tmp = gg.getValues(tmp)
    abcdef[i] = tmp[i].value
    gg.clearResults()
  end
  for i=1,39 do
    if abcdef[1] == CSMcode[i][2][1] and
      abcdef[2] == CSMcode[i][2][2] and
      abcdef[3] == CSMcode[i][2][3] and
      abcdef[4] == CSMcode[i][2][4] and
      abcdef[5] == CSMcode[i][2][5] and
      abcdef[6] == CSMcode[i][2][6] then
      X = i
      --      gg.toast("当前位置:"..CSMcode[i][1].."")
      break
    end
  end
end


function CandleRun()
  WZPD()
  for i = X, 39 do
    if i == nil then end
    if i == 1 then
      Teleport({11.338;1.07;0.863})--[[进晨岛门]] QT()
    end
    if i == 2 then
      a1() QT() Teleport({479;213;-1033}) QT()
    end
    if i == 3 then
      b1() Teleport({-17.37;171.265;-2.61})--[[云一右副入传]] QT()
    end
    if i == 4 then
      b2() Teleport({-355;132;105})--[[进圣岛]] QT()
    end
    if i == 5 then
      b3() Teleport({272;175;-26})--[[出圣岛]] QT()
      Teleport({-44.6140;167.827621;35.7993})--[[右副回传]] QT()
      Teleport({171.47;162.5;7.549})--[[云一左副起传]] QT()
    end
    if i == 6 then
      b4() Teleport({242;200;229})--[[云一左副出口传]] QT()
    end
    if i == 7 then
      b5() Teleport({132.2;255.7;486.82})--[[终点神殿]] QT()
    end
    if i == 8 then
      b6() Teleport({32.00;43.24;0.39}) QT()
      Teleport({132.2;255.7;486.82}) QT()
    end
    if i == 9 then
      b7() Teleport({-133;109;42})--[[传往雨林]] QT()
    end
    if i == 10 then
      c1() Teleport({29.4;98.7;-108.7})--[[进雨林中间图]] QT()
    end
    if i == 11 then
      c2() Teleport({-2;113;-52})--[[八先祖图传]] QT()
    end
    if i == 12 then
      c3() Teleport({54.2;54;43.4})--[[隐藏图进地底隐藏图]] QT()
    end
    if i == 13 then
      c4() Teleport({-57.5;210;-283.5})--[[出隐藏图中隐藏图]] QT()
      Teleport({17.8;87.8;124})--[[进水母图]] QT()
    end
    if i == 14 then
      c5() Teleport({-17.3;182;402.3})--[[雨林终点传]] QT()
    end
    if i == 15 then
      c6() Teleport({6;197;225})--[[传往霞谷]] QT()
    end
    if i == 16 then
      d1() Teleport({206;58;-605})--[[霞光城传]] QT()
    end
    if i == 17 then
      d2() Teleport({204.7;492;-205})--[[飞行赛道传]] QT()
    end
    if i == 18 then
      d3() QT() QT() QT()
    end
    if i == 19 then
      d4() Teleport({60.7;138;-292})--[[终点神庙传]] QT()
    end
    if i == 20 then
      d5() Teleport({8;141;-197})--[[传往暮土]] QT()
    end
    if i == 21 then
      --      d6() Teleport({8;141;-197})--[[传往暮土]] QT()
    end
    if i == 22 then
      Teleport({-211;44;-825})--[[进入漩涡]] QT() QT() QT()
    end
    if i == 23 then
      e1() Teleport({151.1;1.3;47})--[[入口小船]] gg.sleep(30000)
    end
    if i == 24 then
      e2() gg.sleep(20000)
      Teleport({-93.7;11.9;156.6})--[[暮土龙图传]] QT()
    end
    if i == 25 then
      e3() Teleport({192.6;68;-73})--[[进沉船]] QT()
    end
    if i == 26 then
      e4() Teleport({-349.3;35;387.2})--[[进古战场]] QT()
    end
    if i == 27 then
      e5() Teleport({-289.5;93;-404})--[[终点门]] QT()
    end
    if i == 28 then
      e6() Teleport({-2;208;-67})--[[传往禁阁]] QT()
    end
    if i == 29 then
      f1() Teleport({-42.6;38;-98.2})--[[传入禁阁双人门]] QT()
    end
    if i == 30 then
      f2() Teleport({30.3;541.4;28.5})--[[传出禁阁双人门]] QT()
    end
    if i == 31 then
      f3() Teleport({-1;213;-1})--[[禁阁四楼传]] QT()
    end
    if i == 32 then
      f4()
    end
  end
end




function loadCSMcode()
  CSMcode={
    {"真遇境",{1684955459;1884513644;6644577;0;0;0} },
    {"晨岛",{1853317444;0;0;0;0;0} },
    {"云野初始图",{1767993936;1600481650;1953789250;1818653285;1701398137;7562348} },
    {"云野右侧隐藏",{1767993936;1600481650;1953719630;1264873025;1701864805;114} },
    {"云野圣岛", {1767993936;1600481650;1634497353;25710;0;0}},
    {"云野左侧隐藏",{1767993936;1600481650;1702256963;0;0;0} },
    {"云野三塔", {1767993936;1600481650;1819044182;6645601;0;0}},
    {"云野八人门", {1215914308;1631806069;25974;0;0;0}},
    {"云野终点神殿",{1165582660;25710;0;0;0;0} },
    {"雨林初始图",{1852399954;0;0;0;0;0} },
    {"雨林中间图",{1852399954;1701998406;29811;0;0;0} },
    {"雨林八先祖图",{1852399954;1818585171;7497076;0;0;0} },
    {"雨林地下隐藏",{1852399954;1986085727;101;0;0;0} },
    {"雨林水母图",{1852399954;6580557;0;0;0;0} },
    {"雨林终点神殿",{1852399954;6581829;0;0;0;0} },
    {"霞谷初始图", {1936618835;29797;0;0;0;0}},
    {"霞谷霞光城",{1936618835;1130329189;1684108393;27749;0;0} },
    {"霞谷飞行赛道",{1936618835;1180660837;1632794988;25955;0;0} },
    {"霞谷赛道终点",{1936618835;1850045541;100;0;0;0} },
    {"霞谷终点神殿",{1936618835;1850045541;12900;0;0;0} },
    {"霞谷滑行赛道",{1936618835;1632793701;25955;0;0;0} },
    {"暮土初始图",{1802728772;1918989395;116;0;0;0} },
    {"暮土漩涡下图",{1802728772;0;0;0;0;0} },
    {"失落方舟",{1802728772;1769169231;115;0;0;0} },
    {"暮土龙图",{1802728772;1986097735;1918990693;100;0;0} },
    {"暮土沉船",{1802728772;1634878303;1701398114;25708;0;0} },
    {"暮土远古战场",{1802728772;6580557;0;0;0;0} },
    {"暮土终点神殿",{1802728772;6581829;0;0;0;0} },
    {"禁阁办公室",{1329809236;1667851878;101;0;0;0} },
    {"禁阁地下室",{1751607630;1668432244;1702259048;0;0;0} },
    {"禁阁123楼",{1751607630;116;0;0;0;0} },
    {"禁阁顶楼",{1751607630;12916;0;0;0;0} },
    {"禁阁终点神殿",{1751607630;1684948340;0;0;0;0} },
    {"暴风眼一图",{1919906899;1635013485;29810;0;0;0} },
    {"暴风眼二图", {1919906899;109;0;0;0;0} },
    {"伊甸献祭",{1919906899;1684948333;0;0;0;0} },
    {"重生路一段",{1768059471;1684622708;0;0;0;0} },
    {"重生路二段", {1768059471;1684948340;0;0;0;0} },
    {"重生路红蜡烛",{1684955459;1884513644;1164272481;25710;0;0} },
    {"重生回家",{1684369987;7566441;0;0;0;0} }
  }
end

loadCSMcode()
function DTSY()--地图瞬移
  WZPD()
  --  getSelfCoordinate()
  FX = "DTSY"
  weizhi = X
  if weizhi == nil then end
  if weizhi == 1 then home() end
  if weizhi == 2 then A1() end
  if weizhi == 3 then B1() end
  if weizhi == 4 then B2() end
  if weizhi == 5 then B3() end
  if weizhi == 6 then B4() end
  if weizhi == 7 then B5() end
  if weizhi == 8 then B6() end
  if weizhi == 9 then B7() end
  if weizhi == 10 then C1()end
  if weizhi == 11 then C2()end
  if weizhi == 12 then C3()end
  if weizhi == 13 then C4()end
  if weizhi == 14 then C5()end
  if weizhi == 15 then C6()end
  if weizhi == 16 then D1()end
  if weizhi == 17 then D2()end
  if weizhi == 18 then D3()end
  if weizhi == 19 then D4()end
  if weizhi == 20 then D5()end
  if weizhi == 21 then D6()end
  if weizhi == 22 then E1()end
  if weizhi == 23 then E2()end
  if weizhi == 24 then E3()end
  if weizhi == 25 then E4()end
  if weizhi == 26 then E5()end
  if weizhi == 27 then E6()end
  if weizhi == 28 then E7()end
  if weizhi == 29 then F1()end
  if weizhi == 30 then F2()end
  if weizhi == 31 then F3()end
  if weizhi == 32 then F4()end
  if weizhi == 33 then F5()end
  if weizhi == 34 then G() end
  if weizhi == 35 then G() end
  if weizhi == 36 then G() end
  if weizhi == 37 then G() end
  if weizhi == 38 then G() end
  if weizhi == 39 then G() end
  if weizhi == 40 then G() end
  FX1 = nil
end
function Exit()
  gg.clearResults()
  gg.clearList()
  print("\r\n 技术交流:\r\n2060386123@qq.com\r\n")
  os.exit()
end

wxnl()
getSelfAddress()
loadCoordinate()
gg.clearResults()
function Main()
  FX = "Main"
  menu = gg.choice({
    "点蜡烛&炸花",
    "地图瞬移",
    "继续跑图",
    "地图传送",
    "吸收烛火",
    "其他功能",
    "更换装扮",
    "收集光翼",
    "坐标瞬移",
    "退出脚本"
  }, nil,nil)

  if menu == 1 then dlz() zdh() end
  if menu == 2 then DTSY()end
  if menu == 3 then CandleRun()end
  if menu == 4 then CSMmenu() end
  if menu == 5 then XSZH() end
  if menu == 6 then NLmenu() end
  if menu == 7 then GHZB() end
  if menu == 8 then AbsorbJinren1() end
  if menu == 9 then ZBmenu()end
  if menu == 10 then Exit() end
  FX1 = nil
end


while true do
  repeat
    if gg.isVisible(true) then
      gg.setVisible(false)
      if FX == "Main" then Main() break end
      if FX == "ZBmenu" then ZBmenu() break end
      if FX == "GHZB" then GHZB() break end
      if FX == "DTSY" then DTSY() break end
      Main()
    end
  until true
end

