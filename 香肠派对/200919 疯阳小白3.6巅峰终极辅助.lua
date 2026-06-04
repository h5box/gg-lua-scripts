
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
function split(szFullString, szSeparator) 
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} 
while true do 
local nFindLastIndex = string.find
(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = 
string.sub(szFullString, nFindStartIndex, string.len
(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub
(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len
(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end

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
    gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "已插入你妈阴道")
      else
        gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
      gg.toast("傻逼脚本:修改" .. #data .. "条数据.开启成功")
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
      gg.toast("\n额一条条数据都没搜索到.修改失败", false)
      return false
    end
  else
    gg.toast("\n额一条条数据都没搜索到.修改失败")
    return false
  end
end

function split0(szFullString, szSeparator)
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

function xgxc0(szpy, qmxg)
  do
    do
      for _FORV_5_ = 1, #qmxg do
        xgpy = szpy + qmxg[_FORV_5_].offset
        xglx = qmxg[_FORV_5_].type
        xgsz = qmxg[_FORV_5_].value
        mskyz = readValue(xgpy, xglx)
        table.insert(ad, {
          address = xgpy,
          flags = xglx,
          freeze = false
        })
        xgsl = xgsl + 1
      end
    end
  end
end

function xqmnb0(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1].memory)
  gg.searchNumber(qmnb[3].value, qmnb[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
                    szpd = split0(pdpd, ";")
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
              xgxc0(szpy, qmxg)
              xgjg = true
            end
          end
        end
      end
      if xgjg == true then
        gg.toast(qmnb[2].name .. "捕获成功,共" .. xgsl .. "条数据")
        mskxgz = qmxg[1].value
        msklx = qmxg[1].type
      else
        gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
      end
    end
  end
end

function split1(szFullString, szSeparator)
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
  return nSplitArr
  end

function xgxc1(szpy, qmxg)
  do
    do
      for _FORV_5_ = 1, #qmxg do
        xgpy = szpy + qmxg[_FORV_5_].offset
        xglx = qmxg[_FORV_5_].type
        xgsz = qmxg[_FORV_5_].value
        tmyz = readValue(xgpy, xglx)
        table.insert(af, {
          address = xgpy,
          flags = xglx
        })
        xgsl = xgsl + 1
      end
    end
  end
end

function xqmnb1(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1].memory)
  gg.searchNumber(qmnb[3].value, qmnb[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
  else
  gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
                    szpd = split1(pdpd, ";")
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
              xgxc1(szpy, qmxg)
              xgjg = true
            end
          end
        end
      end
      if xgjg == true then
        gg.toast(qmnb[2].name .. "捕获成功操你妈,共" .. xgsl .. "条数据")
        tmxgz = qmxg[1].value
        tmlx = qmxg[1].type
      else
        gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
    gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "傻逼脚本:开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "\n额一条条数据都没搜索到.修改失败")
      end
    end
  end
end

function Main()
ZS = gg.choice({
"1.孤儿锁头",
"2.傻逼上色",
"3.无后座",
"4.全家吃老八天线",
"5.爬墙(不稳定)",
"6.跳跃穿墙",
"7.黄皮肤天线",
"8.蹲下加速",
"9.蹲下飞天",
"10.枪械射速",
"11.水上行走",
"12.三种视角第一人称",
"13.拉钩钩距离加长",
"退出", 
}, nil,"操你妈的退出")  --功能
if ZS==1 then HS1() end
if ZS==2 then HS2() end
if ZS==3 then HS3() end
if ZS==4 then HS4() end
if ZS==5 then HS5() end
if ZS==6 then HS6() end
if ZS==7 then HS7() end
if ZS==8 then HS8() end
if ZS==9 then HS9() end
if ZS==10 then HS10() end
if ZS==11 then HS11() end
if ZS==12 then HS12() end
if ZS==13 then HS13() end
if ZS==14 then os.exit() end
FX1=0
end --退出脚本

function HS1()
qmnb = {
  {memory = 36},
  {
    name = "范围锁头"
  },
  {value = 0.019999993965029716, type = 16},
  {
    lv = 3.4281246730216708E-9,
    offset = 4,
    type = 16
  },
  {
    lv = 0.34748032689094543,
    offset = 8,
    type = 16
  },
  {
    lv = 0.3499999940395355,
    offset = 12,
    type = 16
  },
  {
    lv = 0.35000020265579224,
    offset = 16,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 8,
    type = 16
  },
  {
    value = 1,
    offset = 12,
    type = 16
  },
  {
    value = 1.5,
    offset = 16,
    type = 16
  }
}
xqmnb(qmnb)
end

function HS2()
  F = gg.alert("两种人物上色", "蓝社", "白社")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
  elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
  end
end

function HS3()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("无后座开启成功")
end

function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(350)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("天线")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "3.4E+38"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.processResume()
gg.toast("蹦蹦车天线")
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber('1.16546607018', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('手臂天线')
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57410383224", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("四角天线开启成功")
end

function HS5()
  F = gg.alert("爬墙", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.toast("爬墙")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;50::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("爬墙关闭")
    gg.clearResults()
  end
end

function HS6()
  qmnb = {
    {memory = 32},
    {
      name = "操你妈了阴道连跳穿墙已开启"
    },
    {value = 1067869798, type = 4},
    {
      lv = 1065353216,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = -99,
      offset = -4,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function HS7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.47506189346", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("黄皮肤天线开启")
gg.clearResults()
end

function HS8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2.34999990463;2.34999990463;4.55000019073::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('蹲下开启')
end

function HS9()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;1.20000004768::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.20000004768", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("蹲下飞天开启成功")
end

function HS10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.01~0.4;200D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01~0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0.038", gg.TYPE_FLOAT)
  gg.toast("枪械射速开启成功")
end

function HS11()
F = gg.alert("水上行走", "开启", "关闭","退出")
if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.95", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.95;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07999999821", gg. TYPE_FLOAT)
gg.toast("关闭成功")
gg.clearResults()
end
end

function HS12()
  F = gg.alert("三种视角", "第三人称", "第一人称[偏移]", "第一人称")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg.editAll("-9", gg.TYPE_FLOAT)
gg.toast("第三人称[扩大]开启成功")
gg.clearResults()
  elseif F == 2 then
qmnb = {
{["memory"] = 32},
{["name"] = "第一人称"},
{["value"] = 0.2609032392501831, ["type"] = 16},
{["lv"] = 0.550000011920929, ["offset"] = 20, ["type"] = 16},
{["lv"] = -3.799999952316284, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 3 then
  gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("开启成功")
 end
end

function HS13()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1109393408;1059145646:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1,112,593,408", gg.TYPE_DWORD)
    gg.toast("加长拉钩钩距离开启成功")
    gg.clearResults()
  end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main()
  end
end