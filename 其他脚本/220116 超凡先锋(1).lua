function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "修改中,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end



function Main()
  SN = gg.multiChoice({
    "超高清透视",
    "超高清上色",
    "不减伤范围",
    "人物变大",
    "流畅2F透视",
    "流畅上色",
    "做个好人",
  }, nil, "超凡先锋888功能 你能耐我何💘 " .. sj)
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
  qmnb = {
    {memory =1048576},
    {name = "透视第一步"},
    {value =537149457, type = 4},
    {
      lv =537149456,
      offset =-16,
      type = 4
    },
    {
      lv =537149455,
      offset =-24,
      type = 4
    },
  }
  qmxg = {
    {
      value = 5444,
      offset = -36,
      type = 16
    },
  }
  xqmnb(qmnb)
  
 qmnb = {
    {memory =1048576},
    {name = "透视第二步"},
    {value =539246614, type = 4},
    {
      lv =537151750,
      offset = -8,
      type = 4
    },
    {
      lv =537151748,
      offset =-16,
      type = 4
    }
  }
  qmxg = {
    {
      value = 5444,
      offset = -28,
      type = 16
    }
  }
  xqmnb(qmnb)

  
end





function a2()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8219;1280;1,074,790,400::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8219", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("开启成功")
end



function a3()
qmnb = {
	 {["memory"] = 4},
{["name"] = "不减伤范围"},
{["value"] = 0.08, ["type"] = 16},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = 4.75, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end


function a4()
gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.4", gg.TYPE_FLOAT)
  gg.toast("变大开启成功")
end


function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.90683561e21F;4.90683843e21F;4.90683674e21F;3.75000452995F;3.76158192e-37F;2.0F;-1.0F;0.00999999978F;9.99999997e-7F;1.0F:213", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50", gg.TYPE_FLOAT)
  gg.toast("888透视开启成功①")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.75000476837F;4.94372797e21F;5.23888601e21F;5.0175234e21F;4.9806209e21F;5.12934834e21F;2.2500038147F;2.25F;4.72237662e21F;5.01752396e21F;5.01752452e21F;5.01751439e21F;2.0F;1.66230423e-19F:177", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50", gg.TYPE_FLOAT)
  gg.toast("888透视开启成功②")
  
end



function a6()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,211D;1,081,083,904D;1,669,627,904D;1,081,081,857D:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8211", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function Exit()
  print("🌹🌹" .. sj)
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
