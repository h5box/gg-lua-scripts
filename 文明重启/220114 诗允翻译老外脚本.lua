function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳"..#data.."🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳", false) return false end else gg.toast("🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳" .. xgsl .. "🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") else gg.toast(qmnb[2]["name"] .. "🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳") end end end end
local jldz={}function KYXG(DZ,XGSJ,GNM,JLDZ)local t={}for i=1,#DZ do for k,w in ipairs(XGSJ) do offset=w[1]*4 t[#t+1]={}t[#t].address=DZ[i]+offset t[#t].flags=w[2]t[#t].value=w[3]if(w[4]==true)then local item={}item[#item+1]=t[#t]item[#item].freeze=true gg.addListItems(item)end end end gg.setValues(t)gg.toast(GNM.."🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳")end function KY_ZZ(NCLX,SSSJ,XGSJ,GNM)gg.setVisible(false)if jldz[NCLX[4]]==nil then gg.clearResults()gg.setRanges(NCLX[1])gg.searchNumber(NCLX[2],NCLX[3])local count=gg.getResultCount()local result=gg.getResults(count)gg.clearResults()local data={}if(count>0)then for i,v in ipairs(result) do v.isUseful=true end for k=1,#SSSJ do local tmp={}local offset=SSSJ[k][1]*4 local num=SSSJ[k][2]for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp) do if (v.value~=num)then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful)then data[#data+1]=v.address end end if data[1]==nil then gg.toast("🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳")else if NCLX[4]~=false then jldz[NCLX[4]]=data KYXG(data,XGSJ,GNM,"已记录")else KYXG(data,XGSJ,GNM,"🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳")end end else gg.toast(GNM.."🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳")end else KYXG(jldz[NCLX[4]],XGSJ,GNM,"🇨🇳𝙎𝙀𝘼𝙍𝘾𝙃🇨🇳")end end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
index = function()
WH = gg.choice({
	"🇨🇳进入辅助🇨🇳",
	"🇨🇳进入辅助🇨🇳",
	"退出",
}, nil,''..os.date(''))
if WH == 1 then 
A()
end
if WH == 2 then 
B()
end
if WH == 3 then 
Ext()
end
XXS = -1
end

A = function()
menu = gg.multiChoice({
"天线",
"上色白",
"小范围(安全)",
"十倍镜",
"无后",
"高清除草",
"流畅除草",
"水下行走",
"透房",
"透房2",
"全除",
"射速",
"飞天",
"视角",
"黑天",
"退出",
},nil,"🇨🇳▁ ▂ ▄ ▅ ▆ 诗允翻译 ▆ ▅ ▄ ▂ ▁🇨🇳")
if menu == nil then else 
if menu[1] == true then anten() end
if menu[2] == true then boy() end
if menu[3] == true then mgc() end
if menu[4] == true then x10() end
if menu[5] == true then nrc() end
if menu[6] == true then xc() end
if menu[7] == true then time() end
if menu[8] == true then nuoc() end
if menu[9] == true then nha() end
if menu[10] == true then wall() end
if menu[11] == true then map() end
if menu[12] == true then speed() end
if menu[13] == true then fly() end
if menu[14] == true then view() end
if menu[15] == true then xc2() end
if menu[16] == true then HOME() end
end
end


------------------------

B = function()
menu = gg.multiChoice({
"天线",
"上色白",
"小范围(安全)",
"十倍镜",
"无后",
"高清除草",
"流畅除草",
"水下行走",
"透房",
"透房2",
"全除",
"射速",
"飞天",
"视角",
"黑天",
"退出",
},nil,"🇨🇳▁ ▂ ▄ ▅ ▆  诗允翻译 ▆ ▅ ▄ ▂ ▁🇨🇳")
if menu == nil then else 
if menu[1] == true then anten() end
if menu[2] == true then boy() end
if menu[3] == true then mgc() end
if menu[4] == true then x10() end
if menu[5] == true then nrc() end
if menu[6] == true then xc() end
if menu[7] == true then time() end
if menu[8] == true then nuoc() end
if menu[9] == true then nha() end
if menu[10] == true then wall() end
if menu[11] == true then map() end
if menu[12] == true then speed() end
if menu[13] == true then fly() end
if menu[14] == true then view() end
if menu[15] == true then xc2() end
if menu[16] == true then HOME() end
end
end






