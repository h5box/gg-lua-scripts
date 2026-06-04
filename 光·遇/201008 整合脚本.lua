--[[ ys = 2
 function gg.toast(txt)
 if ys == 1 then gg.diyToast(txt,0xff000000,0xd9fedfe1) end
if ys == 2  then gg.diyToast(txt,0xff000000,0xd9fedfe1) end  --白
if ys == 3  then gg.diyToast(txt,0xff000000,0xd9fedfe1) end--绿
if ys == 4 then gg.diyToast(txt,0xff000000,0xd9fedfe1)  end--蓝
if ys == 5  then gg.diyToast(txt,0xff000000,0xd9fedfe1) end--红
if ys == 6 then  gg.diyToast(txt,0xff000000,0xd9fedfe1) end--樱
if ys == 7 then gg.diyToast(txt,0xff000000,0xd9fedfe1) end--鼠
if ys == 8 then gg.diyToast(txt,0xff000000,0xd9fedfe1) end--叶
if ys == 9 then  gg.diyToast(txt,0xff000000,0xd9fedfe1) end--紫

 if ys ~= 9 then
ys = ys +1
else 
ys = 1

 --end end
gg.toast("加载1\n加载2\n加载3（马上好了）\n")


如有侵权，请联系Q2013786121
开源脚本仅供学习，请勿倒卖或做商业用途，后果引起的法律责任与本人无关！！！！！


我没有加密，你可以很容易抓到此源码
欢迎各位对此脚本进行补充、纠正


本人从未进行任何商业用途并始终强调此脚本为整合，免费发布
欢迎各位补充、纠正，但请不要在未修改实质功能的情况下署名转发
尊重各位原作者

]]--

  function initRamRange()
    gg.toast("正在初始化内存范围")
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("000003E7h", 4)
a = gg.getResults(1).address
gg.clearResults()
YF_Start = string.format("%#x", a - 2000000000)
YF_End = string.format("%#x", a + 500000000)

if YF_End ~= nil then
	gg.toast("加载中")

else
	gg.toast("亲，你可以重新启动试一试哟")
	os.exit()
end




    gg.clearResults()
end
initRamRange()

function YF_Search(value, type)
	gg.clearResults()
	gg.searchNumber(value, type, false, gg.SIGN_EQUAL,"0x" .. YF_Start, "0x" .. YF_End)
