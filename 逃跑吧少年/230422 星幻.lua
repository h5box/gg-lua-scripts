--我给你发源码，不是叫你二改的，偷功能可以，但是不能二改
--qq：2893822492，🤔🤔🤔🤔🤔🤔🤔🤔🤔🤔——by.星幻
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end 
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("Not Found")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("Not Found")
		end
	end
end

function Main0()
menu1 = gg.multiChoice({
	 "必开功能",
     "基础功能",
     "直装功能",
     "娱乐功能", 
	 "退出脚本",
}, nil, os.date("作者：by星幻\n某些废物天天想着二改和倒卖"))
if menu1 == nil then else
if menu1[1] == true then NB() end
if menu1[2] == true then GGB() end
if menu1[3] == true then XH1() end
if menu1[4] == true then XH2() end
if menu1[5] == true then XH3() end
if menu1[6] == true then os.exit() end
end
FX1=0
end




function NB()
menu2 = gg.multiChoice({
	"超级防闪",
	"杀检测[闪退]",
	"防封2[建议]",
	"返回主页",
}, nil, os.date("搞你个鸡巴呀！\n当前时间:%Y年%m月%d日%H时%M分%S秒"))
if menu2 == nil then else
if menu2[1] == true then a1() end
if menu2[2] == true then a2() end
if menu2[3] == true then a3() end
if menu2[4] == true then Main0() end
end
GLWW=-1
end
 
function a1()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
gg.toast("开启成功")
gg.clearResults()
	 end
	 
function a2()
  gg.toast("a内存防封一")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 4
      }
    })
  end
  gg.toast("a内存防封二")
  gg.toast("正在检测中")
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("16进制防封开启.....................")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启.............???...???..............获取文件成功..")
  gg.toast("防封开启...........获取封号文件...............")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启百分之50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("内存检测删除成功")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("内存检测删除成功")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("..开启检测函数成功...")
  gg.toast("删除代码检测中")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.toast("100%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("1000%")
  gg.toast("正在保护中")
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("1.023021112")
  gg.toast("1.023021112")
  gg.toast("1.020103996")
  gg.toast("1.834850219")
end

 function a3()
   gg.clearResults()
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("防封开启％10.")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启％20")
  gg.toast("防封开启％40")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测中％50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("内存防封％60")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("内存检测正在删除％90")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("％100防封开启成功！")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
end

 


function GGB()
menu3 = gg.multiChoice({
	"移动开物",
	"变身攻击",
	"自动开锁",
	"超级跳高",
	"变身时间",
	"无视夹子",
	"人物透视",
	"武器秒杀",
	"稳定锁金",
	"追捕救人",
	"追捕破盾",
	"返回主页",
}, nil, os.date(" 功能开多了会闪退\n当前时间:%Y年%m月%d日%H时%M分%S秒"))
if menu3 == nil then else
if menu3[1] == true then b1() end
if menu3[2] == true then b2() end
if menu3[3] == true then b3() end
if menu3[4] == true then b4() end
if menu3[5] == true then b5() end
if menu3[6] == true then b6() end
if menu3[7] == true then b7() end
if menu3[8] == true then b8() end
if menu3[9] == true then b9() end
if menu3[10] == true then b10() end
if menu3[11] == true then b11() end
if menu3[12] == true then Main0() end
end
GLWW=-1
end

 function b1()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'跳跃开物')
end

function b2()
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end

function b3()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc5ebfc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb64},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc5f10c},})
end

function b4()
nc_offset(getso("libil2cpp.so"),{{-476052415,4,0x1b13f50},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13f54},})
end     

function b5()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x3c706ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3c706b0},})
end
 
function b6()
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end

function b7()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end

function b8()
fastsearch
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end
  
function b9()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f3daec},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3daf0},})
end     

 
 function b10()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdc1ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdc1b0},})
end
 
function b11()
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
end


function XH1()
menu4 = gg.multiChoice({
	"解锁模式",
	"锁子弹",
	"无间隔",
	"角色全皮",
	"无后座",
	"射程+穿墙",
	"全角色",
	"道具全皮",
	"独家不死",
	"道具无冷",
	"锁道具",
	"道具满级",
	"强制开门",
	"杀队友",
	"返回主页",
}, nil, os.date("搞了两年半！\n当前时间:%Y年%m月%d日%H时%M分%S秒"))
if menu4 == nil then else
if menu4[1] == true then c1() end
if menu4[2] == true then c2() end
if menu4[3] == true then c3() end
if menu4[4] == true then c4() end
if menu4[5] == true then c5() end
if menu4[6] == true then c6() end
if menu4[7] == true then c7() end
if menu4[8] == true then c8() end
if menu4[9] == true then c9() end
if menu4[9] == true then c9() end
if menu4[10] == true then c10() end
if menu4[11] == true then c11() end
if menu4[12] == true then c12() end
if menu4[13] == true then c13() end
if menu4[14] == true then c14() end
if menu4[15] == true then Main0() end
end
GLWW=-1
end

function c1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end     


function c2()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end    

function c3()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function c4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end

function c5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end     

function c6()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})
end

function c7()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},})
end

function c8()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end     

function c9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("人物无敌")
	 gg.clearResults()
end

function c10()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end

function c11()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end

function c12()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end     

function c13()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function c14()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("杀队友")
	 gg.clearResults()
end


function XH2()
menu6 = gg.multiChoice({
	"更改段位",
	"观战控人",
	"解锁风格",
	"无视buff",
	"全角色技能免费",
	"全角色技能无冷",
	"返回主页",
}, nil, os.date("🐔你太美\n当前时间:%Y年%m月%d日%H时%M分%S秒"))
if menu6 == nil then else
if menu6[1] == true then e1() end
if menu6[2] == true then e2() end
if menu6[3] == true then e3() end
if menu6[4] == true then e4() end
if menu6[5] == true then e5() end
if menu6[6] == true then e6() end
if menu6[7] == true then Main0() end
end
GLWW=-1
end


function e1()
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end

function e2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20beb74},})
end

function e3()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b51c68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51c68},})
end

function e4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54742062e26;-9.38577544e22;-3.69079137e20;-1.50171254e24;-3.68935198e20;-3.68935198e20;-9.39921227e20;-7.16145955e24;-1.30951038e25;-1.30684047e21;-9.4914291e20;-9.40125702e22;-3.70087803e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30951038e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("无视buff")
	 gg.clearResults()
end

function e5()
fastsearch
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false}})
end

function e6()
fastsearch
({
{-0.00048828369,16,16384},
{-382907280,-360,4},
{-494030832,-356,4},
},
{{-476053503,-360,4},
{-516948194,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
end





print("星幻自用，禁止二改！")
gg.showUiButton()
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end