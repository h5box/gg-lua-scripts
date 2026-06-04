--配置↓↓↓勿修改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法 xqmnb(qmnb)


function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移 "..#t.." 条数据") else gg.toast("未搜到数据！") return false end else gg.toast("未搜到数据！") return false end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
---上面配置请别乱动
function langbai()
langbainb = gg.multiChoice({
"[浪白防封[大厅断网]",--1
"[麒麟659透色[蓝]",--2
--"[未添加]",--5
"返回上一页"--6
}, nil, os.date"当前时间:%Y年-%m月-%d日 %H时 %M分")
if langbainb == nil then else
if langbainb[1] == true then C1() end
if langbainb[2] == true then C2() end
--if langbainb[3] == true then C3() end
--if langbainb[4] == true then C4() end
--if langbainb[5] == true then C5() end
--if langbainb[6] == true then C6() end
if langbainb[3] == true then os.exit() end
end nb=-1 end

function C1()

gg.setRanges(4)
local tb1={  
{["类型"] = 4 ,["主特征码"] = 12915 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 1667199092 },
}
local tb2={
{["类型"]= 4, ["偏移"] = 56 , ["冻结"] = false , ["修改"] = 0 },
} LongTao(tb1, tb2, tb1[1]["类型"])

gg.setRanges(4)
local tb1={  
{["类型"] = 4 ,["主特征码"] = 1342190195 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 1667199092 },
}
local tb2={
{["类型"]= 4, ["偏移"] = 56 , ["冻结"] = false , ["修改"] = 0 },
} LongTao(tb1, tb2, tb1[1]["类型"])

gg.setRanges(4)
local tb1={  
{["类型"] = 4 ,["主特征码"] = 24949 },
{["类型"]= 4 ,["偏移"] = -4 ,["副特征码"] = 1818194036 },
}
local tb2={
{["类型"]= 4, ["偏移"] = 28 , ["冻结"] = false , ["修改"] = 0 },
{["类型"]= 4, ["偏移"] = 40 , ["冻结"] = false , ["修改"] = 0 },
} LongTao(tb1, tb2, tb1[1]["类型"])



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135682  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133634  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135682  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133634  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131842  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134914  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133634  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134914  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131842  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  134914  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134146  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  133378  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135682  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  133378  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134402  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  133378  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134914  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  133378  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134658  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  133378  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待")

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131330  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  65795  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  70658  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135682  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135426  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135170  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134402  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134146  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  147971  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131586  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134914  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  70658  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  196867  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  262403  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  132098  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131330  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待")

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131842  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131842  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135682  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131842  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待")

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134658  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  262403  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待")

gg.toast("请耐心等待")


gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135170  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133634  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135170  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待")

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131330  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131586  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135682  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131586  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134402  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131586  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131586  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131586  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  132098  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131586  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131842  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  132098  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131330  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  132098  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131842  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131842  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  135682  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131842  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  28675  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  131331  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)


gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  134402  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  70658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  70658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131330  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  70658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131586  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  70658  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("请耐心等待，即将完成")

gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135938  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  70658  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  65795  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  133378  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135426  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  1281  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  135426  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  68355  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  1281  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  1281  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  1281  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)



gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  67109633  } , 
{["类型"]= 4 ,["偏移"]= -80 ,["副特征码"]=  131072  },
{["类型"]= 4 ,["偏移"]= -40 ,["副特征码"]=  4096  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -40 ,["冻结"]= false ,["修改"]= 0 },
} LongTao(tb1, tb2)

gg.toast("浪白防封开启成功，请开启网络")
end


function C2()

gg.setRanges(4)
local tb1={  
{["类型"] = 4 ,["主特征码"] = 1056964608 },
{["类型"]= 4 ,["偏移"] = 16 ,["副特征码"] = 1056964608 },
{["类型"]= 4 ,["偏移"] = 76 ,["副特征码"] = 416 },
{["类型"]= 4 ,["偏移"] = 92 ,["副特征码"] = 1 },
{["类型"]= 4 ,["偏移"] = -80 ,["副特征码"] = 0 },
}
local tb2={
{["类型"]= 4, ["偏移"] = 0 , ["冻结"] = true , ["修改"] = 9999 },
{["类型"]= 16, ["偏移"] = -3296 , ["冻结"] = true , ["修改"] = 130 },
} LongTao(tb1, tb2, tb1[1]["类型"])
gg.setRanges(4)
local tb1={ 
{["类型"] =  4  ,["主特征码"] =  1056964608  } , 
{["类型"]= 4 ,["偏移"]= -3296 ,["副特征码"]=  1077936002  },
{["类型"]= 4 ,["偏移"]= 272 ,["副特征码"]=  1056964608  },
{["类型"]= 4 ,["偏移"]= 276 ,["副特征码"]=  1065353216  },
{["类型"]= 4 ,["偏移"]= 280 ,["副特征码"]=  1075838976  },
}
 local tb2={ 
{["类型"]= 4, ["偏移"] = 0 , ["冻结"] = true , ["修改"] = 9999 },
{["类型"]= 16, ["偏移"] = -3296 , ["冻结"] = true , ["修改"] = 130 },
} LongTao(tb1, tb2)
gg.setRanges(4)
local tb1={  
{["类型"] =  4  ,["主特征码"] =  400  } , 
{["类型"]= 4 ,["偏移"]= -576 ,["副特征码"]=  80  },
{["类型"]= 4 ,["偏移"]= -16 ,["副特征码"]=  40  },
{["类型"]= 4 ,["偏移"]= -8 ,["副特征码"]=  8  },
}
 local tb2={ 
 {["类型"]= 4 ,["偏移"]= -576 ,["冻结"]= false ,["修改"]= 15 },
} LongTao(tb1, tb2)

end





while true do
if gg.isVisible(true) then
nb = 1
gg.setVisible(false)
end
gg.clearResults()
if nb == 1 then
langbai()
end
end