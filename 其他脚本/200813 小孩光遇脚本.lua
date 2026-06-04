--[[
开源脚本仅供学习，请勿倒卖或做商业用途，后果引起的法律责任与本人无关！！！！！
by 小孩
]]--

local resultCount = 0
local result = {}
local zero = {}
local datas = {}
local data = {}
local datax = {}
local tmp = {}
local energy = {}
local energy_status = false
local mFreeze1 = false
local mFreeze2 = false
local xyz = {}
local IDs = 0
local VERSION = "V1.0"
local LAST_MODIFY_TIME = "小孩_2020-07-05"

--跑图--
function TeleportA(xzy)
    FX1 = nil
    x = xzy[1]
    z = xzy[2]
    y = xzy[3]
    local t = {}
    t[1] = {}
    t[1].address = xdz
    -- t[1].flags = 16
	t[1].flags = gg.TYPE_FLOAT
    t[1].value = x
    t[2] = {}
    t[2].address = zdz
    -- t[2].flags = 16
	t[2].flags = gg.TYPE_FLOAT
    t[2].value = z
    t[3] = {}
    t[3].address = ydz
    -- t[3].flags = 16
	t[3].flags = gg.TYPE_FLOAT
    t[3].value = y
    gg.setValues(t)
end


--晨岛
local map1 = {}
local gdCount1 = 0
--晨岛光翼坐标
map1[1] = {}
map1[1][1] = {117.49571990967,2.14908671379,310.85702514648}
map1[1][2] = {52.27350234985,34.10396575928,369.94454956055}
map1[1][3] = {281.88159179688,2.22269964218,188.94566345215}
map1[1][4] = {107.01401519775,24.28181648254,48.49942779541}
map1[1][5] = {414.75527954102,94.82239532471,-6.64422082901}

--云野
local map2 = {}
local gdCount2 = 0
--云野光翼坐标
map2[1] = {}
map2[1][1] = {125.85375213623;148.40830993652;-27.92642974854}
map2[1][2] = {106.17017364502;174.64419555664;26.75840377808}
map2[1][3] = {80.72425842285;160.55029296875;62.6540222168}
map2[1][4] = {-181.66676330566;198.77201843262;24.45411109924}
map2[1][5] = {-214.19834899902;179.97434997559;152.96817016602}
map2[1][6] = {27.35553359985;184.77207946777;278.81311035156}
map2[1][7] = {101.27056884766;181.26351928711;257.22482299805}
map2[1][8] = {66.5023727417;186.11111450195;376.91757202148}
map2[1][9] = {-19.33318710327;58.91622924805;27.37077331543}
map2[1][10] = {137.93855285645;266.59573364258;478.81997680664}
map2[1][11] = {146.46572875977;304.30899047852;537.32904052734}
map2[1][12] = {290.13339233398;200.00207519531;178.79241943359}
map2[1][13] = {348.18463134766;197.88877868652;111.59169006348}


--雨林
local map3 = {}
local gdCount3 = 0
--雨林光翼坐标
map3[1] = {}
map3[1][1] = {2.13302397728;114.62173461914;-257.74035644531}
map3[1][2] = {27.27236175537;98.32046508789;-117.29396820068}
map3[1][3] = {24.22917366028;127.21475982666;-64.9084777832}
map3[1][4] = {80.36828613281;129.32788085938;-12.00599861145}
map3[1][5] = {66.24879455566;99.87233734131;45.67139816284}
map3[1][6] = {104.18180084229;111.61292266846;-111.34979248047}
map3[1][7] = {-44.52954101562;103.50183868408;-18.99171257019}
map3[1][8] = {-20.89667510986;96.37775421143;23.3992023468}
map3[1][9] = {26.23741531372;78.26388549805;-416.63986206055}
map3[1][10] = {9.87658882141;137.31497192383;-213.43074035645}
map3[1][11] = {-65.82335662842;208.65147399902;-202.29818725586}
map3[1][12] = {-68.73613739014;210.23043823242;-295.44775390625}
map3[1][13] = {-22.06701850891;141.86561584473;273.64901733398}
map3[1][14] = {-50.04446792603;149.48065185547;58.78827285767}
map3[1][15] = {117.94002532959;178.50863647461;157.54365539551}
map3[1][16] = {32.15616989136;111.79304504395;58.49747848511}

--霞谷
local map4 = {}
local gdCount4 = 0
--霞谷光翼坐标
map4[1] = {}
map4[1][1] = {-151.72290039062;263.46438598633;-149.25282287598}
map4[1][2] = {165.65696716309;41.44527816772;-540.47784423828}
map4[1][3] = {198.90878295898;48.46887969971;-517.16070556641}
map4[1][4] = {84.07421112061;558.27600097656;-55.4520111084}
map4[1][5] = {115.62945556641;502.25119018555;-38.70120239258}
map4[1][6] = {-396.41152954102;1163.42333984375;47.16595458984}
map4[1][7] = {67.96189880371;1053.02795410156;-28.98570251465}
map4[1][8] = {40.33958816528;185.05342102051;73.34194946289}
map4[1][9] = {-15.27802371979;174.11576843262;-269.24426269531}
map4[1][10] = {-26.86660766602;150.21412658691;-164.30195617676}
map4[1][11] = {195.60102844238;630.80944824219;-421.51663208008}

--暮土
local map5 = {}
local gdCount5 = 0
--暮土光翼坐标
map5[1] = {}
map5[1][1] = {97.71636962891;45.43786621094;367.83847045898}
map5[1][2] = {28.56142425537;0.46644225717;342.9616394043}
map5[1][3] = {83.6520690918;92.54627990723;185.87461853027}
map5[1][4] = {67.59731292725;98.88622283936;120.99040222168}
map5[1][5] = {91.61358642578;77.99578094482;-55.83699417114}
map5[1][6] = {-12.41992855072;64.98532104492;-91.22381591797}
map5[1][7] = {15.34145832062;83.91411590576;-139.27084350586}
map5[1][8] = {28.08928108215;71.11177062988;-222.40245056152}
map5[1][9] = {-22.72827911377;32.4552230835;527.53137207031}
map5[1][10] = {-165.06657409668;1.70548176765;369.33148193359}
map5[1][11] = {-293.2229309082;3.22860455513;335.40350341797}
map5[1][12] = {-205.31097412109;130.31030273438;-160.40197753906}
map5[1][13] = {-238.10581970215;86.01084136963;-394.50183105469}
map5[1][14] = {4.47481489182;202.44841003418;32.13433074951}
map5[1][15] = {112.59884643555;141.60664367676;385.39486694336}
map5[1][16] = {305.02200317383;121.83631896973;559.58319091797}
--暮土蜡烛
map5[2] = {}
--暮土新图蘑菇[地下]  318.0;98.0;330.5:9
map5[2][1] = {317.73278808594,97.43845367432,330.6784362793}
--暮土新图蘑菇[天上]
map5[2][2] = {403.5309753418,143.61166381836,431.58117675781}

--禁阁
local map6 = {}
local gdCount6 = 0
--禁阁光翼坐标
map6[1] = {}
map6[1][1] = {20.43115615845;46.78216171265;-67.82855987549}
map6[1][2] = {55.50157928467;540.70965576172;-33.98306274414}
map6[1][3] = {78.94891357422;554.41192626953;-41.106590271}
map6[1][4] = {33.94861221313;160.77113342285;-41.95145797729}
map6[1][5] = {48.09609985352;228.29138183594;8.88393878937}
map6[1][6] = {-39.25553512573;140.63380432129;9.49728012085}
map6[1][7] = {13.063741683959961;183.3470916748047;41.981956481933594} --东街猫儿添加 2020-06-23
map6[1][8] = {-0.35613438487;303.56619262695;58.07741546631}

--伊甸
local map7 = {}
map7[1] = {17.47722816467;84.40920257568;53.04370117188}
map7[2] = {11.57853412628;84.40986633301;50.03913879395}
map7[3] = {14.22674560547;84.41098022461;44.50893783569}
map7[4] = {9.37716960907;84.41114044189;40.08240127563}
map7[5] = {10.35514259338;84.64693450928;35.56671524048}
map7[6] = {0.02939226851;84.40908813477;31.76880645752}
map7[7] = {-4.90946245193;84.40901184082;37.90031051636}
map7[8] = {-10.17144775391;84.39978790283;24.05815696716}
map7[9] = {-0.93241721392;84.41564178467;28.0644493103}
map7[10] = {1.25366163254;84.69709014893;24.01716804504}
map7[11] = {3.21035528183;84.4252243042;20.39665603638}
map7[12] = {3.96351885796;84.41110992432;17.2168006897}
map7[13] = {12.97935581207;84.84692382812;21.35214614868}
map7[14] = {16.84648323059;87.61931610107;20.07873916626}
map7[15] = {-17.98000717163;84.39649200439;10.90452861786}
map7[16] = {-6.16879796982;84.55124664307;7.2030749321}
map7[17] = {7.0953669548;85.68338012695;5.2389588356}
map7[18] = {-6.1073923111;84.55041503906;7.21422481537}
map7[19] = {-18.68507194519;84.41075897217;0.88019108772}
map7[20] = {-18.79967689514;84.41102600098;-14.84161758423}
map7[21] = {11.22110652924;84.69986724854;-14.70520019531} --21/22
map7[22] = {5.12035131454;84.41073608398;-24.96887779236} --23
map7[23] = {-1.0535929203;84.53310394287;-24.63909912109} --24
map7[24] = {-4.54042053223;84.5344543457;-39.81888198853} --25
map7[25] = {-23.44972419739;84.41054534912;-37.3302230835} --26
map7[26] = {-11.13687324524;84.41089630127;-58.69815826416} --27/28
map7[27] = {5.60161495209;84.62409210205;-50.61780929565} --29/30/31
map7[28] = {15.19728565216;84.41095733643;-53.21044540405} --32/33
map7[29] = {-12.55942440033;84.41078186035;-74.78955078125} --34/35
map7[30] = {-2.24200773239;84.4107131958;-81.82543182373} --36
map7[31] = {8.11030101776;84.41075897217;-91.22216796875} --37
map7[32] = {18.90334701538;84.803855896;-91.00427246094} --38/39
map7[33] = {0.68279963732;84.41007995605;-98.69891357422} --40
map7[34] = {0.58642220497;84.53990936279;-103.48983001709} --41
map7[35] = {3.32940912247;84.46800231934;-119.61359405518} --42/43
map7[36] = {-5.17984676361;84.41087341309;-123.36358642578} --44
map7[37] = {3.15082359314;84.49433898926;-129.69897460938} --45
map7[38] = {-0.97932183743;84.54180145264;-139.57426452637} --46
map7[39] = {16.32238388062;84.7544631958;-139.42512512207} --47
map7[40] = {-2.05016970634;84.50484466553;-148.01948547363} --48
map7[41] = {15.9657201767;84.41068267822;-153.97187805176} --49
map7[42] = {10.58512973785;84.58918762207;-156.13168334961} --50/51
map7[43] = {-4.30059909821;84.41063690186;-163.17515563965} --52
map7[44] = {0.1790844053;84.55098724365;-174.20867919922} --53
map7[45] = {8.68859958649;84.50891113281;-175.93884277344} --54
map7[46] = {-3.25369668007;84.41101837158;-181.52870178223} --55
map7[47] = {2.40995311737;84.42552947998;-185.79586791992} --56
map7[48] = {-0.09431309253;84.47621917725;-190.13664245605} --57
map7[49] = {7.70384645462;84.4935836792;-191.10147094727} --58
map7[50] = {0.1339070648;84.4103012085;-207.03192138672} --59
map7[51] = {-2.2868347168;84.77942657471;-211.03533935547} --60
map7[52] = {8.61554431915;83.96537017822;-245.39093017578} --61
map7[53] = {0.634745121;83.96576690674;-251.7315826416} --62
map7[54] = {8.61939811707;83.82987213135;-271.44711303711} --63

function Main()
  T_CODE = ""
  menu = gg.choice({
  "  1. 🔔点蜡烛&炸花[开/关](遇镜中开启,避免失效)",
  "  2. 🚀自动/手动跑图",
  "  3. 🌟收集光翼(进图开)",
  "  4. 👳先祖重置瞬移(遇镜开)",
  "  5. 🎸换装-变更背后物品",
  "  6. 👕更换或取消斗篷(使用斗篷代码/无翼)",
  "  7. 🔥点蜡烛/爆花/吸收烛光(单独操作)",
  "  8. 🐣彩蛋瞬移(进相关图后开)",
  "9.🍓重新体验复刻先祖(可获得动作)",
  "10.❓其他功能",
  "  0. 🏃退出脚本"
 }, nil, "跑图等功能整合稳定版 " .. VERSION .. "   --小孩")
  
  if menu == 1 then 
	-- DLZZH()
	lightCandles()
	lightFlowers()
  elseif menu == 2 then 
	Sec()
  elseif menu == 3 then 
	collecteWingsOfLlight() 
  elseif menu == 4 then 
	L() 
  elseif menu == 5 then 
	K() 
  elseif menu == 6 then 
	switchCape() 
  elseif menu == 7 then 
	J() 
  elseif menu == 8 then 
	H() 
  elseif menu == 9 then 
	unlockHair()
  elseif menu == 10 then 
	unlockTravelSpirit()
  elseif menu == 11 then 
	I() 
  elseif menu == 12 then 
	Exit()
  end
  
end

---------------------------2020-07-02 东街猫儿添加

local adllSpirit = {}

-- 晨岛先祖
adllSpirit[1] = {}
adllSpirit[1][1] = {code=414084241,name="指向"}
adllSpirit[1][2] = {code=3666569351,name="拒绝"}
adllSpirit[1][3] = {code=4249009249,name="跟随我"}
-- 云野先祖
adllSpirit[2] = {}
adllSpirit[2][1] = {code=1466879858,name="哈欠"}
adllSpirit[2][2] = {code=64338276,name="蝴蝶"}
adllSpirit[2][3] = {code=2540775602,name="鸟叫"}
adllSpirit[2][4] = {code=1568825369,name="举蜡烛"}
adllSpirit[2][5] = {code=2851084244,name="挥手"}
adllSpirit[2][6] = {code=3063270590,name="大笑"}
adllSpirit[2][7] = {code=1060667581,name="拍手"}
adllSpirit[2][8] = {code=3881128326,name="擦汗"}
-- 雨林先祖
adllSpirit[3] = {}
adllSpirit[3][1] = {code=4182042971,name="哭泣"}
adllSpirit[3][2] = {code=419578801,name="烦躁"}
adllSpirit[3][3] = {code=1156673674,name="磕头"}
adllSpirit[3][4] = {code=2381086145,name="生气"}
adllSpirit[3][5] = {code=1464190897,name="捉迷藏"}
adllSpirit[3][6] = {code=3576552037,name="害羞"}
adllSpirit[3][7] = {code=3930381583,name="颤抖"}
adllSpirit[3][8] = {code=1728053750,name="鱼叫"}
-- 霞谷先祖
adllSpirit[4] = {}
adllSpirit[4][1] = {code=3307167098,name="叉腰"}
adllSpirit[4][2] = {code=1942389483,name="鞠躬"}
adllSpirit[4][3] = {code=3809307521,name="后空翻"}
adllSpirit[4][4] = {code=2395108553,name="抱手"}
adllSpirit[4][5] = {code=2859830090,name="喝彩"}
adllSpirit[4][6] = {code=416637648,name="倒立"}
adllSpirit[4][7] = {code=3768849824,name="鲲叫"}
-- 暮土先祖
adllSpirit[5] = {}
adllSpirit[5][1] = {code=3630339793,name="晕倒"}
adllSpirit[5][2] = {code=2886532097,name="叼的站姿"}
adllSpirit[5][3] = {code=4155738138,name="劈叉站姿"}
adllSpirit[5][4] = {code=1999438929,name="敬礼"}
adllSpirit[5][5] = {code=1060292445,name="埋头"}
adllSpirit[5][6] = {code=2159324587,name="眺望"}
-- 禁阁先祖
adllSpirit[6] = {}
adllSpirit[6][1] = {code=2797886853,name="打坐"}
adllSpirit[6][2] = {code=2041153668,name="推"}
adllSpirit[6][3] = {code=2017461200,name="鲲叫"}
adllSpirit[6][4] = {code=3576140497,name="斯文站姿"}
adllSpirit[6][5] = {code=3594096657,name="祈祷"}


-- 解锁毕业头发
function unlockHair()
	T_CODE = "U1"
	local map_menu = gg.choice({
	  "1. 晨岛",
	  "2. 云野",
	  "3. 雨林",
	  "4. 霞谷",
	  "5. 暮土",
	  "6. 禁阁",
	  "将未解锁的动作全部替换为已解锁完的动作后，",
	  "可至暴风眼星盘中点对应图问号召唤毕业头兑换",
	  "注：以上操作后如需恢复，需重启游戏",
	  "0. 返回主页"
	 }, nil, "请选择需要替换的动作所在图")
	 
	if(map_menu == 1) then
		switchReplaceSpirit(adllSpirit[1])
	elseif(map_menu == 2) then
		switchReplaceSpirit(adllSpirit[2])
	elseif(map_menu == 3) then
		switchReplaceSpirit(adllSpirit[3])
	elseif(map_menu == 4) then
		switchReplaceSpirit(adllSpirit[4])
	elseif(map_menu == 5) then
		switchReplaceSpirit(adllSpirit[5])
	elseif(map_menu == 6) then
		switchReplaceSpirit(adllSpirit[6])
	elseif(map_menu == 7 or map_menu == 8 or map_menu == 9 ) then
		unlockHair()
	elseif(map_menu == 10) then
		HOME()
	end
end





-- 选择需要替换的动作
function switchReplaceSpirit(spirits)
	
	local choiceData = {}
	local spLen = #spirits
	for i=1,spLen do
		choiceData[i] = tostring(i) .. ". " .. spirits[i].name
	end
	
	local backIdx = spLen + 1
	choiceData[backIdx] = "0. 取消并返回上页"
	
	local spirit_menu = gg.multiChoice(choiceData, nil, "请选择未解锁完的先祖动作")
	
	if(spirit_menu == nil) then
		gg.toast("操作已取消！")
		return
	elseif(spirit_menu[backIdx] ~= nil) then
		unlockHair()
	else
		
		local switchedSpirit = {}
		for i, v in pairs(spirit_menu) do
			
			if(v) then
				table.insert(switchedSpirit,spirits[i].code)
			end
			
		end
		
		switchFinishedSpirit(switchedSpirit)
		
	end
	
	
end



