function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)
function Main()
SN = gg.multiChoice({
"一键开启",
"退出脚本"
}, nil, "原创鹤立QQ:1593077677")
if SN == nil then else
if SN[1] == true then a() end
if SN[2] == true then Exit() end
end XGCK = -1 end



function a()
qmnb = {
{["memory"] = 32},
{["name"] = "ak"},
{["value"] = 10100100, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101001102, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m4"},
{["value"] = 10100400, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101004088, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "M16A4"},
{["value"] = 10100200, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8402, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101002046, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "SCAR-L"},
{["value"] = 10100300, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101003079, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "狗砸"},
{["value"] = 10100500, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8900, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101005019, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "M762"},
{["value"] = 10100800, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101008031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "awm"},
{["value"] = 10300300, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8503, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103003021, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "8倍"},
{["value"] = 20300500, ["type"] = 4},
{["lv"] = 31, ["offset"] = -4, ["type"] = 4},
{["lv"] = 6007, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020242, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "6倍"},
{["value"] = 20301500, ["type"] = 4},
{["lv"] = 31, ["offset"] = -4, ["type"] = 4},
{["lv"] = 6006, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020243, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "4倍"},
{["value"] = 20300400, ["type"] = 4},
{["lv"] = 31, ["offset"] = -4, ["type"] = 4},
{["lv"] = 6005, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020244, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "QBZ"},
{["value"] = 10100700, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101007006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "aug"},
{["value"] = 10100600, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101006020, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "mk47"},
{["value"] = 10100900, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1101009001, ["offset"] = 0, ["type"] = 4},
{["value"] = 1101009001, ["offset"] = -4, ["type"] = 4},
{["value"] = 1101009001, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "uzi"},
{["value"] = 10200100, ["type"] = 4},
{["lv"] = 102, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1102001023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "ump45"},
{["value"] = 10200200, ["type"] = 4},
{["lv"] = 102, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8302, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1102002053, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "平底锅"},
{["value"] = 10800400, ["type"] = 4},
{["lv"] = 108, ["offset"] = -4, ["type"] = 4},
{["lv"] = 3104, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1108004107, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "vector"},
{["value"] = 10200300, ["type"] = 4},
{["lv"] = 102, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8303, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1102003031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "汤姆逊"},
{["value"] = 10200400, ["type"] = 4},
{["lv"] = 102, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8304, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1102004018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "野牛"},
{["value"] = 10200500, ["type"] = 4},
{["lv"] = 102, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8304, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1102005002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "98k"},
{["value"] = 10300100, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103001026, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m24"},
{["value"] = 10300200, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8902, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103002029, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "vss"},
{["value"] = 10300500, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8505, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103005015, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "迷你"},
{["value"] = 10300600, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8506, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103006018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "QBU"},
{["value"] = 10300100, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103010001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "s1897"},
{["value"] = 10400200, ["type"] = 4},
{["lv"] = 104, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8202, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1104002022, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "s12k"},
{["value"] = 10100700, ["type"] = 4},
{["lv"] = 101, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1104003019, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "大菠萝"},
{["value"] = 10500100, ["type"] = 4},
{["lv"] = 105, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8904, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1105001014, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "大盘鸡"},
{["value"] = 10500200, ["type"] = 4},
{["lv"] = 105, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1108002023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "神殿守护者套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 403, ["offset"] = -4, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405634, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "摩托1"},
{["value"] = 1901001, ["type"] = 4},
{["lv"] = 901, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1901018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "摩托2"},
{["value"] = 1901002, ["type"] = 4},
{["lv"] = 901, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1901018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "摩托艇"},
{["value"] = 1912001, ["type"] = 4},
{["lv"] = 912, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1912002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三人摩托车1"},
{["value"] = 1902001, ["type"] = 4},
{["lv"] = 902, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1902013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "3人摩托2"},
{["value"] = 1902002, ["type"] = 4},
{["lv"] = 902, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1902013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车1"},
{["value"] = 1903001, ["type"] = 4},
{["lv"] = 903, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1903023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车2"},
{["value"] = 1903002, ["type"] = 4},
{["lv"] = 903, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1903023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车3"},
{["value"] = 1903003, ["type"] = 4},
{["lv"] = 903, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1903023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车4"},
{["value"] = 1903004, ["type"] = 4},
{["lv"] = 903, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1903023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "越野车1"},
{["value"] = 1907001, ["type"] = 4},
{["lv"] = 907, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1907026, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "越野车2"},
{["value"] = 1907002, ["type"] = 4},
{["lv"] = 907, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1907026, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "越野车3"},
{["value"] = 1907003, ["type"] = 4},
{["lv"] = 907, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1907026, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "船"},
{["value"] = 1911001, ["type"] = 4},
{["lv"] = 911, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1911006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车1"},
{["value"] = 1914001, ["type"] = 4},
{["lv"] = 914, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1914011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车2"},
{["value"] = 1914002, ["type"] = 4},
{["lv"] = 914, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1914011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车3"},
{["value"] = 1914003, ["type"] = 4},
{["lv"] = 914, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1914011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车4"},
{["value"] = 1914004, ["type"] = 4},
{["lv"] = 914, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1914011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车1"},
{["value"] = 1915001, ["type"] = 4},
{["lv"] = 915, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车2"},
{["value"] = 1915002, ["type"] = 4},
{["lv"] = 915, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车3"},
{["value"] = 1915003, ["type"] = 4},
{["lv"] = 915, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "跑车4"},
{["value"] = 1915004, ["type"] = 4},
{["lv"] = 915, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "雨林3轮"},
{["value"] = 1919001, ["type"] = 4},
{["lv"] = 919, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1919011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "3级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "1级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "一级头1"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001074, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "一级头2"},
{["value"] = 502004, ["type"] = 4},
{["lv"] = 502, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001074, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头1"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9997, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002074, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头2"},
{["value"] = 502005, ["type"] = 4},
{["lv"] = 502, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9997, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002074, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "吉普车"},
{["value"] = 1908001, ["type"] = 4},
{["lv"] = 908, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1908036, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "大巴车"},
{["value"] = 1904001, ["type"] = 4},
{["lv"] = 904, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1904013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "手雷"},
{["value"] = 612004000, ["type"] = 4},
{["lv"] = 612, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 612004043, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "烟雾弹"},
{["value"] = 613004000, ["type"] = 4},
{["lv"] = 613, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 613004003, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "闪光蛋"},
{["value"] = 614004000, ["type"] = 4},
{["lv"] = 614, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 614004002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "3级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003074, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "降落伞1"},
{["value"] = 703001, ["type"] = 4},
{["lv"] = 701, ["offset"] = -4, ["type"] = 4},
{["lv"] = 599, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1400769, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "降落伞2"},
{["value"] = 703002, ["type"] = 4},
{["lv"] = 701, ["offset"] = -4, ["type"] = 4},
{["lv"] = 599, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1400769, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "sks"},
{["value"] = 10300400, ["type"] = 4},
{["lv"] = 103, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8504, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1103004018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "沙漠之鹰"},
{["value"] = 10601000, ["type"] = 4},
{["lv"] = 106, ["offset"] = -4, ["type"] = 4},
{["lv"] = 8109, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1106010002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m24消焰器"},
{["value"] = 20100500, ["type"] = 4},
{["lv"] = 13, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5152, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020245, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m24消音器"},
{["value"] = 20100700, ["type"] = 4},
{["lv"] = 13, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5153, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020247, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "狙击扩容"},
{["value"] = 20400700, ["type"] = 4},
{["lv"] = 43, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5351, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020252, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "狙击快速"},
{["value"] = 20400800, ["type"] = 4},
{["lv"] = 43, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5351, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020252, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "快速扩容"},
{["value"] = 20400900, ["type"] = 4},
{["lv"] = 43, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5353, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1030020253, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1909001, ["type"] = 4},
{["lv"] = 909, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1909017, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1910001, ["type"] = 4},
{["lv"] = 910, ["offset"] = -4, ["type"] = 4},
{["lv"] = 585, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1910013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function Exit()
os.exit()
end
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









--[[Welcome to Dluae]]