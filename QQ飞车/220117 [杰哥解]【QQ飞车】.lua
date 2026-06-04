function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
      break
    end
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len(szSeparator)
    nSplitIndex = nSplitIndex + 1
  end
  return nSplitArray
end

function xgxc(szpy, qmxg)
  do
    do
      for _FORV_5_ = 1, #qmxg do
        xgpy = szpy + qmxg[_FORV_5_].offset
        xglx = qmxg[_FORV_5_].type
        xgsz = qmxg[_FORV_5_].value
        gg.setValues({
          [1] = {
            address = xgpy,
            flags = xglx,
            value = xgsz
          }
        })
        xgsl = xgsl + 1
      end
    end
  end
end

function xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1].memory)
  gg.searchNumber(qmnb[3].value, qmnb[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2].name .. "开启失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "开启失败")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      do
        do
          for _FORV_4_ = 1, sz do
            pdsz = true
            do
              do
                for _FORV_8_ = 4, #qmnb do
                  if pdsz == true then
                    pysz = {}
                    pysz[1] = {}
                    pysz[1].address = sl[_FORV_4_].address + qmnb[_FORV_8_].offset
                    pysz[1].flags = qmnb[_FORV_8_].type
                    szpy = gg.getValues(pysz)
                    pdpd = qmnb[_FORV_8_].lv .. ";" .. szpy[1].value
                    szpd = split(pdpd, ";")
                    tzszpd = szpd[1]
                    pyszpd = szpd[2]
                    if tzszpd == pyszpd then
                      pdjg = true
                      pdsz = true
                    else
                      pdjg = false
                      pdsz = false
                    end
                  end
                end
              end
            end
            if pdjg == true then
              szpy = sl[_FORV_4_].address
              xgxc(szpy, qmxg)
              xgjg = true
            end
          end
        end
      end
      if xgjg == true then
        gg.toast(qmnb[2].name .. "修改中,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "开启失败")
      end
    end
  end
end

function Main()
  SN = gg.multiChoice({
    "1.5倍地图加速",
    "无限小喷",
    "二倍加速",
    "轻漂集气",
    "防止锁胎",
    "地图加速",
    "做个好人"
  }, nil, "交流群:713330725古一牛逼=� " .. sj)
  if SN == nil then
  else
    if SN[1] == true then
      a1()
    end
    if SN[2] == true then
      a2()
    end
    if SN[3] == true then
      a3()
    end
    if SN[4] == true then
      a4()
    end
    if SN[5] == true then
      a5()
    end
    if SN[6] == true then
      a6()
    end
    if SN[7] == true then
      Exit()
    end
  end
  XGCK = -1
end

function a1()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("100倍加速开启成功")
  gg.clearResults()
end

function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("35;1.39999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1.200111", gg.TYPE_FLOAT)
  gg.toast("无限小喷已开启")
  gg.clearResults()
end

function a3()
  gg.clearResults()
  gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("提示:2倍速开启成功")
end

function a4()
  qmnb = {
    {memory = 32},
    {name = "轻漂集气"},
    {value = 4.400000095367432, type = 16},
    {
      lv = 0,
      offset = 8,
      type = 16
    },
    {
      lv = 0,
      offset = 12,
      type = 16
    },
    {
      lv = 0,
      offset = 16,
      type = 16
    },
    {
      lv = 0,
      offset = 20,
      type = 16
    },
    {
      lv = 256,
      offset = 24,
      type = 4
    }
  }
  qmxg = {
    {
      value = 999,
      offset = 20,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function a5()
  qmnb = {
    {memory = 32},
    {name = "防锁胎"},
    {value = 0.4000000059604645, type = 16},
    {
      lv = 0.5,
      offset = -4,
      type = 16
    },
    {
      lv = 8,
      offset = 24,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function a6()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-412,041,952.0;1.00390625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.00390625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 3
          }
        })
      end
    end
  end
  gg.toast("地图加速开启成功")
end

function Exit()
  print("<9<9" .. sj)
  os.exit()
end

while true do
  sj = os.date("\n日期:%Y/%m/%d \n北京时间: %H:%M:%S\n")
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