-- 选择已解锁完成的先祖
function switchFinishedSpirit(replaceSpirits)

	local choiceData = {}
	local spLen = #adllSpirit
	local k = 1
	local kMap = {}
	for i=1,spLen do
		if(i == 1) then
			choiceData[k] = "-------晨岛先祖(请不要勾选此项)------"
		elseif(i == 2) then                                     
			choiceData[k] = "-------云野先祖(请不要勾选此项)------"
		elseif(i == 3) then                                     
			choiceData[k] = "-------雨林先祖(请不要勾选此项)------"
		elseif(i == 4) then                                     
			choiceData[k] = "-------霞谷先祖(请不要勾选此项)------"
		elseif(i == 5) then                                     
			choiceData[k] = "-------暮土先祖(请不要勾选此项)------"
		elseif(i == 6) then                                     
			choiceData[k] = "-------禁阁先祖(请不要勾选此项)------"
		end
		k = k + 1
		
		for ii=1,#adllSpirit[i] do 
			local strK = tostring(k)
			choiceData[k] = "  " .. tostring(ii) .. ". " .. adllSpirit[i][ii].name
			local key = "P" .. strK
			kMap[key] = adllSpirit[i][ii].code
			k = k + 1
		end
		
		
	end
	
	local backIdx = k + 1
	choiceData[backIdx] = "0. 取消并返回上页"
	
	local spirit_menu = gg.multiChoice(choiceData, nil, "请选择已解锁完的先祖动作")
	
	if(spirit_menu == nil) then
		gg.toast("操作已取消！")
		return
	elseif(spirit_menu[backIdx]) then
		unlockHair()
	else
		
		local switchedSpirit = {}
		for i, v in pairs(spirit_menu) do
			
			if(v) then
				local key = "P" .. i
				if(kMap[key] ~= nil) then
					table.insert(switchedSpirit,kMap[key])
				end
				
			end
			
		end
		
		if(#switchedSpirit <= 0) then
			gg.toast("请不要只选择提示项！")
			return
		end
		
		gg.setRanges(gg.REGION_C_ALLOC)
		
		for q,val in pairs(replaceSpirits) do
			local lockData = {}
			gg.clearResults()
			gg.searchNumber(tostring(val),gg.TYPE_QWORD,false)
			local resCount = gg.getResultCount()
			local res = gg.getResults(resCount)
			
			--获取选择的先祖
			local sedSpirit = switchedSpirit[q]
			--如果选择的未解锁动作大于选择的已解锁动作，那么将后面多余的未解锁动作用第一个已解锁动作替换
			if(sedSpirit == nil) then
				sedSpirit = switchedSpirit[1]
			end
			
			
			if(resCount ~= 0) then
				-- 都选择2
				res[2].flags = gg.TYPE_QWORD
				res[2].value = sedSpirit
				res[2].freeze = true
				table.insert(lockData,res[2])
				
				--云野 鸟叫
				--雨林 哭泣 鱼叫
				--峡谷 鲲叫
				--暮土 晕倒
				--禁阁 鲲叫
				if(val == 2540775602 or val == 1728053750 or val == 4182042971 or val == 3768849824 or val == 3630339793 or val == 2017461200) then
					res[1].flags = gg.TYPE_QWORD
					res[1].value = sedSpirit
					res[1].freeze = true
					table.insert(lockData,res[1])
					-- gg.alert(type(val) .. "---------" .. tostring(val))
				end
				
				if(resCount == 10) then
					-- 选择2，9
					res[9].flags = gg.TYPE_QWORD
					res[9].value = sedSpirit
					res[9].freeze = true
					table.insert(lockData,res[9])
				elseif(resCount == 9) then
					-- 选择2，3，8
					
					res[3].flags = gg.TYPE_QWORD
					res[3].value = sedSpirit
					res[3].freeze = true
					
					res[8].flags = gg.TYPE_QWORD
					res[8].value = sedSpirit
					res[8].freeze = true
					
					table.insert(lockData,res[3])
					table.insert(lockData,res[8])
				elseif(resCount == 8) then
					-- 选择2，3，7
					
					res[3].flags = gg.TYPE_QWORD
					res[3].value = sedSpirit
					res[3].freeze = true
					
					res[7].flags = gg.TYPE_QWORD
					res[7].value = sedSpirit
					res[7].freeze = true
					
					
					table.insert(lockData,res[3])
					table.insert(lockData,res[7])
				elseif(resCount == 7) then
					-- 选择2，3，6
					
					res[3].flags = gg.TYPE_QWORD
					res[3].value = sedSpirit
					res[3].freeze = true
					
					res[6].flags = gg.TYPE_QWORD
					res[6].value = sedSpirit
					res[6].freeze = true
					table.insert(lockData,res[3])
					table.insert(lockData,res[6])
				elseif(resCount == 6) then
					-- 选择2，3，6
					
					res[3].flags = gg.TYPE_QWORD
					res[3].value = sedSpirit
					res[3].freeze = true
					
					res[6].flags = gg.TYPE_QWORD
					res[6].value = sedSpirit
					res[6].freeze = true
					
					
					table.insert(lockData,res[3])
					table.insert(lockData,res[6])
					
				end
				
				
			end
			
			-- gg.editAll(sedSpirit, gg.TYPE_QWORD)
			gg.addListItems(lockData)
		end
		
		-- 
		gg.clearResults()
		gg.toast("操作完成！")
		
		
		
	end

end


---------------------------2020-07-025小孩添加


local allTravelSpirit = {}

-- 感恩节先祖
allTravelSpirit[1] = {}
allTravelSpirit[1][1] = {code=3270784407,name="狐狸先祖"}
allTravelSpirit[1][2] = {code=3637782525,name="跳跃先祖"}
allTravelSpirit[1][3] = {code=1972794995,name="敬礼先祖"}
allTravelSpirit[1][4] = {code=3811807379,name="抱拳先祖"}
allTravelSpirit[1][5] = {code=3416766502,name="功夫先祖"}
allTravelSpirit[1][6] = {code=1841001535,name="举手先祖"}
allTravelSpirit[1][7] = {code=1414283474,name="毕业先祖"}

-- 追光季
allTravelSpirit[2] = {}
allTravelSpirit[2][1] = {code=1880348208,name="背背先祖"}
allTravelSpirit[2][2] = {code=638820386 ,name="雨伞先祖"}
allTravelSpirit[2][3] = {code=3143328229,name="转圈先祖"}
allTravelSpirit[2][4] = {code=1372682856,name="击掌先祖"}
allTravelSpirit[2][5] = {code=1543189191,name="花瓣先祖"}
allTravelSpirit[2][6] = {code=3828216322,name="嘘~先祖"}
allTravelSpirit[2][7] = {code=1431061093,name="毕业先祖"}

-- 归属季
allTravelSpirit[3] = {}
allTravelSpirit[3][1] = {code=1375735318,name="蹦迪先祖"}
allTravelSpirit[3][2] = {code=627603397 ,name="指挥先祖"}
allTravelSpirit[3][3] = {code=3921932554,name="礼花先祖"}
allTravelSpirit[3][4] = {code=3613216684,name="吉他先祖"}
allTravelSpirit[3][5] = {code=560443823 ,name="摸头先祖"}
allTravelSpirit[3][6] = {code=391633837 ,name="背手先祖"}
allTravelSpirit[3][7] = {code=1313617760,name="毕业先祖"}


-- 凛冬季
allTravelSpirit[4] = {}
allTravelSpirit[4][1] = {code=4162136220,name="跳舞先祖"}
allTravelSpirit[4][2] = {code=3379075209,name="杂技先祖"}
allTravelSpirit[4][3] = {code=2093468251,name="疑惑先祖"}
allTravelSpirit[4][4] = {code=3723728503,name="飞吻先祖"}
allTravelSpirit[4][5] = {code=669089267 ,name="邀请先祖"}
allTravelSpirit[4][6] = {code=1801995405,name="臣服先祖"}
allTravelSpirit[4][7] = {code=1330395379,name="毕业先祖"}


-- 魔法季
allTravelSpirit[5] = {}
allTravelSpirit[5][1] = {code=967947706 ,name="点头先祖"}
allTravelSpirit[5][2] = {code=2120182059,name="惊吓先祖"}
allTravelSpirit[5][3] = {code=1251050323,name="锤人先祖"}
allTravelSpirit[5][4] = {code=2248102924,name="疑问先祖"}
allTravelSpirit[5][5] = {code=235271310 ,name="学螃蟹先祖"}
allTravelSpirit[5][6] = {code=651520861 ,name="瞌睡先祖"}




--------------- 小孩2020-07-05添加

local selectedSpirit = {}
function unlockTravelSpirit()
	T_CODE = "UTS"
	local choiceData = {}
	local spLen = #allTravelSpirit
	local k = 1
	local kMap = {}
	for i=1,spLen do
		if(i == 1) then
			choiceData[k] = "-------感恩节先祖(请不要勾选此项)------"
		elseif(i == 2) then                                     
			choiceData[k] = "-------追光季先祖(请不要勾选此项)------"
		elseif(i == 3) then                                     
			choiceData[k] = "-------归属季先祖(请不要勾选此项)------"
		elseif(i == 4) then                                     
			choiceData[k] = "-------凛冬季先祖(请不要勾选此项)------"
		elseif(i == 5) then                                     
			choiceData[k] = "-------魔法季先祖(请不要勾选此项)------"
		end
		k = k + 1
		
		for ii=1,#allTravelSpirit[i] do 
			local strK = tostring(k)
			choiceData[k] = "  " .. tostring(ii) .. ". " .. allTravelSpirit[i][ii].name
			local key = "P" .. strK
			kMap[key] = {code=allTravelSpirit[i][ii].code ,name=allTravelSpirit[i][ii].name}
			k = k + 1
		end
		
		
	end
	
	local backIdx = k + 1
	choiceData[backIdx] = "0. 取消并返回主页"
	
	local spirit_menu = gg.multiChoice(choiceData, selectedSpirit, "请选择需要重新体验的复刻先祖.")
	
	if(spirit_menu == nil) then
		return
	elseif(spirit_menu[backIdx]) then
		HOME()
	else
		
		local switchedSpirit = {}
		for i, v in pairs(spirit_menu) do
			
			if(v) then
				local key = "P" .. i
				if(kMap[key] ~= nil) then
					local sp = kMap[key]
					sp.k = i
					table.insert(switchedSpirit,sp)
				end
			end
			
		end
		
		if(#switchedSpirit <= 0) then
			gg.toast("无可用选择项！")
			return
		end
		
		local notFoundSpriti = ""
		
		gg.setRanges(gg.REGION_C_ALLOC)
		for q,val in pairs(switchedSpirit) do
			-- repeat 配合做continue
			repeat
				if(selectedSpirit[val.k]) then
					break
				end
			
				gg.clearResults()
				gg.searchNumber(tostring(val.code),gg.TYPE_QWORD,false)
				local resCount = gg.getResultCount()
				if(resCount > 0 ) then
					local res = gg.getResults(resCount)
					res[3].value = 0
					res[3].freeze = true
					local result = {[1]=res[3]}
					gg.addListItems(result)
					
					selectedSpirit[val.k] = true
					
				else
					-- 未找到数据
					notFoundSpriti = notFoundSpriti .. "编号：" .. tostring(val.code) .. "，" .. val.name .. "\n"
				end
				
			until true
		end
		
		if(#notFoundSpriti > 0) then
			gg.alert("以下先祖未操作成功：\n" .. notFoundSpriti)
		else
			gg.toast("操作完成！")
		end
		
	
	end

end


--------------- 小孩2020-07-05添加

local isRenewalCope = false
local copeAddr = {}
function switchCape()
	if(not isRenewalCope) then
        local cxcx = gg.prompt({"请输入斗篷代码，默认为TGC斗篷，输入0则为无翼（好友可见为无翼）"},{[1]="2219120716"},{[1]="number"})
	    if cxcx == nil then
			HOME()
			return
	    else
			cxcx = cxcx[1]
	    end
		
		local senergy = getSenergyAddress()
        if(senergy ~= nil or #senergy > 0) then
			local zwdppy={}
			zwdppy[1] = {}
			zwdppy[1].address = senergy[1].address + 13276
			zwdppy[1].flags = gg.TYPE_DWORD
			zwdppy[1].value = cxcx
			zwdppy[1].freeze = true
			copeAddr = zwdppy
			gg.addListItems(zwdppy)
			gg.clearResults()
			isRenewalCope = true
			gg.toast("斗篷修改成功！")
		else
			gg.toast("斗篷修改失败！原因是获取能量地址失败，请重启脚本再试~")
		end
		
	else
		isRenewalCope = false
		-- gg.addListItems(zwdppy)
		gg.removeListItems(copeAddr)
		gg.clearResults()
		gg.toast("斗篷已取消修改！")
    end
end


function collecteWingsOfLlight()
	T_CODE = "G14"
	ym_menu = gg.choice({
	  "1. 晨岛 - 瞬移",
	  "2. 云野 - 瞬移",
	  "3. 雨林 - 瞬移",
	  "4. 霞谷 - 瞬移",
	  "5. 暮土 - 瞬移",
	  "6. 禁阁 - 瞬移",
	  "7. 暴风眼 - 瞬移",
	  "0. 返回上一页"
	 }, nil, "收集光翼 - 进图开")
	 
	if ym_menu == 1 then A() end
	if ym_menu == 2 then B() end
	if ym_menu == 3 then C() end
	if ym_menu == 4 then D() end
	if ym_menu == 5 then E() end
	if ym_menu == 6 then F() end
	if ym_menu == 7 then G() end
	if ym_menu == 8 then HOME() end

end


--点/吸蜡烛
function J()
	T_CODE = "G10"
	menu1 = gg.multiChoice({
	"1. 点蜡烛",
	"2. 爆花",
	"3. 吸烛火",
	"0. 返回主页"
	}, nil, "点/吸蜡烛爆花")
	if menu1 == nil then else
	if menu1[1] == true then lightCandles() end
	if menu1[2] == true then lightFlowers() end
	if menu1[3] == true then 
		absorbCandlesLight()
		-- j2() 
	end
	if menu1[4] == true then HOME() end end
end


--晨岛
function A()
  T_CODE = "G1"
  menu1 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "晨岛 - 瞬移")
  
  if(menu1 == nil) then 
  elseif(menu1 == 1) then a1() 
  elseif(menu1 == 2) then a2() 
  elseif(menu1 == 3) then a3() 
  elseif(menu1 == 4) then a4() 
  elseif(menu1 == 5) then collecteWingsOfLlight() end
end

--晨岛光翼[上一个]
function a1()
	if gdCount1 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount1 = gdCount1 - 1
		xyz = map1[1][gdCount1]
		TeleportA(xyz)
		gg.toast("瞬移晨岛光翼 [" .. gdCount1 .. "] 完成")
	end
end

--晨岛光翼[下一个]
function a2()
	if gdCount1 == 5 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount1 = gdCount1 + 1
		xyz = map1[1][gdCount1]
		TeleportA(xyz)
		gg.toast("瞬移晨岛光翼 [" .. gdCount1 .. "] 完成")
	end
end

--预留位置
function a3()
	gg.alert("预留位置")
end

--预留位置
function a4()
	gg.alert("预留位置")
end

--云野
function B()
  T_CODE = "G2"
  menu2 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "云野 - 瞬移")
  
  if(menu2 == nil) then 
  elseif(menu2 == 1) then b1() 
  elseif(menu2 == 2) then b2() 
  elseif(menu2 == 3) then b3() 
  elseif(menu2 == 4) then b4() 
  elseif(menu2 == 5) then collecteWingsOfLlight() end
  
end

--云野光翼[上一个]
function b1()
	if gdCount2 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount2 = gdCount2 - 1
		xyz = map2[1][gdCount2]
		TeleportA(xyz)
		gg.toast("瞬移云野光翼 [" .. gdCount2 .. "] 完成")
	end
end

local map2_right_in = 0 --右侧隐藏图入口
local map2_right_out = 0 --右侧隐藏图出口
local map2_eight_in = 0 --八人图入口
local map2_eight_out = 0 --八人图出口
local map2_left_in = 0 --左侧隐藏图入口

--云野光翼[下一个]
function b2()
	if gdCount2 == 13 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount2 = gdCount2 + 1
		if gdCount2 == 4 and map2_right_in ~= 1 then
			TeleportA({-9.7918510437;165.37245178223;-5.74012947083})
			gg.toast("已瞬移至 [云野右侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_right_in = 1
			return 0
		end
		if gdCount2 == 6 and map2_right_out ~= 1 then
			TeleportA({-104.2032699585;184.77220153809;172.62110900879})
			gg.toast("已瞬移至 [云野右侧隐藏图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_right_out = 1
			return 0
		end
		if gdCount2 == 9 and map2_eight_in ~= 1 then
			TeleportA({-48.94686126709;181.93348693848;322.91494750977})
			gg.toast("已瞬移至 [云野八人图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_in = 1
			return 0
		end
		if gdCount2 == 10 and map2_eight_out ~= 1 then
			TeleportA({31.82697105408;42.34567260742;0.20620749891})
			gg.toast("已瞬移至 [云野八人图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_out = 1
			return 0
		end
		if gdCount2 == 12 and map2_left_in ~= 1 then
			TeleportA({157.29043579102;200.01664733887;226.44515991211})
			gg.toast("已瞬移至 [云野左侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_left_in = 1
			return 0
		end
		xyz = map2[1][gdCount2]
		TeleportA(xyz)
		gg.toast("瞬移云野光翼 [" .. gdCount2 .. "] 完成")
	end
end

--预留位置
function b3()
	gg.alert("预留位置")
end

--预留位置
function b4()
	gg.alert("预留位置")
end

local map3_main1 = 0 --主地图入口1
local map3_right1 = 0 --右侧隐藏图入口
local map3_right2 = 0 --管道入口
local map3_right3 = 0 --管道出口
local map3_right4 = 0 --右侧隐藏图出口
local map3_main2 = 0 --主地图入口2
--雨林
function C()
  T_CODE = "G3"
  menu3 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "雨林 - 瞬移")
  
  if(menu3 == nil) then 
  elseif(menu3 == 1) then c1() 
  elseif(menu3 == 2) then c2() 
  elseif(menu3 == 3) then c3() 
  elseif(menu3 == 4) then c4() 
  elseif(menu3 == 5) then collecteWingsOfLlight() end
  
end

--雨林光翼[上一个]
function c1()
	if gdCount3 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount3 = gdCount3 - 1
		xyz = map3[1][gdCount3]
		TeleportA(xyz)
		gg.toast("瞬移雨林光翼 [" .. gdCount3 .. "] 完成")
	end
end

--雨林光翼[下一个]
function c2()
	if gdCount3 == 16 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount3 = gdCount3 + 1
		if gdCount3 == 3 and map3_main1 ~=1 then
			TeleportA({28.37304496765;98.56972503662;-113.70115661621})
			gg.toast("已瞬移至 [雨林主地图入口1] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_main1 = 1
			return 0
		end
		if gdCount3 == 7 and map3_right1 ~=1 then
			TeleportA({6.97025537491;111.52809143066;-61.51174545288})
			gg.toast("已瞬移至 [雨林右侧隐藏图入口] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_right1 = 1
			return 0
		end
		if gdCount3 == 9 and map3_right2 ~=1 then
			TeleportA({54.73643493652;72.44387817383;43.95704650879})
			gg.toast("已瞬移至 [雨林隐藏图管道入口] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_right2 = 1
			return 0
		end
		if gdCount3 == 13 then
			if map3_right3 ~=1 then
				TeleportA({-64.44444274902;210.3430480957;-285.0309753418})
				gg.toast("已瞬移至 [雨林隐藏图管道出口] ，请手动进入")
				gdCount3 = gdCount3 - 1
				map3_right3 = 1
				return 0
			end
			if map3_right4 ~=1 then
				TeleportA({16.11902427673;88.39250183105;122.1976776123})
				gg.toast("已瞬移至 [雨林右侧隐藏图出口] ，请手动进入")
				gdCount3 = gdCount3 - 1
				map3_right4 = 1
				return 0
			end
		end
		if gdCount3 == 16 and map3_main2 ~=1 then
			TeleportA({-18.18656158447;182.64154052734;402.62902832031})
			gg.toast("已瞬移至 [雨林主地图入口2] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_main2 = 1
			return 0
		end
		xyz = map3[1][gdCount3]
		TeleportA(xyz)
		gg.toast("瞬移雨林光翼 [" .. gdCount3 .. "] 完成")
	end
end

--预留位置
function c3()
	gg.alert("预留位置")
end

--预留位置
function c4()
	gg.alert("预留位置")
end

--霞谷
function D()
  T_CODE = "G4"
  menu4 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "霞谷 - 瞬移")
  
  
  if(menu4 == nil) then 
  elseif(menu4 == 1) then d1() 
  elseif(menu4 == 2) then d2() 
  elseif(menu4 == 3) then d3() 
  elseif(menu4 == 4) then d4() 
  elseif(menu4 == 5) then collecteWingsOfLlight() end
  
  
end

--霞谷光翼[上一个]
function d1()
	if gdCount4 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount4 = gdCount4 - 1
		xyz = map4[1][gdCount4]
		TeleportA(xyz)
		gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成")
	end
end

local map4_sky1_in = 0 --天空赛道一图入口
local map4_sky1_out = 0 --天空赛道一图出口
local map4_sky2_in = 0 --天空赛道二图入口
local map4_sky2_out = 0 --天空赛道二图出口
local map4_gd11 = 0
--霞谷光翼[下一个]
function d2()
	if gdCount4 == 11 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount4 = gdCount4 + 1
		if gdCount4 == 4 and map4_sky1_in ~=1 then
			TeleportA({205.1636505127;56.70009994507;-601.97637939453})
			gg.toast("已瞬移至 [霞谷天空赛道一图入口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky1_in = 1
			return 0
		end
		if gdCount4 == 6 and map4_sky1_out ~=1 then
			TeleportA({206.68609619141;491.52456665039;-205.85830688477})
			gg.toast("已瞬移至 [霞谷天空赛道一图出口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky1_out = 1
			return 0
		end
		if gdCount4 == 8 and map4_sky2_in ~=1 then
			TeleportA({149.81336975098;1008.25744628906;-100.43368530273})
			gg.toast("已瞬移至 [霞谷天空赛道二图入口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky2_in = 1
			return 0
		end
		if gdCount4 == 10 and map4_sky2_out ~=1 then
			TeleportA({60.94206619263;137.83598327637;-292.20584106445})
			gg.toast("已瞬移至 [霞谷天空赛道二图出口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky2_out = 1
			return 0
		end
		if gdCount4 == 11 then
			TeleportA({290.24816894531;39.45797729492;-527.30267333984})
			gg.toast("已瞬移至 [霞谷地面赛道入口] ，五秒后继续")
			gg.sleep(5000)
			TeleportA(map4[1][11])
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成")
			return 0
		end
		xyz = map4[1][gdCount4]
		TeleportA(xyz)
		if gdCount4 == 10 then
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成，请重新进入霞谷")
		else
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成")
		end
	end
end

--预留位置
function d3()
	gg.alert("预留位置")
end

--预留位置
function d4()
	gg.alert("预留位置")
end

--暮土
function E()
  T_CODE = "G5"
  menu5 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "3. 新图光翼 - 1",
    "4. 新图光翼 - 2",
    "5. 采蘑菇[地下]",
    "6. 采蘑菇[空中]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "暮土 - 瞬移")
  
  
  if(menu5 == nil) then 
  elseif(menu5 == 1) then e1()
  elseif(menu5 == 2) then e2()
  elseif(menu5 == 3) then e3()
  elseif(menu5 == 4) then e4()
  elseif(menu5 == 5) then e5()
  elseif(menu5 == 6) then e6()
  elseif(menu5 == 7) then e7()
  elseif(menu5 == 8) then e8()
  elseif(menu5 == 9) then collecteWingsOfLlight() end
  
  
end

--暮土光翼[上一个]
function e1()
	if gdCount5 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount5 = gdCount5 - 1
		xyz = map5[1][gdCount5]
		TeleportA(xyz)
		gg.toast("瞬移暮土光翼 [" .. gdCount5 .. "] 完成")
	end
end

local map5_main1_out = 0 --一图出口
local map5_sunkenship_in = 0 --沉船入口
local map5_sunkenship_out = 0 --沉船出口
local map5_yilong_out = 0 --一龙图出口
--暮土光翼[下一个]
function e2()
	if gdCount5 == 14 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount5 = gdCount5 + 1
		if gdCount5 == 3 and map5_main1_out ~=1 then
			TeleportA({-91.85065460205;11.72455883026;158.18051147461})
			gg.toast("已瞬移至 [暮土一图出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_main1_out = 1
			return 0
		end
		if gdCount5 == 9 and map5_sunkenship_in ~=1 then
			TeleportA({189.26557922363;69.34118652344;-73.92557525635})
			gg.toast("已瞬移至 [暮土沉船入口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_sunkenship_in = 1
			return 0
		end
		if gdCount5 == 12 and map5_sunkenship_out ~=1 then
			TeleportA({-343.83453369141;35.31271362305;386.27169799805})
			gg.toast("已瞬移至 [暮土沉船出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_sunkenship_out = 1
			return 0
		end
		if gdCount5 == 14 and map5_yilong_out ~=1 then
			TeleportA({-285.36907958984;92.04296112061;-400.69836425781})
			gg.toast("已瞬移至 [暮土一龙图出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_yilong_out = 1
			return 0
		end
		xyz = map5[1][gdCount5]
		TeleportA(xyz)
		if gdCount5 == 14 then
			gg.toast("瞬移暮土光翼 [" .. gdCount5 .. "] 完成，请手动进入暮土新图")
		else
			gg.toast("瞬移暮土光翼 [" .. gdCount5 .. "] 完成")
		end
	end
end

--暮土新图光翼1
function e3()
	xyz = map5[1][15]
	TeleportA(xyz)
	gg.toast("瞬移暮土 [新图光翼 - 1] 完成")
end

--暮土新图光翼2
function e4()
	xyz = map5[1][16]
	TeleportA(xyz)
	gg.toast("瞬移暮土 [新图光翼 - 2] 完成")
end

--暮土蘑菇[地下]
function e5()
	if mFreeze2 == false then
		xyz = map5[2][1]
		tmp = {}
		if mFreeze1 == true then
			mFreeze1 = false
		else
			mFreeze1 = true
		end
		for i=1, 3 do
			tmp[#tmp+1] = {}
			tmp[#tmp].address = zero.address + i * 4
			tmp[#tmp].flags = gg.TYPE_FLOAT
			tmp[#tmp].value = xyz[i]
			--if i == 2 then
			tmp[#tmp].freeze = mFreeze1
			--end
		end
		gg.setValues(tmp)
		if mFreeze1 == true then
			gg.addListItems(tmp)
			gg.toast("瞬移暮土蘑菇 [地下] 完成，坐标已冻结，解冻请再次执行")
		else
			gg.removeListItems(tmp)
			gg.toast("瞬移暮土蘑菇 [地下] 完成，坐标已解冻")
		end
	else
		gg.toast("请解除 暮土蘑菇[空中] 的坐标冻结后，再执行次功能")
	end
end

--暮土蘑菇[天上]
function e6()
	if mFreeze1 == false then
		xyz = map5[2][2]
		tmp = {}
		if mFreeze2 == true then
			mFreeze2 = false
		else
			mFreeze2 = true
		end
		for i=1, 3 do
			tmp[#tmp+1] = {}
			tmp[#tmp].address = zero.address + i * 4
			tmp[#tmp].flags = gg.TYPE_FLOAT
			tmp[#tmp].value = xyz[i]
			--if i == 2 then
			tmp[#tmp].freeze = mFreeze2
			--end
		end
		gg.setValues(tmp)
		if mFreeze2 == true then
			gg.addListItems(tmp)
			gg.toast("瞬移暮土蘑菇 [天上] 完成，坐标已冻结，解冻请再次执行")
		else
			gg.removeListItems(tmp)
			gg.toast("瞬移暮土蘑菇 [天上] 完成，坐标已解冻")
		end
	else
		gg.toast("请解除 暮土蘑菇[地下] 的坐标冻结后，再执行次功能")
	end
end

--预留位置
function e7()
	gg.alert("预留位置")
end

--预留位置
function e8()
	gg.alert("预留位置")
end

--禁阁
function F()
  T_CODE = "G6"
  menu6 = gg.choice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 点蜡烛",
	"4. 吸蜡烛",
    "0. 返回上页"
  }, nil, "禁阁 - 瞬移")
  
  if(menu6 == nil) then 
  elseif(menu6 == 1) then f1() 
  elseif(menu6 == 2) then f2() 
  elseif(menu6 == 3) then lightCandles() 		-- f3() 
  elseif(menu6 == 4) then absorbCandlesLight()  -- f4() 
  elseif(menu6 == 5) then collecteWingsOfLlight() end
end

--禁阁光翼[上一个]
function f1()
	if gdCount6 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount6 = gdCount6 - 1
		xyz = map6[1][gdCount6]
		TeleportA(xyz)
		gg.toast("瞬移禁阁光翼 [" .. gdCount6 .. "] 完成")
	end
end

local map6_double_in = 0 --双人图入口
local map6_double_out = 0 --双人图入口
--禁阁光翼[下一个]
function f2()
	if gdCount6 == 8 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount6 = gdCount6 + 1
		if gdCount6 == 2 and map6_double_in ~=1 then
			TeleportA({-40.40454483032;36.9967956543;-97.50639343262})
			gg.toast("已瞬移至 [禁阁双人图入口] ，请手动进入..")
			gdCount6 = gdCount6 - 1
			map6_double_in = 1
			return 0
		end
		if gdCount6 == 4 and map6_double_out ~=1 then
			TeleportA({39.8631439209;541.568359375;-15.89660263062})
			gg.toast("已瞬移至 [禁阁双人图出口] ，请手动出门..")
			gdCount6 = gdCount6 - 1
			map6_double_out = 1
			return 0
		end
		xyz = map6[1][gdCount6]
		TeleportA(xyz)
		gg.toast("瞬移禁阁光翼 [" .. gdCount6 .. "] 完成")
	end
end


--暴风眼
function G()
  T_CODE = "G7"
  menu7 = gg.choice({
    "1. 一图终点",
	"2. 二图终点洞口左下",
    "3. 二图终点洞口",
    "4. 自动伊甸",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上页"
  }, nil, "暴风眼 - 瞬移")
  
  if menu7 == nil then else
	  if menu7 == 1 then g1() end
	  if menu7 == 2 then g2Left() end
	  if menu7 == 3 then g2() end
	  if menu7 == 4 then g3() end
	  if menu7 == 5 then g4() end
	  if menu7 == 6 then g5() end
	  if menu7 == 7 then collecteWingsOfLlight() end 
  end
  
end

--暴风眼一图终点
function g1()
	TeleportA({-3.08880496025;196.74859619141;-21.45963668823})
	gg.toast("瞬移 [暴风眼 - 一图终点] 完成")
end

--暴风眼二图终点 洞口左下  
function g2Left()
	TeleportA({2.260443925857544;262.16070556640625;-236.75033569335938})
	gg.toast("瞬移 [暴风眼 - 二图终点洞口左下] 完成")
end

--暴风眼二图终点   
function g2()
	TeleportA({6.62452173233;265.95574951172;-244.71562194824})
	gg.toast("瞬移 [暴风眼 - 二图终点洞口] 完成")
end

--自动伊甸
function g3()
	freeze_time = gg.prompt({
		'请输入瞬移间隔时间，默认 [5000] 毫秒 (1000毫秒 = 1秒)'
	}, {
 		[1] = ""
 	}, {
 		[1] = 'number'
 	})
	if freeze_time == nil then
		freeze_time = 5000
	else
		freeze_time = freeze_time[1]
	end
	gg.toast("3秒后开始执行自动伊甸，瞬移时间间隔：[" .. freeze_time .. "] 毫秒")
	gg.sleep(3000)
	for i = 1, 54 do
		TeleportA(map7[i])
		gg.toast("瞬移伊甸 [" .. i .. "] 完成")
		gg.sleep(freeze_time)
	end
end

--预留位置
function g4()
	gg.alert("预留位置")
end

--预留位置
function g5()
	gg.alert("预留位置")
end

--彩蛋
function H()
  T_CODE = "G8"
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
	TeleportA({798.98095703125 ;0.22667610645;-0.33975163102})
	gg.toast("瞬移 [遇境 - 小黑屋] 完成")
end

--遇境观星台
function h2()
	TeleportA({1.07697141171;0.8221578598;-0.33868104219})
	gg.toast("瞬移 [遇境 - 观星台] 完成")
end
	
--晨岛CG图
function h3()
	TeleportA({118.10299682617;0.97198873758;-1733.97021484375})
	gg.toast("瞬移 [晨岛 - CG图] 完成")
end

--晨岛终点
function h4()
	TeleportA({156.29658508301;103.52576446533;-293.6558227539})
	gg.toast("瞬移 [晨岛 - 终点] 完成")
end

--晨岛彩虹桥
function h5()
	TeleportA({299.99719238281;413.04522705078;-297.63458251953})
	gg.toast("瞬移 [晨岛 - 彩虹桥] 完成")
end

--晨岛富士山
function h6()
	TeleportA({298.00839233398;750;-283.45837402644})
	gg.toast("瞬移 [晨岛 - 富士山] 完成")
end

--云野大草原
function h7()
	TeleportA({366.3053894043;208.29864501953;233.16668701172})
	gg.toast("瞬移 [云野 - 大草原] 完成")
end

--云野幽灵船
function h8()
	-- TeleportA({97.56925201416;174.57604980469;265.3330078125})
	TeleportA({97.30706787109375;174.2458953857422;265.5908203125})
	gg.toast("瞬移 [云野 - 幽灵船] 完成")
end

--云野孤岛
function h9()
	TeleportA({117.31034088135;0.84127157927;-1,733.96765136719})
	gg.toast("瞬移 [云野 - 孤岛] 完成")
end

--云野CG
function h10()
	TeleportA({-529.02185058594;8.60619068146;-213.8217010498})
	gg.toast("瞬移 [云野 - CG] 完成")
end

--云野终点
function h11()
	TeleportA({128.96328735352;254.88412475586;484.58071899414})
	gg.toast("瞬移 [云野 - 终点] 完成")
end

--雨林梅花桩
function h12()
	TeleportA({-31.72092056274;207.00308227539;-1.27488076687})
	gg.toast("瞬移 [雨林 - 梅花桩] 完成")
end

--雨林CG
function h13()
	TeleportA({4.90364980698;9.42964076996;506.48516845703})
	gg.toast("瞬移 [雨林 - CG] 完成")
end

--雨林终点
function h14()
	TeleportA({-18.18656158447;182.64154052734;402.62902832031})
	gg.toast("瞬移 [雨林 - 终点] 完成")
end

--雨林密室
function h15()
	TeleportA({-0.37094926834;105.59395247607;0.10513665527})
	gg.toast("瞬移 [雨林 - 密室] 完成")
end

--雨林锤子
function h16()
	TeleportA({6.57783555984;4.13195562363;509.4060367695})
	gg.toast("瞬移 [雨林 - CG] 完成")
end

--霞谷千鸟图
function h17()
	TeleportA({314.90731811523;173.38836669922;-783.63726806641})
	gg.toast("瞬移 [霞谷 - 千鸟图] 完成")
end

--墓土冰激凌
function h18()
	TeleportA({-84.72422790527;5047.2763671875;-842.01507568359})
	gg.toast("瞬移 [墓土 - 冰激凌] 完成")
end

--墓土终点
function h19()
	TeleportA({-288.00048828125;92.26410675049;-399.68026733398})
	gg.toast("瞬移 [墓土 - 终点] 完成")
end

--墓土CG
function h20()
	TeleportA({-416.08380126953;12.07369232178;411.0588684082})
	gg.toast("瞬移 [墓土 - CG] 完成")
end

--禁阁蜡像馆
function h21()
	TeleportA({0.36330926418;195.0870513916;8.39365291595})
	gg.toast("瞬移 [禁阁 - 蜡像馆] 完成")
end

--禁阁闪电岛
function h22()
	TeleportA({-0.96439945698;336.14559936523;64.37212371826})
	gg.toast("瞬移 [禁阁 - 闪电岛] 完成")
end

--禁阁日月岛
function h23()
	TeleportA({68.92450714111;240.40475463867;-185.50691223145})
	gg.toast("瞬移 [禁阁 - 日月岛] 完成")
end

--[[ 
--晨岛彩虹桥
function h1()
	TeleportA({299.99719238281;413.04522705078;-297.63458251953})
	gg.toast("瞬移 [晨岛 - 彩虹桥] 完成")
end

--云野大草原
function h2()
	TeleportA({366.3053894043;208.29864501953;233.16668701172})
	gg.toast("瞬移 [云野 - 大草原] 完成")
end

--云野孤岛
function h3()
	TeleportA({117.31034088135;0.84127157927;-1,733.96765136719})
	gg.toast("瞬移 [云野 - 孤岛] 完成")
end

--雨林梅花桩
function h4()
	TeleportA({-31.72092056274;207.00308227539;-1.27488076687})
	gg.toast("瞬移 [雨林 - 梅花桩] 完成")
end

--霞谷千鸟图
function h5()
	TeleportA({314.90731811523;173.38836669922;-783.63726806641})
	gg.toast("瞬移 [霞谷 - 千鸟图] 完成")
end

--霞谷凛冬先祖
function h6()
	xyz = {-100.32794952393;65.89157104492;-776.11804199219}
	tmp = {}
	if mFreeze3 == true then
		mFreeze3 = false
	else
		mFreeze3 = true
	end
	for i=1, 3 do
		tmp[#tmp+1] = {}
		tmp[#tmp].address = zero.address + i * 4
		tmp[#tmp].flags = gg.TYPE_FLOAT
		tmp[#tmp].value = xyz[i]
		--if i == 2 then
		tmp[#tmp].freeze = mFreeze3
		--end
	end
	gg.setValues(tmp)
	if mFreeze3 == true then
		gg.addListItems(tmp)
		gg.toast("瞬移霞谷 [凛冬先祖] 完成，坐标已冻结，解冻请再次执行")
	else
		gg.removeListItems(tmp)
		gg.toast("瞬移霞谷 [凛冬先祖] 完成，坐标已解冻")
	end
end

--禁阁蜡像馆
function h7()
	TeleportA({0.36330926418;195.0870513916;8.39365291595})
	gg.toast("瞬移 [禁阁 - 蜡像馆] 完成")
end

--禁阁闪电岛
function h8()
	TeleportA({-0.96439945698;336.14559936523;64.37212371826})
	gg.toast("瞬移 [禁阁 - 闪电岛] 完成")
end
]]

--其他功能
function I()
  T_CODE = "G9"
  menu9 = gg.choice({
    "1. 锁定能量[开/关]",
	"2. ⛔自爆光翼[开/关]",
	"3. 角色坐标相关功能",
	"4. 人物加速(开了似乎退出游戏才能恢复)",
	"5. 超级跳(开关似乎不太好用)",
    "6. 返回主页"
  }, nil, "其他 - 功能")
  
  if(menu9 == nil) then 
  elseif(menu9 == 1) then 
	boundles_senergy() 
  elseif(menu9 == 2) then 
	zbcb() 
  elseif(menu9 == 3) then 
	rolePositionMenu()
  elseif(menu9 == 4) then
	i5() 
  elseif(menu9 == 5) then
	superJump() 
  elseif(menu9 == 6) then
	HOME() 
  end
end

----------------------- 小孩添加 2020-06-30 Start

-- 坐标记录
local POSITION_RECORD = ""
-- 获取角色角色坐标
function rolePositionMenu()

	T_CODE = "P1"
	p_menu = gg.choice({
		"1. 添加当前坐标到记录",
		"2. 复制当前坐标到粘贴板",
		"3. 查看或修改坐标记录",
		"4. 复制坐标记录到粘贴板",
		"5. 清空坐标记录",
		"6. 角色瞬移(需输入当前图的{X;Z;Y}坐标)",
		"7. 复制当前角色X坐标内存地址",
		"0. 返回上页"
	}, nil, "角色坐标")
	  
	  if(p_menu == 1) then 
		local positionStr = currentPosition()
		
		if(POSITION_RECORD == "") then
			POSITION_RECORD = positionStr
		else
			POSITION_RECORD = POSITION_RECORD .. "\n" .. positionStr
		end
		
		gg.toast("坐标：" .. positionStr .. "，添加完成！")
	  elseif(p_menu == 2) then
		local positionStr = currentPosition()
		gg.copyText(positionStr, false)
		gg.toast("当前坐标已复制到粘贴板！")
	  elseif(p_menu == 3) then
		local positionPr = gg.prompt({"坐标记录"},{[1]=POSITION_RECORD},{[1]="text"})
	    if(positionPr == nil or #positionPr == 0) then
			rolePositionMenu()
	    else
			POSITION_RECORD = positionPr[1]
			gg.toast("坐标记录修改完成！")
	    end
	  elseif(p_menu == 4) then
		gg.copyText(POSITION_RECORD, false)
		gg.toast("添加的坐标记录已复制到粘贴板！")
	  elseif(p_menu == 5) then
		POSITION_RECORD = ""
		gg.toast("坐标记录清空完成！")
	  elseif(p_menu == 6) then
		local positionPrT = gg.prompt({"请输入瞬移位置格式{X;Z;Y}，如 {121;192;-100}"},{[1]=""},{[1]="text"})
		if(positionPrT == nil or #positionPrT == 0) then
			rolePositionMenu()
	    else
			TeleportA(assert(load("return " .. positionPrT[1]))())
			gg.toast("角色瞬移完成！")
	    end
	  elseif(p_menu == 7) then
	    gg.copyText(tostring(xdz),false)
	  elseif(p_menu == 8) then
		I()
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
	rolePosition[1].address = xdz
	rolePosition[1].flags = gg.TYPE_FLOAT
	
	rolePosition[2] = {}
	rolePosition[2].address = zdz
	rolePosition[2].flags = gg.TYPE_FLOAT
	
	rolePosition[3] = {}
	rolePosition[3].address = ydz
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

----------------------- End 小孩添加 2020-06-30


local isSenegyOpen = false

-- 无限能量
function boundles_senergy()
    gg.toast("请在地面时开启，否则可能开启失败！")
	local senergy = getSenergyAddress()
	
	if(senergy ~= nil and #senergy > 0) then
		if(not isSenegyOpen) then
		
			senergy[1].value = "14"
			senergy[1].freeze = true
			gg.addListItems(senergy)
			gg.clearResults()
			
			gg.copyText(tostring(senergy[1].address), false)
			gg.toast("⚡无限能量已开启（如不生效，请重试~）")
			isSenegyOpen = true
			
		else
			gg.toast("⚡无限能量已关闭！")
			-- senergy[1].freeze = false
			gg.removeListItems(senergy);
			isSenegyOpen = false
		end
	else
		gg.toast("获取能量地址失败！该功能暂不能使用，请重启脚本再试~")
	end
	
end


-- 获取能量地址
local senergy= nil
function getSenergyAddress()

	if(senergy == nil or #senergy == 0) then
		-- 能量无限
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("256",gg.TYPE_DWORD) 
        gg.refineNumber("256",gg.TYPE_DWORD)
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
			senergy={}
			senergy[1] = {}
			senergy[1].flags = gg.TYPE_FLOAT
			senergy[1].address = wxf[1].address -56
		end
		gg.clearResults()
	end
	
	return senergy

end




--自爆
local zbb = 0
function zbcb()
    if zbb~=1 then
        gg.alert("⚠️自爆与满翼不可都开启⚠️") 
        -- 黑人抬棺
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("256",gg.TYPE_DWORD) 
        gg.refineNumber("256",gg.TYPE_DWORD)
        zbks = gg.getResultCount()
        if zbks ~= 0 then
        zbms = gg.getResults(zbks)
        tmp = {}
        for k, v in pairs(zbms) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = v.address +60
            tmp[#tmp].flags = gg.TYPE_FLOAT
        end
        tmp = gg.getValues(tmp)
        for k, v in pairs(tmp) do
            if v.value == 1.25 then
                zbms[1] = tmp[k]
                break
            end
        end
        zbpy={}
	    zbpy[1] = {}
	    zbpy[1].address = zbms[1].address + 84
	    zbpy[1].flags = gg.TYPE_DWORD
	    zbpy[1].value = "1"
        zbpy[1].freeze = true
        gg.addListItems(zbpy)
        gg.clearResults()
        gg.toast("自爆模式开启成功🙏🏿🙏🏿🙏🏿")
	    zbb=1
        end
	else
	    gg.toast("自爆模式关闭成功🙏🏿🙏🏿🙏🏿")
	    zbpy[1].freeze = false
	    gg.addListItems(zbpy);
	    zbb=0
	end
end


--人物加速
function i5()
if iiii~=0 then
	gg.clearResults();
	gg.setRanges(8)
	gg.searchNumber('1D;3.5F::5',gg.TYPE_FLOAT)  
	gg.refineNumber('3.5',gg.TYPE_FLOAT)
	gg.getResults(1)
	gg.editAll("7", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
	gg.clearResults()
	gg.toast("人物加速修改成功")
gggg=0
else
	gg.clearResults();
	gg.setRanges(8)
	gg.searchNumber('1D;3.5F::5',gg.TYPE_FLOAT)  
	gg.refineNumber('3.5',gg.TYPE_FLOAT)
	gg.getResults(1)
	gg.editAll("3.5", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
	gg.clearResults()
	gg.toast("人物加速恢复成功")
gggg=1
end
end


local isSuperJumpOpen = false
--超级跳
function superJump()
	if(not isSuperJumpOpen) then
		gg.clearResults()
		gg.setRanges(8)
		gg.searchNumber('-1D;1F;1D::25',gg.TYPE_FLOAT)  
		gg.refineNumber('1',gg.TYPE_FLOAT)
		gg.getResults(1)
		gg.editAll("10", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
		gg.clearResults()
		gg.toast("人物超级跳修改成功")
		isSuperJumpOpen = true
	else
		gg.clearResults()
		gg.setRanges(8)
		gg.searchNumber('-1D;1F;1D::25',gg.TYPE_FLOAT)  
		gg.refineNumber('1',gg.TYPE_FLOAT)
		gg.getResults(1)
		gg.editAll("1", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
		gg.clearResults()
		gg.toast("人物超级跳关闭成功")
		isSuperJumpOpen = false
	end
end

--背后物品替换
function K()
	T_CODE = "G11"
	gg.clearResults()
	menu11 = gg.choice({
		"1. 秋千",
		"2. 篝火",
		"3. 花伞",
		"4. 凳子",
		"5. 烟花棒",
		"6. 吉他",
		"7. 笛子",
		"8. 排萧",
		"9. 凛冬大钢琴",
		"10. 八键",
		"11. 雨伞",
		"12. 背后啥都没有",
		'0. 返回上一页'
},nil,'你背上背着什么物品？')
	if menu11 == 1 then k001() end
	if menu11 == 2 then k002() end
	if menu11 == 3 then k003() end
	if menu11 == 4 then k004() end
	if menu11 == 5 then k005() end
	if menu11 == 6 then k006() end
	if menu11 == 7 then k007() end
	if menu11 == 8 then k008() end
	if menu11 == 9 then k009() end
	if menu11 == 10 then k010() end
	if menu11 == 11 then k011() end
	if menu11 == 12 then k012() end
	if menu11 == 13 then HOME() end
end

function K1()
	menu11 = gg.choice({
		"1. 背后空空如也",
		"2. 秋千",
		"3. 篝火",
		"4. 花伞",
		"5. 凳子",
		"6. 烟花棒",
		"7. 吉他",
		"8. 笛子",
		"9. 排萧",
		"10. 凛冬大钢琴",
		"11. 八键",
		"12. 雨伞",
		'0. 返回上一页'
},nil,'想要更换成什么物品？')
	if menu11 == 1 then k11() end
	if menu11 == 2 then k10() end
	if menu11 == 3 then k9() end
	if menu11 == 4 then k0() end
	if menu11 == 5 then k3() end
	if menu11 == 6 then k8() end
	if menu11 == 7 then k4() end
	if menu11 == 8 then k5() end
	if menu11 == 9 then k6() end
	if menu11 == 10 then k2() end
	if menu11 == 11 then k1() end
	if menu11 == 12 then k7() end
	if menu11 == 13 then K() end
end

function k001()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3580839943", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k002()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3779226149", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k003()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3634028466", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k004()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("992885953", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k005()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3280753494", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k006()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3269660804", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k007()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("396560731", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k008()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("1237767078", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k009()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3275797515", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k010()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("4246711693", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k011()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("2574095143", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启失败，请佩戴对应物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k012()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("2035109393", gg.TYPE_QWORD)
	if gg.getResultCount() <= 15 then
		gg.toast("开启失败，请佩戴对应物品")
		gg.clearResults()
	else
		gg.getResults(50)
		gg.toast("成功,请选择想要的物品")
		K1()
	end
end



function k0()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3634028466", gg.TYPE_QWORD)
gg.toast("大花伞")
end
	 
function k1()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("4246711693", gg.TYPE_QWORD)
gg.toast("八键")
end

function k2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3275797515", gg.TYPE_QWORD)
gg.toast("钢琴")
end

function k3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("992885953", gg.TYPE_QWORD)
gg.toast("凳子")
end

function k4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3269660804",gg.TYPE_QWORD)
gg.toast("吉他")
end

function k5()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("396560731",gg.TYPE_QWORD)
gg.toast("笛子")
end

function k6()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("1237767078",gg.TYPE_QWORD)
gg.toast("排萧")
end

function k7()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("2574095143", gg.TYPE_QWORD)
gg.toast("雨伞")
end

function k8()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3280753494",gg.TYPE_QWORD)
gg.toast("烟花棒")
end

function k9()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3779226149",gg.TYPE_QWORD)
gg.toast("篝火")
end

function k10()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3580839943",gg.TYPE_QWORD)
gg.toast("秋千")
end

function k11()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("2035109393",gg.TYPE_QWORD)
gg.toast("背后空空如也")
end
--重置瞬移先祖--


--晨岛
local map8 = {}
local gdCount1 = 0
--晨岛先祖坐标
map8[1] = {}

map8[1][1] = {64.80686187744, 5.14548635483, 105.91326141357}
sky1 = {}
sky1[1] = {58.94992446899, 4.9788980484, 105.34553527832}
sky1[2] = {52.27404785156, 5.26914596558, 110.12825775146}
sky1[3] = {58.68653869629, 5.12043046951, 117.55633544922}
sky1[4] = {74.07012939453, 4.994556427, 113.85317993164}

map8[1][2] = {105.90128326416, 4.79724311829, 48.25633621216}
sky2 = {}
sky2[1] = {123.72571563721, 3.13738846779, 50.13516998291}
sky2[2] = {142.83909606934, 3.05479025841, 65.64388275146}
sky2[3] = {155.05934143066, 5.91439962387, 115.99460601807}
sky2[4] = {101.79879760742, 4.12522029877, 109.09219360352}
sky2[5] = {100.42581176758, 8.46671485901, 99.98972320557}

map8[1][3] = {136.74867248535,90.44455718994,-257.50369262695}
sky3 = {}
sky3[1] = {143.34887695312,87.10228729248,-248.04257202148}
sky3[2] = {149.08660666672,85.92551422119,-238.34835815430}
sky3[3] = {150.40620422363,86.79633331299,-237.38656616211}
sky3[4] = {155.54014587402,86.65998840332,-252.17694091797}

map8[1][4] = {155.8,103.51,-293.6}--终点

--云野
local map9 = {}
local gdCount2 = 0
--云野先祖坐标
map9[1] = {}
map9[1][1] = {101.26465606689,154.88084411621,17.43948364258}
yy1 = {}
yy1[1] = {116.690376,157.202316,31.787988}
yy1[2] = {109.515472,156.458953,26.809562}
yy1[3] = {103.318199,157.648086,32.537815}
yy1[4] = {111.582458,156.433929,26.943059}

map9[1][2] = {-192.66337585449,193.75396728516,83.59469604492}
yy2 = {}
yy2[1] = {-196.515396,197.847717,83.379333}
yy2[2] = {-195.564147,201.169876,89.166801}
yy2[3] = {-197.085662,205.779479,86.774139}

map9[1][3] = {110.48519897461,181.2214050293,250.57133483887}--左洞
yy3 = {}
yy3[1] = {100.664253,181.754409,245.520782}
yy3[2] = {86.707382,181.746459,238.079406}
yy3[3] = {76.545852,183.895370,255.600067}
yy3[4] = {99.624191,194.186859,250.073211}
yy3[5] = {89.558723,198.815826,270.571197}
yy3[5] = {91.750251,198.899627,273.685913}

map9[1][4] = {75.58396911621,184.34452819824,331.81048583984}--中
yy4 = {}
yy4[1] = {82.888336,188.670532,348.228973}
yy4[2] = {73.112548,194.198120,361.487304}
yy4[3] = {68.559768,198.262191,364.054840}

map9[1][5] = {60.022,185.073,365.05}--中洞
yy5 = {}
yy5[1] = {59.121768,185.218978,369.634613}
yy5[2] = {61.540992,185.218994,362.703582}
yy5[3] = {64.963043,185.217910,368.503173}
yy5[4] = {60.266231,185.222518,363.422515}

map9[1][6] = {-40.42894744873,183.27674865723,313.63589477539}--右洞
yy6 = {}
yy6[1] = {-29.232383,184.302627,308.347259}
yy6[2] = {-10.224791,186.336883,302.565216}
yy6[3] = {-9.936346,190.160354,311.797393}
yy6[4] = {-15.466066,192.646286,314.935302}

map9[1][7] = {315.27615356445,188.25726318359,210.62249755859}
yy7 = {}
yy7[1] = {327.696746,189.622711,216.531723}
yy7[2] = {340.582946,184.100936,228.907821}
yy7[3] = {368.022705,181.046554,231.221694}
yy7[4] = {395.420959,180.849105,209.517242}
yy7[5] = {413.294433,187.036023,209.076461}

--雨林
local map10 = {}
local gdCount3 = 0
--雨林先祖坐标
map10[1] = {}
map10[1][1] = {30.70751953125,97.58390808105,-179.40824890137}
yl1 = {}
yl1[1] = {16.93806076049,96.87742614746,-177.86671447753}
yl1[2] = {16.11702919006,96.39558410644,-166.99340820312}
yl1[3] = {9.99261760711,97.99803161621,-156.71223449707}
yl1[4] = {14.20316410064,99.33074951171,-145.80369567871}
yl1[5] = {17.98043251037,99.12267303466,-135.02557373046}

map10[1][2] = {69.49216461182,106.90505218506,-87.62112426758}
yl2 = {}
yl2[1] = {67.88175964355,106.59674072265,-80.70234680175}
yl2[2] = {68.98313140869,107.43225860595,-65.15387725830}
yl2[3] = {75.27891540527,107.67600250244,-61.29362106323}
yl2[4] = {85.76490020751,109.29707336425,-59.33642959594}
yl2[5] = {107.66295623779,112.14456939697,-48.08292007446}
yl2[6] = {109.80916595458,112.09865570068,-45.51247024536}

map10[1][3] = {85.16683959961,102.52812194824,12.71730327606}
yl3 = {}
yl3[1] = {95.89743804931,102.07133483886,22.54758834838}
yl3[2] = {93.12996673583,99.38754272460,31.49808120727}
yl3[3] = {89.07014465332,98.64786529541,34.67620468139}
yl3[4] = {78.27222442626,96.64196014404,34.59815597534}

map10[1][4] = {36.74116134644,96.14245605469,-14.23884391785}
yl4 = {}
yl4[1] = {47.65795516967,95.99945068359,-3.24182915687}
yl4[2] = {69.49405670166,96.84957122802,-8.42848491668}
yl4[3] = {60.15018463134,100.53179931640,0.42734500765}
yl4[4] = {41.13249588012,104.54130554199,12.04802703857}
yl4[5] = {39.14956283569,113.32818603515,31.33630943298}

map10[1][5] = {22.09764480591,139.74815368652,5.68258905411}
yl5 = {}
yl5[1] = {22.583560,140.200942,17.890031}
yl5[2] = {24.686170,140.396538,43.650920}
yl5[3] = {10.864163,139.687301,71.751564}
yl5[4] = {3.030520,139.422988,77.747024}

map10[1][6] = {57.04404449463,143.89994812012,50.25771331787}
yl6 = {}
yl6[1] = {54.01134872436,145.84671020507,57.43698501586}
yl6[2] = {52.16764450073,145.66212463378,53.17017745971}
yl6[3] = {47.91177749633,145.82371520996,52.30420684814}
yl6[4] = {44.65831756591,145.97845458984,56.06175231933}
yl6[5] = {35.98408889770,144.35447692871,75.76773071289}

map10[1][7] = {-82.67083740234,134.6703338623,223.05491638184}
yl7 = {}
yl7[1] = {-82.97026824951,134.56648254394,214.90242004394}
yl7[2] = {-72.03417968750,134.50639343261,223.40002441406}
yl7[3] = {-80.37356567382,135.00367736816,230.83522033691}
yl7[4] = {-83.63902282714,134.94985961914,222.74227905273}
yl7[5] = {-91.27504730224,136.24087524414,225.23333740234}




--霞谷
local map11 = {}
local gdCount4 = 0
--霞谷先祖坐标
map11[1] = {}
map11[1][1] = {168.41310119629,67.07646179199,-448.99984741211}
xg1 = {}
xg1[1] = {162.29786682128,68.21259307861,-460.57196044921}
xg1[2] = {151.55928039550,74.63336181640,-453.57031250000}
xg1[3] = {160.99491882324,76.86156463623,-442.72457885742}
xg1[4] = {169.89755249023,76.13133239746,-443.52767944335}

map11[1][2] = {59.75024032593,490.71014404297,32.25593185425}
xg2 = {}
xg2[1] = {44.47880172729,497.68740844726,30.94039344787}
xg2[2] = {27.89121627807,496.56979370117,13.94200420379}
xg2[3] = {26.78898239135,515.40136718750,-32.05183029174}
xg2[4] = {30.08931350708,530.58831787109,-43.48488235473}
xg2[5] = {71.61949157714,540.99975585937,-56.68285751342}
xg2[6] = {96.36257171630,530.67492675781,-47.00332260131}

map11[1][3] = {120.34407043457031;473.7091979980469;6.506269931793213}
xg3 = {}
--这个坐标本事大的来抓，手动滑稽--

map11[1][4] = {90.54080200195,154.20066833496,-171.37298583984}
xg4 = {}
xg4[1] = {116.64083862304,161.52305603027,-187.35650634765}
xg4[2] = {118.86928558349,154.48075866699,-215.05931091308}


--暮土
local map12 = {}
local gdCount5 = 0
--暮土先祖坐标
map12[1] = {}
map12[1][1] = {-33.87367630005,0.47998189926,388.09027099609}
mt1 = {}
mt1[1] = {-47.22530746459,10.94340801239,352.86129760742}
mt1[2] = {-96.65264129638,1.64559519290,325.35794067382}
mt1[3] = {-97.98181152343,1.41314244270,328.38919067382}

map12[1][2] = {-21.26772689819,7.72060775757,262.90121459961}
mt2 = {}
mt2[1] = {-31.89016532897,2.02924919128,245.10450744628}
mt2[2] = {-27.447704,0.392863,230.614608}
mt2[3] = {-18.65313339233,1.50483536720,219.92141723632}
mt2[4] = {-21.32256698608,0.96985554695,207.28706359863}
mt2[5] = {-20.41801452636,1.67349839210,202.90527343750}


map12[1][3] = {62.99663543701,92.83907318115,261.21282958984}
mt3 = {}
mt3[1] = {44.69726562500,91.15282440185,237.41056823730}
mt3[2] = {47.80560684204,89.81167602539,218.16560363769}
mt3[3] = {52.00352478027,89.71234893798,207.11741638183}
mt3[4] = {58.70776748657,92.12214660644,195.47552490234}
mt3[5] = {60.31597518920,95.37597656250,189.33790588378}
mt3[6] = {62.36653518676,99.01262664794,182.48326110839}
mt3[7] = {68.34260559082,99.15675354003,145.23588562011}

map12[1][4] = {-1.81847178936,67.47225952148,-109.97587585449}
mt4 = {}
mt4[1] = {2.84740447998,67.87450408935,-103.85334777832}
mt4[2] = {14.91339015960,74.69053649902,-119.12010955810}
mt4[3] = {8.08583927154,77.06929779052,-131.68843078613}
mt4[4] = {7.34354209899,77.32836151123,-140.53572082519}

map12[1][5] = {-209.48788452148,1.04883360863,398.78448486328}
mt5 = {}
mt5[1] = {-202.07702636718,1.89386856555,407.66906738281}
mt5[2] = {-195.90753173823,2.12663841247,416.18969726562}
mt5[3] = {-189.76255798339,7.80643558502,403.20794677734}
mt5[4] = {-196.32501220703,10.83698844909,396.54525756835}
mt5[5] = {-181.55036926269,12.03136539459,373.74008178710}
mt5[6] = {-171.77412414550,10.85400676727,373.55349731445}

map12[1][6] = {-231.60386657715,102.21933746338,-191.23571777344}
mt6 = {}
mt6[1] = {-233.08888244628,114.49264526367,-182.36700439453}
mt6[2] = {-241.99330139160,110.08288574218,-182.69525146484}
mt6[3] = {-251.88490295410,115.97129821777,-170.98771667480}
mt6[4] = {-224.69233703613,128.43896484375,-159.30917358398}
mt6[5] = {-213.85812377929,137.02476501464,-165.24546813964}
mt6[6] = {-212.57273864746,148.3724822998,-162.73057556152}

--禁阁
local map13 = {}
local gdCount6 = 0
--禁阁先祖坐标
map13[1] = {}
map13[1][1] = {-62.09304428101,40.73058319092,22.32921409607}
jg1 = {}
jg1[1] = {-67.93663024902,40.38966369628,34.35494995117}
jg1[2] = {-72.54860687255,40.38965225219,16.60508918762}
jg1[3] = {-66.14085388183,40.38965988159,12.25107860565}
jg1[4] = {-49.02717208862,43.64829254150,16.92056274414}
jg1[5] = {-56.54952239990,49.66357040405,31.19394874572}
jg1[6] = {-64.29154968261,50.21882629394,31.95277023315}

map13[1][2] = {47.82119369507,83.53661346436,42.63860702515}
jg2 = {}
jg2[1] = {35.30688095082,82.84276580810,47.41799545288}
jg2[2] = {27.39916038513,83.75881958007,56.86069107055}
jg2[3] = {28.87890052795,82.82781982421,39.90015029907}
jg2[4] = {21.24525451660,82.84236145019,44.06553649902}

map13[1][3] = {-37.25931549072,143.38360595703,-22.54124641418}
jg3 = {}
jg3[1] = {-18.95537757873,146.77537536621,-29.63357925415}
jg3[2] = {-3.594398021697,146.94731140136,-32.64868164062}
jg3[3] = {26.130910873413,152.24751281738,-37.39312362670}
jg3[4] = {31.476238250732,153.90464782714,-42.26019287109}

--map13[1][4] = {48.09609985352;228.29138183594;8.88393878937}

map13[1][4] = {-11.23779010773,149.86012268066,-44.61698913574}
jg4 = {}
jg4[1] = {-19.87369537353,151.37120056152,-45.45783233642}
jg4[2] = {-16.95526885986,157.81134033203,-55.83851623535}
jg4[3] = {-13.58221244812,164.15745544433,-49.86547470092}

map13[1][5] = {-0.35613438487;303.56619262695;58.07741546631}


function L()
	T_CODE = "G12"
  l_menu = gg.choice({
  "1. 晨岛",
  "2. 云野",
  "3. 雨林",
  "4. 霞谷",
  "5. 暮土",
  "6. 禁阁",
  "0. 返回上一页"
 }, nil, "先祖重置瞬移 - 遇镜开")
  if l_menu == 1 then G12 = -1 L1() end
  if l_menu == 2 then G12 = -1 L2() end
  if l_menu == 3 then G12 = -1 L3() end
  if l_menu == 4 then G12 = -1 L4() end
  if l_menu == 5 then G12 = -1 L5() end
  if l_menu == 6 then G12 = -1 L6() end
  if l_menu == 7 then HOME() end
end




--晨岛
function L1()
  T_CODE = "L1"
  gg.setSpeed(2)
  menu1 = gg.choice({
    "1. 冲",
    "0. 返回上页"
  }, nil, "晨岛 - 瞬移")
  if menu1 == nil then else
  if menu1 == 1 then l1() end
  if menu1 == 2 then L() end end
end

local map8_in = 0
local map8_temple_in = 0 --神庙入口


local gdCount1 = 0
--晨岛先祖[下一个]
function l1()
	if gdCount1 == 0 and map8_in ~= 1 then
		cdcz()
		gg.toast("先祖重置完成，1秒后瞬移至晨岛入口")
		gg.sleep(1000)
		TeleportA({11.265,1.5,1.02})
		gg.toast("瞬移晨岛入口完成，进入后请继续冲！")
		map8_in = 1
		return 0
	end
	
	if gdCount1 == 3 then
		gg.toast("请手动返回遇境")
	else
		gdCount1 = gdCount1 + 1
		xyz = map8[1][gdCount1]
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(5)
		gg.sleep(5000)
		if gdCount1 ==1 then
			for i = 1, #sky1 do
				gg.sleep(2000)
				TeleportA(sky1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount1 ==2 then
			for i = 1, #sky2 do
				gg.sleep(2000)
				TeleportA(sky2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount1 ==3 then
			for i = 1, #sky3 do
				gg.sleep(2000)
				TeleportA(sky3[i])
			end
			gg.toast("这个先祖已结束，10秒后自动去终点！")
			gg.sleep(12000)
			TeleportA({156.066879,103.757659,-295.490875})
			gg.toast("请务必冥想谢谢！")
			gdCount1 = 0
		end
		
	end
end

function cdcz()
	ll1()
	ll2()
	ll3()
end

function ll1()
	setClear("414084241")
end

function ll2()
	setClear("3666569351")
end

function ll3()
	setClear("4249009249")
end


local map9_in = 0 
local map9_right_in = 0 --右侧隐藏图入口
local map9_right_out = 0 --右侧隐藏图出口
local map9_left_in = 0 --左侧隐藏图入口
local map9_left_out = 0 --左侧隐藏图出口
local map9_temple_in = 0 --神庙入口
--云野
function L2()
  T_CODE = "L2"
  l_menu2 = gg.choice({
    "1. 冲",
    "0. 返回上页"
  }, nil, "云野 - 瞬移")
  if l_menu2 == nil then else
  if l_menu2 == 1 then l2() end
  if l_menu2 == 2 then L() end end
end


local gdCount2 = 0
--云野先祖[下一个]
function l2()
	if gdCount2 == 0 and map9_in ~= 1 then
		l21()
		gg.toast("先祖重置完成，1秒后瞬移至云野入口")
		gg.sleep(1000)
		TeleportA({8.9,1.5,4.48})
		gg.toast("瞬移云野入口完成，请手动进入")
		map9_in = 1
		return 0
	end
	
	if gdCount2 == 8 then
		gg.toast("请手动返回遇境")
	else
		gdCount2 = gdCount2 + 1
		if gdCount2 == 2 and map9_right_in ~= 1 then
			l22()
			TeleportA({-9.7918510437;165.37245178223;-5.74012947083})
			gg.toast("已瞬移至 [云野右侧隐藏图入口] ，请手动进入继续冲")
			gdCount2 = gdCount2 - 1
			map9_right_in = 1
			return 0
		end
		if gdCount2 == 3 and map9_right_out ~= 1 then
			l23()
		    l24()
			l25()
			l26()
			TeleportA({-104.2032699585;184.77220153809;172.62110900879})
			gg.toast("已瞬移至 [云野右侧隐藏图出口] ，请手动进入继续冲")
			gdCount2 = gdCount2 - 1
			map9_right_out = 1
			return 0
		end
		if gdCount2 == 7 and map9_left_in ~= 1 then
			l28()
			TeleportA({157.29043579102;200.01664733887;226.44515991211})
			gg.toast("已瞬移至 [云野左侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map9_left_in = 1
			return 0
		end
		
		if gdCount2 == 8 and map9_left_out ~= 1 then
		  TeleportA({242.77,198.38,226})
		  gg.toast("已瞬移至 [云野左侧隐藏图出口] ，请手动进入，5秒后将自动瞬移")
		  map9_left_out = 1
		  gg.sleep(5000)
		  TeleportA({127.50,254.79,479.60})
		  gg.toast("已瞬移至 [云野神庙入口] ，请手动进入，10秒后将自动瞬移")
		  map9_temple_in = 1
		  gg.sleep(10000)
		  TeleportA({-112.18,89.54,42.43})
		  gg.toast("请务必冥想谢谢！")
		  gdCount2 = 0
		  return 0
		end
		xyz = map9[1][gdCount2]
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(6)
		gg.sleep(5000)
		
		
		if gdCount2 ==1 then
			for i = 1, #yy1 do
				gg.sleep(3000)
				TeleportA(yy1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==2 then
			for i = 1, #yy2 do
				gg.sleep(3000)
				TeleportA(yy2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==3 then
			for i = 1, #yy3 do
				gg.sleep(3000)
				TeleportA(yy3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==4 then
			for i = 1, #yy4 do
				gg.sleep(3000)
				TeleportA(yy4[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==5 then
			--for i = 1, #yy5 do
			--	gg.sleep(3500)
			--	TeleportA(yy5[i])
			--end
			gg.toast("自己冲吧！")
		end
		
		if gdCount2 ==6 then
			for i = 1, #yy6 do
				gg.sleep(3900)
				TeleportA(yy6[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==7 then
			for i = 1, #yy7 do
				gg.sleep(3000)
				TeleportA(yy7[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
	end
end

function l21()
	setClear("64338276")
end

function l22()
	setClear("2540775602")
end

function l23()
	setClear("1466879858")
end

function l24()
	setClear("1060667581")
end

function l25()
	setClear("2851084244")
end

function l26()
	setClear("3063270590")
end

function l27()
	setClear("1568825369")
end

function l28()
	setClear("3881128326")
end

local map10_in = 0 
local map10_main1 = 0 --主地图入口1
local map10_main2 = 0 --主地图入口2
local map10_main3 = 0 --神庙入口
--雨林
function L3()
  T_CODE = "L3"
  gg.setSpeed(2)
  l_menu3 = gg.choice({
    "1. 冲",
    "0. 返回上页"
  }, nil, "雨林 - 瞬移")
  if l_menu3 == nil then else
  if l_menu3 == 1 then l3() end
  if l_menu3 == 2 then L() end end
end


local gdCount3 = 0
--雨林先祖[下一个]
function l3()
	if gdCount3 == 0 and map10_in ~=1 then
		l31()
		gg.toast("重置先祖完成，1秒后瞬移至雨林入口")
		gg.sleep(1000)
		TeleportA({5.04,1.5,7.505})
		gg.toast("已瞬移至 [雨林入口] ，请手动进入")
		gg.sleep(3000)
		l31()
		map10_in = 1
		return 0
    end

	if gdCount3 == 8 then
		gg.toast("请手动返回遇境")
	else
		gdCount3 = gdCount3 + 1
		if gdCount3 == 2 and map10_main1 ~=1 then
			l32()
			l33()
			l34()
			TeleportA({28.37304496765;98.56972503662;-113.70115661621})
			gg.toast("已瞬移至 [雨林主地图入口1] ，请手动进入后继续冲")
			gdCount3 = gdCount3 - 1
			map10_main1 = 1
			return 0
		end
		if gdCount3 == 5 and map10_main2 ~=1 then
			l35()
			l36()
			l37()
			l38()
			TeleportA({66.04258728027,99.53592681885,49.7889175415})
			gg.toast("已瞬移至 [雨林主地图入口2] ，请手动进入后继续冲")
			gdCount3 = gdCount3 - 1
			map10_main2 = 1
			return 0
		end
		if gdCount3 == 8 and map10_main3 ~=1 then
		  TeleportA({-18.17,182.76,402.43})
		  gg.toast("已瞬移至 [雨林神庙入口] ，请手动进入，5秒后将自动瞬移")
		  map10_main3 = 1
		  gg.sleep(5000)
		  TeleportA({-0.264,115.535,-4.0982})
		  gg.toast("请务必冥想谢谢！")
		  gdCount3 = 0
		  return 0
		end
		xyz = map10[1][gdCount3]
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(3)
		gg.sleep(5000)
		
		if gdCount3 ==1 then
			for i = 1, #yl1 do
				gg.sleep(1500)
				TeleportA(yl1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==2 then
			for i = 1, #yl2 do
				gg.sleep(3000)
				TeleportA(yl2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==3 then
			for i = 1, #yl3 do
				gg.sleep(1500)
				TeleportA(yl3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==4 then
			for i = 1, #yl4 do
				gg.sleep(5000)
				TeleportA(yl4[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==5 then
			for i = 1, #yl5 do
				gg.sleep(2500)
				TeleportA(yl5[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		if gdCount3 ==6 then
			for i = 1, #yl6 do
				gg.sleep(3000)
				TeleportA(yl6[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==7 then
			gg.toast("需要烧花自动动！")
		end
	end
end


function l31()
	setClear("3930381583")
end

function l32()
	setClear("3576552037")
end

function l33()
	setClear("1464190897")
end

function l34()
	setClear("2381086145")
end

function l35()
	setClear("419578801")
end

function l36()
	setClear("1156673674")
end

function l37()
	setClear("1728053750")
end

function l38()
	setClear("4182042971")
end


local map11_in = 0 
local map11_sky1_in = 0 --天空赛道一图入口
local map11_sky1_out = 0 --天空赛道一图出口
local map11_sky2_in = 0 --天空赛道二图入口
local map11_temple_in = 0 --神庙入口
--霞谷
function L4()
  T_CODE = "L4"
  gg.setSpeed(1.5)
  G4 = 1
  local l_menu4 = gg.choice({
    "1. 冲",
    "0. 返回上页"
  }, nil, "霞谷 - 瞬移")
  if l_menu4 == nil then else
  if l_menu4 == 1 then l4() end
  if l_menu4 == 2 then L() end end
end


local gdCount4 = 0
--霞谷先祖[下一个]
function l4()
	if gdCount4 == 0 and map11_in ~=1 then
		l41()
		gg.toast("重置先祖完成，1秒后瞬移至霞谷入口")
		gg.sleep(1000)
		TeleportA({-2.916,2,7.53})
		gg.toast("已瞬移至 [霞谷入口] ，请手动进入")
		map11_in = 1
		return 0
    end

	if gdCount4 == 4 then
		gg.toast("请手动返回遇境")
	else
		gdCount4 = gdCount4 + 1
		if gdCount4 == 2 and map11_sky1_in ~=1 then
			l42()
			l43()
			TeleportA({205.1636505127;56.70009994507;-601.97637939453})
			gg.toast("已瞬移至 [霞谷天空赛道一图入口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky1_in = 1
			return 0
		end
		if gdCount4 == 4 and map11_sky1_out ~=1 then
			TeleportA({206.68609619141;491.52456665039;-205.85830688477})
			gg.toast("已瞬移至 [霞谷天空赛道一图出口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky1_out = 1
			return 0
		end
		if gdCount4 == 4 and map11_sky2_in ~=1 then
			l44()
			TeleportA({149.81336975098;1008.25744628906;-100.43368530273})
			gg.toast("已瞬移至 [霞谷天空赛道二图入口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky2_in = 1
			return 0
		end
		gg.sleep(15000)
		xyz = map11[1][gdCount4]
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(6)
		gg.sleep(5000)
		
		if gdCount4 ==1 then
			for i = 1, #xg1 do
				gg.sleep(3000)
				TeleportA(xg1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount4 ==2 then
			for i = 1, #xg2 do
				gg.sleep(1500)
				TeleportA(xg2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end

		if gdCount4 ==3 then
			gg.toast("这个真得自己来！")
		end
		
		if gdCount4 ==4 then
			for i = 1, #xg4 do
				gg.sleep(1500)
				TeleportA(xg4[i])
			end
			gg.toast("这个先祖已结束，10秒后自动去终点！")
			gg.sleep(12000)
			TeleportA({60.076934,137.721679,-294.028564})
			gg.sleep(4000)
			TeleportA({9.378504,137.932312,-184.543090})
			gg.toast("请务必冥想谢谢！")
			gdCount4 = 0
		end
		
	end
end


function l41()
	setClear("3307167098")
end

function l42()
	setClear("416637648")
end

function l43()
	setClear("3768849824")
end

function l44()
	setClear("2859830090")
end

--暮土
function L5()
  T_CODE = "L5"
  gg.setSpeed(2)
  local l_menu5 = gg.choice({
    "1. 冲",
    "0. 返回上页"
  }, nil, "暮土 - 瞬移")
  if l_menu5 == nil then else
  if l_menu5 == 1 then l5() end
  if l_menu5 == 2 then L() end end
end

local map12_in = 0
local map12_main1_out = 0 --一图出口
local map12_sunkenship_in = 0 --沉船入口
local map12_sunkenship_out = 0 --沉船出口
local map12_yilong_out = 0 --一龙图出口

--暮土先祖[下一个]
local gdCount5 = 0
function l5()
	if gdCount5 ==0 and  map12_in ~= 1 then
		l51()
		l52()
		gg.toast("重置先祖完成，1秒后瞬移至墓土入口")
		gg.sleep(1000)
		TeleportA({-6.42,2,4.445})
		gg.toast("瞬移完成，5秒后将瞬移至墓土一图入口")
		gg.sleep(5000)
		TeleportA({-113.36,55,-796.6})
		gg.toast("瞬移完成")
		l51()
		l52()
		map12_in = 1
		return 0
	end
	
	if gdCount5 == 7 then
		gg.toast("请手动返回遇境")
		gdCount5 = 0
	else
		gdCount5 = gdCount5 + 1
		if gdCount5 == 3 and map12_main1_out ~=1 then
			l53()
			l54()
			TeleportA({-91.85065460205;11.72455883026;158.18051147461})
			gg.toast("已瞬移至 [暮土一图出口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_main1_out = 1
			return 0
		end
		if gdCount5 == 5 and map12_sunkenship_in ~=1 then
			l55()
			gg.setSpeed(1)
			TeleportA({189.26557922363;69.34118652344;-73.92557525635})
			gg.toast("已瞬移至 [暮土沉船入口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_sunkenship_in = 1
			return 0
		end
		
		if gdCount5 == 6 and map12_sunkenship_out ~=1 then
			l56()
			TeleportA({-343.83453369141;35.31271362305;386.27169799805})
			gg.toast("已瞬移至 [暮土沉船出口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_sunkenship_out = 1
			return 0
		end
		
		if gdCount5 == 7 and map12_yilong_out ~=1 then
		  TeleportA({-285.36907958984;92.04296112061;-400.69836425781})
		  gg.toast("已瞬移至 [暮土一龙图出口] ，请手动进入,6秒后将自动瞬移")
		  gg.sleep(6000)
		  TeleportA({0.1838,206.55,2.58})
		  map12_yilong_out = 1
		  return 0
		end
		
		xyz = map12[1][gdCount5]
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(6)
		gg.sleep(5000)
		
		if gdCount5 ==1 then
			for i = 1, #mt1 do
				gg.sleep(2500)
				TeleportA(mt1[i])
			end
		end
		
		if gdCount5 ==2 then
			for i = 1, #mt2 do
				gg.sleep(3000)
				TeleportA(mt2[i])
			end
		end
		
		if gdCount5 ==3 then
			for i = 1, #mt3 do
				gg.sleep(3000)
				TeleportA(mt3[i])
			end
		end
		
		if gdCount5 ==4 then
			for i = 1, #mt4 do
				gg.sleep(3000)
				TeleportA(mt4[i])
			end
		end
		
		if gdCount5 ==5 then
			for i = 1, #mt5 do
				gg.sleep(3000)
				TeleportA(mt5[i])
			end
		end
		
		if gdCount5 ==6 then
			for i = 1, #mt6 do
				gg.sleep(3000)
				TeleportA(mt6[i])
			end
		end
		gg.toast("这个先祖已结束，请点亮后继续冲！")
	end
end

function l51()
	setClear("3630339793")
end

function l52()
	setClear("1060292445")
end

function l53()
	setClear("2886532097")
end

function l54()
	setClear("4155738138")
end

function l55()
	setClear("1999438929")
end

function l56()
	setClear("2159324587")
end


--禁阁
function L6()
  T_CODE = "L6"
  local l_menu6 = gg.choice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "禁阁 - 瞬移")
  if l_menu6 == nil then else
  if l_menu6 == 1 then l6() end
  if l_menu6 == 2 then L() end end
end


local map13_top_in = 0
local map13_in = 0

local gdCount6 = 0
--禁阁先祖[下一个]
function l6()
	if gdCount6 == 0 and map13_in ~=1 then
		l61()
		l62()
		l63()
		gg.toast("先祖重置完成，1秒后瞬移至禁阁入口")
		gg.sleep(1000)
		TeleportA({-8.41,2,0.503})
		gg.toast("瞬移禁阁入口完成，请手动进入")
		map13_in = 1
		return 0
	end 
	
	if gdCount6 == 5 then
		gg.toast("请手动返回遇境")
		gdCount6 = 0
	else
	    gdCount6 = gdCount6 + 1
		xyz = map13[1][gdCount6]
		if gdCount6 == 4 and map13_top_in ~=1 then
			l64()
			TeleportA({48.09609985352;228.29138183594;8.88393878937})
			gg.toast("请再冲一次")
			gdCount6 = gdCount6 - 1
			map13_top_in = 1
			return 0
		end
		TeleportA(xyz)
		gg.toast("请手动点火5秒后将自动瞬移")
		gg.setSpeed(4)
		gg.sleep(5000)
		
		if gdCount6 ==1 then
			for i = 1, #jg1 do
				gg.sleep(1500)
				TeleportA(jg1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
	
		if gdCount6 ==2 then
			for i = 1, #jg2 do
				gg.sleep(3500)
				TeleportA(jg2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
	
		if gdCount6 ==3 then
			for i = 1, #jg3 do
				gg.sleep(3500)
				TeleportA(jg3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount6 ==4 then
			for i = 1, #jg4 do
				gg.sleep(2500)
				TeleportA(jg4[i])
			end
			--gg.toast("这个先祖已结束，30秒后自动去终点！")
			--gg.sleep(30000)
			--TeleportA({-0.018859,310.305175,69.788833})
		end
		
	end
end

function l61()
	setClear("3594096657")
end

function l62()
	setClear("2041153668")
end

function l63()
	setClear("3576140497")
end

function l64()
	setClear("2797886853")
end


function setClear(num)
	gg.clearResults()
	gg.searchNumber(num, 32, false, gg.SING_EQUAL, 0, -1)
	gg.removeResults(gg.getResults(2))
	gg.getResults(10)
	gg.editAll("3811807379", gg.TYPE_QWORD)
	gg.clearResults()
end

--重置瞬移先祖--


--跑图--
function TeleportA(xzy)
    FX1 = nil
    x = xzy[1]
    z = xzy[2]
    y = xzy[3]
    local t = {}
    t[1] = {}
    t[1].address = xdz
    t[1].flags = 16
    t[1].value = x
    t[2] = {}
    t[2].address = zdz
    t[2].flags = 16
    t[2].value = z
    t[3] = {}
    t[3].address = ydz
    t[3].flags = 16
    t[3].value = y
    gg.setValues(t)
end

--6月9日新加内容
function hqzb()
    gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(4)
	gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD)
	gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
    local num = gg.getResultCount()
    if num >= 1 then
        local jq = gg.getResults(num)
        local tmp = {}
        for k, v in pairs(jq) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = v.address + 88
            tmp[#tmp].flags = gg.TYPE_DWORD
        end
        tmp = gg.getValues(tmp)
        for k, v in pairs(tmp) do
            if v.value == 1 then
                jq[1] = tmp[k]
                break
            end
        end
        local dz = jq[1].address+112
        xdz = dz + 4
        zdz = dz + 8
        ydz = dz + 12
	gg.toast("功能已准备就绪！")
    else
        gg.toast("获取人物坐标失败")
		os.exit()
    end

end
--6月9日新加内容结束--



--跑图-晨岛
local map143 = {}
map143[1] = {156.18676757812;103.23870849609;-294.5241394043}
map143[2] = {158.41726684570312;103.27567291259766;-264.1045227050781}
map143[3] = {146.64097595214844;103.26950073242188;-265.1366271972656}
map143[4] = {150.65158081055;86.59052276611;-237.01953125}
map143[5] = {160.23219299316;85.74584960938;-248.42921447754}
map143[6] = {153.00785827637;86.48435974121;-251.92892456055}
map143[7] = {372.57305908203;52.57130813599;-11.77190208435}
map143[8] = {375.23532104492;51.58967590332;-13.80929470062}
map143[9] = {118.10299682617;0.97198873758;-1733.97021484375}--cg



--跑图-云野
local map144 = {}
map144[1] =  {115.60176086426;196.81085205078;-434.86502075195}--云入口烛1
map144[2] =  {119.39235687256;196.66189575195;-431.43505859375}--云入口烛2
map144[3] =  {120.78240203857;196.61921691895;-427.14166259766}--云入口烛3
map144[4] =  {125.69341278076;196.24737548828;-434.72247314453}--云入口大蜡烛1
map144[5] =  {119.99072265625;196.18881225586;-423.10766601562}--云入口大蜡烛2  
map144[6] =  {110.73287963867188;196.688232421875;-420.3310241699219}  --入口右大蜡烛 
map144[7] =  {77.42821502686;150.11305236816;3.10148835182}--云一洞口烛
map144[8] =  {80.14566802979;150.08250427246;2.11862969398}--云一大蜡烛3
map144[9] =  {90.35874176025;156.30891418457;46.62478637695}--云一大蜡烛4
map144[10] = {102.6978302002;154.87182617188;16.57647514343}--云一先祖烛
map144[11] = {82.07817840576;157.82202148438;50.2978515625}--云一出口烛
map144[12] = {58.6725959777832;150.79380798339844;7.27370023727417}--云一洞烛
map144[13] = {26.2653865814209;158.4989471435547;-20.397123336791992}--云一右副入烛
map144[14] = {-17.372812271118164;171.26510620117188;-2.61037540435791}--云一右副入传  		-----------------
map144[15] = {-104.82821655273438;158.04147338867188;53.739620208740234}--云一右副内起下烛
map144[16] = {-102.8588104248;171.53695678711;57.33250808716}--云一右副跳台
map144[17] = {-145.45869445801;170.86224365234;85.90411376953}--云一右副平台
map144[18] = {-159.85511779785156;158.31936645507812;116.78955841064453}--云一右副内一洞烛
map144[19] = {-194.755615234375;177.94134521484375;83.04451751708984}--云一右副内二洞烛
map144[20] = {-181.7674407959;189.21780395508;124.93006134033}--云一右副小高台 ---
map144[21] = {-194.76808166503906;178.35191345214844;83.33343505859375}--云一右副内二洞烛 2
map144[22] = {-197.4191436767578;205.3974609375;86.28669738769531}--云一右副内二高台烛 
map144[23] = {-192.4719696044922;195.7401580810547;86.92643737792969} ---位置重新调整
map144[24] = {-157.05372619628906;196.1898956298828;118.16311645507812}--云一右副内一高台烛
map144[25] = {-198.01205444336;179.79231262207;86.30323791504}--云一右副大蜡烛5	
map144[26] = {-156.98898315429688;181.1576690673828;110.30924987792969} --大蜡烛
map144[27] = {-144.76632690429688;180.45370483398438;120.36956787109375} --高台左下方
map144[28] = {-44.61409378051758;167.82762145996094;35.79931640625}--云一右副内回传点		------------------
map144[29] = {145.0370330810547;161.82015991210938;6.304953575134277}--云一左副起烛
map144[30] = {171.47674560546875;162.5426025390625;7.549071788787842}--云一左副起传			------------------
map144[31] = {279.54852294922;186.29521179199;82.25734710693}--云一左副大蜡烛6
map144[32] = {302.11297607421875;187.87973022460938;65.82952117919922}--云一左副内一烛
map144[33] = {296.7933654785156;182.36087036132812;134.3046112060547}--云一左副内二烛  
map144[34] = {310.72552490234375;181.7057342529297;139.67019653320312} ----大蜡烛
map144[35] = {282.44036865234375;196.65106201171875;96.31594848632812}--云一左副内右高一烛
map144[36] = {258.6740417480469;199.00433349609375;127.19725799560547}--云一左副内右高二烛
map144[37] = {399.2491455078125;181.25975036621094;199.69834899902344}--云一左副内左洞一烛
map144[38] = {410.10217285156;185.59422302246;210.34518432617}--云一左副内左洞二烛
map144[39] = {375.05728149414;180.9786529541;225.53833007812}--云一左副内左洞三烛
map144[40] = {313.75122070312;187.85140991211;203.14541625977}--云一左副内左洞四烛
map144[41] = {268.4595947265625;193.2919464111328;213.52085876464844}--云一左副内末烛
map144[42] = {242;200;229}--云一左副出口传													------------------
map144[43] = {94.33356475830078;198.77125549316406;271.86090087890625}--云二一庙台 
map144[44] = {88.83885955810547;181.4098358154297;232.0631103515625} --山洞下双人门口
map144[45] = {99.71183776855469;195.2003631591797;253.5347137451172} --双人门上
map144[46] = {96.54067993164;202.99490356445;271.29061889648}--云二一庙台花1
map144[47] = {95.54228973389;202.99942016602;274.67959594727}--云二一庙台花2 
map144[48] = {90.70965576171875;187.88844299316406;350.6719970703125} --云二二庙台左边下方
map144[49] = {67.30188751220703;193.91302490234375;361.1446838378906}--云二二庙台
map144[50] = {65.10161590576;198.14817810059;362.3815612793}--云二二庙台花 
map144[51] = {67.62721252441406;199.162109375;363.3467102050781} --云二二庙台上左
map144[52] = {65.79823303222656;187.4711151123047;363.20562744140625}--云二二人门内左烛     
map144[53] = {64.08866882324219;196.22608947753906;365.2632141113281} --云二二庙台右后方        
map144[54] = {56.487266540527344;186.05653381347656;368.6138000488281}  --云二二人门内右烛     
map144[55] = {48.13763427734375;186.1416473388672;357.0337219238281} --云二二人门外1烛			
map144[56] = {31.317476272583008;184.64283752441406;349.2077941894531}  --云二二人门外2烛
map144[57] = {26.259557724;183.24858093262;273.34768676758}--云二大蜡烛7
map144[58] = {-40.871551513671875;183.21505737304688;317.0045471191406}--云二蝴蝶门烛		
map144[59] = {-11.390929222106934;188.58963012695312;325.5184326171875} --云二三庙台左下方
map144[60] = {-15.389227867126465;192.20278930664062;318.05914306640625}--云二三庙台		
map144[61] = {-16.76848602294922;197.1585235595703;319.4391784667969} --云二三庙台上左前
map144[62] = {-19.333646774291992;197.15101623535156;318.147705078125} --云二三庙台上右后
map144[63] = {-19.12663841248;196.83535766602;318.02593994141}
map144[64] = {-52.46832275390625;180.03219604492188;324.8914489746094}--云二蝴蝶门传		------------------
map144[65] = {-16.181570053100586;19.25881004333496;1.3460540771484375} --八人门口右1 
map144[66] = {-16.10643196105957;19.422651290893555;-1.5273312330245972} --八人门左2 
map144[67] = {-6.723927021026611;20.54081916809082;-0.019779399037361145} --八人门后3，4
map144[68] = {-26.22090721130371;58.03938293457031;-44.910404205322266}--云二八人放狗烛
map144[69] = {31.9806209564209;42.211456298828125;0.51051217913627625}--八门出传			------------------
map144[70] = {112.58673858642578;254.07037353515625;456.29718017578125} --右大蜡烛
map144[71] = {133.95735168457;250.58154296875;456.18634033203}--云顶水边
map144[72] = {122.13149261475;254.35276794434;477.18838500977}--云顶门口
map144[73] = {132.1917266845703;255.7042694091797;486.8236083984375}--云顶传				------------------
map144[74] = {-99.89473724365;83.42595672607;43.98386764526}--云顶蜡烛1
map144[75] = {-106.39923095703;84.48821258545;40.20069885254}--云顶蜡烛2
map144[76] = {-109.84103393554688;87.26282501220703;45.893775939941406}--云顶蜡烛3
map144[77] = {-127.89055633544922;75.16905975341797;42.62199401855469}--顶下笑脸烛
map144[78] = {-529.02185058594;8.60619068146;-213.8217010498}--cg



--跑图-雨林
local map145 = {}

-- 雨林第一图
map145[1] = {131.82736206055;217.6923828125;-627.33093261719}--雨林大蜡烛1
map145[2] = {131.85511779785;218.42578125;-616.24346923828}--雨林大蜡烛2
map145[3] = {143.29095458984;219.55976867676;-606.51159667969}--雨林大蜡烛3
map145[4] = {-0.816321074962616;95.24276733398438;-225.90467834472656}
map145[5] = {18.656038284301758;95.64462280273438;-217.9209747314453}
map145[6] = {21.017566680908203;97.2340316772461;-197.75497436523438}
map145[7] = {1.320913553237915;100.07684326171875;-189.94505310058594}
map145[8] = {27.42579460144043;97.9515380859375;-176.62083435058594}
map145[9] = {8.726140975952148;98.10912322998047;-154.26290893554688}
map145[10] = {32.39213943481445;98.24336242675781;-146.65724182128906}
map145[11] = {8.094919204711914;99.9303207397461;-139.15362548828125}
map145[12] = {14.774800300598145;99.34999084472656;-130.8623504638672}
map145[13] = {31.06119728088379;99.78954315185547;-132.4841766357422}
map145[14] = {28.809818267822266;98.61922454833984;-117.91387939453125}
map145[15] = {32.32442474365;98.16691589355;-144.73559570312}--雨林大蜡烛5
map145[16] = {29.446800231933594;98.68903350830078;-108.74456024169922}--进二图
map145[17] = {26.997467041015625;100.08917999267578;-106.15655517578125}
map145[18] = {32.01351165771;106.14221191406;-72.17198181152}--雨林大蜡烛6
map145[19] = {15.307503700256348;106.3257827758789;-66.15398406982422}
map145[20] = {21.45969009399414;106.47801208496094;-68.07992553710938}
map145[21] = {28.856477737426758;106.1599349975586;-70.83748626708984}
map145[22] = {68.41963195800781;107.33389282226562;-90.54073333740234}
map145[23] = {99.76114654541016;112.40892791748047;-104.67382049560547}
map145[24] = {71.70721435546875;107.45924377441406;-61.10581970214844}
map145[25] = {107.22752380371094;112.39714050292969;-49.27410888671875}
map145[26] = {108.4278793334961;112.1175537109375;-47.4056396484375}
map145[27] = {89.72919464111328;99.72502899169922;-30.1298885345459}
map145[28] = {88.40760040283203;99.74494171142578;-30.91196060180664}
map145[29] = {40.755218505859375;98.11768341064453;-44.120052337646484}
map145[30] = {41.71910858154297;97.9966049194336;-43.981224060058594}
map145[31] = {53.75170135498047;97.78397369384766;-3.276024103164673}
map145[32] = {45.605438232421875;96.49081420898438;-3.2469935417175293}
map145[33] = {38.39130401611328;96.4460678100586;-10.649918556213379}
map145[34] = {63.61601638793945;96.75798034667969;10.848245620727539}
map145[35] = {78.44050598144531;97.74592590332031;28.800273895263672}
map145[36] = {92.66808319091797;99.61067199707031;33.895816802978516}
map145[37] = {86.7130126953125;103.75703430175781;14.005385398864746}
map145[38] = {82.0672607421875;103.49163818359375;19.433639526367188}
map145[39] = {51.078033447265625;102.50888061523438;30.30379295349121}
map145[40] = {38.82222366333008;105.16415405273438;-3.137477397918701}
map145[41] = {24.9451847076416;117.78792572021484;-25.566965103149414}
map145[42] = {23.613861083984375;117.88804626464844;-25.94683074951172}
map145[43] = {68.06996154785156;106.82506561279297;-52.18309783935547}
map145[44] = {64.62691497803;100.23136138916;49.59238433838}--雨林大蜡烛7
map145[45] = {-2.339399576187134;110.83828735351562;-51.326168060302734}--雨二右隐藏图传
map145[46] = {16.331905364990234;83.27985382080078;-59.292720794677734}
map145[47] = {15.063529968261719;83.54167938232422;-58.201744079589844}
map145[48] = {0.30925244092941284;86.03787994384766;-53.37364959716797}
map145[49] = {-0.132534459233284;85.27984619140625;-11.80449104309082}
map145[50] = {-17.430418014526367;85.59246063232422;-32.04246139526367}
map145[51] = {-23.197370529174805;86.63343048095703;-19.67546272277832}
map145[52] = {-30.497501373291016;93.98578643798828;15.459635734558105}
map145[53] = {-18.363168716430664;96.36527252197266;21.40069580078125}
map145[54] = {8.562887191772461;92.85916137695312;6.861584663391113}
map145[55] = {8.861498832702637;92.84227752685547;6.2610764503479}
map145[56] = {-8.16575813293;84.82319641113;-7.70112085342}--雨林大蜡烛8
map145[57] = {5.6106004715;90.33228302002;67.97341918945}--雨林大蜡烛9
map145[58] = {54.783382415771484;53.172725677490234;45.045841217041016} --进地下隐藏图
map145[59] = {64.17790222167969;78.7045669555664;-280.3084411621094}
map145[60] = {62.18318557739258;79.6751937866211;-282.1372985839844}
map145[61] = {59.560333251953125;80.93321990966797;-284.32342529296875}
map145[62] = {60.64497756958008;81.65766906738281;-286.2688903808594}
map145[63] = {62.088417053222656;80.181640625;-288.5353088378906}
map145[64] = {64.37218475341797;80.37665557861328;-288.42706298828125}
map145[65] = {63.24618148803711;80.11865997314453;-286.7288818359375}
map145[66] = {58.39265823364258;80.31573486328125;-285.74798583984375}
map145[67] = {58.92733383178711;80.07905578613281;-282.77215576171875}
map145[68] = {1.9772264957427979;121.20970153808594;-366.2894592285156}
map145[69] = {-54.39390563964844;132.31536865234375;-198.86729431152344}
map145[70] = {-54.85142135620117;133.37625122070312;-197.4264373779297}
map145[71] = {-56.311920166015625;132.38143920898438;-197.97927856445312}
map145[72] = {-53.421810150146484;132.1849822998047;-197.355712890625}
map145[73] = {-37.74326705932617;132.06466674804688;-196.08265686035156}
map145[74] = {-36.42042922973633;132.60928344726562;-198.64939880371094}
map145[75] = {-36.30714797973633;133.2963104248047;-195.36346435546875}
map145[76] = {-34.44172668457031;133.35594177246094;-192.1419219970703}
map145[77] = {-34.458065032958984;136.588134765625;-192.16578674316406}
map145[78] = {-33.32605743408203;134.7406005859375;-194.9884796142578}
map145[79] = {-33.91191482543945;134.53045654296875;-195.83694458007812}
map145[80] = {-55.29804992675781;210.12454223632812;-282.44921875} --出地下隐藏图
map145[81] = {0.32405272126197815;89.92810821533203;72.3334732055664}
map145[82] = {-0.4444327652454376;89.90643310546875;72.57901000976562}
map145[83] = {16.64647674560547;88.66852569580078;98.69983673095703}
map145[84] = {16.572080612182617;88.66676330566406;99.49711608886719}
map145[85] = {17.021774291992188;88.15483856201172;124.06153869628906} --进入最后一个图
map145[86] = {-79.54047393798828;153.28208923339844;154.57345581054688}
map145[87] = {-78.94271850585938;153.28500366210938;154.9042510986328}
map145[88] = {-75.4666976928711;134.5667266845703;175.70018005371094}
map145[89] = {-72.04358673095703;134.5403289794922;177.5090789794922}
map145[90] = {-72.08384704589844;134.54002380371094;176.40135192871094}
map145[91] = {-72.23743438720703;134.54017639160156;177.15916442871094}
map145[92] = {-82.86653137207031;134.62286376953125;212.78314208984375}
map145[93] = {-82.314453125;134.60362243652344;214.13357543945312}
map145[94] = {-93.75765228271484;136.18150329589844;225.76907348632812}
map145[95] = {-74.9751968383789;134.63119506835938;231.58958435058594}
map145[96] = {-74.8500747680664;135.36883544921875;231.59361267089844}
map145[97] = {-74.51042175292969;135.5564422607422;231.8947296142578}
map145[98] = {-70.24885559082031;144.30645751953125;228.92474365234375}
map145[99] = {-61.82099533081055;143.18617248535156;220.49241638183594}
map145[100] = {-62.36787033081055;143.25347900390625;220.5499267578125}
map145[101] = {-48.5467529296875;134.55447387695312;224.83169555664062}
map145[102] = {-35.92388153076172;137.29159545898438;159.37109375}
map145[103] = {-36.006526947021484;137.58192443847656;158.74874877929688}
map145[104] = {-20.55229949951172;134.6060333251953;198.91529846191406}
map145[105] = {-20.0629940032959;134.58514404296875;198.60350036621094}
map145[106] = {-23.59827995300293;135.05393981933594;221.4862518310547}
map145[107] = {-23.680377960205078;138.5477294921875;222.23402404785156}
map145[108] = {-24.57221031188965;135.56613159179688;248.86338806152344}
map145[109] = {-22.60648536682129;140.474853515625;248.05096435546875}
map145[110] = {-25.33759307861328;140.5669403076172;248.18655395507812}
map145[111] = {-15.998595237731934;134.65560913085938;165.26759338378906}
map145[112] = {-16.624065399169922;134.61756896972656;165.60130310058594}
map145[113] = {-10.267430305480957;134.98561096191406;137.3213348388672}
map145[114] = {-9.616111755371094;134.96241760253906;137.03253173828125}
map145[115] = {4.499170780181885;137.0609588623047;193.4308624267578}
map145[116] = {25.635286331176758;135.18475341796875;221.11959838867188}
map145[117] = {47.97397232055664;135.21202087402344;218.9741973876953}
map145[118] = {47.22796630859375;134.79750061035156;220.12098693847656}
map145[119] = {122.59532928466797;164.83050537109375;156.4632568359375}
map145[120] = {123.69145202636719;164.60533142089844;155.3358917236328}
map145[121] = {73.09493255615234;146.17198181152344;135.5219268798828}
map145[122] = {73.35997772216797;146.2117462158203;135.355712890625}
map145[123] = {90.20936584472656;138.64697265625;106.39176940917969}
map145[124] = {90.21089172363281;138.99139404296875;106.39201354980469}
map145[125] = {52.76134490966797;144.1767120361328;71.9513931274414}
map145[126] = {46.19350051879883;145.5747833251953;53.58612823486328}
map145[127] = {22.062753677368164;140.2030792236328;11.859474182128906}
map145[128] = {-11.509239196777344;138.42604064941406;86.55810546875}
map145[129] = {-12.850686073303223;138.45510864257812;87.70359802246094}
map145[130] = {-4.644314765930176;137.97227478027344;109.7209701538086}
map145[131] = {-7.68647241592;140.04997253418;127.28116607666}--雨林大蜡烛10
map145[132] = {-21.60939025879;139.92657470703;193.96231079102}--雨林大蜡烛11
map145[133] = {-22.947654724121094;141.0582275390625;247.35260009765625}
map145[134] = {-25.206703186035156;140.57957458496094;248.85723876953125}
map145[135] = {-23.81587791442871;140.19064331054688;221.75547790527344}
map145[136] = {-7.68647241592;140.04997253418;127.28116607666}
map145[137] = {-17.36788558959961;182.655517578125;402.27899169921875}--雨林终点传
map145[138] = {6.922121524810791;104.79105377197266;-11.49360466003418}
map145[139] = {15.409037590026855;110.54106903076172;-15.537741661071777}
map145[140] = {15.999205589294434;110.54115295410156;-16.237266540527344}
map145[141] = {-17.145689010620117;104.79113006591797;-4.9407219886779785}
map145[142] = {-11.329545974731445;104.79110717773438;9.67139720916748}
map145[143] = {-11.328648567199707;107.244873046875;9.671756744384766}
map145[144] = {-11.449389457702637;108.10690307617188;9.59756088256836}
map145[145] = {0.14755034446716309;116.27227783203125;0.005669080652296543}
map145[146] = {-9.062368392944336;108.5528564453125;68.39292907714844}-- 终点
map145[147] = {-8.1342191696167;108.5294189453125;68.8951187133789}
map145[148] = {8.553935050964355;109.94538879394531;70.1932144165039}
map145[149] = {18.91318130493164;107.57191467285156;84.9401626586914}
map145[150] = {19.448001861572266;107.6376724243164;84.95619201660156}
map145[151] = {-10.899876594543457;108.57688903808594;96.9708480834961}
map145[152] = {-10.544465065002441;109.09671783447266;98.14498901367188}
map145[153] = {-9.2841157913208;108.74539184570312;99.05055236816406}
map145[154] = {-11.118459701538086;109.48890686035156;98.3277816772461}
map145[155] = {0.22106818855;106.93251800537;97.13048553467}--雨林大蜡烛12
map145[156] = {4.75970983505;8.97922229767;503.04428100586}--cg


local map146 = {}
map146[1] =  {-44.76485443115;306.10290527344;22.63001441956}--霞谷大蜡烛1
map146[2] =  {-32.5977897644;306.44381713867;1.42672419548}--霞谷大蜡烛2
map146[3] =  {-126.42024230957031;267.9127197265625;-110.9380111694336} --霞谷一图
map146[4] =  {-102.90017700195312;260.3262023925781;-118.0130844116211}
map146[5] =  {-150.1409912109375;227.42660522460938;-226.35549926757812}
map146[6] =  {-92.7784652709961;255.78497314453125;-149.4920654296875}
map146[7] =  {-99.45975494384766;251.60369873046875;-165.87571716308594}
map146[8] =  {-102.31145477294922;249.99652099609375;-172.81903076171875}
map146[9] =  {-105.03742218017578;248.4278106689453;-179.75462341308594}
map146[10] = {-108.18315887451172;246.95169067382812;-186.786865234375}
map146[11] = {-111.28997039794922;245.33700561523438;-194.3887481689453}
map146[12] = {-121.5887680053711;240.14967346191406;-222.9306182861328}
map146[13] = {-135.12258911132812;198.6776885986328;-332.6072692871094}
map146[14] = {-64.95219421386719;125.24945068359375;-449.41656494140625}
map146[15] = {10.495227813720703;87.63804626464844;-454.79254150390625}
map146[16] = {67.37377166748047;75.73780822753906;-479.0435485839844}
map146[17] = {93.96745300292969;72.777099609375;-490.0045166015625}
map146[18] = {156.82485961914062;75.404052734375;-448.1068115234375}
map146[19] = {158.1422882080078;75.83087158203125;-447.03326416015625}
map146[20] = {159.2544403076172;75.79525756835938;-445.1490478515625}
map146[21] = {170.24581909179688;44.70857620239258;-487.2079772949219}
map146[22] = {173.2445526123047;44.67090606689453;-485.9928894042969}
map146[23] = {221.227294921875;44.77541732788086;-515.4072875976562}
map146[24] = {221.01309204101562;44.77378845214844;-519.5638427734375}
map146[25] = {220.1558837890625;44.778900146484375;-523.9267578125}
map146[26] = {190.63067626953125;44.87150955200195;-545.7380981445312}
map146[27] = {187.61534118652344;44.95772933959961;-547.1769409179688}
map146[28] = {184.00692749023438;44.9627685546875;-547.6751708984375}
map146[29] = {186.60269165039;48.10845947266;-526.18041992188}--霞谷大蜡烛3
map146[30] = {160.35694885254;45.13550949097;-531.51977539062}--霞谷大蜡烛4
map146[31] = {206.29270935058594;57.820106506347656;-604.9664916992188}--进天文台
map146[32] = {79.36969757080078;480.75244140625;24.32175636291504} --霞谷天文台
map146[33] = {98.67822265625;472.4227294921875;0.6960425972938538}
map146[34] = {115.02075958251953;477.31884765625;15.795729637145996}
map146[35] = {112.98121643066406;534.618408203125;-27.680063247680664}
map146[36] = {92.51227569580078;531.0150756835938;-50.79551696777344}
map146[37] = {94.76412200927734;560.6686401367188;-48.19013977050781}
map146[38] = {96.65079498291016;560.6677856445312;-46.88926696777344}
map146[39] = {105.88602447509766;558.6053466796875;-37.60352325439453}
map146[40] = {26.789644241333008;530.7363891601562;-38.58883285522461}
map146[41] = {17.987316131591797;507.2398376464844;-4.509195327758789}
map146[42] = {129.71376037597656;478.8153991699219;-71.6202621459961}
map146[43] = {105.38798522949219;478.8158264160156;-90.94287109375}
map146[44] = {122.71985626220703;480.69232177734375;-114.22059631347656}
map146[45] = {142.93162536621094;480.6924133300781;-98.37316131591797}
map146[46] = {156.2760467529297;485.6883850097656;-120.78195190429688}
map146[47] = {140.3731231689453;485.68829345703125;-132.05487060546875}
map146[48] = {155.37953186035156;495.34246826171875;-158.9115753173828}
map146[49] = {174.78553771972656;495.2890625;-143.97320556640625}
map146[50] = {57.4171257019;474.75738525391;56.47984695435}--霞谷大蜡烛5
map146[51] = {112.4807434082;474.06539916992;-68.50860595703}--霞谷大蜡烛6
map146[52] = {204.70770263671875;491.51055908203125;-205.14031982421875}--进飞行赛道
map146[53] = {189.9163055419922;1187.2681884765625;407.2931823730469} --飞行赛道起点
map146[54] = {185.0211639404297;1187.2738037109375;406.2121887207031}
map146[55] = {180.14523315429688;1187.25732421875;405.06890869140625}
map146[56] = {175.3258819580078;1187.263916015625;404.0194091796875}
map146[57] = {170.30996704101562;1187.2679443359375;402.7502746582031}
map146[58] = {193.13963317871094;1187.6915283203125;393.3636474609375}
map146[59] = {188.2845458984375;1187.260009765625;392.13275146484375}
map146[60] = {183.49317932128906;1187.25732421875;391.0440368652344}
map146[61] = {178.58836364746094;1187.25732421875;389.9449157714844}
map146[62] = {173.5875244140625;1187.25732421875;388.7275085449219}
map146[63] = {167.76588439941406;1186.6871337890625;390.9236755371094}--手动开门 等待15秒
map146[64] = {77.5286407470703;1076.035888671875;361.50336456298828}--拿个光之翼
map146[65] = {137;1017;-100}--云传
map146[66] = {54;155;-138}--终点动画
map146[67] = {36.95596694946;135.67933654785;-220.98320007324}--霞谷大蜡烛7
map146[68] = {79.19212341309;135.67930603027;-218.0965423584}--霞谷大蜡烛8
map146[69] = {55.65884017944336;135.15353393554688;-259.8964538574219} --终点动画时的两个蜡烛
map146[70] = {63.58772659301758;136.5470733642578;-263.9239196777344}
map146[71] = {60.74193572998047;137.8476104736328;-292.3225402832031}--进终点门
map146[72] = {9.360550880432129;141.43470764160156;-187.7853546142578} --冥想蜡烛开始
map146[73] = {11.365715026855469;141.4189453125;-188.91439819335938}
map146[74] = {9.462181091308594;141.41983032226562;-190.2531280517578}
map146[75] = {7.381904602050781;141.4210205078125;-189.07061767578125}
map146[76] = {7.996785640716553;141.41981506347656;-187.13475036621094}
map146[77] = {10.496150970458984;141.41973876953125;-186.9747772216797}
map146[78] = {9.255621910095215;138.3639678955078;-184.6250762939453} --冥想蜡烛结束
map146[79] = {-30.518871307373047;146.9903564453125;-149.07537841796875}
map146[80] = {-31.01263427734375;140.1071014404297;-151.1580810546875}
map146[81] = {-29.187597274780273;146.8710174560547;-136.1443634033203}
map146[82] = {-19.137134552001953;153.4862060546875;-127.01026916503906}
map146[83] = {-11.388839721679688;153.68475341796875;-117.98583984375}
map146[84] = {314.90731811523;173.38836669922;-783.63726806641}

--跑图-暮土

local map147 = {}
map147[1] =  {-70.51749420166016;66.21754455566406;-759.3367919921875}--墓土大蜡烛1 
map147[2] =  {-96.68830871582031;65.0652847290039;-776.2847290039062}
map147[3] =  {-97.19038391113281;62.81600570678711;-789.6600341796875}--墓土大蜡烛2
map147[4] =  {-210.83389282226562;43.8532829284668;-825.1362915039062}--进漩涡传
map147[5] =  {84.58333587646484;0.4887930750846863;321.476318359375}
map147[6] =  {82.22171020507812;0.6361188888549805;303.9442138671875}
map147[7] =  {47.68532943725586;0.5425735712051392;231.57481384277344}
map147[8] =  {31.781368255615234;0.8271701335906982;234.020751953125}
map147[9] =  {39.63096618652344;0.29112347960472107;234.0553436279297}
map147[10] = {86.39102172851562;0.29110628366470337;325.0981750488281}
map147[11] = {-31.7234992981;2.23189425468;243.71058654785}--墓土大蜡烛3
map147[12] = {7.297956466674805;0.09288870543241501;300.19677734375}
map147[13] = {-6.911025524139404;0.5780452489852905;294.1271057128906}
map147[14] = {-29.96484375;1.7772810459136963;238.7903594970703}
map147[15] = {-30.053510665893555;0.6779581308364868;234.59487915039062}
map147[16] = {-27.20009994506836;0.8510326147079468;235.60549926757812}
map147[17] = {-28.192222595214844;-0.023448331281542778;231.30191040039062}
map147[18] = {-29.5965576171875;0.518730103969574;229.1444091796875}
map147[19] = {-24.181713104248047;0.6942175030708313;215.09190368652344}
map147[20] = {-27.673227310180664;0.8092966675758362;216.30819702148438}
map147[21] = {-53.329036712646484;0.8884901404380798;220.55726623535156}
map147[22] = {-57.57217025756836;0.10154907405376434;227.09129333496094}
map147[23] = {-59.24860382080078;0.9662719964981079;230.25357055664062}
map147[24] = {-91.76660919189453;2.182464361190796;327.45355224609375}
map147[25] = {-78.54911804199219;8.32947063446045;165.12667846679688}
map147[26] = {-82.88870239258;9.85094451904;164.39083862305}-- 墓土大蜡烛4
map147[27] = {-80.01605224609375;9.457361221313477;160.79335021972656}
map147[28] = {-93.77214813232422;11.91988754272461;156.5588836669922}--进二图传
map147[29] = {70.05243682861328;90.65315246582031;259.2244567871094} 
map147[30] = {67.63260650634766;90.7204360961914;258.8702392578125} 
map147[31] = {44.14875793457031;90.38558197021484;232.5563507080078}  
map147[32] = {52.33485412597656;99.00350952148438;155.31607055664062} 
map147[33] = {40.88941955566406;95.00361633300781;120.1262435913086}
map147[34] = {47.50992202758789;93.41293334960938;143.01904296875}   
map147[35] = {42.86210632324219;90.07770538330078;231.43130493164062}
map147[36] = {36.06306457519531;93.42144012451172;140.0792999267578}
map147[37] = {40.19976806640625;94.80970001220703;121.72950744628906}
map147[38] = {64.20258331298828;66.70899963378906;-14.94819450378418} 
map147[39] = {80.08332061767578;71.84147644042969;-20.039281845092773} --- 
map147[40] = {45.47756576538086;89.67166137695312;227.90850830078125}
map147[41] = {49.61924362182617;69.51409149169922;-61.62223815917969}--墓土大蜡烛5
map147[42] = {85.78913879394531;65.72119903564453;-100.14730072021484}
map147[43] = {72.0611343383789;68.98323059082031;-157.65599060058594}
map147[44] = {44.40232849121;82.52998352051;-132.0393371582}--墓土大蜡烛6
map147[45] = {7.971547603607178;77.91605377197266;-142.2152862548828}
map147[46] = {-5.699362754821777;81.82476043701172;-123.96440124511719}
map147[47] = {-7.448570251464844;84.0191650390625;-127.59477233886719}
map147[48] = {-7.7204270362854;88.84687805175781;-132.92320251464844}
map147[49] = {0.5131586194038391;88.84307098388672;-134.4518585205078}
map147[50] = {38.06135177612305;69.32980346679688;-213.41641235351562}
map147[51] = {39.53430175781;70.68551635742;-220.12673950195}--墓土大蜡烛7
map147[52] = {192.6549835205078;68.13046264648438;-72.91191864013672}--进沉船
map147[53] = {-184.95497131347656;2.6513633728027344;485.43603515625}
map147[54] = {-179.4482879638672;4.183173179626465;491.1560363769531}
map147[55] = {-188.30636596679688;1.7212764024734497;477.6970520019531}
map147[56] = {-191.5103302001953;0.0935186892747879;437.64154052734375}
map147[57] = {-193.67445373535156;0.6370588541030884;400.0504455566406}
map147[58] = {-158.58485412597656;0.09282410144805908;377.59698486328125}
map147[59] = {-133.42332458496094;3.5071215629577637;417.37127685546875}
map147[60] = {-167.61940002441406;10.477231979370117;368.683837890625}
map147[61] = {-273.8460998535156;11.38762378692627;425.2352294921875}
map147[62] = {-288.9672546386719;18.411121368408203;420.174072265625}
map147[63] = {-287.4808654785156;28.822416305541992;404.7793273925781}
map147[64] = {-174.45077514648438;-0.023437267169356346;420.4639587402344}
map147[65] = {-189.7475128173828;0.5718942880630493;401.9970703125}
map147[66] = {-211.51133728027344;15.206034660339355;431.5143127441406} ----大蜡烛  
map147[67] = {-201.04747009277344;0.3845645487308502;433.1748046875}
map147[68] = {-269.3658142089844;5.283965587615967;428.672119140625}
map147[69] = {-269.2134094238281;7.550144195556641;422.776611328125}
map147[70] = {-291.4388732910156;30.838478088378906;405.02508544921875}
map147[71] = {-162.05456542969;7.41181182861;356.38223266602}--墓土大蜡烛8
map147[72] = {-349.27203369140625;34.950706481933594;387.2141418457031}--进古战场
map147[73] = {-213.20013427734;131.12268066406;-167.01449584961}--墓土大蜡烛9
map147[74] = {-49.45585632324219;104.3731460571289;-78.39041900634766}
map147[75] = {-185.26156616210938;121.75447082519531;-170.52597045898438}
map147[76] = {-215.11512756347656;141.1907958984375;-163.4281005859375}
map147[77] = {-244.9800567626953;119.35491180419922;-152.34176635742188}
map147[78] = {-228.95977783203125;102.30264282226562;-184.24244689941406}
map147[79] = {-251.5270233154297;101.23624420166016;-196.60752868652344}
map147[80] = {-231.3864288330078;100.58375549316406;-230.49464416503906}
map147[81] = {-270.6065979003906;105.22481536865234;-235.367431640625}
map147[82] = {-238.48216247558594;96.1323013305664;-285.8638916015625}
map147[83] = {-207.58657836914062;96.81498718261719;-304.279052734375}
map147[84] = {-275.43218994140625;84.69686889648438;-339.19384765625}
map147[85] = {-269.1346740722656;88.83450317382812;-368.968505859375}
map147[86] = {-225.3247833251953;83.31451416015625;-364.2699890136719}
map147[87] = {-217.3268737793;104.3557434082;-242.1534576416}--墓土大蜡烛10
map147[88] = {-289.4688415527344;93.0536117553711;-404.3544921875}--终点门
map147[89] = {2.5172619819641113;208.28602600097656;-2.3382880687713623}
map147[90] = {0.6634777784347534;208.26255798339844;-4.156835556030273}
map147[91] = {-3.2547483444213867;207.8109588623047;-1.532777190208435}
map147[92] = {0.2770621180534363;206.4495086669922;2.669926404953003}
map147[93] = {-100.19038391113281;62.81600570678711;-793.6600341796875}
map147[94] = {0.08378148079;202.90838623047;80.22185516357}
map147[95] = {-416.08380126953;12.07369232178;411.0588684082}--cg

--跑图-禁阁
local map148 = {}

map148[1] =  {-42.6407585144043;38.3612060546875;-98.20526123046875} --禁阁一层，进入右侧门
map148[2] =  {49.47584533691406;541.7752685546875;25.87529945373535}
map148[3] =  {69.59448242188,541.40093994141,27.65027618408}
map148[4] =  {72.85754394531,565.47186279297,-17.47369194031}
map148[5] =  {76.08060455322,563.00994873047,-23.10515213013}
map148[6] =  {72.93733978271,565.47320556641,-31.49273681641}
map148[7] =  {61.79039001465,551.71429443359,-37.71782302856}
map148[8] =  {75.95713043213,552.21374511719,-13.3358745575}
map148[9] =  {56.93070602417,552.21441650391,-18.62998008728}
map148[10] = {61.66952896118,543.85046386719,-41.39209368545}
map148[11] = {54.76568603516,543.84802246094,-41.38636779785}
map148[12] = {78.69750976562,554.70959472656,-31.58866119385}
map148[13] = {85.27835083008,554.71136474609,-31.59345626831}
map148[14] = {76.20945739746,541.38464355469,-10.92284202576}
map148[15] = {40.35205459595,541.86962890625,-25.08329963684} --出右门
map148[16] = {28.26111793518,37.39163208008,-134.52861022949}
map148[17] = {34.28949356079,42.328956604,-118.72557830811}
map148[18] = {38.79634094238,47.1720123291,-126.31859588623}
map148[19] = {31.71107292175,47.16427230835,-137.21899414062}
map148[20] = {6.91684961319,37.764503479,-70.84230041504}
map148[21] = {-5.76319360733,40.401512146,-32.668384552}
map148[22] = {-21.63892555237,42.0424041748,-1.71010291576}
map148[23] = {-46.57090377808,40.40052032471,-16.48282623291}
map148[24] = {-62.28732681274,41.82263183594,-12.90044879913}
map148[25] = {-60.73867034912,41.10559463501,22.90926742554}
map148[26] = {-0.9080491065979004;40.549259185791016;25.020217895507812}  --一楼大蜡烛 
map148[27] = {-21.98505210876465;78.67003631591797;-6.959120750427246}	--二楼大蜡烛
map148[28] = {21.35787582397,79.29556274414,6.68214130402}--禁阁二层
map148[29] = {11.27268409729,82.20293426514,21.91019821167}
map148[30] = {19.32908248901,82.73078155518,19.42357254028}
map148[31] = {40.81945800781,83.96297454834,38.4188079834}
map148[32] = {23.88597106934,83.90636444092,48.79845809937}
map148[33] = {-15.748322486877441;149.14781188964844;-35.37989807128906} --禁阁三层
map148[34] = {-3.2968742847442627;146.90927124023438;-30.131757736206055}
map148[35] = {-0.1043953374,214.60452270508,2.59286475182} --禁阁四层，传入四层
map148[36] = {-16.05261611938,164.30964660645,-48.09916687012}
map148[37] = {25.078054428100586;148.16799926757812;34.003509521484375}
map148[38] = {-38.91857528687,129.68870544434,9.5477372158}
map148[39] = {-44.272762298583984;140.26426696777344;11.441617012023926} --大蜡烛
map148[40] = {11.904129028320312;182.9726104736328;41.81214904785156}
map148[41] = {-5.22235155106,294.52462768555,-0.12603969872} --禁阁五层
map148[42] = {3.71660423279,294.91845703125,2.12295842171}
map148[43] = {-3.01484441757,295.54183959961,6.47273492813}
map148[44] = {6.21425771713,302.41970825195,47.98390579224}
map148[45] = {-10.96362018585,307.49496459961,58.38714599609}
map148[46] = {-1.83383011818,304.40658569336,58.78987121582}
map148[47] = {9.81625366211,306.41543579102,56.92166137695}
map148[48] = {-0.04365674778819084;310.6197204589844;69.89323425292969}
map148[49] = {9.14206600189209;303.6913146972656;51.21821594238281}
map148[50] = {8.72283935547,303.875,51.66994857788}

--跑图 暮土新图
local map149 = {}
map149[1] =  {137.88095092773438;119.04837036132812;343.8451843261719}
map149[2] =  {122.18896484375;124.07496643066406;372.4999694824219}
map149[3] =  {112.67527770996094;141.8485565185547;385.6139831542969}
map149[4] =  {160.58656311035156;124.66699981689453;323.5010070800781}
map149[5] =  {148.16986083984375;134.00479125976562;306.6022033691406}
map149[6] =  {105.6623764038086;116.26797485351562;462.2093505859375}
map149[7] =  {77.21073913574219;109.63763427734375;486.24798583984375}
map149[8] =  {42.10142135620117;108.92142486572266;501.30963134765625}
map149[9] =  {80.83300018310547;109.06256866455078;523.9567260742188}
map149[10] = {95.05298614501953;108.71585845947266;510.9013366699219}
map149[11] = {60.417152404785156;109.44475555419922;501.72869873046875}
map149[12] = {281.27691650390625;115.00640106201172;514.2384033203125}
map149[13] = {282.747314453125;116.07545471191406;531.7840576171875}
map149[14] = {300.4156799316406;122.49239349365234;522.384033203125}
map149[15] = {302.92791748046875;120.65113830566406;544.7518310546875}
map149[16] = {330.3966979980469;120.89114379882812;556.9222412109375}
map149[17] = {302.88494873046875;113.1510238647461;349.04803466796875}
map149[18] = {287.0790100097656;120.42900085449219;352.3727722167969}
map149[19] = {287.0426330566406;120.27155303955078;352.5234069824219}
map149[20] = {285.16473388671875;102.83990478515625;345.7569885253906}
map149[21] = {281.2799377441406;103.97232055664062;363.3799133300781}
map149[22] = {282.593994140625;104.8315200805664;366.3971862792969}
map149[23] = {-53.97894287109375;142.0953826904297;166.88401794433594}



FX = "Sec"

-- 自动跑图快的每步间隔时间间隔时间
local intervalSpeed = 300

-- 自动跑图慢的每步间隔时间间隔时间
local intervalSpeedSlow = 2000

function Sec()
	  T_CODE = "G13"
	  s_menu = gg.choice({
	  "	1. 自动跑全图 - 遇境开（快-适合独狼）",
	  "	2. 自动跑全图 - 遇境开（慢-适合带人）",
	  "	3. 手动跑全图 - 进图开（快-适合独狼）",
	  "	4. 手动跑全图 - 进图开（慢-适合带人）",
	  "	5. 查漏补缺     - 进图开（可独狼/带人）",
	  "	6. 中途退出脚本时恢复跑图",
	  "	7. 当前图烛光吸收（黑白屏传送的图不可收集）",
	  "	0. 返回主页",
	 }, nil, "自动跑图")
	  if s_menu == 1 then ZD(1,1,intervalSpeed,false) end
	  if s_menu == 2 then ZD(1,1,intervalSpeedSlow,false) end
	  if s_menu == 3 then SD(intervalSpeed,"手动跑全图-进图开（快）") FX = "SD" end
	  if s_menu == 4 then SD(intervalSpeedSlow,"手动跑全图-进图开（慢）") FX = "SD" end
	  if s_menu == 5 then BQ() end
	  if s_menu == 6 then 
		continueSchedule()
	  end
	  if s_menu == 7 then absorbCandlesLight() end
	  if s_menu == 8 then HOME() end
	  FX1 = nil
end


function QT()
	gg.sleep(8000)
end

function ZD(zdIdx,idx,speed,isContinue)
     gg.clearResults();
     gg.toast("开始自动跑图")
	 for i = zdIdx,6 do
	 
		if(i == 1) then
			 if(not isContinue) then
				TeleportA({11.33805503845;1.07;0.86344474554})--进晨岛门
				QT()
			 end
			 
			 PT1(idx,speed,true,i)
			 gg.toast("再看一会就得走了噢")
			 QT()
		elseif(i == 2) then
			 if(not isContinue) then
				 TeleportA({479.30438232421875;213.60411071777344;-1033.25390625})--传云野
				 QT()
			 end
			 PT2(idx,speed,true,i)
			 gg.toast("再看一会就得走了噢")
			 QT()
		elseif(i == 3) then
			 if(not isContinue) then
				 TeleportA({-132.80177307128906;108.91059875488281;41.570411682128906})--传雨林
				 QT()
			 end
			 PT3(idx,speed,true,i)
			 gg.toast("再看一会就得走了噢")
			 QT()
		elseif(i == 4) then
			 if(not isContinue) then
				 TeleportA({6.131390571594238;196.65492248535156;224.84304809570312})--传霞谷
				 QT()
			 end
			 PT4(idx,speed,true,i)
			 gg.toast("再看一会就得走了噢")
			 QT()
		elseif(i == 5) then
			 if(not isContinue) then
				 TeleportA({8.038422584533691;141.21749877929688;-197.4063262939453})--传墓土
				 QT()
			 end
			 PT5(idx,speed,true,i)
			 gg.toast("再看一会就得走了噢")
			 QT()
		elseif(i == 6) then
			 if(not isContinue) then
				 TeleportA({-1.7305372953414917;207.7891387939453;-66.75567626953125})--传禁阁
				 QT()
			 end
			 PT6(idx,speed,true,i)
		end
	 
	 end
     
     gg.sleep(2000)
     gg.toast("终于跑完了，累死我了~~")
     gg.setVisible(true)   
end

local sd_speed = nil
local sd_title = nil

function SD(speed,title)
  T_CODE = "DK"
  sd_speed = speed
  sd_title = title
  local sd_menu = gg.choice({
	  "	1. 晨岛",
	  "	2. 云野",
	  "	3. 雨林",
	  "	4. 霞谷", 
	  "	5. 暮土",
	  "	6. 禁阁",
	  "	0. 返回上页",
  }, nil, title)
  
  if sd_menu == 1 then PT1(1,speed,false,nil) end
  if sd_menu == 2 then PT2(1,speed,false,nil) end
  if sd_menu == 3 then PT3(1,speed,false,nil) end
  if sd_menu == 4 then PT4(1,speed,false,nil) end
  if sd_menu == 5 then PT5(1,speed,false,nil) end
  if sd_menu == 6 then PT6(1,speed,false,nil) end
  if sd_menu == 7 then FX = "Sec" Sec() end
  FX1 = nil
end

-- 霞谷滑雪标记
local hxCount = 0

function BQ()
  T_CODE = "BQQ"
  fz_menu2 = gg.choice({
  "🚤 失落方舟",
  "🎿 霞谷滑雪",
  "👯 云野八人",
  "🔝 返回上页",
 }, nil, "--进图开！！！--")
  if fz_menu2 == 1 then SLFZ() FX = "SLFZ" end
  if fz_menu2 == 2 then 
	  hxCount = 0
	  XGHX()
  end
  if fz_menu2 == 3 then YYBR() end
  if fz_menu2 == 4 then Sec() FX = "PT" end
   FX1 = nil
end

function SLFZ()
	T_CODE = "BQQ_FZ"
	fz_menu3 = gg.choice({
	  " 1. 进入旋涡",
	  " 2. 入口小船",
	  " 3. 自动收集(快 - 适合独狼)",
	  " 4. 自动收集(慢 - 适合带人)",
	  " 0. 返回上页",
	 }, nil, "--- 进图开！！！--")
	  if fz_menu3 == 1 then JRXW() end
	  if fz_menu3 == 2 then RKXC() end
	  if fz_menu3 == 3 then ZDSJ(intervalSpeed) end
	  if fz_menu3 == 4 then ZDSJ(intervalSpeedSlow) end
	  if fz_menu3 == 5 then FX = "BQ" BQ() end
	   FX1 = nil
end

function JRXW()
	TeleportA({-210.83389282226562;43.8532829284668;-825.1362915039062})
end

function RKXC()
	TeleportA({151.09547424316;1.08663058281;46.78000259399})
end


function ZDSJ(speed)
	gg.toast("开始自动收集，3秒后开始..")
	gg.sleep(3000)
	for i = 1, #map149 do
		TeleportA(map149[i])
	    gg.sleep(speed)
	end
	-- g()
	gg.toast("🤔惊喜吗？已经结束了哦！")
end






local isOpenRoom = false
function XGHX()
	if (not isOpenRoom) then
		TeleportA({290.24816894531;39.45797729492;-527.30267333984})
		isOpenRoom = true
		gg.toast("开门后再点击")
	elseif (isOpenRoom) then
		TeleportA({208.15991210938,617.72698974609,-447.23425292969})
		gg.sleep(5000)
		TeleportA({256.20028686523,585.98559570312,-564.76477050781})
		gg.sleep(5000)
		TeleportA({54;155;-138})
		isOpenRoom = false
		gg.toast("滑雪已完成~")
	end
end

function YYBR()
	TeleportA({78.14214324951,160.35305786133,67.12189483643})
	gg.toast("进入时等待8秒..")
	gg.sleep(8000)
	TeleportA({-52.46832275390625;180.03219604492188;324.8914489746094}) --传入蝴蝶门
	gg.sleep(8000)
	TeleportA({-0.0903831273317337;21.962921142578125;0.11890526860952377})
	gg.toast("功能已完成，请手动点火！")
end



local xxx = 0
local yyy = 0
local zzz = 0
local t_speed = 4000


local candlesLighted = false
local candlesLightedList = {}
--- 点蜡烛
function lightCandles()
    gg.setVisible(false)
    gg.clearResults()
	
	if(not candlesLighted) then
	
		gg.setRanges(gg.REGION_C_ALLOC)
		gg.searchNumber("3267887104", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
		local count = gg.getResultCount()
		if count ~= 0 then
			local jq = gg.getResults(count)
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
			for i=1,320 do
				lz[i] = {}
				lz[i].address = lzdz + i * 448
				lz[i].flags = gg.TYPE_FLOAT
				lz[i].value = 1
				lz[i].freeze = true
			end
			gg.addListItems(lz)
			
			candlesLighted = true
			candlesLightedList = lz
			gg.toast("蜡烛已全部点燃！")
		else
			candlesLighted = false
			gg.toast("获取蜡烛地址失败！")
		end
		
	else
		
		-- 取消点燃蜡烛，将所有更改后的地址还原
		if(candlesLightedList ~= nil and #candlesLightedList > 0) then
			gg.clearResults()
			for i,v in pairs(candlesLightedList) do
				v.freeze = false
			end
			gg.addListItems(candlesLightedList)
		end
		
		candlesLighted = false
		gg.toast("已取消蜡烛自动点燃！")
		
	end
    
    gg.clearResults()
end


local flowersLighted = false
local flowersLightedList = {}
--- 点花
function lightFlowers()
    gg.setVisible(false)
	
	if(not flowersLighted) then
		
		gg.clearResults()
		gg.setRanges(gg.REGION_C_ALLOC)
		gg.searchNumber("1133903872", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
		local count = gg.getResultCount()
		if count ~= 0 then
			local jq = gg.getResults(count)
			local tmp = {}
			for k, v in pairs(jq) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address - 4
				tmp[#tmp].flags = gg.TYPE_DWORD
			end
			tmp = gg.getValues(tmp)
			for k, v in pairs(tmp) do
				if v.value == 3 then
					jq[1] = tmp[k]
					break
				end
			end
			local dz = jq[1].address
			dhdz = dz + 4
			local dh = {}
			for i=1,245 do
				dh[i] = {}
				dh[i].address = dhdz + i * 8
				dh[i].flags = gg.TYPE_FLOAT
				dh[i].value = '0'
				dh[i].freeze = true
			end
			gg.addListItems(dh)
			
			flowersLightedList = dh
			flowersLighted = true
			gg.toast("爆花成功！")
		else
			flowersLighted = false
			gg.toast("获取大花地址失败！")
		end
		
	else
		
		-- 取消点燃蜡烛，将所有更改后的地址还原
		if(flowersLightedList ~= nil and #flowersLightedList > 0) then
			gg.clearResults()
			for i,v in pairs(flowersLightedList) do
				v.freeze = false
			end
			gg.addListItems(flowersLightedList)
		end
		
		flowersLighted = false
		gg.toast("已取消自动爆花！")
	end
	
    
    gg.clearResults()
end

-- 吸收烛火
function absorbCandlesLight()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1080033280", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
    local count = gg.getResultCount()
    if count ~= 0 then
        local jq = gg.getResults(count)
        local tmp = {}
        local zg = {}
        for k, v in pairs(jq) do
            tmp[#tmp + 1] = {}
            tmp[#tmp].address = v.address +8
            tmp[#tmp].flags = gg.TYPE_FLOAT
        end
        tmp = gg.getValues(tmp)
        for k, v in pairs(tmp) do
            if v.value == -1 then
                zg[#zg+1] = {}
                zg[#zg].address = v.address -8
                zg[#zg].flags = gg.TYPE_FLOAT
                zg[#zg].value = "3.4e+38"
            end
        end
        zg = gg.setValues(zg)
    else
        gg.toast("获取烛光地址失败")
    end
    gg.clearResults()
    gg.toast("吸收烛光成功")
end

-------------------------------------------2020-06-26 东街猫儿添加

local variableStorePath = "/sdcard/gg_script_params.lua"

-- 继续跑图
function continueSchedule()
	-- 加载参数
	local params = assert(loadfile(variableStorePath))()
	if(params ~= nil) then
		
		local funName = params.funName
		local speed = params.speed
		local isAuto = params.isAuto
		local idx = params.idx
		local mapNo = params.mapNo
		
		if(funName ~= nil and speed ~= nil and idx ~= nil and isAuto ~= nil) then
			local fun = nil
			if(not isAuto) then
				-- PT1(idx,speed,isAuto,mapNo)
				fun = funName .. "(" .. tostring(idx) .. "," .. tostring(speed) .. "," .. "false,nil)"
			elseif(isAuto and (mapNo ~= nil or mapNo ~= 0)) then
				-- ZD(zdIdx,idx,speed)
				fun = "ZD" .. "(" .. tostring(mapNo) .. "," .. tostring(idx) .. "," .. tostring(speed) .. ",true)"
			else
				gg.toast("继续跑图失败，原因可能是自动跑图时所在图编号记录失败~")
			end
			-- gg.alert(fun)
			load(fun)()
		else
			gg.toast("继续跑图失败，原因可能是退出脚本时进度保存失败~")
		end
		
	else
		gg.toast("继续跑图失败，原因可能是未在跑图中退出~")
	end
	
end

-- 保存进度
function saveSchedule(funName,idx,speed,isAuto,mapNo)
	
	local params = {}
	params.funName = funName
	params.speed = speed
	params.isAuto = isAuto
	params.idx = idx + 1
	params.mapNo = mapNo
	
	gg.saveVariable(params, variableStorePath)
	gg.toast("进度保存完成~")
	gg.sleep(1000)
end



local waitTime = 3000

--跑图-晨岛
function PT1(idx,speed,isAuto,mapNo)
	freeze_time = speed
	gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
	gg.sleep(waitTime)
	for i = idx,#map143 do
		TeleportA(map143[i])
		gg.toast("瞬移晨岛蜡烛 [" .. i .. "] 完成")
	    gg.sleep(freeze_time)
	end
	saveSchedule("PT1",1,speed,isAuto,mapNo)
    gg.toast("这里 似曾相识吗？")
   gg.clearResults()
end



--跑图-云野
function PT2(idx,speed,isAuto,mapNo)
	local funName = "PT2"
	freeze_time = speed
	gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
	gg.sleep(waitTime)
	for i = idx, #map144 do
		TeleportA(map144[i])
		gg.toast("瞬移云野蜡烛 [" .. i .. "] 完成")
		  -- 保存进度
		  if(i == 2 or i == 14 or i == 28 or i == 30 or i == 42 or i == 62 or i == 64 or i == 69 or i == 73) then
			  saveSchedule(funName,i,speed,isAuto,mapNo)
			  -- gg.toast("i==" .. tostring(i))
		  end
		  if i == 14 then
		      freeze_time = 10000
		      gg.toast("白屏~白屏~白屏~")
		  elseif i == 28 then
		      freeze_time = 10000
		      gg.toast("恭喜你没有白屏")
		  elseif i == 30 then
		      freeze_time = 10000
		      gg.toast("这次可不会侥幸了哦~")
		  elseif i == 42 then
		      freeze_time = 10000
		      gg.toast("啥手机这么厉害啊~（有动画请跳过...）")
		  elseif i == 62 then
		      gg.toast("想等一下下~~~~")
			  freeze_time = 3000
		      -- 原自动吸收，现关闭 g()
		  elseif i == 64 then
		      freeze_time = 10000
		      gg.toast("请给八人门个面子，黑屏一下")
		  elseif i == 69 then
		      freeze_time = 10000
		      gg.toast("看来我已经拦不住你了~~")
		  elseif i == 73 then
		      freeze_time = 10000
		      gg.toast("下次来的时候你必卡qwq")
		  else
		      freeze_time = speed
		  end	
		gg.sleep(freeze_time)
    end
	gg.toast("云野跑完啦~")
	gg.clearResults()
end
		              



--跑图-雨林
function PT3(idx,speed,isAuto,mapNo)
	local funName = "PT3"
	freeze_time = speed
	gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
	gg.sleep(waitTime)
	for i = idx, #map145 do
		TeleportA(map145[i])
		gg.toast("瞬移雨林蜡烛 [" .. i .. "] 完成")
		  -- 保存进度
		  if(i == 1 or i == 4 or i == 6 or i == 16 or i == 45 or i == 58 or i == 80 or i == 85 or i == 120 or i == 137) then
			  saveSchedule(funName,i,speed,isAuto,mapNo)
		  end
		  if i == 6 then
		      freeze_time = 7000
		      gg.toast("请跳过动画...")
		  elseif i == 16 then
			  gg.toast("传不进就往后跑")
		      freeze_time = 10000
		  elseif i == 45 then
		      freeze_time = 10000
		      gg.toast("黑屏~黑屏~黑屏~")
		  elseif i == 58 then
		      freeze_time = 10000
		      gg.toast("黑屏我也救不了你老老实实跑吧")
		  elseif i == 80 then
		      freeze_time = 10000
		      gg.toast("你手机这么好不如送我吧")
		  elseif i == 85 then
		      freeze_time = 10000
		      gg.toast("不知道说点啥，有动画请跳过..")
		  elseif i == 137 then
		      freeze_time = 10000
		      gg.toast("小黑屋play♂")
		  else
		      freeze_time = speed
		  end
        gg.sleep(freeze_time)
    end
  
gg.toast("您点的长发美女已到账")
gg.clearResults()
end




--跑图-霞谷
function PT4(idx,speed,isAuto,mapNo)
	local funName = "PT4"
	freeze_time = speed
	gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
	gg.sleep(waitTime)
	for i = idx, #map146 do
		TeleportA(map146[i])
		gg.toast("瞬移霞谷蜡烛 [" .. i .. "] 完成")
		  -- 保存进度
		  if(i == 1 or i == 31 or i == 63 or i == 71) then
			  saveSchedule(funName,i,speed,isAuto,mapNo)
		  end
		  if i == 31 then
		      freeze_time = 10000
		      gg.toast("前往天文台中...")
		  elseif i == 52 then
		      freeze_time = 12000
		      gg.toast("梦开始的地方.")
		  elseif i == 63 then
		      freeze_time = 20000
		      gg.toast("请你优雅地坐下~")
		  elseif i == 65 then
		      freeze_time = 7000
		      gg.toast("没想到吧")
		  elseif i == 66 then
		      freeze_time = 45000
		      gg.toast("来拿蜡烛")
		  elseif i == 71 then
			  freeze_time = 10000
		      gg.toast("终点到啦~")
		  elseif i == 83 then
			  gg.toast("看着我的眼睛，你猜下一步我要带你去哪~~")
		      freeze_time = 5000
		  else
		      freeze_time = speed
		  end
		gg.sleep(freeze_time)
    end
gg.toast("看到了吗？你就像那天上的星星一样漂亮~")
gg.clearResults()
end


--跑图-墓土
function PT5(idx,speed,isAuto,mapNo)
	local funName = "PT5"
	freeze_time = speed
	gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
	gg.sleep(waitTime)
	for i = idx, #map147 do
		TeleportA(map147[i])
		gg.toast("瞬移墓土蜡烛 [" .. i .. "] 完成")
		  -- 保存进度
		  if(i == 4 or i == 28 or i == 52 or i == 72 or i == 76 or i == 88) then
			  saveSchedule(funName,i,speed,isAuto,mapNo)
		  end
		  
		  if i == 4 then
			  freeze_time = 50000
			  gg.toast("啊我怎么被卷走了")
		  elseif i == 28 then
			  freeze_time = 10000
			  gg.toast("前方有只小宠物~")
		  elseif i == 52 then
			  freeze_time = 28000
			  gg.toast("进不进的来得看人品")
		  elseif i == 72 then
			  freeze_time = 20000
			  gg.toast("出不出的去也得看人品")
		  elseif i == 76 then
			  freeze_time = 3000
			  gg.toast("就快跑完了")
		  elseif i == 88 then
			  gg.toast("到终点了哦~~~~")
			  freeze_time = 9000
		  elseif i == 94 then
			  freeze_time = 5000
		  else
			  freeze_time = speed
		  end
		  gg.sleep(freeze_time)
    end
	gg.toast("好累~多陪她跑跑图，看看风景才是！（这样我就能多休息会儿啦~😝😝😝）")
gg.clearResults()
end

--跑图-禁阁
function PT6(idx,speed,isAuto,mapNo)
	local funName = "PT6"
    gg.toast(tostring(waitTime/1000) .. "秒后即将开始跑图，有动画请手动跳过...")
    gg.sleep(waitTime)
     -- g()
    for i = idx, #map148 do
		TeleportA(map148[i])
		-- 保存进度
		if(i == 3 or i == 15 or i == 35 or i == 49) then
			saveSchedule(funName,i,speed,isAuto,mapNo)
		end
		if (i == 1) then
			gg.toast("正在进入右侧地下隐藏图-（此刻，🤔你是否担心会封号？）")
		    gg.sleep(10000)
		    -- g()
		    gg.toast("😆当然会被封号的~")
		elseif (i == 3) then
		    gg.sleep(4000)
			gg.toast("😝开玩笑啦~")
		elseif (i == 15) then
			gg.toast("正在出地下隐藏图-（😉但是不能保证百分百不封号哦~）")
		    gg.sleep(10000)
		elseif (i == 35) then
			gg.toast("四层，有动画请手动点击跳过-（🤔现在还担心吗？）")
		    gg.sleep(10000)
		elseif (i == 49) then
			gg.toast("😉但有一点我能肯定的是 这样跑图是找不到女朋友的~😝😝😝")
			gg.sleep(5000)
		else 
			--g()
			gg.sleep(speed)
		end
    
    end
gg.toast("本次脚本旅途结束，欢迎下次再来~~~~")
gg.clearResults()
end
--跑图--


--返回上层
function HOME()
  Main()
end

--退出
function Exit()
  os.exit()
end


function firstMain()
	gg.setVisible(false)
	
	local printStr =               "本脚本整合各开发者较好和实用的功能和Bug修复，"
	printStr = printStr .. "\n" .. "如果在执行过程中有错误等，可以联系我，"
	printStr = printStr .. "\n" .. "解决情况看是否有空."
	printStr = printStr .. "\n" .. "版本：" .. VERSION
	printStr = printStr .. "\n" .. "最后修改：" .. LAST_MODIFY_TIME
	printStr = printStr .. "\n"
	printStr = printStr .. "\n" .. "【注：本脚本仅供学习，请勿倒卖或做商业用途，后果引起的法律责任与本人无关！】"
	local alertMsg = gg.alert(printStr,"同意注意项并进入","不同意注意项并退出")
	if(alertMsg == nil or alertMsg == 2 or alertMsg == 0) then
		Exit()
	elseif(alertMsg == 1) then
		hqzb()
		Main()
	end
end

firstMain()


while true do
	if gg.isVisible(true) then
		gg.setVisible(false)
		
		--重置先祖页面停留
		if(T_CODE == "") then Main()
		elseif(T_CODE == "G1") then A()
		elseif(T_CODE == "G2") then B()
		elseif(T_CODE == "G3") then C()
		elseif(T_CODE == "G4") then D()
		elseif(T_CODE == "G5") then E()
		elseif(T_CODE == "G6") then F()
		elseif(T_CODE == "G7") then G()
		elseif(T_CODE == "G8") then H()
		elseif(T_CODE == "G9") then I()
		elseif(T_CODE == "G10") then J()
		elseif(T_CODE == "G11") then K()
		elseif(T_CODE == "G12") then L()
		elseif(T_CODE == "G13") then Sec()
		elseif(T_CODE == "G14") then collecteWingsOfLlight()
		
		
		elseif(T_CODE == "L1") then L1()
		elseif(T_CODE == "L2") then L2()
		elseif(T_CODE == "L3") then L3()
		elseif(T_CODE == "L4") then L4()
		elseif(T_CODE == "L5") then L5()
		elseif(T_CODE == "L6") then L6()
		
		elseif(T_CODE == "DK") then SD(sd_speed,sd_title)
		elseif(T_CODE == "DM") then i()
		elseif(T_CODE == "BQQ") then BQ()
		
		elseif(T_CODE == "BQQ_FZ") then SLFZ() 
		elseif(T_CODE == "P1") then rolePositionMenu() 
		elseif(T_CODE == "U1") then unlockHair()
		elseif(T_CODE == "UTS") then unlockTravelSpirit()
		
		end
		
		
		
		
	end
end

