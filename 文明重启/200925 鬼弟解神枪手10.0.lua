--我都退网了 你还惹我 
--你更新一次我解一次 

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
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
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
g = "○"
k = "●"
qxwh = g
nczm = g
zbtx = g
ymwd = g
qmdj = g
function yiyz_Main()
  SN = gg.choice({
    " Ⓐ 打架∣功能选择 ️",
    " Ⓑ 人物∣功能选择 ",
    " Ⓒ 强化∣功能选择 ️",
    " Ⓓ 变态∣功能选择 "
  }, 2018)
  if SN == 1 then
    A()
  end
  if SN == 2 then
    B()
  end
  if SN == 3 then
    C()
  end
  if SN == 4 then
    D()
  end
  if SN == 5 then
    Exit()
  end
  XGCK = -1
end

function A()
  SN = gg.choice({
    " ① 战斗选择∣持枪∣风险⊱低  ️",
    " ② 路飞选择∣持枪∣风险⊱低  ️",
    " ③ 十米大刀∣游戏∣风险⊱中  ️",
    " ④ 坐标自瞄∣游戏∣风险⊱低  ",
    " ⑤ 枪械秒换∣持枪∣风险⊱低  ",
    " ⑥ 视角锁定∣游戏∣风险⊱低  ",
    " ⑦ akm秒杀∣持枪∣不会刮痧  ",
    " ⑧ 全枪秒杀∣持枪∣概率刮痧  "
  }, 2018)
  if SN == 1 then
    a1()
  end
  if SN == 2 then
    a2()
  end
  if SN == 3 then
    a3()
  end
  if SN == 4 then
    a4()
  end
  if SN == 5 then
    a5()
  end
  if SN == 6 then
    a6()
  end
  if SN == 7 then
    a7()
  end
  if SN == 8 then
    a8()
  end
  if SN == 9 then
    Exit()
  end
  XGCK = -1
end

function B()
  SN = gg.choice({
    " ① 坐标天线∣游戏∣风险⊱低  ️" .. nczm,
    " ② 视野选择∣游戏∣风险⊱低  ️",
    " ③ 火眼金睛∣游戏∣状态⊱开  ️",
    " ④ 火眼金睛∣游戏∣状态⊱关  ",
    " ⑤ 颠倒黑白∣游戏∣转换⊱黑  ",
    " ⑥ 颠倒黑白∣游戏∣转换⊱白  ",
    " ⑦ 头部天线∣游戏∣状态⊱开  ",
    " ⑧ 头部天线∣游戏∣状态⊱关  ",
    " ⑨ 天线选择∣游戏∣风险⊱低  ",
    " ⑩ 上色选择∣游戏∣风险⊱低  "
  }, 2018)
  if SN == 1 then
    b1()
  end
  if SN == 2 then
    b2()
  end
  if SN == 3 then
    b3()
  end
  if SN == 4 then
    b4()
  end
  if SN == 5 then
    b5()
  end
  if SN == 6 then
    b6()
  end
  if SN == 7 then
    b7()
  end
  if SN == 8 then
    b8()
  end
  if SN == 9 then
    b9()
  end
  if SN == 10 then
    b10()
  end
  if SN == 11 then
    Exit()
  end
  XGCK = -1
end

function C()
  SN = gg.choice({
    " ① 全图除草∣游戏∣画质⊱流畅  ️",
    " ② 倒地加速∣游戏∣风险⊱低  ️",
    " ③ 人物鬼跳∣游戏∣风险⊱低  ️",
    " ④ 全图透视∣游戏∣风险⊱低  ",
    " ⑤ 房屋透视∣游戏∣风险⊱低  "
  }, 2018)
  if SN == 1 then
    c1()
  end
  if SN == 2 then
    c2()
  end
  if SN == 3 then
    c3()
  end
  if SN == 4 then
    c4()
  end
  if SN == 5 then
    c5()
  end
  if SN == 6 then
    Exit()
  end
  XGCK = -1
end