end
function init_game()
  gg.setVisible(false)
 -- gg.playMusic("http://d.datouwang.com/uploads/file/yinxiao/2017/yinxiao363.mp3")
  gg.toast("加载中请等待")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD)
  gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
  local ks = gg.getResultCount()
  if ks ~= 0 then
    local lll = gg.getResults(ks)
    local tmp = {}
    do
      do
        for _FORV_6_, _FORV_7_ in pairs(lll) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_7_.address + 108
          tmp[#tmp].flags = gg.TYPE_DWORD
        end
      end
    end
    local tmp = gg.getValues(tmp)
    do
      do
        for _FORV_7_, _FORV_8_ in pairs(tmp) do
          if _FORV_8_.value == 1 then
            cspy = _FORV_8_.address + 60
            break
          end
        end
      end
    end
    gg.toast("✔人物核心 初始化成功")
  else
    gg.toast("人物核心获取失败❌请重启游戏与辅助")
    gg.sleep(1000)
    os.exit()
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1,487,508,559", 4)
  gg.refineNumber("1,487,508,559", 4)
  local resultCount = gg.getResultCount()
  if resultCount ~= 0 then
    local csmw = gg.getResults(resultCount)
    local tmp = {}
    do
      do
        for _FORV_7_, _FORV_8_ in ipairs(csmw) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_8_.address + 4
          tmp[#tmp].flags = 4
        end
      end
    end
    tmp = gg.getValues(tmp)
    do
      do
        for _FORV_7_, _FORV_8_ in ipairs(tmp) do
          if _FORV_8_.value == 11 then
            csdz = tmp[_FORV_7_].address + 8
            break
          end
        end
      end
    end
    KG_cs = "开1"
    gg.toast("✔遇境核心 初始化成功")
  else
    gg.toast("遇境核心获取失败部分功能暂不可用\n❌请重启游戏与辅助❌")
    gg.sleep(2000)
    KG_cs = "关"
  end
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-134,744,073", gg.TYPE_DWORD)
  local lzdr = gg.getResultCount()
  if lzdr ~= 0 then
    local lz = gg.getResults(lzdr)
    local tmp = {}
    do
      do
        for _FORV_8_, _FORV_9_ in pairs(lz) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_9_.address + 104
          tmp[#tmp].flags = gg.TYPE_DWORD
        end
      end
    end
    tmp = gg.getValues(tmp)
    do
      do
        for _FORV_8_, _FORV_9_ in pairs(tmp) do
          if _FORV_9_.value == 63 then
            lz[1] = tmp[_FORV_8_]
            break
          end
        end
      end
    end
    dthx = {}
    dthx[1] = {}
    dthx[1].address = lz[1].address - 112
    dthx[1].flags = 4
    if KG_cs == "开1" then
      KG_cs = "开"
    end
    gg.toast("✔地图核心 初始化成功")
  else
    gg.toast("地图核心获取失败❌部分功能暂不可用\n❌请重启游戏与辅助❌")
    gg.sleep(2000)
    KG_cs = "关"
  end
  gg.clearResults()
end
init_game()
local XianShen_ShanYi = false
local XianShen_XiHuo = true
local fw = nil
function fffff()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber('2.5',gg.TYPE_FLOAT)
  gg.refineNumber('2.5',gg.TYPE_FLOAT)
  local cf = gg.getResults(1)
  gg.clearResults()
  return cf[1].address
end
local fw = fffff()
function gg.searchNumberC(...)
  local arg = {...}
  gg.searchNumber(arg[1],arg[2],false, gg.SIGN_EQUAL,0x7000000000,fw)
end
FX2 = nil
FX = "home"
local dz = fffff()
local resultCount = 0
local result = {}
local zero = {}
local datas = {}
local csm = {}
local data = {}
local datax = {}
local tmp = {}
local energy = {}
local energy_status = false
local mFreeze1 = false
local mFreeze2 = false
local xyz = {}
local IDs = 0
local resultCount = 0
local result = {}
local tmp = {}
local data = {}
local zero ={}
local dengji = {}
local energy = {}
local energy_status = false
local mFreeze1 = false
local mFreeze2 = false
local xyz = {}
local lazhu = {}
local zer = {}
local lzdz = {}
local sdu = 1
local dsb1 = {}
local dsb2 = {}
local dsb3 = {}
local dsb4 = {}
local dsb5 = {}
local dsb6 = {}
local dsb7 = {}
local dsb8 = {}
local Count = 0
local pt1 = {}
local dsb9 = {}
local dsb10 = {}
local dian = "off"
local dianhuo = "off"
local lazhu = "off"
local zhahua = "off"
local hua = "off"
local X = {}
local tp = {} 
tt = {}
--------------开先祖-------------------------
--[[
	By：狗头
]]--

local _SEARCH = ("414084241")

XianShen_Dz = nil
function ChuSi()
 
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("-1,067,909,120", gg.TYPE_DWORD)
  gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg >= 1 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address + 60
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_DWORD
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 1 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        break
      end
    end
    local XianShen_Tpp = {}
    XianShen_Tpp[1] = {}
    XianShen_Tpp[1].address = XianShen_Zjg[1].address+124
    XianShen_Tpp[1].flags = gg.TYPE_DWORD
    XianShen_Dz = gg.getValues(XianShen_Tpp)
    gg.clearResults()
    
   else
    gg.toast("亲 重启游戏试一下哟")
    err()
  sleep(80000)
    os.exit()
  end
end
ChuSi()

--先祖代码
local Data = {}
Data[1] = 3666569351 -- 晨岛二
Data[2] = 4249009249 -- 晨岛三
Data[3] = 1466879858 -- 云野哈欠
Data[4] = 64338276 -- 云野蝴蝶
Data[5] = 2540775602
Data[6] = 1568825369
Data[7] = 2851084244
Data[8] = 3063270590
Data[9] = 1060667581
Data[10] = 3881128326
Data[11] = 4182042971
Data[12] = 419578801
Data[13] = 1156673674
Data[14] = 2381086145
Data[15] = 1464190897
Data[16] = 3576552037
Data[17] = 3930381583
Data[18] = 1728053750
Data[19] = 3307167098
Data[20] = 1942389483
Data[21] = 3809307521
Data[22] = 2395108553
Data[23] = 2859830090
Data[24] = 416637648
Data[25] = 3768849824
Data[26] = 3630339793
Data[27] = 2886532097
Data[28] = 4155738138
Data[29] = 1999438929
Data[30] = 1060292445
Data[31] = 2159324587
Data[32] = 2797886853
Data[33] = 2041153668
Data[34] = 2017461200
Data[35] = 3576140497
Data[36] = 3594096657



local xht = 1

function wyi()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("256", gg.TYPE_DWORD)
    gg.refineNumber("256", gg.TYPE_DWORD)
    local wxfks = gg.getResultCount()
    if wxfks ~= 0 then
      local wxf = gg.getResults(wxfks)
      local tmp = {}
      
          for _FORV_6_, _FORV_7_ in pairs(wxf) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_7_.address + 60
            tmp[#tmp].flags = gg.TYPE_FLOAT
          
      end
      tmp = gg.getValues(tmp)
      
        for _FORV_6_, _FORV_7_ in pairs(tmp) do
          if _FORV_7_.value == 1.25 then
            energy = tonumber(_FORV_7_.address)
            break
          
        end
      end
    
    gg.clearResults()
    if energy == nil or wxfks == 0 then
      gg.toast("能量地址获取失败❌请重试或重启游戏")
      gg.sleep(1000)
      return false
    end
  local senergy={}
  senergy[1] = {}
  senergy[1].flags = gg.TYPE_FLOAT
  senergy[1].address = energy -56
  senergy[1].value = "14"
  senergy[1].freeze = true
  senergy[2] = {}
  senergy[2].flags = gg.TYPE_FLOAT
  senergy[2].address = energy -16
  senergy[2].value = "0"
    if wy == "on" then
  gg.removeListItems(senergy)
  wy = "off"
  gg.toast("已关闭，切图后生效")
  gg.setVisible(false)
   
  else 
  senergy[2].freeze = true
  gg.addListItems(senergy)
  gg.clearResults()
  wy = "on"
  gg.toast("开启成功")
  gg.setVisible(false)
   
end
end
gg.clearResults()
end
function getSenergyAddress()
local dz = fffff()
gg.clearResults()
gg.setRanges(4)
YF_Search("256",gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000,dz)
gg.refineNumber("256",gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000,dz)
local wxfks = gg.getResultCount()
if wxfks ~= 0 then
  local wxf = gg.getResults(wxfks)
  local tmp = {}
  for k, v in pairs(wxf) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address +60
    tmp[#tmp].flags = gg.TYPE_FLOAT
  end
  tmp = gg.getValues(tmp)
  for k, v in pairs(tmp) do
    if v.value == 1.25 then
      wxf[1] = tmp[k]
      break
    end
  end
  local senergy={}
  senergy[1] = {}
  senergy[1].flags = gg.TYPE_FLOAT
  senergy[1].address = wxf[1].address -56
return senergy
end
end
function hqzb()
	gg.clearResults()
	gg.setRanges(4)
	YF_Search("-1,067,909,120", gg.TYPE_DWORD)
	gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
	z = gg.getResultCount()
  w = gg.getResults(z)
  tmp = {}
  zb = {}
  zb[1] = {}
  for _FORV_3_, _FORV_4_ in ipairs(w) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = _FORV_4_.address + 216
    tmp[#tmp].flags = 16
  end
  tmp = gg.getValues(tmp)
  for _FORV_3_, _FORV_4_ in ipairs(tmp) do
    if _FORV_4_.value == 1 then
      tmp[_FORV_3_].address = tmp[_FORV_3_].address
      tmp[_FORV_3_].flags = 16
      zb[1] = tmp[_FORV_3_]
      break
    end
  end
  xdzz = zb[1].address - 12
  zdzz = zb[1].address - 8
  ydzz = zb[1].address - 4
  gg.toast("获取人物坐标成功！")
    local num = gg.getResultCount()
            if num >= 1 then
        local jq = gg.getResults(num)
        local tmp = {}
        for k, v in pairs(jq) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = v.address + 60
            tmp[#tmp].flags = gg.TYPE_DWORD
        end
        tmp = gg.getValues(tmp)
        for k, v in pairs(tmp) do
            if v.value == 1 then
                jq[1] = tmp[k]
                break
            end
        end
        local dz = jq[1].address+124
        end
        xdz = XianShen_Dz[1].address + 4
        zdz = XianShen_Dz[1].address + 8
        ydz = XianShen_Dz[1].address + 12
        
        local zuo = {}
        zuo[1] = {}
	    zuo[1].address = XianShen_Dz[1].address + 13148
	    zuo[1].flags = gg.TYPE_DWORD
	    zuo = gg.getValues(zuo)
    	vit = zuo[1]
      gg.clearResults()
      --人坐标
  local XianShen_Tmp = {}
  for x=1, 3 do
    XianShen_Tmp[#XianShen_Tmp+1] = {}
    XianShen_Tmp[#XianShen_Tmp].address = XianShen_Dz[1].address + x * 4
    XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_FLOAT
  end
gg.addListItems(XianShen_Tmp)
end
--[[
By：宇豪
使用码请注明，交流群754802269，来自群员分享开源。学习一段时间
]]--
gg.clearList()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
YF_Search("15000",16,false,gg.SIGN_EQUAL,0,-1)
result = gg.getResults(1)
Startaddress = result[1].address - 2000000000
Endaddress =  result[1].address + 333333333
gg.toast("内存范围获取成功")
--亮度
liangdu= {}
liangdu[1] = {}
liangdu[1].address = result[1].address + 4
liangdu[1].flags = 16
tmp ={}
resultCount = 0
result = {}
xyz ={}
pianyi1 = 1067956
pianyi2 = 2610824


function xizhuhuo()
gg.clearResults()
YF_Search("3.5", 16, false, gg.SIGN_EQUAL,Startaddress,Endaddress)
zh = gg.getResults(gg.getResultCount())
tmp={}
for i, v in pairs(zh) do
    tmp[i] = {address = v.address + 8, flags = 16}
end
tmp = gg.getValues(tmp)
for i, v in pairs(tmp) do
    if v.value == -1 then
      gg.setValues({[i] = {address = tmp[i].address - 8 , flags = 16,value = 9999}})
    end
end
--gg.toast("吸烛火成功！")
gg.clearResults()
end

--吸光翼
function xiguangyi()
gg.toast("你号没了")
  end

--光芒吸取
function xiguangmang()
  for i = 1, 3 do
    renzuobiao=gg.getValues(renzuobiao)
    xyz[i] = renzuobiao[i].value
  end
  for v = 1,3 do
    for i = 1, 77 do
      guangmangzuobiao[v][i].value= xyz[v]
    end
    gg.setValues(guangmangzuobiao[v])
  end
  gg.toast("光芒吸取完成")
end
--坐坛cd归0

--调亮度
function tiaoliangdu(bin)
  liangdu[1].value = bin
  gg.setValues(liangdu)
  gg.toast("当前亮度为".. bin)
end
--加速
function jiasu1(x)
  sudu[1].value = x
  sudu[1].freeze = true
  gg.setValues(sudu)
  gg.addListItems(sudu)
  --gg.toast("当前速度为".. x .."倍速")
end
--增速
function zengsu(x)
  sudu = gg.getValues(sudu)
  beisu = sudu[1].value * x
  sudu[1].value = beisu
  sudu[1].freeze = true
  gg.setValues(sudu)
  gg.addListItems(sudu)
  --gg.toast("当前速度为".. beisu  .."倍速")
end
--减速
function jiansu(x)
  beisu = beisu / x
  sudu[1].value = beisu
  sudu[1].freeze = true
  gg.setValues(sudu)
  gg.addListItems(sudu)
  if beisu == 1 then gg.removeListItems(sudu) end
  --gg.toast("当前速度为".. beisu  .."倍速")
end



--任意门
function swrenyimen6(x)
  time1=os.clock()
::renyi::
  weizhipanduan()
  if X == x then gg.toast("你已在" .. map[x][3] ..",无需传送")
   else
    if X == 35 then gg.toast("伊甸暂不支持任意门")
     else
      time=0
      dengji = gg.getValues(dengji)
      gytmp = dengji[1].value
      huiyujing(x)
      dengji[1].value = 0
      gg.setValues(dengji)
      zengsu(3000)
      --siwang[1].value = -1
      --gg.setValues(siwang)
      gg.sleep(200)
      --siwang[1].value = 4
      --gg.setValues(siwang)
      dengji[1].value = gytmp
      gg.setValues(dengji)
      weizhipanduan()
      while (X ~= x) do
        weizhipanduan()
        gg.sleep(100)
        time = time +100
        if time > 5000 then gg.toast("正在尝试进入“".. map[x][3] .."”\n如果反复出现此提示请使用右上角回遇境，或者进入".. map[x][3] .."") goto renyi end
      end
      --gg.sleep(200)
      jiansu(3000)
      gg.toast("传送“" .. map[x][3] .."”完成\n耗时："..os.clock()-time1.."秒")
      huiyujing(1)
    end
  end
end


function ztcd()
  if gg.isVisible(true) then
    gg.setVisible(false)
    jiasu1(1)
    gg.toast("跑图暂停")
::menu::
    menu1 =gg.choice({
      "继续",
      "控制面板️",
      "选择地图"
    }, nil, "暂停菜单")
    gg.setVisible(false)
    if menu1 == 1 then jiasu1(50) return nil end
    if menu1 == 2 then kzmb() end
    if menu1 == 3 then mainpt() end
    while true do
      if gg.isVisible(true) then
         gg.setVisible(false)
         goto menu
      end
    end
  end
end

a=1
z=34

--任意门前置
function rymqz()
  gg.setVisible(false)
  gg.clearResults()
  gg.searchNumber("1487508559", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
  gg.refineNumber('            1487508559',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
   z = gg.getResultCount()
 m = gg.getResults(z)
    tmp = {}
    for i, v in ipairs(m) do
      tmp[#tmp + 1] = {}
      tmp[#tmp].address = v.address +12
      tmp[#tmp].flags = gg.TYPE_BYTE
end
    tmp = gg.getValues(tmp)

end
hqzb()

rymqz()

function sousuo()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber('3.5',16)
  gg.refineNumber('3.5',16)
  local fanwei = gg.getResults(1)
  gg.clearResults()
  return fanwei[1].address
end
local fanwei = sousuo()
function firstMain()
	local printStr =               "整合脚本Q群1001408008"
	printStr = printStr .. "\n" .. "脚本仅供研究讨论，请勿用做盈利！追究法律责任与本脚本无任何关系"
	printStr = printStr .. "\n" .. "抵制不良游戏，拒绝盗版游戏。 注意自我保护，谨防受骗上当。 适度游戏益脑，沉迷游戏伤身。 合理安排时间，享受健康生活。"
	printStr = printStr .. "\n" .. "感谢您的使用请勿广泛传播仅供参考"
	printStr = printStr .. "\n" .. "如有侵权请立即与我联系,将及时处理"
	printStr = printStr .. "\n" .. "如有侵权法律，刑事责任等问题请向我的邮箱发送，我会不定时回复及处理邮箱（2013786122@qq.com），或者QQ群1001408008"
	local alertMsg = gg.alert(printStr,"进入","退出")
	if( alertMsg == 2) then
		Exit()
	elseif(alertMsg == 1 or alertMsg == 0) then
	--gg.toast("加载中",0xffffffff,0xff000000)
	--dmg()
	gg.alert("仅供参考，请勿用作盈利\n仅供参考，请勿用作盈利\nQQ群1001408008")
first = "off"
		home()
	end
end

----吸雕像
function HS3()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
YF_Search("1,043,045,760", 4, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("1,043,045,760", 4, false, gg.SING_EQUAL, 0, -1)
 z = gg.getResultCount()
 w = gg.getResults(z)
      t = {}
    for i, v in pairs(w) do
      t[#t + 1] = {}
      t[#t].address = v.address - 40
      t[#t].flags = 4
    end
    j = 0
    t = gg.getValues(t)
    local r = {}
    for i, v in pairs(t) do
      if v.value == 693 then
      j = j + 1
      r[j] = {}
      r[j] = t[i]
      w[j] = t[i]
      end 
   end
   for i = 1, j do
   local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
                    r[1] = {}
			        r[1].address = w[i].address + 8
				    r[1].flags = 16
					r[1].value = roleX
					r[2] = {}
			        r[2].address = w[i].address + 12
				    r[2].flags = 16
					r[2].value = roleZ
					r[3] = {}
			        r[3].address = w[i].address + 16
				    r[3].flags = 16
					r[3].value = roleY
gg.setValues(r)	
end
	 gg.toast("ojbk！")
	 gg.clearResults()
end
function stand(id)  
	local sit = {}
	sit[1] = {}
	sit[1].address = vit.address 
    sit[1].flags = gg.TYPE_DWORD
    sit[1].value = id
--0是站着，2是一级坐，1是二级坐，3是躺着，4是站累了 
	gg.setValues(sit)
end 
nldz = 0

nl_flag = 0
function Teleport(ZBiao)
  local XianShen_Tmp = {}
  for x=1, 3 do
    XianShen_Tmp[#XianShen_Tmp+1] = {}
    XianShen_Tmp[#XianShen_Tmp].address = XianShen_Dz[1].address + x * 4
    XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_FLOAT
    XianShen_Tmp[#XianShen_Tmp].value = ZBiao[x]
  end
  gg.setValues(XianShen_Tmp)
end
function view()
  gg.alert("此功能可带人！")
  menu8 = gg.choice({
    " 1. 遇境 - 小黑屋",
    " 2. 遇境 - 观星台",
	" 3. 晨岛 - CG图",
    " 4. 晨岛 - 终点",
    " 5. 晨岛 - 彩虹桥",
	" 6. 晨岛 - 富士山",
    " 7. 云野 - 大草原",
    " 8. 云野 - 幽灵船",
	" 9. 云野 - 孤岛",
    "10. 云野 - CG图",
	"11. 云野 - 终点",
    "12. 雨林 - 梅花桩",
    "13. 雨林 - CG图",
	"14. 雨林 - 终点",
    "15. 雨林 - 密室",
    "16. 雨林 - 锤子",
	"17. 霞谷 - 千鸟图",
    "18. 暮土 - 冰激凌山",
	"19. 暮土 - 终点",
    "20. 暮土 - CG图",
    "21. 禁阁 - 蜡像馆",
	"22. 禁阁 - 闪电岛",
    "23. 禁阁 - 日月岛",
--[["β. 预留位置 - 预留位置",
    "β. 预留位置 - 预留位置",
	"β. 预留位置 - 预留位置",
    "β. 预留位置 - 预留位置",
    "β. 预留位置 - 预留位置",
	"β. 预留位置 - 预留位置",
    "β. 预留位置 - 预留位置",]]
	"0. 返回主页"
  }, nil, "彩蛋 - 瞬移")
  if menu8 == nil then else
  if menu8 == 1 then h1() end
  if menu8 == 2 then h2() end
  if menu8 == 3 then h3() end
  if menu8 == 4 then h4() end
  if menu8 == 5 then h5() end
  if menu8 == 6 then h6() end
  if menu8 == 7 then h7() end
  if menu8 == 8 then h8() end
  if menu8 == 9 then h9() end
  if menu8 == 10 then h10() end
  if menu8 == 11 then h11() end
  if menu8 == 12 then h12() end
  if menu8 == 13 then h13() end
  if menu8 == 14 then h14() end
  if menu8 == 15 then h15() end
  if menu8 == 16 then h16() end
  if menu8 == 17 then h17() end
  if menu8 == 18 then h18() end
  if menu8 == 19 then h19() end
  if menu8 == 20 then h20() end
  if menu8 == 21 then h21() end
  if menu8 == 22 then h22() end
  if menu8 == 23 then h23() end
  
  if menu8 == 24 then HOME() end end
end

--遇境小黑屋
function h1()
	Teleport({798.98095703125 ;0.22667610645;-0.33975163102})
	gg.toast("瞬移 [遇境 - 小黑屋] 完成")
end

--遇境观星台
function h2()
	Teleport({1.07697141171;0.8221578598;-0.33868104219})
	gg.toast("瞬移 [遇境 - 观星台] 完成")
end
	
--晨岛CG图
function h3()
	Teleport({118.10299682617;0.97198873758;-1733.97021484375})
	gg.toast("瞬移 [晨岛 - CG图] 完成")
end

--晨岛终点
function h4()
	Teleport({156.29658508301;103.52576446533;-293.6558227539})
	gg.toast("瞬移 [晨岛 - 终点] 完成")
end

--晨岛彩虹桥
function h5()
	Teleport({299.99719238281;413.04522705078;-297.63458251953})
	gg.toast("瞬移 [晨岛 - 彩虹桥] 完成")
end

--晨岛富士山
function h6()
	Teleport({298.00839233398;750;-283.45837402644})
	gg.toast("瞬移 [晨岛 - 富士山] 完成")
end

--云野大草原
function h7()
	Teleport({366.3053894043;208.29864501953;233.16668701172})
	gg.toast("瞬移 [云野 - 大草原] 完成")
end

--云野幽灵船
function h8()
	-- Teleport({97.56925201416;174.57604980469;265.3330078125})
	Teleport({97.30706787109375;174.2458953857422;265.5908203125})
	gg.toast("瞬移 [云野 - 幽灵船] 完成")
end

--云野孤岛
function h9()
	Teleport({117.31034088135;0.84127157927;-1,733.96765136719})
	gg.toast("瞬移 [云野 - 孤岛] 完成")
end

--云野CG
function h10()
	Teleport({-529.02185058594;8.60619068146;-213.8217010498})
	gg.toast("瞬移 [云野 - CG] 完成")
end

--云野终点
function h11()
	Teleport({128.96328735352;254.88412475586;484.58071899414})
	gg.toast("瞬移 [云野 - 终点] 完成")
end

--雨林梅花桩
function h12()
	Teleport({-31.72092056274;207.00308227539;-1.27488076687})
	gg.toast("瞬移 [雨林 - 梅花桩] 完成")
end

--雨林CG
function h13()
	Teleport({4.90364980698;9.42964076996;506.48516845703})
	gg.toast("瞬移 [雨林 - CG] 完成")
end

--雨林终点
function h14()
	Teleport({-18.18656158447;182.64154052734;402.62902832031})
	gg.toast("瞬移 [雨林 - 终点] 完成")
end

--雨林密室
function h15()
	Teleport({-0.37094926834;105.59395247607;0.10513665527})
	gg.toast("瞬移 [雨林 - 密室] 完成")
end

--雨林锤子
function h16()
	Teleport({6.57783555984;4.13195562363;509.4060367695})
	gg.toast("瞬移 [雨林 - CG] 完成")
end

--霞谷千鸟图
function h17()
	Teleport({314.90731811523;173.38836669922;-783.63726806641})
	gg.toast("瞬移 [霞谷 - 千鸟图] 完成")
end

--墓土冰激凌
function h18()
	Teleport({-84.72422790527;5047.2763671875;-842.01507568359})
	gg.toast("瞬移 [墓土 - 冰激凌] 完成")
end

--墓土终点
function h19()
	Teleport({-288.00048828125;92.26410675049;-399.68026733398})
	gg.toast("瞬移 [墓土 - 终点] 完成")
end

--墓土CG
function h20()
	Teleport({-416.08380126953;12.07369232178;411.0588684082})
	gg.toast("瞬移 [墓土 - CG] 完成")
end

--禁阁蜡像馆
function h21()
	Teleport({0.36330926418;195.0870513916;8.39365291595})
	gg.toast("瞬移 [禁阁 - 蜡像馆] 完成")
end

--禁阁闪电岛
function h22()
	Teleport({-0.96439945698;336.14559936523;64.37212371826})
	gg.toast("瞬移 [禁阁 - 闪电岛] 完成")
end

--禁阁日月岛
function h23()
	Teleport({68.92450714111;240.40475463867;-185.50691223145})
	gg.toast("瞬移 [禁阁 - 日月岛] 完成")
end
function GY()
FX = "G666"
    ym_menu = gg.choice({
	  "                1. 晨岛 - 瞬移",
	  "                2. 云野 - 瞬移",
	  "                3. 雨林 - 瞬移",
	  "                4. 霞谷 - 瞬移",
	  "                5. 暮土 - 瞬移",
	  "                6. 禁阁 - 瞬移",
	  "                7. 暴风眼 - 瞬移",
	  "                       8.返回"
	 }, nil, "收集光翼 - 进图开")
	    
	if ym_menu == 1 then A() end
	if ym_menu == 2 then B() end
	if ym_menu == 3 then C() end
	if ym_menu == 4 then D() end
	if ym_menu == 5 then E() end
	if ym_menu == 6 then F() end
	if ym_menu == 7 then G() end
	if ym_menu == 8 then home() end
	end
first = "on"
  function home()
	FX = "home"
	if first == "on" then
	firstMain() 
first = "off" 
else
	    menua = gg.choice({
    '1. ❤️每日任务',
    '2.💛跑图',
    '3.💚任意门传送',
    '4.💙如果中断恢复速度点这里',
    '5.💜娱乐功能',
    '6.🧡体验获取复刻动作',
    '7.💔原地献祭功能（请准备好足够的光翼数量）',
    '8.💕其他功能（低调使用退出游戏可能才会恢复）',
    '9.💞脚本更新',
    '10.💓退出脚本',
    --'11.💗奇妙的小JB话(慎入)',
     }, nil, " 整合脚本")
     if menua == 2 then local x = gg.prompt({
    "请酌情调节间隔（默认3，单位：秒）[1;10]"
  }, {
    [1] = "3"
  }, {
    [1] = "number"
  })
  if x == nil then
    return 0
  else
    x = tonumber(x[1])
  end
  paotmd(x)  end
     if menua == 7 then renyimen6(35) gg.sleep(1200) FX = "A_bfy" gg.alert("进去了点悬浮窗吸一口")  gg.setVisible(false) end
     if menua == 3 then Main0() end
     if menua == 6 then dzdzdz() end
     if menua == 4 then bin=gg.prompt({"\n\n\n\n变速[1;5]","亮度[-100;100]"}, 
{sdu,ldu},
{'number','number'})
if bin == nil then jiasu(1) tiaoliangdu(1)
elseif bin[1] == "1" then
jiasu(bin[1])
tiaoliangdu(bin[2])
else 
jiasu(bin[1])
FX2 = "jiasu"
tiaoliangdu(bin[2])
end end
    if menua == 8 then RYMXL() end
    if menua == 1 then day() end
     if menua == 5 then hlhs() end
     if menua == 9 then gg.copyText("https://wws.lanzous.com/b01br9nli", false) gg.alert("链接已复制到剪切板。密码：6r9q") end
     
 if menua == 10 then Exit() end
-- if menua == 11 then xjbh() end
      
	
end
end
function tp()
local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
  bin=gg.prompt({"X坐标[-10;10]","Z坐标[-10;50]","Z坐标[-10;10]"}, 
{0,0,0},
{'number','number','number'})
if bin == nil then 
else
x = bin[1]
z = bin[2]
y = bin[3]
				xx = tostring(roleX) + tostring(x)
				zz = tostring(roleZ) + tostring(z)
				yy = tostring(roleY) + tostring(y)
                Teleport({xx,zz,yy})
end 
end    
-- 坐标记录
local POSITION_RECORD = ""
-- 获取角色角色坐标
function rolePositionMenu()
FX = "rolePositionMenu"
	p_menu = gg.choice({
		"复制当前坐标到粘贴板",
		"瞬移",
		"返回上页"
	}, nil, "角色坐标")
	  
	  if(p_menu == 1) then
		local positionStr = currentPosition()
		gg.copyText(positionStr, false)
		gg.toast("当前坐标已复制到粘贴板！")
		gg.setVisible(false) 
	  elseif(p_menu == 2) then
		tp()
	  elseif(p_menu == 3) then
		RYMXL()
	  end
	  
	  

end

-- 角色当前坐标 返回{X;Z;Y}类型
function currentPosition()
	local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
	local positionStr = "{" .. tostring(roleX) .. ";" .. tostring(roleZ) .. ";" .. tostring(roleY) .. "}"
	return positionStr
end

-- 获取角色当前坐标
function getRolePosition() 

	local rolePosition = {}
	
	-- gg.alert("X地址："..tostring(xdz).."，Z地址："..tostring(zdz).."，Y地址："..tostring(ydz))
	
	rolePosition[1] = {}
	rolePosition[1].address = xdzz
	rolePosition[1].flags = gg.TYPE_FLOAT
	
	rolePosition[2] = {}
	rolePosition[2].address = zdzz
	rolePosition[2].flags = gg.TYPE_FLOAT
	
	rolePosition[3] = {}
	rolePosition[3].address = ydzz
	rolePosition[3].flags = gg.TYPE_FLOAT
	
	rolePosition = gg.getValues(rolePosition)
	--[[
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
	
	gg.alert("X坐标："..tostring(roleX).."，Z坐标："..tostring(roleZ).."，Y坐标："..tostring(roleY))
	]]--
	
	return rolePosition
end



-----花里胡哨菜单
function hlhs()
  FX = "hlhs"
  menu1 = gg.choice({
    "1.换装",
    "2.无翼",
    "3.小魔法",
    "4.动作升级",
    "5.特效王霸之气长安提供（可见）",
    "6.转圈圈",
    "7.景点",
    "8. 画质修改",
    "9.无限烟花",
    "10.聊天大小",
    "11.返回上页"
  }, nil, "娱乐功能")
  if(menu1 == nil) then end
  if(menu1 == 1) then M_gbzb() end
  if(menu1 == 2) then wyi() end
  if(menu1 == 3) then mgc() end
  if(menu1 == 9) then wxyh() end
    if(menu1 == 4) then dzsj() end
    if(menu1 == 8) then jd() gg.alert("请在修改完毕以后右上角切换一下画质\n需要加载十几秒 请耐心等待") bin=gg.prompt({"\n\n\n\n画质[0;3]","帧率[1;144]"}, 
{hz,zl},
{'number','number'})
if bin == nil then 
else
gg.toast("需要加载十几秒")
hz = bin[1]
zl = bin[2]
readWrite({{false,"1065353216",0,4,nil,nil},{"48",84,4},{"543",100,4},{"14",104,4},{"1023969417",116,4}},{{hz,8,4,true},{zl,16,4,true}},4,4,"画质")
gg.alert("请到右上角切换一下画质")
end 
 end
   if(menu1 == 5) then 
if magicc ~= "开" then magic()
else magicoff() end
end
   if(menu1 == 6) then bin=gg.prompt({"\n\n\n\n半径[1;8]","圈数[1;10]"}, 
{r,x},
{'number','number'})
if bin == nil then 
else
r = bin[1]
x = bin[2]
circle(r, x)
end end
if(menu1 == 7) then M_DTCD()  end
if(menu1 == 10) then ltk() end
  if(menu1 == 11) then home() end
   
end


------聊天框
function ltk()
x = gg.prompt({ -- table(fe54372)
	[1] = '聊天框大小，数字越大，聊天框越大，0为隐藏（默认为1）',
}, { 
	[1] = '5',
}, { 
	[1] = 'number',
})
gg.alert("修改后无法复原\n只能重启游戏")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("16.0;8.0;12.0;1.0;3.0;12.0:21", gg.TYPE_FLOAT, false)
gg.refineNumber("1", gg.TYPE_FLOAT, false)
gg.getResultCount()
gg.getResults(1)
gg.editAll(x[1], gg.TYPE_FLOAT)
gg.alert("修改成功\n要恢复只能重启")
end
function Exit()
  print("\r\n脚本已关闭\r\n                   整合脚本\r\n\n\n请勿用做商业用途" .. cs)
  os.exit()
  gg.clearResults()
  gg.removeListItems()
  gg.clearList()
end

--暴风眼
function G()
  FX = "G7"
  menu7 = gg.choice({
    "1.吸雕像",
    "2.抱金人手动过一图点第三功能",
    "3.一图终点",
    "4.二图终点",
    "5. 返回主页"
  }, nil, "暴风眼献祭")
  
    if menu7 == nil then else
	  if menu7 == 1 then xidx() end
	  if menu7 == 2 then g3() end
	  if menu7 == 3 then g4() end
	  if menu7 == 4 then g5() end
	  if menu7 == 5 then home() end 
  end
  
end

--暴风眼一图终点
function g1()
	Teleport({-3.08880496025;196.74859619141;-21.45963668823})
	gg.toast("瞬移 [暴风眼 - 一图终点] 完成")
end

--暴风眼二图终点 洞口左下  
function g2Left()
	Teleport({2.260443925857544;262.16070556640625;-236.75033569335938})
	gg.toast("瞬移 [暴风眼 - 二图终点洞口左下] 完成")
end

--暴风眼二图终点   
function g2()
	Teleport({6.62452173233;265.95574951172;-244.71562194824})
	gg.toast("瞬移 [暴风眼 - 二图终点洞口] 完成")
end
function g3()
	Teleport({803.8468627929688;0.6832796931266785;-11.732531547546387})
	gg.toast("抱抱他")
end
function g4()
	Teleport({860.9254150390625;2694.650634765625;156.6395721435547})

end
function g5()
	Teleport({-30.023597717285156;2415.130615234375;2160.118408203125})
	gg.toast("星光大道自己走")
end
    
    
function QT() 
gg.sleep(6000*2.8)
end
cs = ""

--地图数据
map = {}
--map[x] = {("文本"),代码,("名称"),花,光翼，烛火}
map[1] = {("CandleSpace"),-768833570,("遇境"),0,0,1}
map[2] = {'Dawn',1649439303,("晨岛"),1,1,1}
map[3] = {'Prairie_ButterflyFields',-1817621630,("云野一图"),0,1,1}
map[4] = {'Prairie_Village',-1944435120,("云野二图"),1,1,1}
map[5] = {'Prairie_Cave',-1050035699,("云野左图"),0,1,1}
map[6] = {'Prairie_NestAndKeeper',312004957,("云野右图"),0,1,1}
map[7] = {'DayHubCave',-1900248111,'云野八人门',0,1,1}
map[8] = {'DayEnd',1190972738,("云野宫殿"),0,0,1}
map[40] = {'Prairie_Island',-1237641587,("云野海岛"),1,1,1}
map[9] = {("Rain"),164626931,("雨林一图"),1,1,1}
map[10] = {("RainForest"),-1455381650,'雨林二图',1,1,1}
map[11] = {("RainShelter"),-1574275404,'雨林副本',1,1,1}
map[12] = {("Rain_Cave"),-161371567,'雨林副本隐藏图',1,1,1}
map[13] = {("RainMid"),-2135324521,'雨林水母图',1,1,1}
map[14] = {("RainEnd"),128844448,'雨林宫殿',1,1,1}
map[15] = {("Sunset"),1638008359,'霞谷一图',0,1,1}
map[16] = {("Sunset_Citadel"),-2115418256,'霞谷飞行一图',0,1,1}
map[17] = {("Sunset_FlyRace"),1844499196,'霞谷飞行二图',0,1,1}
map[18] = {("SunsetRace"),571720490,'霞谷地面赛道',0,1,0}
map[19] = {("SunsetEnd"),-1934656620,'霞谷终点',0,1,1}
map[20] = {("SunsetEnd2"),507487826,'霞谷宫殿',1,1,1}
map[21] = {("DuskStart"),817373972,'墓土一图',0,0,1}
map[22] = {("Dusk"),1147491976,'墓土二图',1,1,1}
map[23] = {("DuskOasis"),170656205,'墓土魔法季',1,1,1}
map[24] = {("DuskGraveyard"),864432821,'墓土五龙图',1,1,1}
map[25] = {("Dusk_CrabField"),-1644045427,'墓土副本',1,1,1}
map[26] = {("DuskMid"),1597085778,'墓土古战场',1,1,1}
map[27] = {("DuskEnd"),-136010643,'墓土宫殿',1,1,1}
map[28] = {("Night"),-1936060159,'禁阁低层',0,1,1}
map[29] = {("NightArchive"),2518601,'禁阁副本',0,1,1}
map[30] = {("Night2"),-1987505335,'禁阁高层',0,1,1}
map[31] = {("NightEnd"),-2027781754,'禁阁终点',0,0,0}
map[32] = {("TGCOffice"),295816905,'办公室',1,0,1}
map[33] = {("StormStart"),-1184245578,'暴风一图',0,1,0}
map[34] = {("Storm"),1705189686,'暴风二图',0,1,0}
map[35] = {("StormEnd"),-815180717,'伊甸',0,0,0}
map[36] = {("OrbitMid"),-857831781,'重生一图',0,0,0}
map[37] = {("OrbitEnd"),567986524,'重生二图',0,0,0}
map[38] = {("CandleSpaceEnd"),-2043682661,'星光大道',0,0,0}
map[39] = {("Credits"),261807733,'结尾动画',0,0,0}

      dsb1 = 60        -------getPosition新
      dsb2 = 124      --------get_zero新
      dsb3 = 693        -------YDXJ新
      dsb4 = 7512560   ---------xihua新
      dsb5 = 7936640   ---------xiguangmang新
      dsb6 = 10067784  -----------miaozuotan新
      dsb7 = 4794944   ---------xiguangyi新
      dsb8 = 8849904   --xbweizhipanduan
      dsb9 = 53968     -------get_MSJ新
      dsb10 = 20645616-------sudu新
   

function goDawn()
  set_msj({812663058;1953384759;1761636210;27502;0;0;2002863132;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goPrairie_ButterflyFields()
        renyimen6(2)
        gg.sleep(2400)
        set_mzb2freeze({
          67.93307495117,
          1.16085553169,
          456.54428100586
        })
      end

function goPrairie_NestAndKeeper()
  set_msj({812663058;1953384759;28530;0;0;0;1634881582;1701409385;1936019039;1684947316;1885693259;29285;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(500)
  set_mzb3freeze({270.20822143555;172.3408203125;8.31658363342})
end

function goPrairie_Cave()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1634881564;1701409385;1986085727;101;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goPrairie_Village()
  set_msj({812663058;1953384759;1761636210;27502;0;0;2036417564;6581829;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(500)
  set_mzb2freeze({-66.11747741699;85.26582336426;40.68412399292})
end

function goDayHubCave()
  set_msj({812663058;1953384759;1761636210;27502;0;0;2036417564;1130526024;6649441;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end
function goPrairie_Island()
  renyimen6(6) gg.sleep(1500) Teleport({-358.04351806640625;124.06656646728516;108.47407531738281}) gg.sleep(1600) Teleport({11.978130340576172;52.22217559814453;336.3540344238281}) gg.sleep(120)
end

function goDayEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;2036417564;6581829;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goRain()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goRainForest()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;1919895150;7631717;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goRainShelter()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;1701335918;1919251564;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goRain_Cave()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;1631805294;25974;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
  gg.sleep(2020) jiasu(1) Teleport({8.88652992249;132.49805908203;-324.27032470703}) gg.sleep(120)
end

function goRainMid()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;1684622702;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goRainEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1767985692;1684948334;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goSunset()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1853182748;7628147;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goSunset_Citadel()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1853182750;1601463667;1635019075;7103844;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(500)
  set_mzb1freeze({-24.71639633179;306.57260131836;33.67992782593})
  gg.sleep(120) Teleport({66.61831665039062;470.46044921875;-9.514235496520996})
end

function goSunset_FlyRace()
  goSunset_Citadel() gg.sleep(4000)
  Teleport({204.93423461914062;492.3973693847656;-203.07797241210938}) gg.sleep(200)
end

function goSunsetRace()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1853182748;1383359859;6644577;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goSunsetEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1853182748;1165256051;25710;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goSunsetEnd2()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1853182748;1165256051;3302510;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goDuskStart()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1937064988;1635013483;29810;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goDusk()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1937064988;107;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
  gg.sleep(120) 
end

function goDuskOasis()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1937064988;1935757163;29545;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
  gg.sleep(1200) Teleport({112.63143157958984;141.7816162109375;385.32427978515625}) jiasu(80) gg.sleep(1600) jiasu(1)
end

function goDuskGraveyard()
  renyimen6(22) gg.sleep(800) Teleport({-86.19967651367188;11.253101348876953;160.98365783691406}) gg.sleep(800) Teleport({-93.25340270996094;12.118124961853027;157.14720153808594}) gg.sleep(2000)
end

function goDusk_CrabField()
  renyimen6(24) gg.sleep(1800) Teleport({105.32046508789062;90.65402221679688;-6.081081867218018}) gg.sleep(2000) Teleport({-205.6632843017578;27.085622787475586;427.1429138183594}) gg.sleep(120)
end

function goDuskMid()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1937064988;1684622699;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goDuskEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1937064988;1684948331;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goNight()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1734954524;29800;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goNightArchive()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1734954524;1916892264;1986619491;101;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goTGCOffice()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1128748060;1768318543;25955;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goNight2()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1734954524;3306600;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(2000)
  gg.alert("飞")
  Teleport({-0.02870649286;311.826171875;68.02626800537})
end

function goNightEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1734954524;1850045544;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goStormStart()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1869894428;1951624562;7631457;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goStorm()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1869894428;28018;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goStormEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1869894428;1850043762;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goOrbitEnd()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1651658524;1850045545;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1()
end

function goCandleSpaceEnd()
        renyimen6(2)
        gg.sleep(600)
        Chuansong(":Prairie_ButterflyFields", ":CandleSpaceEnd")
        set_mzb2freeze({
          67.95957946777,
          1.16132426262,
          456.5735168457
        })
      end

function goCandleSpace()
  set_msj({812663058;1953384759;1761636210;27502;0;0;1851867932;1399155812;1701011824;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(500)
end

--无限能量
local nl_flag = 0
function wxnl()

    
    if nl_flag ~= 1 then
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("256", gg.TYPE_DWORD)
    gg.refineNumber("256", gg.TYPE_DWORD)
    local wxfks = gg.getResultCount()
    if wxfks ~= 0 then
      local wxf = gg.getResults(wxfks)
      local tmp = {}
      
          for _FORV_6_, _FORV_7_ in pairs(wxf) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_7_.address + 60
            tmp[#tmp].flags = gg.TYPE_FLOAT
          
      end
      tmp = gg.getValues(tmp)
      
        for _FORV_6_, _FORV_7_ in pairs(tmp) do
          if _FORV_7_.value == 1.25 then
            energy = tonumber(_FORV_7_.address)
            break
          
        end
      end
    
    gg.clearResults()
    if energy == nil or wxfks == 0 then
      gg.toast("能量地址获取失败❌请重试或重启游戏")
      gg.sleep(1000)
      return false
    end
  local senergy={}
  senergy[1] = {}
  senergy[1].flags = gg.TYPE_FLOAT
  senergy[1].address = energy -56
  senergy[1].value = "14"
  senergy[1].freeze = true
  senergy[2] = {}
		senergy[2].address = energy + 69
		senergy[2].flags = gg.TYPE_DWORD
		senergy[2].value = 0
		senergy[2].freeze = true
        gg.addListItems(senergy)
        gg.clearResults()
       gg.toast("无限能量已开启")
        nl_flag = 1
      end
    else
    gg.toast("无限能量已关闭")
      wxfpy[1].freeze = false
      wxfpy[2].freeze = false
      gg.addListItems(wxfpy)
      nl_flag = 0
    end
end
function wxnlll()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
      gg.refineNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
      wxfks = gg.getResultCount()
      if wxfks ~= 0 then
        wxf = gg.getResults(wxfks)
        tmp = {}
        for _FORV_3_, _FORV_4_ in pairs(wxf) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_4_.address + 60
          tmp[#tmp].flags = gg.TYPE_FLOAT
        end
        tmp = gg.getValues(tmp)
        for _FORV_3_, _FORV_4_ in pairs(tmp) do
          if _FORV_4_.value == 1.25 then
            wxf[1] = tmp[_FORV_3_]
            break
          end
        end
        wxfpy = {}
        wxfpy[1] = {}
        wxfpy[1].address = wxf[1].address - 56
        wxfpy[1].flags = gg.TYPE_FLOAT
        wxfpy[1].value = "14"
        wxfpy[1].freeze = true
        gg.clearResults()
        
      end
      return wxfpy
   end
   gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    YF_Search("3267887104", gg.TYPE_QWORD, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
    local num = gg.getResultCount()
    
        local jq = gg.getResults(num)
        local tmp = {}
        for k, v in pairs(jq) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = v.address - 8
            tmp[#tmp].flags = gg.TYPE_DWORD
        end
        tmp = gg.getValues(tmp)
        for k, v in pairs(tmp) do
            if v.value == 1 then
                jq[1] = tmp[k]
                break
            end
        end
        local dz = jq[1].address
        lzdz = dz - 48
        local lz = {}
   
------重置   
function setClear(num)
	gg.clearResults()
	YF_Search(num, 32,false, gg.SING_EQUAL, 0x7000000000, "0x" ..fw)
	gg.removeResults(gg.getResults(2))
	gg.getResults(10)
	gg.editAll("3811807379", gg.TYPE_QWORD)
	gg.clearResults()
end

----坐标前置
function getPosition(x)
	gg.clearResults()
	gg.setRanges(4)
	gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,"0x" .. YF_Start, "0x" .. YF_End)
	gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,"0x" .. YF_Start, "0x" .. YF_End)
	resultCount = gg.getResultCount()
	if resultCount == 0 then
		gg.toast("人物坐标获取失败")
		os.exit()
	end
	result = gg.getResults(resultCount)

	for k, v in pairs(result) do
		v.isMatch = true
	end

	tmp = {}
	for i, v in ipairs(result) do
		tmp[#tmp+1] = {}
		tmp[#tmp].address = v.address  + x
		tmp[#tmp].flags = gg.TYPE_DWORD
	end

	tmp = gg.getValues(tmp)
	for i, v in ipairs(tmp) do
		if "" .. v.value == "1" then
			result[1] = tmp[i]
			break
		end
	end

	get_zero(dsb2)
	gg.clearResults()
end

--人物坐标内置函数
function get_zero(x)
	zer[1] = {}
	zer[1].address = result[1].address + x
	zer[1].flags = gg.TYPE_FLOAT
	zer = gg.getValues(zer)
	zer = zer[1]
	--gg.toast("人物坐标获取完毕")
end
getPosition(dsb1)
renzuobiao = {}
for i = 1, 3 do
  renzuobiao[i] ={}
  renzuobiao[i].address = zer.address + i * 4
  renzuobiao[i].flags = 16
end


local jiasuMem = nil
function jiasu(speed)
jia = "on"
speed = tonumber(speed)
if speed <= 10 then
if speed == 1 then gg.setSpeed(speed) end
if speed == 2 then gg.setSpeed(speed) end
if speed == 3 then gg.setSpeed(speed) end
if speed == 4 then gg.setSpeed(speed) end
if speed == 5 then gg.setSpeed(speed) end
if speed == 6 then gg.setSpeed(speed) end
if speed == 7 then gg.setSpeed(speed) end
if speed == 8 then gg.setSpeed(speed) end
if speed == 9 then gg.setSpeed(speed) end
if speed == 10 then gg.setSpeed(speed) end
  else
  gg.setSpeed(10)
end
end
  
--吸碎片
function xiguangmang()
lzdz = jq[1].address - 48
renzuobiao = gg.getValues(renzuobiao)
  for i = 1, 3 do
    xyz[i] = renzuobiao[i].value
  end
  for v = 1,3 do
    for i = 1, 77 do
      guangmangzuobiao[v][i].value= xyz[v]
    end
    gg.setValues(guangmangzuobiao[v])
  end
end

--吸光翼
function xiguangyi()
gg.toast("你号没了")
end

--新任意门
function RYM6(x)
if x == 1 then
goCandleSpace()
else if x == 2 then
goDawn()
else if x == 3 then
goPrairie_ButterflyFields()
else if x == 4 then
goPrairie_Village()
else if x == 5 then
goPrairie_Cave()
else if x == 6 then
goPrairie_NestAndKeeper()
else if x == 7 then
goDayHubCave()
else if x == 8 then
goDayEnd()
else if x == 9 then
goRain()
else if x == 10 then
goRainForest()
else if x == 11 then
goRainShelter()
else if x == 12 then
goRain_Cave()
else if x == 13 then
goRainMid()
else if x == 14 then
goRainEnd()
else if x == 15 then
goSunset()
else if x == 16 then
goSunset_Citadel()
else if x == 17 then
goSunset_FlyRace()
else if x == 18 then
goSunsetRace()
else if x == 19 then
goSunsetEnd()
else if x == 20 then
goSunsetEnd2()
else if x == 21 then
goDuskStart()
else if x == 22 then
goDusk() gg.sleep(2000) Teleport({-84.42935943603516;10.721424102783203;160.9129638671875})
else if x == 23 then
goDuskOasis()
else if x == 24 then
goDuskGraveyard()
else if x == 25 then
goDusk_CrabField()
else if x == 26 then
goDuskMid()
else if x == 27 then
goDuskEnd()
else if x == 28 then
goNight()
else if x == 29 then
goNightArchive()
else if x == 30 then
goNight2()
else if x == 31 then
goNightEnd()
else if x == 32 then
goTGCOffice()
else if x == 33 then
goStormStart()
else if x == 34 then
goStorm()
else if x == 35 then
goStormEnd()
else if x == 36 then
gg.toast("因为感觉没啥卵用就没写喔")
else if x == 37 then
goOrbitEnd()
else if x == 38 then
goCandleSpaceEnd()
else if x == 39 then
gg.toast("因为感觉没啥卵用就没写喔")
else if x == 40 then
goPrairie_Island()
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
end
end
end
end
end
end
end
end


local data3 = {}
function readValue(address, flags)
	local YF = {}
	YF[1] = {}
	YF[1].address = address
	YF[1].flags = flags
	YF = gg.getValues(YF)
	return YF[1].value
end

XianShen_Lzdz = nil
XianShen_Dhdz = nil
XianShen_Dhdz1 = nil
function DhZh()
 
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  YF_Search('3267887104', gg.TYPE_QWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address - 8
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_DWORD
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 1 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        break
      end
    end
    local XianShen_Dzi = XianShen_Zjg[1].address
    XianShen_Lzdz = XianShen_Dzi - 48
    
   else
    
  end
  gg.clearResults()
 
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  YF_Search('1133903872', gg.TYPE_QWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address - 2508
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_DWORD
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 50 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        break
      end
    end
    local XianShen_Dzi = XianShen_Zjg[1].address
    XianShen_Dhdz = XianShen_Dzi + 2508
    gg.toast("加载中")
   else
    
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  YF_Search('257;-1::8', gg.TYPE_DWORD)
  gg.refineNumber("257", gg.TYPE_DWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address - 12
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_FLOAT
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == "1" then
        XianShen_Zjg[1] = XianShen_Tmp[k]
--        gg.addListItems(XianShen_Zjg)
        break
      end
    end
    local XianShen_Dzi = XianShen_Zjg[1].address
    XianShen_Dhdz1 = XianShen_Dzi -324
    gg.toast("马上好了")
    ShunD1()
   else
   
  end
  gg.clearResults()
end
function Zddzuo()
  local XianShen_Tmp = {}
  for i=1,5 do
    XianShen_Tmp[i] = {}
    XianShen_Tmp[i].address = XianShen_Lzdz + (i - 1) * 24 + 10062280
    XianShen_Tmp[i].flags = gg.TYPE_DWORD
    XianShen_Tmp[i].value = 65535
  end
  gg.setValues(XianShen_Tmp)
end
function ShunD()
  local XianShen_Lz = {}
  for i = 1, 450 do
    XianShen_Lz[i] = {}
    XianShen_Lz[i].address = XianShen_Lzdz + i * 448
    XianShen_Lz[i].flags = gg.TYPE_FLOAT
    XianShen_Lz[i].value = 2
  end
  gg.setValues(XianShen_Lz)
end
function ShunD1()
  local XianShen_Dh = {}
  for i = 1, 256 do
    XianShen_Dh[i] = {}
    XianShen_Dh[i].address = XianShen_Dhdz + i * 8
    XianShen_Dh[i].flags = gg.TYPE_FLOAT
    XianShen_Dh[i].freeze = true
    XianShen_Dh[i].value = '0'
  end
  gg.addListItems(XianShen_Dh)
end
DhZh()
function XiSouZH()
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("-842203136",gg.TYPE_DWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg == 0 then
    
    os.exit()
  end
  local XianShen_Zjg = gg.getResults(XianShen_Jg)
  local XianShen_Tmp = {}
  for i, v in ipairs(XianShen_Zjg) do
    XianShen_Tmp[#XianShen_Tmp+1] = {}
    XianShen_Tmp[#XianShen_Tmp].address = v.address - 12
    XianShen_Tmp[#XianShen_Tmp].flags = 16
  end
  local XianShen_Tmp1 = {}
  XianShen_Tmp = gg.getValues(XianShen_Tmp)
  for i, v in ipairs(XianShen_Tmp) do
    if "" .. v.value == "3.5" then
      XianShen_Tmp1[#XianShen_Tmp1+1] = {}
      XianShen_Tmp1[#XianShen_Tmp1].address = XianShen_Tmp[i].address
      XianShen_Tmp1[#XianShen_Tmp1].flags = 16
      XianShen_Tmp1[#XianShen_Tmp1].value = 999999
    end
  end
  gg.setValues(XianShen_Tmp1)
  gg.clearResults()
 

end
function zhigm(n)
  local XianShen_Sp1 = {}
  for i = 1 ,3 do
    for ii = 1,77 do
      XianShen_Sp1[ii] = {}
      XianShen_Sp1[ii].address = XianShen_Lzdz + 528 * (ii - 1) + 4 * (i - 1) + 8039232
      XianShen_Sp1[ii].flags = 16
      XianShen_Sp1[ii].value = n[i]
      print(n[i])
    end
  end
  gg.setValues(XianShen_Sp1)
end
function XHSG(x)
  local XianShen_RwuZ = {}
  local XianShen_Sp = {}
  local XianShen_Gy = {}
  local XianShen_Hp = {}
  if x == 2 then
    XianShen_Gy = {}
    for i = 1,9 do
      XianShen_Gy[i] = {}
      XianShen_Gy[i].address = XianShen_Lzdz + 304 * ( i - 1 ) + 4796000 + 104
      XianShen_Gy[i].flags = 4
      XianShen_Gy[i].value = 4
    end
    gg.setValues(XianShen_Gy)
    for i = 1,9 do
      XianShen_Gy[i] = {}
      XianShen_Gy[i].address = XianShen_Lzdz + 304 * ( i - 1 ) + 4796000 + 104
      XianShen_Gy[i].flags = 4
      XianShen_Gy[i].value = 1
    end
    gg.setValues(XianShen_Gy)
  end
  for i = 1,3 do
    XianShen_RwuZ[i] = {}
    XianShen_RwuZ[i].address = XianShen_Dz[1].address + i * 4
    XianShen_RwuZ[i].flags = 16
    XianShen_RwuZ = gg.getValues(XianShen_RwuZ)
    if x == 1 then
      XianShen_Sp = {}
      for ii = 1,77 do
        XianShen_Sp[ii] = {}
        XianShen_Sp[ii].address = XianShen_Lzdz + 528 * (ii - 1) + 4 * (i - 1) + 8039232
        XianShen_Sp[ii].flags = 16
        XianShen_Sp[ii].value = XianShen_RwuZ[i].value
      end
      gg.setValues(XianShen_Sp)
    end
    if x == 3 then
      XianShen_Hp = {}
      for ii = 1,256 do
        XianShen_Hp[ii] = {}
        XianShen_Hp[ii].address = XianShen_Dhdz1 + 416 * (ii - 1) + 4 * i
        XianShen_Hp[ii].flags = 16
        XianShen_Hp[ii].value = XianShen_RwuZ[i].value
      end
      gg.addListItems(XianShen_Hp)
      gg.setValues(XianShen_Hp)
    end
  end
end
function ZhuiMeng()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumberC('29281', gg.TYPE_DWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address - 168
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_DWORD
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 1 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        break
      end
    end
    local XianShen_Dzi = XianShen_Zjg[1].address
    XianShen_Zbeiw = XianShen_Dzi
    
   else
    
  end
end
ZhuiMeng()
function XiuGi(ID,p)
  vi = {}
  vi[1] = {}
  vi[1].flags = gg.TYPE_DWORD
  vi[1].address = XianShen_Zbeiw + p
  vi[1].value = ID
  gg.setValues(vi)
end
XianShen_wxnl = false
XianShen_Wxhs = {}
XianShen_Wxhsdz = nil
function Wxnlcsh()
 
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("256", gg.TYPE_DWORD)
  gg.refineNumber("256", gg.TYPE_DWORD)
  XianShen_Wxhs = gg.getResultCount()
  if XianShen_Wxhs ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Wxhs)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address + 60
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_FLOAT
    end
    local XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 1.25 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        XianShen_Wxhsdz = XianShen_Zjg[1].address
        break
      end
    end
    
   else
    
  end
end
Wxnlcsh()
----------------------------------------------------
--花坐标
huazuobiao = {}
for v = 1,3 do
  huazuobiao[v] = {}
  for i = -1,257 do
    huazuobiao[v][i] = {}
    huazuobiao[v][i].address = lzdz + 416 *( i - 1) + 4 * ( v - 1)+ dsb4
    huazuobiao[v][i].flags = 16
  end
end

--碎片坐标
guangmangzuobiao = {}
for v = 1,3 do
  guangmangzuobiao[v] = {}
  for i = 1, 77 do
    guangmangzuobiao[v][i] = {}
    guangmangzuobiao[v][i].address = lzdz + 528 *( i - 1) +4 * ( v - 1) + dsb5
    guangmangzuobiao[v][i].flags = 16
  end
end

--光翼坐标
guangyi= {}
for i = 1,9 do
  guangyi[i] = {}
  guangyi[i].address = lzdz + 304 * (i - 1) + dsb7 + 104
  guangyi[i].flags = 4
end
-----------------------------------------------------
gg.setSpeed(1)
ys = 5
gg.toast("加载完毕   芜湖！")
FX = "home"

------跑图菜单（停用）
function PPT()
  menuc = gg.choice({
  "1.冲（低配）",
  "2.冲他妈的（高配）",
  "3.退出"
  }, nil, "☆ﾐ(o*･ω･)ﾉ跑图---速度快吃配置")
   if menuc == 1 then paopao() end
   if menuc == 2 then paotmd() end
   if menuc == 3 then jiasu(1)-- gg.setSpeed(1)
  FX = "home" home() end
  end
  
  
  
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end YF_Search(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n修改成功" or "" th=(th_) and "\n获取数据成功" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！") tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--##dy浪客
--##2改留下名字

----槽1
function mf1(mfa)
readWrite({{false,"-1082130432",0,4,nil,nil},{"3243",76,4},{"-1073741824",3548,4},{"-1073741824",3552,4}},{{mfa,180,4,false},{"-1404967393",188,4,false},{"1",220,4,false},{"6",3156,4,false}},4,4,"魔法")
gg.setVisible(false) 
end

----槽2
function mf2(mfb)
readWrite({{false,"-1082130432",0,4,nil,nil},{"3243",76,4},{"-1073741824",3548,4},{"-1073741824",3552,4}},{{mfb,228,4,false},{"-1404967393",236,4,false},{"1",268,4,false},{"6",3156,4,false}},4,4,"魔法")
gg.setVisible(false) 
end

----槽3
function mf3(mfc)
readWrite({{false,"-1082130432",0,4,nil,nil},{"3243",76,4},{"-1073741824",3548,4},{"-1073741824",3552,4}},{{mfc,276,4,false},{"-1404967393",284,4,false},{"1",316,4,false},{"6",3156,4,false}},4,4,"魔法")
gg.setVisible(false) 
end

-----临时动作
function dongzuo(num)
readWrite({{false,"29806",12,32,nil,nil},{"116",60,32},{"121",108,32}},{{num,0,32,true},{"4",40,32,true}},32,4,"动作➕升级")
end


  function jd()
  gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("000003E7h", 4)
a = gg.getResults(1)[1].address
gg.clearResults()
YF_Start = string.format("%#x", a - 2000000000)
YF_End = string.format("%#x", a + 500000000)

if YF_End ~= nil then
	gg.toast("🤓准备校验核心")

else
	gg.toast("手机不支持😡")
	os.exit()
end end

------动作升级
  function dzsj()
gg.setRanges(4)
gg.clearResults()
YF_Search(':emote_upgrade',gg.TYPE_BYTE)
gg.getResults(gg.getResultCount())
gg.setRanges(10000)
gg.editAll(':0',gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(4)
YF_Search("1936026722", gg.TYPE_QWORD)
gg.refineNumber("1936026722", gg.TYPE_QWORD)
ResultCount = gg.getResultCount()
local bbc = {}
local tmp = {}
if ResultCount ~= 0 then
  result = gg.getResults(ResultCount)
  for k, v in pairs(result) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address + 248
    tmp[#tmp].flags = gg.TYPE_DWORD
  end
  tmp = gg.getValues(tmp)
  for k, v in pairs(tmp) do
    if v.value == 1 then
      for i = 1, 100 do
        bbc[#bbc + 1] = {}
        bbc[#bbc].address = tmp[k].address + 8 + i * 48
        bbc[#bbc].flags = gg.TYPE_DWORD
        bbc[#bbc].value = 6
      end
      break
    end
  end
  gg.addListItems(bbc)
  gg.setValues(bbc)
end
gg.isVisible(false)
gg.alert("动作升级开启成功")
end



-----献祭菜单（停用）
  function XJ()
  FX = "XJ"
  menux = gg.choice({
  "                             献祭",
  "                           吸一口",
  "                           拿蜡烛",
  "                             重生",
  "                             返回"
   }, nil, "按步骤走，你懂我意思吧")
   if menux == 1 then gg.setVisible(false) renyimen6(36) gg.sleep(3000) YDXJ(dsb1,dsb2,dsb3) end
   if menux == 2 then gg.setVisible(false) HS3()  end
   if menux == 3 then gg.setVisible(false) renyimen6(38) gg.setVisible(false) gg.sleep(120) jiasu(50) Teleport({-30.023597717285156;2415.130615234375;2160.118408203125}) gg.sleep(400) jiasu(1) end
   if menux == 4 then gg.setVisible(false) renyimen6(9) gg.setVisible(false) gg.sleep(800) renyimen6(1) FX = "home" end
   if menux == 5 then home() FX = "home" end
   
end



------霞谷先祖（未完成）
  function xgxz()
  menux = gg.choice({
  "                                     叉腰",
  "                                     抱手",
  "                                     欢呼",
  "                                     倒立",
  "                                     鸟叫",
  "                               翻跟头+鞠躬",
  "                                 送先祖上天",
  "                                      返回"
   }, nil, "                                 霞谷先祖")
   if menux == 1 then gg.setVisible(false)  
gg.sleep(120)  dian() gg.sleep(240)
renyimen6(15) gg.sleep(1200) Teleport({168.277099609375;67.0854263305664;-448.800537109375}) jiasu(2000) 
gg.sleep(1400) Teleport({161.08958435058594;69.99774932861328;-460.7237548828125}) 
gg.sleep(1400) Teleport({151.21826171875;74.6903076171875;-452.7678527832031}) 
gg.sleep(1400) Teleport({161.33865356445312;76.40333557128906;-443.5313720703125}) 
gg.sleep(1400) Teleport({167.83753967285156;76.1551284790039;-445.0443420410156})
gg.toast("                            传送完毕\n                         拿一下动作\n                    拿完再点击悬浮窗取消加速")FX2 = "jiasu"  end
if menux == 2 then gg.setVisible(false) 
renyimen6(18) jiasu(300) gg.sleep(1200) jiasu(1) Teleport({198.5505828857422;728.150390625;-97.30519104003906}) gg.sleep(240) renyimen6(19) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) jiasu(80)  Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.alert("\n                         拿一下动作\n                    拿完再点击悬浮窗取消加速") FX2 = "jiasu" gg.setVisible(false) end
   if menux == 3 then gg.setVisible(false) renyimen6(9) gg.setVisible(false) gg.sleep(800) renyimen6(1) FX = "home" end
   if menux == 4 then gg.setVisible(false) renyimen6() end
   if menux == 5 then gg.setVisible(false) renyimen6(16) gg.sleep(240) Teleport({122.53488159179688;473.30078125;6.8176493644714355}) jiasu(800)
  for i = 1,50 do
xiguangmang() 
gg.sleep(15) end  gg.setVisible(false) gg.alert("\n                          拿一下动作\n                    拿完再点击悬浮窗取消加速") FX2 = "jiasu" end
   if menux == 6 then gg.setVisible(false) renyimen6(19) jiasu(300) gg.sleep(1200) jiasu(1) Teleport({-447.40887451171875;1162.96240234375;84.96009826660156}) gg.sleep(400) Teleport({127.4847412109375;1013.0018920898438;-75.20539855957031}) gg.sleep(240) renyimen6(19) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) jiasu(80)  Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.alert("\n                         拿一下动作\n                    拿完再点击悬浮窗取消加速") FX2 = "jiasu" gg.setVisible(false) end
   if menux == 7 then gg.setVisible(false) renyimen6(20) gg.sleep(240) Teleport({9.411884307861328;137.9564666748047;-182.5710906982422}) gg.alert("                                           请坐。") end
   if menux == 8 then home() FX = "home" end
   
end

-----无限烟花
function wxyh()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("-1076845609", gg.TYPE_DWORD)
  local XianShen_Jg = gg.getResultCount()
  if XianShen_Jg ~= 0 then
    local XianShen_Zjg = gg.getResults(XianShen_Jg)
    local XianShen_Tmp = {}
    for k, v in pairs(XianShen_Zjg) do
      XianShen_Tmp[#XianShen_Tmp + 1] = {}
      XianShen_Tmp[#XianShen_Tmp].address = v.address + 28
      XianShen_Tmp[#XianShen_Tmp].flags = gg.TYPE_DWORD
    end
    XianShen_Tmp = gg.getValues(XianShen_Tmp)
    for k, v in pairs(XianShen_Tmp) do
      if v.value == 5 then
        XianShen_Zjg[1] = XianShen_Tmp[k]
        break
      end
    end
    local XianShen_Wxyh = {}
    XianShen_Wxyh[1] = {}
    XianShen_Wxyh[1].address = XianShen_Zjg[1].address - 4
    XianShen_Wxyh[1].flags = gg.TYPE_DWORD
    XianShen_Wxyh[1].value = "6"
    XianShen_Wxyh[1].freeze = true
    gg.addListItems(XianShen_Wxyh)
    gg.clearResults()
    gg.alert('无限烟花开启成功\n若无效请手持烟花棒到放烟花界面重新执行') gg.setVisible(false)
   else
    gg.toast('无限烟花开启失败')
  end
end



-------------------实用功能----------------------------
function RYMXL()
FX = "RYMXL"
  menub = gg.choice({
    '1.吸火（娱乐功能）',
    "2.点蜡烛【" .. KG_qtdr .. "】",
    "3.炸金花【" .. KG_qtzh .. "】",
    "4.无限能量【" .. KG_wxnl .. "】",
    '5.设置光翼（娱乐功能）',
    '6.复制坐标',
    '7.开图（刷心必备）',
    '8. 吸碎片',
    '9.返回'
  }, nil, "其他功能")
  if menub == 2 then A_qtdr() end
  if menub == 4 then A_wxnl() end
  if menub == 7 then KQM() end
  if menub == 3 then A_qtzh() end
  if menub == 5 then  M_xggy() end
  if menub == 6 then rolePositionMenu() end
  if menub == 1 then xi()  end
  if menub == 8 then  xiguangmang() end
  if menub == 9 then jiasu(1) FX = "home" home() end
    end
    
-------每日任务
    function day()

  menunb = gg.choice({
	'1.重温先祖任务',
    '2.追光球任务',
    '3.烧花',
    '4.鲲鲲',
    '5.面对冥龙',
    '6.掀螃蟹',
    '7.返回'
  }, nil, "每日任务")
  if menunb == 1 then CWXZ() FX = "CWXZ" end
  if menunb == 2 then ZGQ() FX = "ZGQ" end
  if menunb == 5 then gg.setVisible(false) FX = "Main0"  renyimen6(24) gg.setVisible(false) gg.sleep(800) Teleport({28.24741554260254;68.87549591064453;-62.836402893066406}) gg.sleep(120)  jiasu(10) gg.sleep(600) gg.setVisible(false) jiasu(1) gg.alert("被龙瞅一眼赶紧回家") gg.setVisible(false)  end
  if menunb == 6 then gg.setVisible(false) gg.sleep(500) renyimen6(25) gg.setVisible(false) gg.sleep(240) Teleport({-172.90267944335938;1.5974335670471191;436.70770263671875}) end
  if menunb == 3 then shao() gg.setVisible(false) gg.alert("进图后执行下一步") renyimen6(13) gg.sleep(1500) shao() zjd()  gg.alert("自己烧") Teleport({21.772464752197266;140.1890106201172;11.666708946228027}) shao() end
  if menunb == 4 then shao() kunkun() end
  if menunb == 7 then jiasu(1) FX = "home" home() end
    end
    
    
    -----关火
  function shao()
    if KG_qtdr == "关"  then A_qtdr() end
  if KG_qtzh == "关"  then A_qtzh() end
  gg.sleep(240)
  end
  
  ------点火
    function dian()
    shao()
    gg.sleep(120)
  if KG_qtdr == "开"  then A_qtdr() end
  if KG_qtzh == "开"  then A_qtzh() end
  if KG_qtdr == "启动"  then A_qtdr() end
  if KG_qtzh == "启动"  then A_qtzh() end
  gg.sleep(240)
  end
  
  -----重温
  function CWXZ()
  menun = gg.choice({
    '1.云野',
    '2.雨林',
    '3. 霞谷',
    '4.墓土',
    '5.禁阁',
    '6。返回'
  }, nil, "重温先祖0.0")
  if menun == 1 then shao() gg.setVisible(false) gg.sleep(240) cwyy() end
  if menun == 2 then shao() gg.setVisible(false) gg.sleep(240) cwyl() end
  if menun == 3 then shao() gg.setVisible(false) gg.sleep(240) cwxg() end
  if menun == 4 then shao() gg.setVisible(false) gg.sleep(240) cwmt() end
  if menun == 5 then shao() gg.setVisible(false) gg.sleep(240) cwjg() end
  if menun == 6 then shao() jiasu(1) day() end
    end
  
--捉妖源码by长安
  function yygq()
  gg.toast("大威天龙！--长安")
  local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
           for i = 1, 60 do
				
				xx = tostring(roleX) + 8* math.cos(i*3.14/30)
				zz = tostring(roleZ)
				yy = tostring(roleY) + 8* math.sin(i*3.14/30)
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
	gg.toast("大罗法咒!  --长安")
	for i = 1, 60 do
				
				xx = tostring(roleX) + 7* math.cos(i*3.14/30)
				zz = tostring(roleZ) + 2
				yy = tostring(roleY) + 7* math.sin(i*3.14/30)
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
	gg.toast("世尊地藏！--长安")
	for i = 1, 60 do
				
				xx = tostring(roleX) + 9* math.cos(i*3.14/30)
				zz = tostring(roleZ) - 2
				yy = tostring(roleY) + 9* math.sin(i*3.14/30)
                Teleport({xx,zz,yy})
				gg.sleep(20)
				end
				gg.toast("般若叭嘛吽！--长安")
				for i = 1, 60 do
				
				xx = tostring(roleX) + 10* math.cos(i*3.14/30)
				zz = tostring(roleZ) + 4
				yy = tostring(roleY) + 10* math.sin(i*3.14/30)
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
	gg.toast("收!")
	sleep(1200) renyimen6(1) gg.sleep(2000) Teleport({7.385260105133057;1.155248999595642;1.4115355014801025})
  end
  
  
  -----参数方程，笛卡尔心形线
  function xin(r,x)
  local rolePosition = getRolePosition()
  local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
           for i = 1, 240*x do
                xx=tostring(roleX) + r*(2*math.sin(i*3.14/120)-math.sin(2*i*3.14/120))
                yy=tostring(roleY) + r*(2*math.cos(i*3.14/120)-math.cos(2*i*3.14/120))
             
				zz = tostring(roleZ)
			
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
  end
  
  ------上天
  function flyy(x)
  local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
           for i = 1, 100*x do
				
				xx = tostring(roleX)
				zz = tostring(roleZ)
				yy = tostring(roleY)
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
  end 
  
  -----参数方程，圆
 function circle(r,x)
 gg.setVisible(false) 
 local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
           for i = 1, 100*x do
				
				xx = tostring(roleX) + r* math.cos(i*3.14/50)
				zz = tostring(roleZ)
				yy = tostring(roleY) + r* math.sin(i*3.14/50)
                Teleport({xx,zz,yy})
				gg.sleep(20)
	       end
 end
 
 
 -----追光球任务
  function ZGQ() 
  menun = gg.choice({
	'1.云野',
    '2. 雨林',
    '3.霞谷',
    '4.墓土',
    '5.禁阁',
    '6.返回'
  }, nil, "散落的星光")
  if menun == 1 then  gg.alert("冲") gg.setVisible(false) renyimen6(3)  gg.sleep(2000) gg.alert("冲") Teleport({94.2416000366211;155.64657592773438;-19.218523025512695}) zjd() gg.sleep(100)  gg.alert("自己动") gg.setVisible(false) end
  if menun == 2 then  gg.alert("冲")  gg.setVisible(false) renyimen6(9) gg.sleep(2000)  gg.alert("冲") Teleport({21.184173583984375;99.25706481933594;-214.3726348876953}) zjd() gg.sleep(120) gg.alert("自己动") gg.setVisible(false) end
  if menun == 3 then  gg.alert("冲")  gg.setVisible(false) renyimen6(15) gg.sleep(2000)  gg.alert("冲") Teleport({206.4205322265625;47.55751419067383;-529.426513671875}) zjd() gg.alert("自己动") gg.setVisible(false) end
  if menun == 4 then  gg.alert("冲")  gg.setVisible(false) renyimen6(22) gg.sleep(2000)  gg.alert("冲") Teleport({-10.996281623840332;9.366134643554688;189.35252380371094}) zjd() gg.alert("自己动") gg.setVisible(false) end
  if menun == 5 then  gg.alert("冲") gg.setVisible(false) renyimen6(28) gg.sleep(2000)  gg.alert("冲") Teleport({-19.110447311401367;47.426753997802734;13.503926277160645})  zjd() gg.alert("自己动") gg.setVisible(false) end
  if menun == 6 then  gg.setVisible(false) jiasu(1) FX = "day" day() end
    end
    
 ----救鲲任务
  function kunkun()
  gg.alert("GO～") renyimen6(13) gg.sleep(2200)
  gg.alert("找鲲鲲～")  Teleport({-73.71708679199219;135.5146026611328;176.75442504882812})
  gg.sleep(120) gg.alert("烧！") xi() gg.sleep(600) renyimen6(1) gg.sleep(1400) shao()
  end
  
  
  ------重温雨林
function cwyl()
dian() gg.sleep(240)
gg.toast("不知道今天是哪个所以两个一起跑哦")
gg.alert("冲") renyimen6(9) gg.sleep(2200) gg.alert("冲") Teleport({30.717544555664062;97.58821105957031;-179.51841735839844}) xi() jiasu(2000) 
gg.sleep(1200) Teleport({16.617733001708984;96.83940124511719;-177.96267700195312}) 
gg.sleep(1200) Teleport({15.658097267150879;96.08138275146484;-166.01182556152344}) 
gg.sleep(1200) Teleport({10.525557518005371;97.85975646972656;-155.72642517089844}) 
gg.sleep(1200) Teleport({13.903735160827637;99.43929290771484;-145.87484741210938}) 
gg.sleep(1200) Teleport({18.225797653198242;99.09698486328125;-133.9534149169922})
jiasu(1) gg.sleep(1000) 
gg.alert("冲") renyimen6(13) gg.sleep(2200) gg.alert("冲") Teleport({-82.60684967041016;134.70726013183594;222.92855834960938}) xi() jiasu(3000) 
gg.sleep(1400) Teleport({-83.09510040283203;134.7772674560547;215.17088317871094}) 
gg.sleep(1400) Teleport({-71.99410247802734;134.694580078125;223.7236328125}) 
gg.sleep(1600) Teleport({-81.38375854492188;134.91799926757812;232.3917999267578}) 
gg.sleep(1400) Teleport({-83.38694763183594;134.9080352783203;221.70884704589844}) 
gg.sleep(1400) Teleport({-91.62196350097656;136.1894073486328;225.53285217285156})
jiasu(1) gg.sleep(1200) renyimen6(1) gg.sleep(1200) Teleport({4.834778308868408;0.7928875684738159;3.7869420051574707})
end

-------重温霞谷
function cwxg()
gg.sleep(400)
gg.alert("冲") renyimen6(15)  gg.sleep(2200) gg.alert("冲") Teleport({168.277099609375;67.0854263305664;-448.800537109375}) xi() jiasu(2000) 
gg.sleep(1900) Teleport({161.08958435058594;69.99774932861328;-460.7237548828125}) 
gg.sleep(1900) Teleport({151.21826171875;74.6903076171875;-452.7678527832031}) 
gg.sleep(1900) Teleport({161.33865356445312;76.40333557128906;-443.5313720703125}) 
gg.sleep(1900) Teleport({167.83753967285156;76.1551284790039;-445.0443420410156})
jiasu(1) gg.sleep(1200) renyimen6(1) gg.sleep(1200) Teleport({-2.817406415939331;1.478539228439331;5.0063581466674805}) gg.setVisible(false)
end

------重温墓土
function cwmt()
 gg.sleep(240)
gg.toast("不知道今天是哪个所以两个一起跑了。")
gg.alert("冲") renyimen6(22)  gg.sleep(2200) gg.alert("冲")  Teleport({-21.022872924804688;7.687601566314697;263.1231994628906}) xi() gg.sleep(700) Teleport({-21.022872924804688;7.687601566314697;263.1231994628906}) jiasu(2000) 
gg.sleep(1600) Teleport({-32.31200408935547;2.578775405883789;244.72828674316406}) 
gg.sleep(1600) Teleport({-27.70017433166504;0.4585024416446686;230.10153198242188}) 
gg.sleep(1600) Teleport({-18.609453201293945;1.7677735090255737;219.97650146484375}) 
gg.sleep(1600) Teleport({-21.618343353271484;1.1518057584762573;207.3103790283203})
jiasu(1) gg.sleep(1400)
gg.alert("冲") renyimen6(24)  gg.sleep(2200) gg.alert("冲")  Teleport({63.24020004272461;93.08414459228516;261.6358337402344}) xi() jiasu(3000) 
gg.sleep(1600) Teleport({45.12158966064453;91.38150787353516;236.85446166992188}) 
gg.sleep(1600) Teleport({47.805477142333984;90.07632446289062;217.77601623535156}) 
gg.sleep(1600) Teleport({52.47241973876953;89.94781494140625;206.60629272460938}) 
gg.sleep(1600) Teleport({58.46994400024414;92.32652282714844;195.1707305908203}) 
gg.sleep(1600) Teleport({59.69035339355469;95.58499145507812;190.06103515625}) 
gg.sleep(1600) Teleport({62.75392532348633;99.66151428222656;181.77374267578125}) 
gg.sleep(1600) Teleport({67.20504760742188;99.02229309082031;145.18380737304688}) 
gg.sleep(1800) jiasu(1)  renyimen6(1) gg.sleep(1200)  gg.sleep(2400) Teleport({-5.1854939460754395;1.0245624780654907;1.9388291835784912}) gg.setVisible(false)
end 

-------重温云野
function cwyy()
gg.sleep(240)
gg.toast("不知道今天是哪个所以三个一起跑了。")
gg.alert("冲") renyimen6(3)  gg.sleep(2200) gg.alert("冲")  Teleport({101.39147186279297;155.259765625;17.573368072509766}) xi() jiasu(3000)  
gg.sleep(1600) Teleport({116.76346588134766;157.09292602539062;31.87032127380371}) 
gg.sleep(1600) Teleport({108.52499389648438;156.45452880859375;26.652238845825195}) 
gg.sleep(1600) Teleport({103.02177429199219;157.47422790527344;32.652015686035156})
jiasu(1) gg.sleep(1400)
gg.alert("冲") renyimen6(6)  gg.sleep(2200) gg.alert("冲")  Teleport({-192.6410369873047;193.49740600585938;83.7305679321289}) xi()  jiasu(3000) 
gg.sleep(1600) Teleport({-196.57264709472656;198.31546020507812;83.07209014892578}) 
gg.sleep(1600) Teleport({-195.7012176513672;201.6608123779297;89.05215454101562}) 
gg.sleep(1600) Teleport({-199.0491180419922;203.51486206054688;85.91160583496094}) 
gg.sleep(1600) Teleport({-196.86752319335938;206.16444396972656;86.16981506347656}) 
gg.sleep(1200)
 gg.alert("冲") renyimen6(8) jiasu(3000) gg.sleep(1200) Teleport({-60.73652648925781;85.0916976928711;42.11651611328125}) xi() 
gg.sleep(2400) Teleport({75.71053314208984;184.5050506591797;331.66033935546875}) 
gg.sleep(1600) Teleport({83.1615982055664;188.37246704101562;348.0260009765625}) 
gg.sleep(1600) Teleport({73.4952392578125;193.97787475585938;361.26654052734375}) 
gg.sleep(2000) renyimen6(1) jiasu(1) gg.sleep(1200) Teleport({7.385260105133057;1.155248999595642;1.4115355014801025}) gg.setVisible(false)
end


-------重温禁阁
function cwjg()
gg.sleep(240)
jiasu(10)
gg.toast("不知道今天是哪个所以两个一起跑了。")
gg.alert("冲") renyimen6(28)  gg.sleep(2200) gg.alert("冲")  Teleport({47.28824234008789;83.77191162109375;42.8892936706543}) xi() jiasu(10)  
gg.sleep(1600) Teleport({34.95984649658203;83.89051055908203;49.509517669677734}) 
gg.sleep(1600) Teleport({29.333452224731445;86.6907958984375;60.34990692138672}) 
gg.sleep(1600) Teleport({29.333452224731445;89.6907958984375;60.34990692138672}) 
gg.sleep(1600) Teleport({27.75568962097168;82.82476806640625;39.72005844116211})
gg.sleep(2200) gg.alert("冲") 
Teleport({-37.31019592285156;143.4185333251953;-22.629653930664062}) xi() jiasu(10) 
gg.sleep(1600) Teleport({-19.36696434020996;146.7249755859375;-29.66425132751465}) 
gg.sleep(1600) Teleport({-3.026301145553589;147.0325164794922;-32.68048095703125}) 
gg.sleep(1600) Teleport({25.639333724975586;152.19247436523438;-37.33803176879883}) 
gg.sleep(1600) Teleport({31.249401092529297;153.8966827392578;-41.91915512084961}) 
gg.sleep(1600) renyimen6(1) jiasu(1) gg.sleep(1200) Teleport({-5.985757827758789;0.5645518898963928;-2.118807792663574}) gg.setVisible(false)
end


--------传送主菜单
function Main0()
  
  menu = gg.choice({
	'1.遇境',
    '2.晨岛',
    '3.云野',
    '4. 雨林',
    '5. 霞谷',
    '6.暮土',
    '7.禁阁',
	'8.暴风眼',
	'9.其他功能',
    '10. 返回',
  }, nil, "任意门")
  if menu == 1 then renyimen6(1) end
  if menu == 2 then  renyimen6(2) end
  if menu == 3 then  YY() FX = "YY" end
  if menu == 4 then  YL() FX = "YL" end
  if menu == 5 then  XG() FX = "XG" end
  if menu == 6 then  MT() FX = "MT" end
  if menu == 7 then  JG() FX = "JG" end
  if menu == 8 then  BFY() FX = "BFY" end
  if menu == 9 then RYMXL() FX = "RYMXL" end
  if menu == 10 then  jiasu(1) home() FX = "home" end
      end


function YY()
  
  menu1 = gg.choice({
    '1. 吸',
	'2.云野主图',
    '3.云野左隐藏图',
    '4.云野右隐藏图',
    '5.圣岛',
    '6.云野八人图',
    '7.云野神殿',
	'8.返回上一页',
  }, nil, "云野 ")
  if menu1 == 1 then xi()  end
  if menu1 == 2 then   renyimen6(3) end
  if menu1 == 3 then   renyimen6(5) end
  if menu1 == 4 then  renyimen6(6) end
  if menu1 == 5 then  renyimen6(40) end
  if menu1 == 6 then renyimen6(7) gg.sleep(120) Teleport({-6.682931423187256;20.488245010375977;-0.1747983992099762}) end
  if menu1 == 7 then   renyimen6(8) end
  if menu1 == 8 then  FX="Main0" Main0() end
	  end


function YL()
  
  menu2 = gg.choice({
    '1.吸',
    '2.雨林初始图',
    '3.雨林中间图',
    '4.雨林水母图',
    '5.雨林右隐藏图',
    '6.雨林隐藏图洞穴',
    '7.雨林神殿',
	'8.返回上一页',
  }, nil, "雨林 ")
  if menu2 == 1 then xi()  end
  if menu2 == 2 then  gg.setVisible(false) renyimen6(9) end
  if menu2 == 3 then  gg.setVisible(false) renyimen6(10) end
  if menu2 == 4 then gg.setVisible(false) renyimen6(13) end
  if menu2 == 5 then  gg.setVisible(false) renyimen6(11) end
  if menu2 == 6 then  gg.setVisible(false) renyimen6(12) end
  if menu2 == 7 then  gg.setVisible(false) renyimen6(14) end
  if menu2 == 8 then  FX="Main0" Main0() end
	  end

function XG()
  
  menu3 = gg.choice({
  	'1.吸',
  	'2.霞谷出生点',
    '3.霞光城',
    '4.霞光城-飞行道',
    '5.落城-滑道',
    '6.飞行or滑行赛道终点',
    '7.滑行赛道起点',
    '8.峡谷神殿',
	'9.返回上一页',
  }, nil, "峡谷 ")
  if menu3 == 1 then xi()  end
  if menu3 == 2 then  gg.setVisible(false) renyimen6(15) end
  if menu3 == 3 then  gg.setVisible(false) renyimen6(16) end
  if menu3 == 4 then  gg.setVisible(false) renyimen6(17) end
  if menu3 == 5 then  gg.setVisible(false) renyimen6(18) end
  if menu3 == 6 then  gg.setVisible(false) renyimen6(19) end
  if menu3 == 7 then  gg.setVisible(false) renyimen6(18) gg.sleep(1000) xiguangmang() end
  if menu3 == 8 then gg.setVisible(false) renyimen6(20) end
  if menu3 == 9 then  FX="Main0" Main0() end
	  end

function MT()
  
  menu4 = gg.choice({
  	'1.吸',
    '2.墓土初始图',
    '3.墓土主图',
    '4.遗忘方舟',
    '5.五龙图',
    '6. 沉船',
    '7.墓土古战场',
	'8.返回上一页',
  }, nil, "墓土 ")
  if menu4 == 1 then xi()  end
  if menu4 == 2 then  gg.setVisible(false) renyimen6(21) end 
  if menu4 == 3 then  gg.setVisible(false) renyimen6(22) end
  if menu4 == 4 then  gg.setVisible(false) renyimen6(23) end
  if menu4 == 5 then gg.setVisible(false) renyimen6(24) end
  if menu4 == 6 then gg.setVisible(false) renyimen6(25) end
  if menu4 == 7 then gg.setVisible(false) renyimen6(26) end
  if menu4 == 8 then  FX="Main0" Main0() end
	  end

function JG()
  
  menu5 = gg.choice({
	'1.吸',
    '2.禁阁初始图',
    '3.禁阁地下室',
    '4.办公室',
    '5.禁阁顶层',
    '6. 禁阁终点',
	'7.返回上一页',
  }, nil, '禁阁 ')
  if menu5 == 1 then xi()  end
  if menu5 == 2 then gg.setVisible(false) renyimen6(28) end
  if menu5 == 3 then gg.setVisible(false) renyimen6(29) end
  if menu5 == 4 then gg.setVisible(false)  RYM(32) end
  if menu5 == 5 then  gg.setVisible(false) renyimen6(30) end
  if menu5 == 6 then gg.setVisible(false) renyimen6(31) end
  if menu5 == 7 then  FX="Main0" Main0() end
	  end

function BFY()
menu6 = gg.choice({
    '1.暴风眼初始图',
    '2.暴风眼主图',
    '3.献祭图',
    '4.重生路一',
    '5. 重生路二',
    '6.重生路终点（重生星盘）',
    '7.重生之遇境(在重生星盘点)',
	'8.返回上一页',
  }, nil, "暴风眼 ")
  if menu6 == 1 then gg.setVisible(false) renyimen6(33) end
  if menu6 == 2 then  gg.setVisible(false) renyimen6(34) end
  if menu6 == 3 then  gg.setVisible(false) renyimen6(35) gg.sleep(2000) YDXJ(dsb1,dsb2,dsb3)  FX = "XJ" end
  if menu6 == 4 then gg.setVisible(false)  renyimen6(36) end
  if menu6 == 5 then gg.setVisible(false) renyimen6(37) end
  if menu6 == 6 then gg.setVisible(false) renyimen6(38) end
  if menu6 == 7 then gg.setVisible(false)  renyimen6(9) gg.sleep(2000) renyimen6(1) end
  if menu6 == 8 then  jiasu(1) FX="Main0" Main0() end
    end


--开七门
function KQM()
renyimen6(31)
gg.setSpeed(80)
gg.setVisible(false) 
gg.sleep(10000)
Teleport({9.934490203857422;328.060546875;14.1777982711792})
jiasu(1)
gg.sleep(2000)
Teleport({1.249151587486267;0.7454519867897034;5.2902655601501465})
stand(1) jiasu(10) gg.sleep(400) stand(2) gg.sleep(2000)
Teleport({9.934490203857422;328.060546875;14.1777982711792})
FX2 = "jiasu"
end


--判断当前位置
function xbweizhipanduan(x)
    tmp = {}
    tmp[1] = {}
    tmp[1].address = lzdz + x
    tmp[1].flags = 4
    tmp = gg.getValues(tmp)
       for i = 1 , 40 do
    if tmp[1].value == map[i][2] then
      X = i
      break
    end
  end
end
--新任意门封装
function renyimen6(x)
  RYM6(x)
end
--瞬移封装
function syrenyimen6(x)
  if x == 28 then
  Teleport({ -1.7305372953414917; 207.7891387939453; -66.75567626953125 })
  gg.sleep(120)
  Teleport({ -1.7305372953414917; 207.7891387939453; -66.75567626953125 })
  gg.sleep(120)
  Teleport({ -1.7305372953414917; 207.7891387939453; -66.75567626953125 })
  else if x == 33 then
  Teleport({ 7.157510280609131; 62.34695816040039; -26.602800369262695 })
  gg.sleep(120)
  Teleport({ 7.157510280609131; 62.34695816040039; -26.602800369262695 })
  gg.sleep(120)
  Teleport({ 7.157510280609131; 62.34695816040039; -26.602800369262695 })
  x = 28
  end
  end
end

--吸光翼
function xiguangyi()
  gg.toast("你号没了")
end
--吸花🌸

function xihua()
  for i = 1, 3 do
    renzuobiao=gg.getValues(XianShen_Tmp)
    xyz[i] = renzuobiao[i].value
  end
  for v = 1,3 do
    for i = -1,257 do
      huazuobiao[v][i].value= xyz[v]
    end
    gg.setValues(huazuobiao[v])
    gg.addListItems(huazuobiao[v])
  end
  --gg.toast("吸取成功")
end
function xi()
     ShunD1()
      XHSG(3)
      XiSouZH()
      A_xizhuhuo()
 end
 
function paotmd(x)
hqzb() gg.sleep(120) dian() gg.sleep(400)  jiasu(50)
 renyimen6(1) gg.toast("开炮~") gg.sleep(500) jiasu(50) xi() gg.sleep(x*1000)
renyimen6(2) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(3) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(240) Teleport({101.39147186279297;155.259765625;17.573368072509766}) xi() gg.sleep(x*1000)
renyimen6(4) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(5) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(6) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(7) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(8) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(9) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(1600) Teleport({15.786823272705078;97.05528259277344;-179.10711669921875}) xi() gg.sleep(x*1000)
renyimen6(10) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(11) gg.sleep(x*1000) jiasu(1) xi() xi() gg.sleep(x*1000)
renyimen6(12) gg.sleep(x*1000) xi() Teleport({-19.424455642700195;93.06510162353516;-298.300048828125}) gg.sleep(1200) jiasu(1)  xi() xi() gg.sleep(x*1000)
renyimen6(13) gg.sleep(x*1000) jiasu(1) xi() xi() gg.sleep(x*1000)
renyimen6(14) gg.sleep(x*1000) jiasu(1) xi() xi() gg.sleep(600) Teleport({1.1304383277893066;107.63189697265625;70.2397232055664}) xi() xi() gg.sleep(x*1000) 
renyimen6(15) gg.sleep(x*1000) jiasu(1) xi() xi() gg.sleep(x*1000)
renyimen6(16) gg.sleep(x*1000) xi() gg.sleep(x*1000)
jiasu(1) renyimen6(17) gg.sleep(2800) Teleport({168.01861572265625;1187.0384521484375;391.32952880859375}) gg.sleep(800) stand(1) stand(2) jiasu(1) gg.toast("等一会嗷...") gg.sleep(12000) jiasu(10) xi() xiguangmang() gg.sleep(x*1000)
renyimen6(19) gg.sleep(x*1000) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) jiasu(80)  Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) gg.sleep(x*3000)
 jiasu(1) renyimen6(18) gg.sleep(2800) Teleport({163.0267791748047;935.1610107421875;662.2533569335938}) jiasu(1) gg.sleep(800) stand(1) stand(2) jiasu(1) gg.toast("等一会嗷...") gg.sleep(12000) jiasu(10) xi() xiguangmang() gg.sleep(x*1000)
renyimen6(19) gg.sleep(x*1000) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) xi() gg.sleep(x*3000)
renyimen6(20) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(21) gg.sleep(x*1000) jiasu(50) xi() xi() gg.sleep(x*1000)
renyimen6(22) gg.sleep(x*1000) jiasu(50) gg.sleep(120) xi() gg.sleep(x*1000)
renyimen6(23) gg.sleep(x*1000) jiasu(50)  xi() xi() gg.sleep(x*1000)
renyimen6(24) gg.sleep(x*1500) jiasu(50) xi() xi() gg.sleep(x*1000) 
renyimen6(25) gg.sleep(x*1500) jiasu(50) xi() xi() gg.sleep(x*1000) 
renyimen6(26) gg.sleep(x*1500) jiasu(50) xi() xi() gg.sleep(x*1000) 
renyimen6(27) gg.sleep(x*1000) xi() xi() gg.sleep(x*1000)
 syrenyimen6(28) gg.sleep(x*1000) xi() xi() gg.sleep(x*1000) 
 renyimen6(29) gg.sleep(x*1000) xi() xi() gg.sleep(x*1000) 
 renyimen6(30) gg.sleep(x*1000)  xi() xi() gg.sleep(x*1000)
renyimen6(32) gg.sleep(x*1000) xi() xi() gg.sleep(400) Teleport({6.844233989715576;61.93735885620117;-26.805519104003906}) gg.sleep(3400)
syrenyimen6(33) gg.sleep(x*1000) xi() xi() gg.sleep(x*1000)
renyimen6(33)  jiasu(10) xi() xi() gg.sleep(2800) Teleport({-5.766541004180908;198.42489624023438;-24.002187728881836}) gg.sleep(2800) xi() gg.sleep(x*1000)
renyimen6(40) gg.sleep(x*1000) xi() xi() gg.sleep(x*1000)
renyimen6(1) gg.sleep(x*1000)  jiasu(1) gg.clearResults() Teleport({1.0317596197128296;1.100462555885315;-0.4335229694843292}) Teleport({1.0317596197128296;1.100462555885315;-0.4335229694843292}) gg.removeListItems(renzuobiao) shao() gg.alert("                             跑完噜\n                         八人门俺无能为力\n                             你自己传送过去开吧") gg.setVisible(false)
 
 end
 function paopao()
hqzb()  gg.sleep(120) dian() gg.sleep(400)  jiasu(50)
 renyimen6(1) gg.toast("开炮~") gg.sleep(500) jiasu(50) xi() gg.sleep(1600)
renyimen6(2) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(3) gg.sleep(3800) jiasu(50) xi() gg.sleep(240) Teleport({101.39147186279297;155.259765625;17.573368072509766}) xi() gg.sleep(1600)
renyimen6(4) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(5) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(6) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(7) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(8) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(9) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(10) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600)
renyimen6(11) gg.sleep(3800) jiasu(5) xi() gg.sleep(1600)
renyimen6(12) gg.sleep(3800) jiasu(5)  xi() gg.sleep(2400)
renyimen6(13) gg.sleep(3800) jiasu(5) xi() gg.sleep(1600) Teleport({1.1304383277893066;107.63189697265625;70.2397232055664}) xi() gg.sleep(600) 
renyimen6(14) gg.sleep(3800) jiasu(5) xi() gg.sleep(1600) 
renyimen6(15) gg.sleep(3800) jiasu(5) xi() gg.sleep(1600)
renyimen6(16) gg.sleep(3800) jiasu(10) xi() gg.sleep(1600) gg.sleep(2600)
renyimen6(17) gg.sleep(3800) jiasu(10) xi() gg.sleep(1600) gg.sleep(2600)
 renyimen6(18) jiasu(10)  gg.sleep(3000) Teleport({168.01861572265625;1187.0384521484375;391.32952880859375}) gg.sleep(800) stand(1) stand(2) gg.sleep(2400) xi() Teleport({88.34894561767578;1184.8089599609375;396.40911865234375}) gg.sleep(1400) Teleport({77.84562683105469;1184.768310546875;381.168212890625}) gg.sleep(1400)
renyimen6(20) jiasu(80) gg.sleep(1800) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(800) jiasu(80)  Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) gg.sleep(6000)
 renyimen6(19) jiasu(10) gg.sleep(2800) Teleport({163.0267791748047;935.1610107421875;662.2533569335938}) gg.sleep(400) stand(2) gg.sleep(2400) xi() Teleport({184.30210876464844;887.1828002929688;571.5154418945312}) gg.sleep(1400) Teleport({146.49046325683594;853.74853515625;481.4435119628906}) gg.sleep(1400)
renyimen6(20) jiasu(80) gg.sleep(2800) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) gg.sleep(400) Teleport({57.655208587646484;133.77284240722656;-216.06204223632812}) jiasu(80) xi() gg.sleep(6000)
renyimen6(21) gg.sleep(3800) jiasu(50) xi()  gg.sleep(2600)
renyimen6(22) gg.sleep(3800) jiasu(50) gg.sleep(120) xi() gg.sleep(2600)
renyimen6(23) gg.sleep(3900) jiasu(1) Teleport({-21.022872924804688;7.687601566314697;263.1231994628906}) xi() gg.sleep(1600)
renyimen6(24) gg.sleep(3800) jiasu(50) Teleport({112.59884643555;141.60664367676;385.39486694336}) xi() gg.sleep(1600) 
renyimen6(25) gg.sleep(3800) jiasu(50) xi() gg.sleep(1600) 
renyimen6(26) gg.sleep(3800) Teleport({-177.11834716796875;20.090808868408203;384.1958312988281}) jiasu(50) xi() gg.sleep(1600) 
renyimen6(27) gg.sleep(3800) xi() gg.sleep(1600)
 renyimen6(28) gg.sleep(3800) xi() gg.sleep(1600) 
 renyimen6(29) gg.sleep(3800) xi() gg.sleep(1600) 
 renyimen6(30) gg.sleep(3800)  xi() gg.sleep(1600)
renyimen6(32) gg.sleep(3800) xi() gg.sleep(400) Teleport({6.844233989715576;61.93735885620117;-26.805519104003906}) gg.sleep(2400)
renyimen6(33)  gg.sleep(3800) jiasu(10) xi() gg.sleep(1600) 
renyimen6(34) gg.sleep(3800)  xi() gg.sleep(1600)
renyimen6(35) gg.sleep(3800)  xi() gg.sleep(1600)
 jiasu(1) gg.clearResults() renyimen6(1) Teleport({1.0317596197128296;1.100462555885315;-0.4335229694843292}) Teleport({1.0317596197128296;1.100462555885315;-0.4335229694843292}) gg.alert("                             跑完噜\n                         八人门俺无能为力\n                             你自己传送过去开吧") gg.setVisible(false)
 
 end
 function naihe()
 load(dofile('./speed.lua'))
 naihe = "/sdcard/speed.lua"
gg.alert("光速跑图  修复\n跑完请使用左上角小方框\n退出光速跑图")
  local nh = io.open(naihe)
  if nh == nil then
    gg.downloadFile( "http://49.234.215.120:88/speed.lua","./speed.lua")
    load(dofile("./speed.lua"))
   else
      dofile("./speed.lua")
   end
os.exit()
 
 end
function test()
FX = "test" 
menut = gg.choice({
	'1.STAND',
	'2. MAGIC',
    '3.NEXT',
    '4.TEST',
    '5. COPY',
	'6.EXIT',
  }, nil, "解锁全部装扮测试")
  if menut == 1 then dzdzdz() end
if menut == 2 then mgc() end
  if menut == 3 then button() gg.setVisible(false) end
  if menut == 4 then jd() readWrite({{false,"1065353216",0,4,nil,nil},{"48",84,4},{"543",100,4},{"14",104,4},{"1023969417",116,4}},{{"3",8,4,true},{"60",16,4,true}},4,4,"画质")
 end
  if menut == 5 then local positionStr = currentPosition()
		gg.copyText(positionStr, false)
		gg.toast("COPY")
		gg.setVisible(false) end
  if menut == 6 then  jiasu(1) FX="home" home() end
end
mname1 = "无"
mname2 = "无"
mname3 = "无"
function mgc()
FX = "mgc" 
menumgc = gg.choice({
	"1.魔法槽「" .. mname1 .. "」",
	"2.魔法槽「" .. mname2 .. "」",
    "3.魔法槽「" .. mname3 .. "」",
    '4.清空',
	'5.返回',
  }, nil, "整合脚本魔法")
  if menumgc == 1 then mfcd(3) end
if menumgc == 2 then mfcd(2) end
  if menumgc == 3 then mfcd(1) end
  if menumgc == 4 then
 mf1(0) mf2(0) mf3(0)
 mname1 = "无"
mname2 = "无"
mname3 = "无"
  end
  if menumgc == 5 then FX="hlhs" hlhs() end
end

function mfcd(mfc)
FX = "mgc"
menumf = gg.choice({
	'1.幼崽',
	'2.成年',
    '3.变大',
    '4.变小',
    '5.璀璨',
    '6.驱龙',
    '7.防水',
    '8.漂浮',
    '9.元气',
    '10.抗黑',
    '11.无',
	'12.返回',
  }, nil, "整合脚本魔法")
  if menumf == 1 then gg.setVisible(false) mfmf(mfc,1692428656,"幼崽") gg.setVisible(false) end
  if menumf == 2 then gg.setVisible(false) mfmf(mfc,891098028,"成年")  gg.setVisible(false) end
  if menumf == 3 then gg.setVisible(false) mfmf(mfc,-1879316162,"变大") gg.setVisible(false) end
  if menumf == 4 then gg.setVisible(false) mfmf(mfc,2142718166,"变小") gg.setVisible(false) end
  if menumf == 5 then gg.setVisible(false) mfmf(mfc,1097748727,"璀璨") gg.setVisible(false) end
  if menumf == 6 then gg.setVisible(false) mfmf(mfc,1067647386,"驱龙") gg.setVisible(false) end
  if menumf == 7 then gg.setVisible(false) mfmf(mfc,-1463943689,"防水") gg.setVisible(false) end
  if menumf == 8 then gg.setVisible(false) mfmf(mfc,1860519737,"漂浮") gg.setVisible(false) end
  if menumf == 9 then gg.setVisible(false) mfmf(mfc,1750685908,"元气") gg.setVisible(false) end
  if menumf == 10 then gg.setVisible(false) mfmf(mfc,383062578,"抗黑") gg.setVisible(false) end
  if menumf == 11 then gg.setVisible(false) mfmf(mfc,0,"无") gg.setVisible(false) end
  if menumf == 12 then FX="mgc" mgc() end
end
function mfmf(mfc,mf,mname)
if mfc == 1 and mname1~=mname and mname2~=mname and mname3~=mname then
mf1(mf)
mname3 = mname
elseif mfc == 2 and mname1~=mname and mname2~=mname and mname3~=mname then
mf2(mf)
mname2 = mname
elseif mfc == 3 and mname1~=mname and mname2~=mname and mname3~=mname then
mf3(mf)
mname1 = mname
else
gg.alert("已存在此魔法效果")
end
end
function tst(aaa)
if aaa == 17 then aaa = 20
elseif aaa == 34 then aaa = 40
elseif aaa == 41 then aaa = 1
else 
     renyimen6(aaa) end
end
function magic()
Wxnlcsh()
local XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28244 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 1097748727
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 31316 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 3
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28252 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 1752658590
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28244 + 40 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].freeze = true
XianShen_Tmp[1].value = 0
gg.setValues(XianShen_Tmp)
gg.addListItems(XianShen_Tmp)
magicc = "开"
end

function magicoff()
Wxnlcsh()
local XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28244 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 0
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 31316 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 0
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28252 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 1752658590
gg.setValues(XianShen_Tmp)
XianShen_Tmp = {}
XianShen_Tmp[1] = {}
XianShen_Tmp[1].address = XianShen_Wxhsdz + 28244 + 40 - 56
XianShen_Tmp[1].flags = gg.TYPE_DWORD
XianShen_Tmp[1].value = 0
XianShen_Tmp[1].freeze = false
gg.setValues(XianShen_Tmp)
gg.removeListItems(XianShen_Tmp)
magicc = "关"
end
function bodyMagic()
	ene = wxnlll()
	local sd = ene 
	
	
	
	if(not sd) then
		gg.alert("请关闭框架后台并重新启动\n或者重启手机")
		err()
  sleep(80000)
		return
	end
	
	local selecteMagic = gg.choice({
		"1.矮人放大",
		"2.大",
		"3.原体型缩小",
		"4.小",
		"5.靓仔",
		"6.恢复变化",
		"7.返回上页"
	},nil, "7魔法东街")
	
	local bodySizeAddr = 			sd + 29100 - 936
	local bodyPyAddr = 				sd + 29140 - 936
	local bodyPhysiqueAddr = 		sd + 31316
	local bodyMagicTimeAddr = 		sd + 29108 - 936
	local bodySizeMagicTimeAddr = 	sd + 29148 - 936
	local bodyLightMagicAddr = 		sd + 28244
	local bodyLightMagicTimeAddr = 	sd + 28252

	local bodyStates = {} 
	if(selecteMagic == nil) then
		return
	elseif(selecteMagic == 1) then

		bodyStates[1]={}
		bodyStates[1].address= bodySizeAddr
		bodyStates[1].flags=gg.TYPE_DWORD
		bodyStates[1].value=1692428656
		bodyStates[2]={}
		bodyStates[2].address= bodyPyAddr
		bodyStates[2].flags=gg.TYPE_DWORD
		bodyStates[2].value=-1879316162
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=4
		bodyStates[5]={} 
		bodyStates[5].address= bodyMagicTimeAddr
		bodyStates[5].flags = gg.TYPE_DWORD
		bodyStates[5].freeze = true
		bodyStates[5].value = 1752658590
		bodyStates[6]={}
		bodyStates[6].address= bodySizeMagicTimeAddr
		bodyStates[6].flags = gg.TYPE_DWORD
		bodyStates[6].freeze = true
		bodyStates[6].value = 1752658590
	elseif(selecteMagic == 2) then
		bodyStates[1]={}
		bodyStates[1].address= bodySizeAddr
		bodyStates[1].flags=gg.TYPE_DWORD
		bodyStates[1].value=891098028
		bodyStates[2]={}
		bodyStates[2].address= bodyPyAddr
		bodyStates[2].flags=gg.TYPE_DWORD
		bodyStates[2].value=-1879316162
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=4
		bodyStates[5]={} 
		bodyStates[5].address= bodyMagicTimeAddr
		bodyStates[5].flags = gg.TYPE_DWORD
		bodyStates[5].freeze = true
		bodyStates[5].value = 1752658590
		bodyStates[6]={}
		bodyStates[6].address= bodySizeMagicTimeAddr
		bodyStates[6].flags = gg.TYPE_DWORD
		bodyStates[6].freeze = true
		bodyStates[6].value = 1752658590
	elseif(selecteMagic == 3) then
		bodyStates[2]={}
		bodyStates[2].address= bodyPyAddr
		bodyStates[2].flags=gg.TYPE_DWORD
		bodyStates[2].value=2142718166
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=3
		bodyStates[6]={}
		bodyStates[6].address= bodySizeMagicTimeAddr
		bodyStates[6].flags = gg.TYPE_DWORD
		bodyStates[6].freeze = true
		bodyStates[6].value = 1752658590
	elseif(selecteMagic == 4) then
		bodyStates={}
		bodyStates[1]={}
		bodyStates[1].address= bodySizeAddr
		bodyStates[1].flags=gg.TYPE_DWORD
		bodyStates[1].value=1692428656
		bodyStates[2]={}
		bodyStates[2].address= bodyPyAddr
		bodyStates[2].flags=gg.TYPE_DWORD
		bodyStates[2].value=2142718166
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=3
		bodyStates[5]={}
		bodyStates[5].address= bodyMagicTimeAddr
		bodyStates[5].flags = gg.TYPE_DWORD
		bodyStates[5].freeze = true
		bodyStates[5].value = 1752658590
		bodyStates[6]={}
		bodyStates[6].address= bodySizeMagicTimeAddr
		bodyStates[6].flags = gg.TYPE_DWORD
		bodyStates[6].freeze = true
		bodyStates[6].value = 1752658590
	elseif(selecteMagic == 5) then
		bodyStates[3]={}
		bodyStates[3].address= bodyLightMagicAddr
		bodyStates[3].flags=gg.TYPE_DWORD
		bodyStates[3].value=1097748727
		bodyStates[7]={}
		bodyStates[7].address=bodyLightMagicTimeAddr
		bodyStates[7].flags = gg.TYPE_DWORD
		bodyStates[7].freeze = true
		bodyStates[7].value = 1752658590
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=3
	elseif(selecteMagic == 6) then
		bodyStates[7]={}
		bodyStates[7].address=bodyLightMagicTimeAddr
		bodyStates[7].flags = gg.TYPE_DWORD
		bodyStates[7].freeze = false
		bodyStates[7].value = 1752658590
		bodyStates[4]={}
		bodyStates[4].address= bodyPhysiqueAddr
		bodyStates[4].flags=gg.TYPE_DWORD
		bodyStates[4].value=0
		gg.removeListItems(bodyStates)
		gg.toast("已恢复原体型！")
		gg.setValues(bodyStates)
		return
	elseif(selecteMagic == 7) then
		hlhs() FX = "hlhs"
	end
	gg.setValues(bodyStates)
end
function boom(sl)
if sl ~= 0 then
sl = sl - 1
bao()
boom(sl)
end
end
---总动作菜单
function dzdzdz()
FX = "dzdzdz"
gg.setVisible(false)
menu=gg.choice({"晨岛",
"1. 云野",
"2.雨林",
"3.霞谷",
"4.墓土",
"5.禁阁"},nil,
" 动作")
if menu==nil then else
 if menu==1 then dzcd1() end
 if menu==2 then dzcd2() end 
 if menu==3 then dzcd3() end 
 if menu==4 then dzcd4() end
if menu==5 then dzcd5() end
if menu==6 then dzcd6() end 
 end
end
----云野菜单
function dzcd2()
FX = "dzcd2"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2. 第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, "云野动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz2()
wcd=1 end
    if dz_menu == 2 then xzxz2() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
function cdxz2()
gg.setVisible(false)
setClear(64338276)
gg.sleep(200) gg.alert("RUSH B")
 renyimen6(3) gg.sleep(2400) gg.alert("进图以后点确定")
 gg.sleep(120) xi() jiasu(8)
Teleport({101.39147186279297;155.259765625;17.573368072509766})
gg.sleep(1600) Teleport({116.76346588134766;157.09292602539062;31.87032127380371})
gg.sleep(1600) Teleport({108.52499389648438;156.45452880859375;26.652238845825195})
gg.sleep(1600) Teleport({103.02177429199219;157.47422790527344;32.652015686035156})
gg.sleep(1600) Teleport({111.87478637695312;156.29339599609375;26.444881439208984})
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
wcd=1
end
function xzxz2()
gg.setVisible(false)
menuyy = gg.choice({
"1.伸展",
"2.击掌",
"3.炮仗",
"4.跳舞"
},nil,"请选择")
if menuyy == nil then else
 if menuyy == 1 then final("64338276","1841001535","yunye") end
 if menuyy == 2 then final("64338276","1372682856","yunye") end 
 if menuyy == 3 then final("64338276","3921932554","yunye") end 
 if menuyy == 4 then final("64338276","4162136220","yunye") end 
 end
end


----雨林菜单
function dzcd3()
FX = "dzcd3"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2.第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, " 雨林动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz3()
wcd=1 end
    if dz_menu == 2 then xzxz3() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
function cdxz3()
gg.setVisible(false)
setClear(3930381583)
gg.sleep(200) gg.alert("RUSH B")
 renyimen6(9) gg.sleep(2500) gg.alert("RUSH B") Teleport({30.717544555664062;97.58821105957031;-179.51841735839844}) gg.sleep(800) xi() jiasu(100)
gg.sleep(600) Teleport({16.617733001708984;96.83940124511719;-177.96267700195312})
gg.sleep(600) Teleport({15.658097267150879;96.08138275146484;-166.01182556152344})
gg.sleep(600) Teleport({10.525557518005371;97.85975646972656;-155.72642517089844})
gg.sleep(600) Teleport({13.903735160827637;99.43929290771484;-145.87484741210938})
gg.sleep(600) Teleport({18.225797653198242;99.09698486328125;-133.9534149169922})
shao()
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
wcd=1
end
function xzxz3()
gg.setVisible(false)
menuyy = gg.choice({
"1.功夫",
"2.雨伞",
"3.摸头",
"4.飞吻"
},nil,"请选择")
if menuyy == nil then else
 if menuyy == 1 then final("3930381583","3416766502","yulin") end
 if menuyy == 2 then final("3930381583","638820386","yulin") end 
 if menuyy == 3 then final("3930381583","560443823","yulin") end 
 if menuyy == 4 then final("3930381583","3723728503","yulin") end 
 end
end



----霞谷菜单
function dzcd4()
FX = "dzcd4"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2.第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, "霞谷动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz4()
wcd=1 end
    if dz_menu == 2 then xzxz4() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
function cdxz4()
gg.setVisible(false)
setClear(3307167098)
gg.sleep(200) gg.alert("RUSH B")
 renyimen6(15) gg.sleep(1200) Teleport({168.277099609375;67.0854263305664;-448.800537109375}) jiasu(2000)
gg.sleep(1400) Teleport({161.08958435058594;69.99774932861328;-460.7237548828125})
gg.sleep(1400) Teleport({151.21826171875;74.6903076171875;-452.7678527832031})
gg.sleep(1400) Teleport({161.33865356445312;76.40333557128906;-443.5313720703125})
gg.sleep(1400) Teleport({167.83753967285156;76.1551284790039;-445.0443420410156})
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
wcd=1
end
function xzxz4()
gg.setVisible(false)
menuyy = gg.choice({
"1.芜湖",
"2.转圈",
"3.花手",
"4.杂技"
},nil,"请选择")
if menuyy == nil then else
 if menuyy == 1 then final("3307167098","3637782525","xiagu") end
 if menuyy == 2 then final("3307167098","3143328229","xiagu") end 
 if menuyy == 3 then final("3307167098","627603397","xiagu") end 
 if menuyy == 4 then final("3307167098","3379075209","xiagu") end 
 end
end



----墓土菜单
function dzcd5()
FX = "dzcd5"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2.第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, "墓土动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz5()
wcd=1 end
    if dz_menu == 2 then xzxz5() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
function cdxz5()
gg.setVisible(false)
setClear(1060292445)
gg.sleep(200) gg.alert("RUSH B")
 renyimen6(22) gg.sleep(1020) Teleport({-21.022872924804688;7.687601566314697;263.1231994628906}) gg.sleep(700) Teleport({-21.022872924804688;7.687601566314697;263.1231994628906}) jiasu(2000)
gg.sleep(1200) Teleport({-32.31200408935547;2.578775405883789;244.72828674316406})
gg.sleep(1200) Teleport({-27.70017433166504;0.4585024416446686;230.10153198242188})
gg.sleep(1200) Teleport({-18.609453201293945;1.7677735090255737;219.97650146484375})
gg.sleep(1200) Teleport({-21.618343353271484;1.1518057584762573;207.3103790283203})
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
wcd=1
end
function xzxz5()
gg.setVisible(false)
menuyy = gg.choice({
"1.敬礼",
"2.螃蟹叫",
"3.尔康",
"4.骑士",
"5.瞌睡",
"6.吓人",
"7.锤人",
"8.无奈",
"9.螃蟹动作"
},nil,"请选择")
if menuyy == nil then else
 if menuyy == 1 then final("1060292445","1972794995","mutu") end
 if menuyy == 2 then final("1060292445","1543189191","mutu") end 
 if menuyy == 3 then final("1060292445","3613216684","mutu") end 
 if menuyy == 4 then final("1060292445","1801995405","mutu") end 
 if menuyy == 5 then final("1060292445","967947706","mutu") end 
 if menuyy == 6 then final("1060292445","2120182059","mutu") end 
 if menuyy == 7 then final("1060292445","1251050323","mutu") end 
 if menuyy == 8 then final("1060292445","2248102924","mutu") end 
 if menuyy == 9 then final("1060292445","235271310","mutu") end 
 end
end



----禁阁菜单
function dzcd6()
FX = "dzcd6"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2.第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, "4.禁阁动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz6()
wcd=1 end
    if dz_menu == 2 then xzxz6() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
function cdxz6()
gg.setVisible(false)
setClear(1060292445)
gg.sleep(200) gg.alert("冲鸭") renyimen6(28)  gg.sleep(2200) gg.alert("冲鸭")  Teleport({47.28824234008789;83.77191162109375;42.8892936706543}) xi() jiasu(10)  
gg.sleep(1600) Teleport({34.95984649658203;83.89051055908203;49.509517669677734}) 
gg.sleep(1600) Teleport({29.333452224731445;86.6907958984375;60.34990692138672}) 
gg.sleep(1600) Teleport({29.333452224731445;89.6907958984375;60.34990692138672}) 
gg.sleep(1600) Teleport({27.75568962097168;82.82476806640625;39.72005844116211})
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
wcd=1
end
function xzxz6()
gg.setVisible(false)
menuyy = gg.choice({
"1.抱拳",
"2.住口(暂不可用)",
"3.背手(暂不可用)",
"4.思考(暂不可用)"
},nil,"请选择")
if menuyy == nil then else
 if menuyy == 1 then final("2041153688","3811807379","jinge") end
 if menuyy == 2 then final("2041153688","3828216322","jinge") end 
 if menuyy == 3 then final("2041153688","391633837","jinge") end 
 if menuyy == 4 then final("2041153688","2093468251","jinge") end 
 end
end





local wcd=0
-----晨岛菜单
function dzcd1()
FX = "dzcd1"
dz_menu = gg.choice({
	  "1.第一步重置先祖",
	  "2.第二步选择动作",
	  "3.第三步动作生效"
	 }, nil, "晨岛动作 ")
	 if dz_menu == nil then else
	if dz_menu == 1 then  gg.setVisible(false)
cdxz1()
wcd=1 end
    if dz_menu == 2 then xzxz1() gg.setVisible(false) end
    if dz_menu == 3 then
    kill()
	end
	end
end
xzxzx=2
function cdxz1()
gg.setVisible(false)
setClear(414084241)
gg.sleep(200) gg.alert("RUSH B")
 renyimen6(2) gg.sleep(2400) gg.alert("进图以后点确定")
 gg.sleep(120) jiasu(3000)
Teleport({65.38693237304688;4.8500285148620605;105.0792465209961}) xi()
gg.sleep(1400) Teleport({59.46867752075195;4.837636947631836;105.25846099853516})
gg.sleep(1400) Teleport({51.96525573730469;5.121166706085205;110.58770751953125})
gg.sleep(1400) Teleport({58.786163330078125;4.933334827423096;117.56562805175781})
gg.sleep(1400) Teleport({73.31504821777344;4.803483009338379;113.78606414794922})
gg.alert("拿到动作后开始第二步")
gg.setVisible(false)
end
function xzxz1()
gg.setVisible(false)
menu=gg.choice({"妖娆",
"1.蹦迪",
"2.背背",
"3.邀请"},nil,"请选择")
if menu==nil then else
 if menu==1 then final("414084241","3270784407","chendao") end
 if menu==2 then final("414084241","1375735318","chendao") end 
 if menu==3 then final("414084241","1880348208","chendao") end 
 if menu==4 then final("414084241","669089267","chendao") end 
 end
end

function final(ylid,xzid,dtu)
gg.setVisible(false)
	gg.clearResults()
	YF_Search(ylid, 32) 
	gg.getResults(gg.getResultCount())
	gg.editAll(xzid ,gg.TYPE_QWORD)
	gg.clearResults()
	if dtu == "chendao" then
Teleport({155.88746643066406;103.40572357177734;-293.22967529296875})
gg.alert("一会儿不要点红点,关掉执行第三步")
    stand(2)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
end

    if dtu == "yunye" then
    renyimen6(8) jiasu(8) gg.sleep(2200) Teleport({-112.02240753173828;88.57816314697266;42.290916442871094})
gg.alert("一会儿不要点红点,关掉执行第三步")
    stand(2)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
    end
    
    if dtu == "yulin" then
    renyimen6(14) jiasu(8) 
gg.sleep(1800) Teleport({-0.12410711497068405;105.28367614746094;-31.76953887939453})
gg.sleep(1200) Teleport({0.3932371437549591;105.32759094238281;-27.61100959777832})
gg.sleep(1200) Teleport({0.5888687968254089;105.31550598144531;-23.03534698486328})
gg.sleep(1200) Teleport({0.11470893025398254;107.12124633789062;-13.607157707214355})
gg.sleep(1200) Teleport({0.16918084025382996;107.7917709350586;-8.371699333190918})
gg.sleep(1200) Teleport({0.0012330518802627921;111.06143951416016;-6.848142147064209})
gg.sleep(1200) Teleport({0.7159623503684998;115.51197814941406;-4.309633731842041})
    gg.toast("稍等一会儿嗷")
    jiasu(1)
    gg.sleep(2000)
    jiasu(8)
    gg.sleep(3000)
    gg.alert("自己坐坛\n不要点红点,关掉执行第三步")
    gg.sleep(8000)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
    end
    
    if dtu == "xiagu" then
    renyimen6(20) jiasu(8) gg.sleep(2400) Teleport({9.434672355651855;137.9949493408203;-182.310302734375})
    gg.alert("一会儿不要点红点,关掉执行第三步")
    stand(2)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
    end
    
    if dtu == "mutu" then
    renyimen6(26) sleep(1500) Teleport({-235.35919189453125;94.78324127197266;-295.83099365234375})
gg.sleep(800) Teleport({-288.87689208984375;93.62783813476562;-404.58197021484375})
    gg.sleep(1800)
    gg.alert("一会儿不要点红点,关掉执行第三步")
    Teleport({0.12861567735671997;206.77496337890625;3.3895347118377686})
    jiasu(10) 
    gg.sleep(120)
    stand(2)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
    end
    
    if dtu == "jinge" then
   set_msj({812663058;1953384759;1761636210;27502;0;0;1734954524;3306600;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0})
  set_mzb1() gg.sleep(2000)
  gg.alert("飞")
  Teleport({-0.02870649286;311.826171875;68.02626800537})
 
    gg.alert("一会儿不要点红点,关掉执行第三步")
    stand(2)
    gg.toast("看完动画关星盘执行第三步")
    wcd = 2
    end
gg.setVisible(false)
end
function kill()
if wcd==2 then
gg.alert("手动操作\n重启游戏\n点击确认以后你会闪退\n重进就有新动作了\n整合脚本")
gg.alert("即将退出游戏，请重新启动")
gg.processKill()
else
gg.alert("请先完成前面步骤")
end
end
  function dzcd()
  
  menudz = gg.choice({
    '1.晨岛',
    '2.云野',
    '3.雨林',
    '4.霞谷',
    '5.暮土',
    '6.禁阁',
    '7.返回',
  }, nil, "复刻动作菜单")
  if menudz == 1 then dzcd1() FX = "dzcd1" end
  if menudz == 2 then  dzcd2() FX = "dzcd2" end
  if menudz == 3 then  dzcd3() FX = "dzcd3" end
  if menudz == 4 then  dzcd4() FX = "dzcd4" end
  if menudz == 5 then  dzcd5() FX = "dzcd5" end
  if menudz == 6 then  dzcd6() FX = "dzcd6" end
  if menudz == 7 then  jiasu(1) home() FX = "home" end
      end
      function back()
      gg.setVisible(false)  jiasu(1) renyimen6(1) FX2 = "home" FX = "home"
      end
 function yjcsh()
 tmp4 = {}
 tmp5= {}
	for i = 1,24 do
		 tmp4[i]= 0
		 tmp4[i]= string.byte('CandleSpace', i, i)
		if tmp4[i] == nil then 
			 tmp4[i]=0
		end
		tmp5[i] = {}
		tmp5[i].address = m.address + i - 1
		tmp5[i].flags = gg.TYPE_BYTE
		tmp5[i].value = tmp4[i]
		gg.setValues(tmp5)
	 end
	gg.setValues(tmp5)
end
local GAME_VERSION = "国服"
local HELPER_VERSION = "整合脚本"
local MODIFY_TIME = "整合2020年10月1日 21:11:45"
function DT()
  cdmap_yj = {}
  cdmap_yj[1] = {
    796,
    0.2,
    -0.3
  }
  cdmap_yj[2] = {
    1,
    0.8,
    -0.3
  }
  cdmap_cd = {}
  cdmap_cd[1] = {
    298.00839233398,
    413.13671875,
    -283.45837402644
  }
  cdmap_cd[2] = {
    298.00839233398,
    750,
    -283.45837402644
  }
  cdmap_cd[3] = {
    117.80199432373,
    1.0181401968,
    -1733.9892578125
  }
  cdmap_yy = {}
  cdmap_yy[1] = {
    314.92810058594,
    235.1559753418,
    162.17864990234
  }
  cdmap_yy[2] = {
    97.56925201416,
    174.57604980469,
    265.3330078125
  }
  cdmap_yy[3] = {
    -151.39393615723,
    112.16463470459,
    46.31144332886
  }
  cdmap_yy[4] = {
    -529.29986572266,
    8.66990280151,
    -213.8560333252
  }
  cdmap_yl = {}
  cdmap_yl[1] = {
    -32.09742736816,
    206.96907043457,
    0.02679648809
  }
  cdmap_yl[2] = {
    -4.87363386154,
    9.68434524536,
    506.74230957031
  }
  cdmap_xg = {}
  cdmap_xg[1] = {
    314.91091918945,
    173.49656677246,
    -783.53955078125
  }
  cdmap_xg[2] = {
    -478.84976196289,
    1573.01025390625,
    76.278465271
  }
  cdmap_xg[3] = {
    -813.96313476562,
    1547.04602050781,
    -506.09045410156
  }
  cdmap_mt = {}
  cdmap_mt[1] = {
    -84.72422790527,
    5047.2763671875,
    -842.01507568359
  }
  cdmap_mt[2] = {
    -339.77133178711,
    185.78332519531,
    404.22909545898
  }
  cdmap_mt[3] = {
    -416.30792236328,
    12.31269836426,
    410.81399536133
  }
  cdmap_jg = {}
  cdmap_jg[1] = {
    32.18392944336,
    347.24133300781,
    41.18384552002
  }
  cdmap_jg[2] = {
    -1.04423522949,
    195.06649780273,
    4.06247663498
  }
  cdmap_jg[3] = {
    68.92450714111,
    240.40475463867,
    -185.50691223145
  }
  cdmap_jg[4] = {
    -2.3683698177337646,
    37.12582778930664,
    -172.75494384765625
  }
  cdmap_jg[5] = {
    7009.41164399457,
    6921.25,
    9078.23612371826
  }
  cdmap_bfy = {}
  cdmap_bfy[1] = {
    -22.318044662475586,
    221.76121520996094,
    -362.0965576171875
  }
  cdmap_bfy[2] = {
    -504.72369384765625,
    7.738282680511475,
    -472.343017578125
  }
  cdmap_cszl = {}
  cdmap_cszl[1] = {
    194.7921295166,
    1552.53833007812,
    566.3759765625
  }
  cdmap_cszl[2] = {
    335.68902587891,
    1927.6708984375,
    99.81793212891
  }
  cdmap_cszl[3] = {
    254.16377258301,
    1878.54760742188,
    73.97454833984
  }
  cdmap_cszl[4] = {
    250.36479187012,
    1844.25329589844,
    -1.34167420864
  }
  cdmap_cszl[5] = {
    201.36094665527,
    1832.62463378906,
    56.0168762207
  }
  cdmap_cszl[6] = {
    321.23587036133,
    1962.60498046875,
    -21.15508079529
  }
  cdmap_cszl[7] = {
    713.50329589844,
    2548.65478515625,
    152.37353515625
  }
  cdmap_cszl[8] = {
    862.8026733398438,
    2692.793212890625,
    154.70008850097656
  }
  cdmap_cszl[9] = {
    129.14239501953,
    5499.90185546875,
    1277.72985839844
  }
  cdmap_cszl[10] = {
    -36.77297592163086,
    2435.26513671875,
    2214.6943359375
  }
  cdmap_cszl[11] = {
    8.84585189819,
    130,
    42.62521743774
  }
  cdmap_cszl[12] = {
    9.62896347046,
    20.34807777405,
    31.97480583191
  }
  cdmap_cszl[13] = {
    -21.38742637634,
    5.05461454391,
    39.82778549194
  }
  cdmap_cszl[14] = {
    -1.13085877895,
    0.6369894743,
    238.60090637207
  }
  map_cd = {}
  map_cd[0] = {
    11.33805503845,
    1.07,
    0.86344474554
  }
  map_cd[1] = {
    160.23219299316,
    85.74584960938,
    -248.42921447754
  }
  map_cd[2] = {
    372.57305908203,
    52.57130813599,
    -11.77190208435
  }
  map_cd[3] = {
    156.18676757812,
    103.23870849609,
    -294.5241394043
  }
  map_yy = {}
  map_yy[0] = {
    479.30438232421875,
    213.60411071777344,
    -1033.25390625
  }
  map_yy[1] = {
    115.11743927002,
    198.37284851074,
    -412.91702270508
  }
  map_yy[2] = {
    82.30505371094,
    155.05268859863,
    19.00763320923
  }
  map_yy[3] = {
    -13.36223697662,
    164.1151428227,
    -3.93698263168
  }
  map_yy[4] = {
    -147.8744354248,
    180.35134887695,
    111.60083770752
  }
  map_yy[5] = {
    -356.64935302734375,
    126.0324935913086,
    109.63554382324219
  }
  map_yy[6] = {
    245.39573669433594,
    95.93257141113281,
    220.39491271972656
  }
  map_yy[7] = {
    109.3865737915039,
    18.653812408447266,
    331.0081787109375
  }
  map_yy[8] = {
    91.97734832763672,
    2.809793472290039,
    290.845458984375
  }
  map_yy[9] = {
    102.09443664550781,
    1.2473831176757812,
    361.9582824707031
  }
  map_yy[10] = {
    98.55536651611328,
    28.181838989257812,
    330.2776184082031
  }
  map_yy[11] = {
    269.7839050292969,
    174.7598419189453,
    -25.435998916625977
  }
  map_yy[12] = {
    -47.11139678955,
    179.24996948242,
    36.90230560303
  }
  map_yy[13] = {
    171.28395080566,
    163.02391052246,
    6.9861369133
  }
  map_yy[14] = {
    281.03967285156,
    203.85572814941,
    118.18124389648
  }
  map_yy[15] = {
    394.80178833008,
    180.8814239502,
    208.9743347168
  }
  map_yy[16] = {
    271.46618652344,
    192.82070922852,
    205.6898651123
  }
  map_yy[17] = {
    244.32598876953,
    197.86904907227,
    228.06080627441
  }
  map_yy[18] = {
    89.51289245605,
    198.62976074219,
    268.43621826172
  }
  map_yy[19] = {
    69.03224182129,
    192.38856506348,
    354.64413452148
  }
  map_yy[20] = {
    -10.87873077393,
    192.04830932617,
    315.67645263672
  }
  map_yy[21] = {
    121.45398712158,
    255.07366943359,
    467.25061035156
  }
  map_yy[22] = {
    -52.46832275390625,
    180.03219604492188,
    324.8914489746094
  }
  map_yy[23] = {
    31.9806209564209,
    42.211456298828125,
    0.5105121791362762
  }
  map_yy[24] = {
    131.30647277832,
    255.10313415527,
    486.70895385742
  }
  map_yy[25] = {
    -115.13949584961,
    92.06437683105,
    42.18388748169
  }
  map_yy2 = {}
  map_yy2[1] = {
    -0.0903831273317337,
    21.962921142578125,
    0.11890526860952377
  }
  map_yl = {}
  map_yl[0] = {
    -132.80177307128906,
    108.91059875488281,
    41.570411682128906
  }
  map_yl[1] = {
    130.75828552246,
    224.34687805176,
    -602.71795654297
  }
  map_yl[2] = {
    14.43241500854,
    97.69249725342,
    -218.88102722168
  }
  map_yl[3] = {
    14.76787853241,
    94.86846923828,
    -187.47811889648
  }
  map_yl[4] = {
    23.47234535217,
    97.78204345703,
    -133.36102294922
  }
  map_yl[5] = {
    30.37040519714,
    98.88845825195,
    -109.27439880371
  }
  map_yl[6] = {
    31.5622253418,
    100.01309204102,
    -103.3267364502
  }
  map_yl[7] = {
    40.966896057128906,
    97.92237854003906,
    -44.98390197753906
  }
  map_yl[8] = {
    80.05570983887,
    107.88425445557,
    -96.13883972168
  }
  map_yl[9] = {
    93.87911224365,
    110.7958984375,
    -52.62438583374
  }
  map_yl[10] = {
    26.11565208435,
    103.0054397583,
    -82.32592773438
  }
  map_yl[11] = {
    74.68232727051,
    98.61708831787,
    -17.40866279602
  }
  map_yl[12] = {
    47.92622375488,
    104.16135406494,
    6.3690123558
  }
  map_yl[13] = {
    67.58702087402,
    98.89938409424,
    33.17612075806
  }
  map_yl[14] = {
    -2.42549586296,
    111.49240112305,
    -52.30210113525
  }
  map_yl[15] = {
    -1.2992981672286987,
    85.30338287353516,
    -53.561256408691406
  }
  map_yl[16] = {
    9.832176208496094,
    92.75342559814453,
    7.1179704666137695
  }
  map_yl[17] = {
    0.07870174944400787,
    89.75100708007812,
    70.5005874633789
  }
  map_yl[18] = {
    16.522878646850586,
    88.57598876953125,
    97.0785140991211
  }
  map_yl[19] = {
    54.191062927246094,
    54.770408630371094,
    43.37236785888672
  }
  map_yl[20] = {
    61.785152435302734,
    80.08026885986328,
    -287.1666259765625
  }
  map_yl[21] = {
    1.76633882522583,
    121.0093994140625,
    -365.9449157714844
  }
  map_yl[22] = {
    -33.27627944946289,
    133.17440795898438,
    -193.63510131835938
  }
  map_yl[23] = {
    -57.56206130981445,
    210.17996215820312,
    -283.5279541015625
  }
  map_yl[24] = {
    17.838523864746094,
    87.8037338256836,
    124
  }
  map_yl[25] = {
    -86.91445159912,
    142.59028625488,
    177.07545471191
  }
  map_yl[26] = {
    -74.32703399658,
    144.21041870117,
    223.14186096191
  }
  map_yl[27] = {
    -9.88118457794,
    135.65356445312,
    155.92399597168
  }
  map_yl[28] = {
    -2.02398014069,
    137.56015014648,
    94.08730316162
  }
  map_yl[29] = {
    36.42116928101,
    140.1411895752,
    34.71224212646
  }
  map_yl[30] = {
    52.73944091796875,
    144.4630126953125,
    72.58039855957031
  }
  map_yl[31] = {
    31.9014892578125,
    135.19187927246094,
    222.7040557861328
  }
  map_yl[32] = {
    84.40836334229,
    145.81631469727,
    159.82514953616
  }
  map_yl[33] = {
    108.39348602294922,
    162.1186065673828,
    136.22250366210938
  }
  map_yl[34] = {
    -22.81835746765,
    151.38169433594,
    222.27349853516
  }
  map_yl[35] = {
    -16.83828544617,
    182.94024658203,
    402.96005249023
  }
  map_yl[36] = {
    -0.08104625344,
    115.99523162842,
    -2.72330307961
  }
  map_yl[37] = {
    2.57387018204,
    107.53649902344,
    79.84284973145
  }
  map_xg = {}
  map_xg[0] = {
    6.131390571594238,
    196.65492248535156,
    224.84304809570312
  }
  map_xg[1] = {
    178.09007263184,
    49.29264450073,
    -515.06256103516
  }
  map_xg[2] = {
    223.56391906738,
    66.52805328369,
    -629.701171875
  }
  map_xg[3] = {
    39.10639572144,
    465.65176391602,
    150.25552368164
  }
  map_xg[4] = {
    95.01110076904,
    560.63580322266,
    -47.59596633911
  }
  map_xg[5] = {
    205.75561523438,
    491.8512878418,
    -204.55242919922
  }
  map_xg[6] = {
    168.6623992919922,
    1187.0201416015625,
    389.5810241699219
  }
  map_xg[7] = {
    -443.08868408203125,
    1164.687744140625,
    72.55862426757812
  }
  map_xg[8] = {
    154.0153503418,
    1011.15362548828,
    -97.60314178467
  }
  map_xg[9] = {
    51.751953125,
    168.62173461914062,
    10.006299018859863
  }
  map_xg[10] = {
    57.89561843872,
    133.83949279785,
    -214.00402832031
  }
  map_xg[11] = {
    60.56647491455,
    138.13330078125,
    -293.24880981445
  }
  map_xg[12] = {
    -28.79566764832,
    140.62512207031,
    -144.80619812012
  }
  map_xg[13] = {
    -10.99517059326,
    153.76098632812,
    -123.88345336914
  }
  map_xg[14] = {
    9.05787944794,
    146.13987731934,
    -188.91961669922
  }
  map_xg2 = {}
  map_xg2[0] = {
    291.46752929688,
    39.44458770752,
    -528.46527099609
  }
  map_xg2[1] = {
    163.32211303711,
    935.73541259766,
    662.2
  }
  map_xg2[2] = {
    158.32211303711,
    852.73541259766,
    475.7946472168
  }
  map_xg2[3] = {
    259.29107666016,
    586.7119140625,
    -571.33093261719
  }
  map_xg2[4] = {
    50.4543800354,
    159.39141845703,
    -31.0505657196
  }
  map_xg2[5] = {
    57.88567733765,
    133.83946228027,
    -214.03512573242
  }
  map_mt = {}
  map_mt[0] = {
    8.038422584533691,
    141.21749877929688,
    -197.4063262939453
  }
  map_mt[1] = {
    -93.82060241699219,
    65.03047180175781,
    -777.3716430664062
  }
  map_mt[2] = {
    -136.86598205566,
    59.69040298462,
    -798.71264648438
  }
  map_mt[3] = {
    82.37159729003906,
    0.8532096147537231,
    311.5982971191406
  }
  map_mt[4] = {
    3.75268936157,
    2.02050471306,
    302.74490356445
  }
  map_mt[5] = {
    39.57469558716,
    1.18943119049,
    231.70831298828
  }
  map_mt[6] = {
    -45.26943969727,
    2.59516334534,
    220.30529785156
  }
  map_mt[7] = {
    -79.40332794189,
    4.3054728508,
    326.60189819336
  }
  map_mt[8] = {
    -83.4979019165,
    10.33677768707,
    161.88903808594
  }
  map_mt[9] = {
    -92.48147583007812,
    11.750068664550781,
    156.25927734375
  }
  map_mt[10] = {
    47.49977493286133,
    91.14873504638672,
    240.5313720703125
  }
  map_mt[11] = {
    59.91714859009,
    99.28720092773,
    153.49264526367
  }
  map_mt[12] = {
    53.15424346924,
    99.28839874268,
    130.21598815918
  }
  map_mt[13] = {
    64.62148284912,
    66.90205383301,
    -17.39302253723
  }
  map_mt[14] = {
    49.07418823242,
    69.87921142578,
    -61.32640457153
  }
  map_mt[15] = {
    84.39138031006,
    64.37548065186,
    -99.65833282471
  }
  map_mt[16] = {
    72.75804901123,
    68.82402038574,
    -154.62091064453
  }
  map_mt[17] = {
    7.30580329895,
    77.96953582764,
    -134.8207244873
  }
  map_mt[18] = {
    31.65027999878,
    71.3992767334,
    -222.2785949707
  }
  map_mt[19] = {
    192.6549835205078,
    68.13046264648438,
    -72.91191864013672
  }
  map_mt[20] = {
    -200.3933563232422,
    0.23898425698280334,
    432.5951232910156
  }
  map_mt[21] = {
    -193.67445373535156,
    0.6370588541030884,
    400.0504455566406
  }
  map_mt[22] = {
    -133.42332458496094,
    3.5071215629577637,
    417.37127685546875
  }
  map_mt[23] = {
    -167.61940002441406,
    10.477231979370117,
    368.683837890625
  }
  map_mt[24] = {
    -274.3760070800781,
    11.760193824768066,
    425.2207946777344
  }
  map_mt[25] = {
    -287.4808654785156,
    28.822416305541992,
    404.7793273925781
  }
  map_mt[26] = {
    -349.27203369140625,
    34.950706481933594,
    387.2141418457031
  }
  map_mt[27] = {
    -48.6858215332,
    104.34170532227,
    -79.04187774658
  }
  map_mt[28] = {
    -198.5791015625,
    126.42858123779,
    -167.11233520508
  }
  map_mt[29] = {
    -245.23553466797,
    118.84942626953,
    -154.31811523438
  }
  map_mt[30] = {
    -241.96951293945,
    102.78507995605,
    -201.89422607422
  }
  map_mt[31] = {
    -231.89678955078,
    101.1646194458,
    -228.68255615234
  }
  map_mt[32] = {
    -270.5461120605469,
    105.44258880615234,
    -234.45999145507812
  }
  map_mt[33] = {
    -238.2059173584,
    96.32413482666,
    -286.48190307617
  }
  map_mt[34] = {
    -208.55140686035156,
    96.2126235961914,
    -305.6688232421875
  }
  map_mt[35] = {
    -274.05374109375,
    84.92595672607,
    -340.15267944336
  }
  map_mt[36] = {
    -226.27702331543,
    83.49276733398,
    -363.69110107422
  }
  map_mt[37] = {
    -270.02545166016,
    90.63471984863,
    -376.97351074219
  }
  map_mt[38] = {
    -287.76065063477,
    93.07566833496,
    -405.00946044922
  }
  map_mt2 = {}
  map_mt2[0] = {
    151.11950683594,
    1.19466686249,
    46.83893966675
  }
  map_mt2[1] = {
    105.68017578125,
    116.20708465576,
    462.01690673828
  }
  map_mt2[2] = {
    42.22459411621,
    108.95956420898,
    501.55215454102
  }
  map_mt2[3] = {
    79.46577453613,
    108.4411621094,
    523.63012695312
  }
  map_mt2[4] = {
    280.42666625977,
    115.15145111084,
    513.50421142578
  }
  map_mt2[5] = {
    300.71304321289,
    122.5364151001,
    522.43548583984
  }
  map_mt2[6] = {
    302.32046508789,
    120.71385955811,
    544.26470947266
  }
  map_mt2[7] = {
    330.21633911133,
    120.46535491943,
    557.35083007812
  }
  map_mt2[8] = {
    281.56735229492,
    103.83702087402,
    363.01419067383
  }
  map_mt2[9] = {
    287.11633300781,
    120.31791687012,
    352.26409912109
  }
  map_mt2[10] = {
    137.84127807617188,
    119.16181945800781,
    343.92596435546875
  }
  map_mt3 = {}
  map_mt3[1] = {
    -54.16824722290039,
    142.24566650390625,
    166.86984252929688
  }
  map_jg = {}
  map_jg[0] = {
    -1.7305372953414917,
    207.7891387939453,
    -66.75567626953125
  }
  map_jg[1] = {
    -2.3683698177337646,
    37.12582778930664,
    -172.75494384765625
  }
  map_jg[2] = {
    -11.051301956176758,
    63.40142822265625,
    4.062231063842773
  }
  map_jg[3] = {
    7.157510280609131,
    62.34695816040039,
    -26.602800369262695
  }
  map_jg[4] = {
    -42.6407585144043,
    38.3612060546875,
    -98.20526123046875
  }
  map_jg[5] = {
    30.31833267211914,
    541.48876953125,
    28.513368606567383
  }
  map_jg[6] = {
    12.627887725830078,
    80.72262573242188,
    16.096574783325195
  }
  map_jg[7] = {
    -1.4552849531173706,
    213.37742614746094,
    -1.2852287292480469
  }
  map_jg[8] = {
    -0.02870649286,
    309.826171875,
    68.02626800537
  }
  map_bfy = {}
  map_bfy[1] = {
    -15.065356254577637,
    158.07101440429688,
    16.038394927978516
  }
  map_bfy[2] = {
    -43.359153747558594,
    173.5929412841797,
    -24.14773178100586
  }
  map_bfy[3] = {
    -11.850257873535156,
    180.2563934326172,
    -72.8282241821289
  }
  map_bfy[4] = {
    16.628395080566406,
    211.42498779296875,
    -121.3960952758789
  }
  map_bfy[5] = {
    -2.90921688079834,
    237.38851928710938,
    -156.01116943359375
  }
  map_bfy[6] = {
    7.2272562980651855,
    265.9850158691406,
    -243.90724182128906
  }
  gy_cd = {}
  gy_cd[1] = {
    52.38999938965,
    34.48364639282,
    370.2942199707
  }
  gy_cd[2] = {
    117.44915008545,
    2.51576638222,
    310.81860351562
  }
  gy_cd[3] = {
    282.11779785156,
    2.53309798241,
    188.77415466309
  }
  gy_cd[4] = {
    107.00978088379,
    24.59906196594,
    48.47900390625
  }
  gy_cd[5] = {
    414.43060302734,
    95.22168731689,
    -6.88277673721
  }
  gy_yy = {}
  gy_yy[1] = {
    125.85375213623,
    148.40830993652,
    -27.92642974854
  }
  gy_yy[2] = {
    106.17017364502,
    174.64419555664,
    26.75840377808
  }
  gy_yy[3] = {
    80.72425842285,
    160.55029296875,
    62.6540222168
  }
  gy_yy[4] = {
    -137.99606323242188,
    159.45826721191406,
    144.9684295654297
  }
  gy_yy[5] = {
    -214.36962890625,
    181.0801239013672,
    152.9185791015625
  }
  gy_yy[6] = {
    241.38333129882812,
    94.50101470947266,
    205.37205505371094
  }
  gy_yy[7] = {
    61.87287139892578,
    18.954448699951172,
    273.980224609375
  }
  gy_yy[8] = {
    108.25755310058594,
    2.668867349624634,
    333.6585998535156
  }
  gy_yy[9] = {
    94.94842529296875,
    11.280913352966309,
    361.71295166015625
  }
  gy_yy[10] = {
    -20.657487869262695,
    14.868583679199219,
    382.9299011230469
  }
  gy_yy[11] = {
    78.0975341796875,
    1.5901728868484497,
    324.1924133300781
  }
  gy_yy[12] = {
    -146.97747802734375,
    80.82228088378906,
    119.41268920898438
  }
  gy_yy[13] = {
    63.58748245239258,
    95.1593246459961,
    307.8279113769531
  }
  gy_yy[14] = {
    290.13339233398,
    200.00207519531,
    178.79241943359
  }
  gy_yy[15] = {
    348.18463134766,
    197.88877868652,
    111.59169006348
  }
  gy_yy[16] = {
    27.35553359985,
    184.77207946777,
    278.81311035156
  }
  gy_yy[17] = {
    101.27056884766,
    181.26351928711,
    257.22482299805
  }
  gy_yy[18] = {
    66.5023727417,
    186.11111450195,
    376.91757202148
  }
  gy_yy[19] = {
    -19.33318710327,
    58.91622924805,
    27.37077331543
  }
  gy_yy[20] = {
    137.93855285645,
    266.59573364258,
    478.81997680664
  }
  gy_yy[21] = {
    146.46572875977,
    304.30899047852,
    537.32904052734
  }
  gy_yl = {}
  gy_yl[1] = {
    2.13302397728,
    114.62173461914,
    -257.74035644531
  }
  gy_yl[2] = {
    27.27236175537,
    98.32046508789,
    -117.29396820068
  }
  gy_yl[3] = {
    24.22917366028,
    127.21475982666,
    -64.9084777832
  }
  gy_yl[4] = {
    80.36828613281,
    129.32788085938,
    -12.00599861145
  }
  gy_yl[5] = {
    66.24879455566,
    99.87233734131,
    45.67139816284
  }
  gy_yl[6] = {
    104.18180084229,
    111.61292266846,
    -111.34979248047
  }
  gy_yl[7] = {
    -44.52954101562,
    103.50183868408,
    -18.99171257019
  }
  gy_yl[8] = {
    -20.89667510986,
    96.37775421143,
    23.3992023468
  }
  gy_yl[9] = {
    26.23741531372,
    78.26388549805,
    -416.63986206055
  }
  gy_yl[10] = {
    9.87658882141,
    137.31497192383,
    -213.43074035645
  }
  gy_yl[11] = {
    -65.82335662842,
    208.65147399902,
    -202.29818725586
  }
  gy_yl[12] = {
    -68.73613739014,
    210.23043823242,
    -295.44775390625
  }
  gy_yl[13] = {
    -22.06701850891,
    141.86561584473,
    273.64901733398
  }
  gy_yl[14] = {
    -50.04446792603,
    149.48065185547,
    58.78827285767
  }
  gy_yl[15] = {
    117.94002532959,
    178.50863647461,
    157.54365539551
  }
  gy_yl[16] = {
    32.15616989136,
    111.79304504395,
    58.49747848511
  }
  gy_xg = {}
  gy_xg[1] = {
    -151.72290039062,
    263.46438598633,
    -149.25282287598
  }
  gy_xg[2] = {
    165.65696716309,
    41.44527816772,
    -540.47784423828
  }
  gy_xg[3] = {
    198.90878295898,
    48.46887969971,
    -517.16070556641
  }
  gy_xg[4] = {
    84.07421112061,
    558.27600097656,
    -55.4520111084
  }
  gy_xg[5] = {
    115.62945556641,
    502.25119018555,
    -38.70120239258
  }
  gy_xg[6] = {
    -396.41152954102,
    1163.42333984375,
    47.16595458984
  }
  gy_xg[7] = {
    67.96189880371,
    1053.02795410156,
    -28.98570251465
  }
  gy_xg[8] = {
    40.33958816528,
    185.05342102051,
    73.34194946289
  }
  gy_xg[9] = {
    -15.27802371979,
    174.11576843262,
    -269.24426269531
  }
  gy_xg[10] = {
    195.60102844238,
    630.80944824219,
    -421.51663208008
  }
  gy_xg[11] = {
    -26.86660766602,
    150.21412658691,
    -164.30195617676
  }
  gy_mt = {}
  gy_mt[1] = {
    97.71636962891,
    45.43786621094,
    367.83847045898
  }
  gy_mt[2] = {
    28.56142425537,
    0.46644225717,
    342.9616394043
  }
  gy_mt[3] = {
    112.59884643555,
    141.60664367676,
    385.39486694336
  }
  gy_mt[4] = {
    305.02200317383,
    121.83631896973,
    559.58319091797
  }
  gy_mt[5] = {
    83.6520690918,
    92.54627990723,
    185.87461853027
  }
  gy_mt[6] = {
    67.59731292725,
    98.88622283936,
    120.99040222168
  }
  gy_mt[7] = {
    91.61358642578,
    77.99578094482,
    -55.83699417114
  }
  gy_mt[8] = {
    -12.41992855072,
    64.98532104492,
    -91.22381591797
  }
  gy_mt[9] = {
    15.34145832062,
    83.91411590576,
    -139.27084350586
  }
  gy_mt[10] = {
    28.08928108215,
    71.11177062988,
    -222.40245056152
  }
  gy_mt[11] = {
    -22.72827911377,
    32.4552230835,
    527.53137207031
  }
  gy_mt[12] = {
    -165.06657409668,
    1.70548176765,
    369.33148193359
  }
  gy_mt[13] = {
    -293.2229309082,
    3.22860455513,
    335.40350341797
  }
  gy_mt[14] = {
    -205.31097412109,
    130.31030273438,
    -160.40197753906
  }
  gy_mt[15] = {
    -238.10581970215,
    86.01084136963,
    -394.50183105469
  }
  gy_mt[16] = {
    4.47481489182,
    202.44841003418,
    32.13433074951
  }
  gy_jg = {}
  gy_jg[1] = {
    20.43115615845,
    46.78216171265,
    -67.82855987549
  }
  gy_jg[2] = {
    33.94861221313,
    160.77113342285,
    -41.95145797729
  }
  gy_jg[3] = {
    55.50157928467,
    540.70965576172,
    -33.98306274414
  }
  gy_jg[4] = {
    78.94891357422,
    554.41192626953,
    -41.106590271
  }
  gy_jg[5] = {
    48.09609985352,
    228.29138183594,
    8.88393878937
  }
  gy_jg[6] = {
    -39.25553512573,
    140.63380432129,
    9.49728012085
  }
  gy_jg[7] = {
    13.43571949005,
    183.38160705566,
    41.92823028564
  }
  gy_jg[8] = {
    -0.35613438487,
    303.56619262695,
    58.07741546631
  }
  gy_bfy = {}
  gy_bfy[1] = {
    -25.390958786010742,
    0.31359347701072693,
    -14.394099235534668
  }
  gy_bfy[2] = {
    -3.08880496025,
    196.74859619141,
    -21.45963668823
  }
  gy_bfy[3] = {
    2.3902692794799805,
    261.8953552246094,
    -236.33250427246094
  }
  gy_bfy[4] = {
    7.2272562980651855,
    265.9850158691406,
    -243.90724182128906
  }
  gy_bfy[5] = {
    803.8468017578125,
    0.576200544834137,
    -11.73253059387207
  }
  gy_bfy[6] = {
    845.9514770507812,
    2673.114501953125,
    154.03053283691406
  }
  map_yd = {}
  map_yd[1] = {
    17.507057189941406,
    84.30857849121094,
    53.045928955078125
  }
  map_yd[2] = {
    11.61964225769043,
    84.30663299560547,
    49.816444396972656
  }
  map_yd[3] = {
    14.196142196655273,
    84.31108856201172,
    44.42262649536133
  }
  map_yd[4] = {
    9.663898468017578,
    84.30857849121094,
    39.797149658203125
  }
  map_yd[5] = {
    10.505936622619629,
    84.5400161743164,
    35.46900177001953
  }
  map_yd[6] = {
    -5.0821661949157715,
    84.30855560302734,
    37.57646179199219
  }
  map_yd[7] = {
    0.7779998183250427,
    84.30854797363281,
    31.73247718811035
  }
  map_yd[8] = {
    1.1287928819656372,
    84.62029266357422,
    23.6892147064209
  }
  map_yd[9] = {
    -0.9292265176773071,
    84.3083267211914,
    29.05209732055664
  }
  map_yd[10] = {
    -10.338618278503418,
    84.30851745605469,
    23.662813186645508
  }
  map_yd[11] = {
    -17.80743980407715,
    84.30848693847656,
    10.384793281555176
  }
  map_yd[12] = {
    -18.53513526916504,
    84.30848693847656,
    0.8928270936012268
  }
  map_yd[13] = {
    -8.18912124633789,
    84.40846252441406,
    0.04915027692914009
  }
  map_yd[14] = {
    -6.571925163269043,
    84.44556427001953,
    7.638944625854492
  }
  map_yd[15] = {
    3.823984384536743,
    84.30912780761719,
    19.98708724975586
  }
  map_yd[16] = {
    13.14881420135498,
    84.7735595703125,
    21.63195037841797
  }
  map_yd[17] = {
    16.779983520507812,
    87.67798614501953,
    19.69405174255371
  }
  map_yd[18] = {
    4.590663909912109,
    84.30853271484375,
    17.359878540039062
  }
  map_yd[19] = {
    6.753482341766357,
    85.6123275756836,
    4.926307201385498
  }
  map_yd[20] = {
    11.938591003417969,
    84.94269561767578,
    -14.222227096557617
  }
  map_yd[21] = {
    4.839441299438477,
    84.30843353271484,
    -24.26158905029297
  }
  map_yd[22] = {
    -0.049498993903398514,
    84.42752838134766,
    -24.550621032714844
  }
  map_yd[23] = {
    -18.276283264160156,
    84.30843353271484,
    -15.175352096557617
  }
  map_yd[24] = {
    -23.73698616027832,
    84.30836486816406,
    -37.211585998535156
  }
  map_yd[25] = {
    -11.06899642944336,
    84.30838775634766,
    -58.5059928894043
  }
  map_yd[26] = {
    5.4589009284973145,
    84.51646423339844,
    -50.466182708740234
  }
  map_yd[27] = {
    15.138077735900879,
    84.30839538574219,
    -53.04851150512695
  }
  map_yd[28] = {
    -4.7624592781066895,
    84.43016052246094,
    -39.66291427612305
  }
  map_yd[29] = {
    -12.399181365966797,
    84.30838012695312,
    -74.61643981933594
  }
  map_yd[30] = {
    -2.3214192390441895,
    84.30870819091797,
    -81.90784454345703
  }
  map_yd[31] = {
    18.510818481445312,
    84.7947006225586,
    -92.176513671875
  }
  map_yd[32] = {
    0.36893200874328613,
    84.30831909179688,
    -98.59053802490234
  }
  map_yd[33] = {
    18.993276596069336,
    84.51871490478516,
    -89.1382827758789
  }
  map_yd[34] = {
    0.49402332305908203,
    84.43706512451172,
    -103.4670181274414
  }
  map_yd[35] = {
    3.236879587173462,
    84.36213684082031,
    -119.40741729736328
  }
  map_yd[36] = {
    -5.374227523803711,
    84.31416320800781,
    -123.7454605102539
  }
  map_yd[37] = {
    2.593520164489746,
    84.38772583007812,
    -129.1935272216797
  }
  map_yd[38] = {
    16.443607330322266,
    84.64601135253906,
    -139.24069213867188
  }
  map_yd[39] = {
    -1.6045063734054565,
    84.43605041503906,
    -139.192138671875
  }
  map_yd[40] = {
    -2.3792724609375,
    84.40167236328125,
    -147.17625427246094
  }
  map_yd[41] = {
    16.174306869506836,
    84.30819702148438,
    -153.49581909179688
  }
  map_yd[42] = {
    10.026586532592773,
    84.48424530029297,
    -155.7289276123047
  }
  map_yd[43] = {
    -4.910061359405518,
    84.30821990966797,
    -163.07838439941406
  }
  map_yd[44] = {
    -0.08530089259147644,
    84.45036315917969,
    -174.12091064453125
  }
  map_yd[45] = {
    -4.032384395599365,
    84.30831146240234,
    -181.02418518066406
  }
  map_yd[46] = {
    8.69709587097168,
    84.40342712402344,
    -175.1750030517578
  }
  map_yd[47] = {
    2.7070157527923584,
    84.30815887451172,
    -185.65042114257812
  }
  map_yd[48] = {
    0.04683970287442207,
    84.32310485839844,
    -189.81634521484375
  }
  map_yd[49] = {
    7.924252986907959,
    84.38809967041016,
    -190.7105712890625
  }
  map_yd[50] = {
    -0.13595445454120636,
    84.31771087646484,
    -206.30238342285156
  }
  map_yd[51] = {
    -3.0504753589630127,
    84.4535903930664,
    -209.75735473632812
  }
  map_yd[52] = {
    9.122832298278809,
    83.87977600097656,
    -244.65084838867188
  }
  map_yd[53] = {
    -0.10595057904720306,
    83.88101196289062,
    -250.98631286621094
  }
  map_yd[54] = {
    9.054908752441406,
    83.71304321289062,
    -271.05029296875
  }
end

Total_Candles = 0
function A_xizhuhuo()
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("-842203136", gg.TYPE_DWORD)
  local shCount = gg.getResultCount()
  if shCount == 0 then
    gg.toast("烛火吸收失败❌")
    gg.sleep(1000)
    return 0
  end
  local result = gg.getResults(shCount)
  local tmp = {}
  do
    do
      for _FORV_6_, _FORV_7_ in ipairs(result) do
        tmp[#tmp + 1] = {}
        tmp[#tmp].address = _FORV_7_.address - 12
        tmp[#tmp].flags = 16
      end
    end
  end
  tmp = gg.getValues(tmp)
  local x = {}
  do
    do
      for _FORV_7_, _FORV_8_ in ipairs(tmp) do
        if "" .. _FORV_8_.value == "3.5" then
          x[#x + 1] = {}
          x[#x].address = tmp[_FORV_7_].address
          x[#x].flags = 16
          x[#x].value = 999999
        end
      end
    end
  end
  gg.setValues(x)
  Total_Candles = Total_Candles + #x
  gg.toast("烛火吸收完毕，已收取 [" .. #x .. "] 点烛火🕯️\n\n本次运行共收取 [" .. Total_Candles .. "] 点烛火")
  gg.clearResults()
  if KG_jspt == "关" then
    gg.setSpeed(10)
    gg.sleep(200)
    gg.setSpeed(3)
  elseif KG_jspt == "开" then
    gg.sleep(2000)
  end
end
KG_qtdr = "启动"
function A_qtdr()
  if KG_qtdr == "启动" then
    gg.clearResults()
    gg.setRanges(4)
    YF_Search("-100", gg.TYPE_FLOAT)
    gg.refineNumber("-100", gg.TYPE_FLOAT)
    local ResultCount = gg.getResultCount()
    if ResultCount ~= 0 then
      local lz = gg.getResults(ResultCount)
      local tmp = {}
      do
        do
          for _FORV_6_, _FORV_7_ in pairs(lz) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_7_.address + 272
            tmp[#tmp].flags = gg.TYPE_FLOAT
          end
        end
      end
      tmp = gg.getValues(tmp)
      do
        for _FORV_6_, _FORV_7_ in pairs(tmp) do
          if _FORV_7_.value == 20 then
            lzdz = _FORV_7_.address - 328
            break
          end
        end
      end
    end
    gg.clearResults()
    if ResultCount == 0 or lzdz == nil then
      gg.toast("蜡烛点燃失败❌请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
    KG_qtdr = "开"
  end
  if KG_qtdr == "开" then
    local lzpy = {}
    do
      do
        for _FORV_4_ = 1, 321 do
          lzpy[_FORV_4_] = {}
          lzpy[_FORV_4_].address = lzdz + _FORV_4_ * 448
          lzpy[_FORV_4_].flags = gg.TYPE_FLOAT
          lzpy[_FORV_4_].value = "1"
          lzpy[_FORV_4_].freeze = true
          gg.addListItems(lzpy)
        end
      end
    end
    
    KG_qtdr = "关"
  else
    local lzpy = {}
    do
      do
        for _FORV_4_ = 1, 321 do
          lzpy[_FORV_4_] = {}
          lzpy[_FORV_4_].address = lzdz + _FORV_4_ * 448
          lzpy[_FORV_4_].flags = gg.TYPE_FLOAT
          lzpy[_FORV_4_].freeze = false
          gg.addListItems(lzpy)
        end
      end
    end
   
    KG_qtdr = "开"
  end
end

KG_qtzh = "启动"
function A_qtzh()
  if KG_qtzh == "启动" then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    YF_Search("1133903872", gg.TYPE_QWORD)
    local qtzh = gg.getResultCount(1)
    if qtzh ~= 0 then
      local zhahua = gg.getResults(qtzh)
      local tmp = {}
      do
        do
          for _FORV_6_, _FORV_7_ in pairs(zhahua) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_7_.address - 2508
            tmp[#tmp].flags = gg.TYPE_DWORD
          end
        end
      end
      tmp = gg.getValues(tmp)
      do
        for _FORV_6_, _FORV_7_ in pairs(tmp) do
          if _FORV_7_.value == 50 then
            zhdz = tmp[_FORV_6_].address + 2508
            break
          end
        end
      end
    end
    gg.clearResults()
    if zhdz == nil or qtzh == 0 then
      gg.alert("炸花失败❌，请重试或重启游戏")
      gg.alert("炸花失败❌，请重试或重启游戏")
      os.exit()
      gg.sleep(1000)
      return 0
    end
    KG_qtzh = "开"
  end
  if KG_qtzh == "开" then
    local zhpy = {}
    do
      do
        for _FORV_4_ = 1, 256 do
          zhpy[_FORV_4_] = {}
          zhpy[_FORV_4_].address = zhdz + _FORV_4_ * 8
          zhpy[_FORV_4_].flags = gg.TYPE_FLOAT
          zhpy[_FORV_4_].value = "0"
          zhpy[_FORV_4_].freeze = true
        end
      end
    end
    gg.addListItems(zhpy)
   
    KG_qtzh = "关"
  else
    local zhpy = {}
    do
      do
        for _FORV_4_ = 1, 256 do
          zhpy[_FORV_4_] = {}
          zhpy[_FORV_4_].address = zhdz + _FORV_4_ * 8
          zhpy[_FORV_4_].flags = gg.TYPE_FLOAT
          zhpy[_FORV_4_].freeze = false
        end
      end
    end
    gg.addListItems(zhpy)
   
    KG_qtzh = "开"
  end
end

KG_wxnl = "启动"
function A_wxnl()
  if KG_wxnl == "启动" then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("256", gg.TYPE_DWORD)
    gg.refineNumber("256", gg.TYPE_DWORD)
    local wxfks = gg.getResultCount()
    if wxfks ~= 0 then
      local wxf = gg.getResults(wxfks)
      local tmp = {}
      do
        do
          for _FORV_6_, _FORV_7_ in pairs(wxf) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_7_.address + 60
            tmp[#tmp].flags = gg.TYPE_FLOAT
          end
        end
      end
      tmp = gg.getValues(tmp)
      do
        for _FORV_6_, _FORV_7_ in pairs(tmp) do
          if _FORV_7_.value == 1.25 then
            energy = tonumber(_FORV_7_.address)
            break
          end
        end
      end
    end
    gg.clearResults()
    if energy == nil or wxfks == 0 then
      gg.toast("能量地址获取失败❌请重试或重启游戏")
      gg.sleep(1000)
      return false
    end
    wxfpy = {}
    wxfpy[1] = {}
    wxfpy[1].address = energy - 56
    wxfpy[1].flags = gg.TYPE_FLOAT
    wxfpy[1].value = 14
    wxfpy[2] = {}
    wxfpy[2].address = energy + 69
    wxfpy[2].flags = gg.TYPE_DWORD
    wxfpy[2].value = 0
    gg.toast("✔获取能量地址成功！")
    KG_wxnl = "开"
  end
  if KG_wxnl == "开" then
    wxfpy[1].freeze = true
    wxfpy[2].freeze = true
    gg.addListItems(wxfpy)
    gg.toast("无限能量开启⚡⚡⚡")
    KG_wxnl = "关"
  else
    wxfpy[1].freeze = false
    wxfpy[2].freeze = false
    gg.addListItems(wxfpy)
    gg.toast("无限能量关闭❌")
    KG_wxnl = "开"
  end
end
A_wxnl()
function M_xggy()
  local num_GY = gg.prompt({
    "请输入光翼的数量"
  }, {
    [1] = "100"
  }, {
    [1] = "number"
  })
  if num_GY == nil then
    return 0
  else
    num_GY = tonumber(num_GY[1])
    if num_GY == 0 or num_GY == 1056964608 then
      num_GY = 1056964608
    elseif num_GY > 300 then
      gg.alert("请输入大于0，且不超过300的整数")
      return 0
    end
  end
  A_xggy(num_GY)
end

KG_xggy = "启动"
Num_xggy = 150
gysl = 100
function A_xggy(num_gy)
gysl = num_gy
  if KG_xggy == "启动" then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    YF_Search("10200", 4)
    gg.refineNumber("10200", 4)
    local wxfks = gg.getResultCount()
    if wxfks ~= 0 then
      local wxf = gg.getResults(wxfks)
      local tmp = {}
      do
        do
          for _FORV_7_, _FORV_8_ in pairs(wxf) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = _FORV_8_.address - 1424
            tmp[#tmp].flags = 4
          end
        end
      end
      tmp = gg.getValues(tmp)
      do
        for _FORV_7_, _FORV_8_ in pairs(tmp) do
          if _FORV_8_.value == 699 then
            dengji = {}
            dengji[1] = {}
            dengji[1].address = _FORV_8_.address - 16
            dengji[1].flags = 4
            break
          end
        end
      end
    end
    gg.clearResults()
    if dengji == nil or wxfks == 0 then
      gg.toast("光翼地址获取失败❌请重试或重启游戏")
      gg.sleep(1000)
      return false
    end
    KG_xggy = "开"
  end
  local tmp = gg.getValues(dengji)
  Num_xggy = tmp[1].value
  dengji[1].value = num_gy
  gg.setValues(dengji)
end

function A_Get_zero(flag)
  flag = flag or 0
  local tmp = {}
  local xzy = {}
  do
    do
      for _FORV_6_ = 1, 3 do
        tmp[_FORV_6_] = {}
        tmp[_FORV_6_].address = cspy + _FORV_6_ * 4
        tmp[_FORV_6_].flags = gg.TYPE_FLOAT
        tmp = gg.getValues(tmp)
        xzy[_FORV_6_] = tmp[_FORV_6_].value
      end
    end
  end
  if flag ~= 0 then
    gg.copyText("{" .. xzy[1] .. ", " .. xzy[2] .. ", " .. xzy[3] .. "}", false)
    gg.toast("{" .. xzy[1] .. ", " .. xzy[2] .. ", " .. xzy[3] .. "}")
  end
  return xzy
end

function M_DTCD()
  FX = "M_DTCD"
  local SN = gg.choice({
    "1.遇境",
    "2.晨岛",
    "3.云野",
    "4.雨林",
    "5.霞谷",
    "6.暮土",
    "7.禁阁",
    "8.暴风眼",
    "9.重生之路",
    "10.返回主页",
  }, nil, "进图开")
  if SN == 1 then
    cd_yj()
  elseif SN == 2 then
    cd_cd()
  elseif SN == 3 then
    cd_yy()
  elseif SN == 4 then
    cd_yl()
  elseif SN == 5 then
    cd_xg()
  elseif SN == 6 then
    cd_mt()
  elseif SN == 7 then
    cd_jg()
  elseif SN == 8 then
    cd_bfy()
  elseif SN == 9 then
    cd_cszl()
  elseif SN == 10 then
    home()
  end
end

function cd_yj()
  FX = "cd_yj"
  local list_cd = {
    "1.小黑屋",
    "2.观星台",
    "3.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--遇境彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_yj[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_cd()
  FX = "cd_cd"
  local list_cd = {
    "1.彩虹桥",
    "2.富士山",
    "3.晨岛CG",
    "4.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--晨岛彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_cd[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_yy()
  FX = "cd_yy"
  local list_cd = {
    "1.青青草原🌴-左侧图",
    "2.幽灵船🚢-三塔图",
    "3.小草坝🌴-终点图",
    "4.云野CG💙-终点图",
    "5.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--云野彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_yy[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_yl()
  FX = "cd_yl"
  local list_cd = {
    "1.梅花桩🎋-右侧图",
    "2.雨林CG💙-终点图",
    "3.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--雨林彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_yl[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_xg()
  FX = "cd_xg"
  local list_cd = {
    "1.千鸟城🗺-终点图️",
    "2.霞谷城堡🏰-飞行赛道",
    "3.城堡云朵☁️-飞行赛道",
    "4.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--霞谷彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_xg[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_mt()
  FX = "cd_mt"
  local list_cd = {
    "1.冰淇淋山🍨-起点图",
    "2.小云海☁️ - 沉船图",
    "3.暮土CG💙-终点图",
    "4.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--墓土彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_mt[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_jg()
  FX = "cd_jg"
  local list_cd = {
    "1.闪电桥⚡-终点图",
    "2.蜡像馆🤶🏻-终点图",
    "3.日月岛🌓-终点图",
    "4.办公室门🌁-起点图",
    "5.空间站🛰-办公室里",
    "6.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--禁阁彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_jg[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function cd_bfy()
  FX = "cd_bfy"
  local BFY = gg.choice({
    "1.图一终点",
    "2.图二终点",
    "3.图二 失色之地",
    "4.上一页"
  }, nil, "--暴风眼彩蛋🐣--")
  if BFY == 1 then
    Teleport(gy_bfy[2])
    gg.toast("暴风眼图一终点瞬移完成")
  elseif BFY == 2 then
    Teleport(gy_bfy[4])
    gg.toast("暴风眼图二终点瞬移完成")
  elseif BFY == 3 then
    gg.toast("正在前往失色之地")
    Teleport(cdmap_bfy[1])
    gg.sleep(3000)
    Teleport(cdmap_bfy[2])
  elseif BFY == 4 then
    M_DTCD()
  end
end

function cd_cszl()
  FX = "cd_cszl"
  local list_cd = {
    "1.一图🔥开始上面",
    "2.一图🔥外围围墙",
    "3.一图🔥墓  碑",
    "4.一图🔥断石一",
    "5.一图🔥断石二",
    "6.一图🔥塔  尖",
    "7.一图🔥终点城堡塔顶",
    "8.一图🔥终点",
    "9.二图💙高  空",
    "10.二图💙终点",
    "11.三图🌹高空",
    "12.三图🌹聊天椅",
    "13.三图🌹祈祷石",
    "14.三图🌹终点",
    "15.上一页"
  }
  local cd_index = gg.choice(list_cd, nil, "--重生之路彩蛋🐣--")
  if cd_index == #list_cd then
    M_DTCD()
  elseif cd_index ~= nil then
    Teleport(cdmap_cszl[cd_index])
    gg.toast(list_cd[cd_index])
  end
end

function M_BFY()
  FX = "M_BFY"
  local bfy = gg.choice({
    "1.独狼 原地献祭🐺",
    "2.带人 瞬移献祭🙏",
    "3.💫返回主页",
    "4.🌈退出辅助"
  }, nil, "---暴风眼🌪🌪??---")
  if bfy == 1 then
    A_rycs(36)
    A_bfy()
    A_rycs(39)
  elseif bfy == 2 then
    M_BFY_1()
  elseif bfy == 3 then
    home()
  elseif bfy == 4 then
    Exit()
  end
end

-----献祭流程
function A_bfy()
  FX = "bfy2"
  gg.alert("献祭完了点悬浮窗")
  HS3()
end
function bfy2()
Teleport({-0.17198026180267334;84.62522888183594;31.199289321899414})
gg.toast("这边三个没吸到嗷~")
gg.sleep(1200)
gg.toast("拿完再点悬浮窗")
gg.sleep(800)
gg.toast("拿完再点悬浮窗")
gg.sleep(800)
gg.toast("拿完再点悬浮窗")
FX = "bfy3"
end
function bfy3()
Teleport(gy_bfy[5])
jiasu(6)
FX = "bfy4"
gg.alert("抱抱他，然后点悬浮窗")
end
function bfy4()
                local rolePosition = getRolePosition()
                local roleX = rolePosition[1].value
	            local roleZ = rolePosition[2].value
	            local roleY = rolePosition[3].value
                xx = tostring(roleX)
				zz = tostring(roleZ) + 2
				yy = tostring(roleY)
            for i =1,20 do
                  zz = zz + 2
                Teleport({xx,zz,yy})
                gg.sleep(10)
             end
gg.alert("进入下个地图再后点击悬浮窗") FX = "bfy5"
end
function bfy5()
g4() sleep(3000) g5()
gg.alert("星光大道自己走咯\n拿完蜡烛点悬浮窗") gg.setVisible(false) FX = "bfy6"
end
function bfy6()
renyimen6(9)  gg.sleep(1800)  gg.alert("回家") renyimen6(1)  FX = "home" FX2= "jiasu"
end


function IsMap(map_idx)
  if KG_cs == "开" then
    local tmp0 = gg.getValues(dthx)
    if tmp0[1].value == rycs_id[map_idx][2] then
      return true
    end
    return false
  end
  return true
end

function A_MapSleep(map_idx, pt_flag)
  pt_flag = pt_flag or false
  if not IsMap(map_idx) then
    A_rycs(map_idx)
    if pt_flag and KG_jspt == "关" then
      gg.setSpeed(3)
    end
  end
end

function M_GYSY()
  FX = "M_GYSY"
  SN2 = gg.choice({
    "1.晨岛⛰",
    "2.云野🌴",
    "3.雨林☔",
    "4.霞谷🏰",
    "5.暮土🔥",
    "6.禁阁🌓",
    "7.暴风眼🌪",
    "8.🔙返回上一页",
    "9.💫返回主页"
  }, nil, "---带人光翼瞬移✨✨✨---")
  if SN2 == 1 then
    A_gycd()
  elseif SN2 == 2 then
    A_gyyy()
  elseif SN2 == 3 then
    A_gyyl()
  elseif SN2 == 4 then
    A_gyxg()
  elseif SN2 == 5 then
    A_gymt()
  elseif SN2 == 6 then
    A_gyjg()
  elseif SN2 == 7 then
    A_gybfy()
  elseif SN2 == 8 then
    M_GN()
  elseif SN2 == 9 then
    Exit()
  end
end

function A_ConfirmBack()
  local menu2 = gg.choice({
    "1.确定✅ 返回上一页",
    "2.取消❌ 不小心按错了"
  }, nil, "---🌸未完成当前地图光翼🌸---")
  if menu2 == 1 then
    skycount = 0
    M_GYSY()
  end
end

function A_gycd()
  FX = "A_gycd"
  if skycount == 0 then
    if IsMap(1) then
      Teleport(xz_cd[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(2)
    Teleport(gy_cd[1])
    skycount = 1
  elseif skycount == #gy_cd then
    local menu = gg.choice({
      "1.上一步",
      "2.前往云野",
      "3.🔙返回上一页"
    }, nil, "---🌸下一步没有了🌸---")
    if menu == 1 then
      skycount = skycount - 1
      Teleport(gy_cd[skycount])
      gg.toast("晨岛光翼 [" .. skycount .. "] 瞬移完成")
    elseif menu == 2 then
      skycount = 0
      gg.toast("🌸去云野咯🌸")
      gg.sleep(1500)
      Teleport(map_yy[0])
      FX = "A_gyyy"
    elseif menu == 3 then
      skycount = 0
      M_GYSY()
    end
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨晨岛小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_cd[skycount])
        gg.toast("晨岛光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      skycount = skycount + 1
      Teleport(gy_cd[skycount])
      gg.toast("晨岛光翼 [" .. skycount .. "] 瞬移完成")
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

function A_gyyy()
  FX = "A_gyyy"
  if skycount == 0 then
    if IsMap(1) then
      Teleport(xz_yy[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(3)
    yyyct = 0
    Teleport(gy_yy[1])
    skycount = 1
  elseif skycount == #gy_yy then
    local menu = gg.choice({
      "1.上一步",
      "2.前往雨林",
      "3.🔙返回上一页"
    }, nil, "---🌸下一步没有了🌸---")
    if menu == 1 then
      skycount = skycount - 1
      Teleport(gy_yy[skycount])
      gg.toast("云野光翼 [" .. skycount .. "] 瞬移完成")
    elseif menu == 2 then
      skycount = 0
      gg.toast("🌸去雨林咯🌸")
      gg.sleep(1500)
      Teleport(map_yy[24])
      gg.sleep(5000)
      gg.toast("🌸正在前往雨林🌸")
      Teleport(map_yl[0])
      FX = "A_gyyl"
    elseif menu == 3 then
      skycount = 0
      M_GYSY()
    end
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨云野小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_yy[skycount])
        gg.toast("云野光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      if skycount == 3 and yyyct == 0 then
        gg.toast("右副本")
        gg.sleep(1500)
        Teleport(map_yy[3])
        yyyct = yyyct + 1
      elseif skycount == 5 and yyyct == 1 then
        gg.toast("圣域群岛")
        gg.sleep(1500)
        Teleport(map_yy[5])
        yyyct = yyyct + 1
      elseif skycount == 13 and yyyct == 2 then
        gg.toast("返回右副本")
        gg.sleep(1500)
        Teleport(map_yy[11])
        gg.sleep(6000)
        gg.toast("返回一图")
        Teleport(map_yy[12])
        gg.sleep(6000)
        gg.toast("前往左副本")
        Teleport(map_yy[13])
        yyyct = yyyct + 1
      elseif skycount == 15 and yyyct == 3 then
        gg.toast("前往二图")
        gg.sleep(1500)
        Teleport(map_yy[17])
        yyyct = yyyct + 1
      elseif skycount == 18 and yyyct == 4 then
        gg.toast("进入八人门")
        gg.sleep(1500)
        Teleport(map_yy[22])
        yyyct = yyyct + 1
      elseif skycount == 19 and yyyct == 5 then
        gg.toast("传出八人副本")
        gg.sleep(1500)
        Teleport(map_yy[23])
        yyyct = yyyct + 1
      else
        skycount = skycount + 1
        Teleport(gy_yy[skycount])
        gg.toast("云野光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

function A_gyyl()
  FX = "A_gyyl"
  if skycount == 0 then
    if IsMap(1) then
      Teleport(xz_yl[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(10)
    ylyct = 0
    Teleport(gy_yl[1])
    skycount = 1
  elseif skycount >= #gy_yl then
    local menu = gg.choice({
      "1.上一步",
      "2.前往霞谷",
      "3.🔙返回上一页"
    }, nil, "---🌸下一步没有了🌸---")
    if menu == 1 then
      skycount = skycount - 1
      Teleport(gy_yl[skycount])
      gg.toast("雨林光翼 [" .. skycount .. "] 瞬移完成")
    elseif menu == 2 then
      skycount = 0
      gg.toast("🌸去霞谷咯🌸")
      Teleport(map_xg[0])
      FX = "A_gyxg"
    elseif menu == 3 then
      skycount = 0
      M_GYSY()
    end
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨雨林小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_yl[skycount])
        gg.toast("雨林光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      if skycount == 2 and ylyct == 0 then
        gg.toast("雨林二图")
        gg.sleep(1500)
        Teleport(map_yl[5])
        ylyct = ylyct + 1
      elseif skycount == 6 and ylyct == 1 then
        gg.toast("右隐藏图")
        gg.sleep(1500)
        Teleport(map_yl[14])
        ylyct = ylyct + 1
      elseif skycount == 8 and ylyct == 2 then
        gg.toast("地下隐藏图")
        gg.sleep(1500)
        Teleport(map_yl[19])
        ylyct = ylyct + 1
      elseif skycount == 12 and ylyct == 3 then
        gg.toast("传出地下")
        gg.sleep(1500)
        Teleport(map_yl[23])
        gg.sleep(5000)
        gg.toast("传水母图")
        Teleport(map_yl[24])
        ylyct = ylyct + 1
      elseif skycount == 15 and ylyct == 4 then
        gg.toast("前往终点")
        gg.sleep(1500)
        Teleport(map_yl[35])
        ylyct = ylyct + 1
      else
        skycount = skycount + 1
        Teleport(gy_yl[skycount])
        gg.toast("雨林光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

function A_gyxg()
  FX = "A_gyxg"
  if skycount == 0 then
    if IsMap(1) then
      Teleport(xz_xg[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(16)
    xgyct = 0
    Teleport(gy_xg[1])
    skycount = 1
  elseif skycount >= #gy_xg then
    local menu = gg.choice({
      "1.上一步",
      "2.前往墓土",
      "3.🔙返回上一页"
    }, nil, "---🌸下一步没有了🌸---")
    if menu == 1 then
      skycount = skycount - 1
      Teleport(gy_yl[skycount])
      gg.toast("霞谷光翼 [" .. skycount .. "] 瞬移完成")
    elseif menu == 2 then
      skycount = 0
      gg.toast("🌸去墓土咯🌸")
      gg.sleep(1500)
      Teleport(map_mt[0])
      FX = "A_gymt"
    elseif menu == 3 then
      skycount = 0
      M_GYSY()
    end
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨霞谷小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_xg[skycount])
        gg.toast("霞谷光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      if skycount == 3 and xgyct == 0 then
        gg.toast("霞光城")
        gg.sleep(1500)
        Teleport(map_xg[2])
        xgyct = xgyct + 1
      elseif skycount == 5 and xgyct == 1 then
        gg.toast("飞行赛道")
        gg.sleep(1500)
        Teleport(map_xg[5])
        xgyct = xgyct + 1
      elseif skycount == 7 and xgyct == 2 then
        gg.toast("地图穿梭")
        gg.sleep(1500)
        Teleport(map_xg[8])
        xgyct = xgyct + 1
      elseif skycount == 9 and xgyct == 3 then
        gg.alert("请回遇境，再点下一个")
        xgyct = xgyct + 1
      elseif skycount == 9 and xgyct == 4 then
        while not IsMap(1) do
          if gg.isVisible(true) then
            gg.setVisible(false)
            gg.alert("请手动返回遇境，再继续运行")
          end
        end
        gg.toast("进入霞谷")
        Teleport(xz_xg[0])
        gg.sleep(6000)
        gg.toast("传滑雪赛道")
        Teleport(map_xg2[0])
        xgyct = xgyct + 1
      elseif skycount == 10 and xgyct == 5 then
        gg.toast("赛道终点")
        gg.sleep(1500)
        Teleport(map_xg2[3])
        gg.sleep(5000)
        gg.toast("冥想点")
        Teleport(map_xg[11])
        xgyct = xgyct + 1
      else
        skycount = skycount + 1
        Teleport(gy_xg[skycount])
        gg.toast("霞谷光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

local mtyct_var = 0
function A_gymt()
  FX = "A_gymt"
  if skycount == 0 and mtyct_var == 0 then
    if IsMap(1) then
      Teleport(xz_mt[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(22)
    mtyct = 0
    Teleport(map_mt[2])
    gg.toast("跳下旋涡")
    mtyct_var = 1
    if KG_jspt == "关" then
      gg.setSpeed(8)
      gg.sleep(2000)
      gg.setSpeed(1)
    end
  elseif skycount >= #gy_mt then
    local menu = gg.choice({
      "1.上一步",
      "2.前往禁阁",
      "3.🔙返回上一页"
    }, nil, "---🌸下一步没有了🌸---")
    if menu == 1 then
      skycount = skycount - 1
      Teleport(gy_yl[skycount])
      gg.toast("墓土光翼 [" .. skycount .. "] 瞬移完成")
    elseif menu == 2 then
      skycount = 0
      gg.toast("🌸去禁阁咯🌸")
      gg.sleep(1500)
      Teleport(map_jg[0])
      FX = "A_gyjg"
    elseif menu == 3 then
      skycount = 0
      M_GYSY()
    end
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨墓土小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_mt[skycount])
        gg.toast("墓土光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      if skycount == 2 and mtyct == 0 then
        Teleport(map_mt2[0])
        A_Sit()
        mtyct = mtyct + 1
        if KG_jspt == "关" then
          gg.setSpeed(8)
          gg.sleep(9000)
          gg.setSpeed(1)
        end
      elseif skycount == 4 and mtyct == 1 then
        Teleport(map_mt3[1])
        A_Sit()
        mtyct = mtyct + 1
        if KG_jspt == "关" then
          gg.setSpeed(8)
        end
      elseif skycount == 4 and mtyct == 2 then
        if KG_jspt == "关" then
          gg.setSpeed(1)
        end
        Teleport(map_mt[8])
        gg.sleep(500)
        gg.toast("墓土二图")
        Teleport(map_mt[9])
        mtyct = mtyct + 1
      elseif skycount == 10 and mtyct == 3 then
        gg.toast("沉船图")
        gg.sleep(1500)
        Teleport(map_mt[19])
        mtyct = mtyct + 1
      elseif skycount == 13 and mtyct == 4 then
        gg.toast("远古战场")
        gg.sleep(1500)
        Teleport(map_mt[26])
        mtyct = mtyct + 1
      elseif skycount == 15 and mtyct == 5 then
        gg.toast("终点神庙")
        gg.sleep(1500)
        Teleport(map_mt[38])
        mtyct = mtyct + 1
      else
        skycount = skycount + 1
        Teleport(gy_mt[skycount])
        gg.toast("墓土光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

function A_gyjg()
  FX = "A_gyjg"
  if skycount == 0 then
    if IsMap(1) then
      Teleport(xz_jg[0])
      gg.sleep(trans_time)
    end
    A_MapSleep(29)
    jgyct = 0
    Teleport(gy_jg[1])
    skycount = 1
  else
    local SM = gg.choice({
      "1.上一步",
      "2.下一步",
      "3.🔙返回上一页"
    }, nil, "---✨禁阁小金人✨---")
    if SM == 1 then
      if skycount <= 1 then
        gg.toast("上一步没有了")
      else
        skycount = skycount - 1
        Teleport(gy_jg[skycount])
        gg.toast("禁阁光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 2 then
      if skycount >= #gy_jg then
        gg.toast("请手动前往暴风眼再启动")
        skycount = 0
        FX = "A_gybfy"
      elseif skycount == 2 and jgyct == 0 then
        gg.toast("右迷宫")
        gg.sleep(1500)
        Teleport(map_jg[4])
        jgyct = jgyct + 1
      elseif skycount == 4 and jgyct == 1 then
        gg.toast("禁阁一层")
        gg.sleep(1500)
        Teleport(map_jg[5])
        jgyct = jgyct + 1
      else
        skycount = skycount + 1
        Teleport(gy_jg[skycount])
        gg.toast("禁阁光翼 [" .. skycount .. "] 瞬移完成")
      end
    elseif SM == 3 then
      A_ConfirmBack()
    end
  end
end

function A_gybfy()
  FX = "A_gybfy"
  local bfy = gg.choice({
    "1.进入大门",
    "2.图一终点",
    "3.图二终点",
    "4.🔙返回上一页",
    "5.💫返回主页"
  }, nil, "---暴风眼🌪🌪🌪---")
  if bfy == 1 then
    if IsMap(1) then
      Teleport(gy_bfy[1])
      gg.toast("从遇境进入大门")
    else
      gg.toast("请在遇境启动")
    end
  elseif bfy == 2 then
    Teleport(gy_bfy[2])
    gg.toast("图一终点瞬移完成")
  elseif bfy == 3 then
    Teleport(gy_bfy[3])
    gg.toast("图二终点前小金人,5秒后前往洞口")
    gg.sleep(5000)
    Teleport(gy_bfy[4])
  elseif bfy == 4 then
    M_GYSY()
  elseif bfy == 5 then
    home()
  end
end

KG_bz = "开"
KG_bz0 = "开"
KG_bz1 = "开"
KG_bz2 = "开"
KG_bz3 = "开"
KG_bz4 = "开"
KG_bz5 = "开"
KG_bz6 = "开"
KG_bz7 = "开"
bz_idx = 0
function M_gbzb()
  FX = "M_gbzb"
  local menu = gg.choice({
    "1.裤子👖",
    "2.面具👓",
    "3.发型🧑",
    "️4.斗篷🕊",
    "5.背饰🎸",
    "6.头饰👶🏻",
    "7.项链⭕",
    "8.随机装扮",
    "9.自动变装",
    "10.恢复装扮",
    "11.上一页",
    "12.主页"
  }, nil, "换装")
  if menu == 12 then
    home()
  elseif menu == 11 then
    hlhs()
  elseif menu == 10 then
    A_hfzb()
  elseif menu ~= nil then
    load("M_bz" .. menu .. "()")()
  end
end

function getClothes()
  gg.clearResults()
  gg.setRanges(4)
  YF_Search("31,076", gg.TYPE_DWORD)
  gg.refineNumber("31,076", gg.TYPE_DWORD)
  local gbzb = gg.getResultCount()
  if gbzb ~= 0 then
    local zb = gg.getResults(gbzb)
    local tmp = {}
    do
      do
        for _FORV_6_, _FORV_7_ in ipairs(zb) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = _FORV_7_.address - 204
          tmp[#tmp].flags = 4
        end
      end
    end
    tmp = gg.getValues(tmp)
    do
      do
        for _FORV_6_, _FORV_7_ in ipairs(tmp) do
          if _FORV_7_.value == 1 then
            address_clos = tmp[_FORV_6_].address
            break
          end
        end
      end
    end
    KG_bz0 = "关"
  end
  gg.clearResults()
end

kz_id = {
  {
    {
      -603624060,
      "初始裤子"
    },
    {
      556395364,
      "超短裤子"
    },
    {
      -224798216,
      "五分裤子"
    },
    {
      739857211,
      "短腿裤子"
    },
    {
      971855908,
      "灯笼裤子"
    },
    {
      -208305596,
      "细腿裤子"
    },
    {
      -149134807,
      "束腿裤子"
    },
    {
      -1862075467,
      "喇叭裤子"
    }
  },
  {
    {
      268095236,
      "归属季白棉裤"
    },
    {
      570621080,
      "凛冬季大棉裤"
    },
    {
      -1203892007,
      "凛冬季小棉裤"
    },
    {
      2119378818,
      "凛冬季束腿裤"
    },
    {
      -1180077310,
      "凛冬季紧身裤"
    },
    {
      1796000040,
      "圣岛季连体裤"
    },
    {
      1394323104,
      "圣岛季褶皱裤"
    }
  }
}
function M_bz1()
  FX = "M_bz1"
  local menu = gg.choice({
    "普通裤子",
    "季节裤子",
    "🔙返回上一页",
    "💫返回主页"
  }, nil, "---想要更换成什么裤子？---")
  if menu == 3 then
    M_gbzb()
  elseif menu == 4 then
    home()
  elseif menu ~= nil then
    bz_idx = menu
    A_bz1()
  end
end

function A_bz1()
  FX = "A_bz1"
  local kz_list = {}
  do
    do
      for _FORV_4_ = 1, #kz_id[bz_idx] do
        kz_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. kz_id[bz_idx][_FORV_4_][2]
      end
    end
  end
  local kz_backIdx = #kz_list + 1
  local kz_Main6Idx = #kz_list + 2
  kz_list[kz_backIdx] = "1.🔙返回上一页"
  kz_list[kz_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(kz_list, nil, "---想要更换成什么裤子？---")
  if menu == kz_backIdx then
    M_bz1()
  elseif menu == kz_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz1_1(kz_id[bz_idx][menu])
  end
end

function A_bz1_1(TARGET_ITEM)
  if KG_bz1 == "开" then
    gg.toast("🔜正在获取 裤子👖")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      kzpy = {}
      kzpy[1] = {}
      kzpy[1].address = address_clos + 4
      kzpy[1].flags = 4
      KG_bz1 = "关"
    else
      gg.toast("获取人物裤子失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  kzpy[1].value = TARGET_ITEM[1]
  kzpy[1].freeze = true
  gg.addListItems(kzpy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

mj_id = {
  {
    {
      -631576414,
      "初始面具"
    },
    {
      -1340295543,
      "矮人面具"
    },
    {
      1600525874,
      "牛头面具"
    },
    {
      -1087589118,
      "罐子面具"
    },
    {
      252652358,
      "棱形面具"
    },
    {
      -1228262988,
      "弯角面具"
    },
    {
      -1177930131,
      "直角面具"
    },
    {
      -635831343,
      "短角面具"
    },
    {
      1929978494,
      "长筒面具"
    },
    {
      685288461,
      "四角面具"
    },
    {
      -27210618,
      "黑脸面具"
    }
  },
  {
    {
      2726619261,
      "感恩季功夫面具"
    },
    {
      3107843108,
      "感恩季狐狸面具"
    },
    {
      4228619598,
      "感恩季兔子面具"
    },
    {
      2535142832,
      "感恩季抱拳面具"
    },
    {
      3555166118,
      "感恩季白绒面具"
    },
    {
      1044037391,
      "感恩季鹿头面具"
    },
    {
      1934512129,
      "感恩季毕业面具"
    }
  },
  {
    {
      1984844986,
      "追光季笛子面具"
    },
    {
      1968067367,
      "追光季背背面具"
    },
    {
      1884179272,
      "追光季排箫面具"
    },
    {
      1917734510,
      "追光季思考面具"
    },
    {
      2001622605,
      "追光季雨伞面具"
    },
    {
      1900956891,
      "追光季花瓣面具"
    }
  },
  {
    {
      2699133379,
      "归属季吉他面具"
    },
    {
      378937945,
      "归属季礼花面具"
    },
    {
      2479708305,
      "归属季背手面具"
    },
    {
      3095923099,
      "归属季指挥面具"
    },
    {
      378937945,
      "归属季蹦迪面具"
    }
  },
  {
    {
      2580070469,
      "凛冬季思考面具"
    },
    {
      1837529177,
      "凛冬季邀请面具"
    },
    {
      570479295,
      "凛冬季杂技面具"
    },
    {
      3716657324,
      "凛冬季飞吻面具"
    },
    {
      1304488902,
      "凛冬季毕业面具"
    }
  },
  {
    {
      1481505198,
      "魔法季点头面具"
    },
    {
      3456549768,
      "魔法季惊吓面具"
    },
    {
      1464727579,
      "魔法季疑问面具"
    }
  },
  {
    {
      497608138,
      "圣岛季眼镜面具"
    },
    {
      -2066581312,
      "圣岛季胡子面具"
    }
  }
}
function M_bz2()
  FX = "M_bz2"
  local menu = gg.choice({
    "普通面具",
    "感恩季节面具",
    "追光季节面具",
    "归属季节面具",
    "凛冬季节面具",
    "魔法季节面具",
    "圣岛季节面具",
    "1.🔙返回上一页",
    "2.💫返回主页"
  }, nil, "---想要更换成什么面具？---")
  if menu == 8 then
    M_gbzb()
  elseif menu == 9 then
    home()
  elseif menu ~= nil then
    bz_idx = menu
    A_bz2()
  end
end

function A_bz2()
  FX = "A_bz2"
  local mj_list = {}
  do
    do
      for _FORV_4_ = 1, #mj_id[bz_idx] do
        mj_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. mj_id[bz_idx][_FORV_4_][2]
      end
    end
  end
  local mj_backIdx = #mj_list + 1
  local mj_Main6Idx = #mj_list + 2
  mj_list[mj_backIdx] = "1.🔙返回上一页"
  mj_list[mj_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(mj_list, nil, "---想要更换成什么面具？---")
  if menu == mj_backIdx then
    M_bz2()
  elseif menu == mj_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz2_1(mj_id[bz_idx][menu])
  end
end

function A_bz2_1(TARGET_ITEM)
  if KG_bz2 == "开" then
    gg.toast("🔜正在获取 面具👓")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      mjpy = {}
      mjpy[1] = {}
      mjpy[1].address = address_clos + 16
      mjpy[1].flags = 4
      KG_bz2 = "关"
    else
      gg.toast("获取人物面具失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  mjpy[1].value = TARGET_ITEM[1]
  mjpy[1].freeze = true
  gg.addListItems(mjpy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

fx_id = {
  {
    {
      1229053584,
      "初始发型"
    },
    {
      158418233,
      "呆毛发型"
    },
    {
      -1510505511,
      "马尾发型"
    },
    {
      589320403,
      "孤岛发型"
    },
    {
      1091766677,
      "短发发型"
    },
    {
      1779588853,
      "鸡冠发型"
    },
    {
      -1492518440,
      "羊辫发型"
    },
    {
      1151632134,
      "披肩发型"
    },
    {
      189805609,
      "蝎辫发型"
    },
    {
      -626389869,
      "蘑菇发型"
    },
    {
      1092648973,
      "中发发型"
    },
    {
      1415190429,
      "麻花发型"
    },
    {
      310226317,
      "美女发型"
    },
    {
      351601302,
      "圆头发型"
    },
    {
      1966947567,
      "三峰发型"
    },
    {
      -1712135015,
      "散乱发型"
    },
    {
      1472657881,
      "寸头发型"
    },
    {
      1747536341,
      "过肩发型"
    },
    {
      -239454226,
      "胡子发型"
    },
    {
      766797080,
      "单辫发型"
    },
    {
      1960678833,
      "双球发型"
    },
    {
      -1219935991,
      "右辫发型"
    },
    {
      21382025,
      "二八发型"
    },
    {
      392918653,
      "可爱发型"
    },
    {
      651777506,
      "狮子发型"
    },
    {
      -857360841,
      "顺毛发型"
    },
    {
      -1628326584,
      "丸子发型"
    },
    {
      1740771042,
      "光头发型"
    },
    {
      2926311387,
      "南瓜发型"
    }
  },
  {
    {
      416680174,
      "晨岛胡子发型"
    },
    {
      -1862365002,
      "云野狗头发型"
    },
    {
      1078517906,
      "雨林妈妈发型"
    },
    {
      777821397,
      "霞谷卡卡发型"
    },
    {
      -913561859,
      "霞谷平菇发型"
    },
    {
      -1613597547,
      "墓土龙骨发型"
    },
    {
      -573731038,
      "禁阁毕业发型"
    }
  },
  {
    {
      499685406,
      "感恩季伸展发型"
    },
    {
      777066155,
      "感恩季功夫发型"
    },
    {
      3441194314,
      "感恩季狐狸发型"
    }
  },
  {
    {
      2231097150,
      "追光季笛子发型"
    },
    {
      4152249299,
      "追光季背背发型"
    },
    {
      1636174276,
      "追光季排箫发型"
    },
    {
      4161779120,
      "追光季雨伞发型"
    },
    {
      3342968869,
      "追光季花瓣发型"
    }
  },
  {
    {
      1859574381,
      "归属季礼花发型"
    },
    {
      168028151,
      "归属季指挥发型"
    }
  },
  {
    {
      298050356,
      "凛冬季毕业发型"
    },
    {
      3216257586,
      "凛冬季邀请发型"
    },
    {
      1458373057,
      "凛冬季杂技发型"
    },
    {
      640785264,
      "凛冬季跳舞发型"
    }
  },
  {
    {
      -1069436357,
      "魔法季毕业发型"
    },
    {
      4147463881,
      "魔法季点头发型"
    },
    {
      862984657,
      "魔法季惊吓发型"
    },
    {
      1469931494,
      "魔法季疑问发型"
    },
    {
      3559895758,
      "魔法季捶背发型"
    },
    {
      1881845530,
      "魔法季瞌睡发型"
    },
    {
      1001062354,
      "魔法季螃蟹发型"
    }
  },
  {
    {
      185578776,
      "圣岛季内秀发型"
    },
    {
      579079763,
      "圣岛季固执发型"
    },
    {
      -1705448850,
      "圣岛季鸣谢发型"
    },
    {
      -1638259346,
      "圣岛季放松发型"
    },
    {
      -871123844,
      "圣岛季热血发型"
    },
    {
      -583372888,
      "圣岛季水母发型"
    }
  }
}
function M_bz3()
  FX = "M_bz3"
  local menu = gg.choice({
    "普通发型",
    "毕业发型",
    "感恩季节发型",
    "追光季节发型",
    "归属季节发型",
    "凛冬季节发型",
    "魔法季节发型",
    "圣岛季节发型",
    "1.🔙返回上一页",
    "2.💫返回主页"
  }, nil, "---想要更换成什么发型？---")
  if menu == 9 then
    M_gbzb()
  elseif menu == 10 then
    home()
  elseif menu ~= nil then
    bz_idx = menu
    A_bz3()
  end
end

function A_bz3()
  FX = "A_bz3"
  local fx_list = {}
  do
    do
      for _FORV_4_ = 1, #fx_id[bz_idx] do
        fx_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. fx_id[bz_idx][_FORV_4_][2]
      end
    end
  end
  local fx_backIdx = #fx_list + 1
  local fx_Main6Idx = #fx_list + 2
  fx_list[fx_backIdx] = "1.🔙返回上一页"
  fx_list[fx_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(fx_list, nil, "---想要更换成什么发型？---")
  if menu == fx_backIdx then
    M_bz3()
  elseif menu == fx_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz3_1(fx_id[bz_idx][menu])
  end
end

function A_bz3_1(TARGET_ITEM)
  if KG_bz3 == "开" then
    gg.toast("🔜正在获取 发型🧑")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      fxpy = {}
      fxpy[1] = {}
      fxpy[1].address = address_clos + 12
      fxpy[1].flags = 4
      KG_bz3 = "关"
    else
      gg.toast("获取人物发型失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  fxpy[1].value = TARGET_ITEM[1]
  fxpy[1].freeze = true
  gg.addListItems(fxpy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

dp_id = {
  {
    {
      -2049687945,
      "初始斗篷"
    },
    {
      -4950150,
      "黄色斗篷"
    },
    {
      2038455273,
      "红色斗篷"
    },
    {
      -1127259402,
      "浅绿斗篷"
    },
    {
      1611389272,
      "青色斗篷"
    },
    {
      1676224199,
      "深蓝斗篷"
    },
    {
      -828166640,
      "紫色斗篷"
    },
    {
      -285876082,
      "粉色斗篷"
    },
    {
      -12114331,
      "黑色斗篷"
    },
    {
      -1652732985,
      "白色斗篷"
    },
    {
      2731242012,
      "绿芽斗篷"
    },
    {
      2496216296,
      "蝙蝠斗篷"
    }
  },
  {
    {
      2219120716,
      "TGC 蓝斗篷"
    }
  },
  {
    {
      3130294398,
      "感恩季伸展斗篷"
    },
    {
      1205733815,
      "感恩季白绒斗篷"
    }
  },
  {
    {
      2766860709,
      "追光季背背斗篷"
    },
    {
      2716527852,
      "追光季思考斗篷"
    },
    {
      1516488095,
      "追光季花瓣斗篷"
    }
  },
  {
    {
      2181608090,
      "归属季吉他斗篷"
    },
    {
      3740388568,
      "归属季礼花斗篷"
    },
    {
      1740444614,
      "归属季背手斗篷"
    }
  },
  {
    {
      803430286,
      "凛冬季思考斗篷"
    },
    {
      844189904,
      "凛冬季杂技斗篷"
    }
  },
  {
    {
      3952275244,
      "魔法季疑问斗篷"
    },
    {
      4002608101,
      "魔法季捶背斗篷"
    },
    {
      2473421893,
      "魔法季瞌睡斗篷"
    },
    {
      705761080,
      "魔法季螃蟹斗篷"
    }
  },
  {
    {
      2091421626,
      "圣岛季蝴蝶斗篷"
    },
    {
      1632614382,
      "圣岛季鲲瑶斗篷"
    },
    {
      -2064347239,
      "圣岛季粉色斗篷"
    },
    {
      798847432,
      "圣岛季斑点斗篷"
    }
  }
}
function M_bz4()
  FX = "M_bz4"
  local menu = gg.choice({
    "普通斗篷",
    "TGC 蓝斗篷",
    "感恩季节斗篷",
    "追光季节斗篷",
    "归属季节斗篷",
    "凛冬季节斗篷",
    "魔法季节斗篷",
    "圣岛季节斗篷",
    "1.🔙返回上一页",
    "2.💫返回主页"
  }, nil, "---想要更换成什么斗篷？---")
  if menu == 9 then
    M_gbzb()
  elseif menu == 10 then
    home()
  elseif menu == 2 then
    A_TGC()
  elseif menu ~= nil then
    bz_idx = menu
    A_bz4()
  end
end

function A_TGC()
  if KG_bz4 == "开" then
    gg.toast("🔜正在获取 斗篷🕊")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      dppy = {}
      dppy[1] = {}
      dppy[1].address = address_clos + 8
      dppy[1].flags = 4
      KG_bz4 = "关"
    else
      gg.toast("获取人物斗篷失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  dppy[1].value = 2219120716
  gg.setValues(dppy)
  gg.toast("TGC 蓝斗篷✔穿戴成功")
end

function A_bz4()
  FX = "A_bz4"
  local dp_list = {}
  do
    do
      for _FORV_4_ = 1, #dp_id[bz_idx] do
        dp_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. dp_id[bz_idx][_FORV_4_][2]
      end
    end
  end
  local dp_backIdx = #dp_list + 1
  local dp_Main6Idx = #dp_list + 2
  dp_list[dp_backIdx] = "1.🔙返回上一页"
  dp_list[dp_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(dp_list, nil, "---想要更换成什么斗篷？---")
  if menu == dp_backIdx then
    M_bz4()
  elseif menu == dp_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz4_1(dp_id[bz_idx][menu])
  end
end

function A_bz4_1(TARGET_ITEM)
  if KG_bz4 == "开" then
    gg.toast("🔜正在获取 斗篷🕊")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      dppy = {}
      dppy[1] = {}
      dppy[1].address = address_clos + 8
      dppy[1].flags = 4
      KG_bz4 = "关"
    else
      gg.toast("获取人物斗篷失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  dppy[1].value = TARGET_ITEM[1]
  dppy[1].freeze = true
  gg.addListItems(dppy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

bs_id = {
  {-1593950895, "灯笼🏮"},
  {992885953, "板凳💺"},
  {3580839943, "秋千❤"},
  {3779226149, "篝火🔥"},
  {3634028466, "花伞🌂"},
  {2574095143, "雨伞☔"},
  {3269660804, "吉他🎻"},
  {
    2352004821,
    "尤克里里🎸"
  },
  {396560731, "笛子🎶"},
  {1237767078, "排萧🎺"},
  {
    1889256860,
    "电子琴🎹"
  },
  {
    3275797515,
    "大钢琴🎼"
  },
  {
    3280753494,
    "烟花棒🎆"
  },
  {4246711693, "摇瑟"},
  {4196378836, "大瑟"},
  {900914909, "钢鼓"},
  {2671000446, "竖琴"},
  {2003040587, "双边鼓"},
  {399957901, "板琴"},
  {1064146256, "屁琴"},
  {1021011859, "号角🎷"},
  {
    2186944737,
    "先祖罐子"
  },
  {
    2041015009,
    "先祖水壶"
  },
  {
    776794517,
    "先祖长矛"
  },
  {
    2035109393,
    "啥都没有🈚"
  }
}
function M_bz5()
  FX = "M_bz5"
  local bs_list = {}
  do
    do
      for _FORV_4_ = 1, #bs_id do
        bs_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. bs_id[_FORV_4_][2]
      end
    end
  end
  local bs_backIdx = #bs_list + 1
  local bs_Main6Idx = #bs_list + 2
  bs_list[bs_backIdx] = "🔙返回上一页"
  bs_list[bs_Main6Idx] = "💫返回主页"
  local menu = gg.choice(bs_list, nil, "---想要更换成什么背饰？---")
  if menu == bs_backIdx then
    M_gbzb()
  elseif menu == bs_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz5_1(bs_id[menu])
  end
end

function A_bz5_1(TARGET_ITEM)
  if KG_bz5 == "开" then
    gg.toast("🔜正在获取 背饰🎸")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      bspy = {}
      bspy[1] = {}
      bspy[1].address = address_clos + 36
      bspy[1].flags = 4
      KG_bz5 = "关"
    else
      gg.toast("获取人物背饰失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  bspy[1].value = TARGET_ITEM[1]
  bspy[1].freeze = true
  gg.addListItems(bspy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

ts_id = {
  {3680499229, "无"},
  {343022577, "红耳机"},
  {
    299998503,
    "1周年帽子"
  },
  {
    -408332940,
    "魔法季耳坠"
  }
}
function M_bz6()
  FX = "M_bz6"
  local ts_list = {}
  do
    do
      for _FORV_4_ = 1, #ts_id do
        ts_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. ts_id[_FORV_4_][2]
      end
    end
  end
  local ts_backIdx = #ts_list + 1
  local ts_Main6Idx = #ts_list + 2
  ts_list[ts_backIdx] = "1.🔙返回上一页"
  ts_list[ts_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(ts_list, nil, "---想要更换成什么头饰？---")
  if menu == ts_backIdx then
    M_gbzb()
  elseif menu == ts_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz6_1(ts_id[menu])
  end
end

function A_bz6_1(TARGET_ITEM)
  if KG_bz6 == "开" then
    gg.toast("🔜正在获取 头饰👶🏻")
    if KG_bz0 == "开" then
      getClothes()
    end
    if KG_bz0 == "关" then
      mspy = {}
      mspy[1] = {}
      mspy[1].address = address_clos + 28
      mspy[1].flags = 4
      KG_bz6 = "关"
    else
      gg.toast("获取人物头饰失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  mspy[1].value = TARGET_ITEM[1]
  mspy[1].freeze = true
  gg.addListItems(mspy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

xl_id = {
  {
    2348358260,
    "感恩季项链"
  },
  {
    1117786973,
    "追光季项链"
  },
  {
    1962184054,
    "归属季项链"
  },
  {
    3594119491,
    "凛冬季项链"
  },
  {
    3076646648,
    "魔法季项链"
  },
  {
    268594609,
    "圣岛季项链"
  },
  {
    1539087887,
    "圣岛季领结"
  }
}
function M_bz7()
  FX = "M_bz7"
  local xl_list = {}
  do
    do
      for _FORV_4_ = 1, #xl_id do
        xl_list[_FORV_4_] = tostring(_FORV_4_) .. ". " .. xl_id[_FORV_4_][2]
      end
    end
  end
  local xl_backIdx = #xl_list + 1
  local xl_Main6Idx = #xl_list + 2
  xl_list[xl_backIdx] = "1.🔙返回上一页"
  xl_list[xl_Main6Idx] = "2.💫返回主页"
  local menu = gg.choice(xl_list, nil, "---想要更换成什么项链？---")
  if menu == xl_backIdx then
    M_gbzb()
  elseif menu == xl_Main6Idx then
    home()
  elseif menu ~= nil then
    A_bz7_1(xl_id[menu])
  end
end

function A_bz7_1(TARGET_ITEM)
  if KG_bz7 == "开" then
    gg.toast("🔜正在获取 项链⭕")
    if KG_bz0 == "关" then
      xlpy = {}
      xlpy[1] = {}
      xlpy[1].address = address_clos + 20
      xlpy[1].flags = 4
      KG_bz7 = "关"
    else
      gg.toast("获取人物项链失败❌，请重试或重启游戏")
      gg.sleep(1000)
      return 0
    end
  end
  xlpy[1].value = TARGET_ITEM[1]
  xlpy[1].freeze = true
  gg.addListItems(xlpy)
  if KG_bz == "开" then
    gg.toast(TARGET_ITEM[2] .. "✔穿戴成功")
  end
end

function M_bz8()
  KG_bz = "关"
  local r_type_1 = math.random(1, 2)
  local r_num_1 = math.random(1, #kz_id[r_type_1])
  A_bz1_1(kz_id[r_type_1][r_num_1])
  local r_type_2 = math.random(1, 7)
  local r_num_2 = math.random(1, #mj_id[r_type_2])
  A_bz2_1(mj_id[r_type_2][r_num_2])
  local r_type_3 = math.random(1, 8)
  local r_num_3 = math.random(1, #fx_id[r_type_3])
  A_bz3_1(fx_id[r_type_3][r_num_3])
  local r_type_4 = math.random(1, 7)
  local r_num_4 = math.random(1, #dp_id[r_type_4])
  A_bz4_1(dp_id[r_type_4][r_num_4])
  local r_num_5 = math.random(1, #bs_id)
  A_bz5_1(bs_id[r_num_5])
  local r_num_6 = math.random(1, #ts_id)
  A_bz6_1(ts_id[r_num_6])
  local r_num_7 = math.random(1, #xl_id)
  A_bz7_1(xl_id[r_num_7])
  KG_bz = "开"
end

function M_bz9()
  local sleep_bz = gg.prompt({
    "请输入变装间隔时间，默认5秒"
  }, {
    [1] = "5"
  }, {
    [1] = "number"
  })
  if sleep_bz == nil then
    return 0
  elseif sleep_bz[1] == "" then
    sleep_bz = 5
  else
    sleep_bz = sleep_bz[1]
  end
  gg.toast("换装时间到\n\n变装时间间隔【" .. sleep_bz .. "】秒")
  M_bz8()
  local times = 0
  while true do
    if times == sleep_bz then
      M_bz8()
      times = 0
    else
      gg.sleep(1000)
      times = times + 1
    end
    if gg.isVisible(true) then
      break
    end
  end
end

function A_hfzb()
  if KG_bz1 == "关" then
    kzpy[1].freeze = false
    gg.addListItems(kzpy)
  end
  if KG_bz2 == "关" then
    mjpy[1].freeze = false
    gg.addListItems(mjpy)
  end
  if KG_bz3 == "关" then
    fxpy[1].freeze = false
    gg.addListItems(fxpy)
  end
  if KG_bz4 == "关" then
    dppy[1].freeze = false
    gg.addListItems(dppy)
  end
  if KG_bz5 == "关" then
    bspy[1].freeze = false
    gg.addListItems(bspy)
  end
  if KG_bz6 == "关" then
    mspy[1].freeze = false
    gg.addListItems(mspy)
  end
  if KG_bz7 == "关" then
    xlpy[1].freeze = false
    gg.addListItems(xlpy)
  end
  gg.toast("全部装扮已恢复，进入其他地图后即可刷新")
end

function sleep(x)
gg.sleep(x)
end
function A_rycs_1(csm)
  if KG_cs ~= "开" then
    return false
  end
  local tmp0 = gg.getValues(dthx)
  do
    do
      for _FORV_5_ = 1, #rycs_id do
        if tmp0[1].value == rycs_id[_FORV_5_][2] then
          if _FORV_5_ == csm then
            gg.toast("你已在【" .. rycs_id[_FORV_5_][3] .. "】,无需传送")
            return false
          elseif _FORV_5_ == 36 then
            gg.toast("伊甸献祭时，不支持任意门")
            A_bfy()
            return false
          elseif _FORV_5_ == 37 or _FORV_5_ == 38 or _FORV_5_ == 39 then
            rycs_idx = rycs_id[csm][2]
            rycs_yd = true
            if csm == 1 then
              csm = 40
            end
          else
            rycs_idx = rycs_id[csm][2]
            rycs_yd = false
          end
        end
      end
    end
  end
  local tmp = {}
  local tmp1 = {}
  do
    do
      for _FORV_7_ = 1, 24 do
        tmp[_FORV_7_] = 0
        tmp[_FORV_7_] = string.byte(rycs_id[csm][1], _FORV_7_, _FORV_7_)
        if tmp[_FORV_7_] == nil then
          tmp[_FORV_7_] = 0
        end
        tmp1[_FORV_7_] = {}
        tmp1[_FORV_7_].address = csdz + _FORV_7_ - 1
        tmp1[_FORV_7_].flags = gg.TYPE_BYTE
        tmp1[_FORV_7_].value = tmp[_FORV_7_]
        gg.setValues(tmp1)
      end
    end
  end
  return true
end

function A_rycs_2()
  if rycs_yd == true then
    gg.toast("已设置好传送，请打开设置，手动回遇境，即可到达目的地")
    repeat
      gg.sleep(1000)
      local tmp0 = gg.getValues(dthx)
      if gg.isVisible(true) then
        gg.setVisible(false)
        gg.alert("已设置好传送，请打开设置，手动回遇境，即可到达目的地")
      end
    until tmp0[1].value == rycs_idx
  else
    if KG_jspt == "关" then
      A_xggy(0)
      gg.setSpeed(50)
      gg.sleep(1000)
      A_xggy(Num_xggy)
      gg.setSpeed(50)
    else
      A_xggy(0)
      gg.sleep(5000)
      A_xggy(Num_xggy)
    end
    gg.sleep(400)
    if KG_jspt == "关" then
      gg.setSpeed(1)
    end
  end
  gg.sleep(1200)
  if rycs_idx ~= -815180717 then
    A_rycs_1(1)
  end
end




DT()
dian()
--[[function button()
--if fe("/sdcard/button.mp3") == true then
--gg.playMusic("/sdcard/button.mp3")
--else 
gg.downloadFile( "http://49.234.215.120:88/button.mp3","/sdcard/button.mp3")
gg.toast("加载资源中")
button()
--end
end

function xjbh()
if fe("/sdcard/jbhua.amr") == true then
gg.toast("为什么你要点进来？")
gg.playMusic("/sdcard/jbhua.amr")
gg.alert("恭喜你\n这是战歌\n也是给你们的配乐（如果感到身体不适，请联系我修改）")
else 
gg.downloadFile( "http://attachment.0sm.com/node0/2020/10/85F7D9D7F16AC347-7819eb3b9bcb28b9.mp3","/sdcard/jbhua.amr")
gg.toast("加载资源中")
xjbh()
end
end

function dmg()
if fe("/sdcard/dmg.m4a") == true then
gg.playMusic("/sdcard/dmg.m4a")
else 
gg.downloadFile( "http://f4.mc.0sm.com/2020/10/85F7D9EC4B3F9C6E-4729392cbdd87929.mp4","/sdcard/dmg.m4a")
gg.toast("加载资源中")
dmg()
end
end
function zjd()
if fe("/sdcard/zjd.m4a") == true then
gg.playMusic("/sdcard/zjd.m4a")
else 
gg.downloadFile( "http://f4.mc.0sm.com/2020/10/85F7D9F6F2CE6373-378119891b488d2d.mp4","/sdcard/zjd.m4a")
gg.toast("加载中")
zjd()
end
end
function err()
if fe("/sdcard/err.mp3") == true then
gg.playMusic("/sdcard/err.mp3")
else 
gg.downloadFile( "http://f4.mc.0sm.com/2020/10/85F7DA0025783C13-f774e348c69f2968.mp4","/sdcard/err.mp3")
gg.toast("加载资源中")
err()
end
end
function mus()
if fe("/sdcard/moon.mp3") == true then
gg.playMusic("/sdcard/moon.mp3")
else 
gg.downloadFile( "http://f4.mc.0sm.com/2020/10/85F7DA0025783C13-f774e348c69f2968.mp4","/sdcard/moon.mp3")
gg.toast("第一次加载需要下载资源包请耐心等候")
mus()
end
end
--]]
function get_MSJ(x)
lzdz = jq[1].address - 48
  msj1={} mzb1={} mzb2={} mzb3={} mzb4={}
  for i =1, 22 do
    msj1[i]={}
    msj1[i].address=lzdz - x-76+i*4
    msj1[i].flags=gg.TYPE_DWORD
  end
  for i =1,3 do
    mzb1[i]={}
    mzb1[i].address=lzdz - x-196+80+i*4
    mzb1[i].flags=gg.TYPE_FLOAT
  end
  for i =1,3 do
    mzb2[i]={}
    mzb2[i].address=lzdz - x-196+80+224+i*4
    mzb2[i].flags=gg.TYPE_FLOAT
  end
  for i =1,3 do
    mzb3[i]={}
    mzb3[i].address=lzdz - x-196+80+448+i*4
    mzb3[i].flags=gg.TYPE_FLOAT
  end
  for i =1,3 do
    mzb4[i]={}
    mzb4[i].address=lzdz - x-196+80+672+i*4
    mzb4[i].flags=gg.TYPE_FLOAT
  end
end

function set_msj(msj)
  for i =1,22 do
    msj1[i].value = msj[i]
  end
  gg.setValues(msj1)
  gg.addListItems(msj1)
end

function Chuansong(ks, md)
  gg.clearResults()
  YF_Search(ks,gg.TYPE_BYTE, false, gg.SIGN_EQUAL,0x7000000000, "0x" .. fw)
  gg.refineNumber(ks,gg.TYPE_BYTE,false, gg.SIGN_EQUAL,0x7000000000)
  gg.getResults(gg.getResultCount())
  gg.editAll(md,gg.TYPE_BYTE)
  gg.clearResults()
end

function set_mzb1()
  tmp = {}
for i = 1, 3 do
tmp[#tmp+1] = {}
tmp[#tmp].address = zer.address + i * 4
tmp[#tmp].flags = gg.TYPE_FLOAT
tmp=gg.getValues(tmp)
mzb1[i].value = tmp[#tmp].value
end
  gg.setValues(mzb1)
end
function set_mzb2()
  tmp = {}
for i = 1, 3 do
tmp[#tmp+1] = {}
tmp[#tmp].address = zer.address + i * 4
tmp[#tmp].flags = gg.TYPE_FLOAT
tmp=gg.getValues(tmp)
mzb2[i].value = tmp[#tmp].value
end
  gg.setValues(mzb2)
end

function set_mzb3()
  tmp = {}
for i = 1, 3 do
tmp[#tmp+1] = {}
tmp[#tmp].address = zer.address + i * 4
tmp[#tmp].flags = gg.TYPE_FLOAT
tmp=gg.getValues(tmp)
mzb3[i].value = tmp[#tmp].value
end
  gg.setValues(mzb3)
end

function set_mzb4()
  tmp = {}
for i = 1, 3 do
tmp[#tmp+1] = {}
tmp[#tmp].address = zer.address + i * 4
tmp[#tmp].flags = gg.TYPE_FLOAT
tmp=gg.getValues(tmp)
mzb4[i].value = tmp[#tmp].value
end
  gg.setValues(mzb4)
end

function set_mzb1freeze(xyz)
  for i=1,3 do
    mzb1[i].freeze=true
    mzb1[i].value=xyz[i]
  end
  gg.setValues(mzb1) gg.addListItems(mzb1) gg.sleep(500)
  gg.removeListItems(mzb1)
end

function set_mzb2freeze(xyz)
  for i=1,3 do
    mzb2[i].freeze=true
    mzb2[i].value=xyz[i]
  end
  gg.setValues(mzb2) gg.addListItems(mzb2) gg.sleep(500)
  gg.removeListItems(mzb2)
end

function set_mzb3freeze(xyz)
  for i=1,3 do
    mzb3[i].freeze=true
    mzb3[i].value=xyz[i]
  end
  gg.setValues(mzb3) gg.addListItems(mzb3) gg.sleep(500)
  gg.removeListItems(mzb3)
end

function set_mzb4freeze(xyz)
  for i=1,3 do
    mzb4[i].freeze=true
    mzb4[i].value=xyz[i]
  end
  gg.setValues(mzb4) gg.addListItems(mzb4) gg.sleep(500)
  gg.removeListItems(mzb4)
end

get_MSJ(dsb9)

while true do
    if gg.isVisible(true) then
    --button()
     gg.setVisible(false)
     if FX2 ~= "jiasu" then 
    if(FX == "") then 
    elseif FX == "test" then test()
    elseif FX == "home" then home()
    elseif FX == "SD" then SD() 
    elseif FX == "delay" then delay() 
    elseif FX == "hlhs" then hlhs() 
    elseif FX == "dzcd1" then dzcd1() 
    elseif FX == "dzcd2" then dzcd2() 
    elseif FX == "dzcd3" then dzcd3() 
    elseif FX == "dzcd4" then dzcd4() 
    elseif FX == "dzcd5" then dzcd5() 
    elseif FX == "dzcd6" then dzcd6() 
    elseif FX == "YY" then YY() 
    elseif FX == "YL" then YL() 
    elseif FX == "YJXZ" then YJXZ() 
    elseif FX == "XG" then XG() 
    elseif FX == "MT" then MT() 
    elseif FX == "JG" then JG() 
    elseif FX == "BFY" then BFY() 
    elseif FX == "KZ" then KZ() 
    elseif FX2 == "home" then FX = home()
    elseif FX == "DP" then DP() 
    elseif FX == "TF" then TF() 
    elseif FX == "MJ" then MJ() 
    elseif FX == "TS" then TS() 
    elseif FX == "BS" then BS() 
    elseif FX == "RYMXL" then RYMXL()
    elseif FX == "rp" then rolePositionMenu()
    elseif FX == "huanzhuang" then huanzhuang() 
    elseif FX == "day" then day() 
    elseif FX == "CWXZ" then CWXZ() 
    elseif FX == "ZGQ" then ZGQ() 
    elseif FX == "Main0" then Main0() 
    elseif FX == "XJ" then XJ() 
    elseif FX == "A_bfy" then A_bfy() 
elseif FX == "bfy2" then bfy2() 
elseif FX == "bfy3" then bfy3() 
elseif FX == "bfy4" then bfy4() 
elseif FX == "bfy5" then bfy5() 
elseif FX == "bfy6" then bfy6() 
    elseif FX == "M_rycs" then M_rycs() 
    elseif FX == "body" then bodyMagic() 
    elseif FX == "kzmb" then kzmb() 
    elseif FX == "bfy" then bfy()
    elseif FX == "cd" then cd()
    elseif FX == "dzcd1" then dzcd1()
    elseif FX2 == "back" then back()
    elseif(FX == "G1") then A()
    elseif(FX == "G666") then GY()
	elseif(FX == "G2") then B()
	elseif(FX == "G3") then C()
	elseif(FX == "G4") then D()
	elseif(FX == "G5") then E()
	elseif(FX == "G6") then F()
	elseif(FX == "G7") then G() 
     else 
load(FX .. "()")()
end
else
jiasu(1) gg.setVisible(false) FX2 = nil gg.toast("已取消变速") end
      
   end
end