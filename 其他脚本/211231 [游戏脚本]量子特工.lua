function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {} while true do
    local
    nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
      break end
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len(szSeparator)
    nSplitIndex = nSplitIndex + 1 end return
  nSplitArray end function
  xgxc(szpy, qmxg) for x = 1, #(qmxg) do
    xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"]
    xgsz = qmxg[x]["value"]
    gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
    xgsl = xgsl + 1 end end function
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1]["memory"])
  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2]["name"] .. "开启失败")
   else
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2]["name"] .. "开启失败")
     else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0 if sz > 999999 then
        sz = 999999 end for i = 1, sz do
        pdsz = true for v = 4, #(qmnb) do if
            pdsz == true then
            pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"]
            pysz[1].flags = qmnb[v]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";")
            tzszpd = szpd[1]
            pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true else
              pdjg = false pdsz = false end end end
        if pdjg == true then
          szpy = sl[i].address xgxc(szpy, qmxg)
          xgjg = true end end
      if xgjg == true then
        gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")
       else
        gg.toast(qmnb[2]["name"] .. "开启失败")
      end
    end
  end
end

-----------------------------------------------------------------------------------------

function Main()
  SN = gg.multiChoice({
    "全枪无后",
    "透视人物",
    "透视载具枪械",
    "循环穿墙",
    "人物上色",
    "枪械上色",
    "透视地皮",
    "人物天线",
    "全透地面",
    "全透墙面",
    "全图除树",
    "倍镜五倍放大",
    "天空黑色",
    "人物加速",
    "第三视角",
    "攻击特效",
    "退出脚本️"
  }, nil, "来自TSim")
  if SN == nil then
   else
    if SN[1] == true then
      a()
    end
    if SN[2] == true then
      b()
    end
    if SN[3] == true then
      c()
    end
    if SN[4] == true then
      d()
    end
    if SN[5] == true then
      e()
    end
    if SN[6] == true then
      f()
    end
    if SN[7] == true then
      g()
    end
    if SN[8] == true then
      h()
    end
    if SN[9] == true then
      i()
    end
    if SN[10] == true then
      j()
    end
    if SN[11] == true then
      k()
    end
    if SN[12] == true then
      l()
    end
    if SN[13] == true then
      m()
    end
    if SN[14] == true then
      n()
    end
    if SN[15] == true then
      o()
    end
    if SN[16] == true then
      p()
    end
    if SN[17] == true then
      Exit()
    end
  end
  XGCK = -1
end

function a()
  qmnb = {
{["memory"] = 4},
{["name"] = "全枪无后"},
{["value"] = 7.14236222072502E-40, ["type"] = 16},
{["lv"] = 140749718945792.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2.6584984578649394E36, ["offset"] = 8, ["type"] = 16},
{["lv"] = -53.750003814697266, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 24, ["type"] = 16},

}
xqmnb(qmnb)
end

function b()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "人物透视"},
    {["value"] = 5.018820431940935E21, ["type"] = 16},
    {["lv"] = 1.1020567824621097E-39, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 4.833067213510226E21, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 4.833068339410133E21, ["offset"] = 24, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = 24, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function c()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "枪械载具透视"},
    {["value"] = 1.9353739467344703E-39, ["type"] = 16},
    {["lv"] = 4.814610899287308E21, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 2.0272108441909258E-39, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 4.814612025187215E21, ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = 12, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function d()
  while true do
    gg.sleep(100)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("50~1999F;196,615D;16,842,753D::37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("50~1999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("999", gg.TYPE_FLOAT)
    if gg.isVisible(true) then
      break
    end
  end
end

function e()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "对方人物上红色"},
    {["value"] = 5.142813008219866E-39, ["type"] = 16},
    {["lv"] = 2.272640220960905E22, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 2.4795738105488703E-39, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 8.265306758096355E-40, ["offset"] = 16, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 9, ["offset"] = 16, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function f()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "人物上色"},
    {["value"] = 2.5223372357846707E-44, ["type"] = 16},
    {["lv"] = -1.0285600793067374E-38, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -3.948957163359837E-39, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 3.7500052452087402, ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "人物上色"},
    {["value"] = 2.5223372357846707E-44, ["type"] = 16},
    {["lv"] = -1.0285600793067374E-38, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -3.948957163359837E-39, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 2.387738314390879E-39, ["offset"] = 24, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = 24, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function g()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "地皮上色"},
    {["value"] = 7.174648137343064E-43, ["type"] = 16},
    {["lv"] = 2.3512765283491473E-38, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 2.8677994495188847E-17, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 1.0, ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 99, ["offset"] = 32, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function h()
  qmnb = {
{["memory"] = 4},
{["name"] = "人物天线"},
{["value"] = 1.0640461004660309E24, ["type"] = 16},
{["lv"] = 1.1433300831322335E27, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.0010000000474974513, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 28, ["type"] = 16},

}
xqmnb(qmnb)
end

function i()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "全透地面"},
    {["value"] = 4.760559259509561E21, ["type"] = 16},
    {["lv"] = 3.7505502700805664, ["offset"] = -24, ["type"] = 16},
    {["lv"] = 3.7500007152557373, ["offset"] = -8, ["type"] = 16},
    {["lv"] = 1.1186180558465388E-19, ["offset"] = -4, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = -24, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function j()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "全透墙面"},
    {["value"] = 7.16093850883226E-15, ["type"] = 16},
    {["lv"] = 2.25, ["offset"] = 4, ["type"] = 16},
    {["lv"] = 6.488180045639622E-40, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 3.750549554824829, ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 6, ["offset"] = 12, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function k()
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "全图除树"},
    {["value"] = 45194.01953125, ["type"] = 16},
    {["lv"] = 2.8768657472588494E-42, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -4.340911505780281E-19, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 1.086849667433557E-19, ["offset"] = 16, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 4, ["offset"] = 16, ["type"] = 16},

  }
  xqmnb(qmnb)
end

function l()
  qmnb = {
{["memory"] = 4},
{["name"] = "倍镜5倍放大"},
{["value"] = 1063245141, ["type"] = 4},
{["lv"] = -1192183965, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1087044368, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 1084227584, ["offset"] = 20, ["type"] = 4},

}
xqmnb(qmnb)
end

function m()
qmnb = {
{["memory"] = 1048576},
{["name"] = "黑色天空"},
{["value"] = 1.836808014052327E-40, ["type"] = 16},
{["lv"] = 3.875977039337158, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.3775408501606541E-39, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 6, ["offset"] = 16, ["type"] = 16},

}
xqmnb(qmnb)
end

function n()
  qmnb = {
{["memory"] = 4},
{["name"] = "加速"},
{["value"] = 1.0505648092218764E-38, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -0.024045944213867188, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 3, ["offset"] = 24, ["type"] = 16},

}
xqmnb(qmnb)
end

function o()
qmnb = {
{["memory"] = 4},
{["name"] = "第三视角"},
{["value"] = -9.313225746154785E-10, ["type"] = 16},
{["lv"] = -22.0, ["offset"] = -12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 70, ["offset"] = -12, ["type"] = 16},

}
xqmnb(qmnb)
end

function p()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{5.142813008219866E-39, 0}, {2.272640220960905E22, 4}, {2.4795738105488703E-39, 8}, {8.265306758096355E-40, 16}, }
local tb2 = {{9, 16}, }
SearchWrite(tb1, tb2, dataType)
end

function Exit()
  print("来自TSim")
  os.exit()
end
cs = "来自TSim"

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