function D()
  SN = gg.choice({
    " ① 载具飞天∣大厅∣风险⊱中  ️",
    " ② 子弹穿山∣游戏∣风险⊱低  ️",
    " ③ 无伤半遁∣游戏∣风险⊱低  ️",
    " ④ 一秒五刀∣游戏∣风险⊱中  " .. ymwd,
    " ⑤ 通天路二∣游戏∣风险⊱低  ",
    " ⑥ 通水路二∣游戏∣风险⊱低  ",
    " ⑦ 超级跳跃∣游戏∣风险⊱低  "
  }, 2018)
  if SN == 1 then
    d1()
  end
  if SN == 2 then
    d2()
  end
  if SN == 3 then
    d3()
  end
  if SN == 4 then
    d4()
  end
  if SN == 5 then
    d5()
  end
  if SN == 6 then
    d6()
  end
  if SN == 7 then
    d7()
  end
  if SN == 8 then
    Exit()
  end
  XGCK = -1
end

function a1()
  F = gg.alert("【Sharpshooters welcome your use】", "枪械无后" .. qxwh, "内存自瞄" .. nczm, "千米打击" .. qmdj)
  if F == 1 then
    gg.alert("神枪手现在为您开启内存自瞄")
    if qxwh == "○" then
      qxwh = k
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 300, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 320, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 1000000,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 710, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 1000000,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 360, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 830, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 790, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = " "},
        {value = 735, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
    elseif qxwh == "●" then
      qxwh = g
      gg.toast("不支持关闭")
    end
  elseif F == 2 then
    if nczm == "○" then
      nczm = k
      qmnb = {
        {memory = 16384},
        {name = "自瞄"},
        {value = 8.3453106E22, type = 16},
        {
          lv = -5.4755273E27,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 1.49E-9,
          offset = 4,
          type = 16
        }
      }
      xqmnb(qmnb)
    elseif nczm == "●" then
      nczm = g
      gg.toast("暂不支持关闭")
    end
  elseif F == 3 then
    if qmdj == "○" then
      qmdj = k
      qmnb = {
        {memory = 32},
        {
          name = "30%八倍镜补丁"
        },
        {value = 45, type = 16},
        {
          lv = 360,
          offset = 8,
          type = 16
        },
        {
          lv = -360,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 46.666,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("45", gg.TYPE_FLOAT, 138 > 795, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1577", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("50%")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("48", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("48", gg.TYPE_FLOAT, -797 > 809, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1588", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("100%")
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("49", gg.TYPE_FLOAT, -47 > 747, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1599", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("内部防封注入")
      gg.clearList()
    elseif qmdj == "●" then
      qmdj = g
      gg.clearResults()
      qmnb = {
        {memory = 32},
        {
          name = "30%八倍镜补丁"
        },
        {value = 46.666, type = 16},
        {
          lv = 360,
          offset = 8,
          type = 16
        },
        {
          lv = -360,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 45,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1577", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1577", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("45", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("50%")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1588", gg.TYPE_FLOAT, -15 > 425, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("48", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("100%")
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1599", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1599", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("49", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("内部防封注入")
      gg.clearList()
    end
  end
end

function a2()
  F = gg.alert("【 如果开启无效果请重启后在开启即可 】", "倍镜路飞", "机瞄路飞", "新版路飞")
  if F == 1 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    SearchWrite({
      {
        "0.10000000149",
        3482826840
      },
      {
        "0.20000000298",
        3482826836
      },
      {
        "3.99000000954",
        3482826800
      }
    }, {
      {"-1.8", 3482826900}
    }, gg.TYPE_FLOAT, "倍镜路飞开启成功")
  elseif F == 2 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    SearchWrite({
      {
        "0.10000000149",
        3483543640
      },
      {
        "0.20000000298",
        3483543636
      },
      {
        "3.99000000954",
        3483543600
      }
    }, {
      {"1.8", 3483543708}
    }, gg.TYPE_FLOAT, "机瞄路飞开启成功")
  elseif F == 3 then
    qmnb = {
      {memory = 4},
      {name = "路飞"},
      {value = 0.00419999985, type = 16},
      {
        lv = 0.02710000053,
        offset = -12,
        type = 16
      },
      {
        lv = -0.09340000153,
        offset = -4,
        type = 16
      }
    }
    qmxg = {
      {
        value = -3,
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
    gg.toast("路飞开启成功")
  end
end

function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  if gg.isVisible() == true then
  else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.isVisible() == true then
    else
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      if gg.isVisible() == true then
      else
        gg.editAll("4.5", gg.TYPE_FLOAT)
        gg.clearResults()
        a3()
      end
    end
  end
end

function a4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("神枪手已为您成功开启磁性自瞄")
end

function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.90000009537;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.90000009537", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.03333353996;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.03333353996", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00999999978;0;1;0.00899999961::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast(" 秒换开启中 ")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.66666674614;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.66666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.16666674614;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.16666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")
end

function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("视角锁定开启成功")
end

function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;35;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("735;30;110", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("735", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("95;101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
end

function a8()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("940000000", 4)
  gg.toast("全枪秒杀已开启️")
  gg.clearResults()
end

function b1()
  if zbtx == "○" then
    zbtx = k
    qmnb = {
      {memory = 4},
      {
        name = "写入坐标参数"
      },
      {value = -0.98553425074, type = 16},
      {
        lv = 1.42252E-6,
        offset = -16,
        type = 16
      },
      {
        lv = -1,
        offset = -12,
        type = 16
      },
      {
        lv = 1,
        offset = -24,
        type = 16
      },
      {
        lv = -0.98553425074,
        offset = 12,
        type = 16
      },
      {
        lv = 1.5811675787,
        offset = 28,
        type = 16
      }
    }
    qmxg = {
      {
        value = -999999,
        offset = 0,
        type = 16
      },
      {
        value = -999999,
        offset = -12,
        type = 16
      },
      {
        value = -999999,
        offset = 12,
        type = 16
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {memory = 16384},
      {
        name = "注入天线补丁"
      },
      {value = 51, type = 16},
      {
        lv = 225,
        offset = 4,
        type = 16
      },
      {
        lv = 1225,
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 0.1577,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
  elseif zbtx == "●" then
    zbtx = g
    qmnb = {
      {memory = 4},
      {
        name = "移除坐标参数"
      },
      {value = -999999, type = 16},
      {
        lv = 1.42252E-6,
        offset = -16,
        type = 16
      },
      {
        lv = -999999,
        offset = -12,
        type = 16
      },
      {
        lv = 1,
        offset = -24,
        type = 16
      },
      {
        lv = -999999,
        offset = 12,
        type = 16
      },
      {
        lv = 1.5811675787,
        offset = 28,
        type = 16
      }
    }
    qmxg = {
      {
        value = -0.98553425074,
        offset = 0,
        type = 16
      },
      {
        value = -1,
        offset = -12,
        type = 16
      },
      {
        value = -0.98553425074,
        offset = 12,
        type = 16
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {memory = 16384},
      {
        name = "删除天线补丁"
      },
      {value = 0.1577, type = 16},
      {
        lv = 225,
        offset = 4,
        type = 16
      },
      {
        lv = 1225,
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 51,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function b2()
  F = gg.alert("【 Sharpshooters welcome your use 】", "迷你视角", "趴下视野")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.toast("迷你视野已开启")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.20000000298F;1.29999995232F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("9", gg.TYPE_FLOAT)
    gg.toast("趴下视野扩大开启成功")
    gg.clearResults()
  end
end

function b3()
  gg.setRanges(16384)
  SearchWrite({
    {
      "-2.7859868E28",
      0
    },
    {
      "0.0549999997",
      -4
    },
    {
      "0.04044999927",
      -8
    }
  }, {
    {
      "2",
      -4,
      false
    }
  }, gg.REGION_C_BSS)
  gg.clearList()
end

function b4()
  gg.setRanges(16384)
  SearchWrite({
    {
      "-2.7859868E28",
      0
    },
    {"2", -4},
    {
      "0.04044999927",
      -8
    }
  }, {
    {
      "0.0549999997",
      -4,
      false
    }
  }, gg.REGION_C_BSS)
  gg.clearList()
end

function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
end

function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;120::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
end

function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
end

function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("0.16947640479", gg.TYPE_FLOAT)
end

function b9()
  F = gg.alert("【 Sharpshooters welcome your use 】", "手指天线", "高清天线", "循环天线")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.3234016e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.3234016e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.toast("开启成功")
  elseif F == 2 then
    qmnb = {
      {memory = 4},
      {
        name = "天线开启"
      },
      {value = 0.16947640478610992, type = 16},
      {
        lv = -0.16947640478610992,
        offset = 20,
        type = 16
      }
    }
    qmxg = {
      {
        value = 999,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
    gg.toast("高清天线开启")
  elseif F == 3 then
    gg.clearList()
    gg.clearResults()
    DWT()
  end
end

function DWT()
  gg.alert("  循环天线开启成功 ")
  repeat
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
  until gg.isVisible(true)
end

function b10()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2;-1;3;0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll(gg.prompt({
      "人物上色\n输入【999】为人物白色\n输入【-999】为人物黑色"
    }, {
      [1] = 5
    }, {
      [1] = "number"
    })[1], gg.TYPE_FLOAT)
    gg.toast("开启成功")
  end
end

function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.37561154366", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.37561154366", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function c2()
  F = gg.alert("【 Sharpshooters welcome your use 】", "加速关闭", "加速开启")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.4975935e19;-1.0239434e32;-11:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-2", gg.TYPE_FLOAT)
    gg.toast("  趴下加速关闭  ")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.4975935e19;-1.0239434e32;-2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-11", gg.TYPE_FLOAT)
    gg.toast("  趴下加速开启成功  ")
  end
end

function c3()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({
    {3.8685732E25, 19100},
    {1, 19104},
    {1.00999999046, 19120}
  }, {
    {
      0.10000000149,
      19104,
      false
    }
  }, 16)
  gg.toast("鬼跳已开启")
end

function c4()
  F = gg.alert("【 Sharpshooters welcome your use 】", "开启", "关闭")
  if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", 16)
    gg.clearResults()
    gg.toast("全图透视已开启")
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", 16)
    gg.clearResults()
    gg.toast("全图透视已关闭")
  end
end

function c5()
  F = gg.alert("【 Sharpshooters welcome your use 】", "开启", "关闭")
  if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("1.12020366e-19;5.6051939e-45:5", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.searchNumber("5.6051939e-45", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.toast("房屋透视已开启")
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("7.0064923e-45;1.12020366e-19;0::9", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.searchNumber("0", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(1)
    gg.editAll("5.6051939e-45", 16)
    gg.clearResults()
    gg.toast("房屋透视已关闭")
  end
end

function d1()
  F = gg.alert("【 大厅开启‖提前在载具旁边放好睡袋 】", "载具飞天", "")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("1.9", gg.TYPE_FLOAT)
    gg.toast("大厅开启然后进游戏开载具")
    gg.alert("也可以人物遁地开路飞秒人")
  elseif F == 2 then
    gg.alert("️️待添加")
  end
end

function d2()
  gg.setRanges(4)
  for _FORV_3_ = 1, 1 do
    if gg.isVisible(true) then
      gg.setRanges(4)
      SearchWrite({
        {"5.303", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"10", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"9.098", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      do return end
      return
    end
    for _FORV_7_ = 1, 1 do
      if gg.isVisible(true) then
        gg.setRanges(4)
        SearchWrite({
          {"5.303", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"10", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"9.098", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        do return end
        return
      end
      SearchWrite({
        {"30", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"0.5", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(string.rep(99, 450000))
      gg.setRanges(16444)
      for _FORV_11_ = 1, 1 do
        if gg.isVisible(true) then
          gg.setRanges(4)
          SearchWrite({
            {"5.303", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"10", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"9.098", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          do return end
          return
        end
        for _FORV_15_ = 1, 1 do
          if gg.isVisible(true) then
            gg.setRanges(4)
            SearchWrite({
              {"5.30Ⅰ3", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"10", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"9.098", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            do return end
            return
          end
          SearchWrite({
            {"1Ⅰ0000", 0},
            {"10000", 12},
            {"100", 4}
          }, {
            {"0", 16}
          }, 84)
          gg.setRanges(4)
          for _FORV_19_ = 1, 1 do
            if gg.isVisible(true) then
              gg.setRanges(4)
              SearchWrite({
                {"5.303", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"10", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"9.098", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              do return end
              return
            end
            for _FORV_23_ = 1, 1 do
              if gg.isVisible(true) then
                gg.setRanges(4)
                SearchWrite({
                  {"5.303", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"10", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"9.098", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                do return end
                return
              end
              SearchWrite({
                {"21.08", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"1.1", 16}
              }, 16)
              gg.clearResults()
            end
          end
        end
      end
    end
  end
end

function d3()
  F = gg.alert("【 Sharpshooters welcome your use 】", "遁地第一步", "遁地第二步")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("修改数值", gg.TYPE_FLOAT)
    gg.toast("开启成功")
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("16,261W;25W;161W  ;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2.222222", gg.TYPE_FLOAT)
    gg.toast("遁地第一步开启成功")
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    DJK()
  end
end

function DJK()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16,261W;25W;161W;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.222222", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.1
      }
    })
  end
  gg.toast("无伤遁地开启成功")
end

function d4()
  if ymwd == "○" then
    ymwd = k
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("0.1492135418", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("4.5157794", gg.TYPE_FLOAT)
    gg.toast("加速开启")
  elseif ymwd == "●" then
    ymwd = g
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.1492135418", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1492135418", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("4.5157794", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.5157794", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("6.30000019073", gg.TYPE_FLOAT)
    gg.toast("加速关闭")
  end
end

function d5()
  gg.setRanges(4)
  for _FORV_3_ = 1, 1 do
    if gg.isVisible(true) then
      gg.setRanges(4)
      SearchWrite({
        {"39.093", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"27.05190", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"7.01609", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      do return end
      return
    end
    for _FORV_7_ = 1, 1 do
      if gg.isVisible(true) then
        gg.setRanges(4)
        SearchWrite({
          {"39.093", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"27.05190", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"7.01609", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        do return end
        return
      end
      SearchWrite({
        {"4.5009856", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"9.80984", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(string.rep(99, 450000))
      gg.setRanges(16444)
      for _FORV_11_ = 1, 1 do
        if gg.isVisible(true) then
          gg.setRanges(4)
          SearchWrite({
            {"39.093", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"27.05190", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"7.01609", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          do return end
          return
        end
        for _FORV_15_ = 1, 1 do
          if gg.isVisible(true) then
            gg.setRanges(4)
            SearchWrite({
              {"39.093", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"27.05190", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"7.01609", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            do return end
            return
          end
          SearchWrite({
            {
              "2139095Ⅰ039",
              0
            },
            {"24008", 12}
          }, {
            {"0", 36}
          }, 84)
          gg.setRanges(string.rep(99, 450000))
          gg.setRanges(16444)
          for _FORV_19_ = 1, 1 do
            if gg.isVisible(true) then
              gg.setRanges(4)
              SearchWrite({
                {"39.093", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"27.05190", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"7.01609", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              do return end
              return
            end
            for _FORV_23_ = 1, 1 do
              if gg.isVisible(true) then
                gg.setRanges(4)
                SearchWrite({
                  {"39.093", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"27.05190", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"7.01609", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                do return end
                return
              end
              SearchWrite({
                {
                  "213909Ⅰ5039",
                  0
                },
                {"24004", 12}
              }, {
                {"0", 36}
              }, 84)
              gg.setRanges(string.rep(99, 450000))
              gg.setRanges(16444)
              for _FORV_27_ = 1, 1 do
                if gg.isVisible(true) then
                  gg.setRanges(4)
                  SearchWrite({
                    {"39.093", 0},
                    {"7", -16},
                    {"8", 32}
                  }, {
                    {"10", 16}
                  }, 16)
                  gg.clearResults()
                  gg.setRanges(4)
                  SearchWrite({
                    {"27.05190", 0},
                    {"7", -16},
                    {"8", 32}
                  }, {
                    {"10", 16}
                  }, 16)
                  gg.clearResults()
                  gg.setRanges(4)
                  SearchWrite({
                    {"7.01609", 0},
                    {"7", -16},
                    {"8", 32}
                  }, {
                    {"10", 16}
                  }, 16)
                  gg.clearResults()
                  do return end
                  return
                end
                for _FORV_31_ = 1, 1 do
                  if gg.isVisible(true) then
                    gg.setRanges(4)
                    SearchWrite({
                      {"39.093", 0},
                      {"7", -16},
                      {"8", 32}
                    }, {
                      {"10", 16}
                    }, 16)
                    gg.clearResults()
                    gg.setRanges(4)
                    SearchWrite({
                      {"27.05190", 0},
                      {"7", -16},
                      {"8", 32}
                    }, {
                      {"10", 16}
                    }, 16)
                    gg.clearResults()
                    gg.setRanges(4)
                    SearchWrite({
                      {"7.01609", 0},
                      {"7", -16},
                      {"8", 32}
                    }, {
                      {"10", 16}
                    }, 16)
                    gg.clearResults()
                    do return end
                    return
                  end
                  SearchWrite({
                    {
                      "213909Ⅰ5039",
                      0
                    },
                    {"24000", 12}
                  }, {
                    {"0", 36}
                  }, 84)
                  gg.setRanges(4)
                  for _FORV_35_ = 1, 1 do
                    if gg.isVisible(true) then
                      gg.setRanges(4)
                      SearchWrite({
                        {"39.093", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"10", 16}
                      }, 16)
                      gg.clearResults()
                      gg.setRanges(4)
                      SearchWrite({
                        {"27.05190", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"10", 16}
                      }, 16)
                      gg.clearResults()
                      gg.setRanges(4)
                      SearchWrite({
                        {"7.01609", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"10", 16}
                      }, 16)
                      gg.clearResults()
                      do return end
                      return
                    end
                    for _FORV_39_ = 1, 1 do
                      if gg.isVisible(true) then
                        gg.setRanges(4)
                        SearchWrite({
                          {"39.093", 0},
                          {"7", -16},
                          {"8", 32}
                        }, {
                          {"10", 16}
                        }, 16)
                        gg.clearResults()
                        gg.setRanges(4)
                        SearchWrite({
                          {"27.05190", 0},
                          {"7", -16},
                          {"8", 32}
                        }, {
                          {"10", 16}
                        }, 16)
                        gg.clearResults()
                        gg.setRanges(4)
                        SearchWrite({
                          {"7.01609", 0},
                          {"7", -16},
                          {"8", 32}
                        }, {
                          {"10", 16}
                        }, 16)
                        gg.clearResults()
                        do return end
                        return
                      end
                      SearchWrite({
                        {"3.0350", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"7.092", 16}
                      }, 16)
                      gg.clearResults()
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

function d6()
  F = gg.alert("【 Sharpshooters welcome your use 】", "待添加", "待添加")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("10000", gg.TYPE_FLOAT)
    gg.toast("通水路已关闭")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("通水路已开启")
  end
end

function d7()
  qmnb = {
    {memory = 16384},
    {name = " "},
    {value = 0.60000002384, type = 16},
    {
      lv = 150,
      offset = -16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1000,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {
      name = "点击高跳"
    },
    {value = 0.15000000596, type = 16},
    {
      lv = -1.0E32,
      offset = 16,
      type = 16
    },
    {
      lv = 49,
      offset = 36,
      type = 16
    },
    {
      lv = 16261,
      offset = -6,
      type = 2
    },
    {
      lv = 16256,
      offset = -14,
      type = 2
    }
  }
  qmxg = {
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    },
    {
      value = -0.35418,
      offset = -8,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 16384},
    {name = " "},
    {value = 1000, type = 16},
    {
      lv = 150,
      offset = -16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0.60000002384,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function Exit()
  print(" Sharpshooters welcome your use ")
  os.exit()
end

cs = "309490246"
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
