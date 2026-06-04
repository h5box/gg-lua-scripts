function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启成功")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启成功")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启成功") end end end end
function ZBY(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.alert(qmnbn.."开启失败")end end end 


function Main()
menu = gg.multiChoice({
"💖辣鸡实羽💖",
"同意实羽是最垃圾点的这里👉",
"同意实羽是最垃圾点的这里👉",
"退出脚本",
}, nil, "实羽辣鸡")
if menu == nil then else 
if menu[1] == true then A() end 
if menu[2] == true then QQ() end
if menu[3] == true then JJ() end  
if menu[4] == true then
Exit() end end XGCK = -1 end

function A()
SN = gg.choice({
    "",
  }, nil, "需知：👑实羽辣鸡👑，直接大厅开完就行，不要忘了改1777666为16384哦！")
  if SN == 1 then yiyz_Main() end
  XGCK = -1 end



function QQ()
qs = gg.multiChoice({
"大厅防封1",
"大厅防封2",
"大厅防封3",
"退出脚本",
}, nil, "👑实羽辣鸡👑，温馨提示:(修改器隐藏23,旁路模式选择没有,先开第一步,开完等一分钟左右开第二步,开完第二步再开第三、四步，防可以多开几遍，因为担心会漏值，期间请勿切屏)")
if qs == nil then else 
if qs[1] == true then q1() end
if qs[2] == true then q2() end
if qs[3] == true then q3() end
if qs[4] == true then Main() end 
end XGCK = -1 end

function q1()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1310737;18812:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.searchNumber("8,192;65,536;8,194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8,192;65,536;8,194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("17441", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
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
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1777777"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


end






function q2()

gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("1777666;1777777", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16384"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end







function q3()

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("131072;262144;16384:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131072;262144;16384:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("65,536;30,001;4,096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65,536;30,001;4,096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("4,096;8,192;10,240;16,384;32,768;65,536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2131;10240;70,658;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2131;10240;70,658;131,330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil



end






function JJ()
SN = gg.multiChoice({
  "☁660透视上色防闪💨",
  "☁无抖聚💨",
  "☁人物2倍💨",
  "☁上帝视角💨",
  "☁人物天线💨",
  "☁除草+天空黑💨",
  "☁cd瞬击💨",
  "☁跳伞加速💨",
  "☁855透视上色防闪💨",
  "☁一秒落地💨",
  "☁鸡腿近战+全屏💨",
  "☁强锁+全屏💨",
  "☁半强锁+全屏💨",
  "☁全车加速💨",
  "2关闭加速✘",  
  "全车加速✘",
  "秒刹车✘",
  "退出脚本"
 }, nil, "小陈自用变态脚本")
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
   q()
  end
  if SN[18] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
qmnb = {
        {memory = 1048576},
        {name = "马赛克"},
        {value = -5.5695588E-40, type = 16},
        {
          lv = 4.8331922E21,
          offset = -132,
          type = 16
        },
        {
          lv = 9.1842503E-41,
          offset = -120,
          type = 16
        }
      }
      qmxg = {
        {
          value = 5444,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 1048576},
        {name = "透视"},
        {value = -2.7610737E-39, type = 16},
        {
          lv = 4.906848E21,
          offset = -132,
          type = 16
        },
        {
          lv = 1.3833282E-39,
          offset = -120,
          type = 16
        }
      }
      qmxg = {
        {
          value = 5444,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
qmnb = {
        {memory = 1048576},
        {name = "绿色"},
        {value = 8201, type = 4},
        {
          lv = 1080033288,
          offset = -132,
          type = 4
        },
        {
          lv = 285474832,
          offset = -120,
          type = 4
        }
      }
      qmxg = {
        {
          value = 7,
          offset = 0,
          type = 4
        }
      }
xqmnb(qmnb)
qmnb = {
        {memory = 1048576},
        {
          name = "偏移房区防闪"
        },
        {value = -8.3241613E-40, type = 16},
        {
          lv = 5.8013756E-42,
          offset = -8,
          type = 16
        },
        {
          lv = 4.7592633E21,
          offset = -4,
          type = 16
        },
        {
          lv = 4.796158E21,
          offset = 4,
          type = 16
        },
        {
          lv = 2,
          offset = 200,
          type = 16
        }
      }
      qmxg = {
        {
          value = 8.3241613E-40,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 1048576},
        {
          name = "偏移山体防闪"
        },
        {value = -6.488152E-40, type = 16},
        {
          lv = 2.2960275E-41,
          offset = -8,
          type = 16
        },
        {
          lv = 6.50000238419,
          offset = -4,
          type = 16
        },
        {
          lv = 4.7604163E21,
          offset = 4,
          type = 16
        },
        {
          lv = 5.6051939E-45,
          offset = 8,
          type = 16
        },
        {
          lv = 2,
          offset = 144,
          type = 16
        }
      }
      qmxg = {
        {
          value = 6.488152E-40,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
end




function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功🌴")
end



function c()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.123", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速开启成功")
end



function d()
gg.clearResults()    
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("420", gg.TYPE_FLOAT)
gg.toast("上帝视角开启成功")
end



function e()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.alert("天线开启成功")
end

function f()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("10000;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除草开启成功")
gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('671,236,104;1,669,562,379;671,236,105;8,200:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('8200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('6',gg.TYPE_DWORD)
	gg.toast('唯美天空开启成功')
end




function g()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-293,741,873", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-293,741,873", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("顺机开启成功")
end



function h()
gg.setRanges(32)
    SearchWrite({
      {20000, -80},
      {750, -64},
      {1.0E-4, -8},
      {5.0000002E-4, 0}
    }, {
      {0.1, 0}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {-2.4787817999999998E20, -8},
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-2.8246552E28, 8}
    }, {
      {0, 0}
    }, 16)
  gg.toast("15秒后关闭下降加速")
gg.sleep(15000)
    gg.setRanges(32)
    SearchWrite({
      {20000, -80},
      {750, -64},
      {1.0E-4, -8},
      {0.10000000149, 0}
    }, {
      {5.0000002E-4, 0}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {-2.4787817999999998E20, -8},
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-2.8246552E28, 8}
    }, {
      {-6.1526231E27, 0}
    }, 16)
end



function i()
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移马赛克"},
{["value"] = 2.25048828125, ["type"] = 16},
{["lv"] = -1.8368781e-40, ["offset"] = 108, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 108, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移透明"},
{["value"] = 2.3877327e-39, ["type"] = 16},
{["lv"] = -2.7610905e-39, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 16, ["type"] = 16},

}
xqmnb(qmnb)
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 284426242, ["type"] = 4},
{["lv"] = 1075317250, ["offset"] = 4, ["type"] = 4},
{["lv"] = 13, ["offset"] = 8, ["type"] = 4},
{["lv"] = 8200, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 40, ["type"] = 4},

}
xqmnb(qmnb)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.7223699e21;3.7313215e-40;4.7777084e21;5.5681716e-40;4.7592622e21;9.7635471e-41;4.722367e21;2.8130226e-40;4.7223665e21;9.7641076e-41;4.759265e21;5.8013756e-42;4.7592633e21;-8.3241613e-40;4.796158e21;1.3452465e-43;1.3912516e-19;7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;46.0078125;5.2806111e-40;3.0230535e23;2.2963078e-41;6.50000333786;8.4077908e-45;1.1202013e-19;1.2611686e-44;1.1202017e-19;3.7615819e-37;2.0::253", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("房子防闪开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.8946536e-40;4.7777107e21;4.6498026e-40;4.7961563e21;5.5681155e-40;4.7223676e21;9.7625661e-41;4.7777084e21;1.8947517e-40;4.7961546e21;4.8214336e-40;3.1875977e23;6.4864845e-40;4.7223693e21;2.8130226e-40;4.7223665e21;4.6498306e-40;4.7961574e21;5.8013756e-42;4.7961557e21;2.2960275e-41;6.50000238419;-6.488152e-40;4.7604163e21;5.6051939e-45;1.1202011e-19;9.8090893e-45;1.1202015e-19;3.7615819e-37;255.0;1.0;2.0::233", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("山体防闪开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.0230535e23;6.50000333786;1.1202013e-19;1.1202017e-19;3.7615819e-37;2.0;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("透视防闪开启成功")
end



function j()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=999999
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=999999
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=999999
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=999999
gg.setValues(setvalues)
gg.toast("一秒落地")
end
end
end
end
end



function k()
  gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("xa鸡腿自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
end



function l()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
end



function m()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("自瞄锁身開啟成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")

end



function n()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "全车加速"},
{["value"] = 50, ["type"] = 16},
{["lv"] = 5, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = -0.23, ["offset"] = 40, ["type"] = 16},
}
xqmnb(qmnb)
end



function o()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.123;1.123;1.123;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速成功")
end



function p()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "全车加速"},
{["value"] = 50, ["type"] = 16},
{["lv"] = 5, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = -0.23, ["offset"] = 40, ["type"] = 16},
}
xqmnb(qmnb)
end




function q()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end


function Exit()
print("👑辣鸡实羽👑")
os.exit()
end
cs = "👑辣鸡实羽👑"



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