function anten()
      
      gg.setRanges(32)
      gg.searchNumber(-0.9855342507362366,16,false,536870912,0,-1)
      gg.getResults(999)
      gg.editAll(-999,16)
      gg.clearResults()
      
      gg.setRanges(32)
      gg.searchNumber(-0.9855342507362366,16,false,536870912,0,-1)
      gg.getResults(999)
      gg.editAll(-999,16)
      gg.clearResults()
end


function boy()
F = gg.alert(' Người Trắng', 'ON', 'OFF')
    if F == 1 then

gg.clearResults()
gg.setRanges(32) 
gg.searchNumber("0.75;0.0;3.5873241e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
gg.editAll("999.000012345", gg.TYPE_FLOAT)
gg.clearResults()

elseif F == 2 then
gg.clearResults()
gg.setRanges(32) 
gg.searchNumber("999.000012345", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("999.000012345", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
gg.editAll("0.75", gg.TYPE_FLOAT)
gg.clearResults()


end
end


function mgc()
 
 qmnb = {
  {memory = 32},
  {
    name = "80%"
  },
  {value = 0.30000001192092896, type = 16},
  {
    lv = 0.05999999865889549,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 99,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "90%"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 99,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "100%"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 99,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end
    


function x10()
  gg.clearResults()
      gg.setRanges(32)
          SearchWrite({
            {1111490560, 6584},
            {0, 6588},
            {0, 6596}
          }, {
            {
              1084410514,
              6584,
              false
            }
          }, 4)
          gg.clearResults()
          gg.setRanges(32)
          SearchWrite({
            {1110704128, 36264},
            {0, 36256},
            {0, 36268}
          }, {
            {
              1084410514,
              36264,
              false
            }
          }, 4)
          gg.clearResults()

end



function nrc()

  qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = "12.0", type = 16},
    {
      lv = "6.0",
      offset = 12,
      type = 16
    },
    {
      lv = "35.0",
      offset = 28,
      type = 16
    },
    {
      lv = "790.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = 12, type = 16},
    {
      lv = "6.0",
      offset = 12,
      type = 16
    },
    {
      lv = "35.0",
      offset = 28,
      type = 16
    },
    {
      lv = "830.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
qmnb = {
    {memory = 32},
    {name = "🏳️‍🌈"},
    {value = 14, type = 16},
    {
      lv = "6.0",
      offset = 12,
      type = 16
    },
    {
      lv = "40.0",
      offset = 28,
      type = 16
    },
    {
      lv = "735.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 45, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "60.0",
      offset = 28,
      type = 16
    },
    {
      lv = "300.0",
      offset = 148,
      type = 16
    },
    {
      lv = "15.0",
      offset = 164,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
  qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = 15, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "25.0",
      offset = 28,
      type = 16
    },
    {
      lv = "300.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "1.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = "735.0", type = 16},
    {
      lv = "15.0",
      offset = -148,
      type = 16
    },
    {
      lv = "33.0",
      offset = -144,
      type = 16
    },
    {
      lv = "6.0",
      offset = -136,
      type = 16
    },
    {
      lv = "20.0",
      offset = -108,
      type = 16
    },
    {
      lv = "10.0",
      offset = -96,
      type = 16
    },
    {
      lv = "10.0",
      offset = -92,
      type = 16
    },
    {
      lv = "10.0",
      offset = -88,
      type = 16
    },
    {
      lv = "4.0",
      offset = 16,
      type = 16
    },
    {
      lv = "4.0",
      offset = 24,
      type = 16
    },
    {
      lv = "1.0",
      offset = 160,
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
      offset = -136,
      type = 16
    },
    {
      value = 0,
      offset = -108,
      type = 16
    },
    {
      value = 0,
      offset = -96,
      type = 16
    },
    {
      value = 0,
      offset = -92,
      type = 16
    },
    {
      value = 0,
      offset = -88,
      type = 16
    },
    {
      value = 9999,
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
    },
    {
      value = 0,
      offset = 160,
      type = 16
    }
  }
  xqmnb(qmnb)
  
qmnb = {
    {memory = 32},
    {name = "🇨🇳"},
    {value = 16, type = 16},
    {
      lv = "2.0",
      offset = 12,
      type = 16
    },
    {
      lv = "30.0",
      offset = 28,
      type = 16
    },
    {
      lv = "320.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "5.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
  qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 15, type = 16},
    {
      lv = "6.0",
      offset = 12,
      type = 16
    },
    {
      lv = "30.0",
      offset = 28,
      type = 16
    },
    {
      lv = "710.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 15, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "10.0",
      offset = 40,
      type = 16
    },
    {
      lv = "4.0",
      offset = 112,
      type = 16
    },
    {
      lv = "4.0",
      offset = 116,
      type = 16
    },
    {
      lv = "2.799999952316284",
      offset = 120,
      type = 16
    },
    {
      lv = "40.0",
      offset = 148,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 40,
      type = 16
    },
    {
      value = 0,
      offset = 112,
      type = 16
    },
    {
      value = 0,
      offset = 116,
      type = 16
    },
    {
      value = 9999,
      offset = 148,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = 24, type = 16},
    {
      lv = "24.0",
      offset = 12,
      type = 16
    },
    {
      lv = "10.0",
      offset = 40,
      type = 16
    },
    {
      lv = "4.0",
      offset = 112,
      type = 16
    },
    {
      lv = "4.0",
      offset = 116,
      type = 16
    },
    {
      lv = "2.799999952316284",
      offset = 120,
      type = 16
    },
    {
      lv = "25.0",
      offset = 148,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 40,
      type = 16
    },
    {
      value = 0,
      offset = 112,
      type = 16
    },
    {
      value = 0,
      offset = 116,
      type = 16
    },
    {
      value = 9999,
      offset = 148,
      type = 16
    }
  }
  xqmnb(qmnb)
    qmnb = {
    {memory = 32},
    {name = "️‍🇨🇳"},
    {value = "480.0", type = 16},
    {
      lv = "20.0",
      offset = -148,
      type = 16
    },
    {
      lv = "40.0",
      offset = -144,
      type = 16
    },
    {
      lv = "6.0",
      offset = -136,
      type = 16
    },
    {
      lv = "60.0",
      offset = -120,
      type = 16
    },
    {
      lv = "0.5",
      offset = -100,
      type = 16
    },
    {
      lv = "4.0",
      offset = 16,
      type = 16
    },
    {
      lv = "4.0",
      offset = 24,
      type = 16
    },
    {
      lv = "1.0",
      offset = 160,
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
      offset = -136,
      type = 16
    },
    {
      value = 0,
      offset = -120,
      type = 16
    },
    {
      value = 0,
      offset = -100,
      type = 16
    },
    {
      value = 9999,
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
    },
    {
      value = 0,
      offset = 160,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 45, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "60.0",
      offset = 28,
      type = 16
    },
    {
      lv = "300.0",
      offset = 148,
      type = 16
    },
    {
      lv = "13.0",
      offset = 164,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 14, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "25.0",
      offset = 28,
      type = 16
    },
    {
      lv = "360.0",
      offset = 148,
      type = 16
    },
    {
      lv = "4.0",
      offset = 164,
      type = 16
    },
    {
      lv = "4.0",
      offset = 172,
      type = 16
    },
    {
      lv = "5.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 172,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "️‍🇨🇳"
    },
    {value = 45, type = 16},
    {
      lv = "3.0",
      offset = 12,
      type = 16
    },
    {
      lv = "60.0",
      offset = 28,
      type = 16
    },
    {
      lv = "300.0",
      offset = 148,
      type = 16
    },
    {
      lv = "15.0",
      offset = 164,
      type = 16
    },
    {
      lv = "8.0",
      offset = 192,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16
    },
    {
      value = 0,
      offset = 12,
      type = 16
    },
    {
      value = 0,
      offset = 28,
      type = 16
    },
    {
      value = 99999,
      offset = 148,
      type = 16
    },
    {
      value = 0,
      offset = 164,
      type = 16
    },
    {
      value = 0,
      offset = 192,
      type = 16
    }
  }
  xqmnb(qmnb)
  
end

 
 
 -------------------------------
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 

function xc()
  F = gg.alert(' Xoá Cỏ Cây ', 'ON', 'OFF')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('2.37555074692', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.00012348', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('3.48975166e-39', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.00012347', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('2.02039353e-39', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.00012346', gg.REGION_C_BSS)
      


      
      gg.clearResults()
      gg.clearList()
      
    elseif F == 2 then
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.00012346', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('2.02039353e-39', gg.TYPE_FLOAT)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.00012347', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.48975166e-39', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0012348', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('2.37555074692', gg.TYPE_FLOAT)
      
      
      
      
      gg.clearResults()
      
      gg.clearList()
    end
  end
 


function time()
  F = gg.alert(' Xoá Cỏ Cây ', 'ON', 'OFF')
    if F == 1 then
  
      

      --thap
      
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.65304033e-39', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.0000121', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.92855663e-39', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.0000122', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('3.48975166e-39', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.0000123', gg.REGION_C_BSS)
      
      gg.clearResults()
      gg.clearList()
      
    elseif F == 2 then
      
      
   --   thap

      
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000121', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.65304033e-39', gg.REGION_C_BSS)
      gg.clearResults()
      

      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000122', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.92855663e-39', gg.REGION_C_BSS)
      
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000123', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.48975166e-39', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000121', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.65304033e-39', gg.REGION_C_BSS)
      gg.clearResults()
      

      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000122', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.92855663e-39', gg.REGION_C_BSS)
      
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0000123', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.48975166e-39', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.clearList()
    end
  end




function xc2()
F = gg.alert("Day and night", "ON","OFF")
  if F == 1 then
gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1,004,243,884D;9.2194229e-41;-1D::", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("9.2194229e-41",16,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(1)
    gg.editAll("999",16)
    gg.clearList() 
    elseif F == 2 then
  gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1,004,243,884D;999;-1D::", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("999",16,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(1)
    gg.editAll("9.2194229e-41",16)
    gg.clearList() 
    end
    end

function nuoc()

  
  F = gg.alert(' Đi Dưới Nước', 'ON', 'OFF')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber('1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.searchNumber('10000', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.0012345', gg.REGION_C_BSS)
      gg.clearResults()
      
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber('0.0012345', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('10000', gg.TYPE_FLOAT)
      gg.clearResults()
    
    end
  end
  
  
  
  
  
  

function nha()
 F = gg.alert(' Nhìn Xuyên Gổ Đá Cần Chỉnh Đồ Hoạ Về ( Low ) Sắt Thép Chỉnh Về ( Cao )', 'ON', 'OFF')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('3.21460819e-29', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.0012345', gg.REGION_C_BSS)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('3.25405304e-29', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.00123456', gg.REGION_C_BSS)
      gg.clearResults()
      gg.clearList()
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.0012345', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.21460819e-29', gg.TYPE_FLOAT)
      gg.clearResults()
      
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.00123456', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.25405304e-29', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.clearList()
    end
  end


function wall()
      F = gg.alert(' Nhìn Xuyên Nhà Từ Xa Cần Chỉnh Đồ Hoạ Lên ( Cao )', 'ON', 'OFF')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('3.19488998e-29', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.001234567', gg.REGION_C_BSS)
      gg.clearResults()
      gg.clearList()
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.001234567', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('3.19488998e-29', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.clearList()
    end
  end

function map()
      F = gg.alert("Remove map〔BULLET〕", "ON", "OFF")
  if F == 1 then
    ye()
  elseif F == 2 then
    yf()
  end
end

function ye()
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
      gg.setRanges(16440)
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

function yf()
  gg.setRanges(4)
  for _FORV_3_ = 1, 1 do
    if gg.isVisible(true) then
      gg.setRanges(4)
      SearchWrite({
        {"20.303", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"16.09", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {"7.098", 0},
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
          {"20.303", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"16.09", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {"7.098", 0},
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
        {"9.0785", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"0.05556", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(16440)
      gg.setRanges(16444)
      for _FORV_11_ = 1, 1 do
        if gg.isVisible(true) then
          gg.setRanges(4)
          SearchWrite({
            {"20.303", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"16.09", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {"7.098", 0},
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
              {"20.303", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"16.09", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {"7.098", 0},
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
            {"5Ⅰ000", 16}
          }, 84)
          gg.setRanges(4)
          for _FORV_19_ = 1, 1 do
            if gg.isVisible(true) then
              gg.setRanges(4)
              SearchWrite({
                {"20.303", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"16.09", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {"7.098", 0},
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
                  {"20.303", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"16.09", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {"7.098", 0},
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
                {"16", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"20", 16}
              }, 16)
              gg.clearResults()
            end
          end
        end
      end
    end
  end
end
    
    
    
function speed()
      F = gg.alert("Speed", "Super Fast Spam Bullet Pistol","OFF","Fast")
  if F == 1 then
gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.18177720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("1.20000019073",16)
    gg.clearList() 
    elseif F == 2 then
  gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("5.00000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.18177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1.20000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    
    
    
    gg.clearList() 
    elseif F == 3 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14777720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("5.00000019073",16)
    gg.clearList() 
    
    
    end
    end
   
function fly()
      gg.setRanges(32)
  for _FORV_3_ = 1, 1 do
    if gg.isVisible(true) then
      gg.setRanges(32)
      SearchWrite({
        {"39.093", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(32)
      SearchWrite({
        {"27.05190", 0},
        {"7", -16},
        {"8", 32}
      }, {
        {"10", 16}
      }, 16)
      gg.clearResults()
      gg.setRanges(32)
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
        gg.setRanges(32)
        SearchWrite({
          {"39.093", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(32)
        SearchWrite({
          {"27.05190", 0},
          {"7", -16},
          {"8", 32}
        }, {
          {"10", 16}
        }, 16)
        gg.clearResults()
        gg.setRanges(32)
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
      gg.setRanges(16440)
      gg.setRanges(16444)
      for _FORV_11_ = 1, 1 do
        if gg.isVisible(true) then
          gg.setRanges(32)
          SearchWrite({
            {"39.093", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(32)
          SearchWrite({
            {"27.05190", 0},
            {"7", -16},
            {"8", 32}
          }, {
            {"10", 16}
          }, 16)
          gg.clearResults()
          gg.setRanges(32)
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
            gg.setRanges(32)
            SearchWrite({
              {"39.093", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(32)
            SearchWrite({
              {"27.05190", 0},
              {"7", -16},
              {"8", 32}
            }, {
              {"10", 16}
            }, 16)
            gg.clearResults()
            gg.setRanges(32)
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
          gg.setRanges(16440)
          gg.setRanges(16444)
          for _FORV_19_ = 1, 1 do
            if gg.isVisible(true) then
              gg.setRanges(32)
              SearchWrite({
                {"39.093", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(32)
              SearchWrite({
                {"27.05190", 0},
                {"7", -16},
                {"8", 32}
              }, {
                {"10", 16}
              }, 16)
              gg.clearResults()
              gg.setRanges(32)
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
                gg.setRanges(32)
                SearchWrite({
                  {"39.093", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(32)
                SearchWrite({
                  {"27.05190", 0},
                  {"7", -16},
                  {"8", 32}
                }, {
                  {"10", 16}
                }, 16)
                gg.clearResults()
                gg.setRanges(32)
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
              gg.setRanges(16440)
              gg.setRanges(16444)
              for _FORV_27_ = 1, 1 do
                if gg.isVisible(true) then
                  gg.setRanges(32)
                  SearchWrite({
                    {"39.093", 0},
                    {"7", -16},
                    {"8", 32}
                  }, {
                    {"10", 16}
                  }, 16)
                  gg.clearResults()
                  gg.setRanges(32)
                  SearchWrite({
                    {"27.05190", 0},
                    {"7", -16},
                    {"8", 32}
                  }, {
                    {"10", 16}
                  }, 16)
                  gg.clearResults()
                  gg.setRanges(32)
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
                    gg.setRanges(32)
                    SearchWrite({
                      {"39.093", 0},
                      {"7", -16},
                      {"8", 32}
                    }, {
                      {"10", 16}
                    }, 16)
                    gg.clearResults()
                    gg.setRanges(32)
                    SearchWrite({
                      {"27.05190", 0},
                      {"7", -16},
                      {"8", 32}
                    }, {
                      {"10", 16}
                    }, 16)
                    gg.clearResults()
                    gg.setRanges(32)
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
                  gg.setRanges(32)
                  for _FORV_35_ = 1, 1 do
                    if gg.isVisible(true) then
                      gg.setRanges(32)
                      SearchWrite({
                        {"39.093", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"10", 16}
                      }, 16)
                      gg.clearResults()
                      gg.setRanges(32)
                      SearchWrite({
                        {"27.05190", 0},
                        {"7", -16},
                        {"8", 32}
                      }, {
                        {"10", 16}
                      }, 16)
                      gg.clearResults()
                      gg.setRanges(32)
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
                        gg.setRanges(32)
                        SearchWrite({
                          {"39.093", 0},
                          {"7", -16},
                          {"8", 32}
                        }, {
                          {"10", 16}
                        }, 16)
                        gg.clearResults()
                        gg.setRanges(32)
                        SearchWrite({
                          {"27.05190", 0},
                          {"7", -16},
                          {"8", 32}
                        }, {
                          {"10", 16}
                        }, 16)
                        gg.clearResults()
                        gg.setRanges(32)
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



function view()
      gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll('3', gg.TYPE_FLOAT)
end




function Ext()
print(" \n #")
os.exit()
end


while true do
if gg.isVisible(true) then
XXS = 1
gg.setVisible(false)
end
gg.clearResults()
if XXS == 1 then
index()
end
end