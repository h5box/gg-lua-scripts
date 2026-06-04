
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
    gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "已注入")
      else
        gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
      gg.toast("智仙无敌帅脚本:修改" .. #data .. "条数据.开启成功")
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
      gg.toast("额一条条数据都没搜索到.修改失败", false)
      return false
    end
  else
    gg.toast("额一条条数据都没搜索到.修改失败")
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
    gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
  return nSplitArray
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
    gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "捕获成功,共" .. xgsl .. "条数据")
        tmxgz = qmxg[1].value
        tmlx = qmxg[1].type
      else
        gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
    gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
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
        gg.toast(qmnb[2].name .. "智仙无敌帅脚本:开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "额一条条数据都没搜索到.修改失败")
      end
    end
  end
end

function readValue(addr, type)
  local t = {}
  t[1] = {}
  t[1].address = addr
  t[1].flags = type
  t = gg.getValues(t)
  return tostring(t[1].value)
end
function HS15()
SN = gg.choice({
"蹦蹦车变幽灵战车",
"蹦蹦车变拖拉机『前』",
"蹦蹦车变拖拉机『后』",
"蹦蹦车底盘赛车🏎①号️",
"蹦蹦双层车",
"蹦蹦车的整体陷地",
"蹦蹦车变赛车②号",
"返回",
}, nil, "智仙 智仙 智仙")
if SN==1 then HO1() end
if SN==2 then HO2() end
if SN==3 then HO3() end
if SN==4 then HO4() end
if SN==5 then HO5() end
if SN==6 then HO6() end
if SN==7 then HO7() end
if SN==8 then HOME() end
FX1=0
end
function HO1()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-9999",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞幽灵战车☜")
end
function HO2()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.1031585e-9",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-9",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞拖拉机☜")
end
function HO3()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.1031585e-9",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("9",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞拖拉机☜")
end
function HO4()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("8.89999988e-13",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞底盘赛车☜")
end
function HO5()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞蹦蹦双层车☜")
end
function HO6()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-0.8",gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞蹦蹦车整体陷地☜")
end
function HO7()
gg.toast("正在充钱改装中。。。。。。。。。")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("恭喜你充钱获得🌚🌚🌚☞蹦蹦车变赛车☜")
end
function HOME()
lw=1
Main()
end
function Main()
SN = gg.choice({
"香肠派对环境异常解决问题第一步",
"香肠派对环境异常解决问题第二步(开启后重启游戏)",
"加特林不红",
"散弹聚点(风险特高),不想用了就别用散弹枪",
"全枪自动,想弄M16A4就弄成单点",
"车辆功能",
"无限飞高高(娱乐使用)",
"傻逼子弹穿墙",
"视野除树",
"开镜增加",
"全局加速",
"无后座",
"天线",
"隐身",
"蹦蹦车美化区",
"人物上色",
"傻逼锁头",
"透视-团队竞技不能用",
"连跳穿墙",
"人物大小",
"视野除墙",
"钻石天空",
"上帝视角",
"香肠派对傻逼锁腿-智仙原创思路",
"机甲功能",
"飞天",
"爬墙",
"P18C手枪 高伤(40)",
"狙击枪高伤",
"M4高伤",
"超大第三人称(隐身代码,要开隐身请先恢复",
"🗺退出🗺智仙滴大家庭", 
}, nil, "智仙 智仙 智仙")  --功能
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then HS8() end
if SN==9 then HS9() end
if SN==10 then HS10() end
if SN==11 then HS11() end
if SN==12 then HS12() end
if SN==13 then HS13() end
if SN==14 then HS14() end
if SN==15 then HS15() end
if SN==16 then HS16() end
if SN==17 then HS17() end
if SN==18 then HS18() end
if SN==19 then HS19() end
if SN==20 then HS20() end
if SN==21 then HS21() end
if SN==22 then HS22() end
if SN==23 then HS23() end
if SN==24 then HS24() end
if SN==25 then HS25() end
if SN==26 then FT2() end
if SN==27 then PQ99() end
if SN==28 then GS999() end
if SN==29 then GS69() end
if SN==30 then GS99999() end
if SN==31 then DS99() end
if SN==32 then os.exit() end
FX1=0
end --退出脚本

