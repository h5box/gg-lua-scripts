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
        gg.toast(qmnb[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "开启失败")
      end
    end
  end
end

function SearchWrite(Search, Write, Type)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber(Search[1][1], Type)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  local base = Search[1][2]
  if count > 0 then
    do
      do
        for _FORV_10_, _FORV_11_ in ipairs(result) do
          _FORV_11_.isUseful = true
        end
      end
    end
    do
      do
        for _FORV_10_ = 2, #Search do
          local tmp = {}
          local offset = Search[_FORV_10_][2] - base
          local num = Search[_FORV_10_][1]
          do
            do
              for _FORV_17_, _FORV_18_ in ipairs(result) do
                tmp[#tmp + 1] = {}
                tmp[#tmp].address = _FORV_18_.address + offset
                tmp[#tmp].flags = _FORV_18_.flags
              end
            end
          end
          tmp = gg.getValues(tmp)
          do
            for _FORV_17_, _FORV_18_ in ipairs(tmp) do
              if tostring(_FORV_18_.value) ~= tostring(num) then
                result[_FORV_17_].isUseful = false
              end
            end
          end
        end
      end
    end
    do
      do
        for _FORV_10_, _FORV_11_ in ipairs(result) do
          if _FORV_11_.isUseful then
            data[#data + 1] = _FORV_11_.address
          end
        end
      end
    end
    if #data > 0 then
      gg.toast("🕹:修改" .. #data .. "条数据.开启成功")
      local t = {}
      local base = Search[1][2]
      do
        do
          for _FORV_12_ = 1, #data do
            do
              for _FORV_16_, _FORV_17_ in ipairs(Write) do
                offset = _FORV_17_[2] - base
                t[#t + 1] = {}
                t[#t].address = data[_FORV_12_] + offset
                t[#t].flags = Type
                t[#t].value = _FORV_17_[1]
                if _FORV_17_[3] == true then
                  local item = {}
                  item[#item + 1] = t[#t]
                  item[#item].freeze = true
                  gg.addListItems(item)
                end
              end
            end
          end
        end
      end
      gg.setValues(t)
    else
      gg.toast("🕹:搜索0条数据.修改失败", false)
      do return false end
      do return end
      gg.toast("🕹:搜索0条数据.修改失败")
      return false
    end
  end
end

function Main()
  SN = gg.choice({
    "透视",
    "退出脚本"
  }, nil, "湖心制作，倒卖二改没m")
  if SN == 1 then
    a1()
  end
  if SN == 2 then
    Exit()
  end
  XGCK = -1
end

function a1()
  qmnb = {
    {memory = 1048576},
    {name = "车透视"},
    {value = -2.0273089350834285E-39, type = 16},
    {
      lv = -1.0285575569695016E-38,
      offset = 52,
      type = 16
    }
  }
  qmxg = {
    {
      value = 120,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function Exit()
  print("湖心制作荒野行动透视")
  os.exit()
end

cs = "禁止倒卖二改"
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
