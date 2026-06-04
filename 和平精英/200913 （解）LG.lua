    function edit(orig, ret)
      _om = orig[1].memory or orig[1][1]
      _ov = orig[3].value or orig[3][1]
      _on = orig[2].name or orig[2][1]
      gg.clearResults()
      gg.setRanges(_om)
      gg.searchNumber(_ov, orig[3].type or orig[3][2])
      sz = gg.getResultCount()
      if 1 > sz then
        gg.toast(_on .. "开启失败")
      else
        sl = gg.getResults(720)
        do
          do
            for _FORV_5_ = 1, sz do
              ist = true
              do
                do
                  for _FORV_9_ = 4, #orig do
                    if ist == true and sl[_FORV_5_].value == _ov then
                      cd = {
                        {}
                      }
                      cd[1].address = sl[_FORV_5_].address + (orig[_FORV_9_].offset or orig[_FORV_9_][2])
                      cd[1].flags = orig[_FORV_9_].type or orig[_FORV_9_][3]
                      szpy = gg.getValues(cd)
                      cdlv = orig[_FORV_9_].lv or orig[_FORV_9_][1]
                      cdv = szpy[1].value
                      if cdlv == cdv then
                        pdjg = true
                        ist = true
                      else
                        pdjg = false
                        ist = false
                      end
                    end
                  end
                end
              end
              if pdjg == true then
                szpy = sl[_FORV_5_].address
                do
                  do
                    for _FORV_9_ = 1, #ret do
                      xgpy = szpy + (ret[_FORV_9_].offset or ret[_FORV_9_][2])
                      xglx = ret[_FORV_9_].type or ret[_FORV_9_][3]
                      xgsz = ret[_FORV_9_].value or ret[_FORV_9_][1]
                      xgdj = ret[_FORV_9_].freeze or ret[_FORV_9_][4]
                      xgsj = {
                        {
                          address = xgpy,
                          flags = xglx,
                          value = xgsz
                        }
                      }
                      if xgdj == true then
                        xgsj[1].freeze = xgdj
                        gg.addListItems(xgsj)
                      else
                        gg.setValues(xgsj)
                      end
                    end
                  end
                end
                xgjg = true
              end
            end
          end
        end
        if xgjg == true then
          gg.toast(_on .. "开启成功")
        else
          gg.toast(_on .. "开启失败")
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
          gg.toast("搜索到" .. #data .. "条数据")
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
          gg.toast("已修改" .. #t .. "条数据")
          gg.addListItems(t)
        else
          gg.toast("not found", false)
          return false
        end
      else
        gg.toast("Not Found")
        return false
      end
    end
    
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
            xgdj = qmxg[_FORV_5_].freeze
            if xgdj == nil or xgdj == "" then
              gg.setValues({
                [1] = {
                  address = xgpy,
                  flags = xglx,
                  value = xgsz
                }
              })
            else
              gg.addListItems({
                [1] = {
                  address = xgpy,
                  flags = xglx,
                  freeze = xgdj,
                  value = xgsz
                }
              })
            end
            xgsl = xgsl + 1
            xgjg = true
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
          gg.addListItems(t)
        else
          gg.toast("无数据", false)
          return false
        end
      else
        gg.toast("Not Found")
        return false
      end
    end
    
    function edit(orig, ret)
      _om = orig[1].memory or orig[1][1]
      _ov = orig[3].value or orig[3][1]
      _on = orig[2].name or orig[2][1]
      gg.clearResults()
      gg.setRanges(_om)
      gg.searchNumber(_ov, orig[3].type or orig[3][2])
      sz = gg.getResultCount()
      if 1 > sz then
        gg.toast(_on .. "开启失败")
      else
        sl = gg.getResults(720)
        do
          do
            for _FORV_5_ = 1, sz do
              ist = true
              do
                do
                  for _FORV_9_ = 4, #orig do
                    if ist == true and sl[_FORV_5_].value == _ov then
                      cd = {
                        {}
                      }
                      cd[1].address = sl[_FORV_5_].address + (orig[_FORV_9_].offset or orig[_FORV_9_][2])
                      cd[1].flags = orig[_FORV_9_].type or orig[_FORV_9_][3]
                      szpy = gg.getValues(cd)
                      cdlv = orig[_FORV_9_].lv or orig[_FORV_9_][1]
                      cdv = szpy[1].value
                      if cdlv == cdv then
                        pdjg = true
                        ist = true
                      else
                        pdjg = false
                        ist = false
                      end
                    end
                  end
                end
              end
              if pdjg == true then
                szpy = sl[_FORV_5_].address
                do
                  do
                    for _FORV_9_ = 1, #ret do
                      xgpy = szpy + (ret[_FORV_9_].offset or ret[_FORV_9_][2])
                      xglx = ret[_FORV_9_].type or ret[_FORV_9_][3]
                      xgsz = ret[_FORV_9_].value or ret[_FORV_9_][1]
                      xgdj = ret[_FORV_9_].freeze or ret[_FORV_9_][4]
                      xgsj = {
                        {
                          address = xgpy,
                          flags = xglx,
                          value = xgsz
                        }
                      }
                      if xgdj == true then
                        xgsj[1].freeze = xgdj
                        gg.addListItems(xgsj)
                      else
                        gg.setValues(xgsj)
                      end
                    end
                  end
                end
                xgjg = true
              end
            end
          end
        end
        if xgjg == true then
          gg.toast(_on .. "开启成功")
        else
          gg.toast(_on .. "开启失败")
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
          gg.toast("搜索到" .. #data .. "条数据")
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
          gg.toast("已修改" .. #t .. "条数据")
          gg.addListItems(t)
        else
          gg.toast("not found", false)
          return false
        end
      else
        gg.toast("Not Found")
        return false
      end
    end
    
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
            xgdj = qmxg[_FORV_5_].freeze
            if xgdj == nil or xgdj == "" then
              gg.setValues({
                [1] = {
                  address = xgpy,
                  flags = xglx,
                  value = xgsz
                }
              })
            else
              gg.addListItems({
                [1] = {
                  address = xgpy,
                  flags = xglx,
                  freeze = xgdj,
                  value = xgsz
                }
              })
            end
            xgsl = xgsl + 1
            xgjg = true
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
    
    function yiyz_Main()
      SN = gg.multiChoice({
        "1【⊙腾 讯 防 封⊙】",
        "2【⊙落 地 开 启⊙】",
        "3【⊙防   卡   屏⊙】",
        "4【⊙无后-防抖-聚点⊙】",
        "5【⊙磁 力 自 瞄⊙】",
        "6【⊙全 图 自 瞄⊙】",
        "7【⊙瞬    -    击⊙】",
        "8【⊙人 物 加 速⊙】",
        "9【⊙关 闭 加 速⊙】",
        "10【⊙上 帝 视 角⊙】",
        "11【⊙爱了美化⊙】",
        "12【⊙步枪伤害配合加速⊙】",
        "13【↓以下是裸奔功能↓】",
        "14【持 枪 防 抖】",
        "15【无 后 聚 点】",
        "16退出脚本"
      }, nil, "破解xig有手就行")
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
          a7()
        end
        if SN[8] == true then
          a8()
        end
        if SN[9] == true then
          a9()
        end
        if SN[10] == true then
          a10()
        end
        if SN[11] == true then
          a11()
        end
        if SN[12] == true then
          a12()
        end
        if SN[13] == true then
          a13()
        end
        if SN[14] == true then
          a14()
        end
        if SN[15] == true then
          a15()
        end
        if SN[16] == true then
          Exit()
        end
      end
      XGCK = -1
    end
    
    function a1()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("65,793;2,621,450;4,096;4,572;18,812;1,984;1,254,344;65,537;131,072;196,608;17,814;262,144;36,478;65,536;131,074:1057", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_4_, _FORV_5_ in ipairs(t) do
            if _FORV_5_.flags == gg.TYPE_DWORD then
              _FORV_5_.value = "0"
              _FORV_5_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("18812;65537", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_5_, _FORV_6_ in ipairs(t) do
            if _FORV_6_.flags == gg.TYPE_DWORD then
              _FORV_6_.value = "-1"
              _FORV_6_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
    end
    
    function a2()
      qmnb = {
        {
          memory = gg.REGION_C_ALLOC
        },
        {name = "      "},
        {
          value = 1432512876,
          type = gg.TYPE_DWORD
        },
        {
          lv = 1932407877,
          offset = 4,
          type = gg.TYPE_DWORD
        },
        {
          lv = 16384,
          offset = -24,
          type = gg.TYPE_DWORD
        }
      }
      qmxg = {
        {
          value = -1,
          offset = -24,
          type = gg.TYPE_DWORD,
          freeze = true
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("16384;28532", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_4_, _FORV_5_ in ipairs(t) do
            if _FORV_5_.flags == gg.TYPE_DWORD then
              _FORV_5_.value = "-1"
              _FORV_5_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
      gg.clearResults()
      gg.setRanges(gg.REGION_C_BSS)
      gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_5_, _FORV_6_ in ipairs(t) do
            if _FORV_6_.flags == gg.TYPE_DWORD then
              _FORV_6_.value = "1777777"
              _FORV_6_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
      gg.clearResults()
      gg.setRanges(gg.REGION_JAVA_HEAP)
      gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_6_, _FORV_7_ in ipairs(t) do
            if _FORV_7_.flags == gg.TYPE_DWORD then
              _FORV_7_.value = "0"
              _FORV_7_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_7_, _FORV_8_ in ipairs(t) do
            if _FORV_8_.flags == gg.TYPE_DWORD then
              _FORV_8_.value = "0"
              _FORV_8_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_8_, _FORV_9_ in ipairs(t) do
            if _FORV_9_.flags == gg.TYPE_DWORD then
              _FORV_9_.value = "0"
              _FORV_9_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
    end
    
    function a3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_BSS)
      gg.searchNumber("1777666;1777777", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.refineNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
      do
        do
          for _FORV_4_, _FORV_5_ in ipairs(t) do
            if _FORV_5_.flags == gg.TYPE_DWORD then
              _FORV_5_.value = "16384"
              _FORV_5_.freeze = true
            end
          end
        end
      end
      gg.addListItems(t)
      t = nil
    end
    
    function a4()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-3.7444097e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("无后开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("倍镜防抖开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("完美防抖开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(2)
      gg.editAll("90", gg.TYPE_FLOAT)
      gg.toast("聚点开启成功")
    end
    
    function a5()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("1090519040", gg.TYPE_DWORD)
      gg.toast("自瞄开启成功")
    end
    
    function a6()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.toast("全图自瞄开启成功")
    end
    
    function a7()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("全枪瞬击开启成功")
    end
    
    function a8()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("40000", gg.TYPE_FLOAT)
      gg.toast("全枪伤害开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
      gg.clearResults()
      gg.toast("全局加速不拉回开启")
    end
    
    function a9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_DATA)
      gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
      gg.clearResults()
      gg.toast("全局加速不拉回关闭")
    end
    
    function a10()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("850", gg.TYPE_FLOAT)
      gg.toast("视角开启成功")
    end
    
    function a11()
      gg.clearResults()
      gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("101004030", gg.TYPE_DWORD)
      gg.toast("已部署")
      gg.clearResults()
      gg.clearResults()
      gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("403504", gg.TYPE_DWORD)
      gg.toast("M4狩猎者")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,300,600;103,006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,300,600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("103,006,013", gg.TYPE_DWORD)
      gg.toast("Mini14")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10800400;108004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("108004029", gg.TYPE_DWORD)
      gg.toast("平底锅")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100800;101008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101008016", gg.TYPE_DWORD)
      gg.toast("M762")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100600;101006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101,006,011", gg.TYPE_DWORD)
      gg.toast("AUG")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101002007", gg.TYPE_DWORD)
      gg.toast("M16A4")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101001025", gg.TYPE_DWORD)
      gg.toast("AK47")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100500;101005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101005011", gg.TYPE_DWORD)
      gg.toast("GROZA")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101003024", gg.TYPE_DWORD)
      gg.toast("SCAR-L")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,100,700;101,007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101007003", gg.TYPE_DWORD)
      gg.toast("QBZ")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,100,900;101,009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("101009002", gg.TYPE_DWORD)
      gg.toast("Mk47")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,101,000;101,010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,101,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,101,0004", gg.TYPE_DWORD)
      gg.toast("G36C")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,200,100;102,001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,200,100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,200,1013", gg.TYPE_DWORD)
      gg.toast("UZI")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,200,200;102,002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,200,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,200,2019", gg.TYPE_DWORD)
      gg.toast("UMP45")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,200,300;102,003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,200,300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,200,3008", gg.TYPE_DWORD)
      gg.toast("Vector")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,200,500;102,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,200,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,200,5001", gg.TYPE_DWORD)
      gg.toast("野牛")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,300,400;103,004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,300,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,300,4010", gg.TYPE_DWORD)
      gg.toast("SKS")
      gg.setRanges(32)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("10,300,500;103,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10,300,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("10,300,5007", gg.TYPE_DWORD)
      gg.toast("VSS")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("330600100;3306001::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("330600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("330600600", gg.TYPE_DWORD)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("330600200;3306002::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("330600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("330600600", gg.TYPE_DWORD)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("330600300;3306003::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("330600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("330600600", gg.TYPE_DWORD)
      gg.toast("玛莎美化➤%100")
    end
    
    function a12()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("35000", gg.TYPE_FLOAT)
      gg.toast("M4伤害已部署")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("35000", gg.TYPE_FLOAT)
      gg.toast("AKM伤害已部署")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("35000", gg.TYPE_FLOAT)
      gg.toast("SCAR伤害已部署")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("35000", gg.TYPE_FLOAT)
      gg.toast("M16伤害已部署")
    end
    
    function a13()
    end
    
    function a14()
      function PS()
      end
      
      function setvalue(address, flags, value)
        PS("修改地址数值(地址,数值类型,要修改的值)")
        local tt = {}
        tt[1] = {}
        tt[1].address = address
        tt[1].flags = flags
        tt[1].value = value
        gg.setValues(tt)
      end
      
      so = gg.getRangesList("libUE4.so")[1].start
      py = 58412776
      setvalue(so + py, 4, 0)
      gg.toast(" ║♻️防抖开启完毕♻️║")
    end
    
    function a15()
      function PS()
      end
      
      function setvalue(address, flags, value)
        PS("修改地址数值(地址,数值类型,要修改的值)")
        local tt = {}
        tt[1] = {}
        tt[1].address = address
        tt[1].flags = flags
        tt[1].value = value
        gg.setValues(tt)
      end
      
      so = gg.getRangesList("libUE4.so")[1].start
      py = 27970364
      setvalue(so + py, 4, 0)
      gg.toast(" ║♻️无后聚点开启完毕♻️║")
    end
    
    function Exit()
      print("欢迎再次使用")
      os.exit()
    end
    
    while true do
      if gg.isVisible(true) then
        XGCK = 1
        gg.setVisible(false)
      end
      gg.clearResults()
      if XGCK == 1 then
        yiyz_Main()
      end
    end