function HS1()--指定数
  os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/cache")
  gg.toast("开启成功")
end
function HS2()
  os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/files")
  gg.toast("开启成功，请重启游戏")
end
function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1128792064;100;100F",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("99999999",gg.TYPE_DWORD)
gg.toast("加特林不红")
end
function HS4()
gg.setVisible(true)
gg.setVisible(true)
gg.setVisible(true)
gg.setVisible(true)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("散弹聚点开启成功")
end
function HS5()
fw= gg.prompt({i='手持输入目前枪械子弹(子弹数不能低于2)'}, {i='2'})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(""..fw["i"]..";0;0;1;1;1::21",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("全抢自动")
end
function HS6()
gg.alert("吉普车/血量/汽油/:1230/4000\n蹦蹦车/血量/汽油/:1025/50000\n小棉羊/血量/汽油/:820/50000\n小飞碟/血量/汽油/:600/4000\n机甲/血量/汽油/:2000/8000\n呆呆龙/血量/汽油/:1600/8000")
fw= gg.prompt({i='车辆锁血;锁油[必须得满]锁油先不能坐在车上'}, {i='2'})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(""..fw["i"].."", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.alert("现在请消耗血量/油量")
gg.sleep(9000)
gg.searchFuzzy("0", gg.SIGN_FUZZY_LESS, gg.TYPE_FLOAT, 0, -1)
fw= gg.prompt({i='无封号风险'}, {i='2'})
revert = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value =fw["i"]
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("开启成功")
end
function HS7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2701581e28;-1.4186147e28;-1.3262672e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.2701581e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
end
function HS8()
F = gg.alert("子弹穿墙", "开启", "关闭","退出") 
if F == 1 then qmnb = { {["memory"] = 16}, {["name"] = "子弹穿墙"}, {["value"] = 1.0000000116860974E-7, ["type"] = 16}, {["lv"] = 2.0, ["offset"] = -4, ["type"] = 16}, {["lv"] = 2.0, ["offset"] = -8, ["type"] = 16}, {["lv"] = 2.0, ["offset"] = -12, ["type"] = 16}, {["lv"] = 2.0, ["offset"] = -16, ["type"] = 16}, } qmxg = { {["value"] = 99.0, ["offset"] = -4, ["type"] = 16}, {["value"] = 99.0, ["offset"] = -8, ["type"] = 16}, {["value"] = 99.0, ["offset"] = -12, ["type"] = 16}, {["value"] = 99.0, ["offset"] = -16, ["type"] = 16}, } xqmnb(qmnb) elseif F == 2 then qmnb = { {["memory"] = 16}, {["name"] = "子弹穿墙"}, {["value"] = 1.0000000116860974E-7, ["type"] = 16}, {["lv"] = 99.0, ["offset"] = -4, ["type"] = 16}, {["lv"] = 99.0, ["offset"] = -8, ["type"] = 16}, {["lv"] = 99.0, ["offset"] = -12, ["type"] = 16}, {["lv"] = 99.0, ["offset"] = -16, ["type"] = 16}, } qmxg = { {["value"] = 2.0, ["offset"] = -4, ["type"] = 16}, {["value"] = 2.0, ["offset"] = -8, ["type"] = 16}, {["value"] = 2.0, ["offset"] = -12, ["type"] = 16}, {["value"] = 2.0, ["offset"] = -16, ["type"] = 16}, } xqmnb(qmnb) end end

function HS9()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1024;1024;1;1;0.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("视野除树开启成功")
end
function HS10()
qmnb = {
{["memory"] = 32},
{["name"] = "开镜望远镜"},
{["value"] = -2.0, ["type"] = 16},
{["lv"] = -45.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 45.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end
function HS11()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.4", gg.TYPE_FLOAT)
gg.toast("开启成功")
end
function HS12()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("无后座开启成功")
end
function HS13()
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
function HS14()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.10000000149",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("隐身开启成功")
end
function HS16()
  F = gg.alert("两种人物上色", "蓝", "白")
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
function HS17()
qmnb = {
  {memory = 36},
  {
    name = "傻逼锁头"
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
function HS18()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("透视-人物-物品-小范围-通用代码")
end

function HS19()
  qmnb = {
    {memory = 32},
    {
      name = "连跳穿墙开启"
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
function HS20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,065,353,216D;1.0;1.25;1.5;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
fw= gg.prompt({i='修改倍率,建议修改1.5最稳'}, {i='2'})
revert = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value =fw["i"]
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("开启成功")
end
function HS21()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.7;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.7",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("视野除墙开启成功")
gg.clearResults()
end
function HS22()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("钻石天空")
end
function HS23()
gg.setRanges(32)
gg.searchNumber("0.1~0.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.55000001192",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
fw= gg.prompt({i='上帝视角修改=🎮'}, {i='2'})
gg.editAll(fw["i"], gg.TYPE_FLOAT)
gg.toast("开启成功")
end
function HS24()
qmnb = {
{["memory"] = 4+32},
{["name"] = "原创香肠派对锁腿"},
{["value"] = 0.019999993965029716, ["type"] = 16},
{["lv"] = 3.4281246730216708E-9,["offset"] =4, ["type"] = 16},
{["lv"] = 0.34748032689094543,["offset"] =8, ["type"] = 16},
{["lv"] = 0.3499999940395355,["offset"] =12, ["type"] = 16},
{["lv"] = 0.35000020265579224,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = -0.19898,["offset"] =4, ["type"] = 16,["freeze"] = true},
{["value"] = -0.19898,["offset"] =8, ["type"] = 16,["freeze"] = true},
{["value"] = -0.19898,["offset"] =12, ["type"] = 16,["freeze"] = true},
{["value"] = -0.19898,["offset"] =16, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end
function HS25()
SN = gg.choice({
"机甲无限喷+机甲变形无冷却",
"机甲子弹聚点",
"返回",
}, nil, "智仙 智仙 智仙")
if SN==1 then JJ1() end
if SN==2 then JJ2() end
if SN==3 then HOME() end
FX1=0
end
function JJ1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,077,936,128D;5;30;10;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("失败 注意 机甲上开并变身在使用一次")
else
gg.searchNumber("30;5",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value ="-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
gg.toast("开启成功")
gg.clearResults()
end
function JJ2()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('0.55000001192F;3.0F;30.0F;3.0F;3.08285662e-44F::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('3.08285662e-44',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('9999',gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function FT2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("额一条条数据都没搜索到.修改失败")
else
gg.searchNumber("0.07999999821",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("飞天开启成功")
gg.clearResults()
end
end
function PQ99()
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
function GS999()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;21;17~30::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("40", gg.TYPE_DWORD)
gg.toast("9.6毫米子弹、P18C手枪 高伤")
end
function GS69()
  F = gg.alert("三种狙击枪、高伤", "AWM", "98k", "m24")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;120;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("140", gg.TYPE_DWORD)
gg.toast("马格南子弹、AWM狙击枪 高伤")
  elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;77;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("77", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("99", gg.TYPE_DWORD)
gg.toast("7.62毫米子弹、98k狙击枪 高伤")
  elseif F == 3 then
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;88;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("97", gg.TYPE_DWORD)
gg.toast("7.62毫米子弹、m24狙击枪 高伤")
 end
end
function GS99999()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;41;30;750::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("59", gg.TYPE_DWORD)
gg.toast("m416高伤")
end
function DS99()
  F = gg.alert("扩大第三人称", "开启", "关闭")
  if F == 1 then
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.10000000149",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_FLOAT)
gg.toast("开启成功")
  elseif F == 2 then
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("4;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("4",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0.10000000149", gg.TYPE_FLOAT)
gg.toast("开启成功")
  end
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