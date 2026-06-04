

local resultCount = 0
local result = {}
local zero = {}
local data = {}
local tmp = {}
local energy = {}
local energy_status = false
local mFreeze1 = false
local mFreeze2 = false
local xyz = {}

function readValue(address)
	local Orange = {}
	Orange[1] = {}
	Orange[1].address = address
	Orange[1].flags = gg.TYPE_DWORD
	Orange = gg.getValues(Orange)
	return Orange[1].value
end

function get_zero()
	gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(4)
  gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD)
  gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
  resultCount = gg.getResultCount()
  if resultCount == 0 then
    gg.toast("人物坐标获取失败")
    os.exit()
  end
  result = gg.getResults(resultCount)

  local tmp = {}
  for i, v in ipairs(result) do
    tmp[#tmp+1] = {}
    tmp[#tmp].address = v.address +148
    tmp[#tmp].flags = gg.TYPE_DWORD
  end

  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value > 3000 and v.value <4000 then
      result[1] = tmp[i]
      break
    end
  end

  zero = {}
  zero[1] = {}
  zero[1].address = result[1].address + 20
  zero[1].flags = gg.TYPE_FLOAT
  zero = gg.getValues(zero)
  zero = zero[1]
  gg.clearResults()
  gg.toast("人物坐标获取完毕")
  gg.sleep(2800)
  gg.toast("再点一次图标开始使用吧✨")
end




nl_flag = 0
function wxnl()
	gg.setVisible(false)
    gg.toast("请不要动哦！！")
    if nl_flag ~= 1 then
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("256", gg.TYPE_DWORD)
      gg.refineNumber("256", gg.TYPE_DWORD)
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
        gg.addListItems(wxfpy)
        gg.clearResults()
        gg.toast("⚡无限能量开启⚡")
        nl_flag = 1
      end
    else
      gg.toast("⚡无限能量关闭⚡")
      wxfpy[1].freeze = false
      gg.addListItems(wxfpy)
      nl_flag = 0
    end
end


function Teleport(xyz)
	tmp = {}
	x = xyz[1]
    z = xyz[2]
    y = xyz[3]
	
	tmp[1] = {}
	tmp[1].address = zero.address + 4
    tmp[1].flags = 16
    tmp[1].value = x
	
	tmp[2] = {}
	tmp[2].address = zero.address + 8
    tmp[2].flags = 16
    tmp[2].value = z
	
	tmp[3] = {}
	tmp[3].address = zero.address + 12
    tmp[3].flags = 16
    tmp[3].value = y
	
	gg.setValues(tmp)
end

wxnl()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1,067,909,120", gg.TYPE_DWORD)
gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
resultCount = gg.getResultCount()
if resultCount == 0 then
	gg.toast("人物坐标获取失败")
	os.exit()
end
result = gg.getResults(resultCount)

tmp = {}
for i, v in ipairs(result) do
	tmp[#tmp+1] = {}
	tmp[#tmp].address = v.address +108
	tmp[#tmp].flags = gg.TYPE_DWORD
end

tmp = gg.getValues(tmp)
for i, v in ipairs(tmp) do
	if v.value == 1 then
		result[1] = tmp[i]
		break
	end
end

get_zero()
gg.clearResults()



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
map2[1][6] = {-359.2660827636719;136.53712463378906;124.91087341308594}
map2[1][7] = {240.63108825684;93.97290802002;205.18423461914}
map2[1][8] = {78.38864135742;1.11585950851;324.43688964844}
map2[1][9] = {-20.48673057556;14.3434305191;383.11749267578}
map2[1][10] = {94.44817352295;10.68293190002;362.20639038086}
map2[1][11] = {101.73799133301;-0.11255399883;334.26434326172}
map2[1][12] = {61.60593414307;18.4962978363;273.91235351562}
map2[1][13] = {63.6467628479;94.64176940918;308.23196411133}
map2[1][14] = {-146.69093322754;80.35589599609;119.04694366455}
map2[1][15] = {302.2274169921875;174.009521484375;-40.234676361083984}
map2[1][16] = {27.35553359985;184.77207946777;278.81311035156}
map2[1][17] = {101.27056884766;181.26351928711;257.22482299805}
map2[1][18] = {66.5023727417;186.11111450195;376.91757202148}
map2[1][19] = {-19.33318710327;58.91622924805;27.37077331543}
map2[1][20] = {137.93855285645;266.59573364258;478.81997680664}
map2[1][21] = {146.46572875977;304.30899047852;537.32904052734}
map2[1][22] = {290.13339233398;200.00207519531;178.79241943359}
map2[1][23] = {348.18463134766;197.88877868652;111.59169006348}

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
map6[1][7] = {-0.35613438487;303.56619262695;58.07741546631}

--伊甸
local map7 = {}
local gdCount7 = 0
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
  menu = gg.choice({
  "1. 遇境 - 瞬移⚡",
  "2. 晨岛 - 瞬移⚡",
  "3. 云野 - 瞬移⚡",
  "4. 雨林 - 瞬移⚡",
  "5. 霞谷 - 瞬移⚡",
  "6. 暮土 - 瞬移⚡",
  "7. 禁阁 - 瞬移⚡",
  "8. 暴风眼 - 瞬移⚡",
  "9. 彩蛋 - 瞬移⚡",
  "10. 查漏补缺⭐其他功能✨",
  "11. 更改背饰(自慰)🔥",
  "🔥整 图 烛 火 吸 收🔥",
  " 退    出    脚    本"
 }, nil, "一方瞬移脚本二改 --- Ver0.10.5.①")
  if menu == 1 then J() end
  if menu == 2 then A() end
  if menu == 3 then B() end
  if menu == 4 then C() end
  if menu == 5 then D() end
  if menu == 6 then E() end
  if menu == 7 then F() end
  if menu == 8 then G() end
  if menu == 9 then H() end
  if menu == 10 then I() end
  if menu == 11 then K() end
  if menu == 12 then M() end
  if menu == 13 then Exit() end
end

--遇境瞬移
function J()
   G10 = 1
  menu10 = gg.multiChoice({
  "1. 遇境 - 小黑屋",
  "2. 遇境 - 观星台",
  "0. 返回主页"
  }, nil, "遇境 - 瞬移")
  if menu10 == nil then else
  if menu10[1] == true then J1() end
  if menu10[2] == true then J2() end
  if menu10[3] == true then HOME() end end
end

--遇境小黑屋
function J1()
	Teleport({798.98095703125 ;0.22667610645;-0.33975163102})
	gg.toast("瞬移 [遇境 - 小黑屋] 完成")
end

--遇境观星台
function J2()
	Teleport({1.07697141171;0.8221578598;-0.33868104219})
	gg.toast("瞬移 [遇境 - 观星台] 完成")
end


--晨岛
function A()
  G1 = 1
  menu1 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 晨岛 - 终点光圈",
	"4. 晨岛 - CG图",
    "0. 返回主页"
  }, nil, "晨岛 - 瞬移")
  if menu1 == nil then else
  if menu1[1] == true then a1() end
  if menu1[2] == true then a2() end
  if menu1[3] == true then a3() end
  if menu1[4] == true then a4() end
  if menu1[5] == true then HOME() end end
end

--晨岛光翼[上一个]
function a1()
	if gdCount1 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount1 = gdCount1 - 1
		xyz = map1[1][gdCount1]
		Teleport(xyz)
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
		Teleport(xyz)
		gg.toast("瞬移晨岛光翼 [" .. gdCount1 .. "] 完成")
	end
end

--晨岛CG图
function a4()
	Teleport({118.10299682617;0.97198873758;-1733.97021484375})
	gg.toast("瞬移 [晨岛 - CG图] 完成")
end

--晨岛终点光圈
function a3()
	Teleport({156.29658508301;103.52576446533;-293.6558227539})
	gg.toast("瞬移 [晨岛 - 终点光圈] 完成")
end


--云野
function B()
  G2 = 1
  menu2 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "3. 云野 - 终点光圈",
	"4. 云野 - CG图",
    "0. 返回主页"
  }, nil, "云野 - 瞬移")
  if menu2 == nil then else
  if menu2[1] == true then b1() end
  if menu2[2] == true then b2() end
  if menu2[3] == true then b5() end
  if menu2[4] == true then b6() end
  if menu2[5] == true then HOME() end end
end

--云野光翼[上一个]
function b1()
	if gdCount2 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount2 = gdCount2 - 1
		xyz = map2[1][gdCount2]
		Teleport(xyz)
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
	if gdCount2 == 23 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount2 = gdCount2 + 1
		if gdCount2 == 4 and map2_right_in ~= 1 then
			Teleport({-9.7918510437;165.37245178223;-5.74012947083})
			gg.toast("已瞬移至 [云野右侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_right_in = 1
			return 0
		end
		if gdCount2 == 16 and map2_right_out ~= 1 then
			Teleport({-104.2032699585;184.77220153809;172.62110900879})
			gg.toast("已瞬移至 [云野右侧隐藏图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_right_out = 1
			return 0
		end
		if gdCount2 == 19 and map2_eight_in ~= 1 then
			Teleport({-49.0882682800293;182.07447814941406;323.6031799316406})
			gg.toast("已瞬移至 [云野八人图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_in = 1
			return 0
		end
		if gdCount2 == 20 and map2_eight_out ~= 1 then
			Teleport({31.82697105408;42.34567260742;0.20620749891})
			gg.toast("已瞬移至 [云野八人图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_out = 1
			return 0
		end
		if gdCount2 == 22 and map2_left_in ~= 1 then
			Teleport({157.29043579102;200.01664733887;226.44515991211})
			gg.toast("已瞬移至 [云野左侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_left_in = 1
			return 0
		end
		xyz = map2[1][gdCount2]
		Teleport(xyz)
		gg.toast("瞬移云野光翼 [" .. gdCount2 .. "] 完成")
	end
end


--新图光翼[上一个]
function b3()
	if ngdCount2 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		ngdCount2 = ngdCount2 - 1
		xyz = map2[2][ngdCount2]
		Teleport(xyz)
		gg.toast("瞬移云野新图光翼 [" .. ngdCount2 .. "] 完成")
	end
end

--新图光翼[下一个]
function b4()
	if ngdCount2 == 9 then
		gg.toast("没有下一个瞬移坐标了")
	else
		ngdCount2 = ngdCount2 + 1
		xyz = map2[2][ngdCount2]
		Teleport(xyz)
		gg.toast("瞬移云野新图光翼 [" .. ngdCount2 .. "] 完成")
	end
end


local map3_main1 = 0 --主地图入口1
local map3_right1 = 0 --右侧隐藏图入口
local map3_right2 = 0 --管道入口
local map3_right3 = 0 --管道出口
local map3_right4 = 0 --右侧隐藏图出口
local map3_main2 = 0 --主地图入口2

--云野CG
function b6()
	Teleport({-529.02185058594;8.60619068146;-213.8217010498})
	gg.toast("瞬移 [云野 - CG] 完成")
end

--云野终点光圈
function b5()
	Teleport({-112.39767456054688;88.78236389160156;42.43897247314453})
	gg.toast("瞬移 [云野 - 终点光圈] 完成")
end

--雨林
function C()
  G3 = 1
  menu3 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 雨林 - 终点",
	"4. 雨林 - CG图",
    "0. 返回主页"
  }, nil, "雨林 - 瞬移")
  if menu3 == nil then else
  if menu3[1] == true then c1() end
  if menu3[2] == true then c2() end
  if menu3[3] == true then c3() end
  if menu3[4] == true then c4() end
  if menu3[5] == true then HOME() end end
end

--雨林光翼[上一个]
function c1()
	if gdCount3 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount3 = gdCount3 - 1
		xyz = map3[1][gdCount3]
		Teleport(xyz)
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
			Teleport({28.37304496765;98.56972503662;-113.70115661621})
			gg.toast("已瞬移至 [雨林主地图入口1] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_main1 = 1
			return 0
		end
		if gdCount3 == 7 and map3_right1 ~=1 then
			Teleport({6.97025537491;111.52809143066;-61.51174545288})
			gg.toast("已瞬移至 [雨林右侧隐藏图入口] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_right1 = 1
			return 0
		end
		if gdCount3 == 9 and map3_right2 ~=1 then
			Teleport({54.73643493652;72.44387817383;43.95704650879})
			gg.toast("已瞬移至 [雨林隐藏图管道入口] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_right2 = 1
			return 0
		end
		if gdCount3 == 13 then
			if map3_right3 ~=1 then
				Teleport({-64.44444274902;210.3430480957;-285.0309753418})
				gg.toast("已瞬移至 [雨林隐藏图管道出口] ，请手动进入")
				gdCount3 = gdCount3 - 1
				map3_right3 = 1
				return 0
			end
			if map3_right4 ~=1 then
				Teleport({16.11902427673;88.39250183105;122.1976776123})
				gg.toast("已瞬移至 [雨林右侧隐藏图出口] ，请手动进入")
				gdCount3 = gdCount3 - 1
				map3_right4 = 1
				return 0
			end
		end
		if gdCount3 == 16 and map3_main2 ~=1 then
			Teleport({-18.18656158447;182.64154052734;402.62902832031})
			gg.toast("已瞬移至 [雨林主地图入口2] ，请手动进入")
			gdCount3 = gdCount3 - 1
			map3_main2 = 1
			return 0
		end
		xyz = map3[1][gdCount3]
		Teleport(xyz)
		gg.toast("瞬移雨林光翼 [" .. gdCount3 .. "] 完成")
	end
end

--雨林CG图
function c4()
	Teleport({6.57783555984;4.13195562363;509.4060367695})
	gg.toast("瞬移 [雨林 - CG图] 完成")
end

--雨林终点光圈
function c3()
	Teleport({0.06900262087583542;116.03050994873047;-1.6381393671035767})
	gg.toast("瞬移 [雨林 - 终点光圈] 完成")
end

--霞谷
function D()
  G4 = 1
  menu4 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 霞谷 - 终点光圈",
	"4. 霞谷 - 千鸟城",
    "0. 返回主页"
  }, nil, "霞谷 - 瞬移")
  if menu4 == nil then else
  if menu4[1] == true then d1() end
  if menu4[2] == true then d2() end
  if menu4[3] == true then d3() end
  if menu4[4] == true then d4() end
  if menu4[5] == true then HOME() end end
end

--霞谷光翼[上一个]
function d1()
	if gdCount4 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount4 = gdCount4 - 1
		xyz = map4[1][gdCount4]
		Teleport(xyz)
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
			Teleport({205.1636505127;56.70009994507;-601.97637939453})
			gg.toast("已瞬移至 [霞谷天空赛道一图入口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky1_in = 1
			return 0
		end
		if gdCount4 == 6 and map4_sky1_out ~=1 then
			Teleport({206.68609619141;491.52456665039;-205.85830688477})
			gg.toast("已瞬移至 [霞谷天空赛道一图出口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky1_out = 1
			return 0
		end
		if gdCount4 == 8 and map4_sky2_in ~=1 then
			Teleport({149.81336975098;1008.25744628906;-100.43368530273})
			gg.toast("已瞬移至 [霞谷天空赛道二图入口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky2_in = 1
			return 0
		end
		if gdCount4 == 10 and map4_sky2_out ~=1 then
			Teleport({60.94206619263;137.83598327637;-292.20584106445})
			gg.toast("已瞬移至 [霞谷天空赛道二图出口] ，请手动进入")
			gdCount4 = gdCount4 - 1
			map4_sky2_out = 1
			return 0
		end
		if gdCount4 == 11 then
			Teleport({290.24816894531;39.45797729492;-527.30267333984})
			gg.toast("已瞬移至 [霞谷地面赛道入口] ，五秒后继续")
			gg.sleep(5000)
			Teleport(map4[1][11])
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成")
			return 0
		end
		xyz = map4[1][gdCount4]
		Teleport(xyz)
		if gdCount4 == 10 then
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成，请重新进入霞谷")
		else
			gg.toast("瞬移霞谷光翼 [" .. gdCount4 .. "] 完成")
		end
	end
end

--霞谷终点光圈
function d3()
    Teleport({9.360957145690918;138.13560485839844;-181.9567108154297})
	gg.toast("瞬移 [霞谷 - 终点光圈] 完成")
end

--霞谷千鸟城
function d4()
	Teleport({314.90731811523;173.38836669922;-783.63726806641})
	gg.toast("瞬移 [霞谷 - 千鸟城] 完成")
end

--暮土
function E()
  G5 = 1
  menu5 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "3. 新图光翼 - 1",
    "4. 新图光翼 - 2",
	"5. 墓土 - 终点光圈",
	"6. 墓土 - CG图",
    "0. 返回主页"
  }, nil, "暮土 - 瞬移")
  if menu5 == nil then else
  if menu5[1] == true then e1() end
  if menu5[2] == true then e2() end
  if menu5[3] == true then e3() end
  if menu5[4] == true then e4() end
  if menu5[5] == true then e5() end
  if menu5[6] == true then e6() end
  if menu5[7] == true then HOME() end end
end

--暮土光翼[上一个]
function e1()
	if gdCount5 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount5 = gdCount5 - 1
		xyz = map5[1][gdCount5]
		Teleport(xyz)
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
			Teleport({-91.85065460205;11.72455883026;158.18051147461})
			gg.toast("已瞬移至 [暮土一图出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_main1_out = 1
			return 0
		end
		if gdCount5 == 9 and map5_sunkenship_in ~=1 then
			Teleport({189.26557922363;69.34118652344;-73.92557525635})
			gg.toast("已瞬移至 [暮土沉船入口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_sunkenship_in = 1
			return 0
		end
		if gdCount5 == 12 and map5_sunkenship_out ~=1 then
			Teleport({-343.83453369141;35.31271362305;386.27169799805})
			gg.toast("已瞬移至 [暮土沉船出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_sunkenship_out = 1
			return 0
		end
		if gdCount5 == 14 and map5_yilong_out ~=1 then
			Teleport({-285.36907958984;92.04296112061;-400.69836425781})
			gg.toast("已瞬移至 [暮土一龙图出口] ，请手动进入")
			gdCount5 = gdCount5 - 1
			map5_yilong_out = 1
			return 0
		end
		xyz = map5[1][gdCount5]
		Teleport(xyz)
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
	Teleport(xyz)
	gg.toast("瞬移暮土 [新图光翼 - 1] 完成")
end

--暮土新图光翼2
function e4()
	xyz = map5[1][16]
	Teleport(xyz)
	gg.toast("瞬移暮土 [新图光翼 - 2] 完成")
end


--墓土终点光圈
function e5()
	Teleport({-0.05620822310447693;206.76248168945312;3.5405726432800293})
	gg.toast("瞬移 [墓土 - 终点光圈] 完成")
end

--墓土CG
function e6()
	Teleport({-416.08380126953;12.07369232178;411.0588684082})
	gg.toast("瞬移 [墓土 - CG] 完成")
end

--禁阁
function F()
  G6 = 1
  menu6 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 禁阁 - 终点",
	"4. 禁阁 - CG图",
    "0. 返回主页"
  }, nil, "禁阁 - 瞬移")
  if menu6 == nil then else
  if menu6[1] == true then f1() end
  if menu6[2] == true then f2() end
  if menu6[3] == true then f3() end
  if menu6[4] == true then f4() end
  if menu6[5] == true then HOME() end end
end

--禁阁光翼[上一个]
function f1()
	if gdCount6 == 0 then
		gg.toast("没有上一个瞬移坐标了")
	else
		gdCount6 = gdCount6 - 1
		xyz = map6[1][gdCount6]
		Teleport(xyz)
		gg.toast("瞬移禁阁光翼 [" .. gdCount6 .. "] 完成")
	end
end

local map6_double_in = 0 --双人图入口
local map6_double_out = 0 --双人图入口
--禁阁光翼[下一个]
function f2()
	if gdCount6 == 7 then
		gg.toast("没有下一个瞬移坐标了")
	else
		gdCount6 = gdCount6 + 1
		if gdCount6 == 2 and map6_double_in ~=1 then
			Teleport({-40.40454483032;36.9967956543;-97.50639343262})
			gg.toast("已瞬移至 [禁阁双人图入口] ，请手动进入")
			gdCount6 = gdCount6 - 1
			map6_double_in = 1
			return 0
		end
		if gdCount6 == 4 and map6_double_out ~=1 then
			Teleport({39.8631439209;541.568359375;-15.89660263062})
			gg.toast("已瞬移至 [禁阁双人图出口] ，请手动进入")
			gdCount6 = gdCount6 - 1
			map6_double_out = 1
			return 0
		end
		xyz = map6[1][gdCount6]
		Teleport(xyz)
		gg.toast("瞬移禁阁光翼 [" .. gdCount6 .. "] 完成")
	end
end

--禁阁终点光圈
function f3()
	Teleport({0.36374688148498535;309.8161315917969;67.23101043701172})
	gg.toast("瞬移 [禁阁 - 终点光圈] 完成")
end

--禁阁CG图
function f4()
	Teleport({68.92450714111;240.40475463867;-185.50691223145})
	gg.toast("瞬移 [禁阁 - CG图] 完成")
end


--暴风眼
function G()
  G7 = 1
  menu7 = gg.multiChoice({
    "1. 一图终点🔥",
    "2. 二图终点",
    "3. 自动伊甸",
	"4. 手动伊甸",
	"5. 进入伊甸",
	"6. 拥抱金人",
	"7. 飞向天空",
	"8. 进入太阳",
	"9. 暴风眼烛火🔥",
    "0. 返回主页"
  }, nil, "暴风眼 - 瞬移")
  if menu7 == nil then else
  if menu7[1] == true then g1() end
  if menu7[2] == true then g2() end
  if menu7[3] == true then g3() end
  if menu7[4] == true then g4() end
  if menu7[5] == true then g5() end
  if menu7[6] == true then g6() end
  if menu7[7] == true then g7() end
  if menu7[8] == true then g8() end
  if menu7[9] == true then g9() end
  if menu7[10] == true then HOME() end end
end

--暴风眼一图终点
function g1()
	Teleport({-3.08880496025;196.74859619141;-21.45963668823})
	gg.toast("瞬移 [暴风眼 - 一图终点] 完成")
end

--暴风眼二图终点   
function g2()
	Teleport({6.62452173233;265.95574951172;-244.71562194824})
	gg.toast("瞬移 [暴风眼 - 二图终点] 完成")
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
		Teleport(map7[i])
		gg.toast("瞬移伊甸 [" .. i .. "] 完成")
		gg.sleep(freeze_time)
	end
end

--手动伊甸
function g4()
  G14 = 1
  SM = gg.multiChoice({
      "上一步",
      "下一步",
      "返回上一级"
  }, nil, "手动伊甸")
  if SM == nil then else
  if SM[1] == true then sd1() end
  if SM[2] == true then sd2() end
  if SM[3] == true then G() end end
end

function sd1()
   if gdCount7 <= 1 then
      gg.toast("上一步没有了")
   else
      gdCount7 = gdCount7 - 1
      xyz = map7[gdCount7]
      Teleport(xyz)
      gg.toast("伊甸 [" .. gdCount7 .. "] 瞬移完成")
   end
end

function sd2()
   if gdCount7 == 54 then
      gg.toast("下一步没有了,请手动关闭无限能量！")
	else
		gdCount7 = gdCount7 + 1
		xyz = map7[gdCount7]
		Teleport(xyz)
		gg.toast("伊甸 [" .. gdCount7 .. "] 完成")
	end
end

--快速重生
function g5()
     Teleport({61.755165100097656,272.44757080078125,-332.82061767578125})
        gg.toast("进入伊甸园瞬移完成")
end
function g6()
        Teleport({803.8468017578125,0.2411956787109375,-11.73253059387207})
        gg.toast("拥抱金人面前瞬移完成")
end
function g7()
        Teleport({862.8026733398438;2692.793212890625;154.70008850097656})
        gg.toast("飞向天空！")
end
function g8()
        Teleport({-45.95044708251953,2489.866455078125,2273.8876})
        gg.toast("进入太阳！")
end

--暴风眼烛火
function g9()
	Teleport({-14.522345542907715;157.26187133789062;21.82390594482422})
    gg.sleep(500)
	Teleport({-15.05670166015625;158.67726135253906;12.779160499572754})
    gg.sleep(500)
	Teleport({-19.404205322265625;162.08245849609375;2.8678810596466064})
    gg.sleep(500)
	Teleport({-24.928730010986328;165.800048828125;-9.798575401306152})
    gg.sleep(500)
	Teleport({-34.4747428894043;173.6244659423828;-24.811466217041016})
    gg.sleep(500)
	Teleport({-36.957130432128906;178.20591735839844;-39.8573112487793})
    gg.sleep(500)
	Teleport({-16.805362701416016;181.41880798339844;-60.87540054321289})
    gg.sleep(500)
	Teleport({-3.902761697769165;182.01905822753906;-86.306640625})
    gg.sleep(500)
	Teleport({-1.0287314653396606;181.3828887939453;-112.29273986816406})
    gg.sleep(500)
	Teleport({1.0319584608078003;249.88595581054688;-212.21224975585938})
    gg.sleep(500)
   Teleport({20.0541934967041;219.73855590820312;-109.1402816772461})
    gg.sleep(500)
	Teleport({-0.8473636507987976;237.97720336914062;-157.42654418945312})
    gg.sleep(500)
	Teleport({-1.8019663095474243;238.73086547851562;-181.94044494628906})
    gg.sleep(500)
	Teleport({3.7949442863464355;256.5858154296875;-229.45654296875})
    gg.sleep(500)
	Teleport({6.551288604736328;266.51544189453125;-245.3740234375})
	gg.toast("拿完咯！！！")
end

--彩蛋
function H()
  G8 = 1
  menu8 = gg.multiChoice({
    "1. 晨岛 - 彩虹桥🌈",
    "2. 晨岛 - 富士山🌲",
    "3. 云野 - 大草原🌿   [云隐藏图开]",
    "4. 云野 - 幽灵船👻",
    "5. 雨林 - 梅花桩♣  [秘密花园开]",
    "6. 雨林 - 地下鱼🐟    [跺脚井内]",
    "7. 雨林 - 密室🗿      [跺脚井内]",   
    "8. 霞谷 - 千鸟图🐦",
    "9. 墓土 - 冰激凌山🍦",
    "10. 墓土 - 沉船图月亮🌙",
    "11. 办公室 - 太空站✈️️",
    "12. 办公室 - 月亮船🚢",
    "13. 禁阁 - 蜡像馆🚹",
    "14. 禁阁 - 闪电桥⚡",
    "15. 暴风眼 - 失色谷🥛  [二图开] ",
    "16. 暴风眼 - 星星屋⭐   [重生路开]",
    "17. 暴风眼 - 柱子   [重生路开]",
    "18. 暴风眼 - 墓碑۩    [重生路开",
   	" 返  回  主  页"
  }, nil, "彩蛋 - 瞬移")
  if menu8 == nil then else
  if menu8[1] == true then h1() end
  if menu8[2] == true then h2() end
  if menu8[3] == true then h3() end
  if menu8[4] == true then h4() end
  if menu8[5] == true then h5() end
  if menu8[6] == true then h6() end
  if menu8[7] == true then h7() end
  if menu8[8] == true then h8() end
  if menu8[9] == true then h9() end
  if menu8[10] == true then h10() end
  if menu8[11] == true then h11() end
  if menu8[12] == true then h12() end
  if menu8[13] == true then h13() end
  if menu8[14] == true then h14() end
  if menu8[15] == true then h15() end
  if menu8[16] == true then h16() end
  if menu8[17] == true then h17() end
  if menu8[18] == true then h18() end
  if menu8[19] == true then HOME() end end
end

--晨岛彩虹桥
function h1()
	Teleport({296;413;-276})
	gg.toast("瞬移 [晨岛 - 彩虹桥🌈] 完成")
end

--晨岛富士山
function h2()
	Teleport({277.7;720;-375})
	gg.toast("瞬移 [晨岛 - 富士山🌲] 完成")
end

--云野大草原
function h3()
	Teleport({366.3;208.3;233.17})
	gg.toast("瞬移 [云野 - 大草原🌿] 完成")
end

--云野幽灵👻船
function h4()
	Teleport({7067.0712890625;6929.82421875;9084.58203125})
	gg.toast("瞬移 [云野 - 孤岛] 完成")
end


--雨林梅花桩
function h5()
	Teleport({-31.72092056274;207.00308227539;-1.27488076687})
	gg.toast("瞬移 [雨林 - 梅花桩♣️] 完成")
end

--雨林地下鱼
function h6()
	Teleport({-13;17.7;-336})
	gg.toast("瞬移 [雨林 - 地下鱼🐟] 完成")
end


--雨林密室
function h7()
	Teleport({15.31689739227295;139.8890380859375;-193.73648071289062})
	gg.toast("瞬移 [雨林 - 密室] 完成")
end


--霞谷千鸟图
function h8()
	Teleport({314.90731811523;173.38836669922;-783.63726806641})
	gg.toast("瞬移 [霞谷 - 千鸟图🐦] 完成")
end

--墓土冰淇淋山
function h9()
	Teleport({5;5105;-800})
	gg.toast("瞬移 [云野 - 冰淇淋山🍦] 完成")
end

--墓土沉船图月亮
function h10()
	Teleport({-33;231.6;296})
	gg.toast("瞬移 [云野 - 沉船图月亮🌙] 完成")
end

--办公室太空站
function h11()
	Teleport({7067.0712890625;6929.82421875;9084.58203125})
	gg.toast("瞬移 [禁阁 - 太空站✈️] 完成")
end

--办公室月亮船
function h12()
	Teleport({-1.1029300689697266;76.28878021240234;-54.310245513916016})
	gg.toast("瞬移 [办公室 - ️月亮船🚢] 完成")
end

--禁阁蜡像馆
function h13()
	Teleport({0.36330926418;195.0870513916;8.39365291595})
	gg.toast("瞬移 [禁阁 - 蜡像馆🚹] 完成")
end

--禁阁闪电岛
function h14()
	Teleport({-0.96439945698;336.14559936523;64.37212371826})
	gg.toast("瞬移 [禁阁 - 闪电岛⚡] 完成")
end

--暴风眼失色谷
function h15()
	Teleport({-175.75938415527344;255.41360473632812;-564.097900390625})
	gg.toast("瞬移 [暴风眼 - 失色谷🥛] 完成")
end

--暴风眼星星的房子
function h16()
	Teleport({215.1061553955078;1427.8759765625;-110.94058227539062})
	gg.toast("瞬移 [暴风眼 - 星星屋⭐] 完成")
end

--暴风眼 柱子
function h17()
	Teleport({248.27606201171875;1804.8326416015625;45.41462326049805})
	gg.toast("瞬移 [暴风眼 - 柱子] 完成")
end

--暴风眼墓碑
function h18()
	Teleport({257.82757568359375;1895.615478515625;88.87425231933594})
	gg.toast("瞬移 [暴风眼 - 墓碑۩] 完成")
end


--其他功能
function I()
  G9 = 1
  menu9 = gg.multiChoice({
    "1. 锁定能量[开关]⚡",
	"2. 整 图 吸 收😍",
	"3. 失落方舟烛火(方舟开)🔥(自动收集) ",
	"4. 圣岛烛火(圣岛开)🔥(自动收集)",
	"5. 查 漏 补 缺⭐⭐",
	"6. 衣柜变出tgc蓝斗篷🔵",
    "0. 返回主页"
  }, nil, "其他 - 功能")
  if menu9 == nil then else
  if menu9[1] == true then wxnl() end
  if menu9[2] == true then M() end
  if menu9[3] == true then i3() end
  if menu9[4] == true then i4() end
  if menu9[5] == true then L() end
  if menu9[6] == true then i5() end
  if menu9[7] == true then HOME() end end
end

--暴风眼烛火
function i2()
	Teleport({-14.522345542907715;157.26187133789062;21.82390594482422})
    gg.sleep(500)
	Teleport({-15.05670166015625;158.67726135253906;12.779160499572754})
    gg.sleep(500)
	Teleport({-19.404205322265625;162.08245849609375;2.8678810596466064})
    gg.sleep(500)
	Teleport({-24.928730010986328;165.800048828125;-9.798575401306152})
    gg.sleep(500)
	Teleport({-34.4747428894043;173.6244659423828;-24.811466217041016})
    gg.sleep(500)
	Teleport({-36.957130432128906;178.20591735839844;-39.8573112487793})
    gg.sleep(500)
	Teleport({-16.805362701416016;181.41880798339844;-60.87540054321289})
    gg.sleep(500)
	Teleport({-3.902761697769165;182.01905822753906;-86.306640625})
    gg.sleep(500)
	Teleport({-1.0287314653396606;181.3828887939453;-112.29273986816406})
    gg.sleep(500)
	Teleport({1.0319584608078003;249.88595581054688;-212.21224975585938})
    gg.sleep(500)
   Teleport({20.0541934967041;219.73855590820312;-109.1402816772461})
    gg.sleep(500)
	Teleport({-0.8473636507987976;237.97720336914062;-157.42654418945312})
    gg.sleep(500)
	Teleport({-1.8019663095474243;238.73086547851562;-181.94044494628906})
    gg.sleep(500)
	Teleport({3.7949442863464355;256.5858154296875;-229.45654296875})
    gg.sleep(500)
	Teleport({6.551288604736328;266.51544189453125;-245.3740234375})
	gg.toast("跑完啦！记得吸收一下哦！")
end

--方舟蜡烛
function i3()
    Teleport({105.84814453125;116.32081604004;462.41174316406})
    gg.sleep(2000)
    Teleport({77.37850189209;109.62291717529;486.12353515625})
    gg.sleep(2000)
    Teleport({42.14425277710;108.72409057617;500.89166259766})
    gg.sleep(2000)
    Teleport({79.73130798340;108.74385070801;523.66644287109})
    gg.sleep(2000)
    Teleport({96.17122650146;108.55562591553;510.29357910156})
    gg.sleep(2000)
    Teleport({61.19565582275;109.15430450439;501.40725708008})
    gg.sleep(2000)
    Teleport({280.19207763672;104.21625518799;363.10455322266})
    gg.sleep(2000)
    Teleport({285.39682006836;103.35955810547;344.58203125000})
    gg.sleep(2000)
    Teleport({302.95071411133;113.31649017334;349.68161010742})
    gg.sleep(2000)
    Teleport({285.56661987305;121.38081359863;353.24407958984})
    gg.sleep(2000)
    Teleport({282.82232666016;115.49257659912;513.79394531250})
    gg.sleep(2000)
    Teleport({283.13558959961;116.17700958252;532.32537841797})
    gg.sleep(2000)
    Teleport({300.85494995117;122.43910980225;522.30999755859})
    gg.sleep(2000)
    Teleport({302.52099609375;120.60543060303;544.35998535156})
    gg.sleep(2000)
    Teleport({330.75439453125;120.46106719971;557.20898437500})
    gg.sleep(2000)
    Teleport({-54.02834701538086;142.46949768066406;166.82398986816406})
	gg.toast("跑完啦！记得吸收一下哦！")
end

--圣岛蜡烛
function i4()
    Teleport({24.33456802368164;55.67715072631836;328.6855773925781})
    gg.sleep(2000)
    Teleport({56.34254455566406;102.52068328857422;300.8757019042969})
    gg.sleep(2000)
    Teleport({78.94340515136719;29.060487747192383;331.7101135253906})
    gg.sleep(2000)
    Teleport({71.60596466064453;1.1953628063201904;302.8883361816406})
    gg.sleep(2000)
    Teleport({50.55968475341797;0.8434000611305237;331.0429992675781})
    gg.sleep(2000)
    Teleport({101.3031997680664;1.0473014116287231;361.0246887207031})
    gg.sleep(2000)
    Teleport({115.63052368164062;18.525861740112305;323.6504821777344})
    gg.sleep(2000)
    Teleport({75.35946655273438;18.284135818481445;280.5356140136719})
    gg.sleep(2000)
    Teleport({78.32447052001953;8.332757949829102;296.04095458984375})
    gg.sleep(2000)
    Teleport({92.10149383544922;2.6787989139556885;291.4185791015625})
    gg.sleep(2000)
    Teleport({119.20208740234375;20.165529251098633;324.14703369140625})
    gg.sleep(2000)
    Teleport({110.66464233398438;19.994873046875;332.09564208984375})
    gg.sleep(2000)
    Teleport({92.13536071777344;6.6882171630859375;291.3611145019531})
    gg.sleep(2000)
    Teleport({95.8053207397461;1.9116520881652832;290.0443420410156})
    gg.sleep(2000)
    Teleport({140.17161560058594;12.682710647583008;283.6900329589844})
    gg.sleep(2000)
    Teleport({244.67581176757812;95.687255859375;220.33270263671875})
	gg.toast("跑完啦！记得吸收一下哦！")
end


--整图吸收
local GGGG=0
function M()
	gg.clearResults()
	gg.setRanges(4)
	gg.searchNumber("-842203136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	shCount = gg.getResultCount()
	sh = gg.getResults(shCount)

	for k, v in pairs(sh) do
		v.isMatch = true
	end

	local shtmp = {}
	for i, v in ipairs(sh) do
		shtmp[#shtmp+1] = {}
		shtmp[#shtmp].address = v.address - 12
		shtmp[#shtmp].flags = gg.TYPE_FLOAT
	end
	
	shtmp = gg.getValues(shtmp)
	for i, v in ipairs(shtmp) do
		if "" .. v.value ~= "3.5" then
			sh[i].isMatch = false
		end
	end

	local shdata = {}
	for i, v in ipairs(sh) do
		if (v.isMatch) then
    		shdata[#shdata+1] = v.address - 12
		end
	end

	shsl = #shdata
	local shqd = {}
	for i = 1, shsl do
		shqd[#shqd+1] = {}
		shqd[#shqd].address = shdata[i]
		shqd[#shqd].flags = gg.TYPE_FLOAT
		shqd[#shqd].value = 9999
	end
	gg.setValues(shqd)
	gg.toast("烛火吸收完毕，已收取 [" .. shsl .. "] 点烛火！")
	gg.clearResults()
end


--蓝斗篷
function i5()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("158418233", gg.TYPE_QWORD,false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("❎️替换失败❎️")
gg.clearResults()
else
gg.getResults(50)
gg.editAll("2219120716", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("成功✅")
end
end


--背后物品替换
function K()
	G11 = 1
	gg.clearResults()
	menu11 = gg.choice({
		"1. 秋千",
		"2. 篝火",
		"3. 花伞",
		"4. 凳子",
		"5. 烟花棒",
		"6. 吉他🎸",
		"7. 笛子",
		"8. 排萧",
		"9. 凛冬大钢琴",
		"10. 小钢琴",
		"11. 雨伞☂️",
	    "12. 灯笼🏮",
		"12. 背后空空如也",
		'0. 返回主页'
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
	if menu11 == 12 then k013() end
	if menu11 == 13 then k012() end
	if menu11 == 14 then HOME() end
   GLWW=-1
end

function K1()
	menu11 = gg.choice({
	    "1. 秋千",
		"2. 篝火",
		"3. 花伞",
		"4. 凳子",
		"5. 烟花棒",
		"6. 吉他🎸",
		"7. 笛子",
		"8. 排萧",
		"9. 凛冬大钢琴",
		"10. 小钢琴",
		"11. 雨伞☔",
      	"12. 灯笼🏮",
		"13. 背后空空如也",
		'0. 返回上一页'
},nil,'想要更换成什么物品？')
	if menu11 == 1 then k10() end
	if menu11 == 2 then k9() end
	if menu11 == 3 then k0() end
	if menu11 == 4 then k3() end
	if menu11 == 5 then k8() end
	if menu11 == 6 then k4() end
	if menu11 == 7 then k5() end
	if menu11 == 8 then k6() end
	if menu11 == 9 then k2() end
	if menu11 == 10 then k1() end
	if menu11 == 11 then k7() end
	if menu11 == 12 then k12() end
	if menu11 == 13 then k11() end
	if menu11 == 14 then K() end
	GLWW=-1
end

function k001()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("3580839943", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("开启成功,请选择想要的物品")
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
	gg.toast("成功,请选择想要的物品")
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
	gg.toast("成功,请选择想要的物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k010()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("1889256860", gg.TYPE_QWORD)
if gg.getResultCount() <= 5 then
	gg.toast("成功,请选择想要的物品")
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
	gg.toast("成功,请选择想要的物品")
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
	gg.toast("成功,请选择想要的物品")
	gg.clearResults()
else
	gg.getResults(50)
	gg.toast("成功,请选择想要的物品")
	K1()
end
end

function k013()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumber("2701016401", gg.TYPE_QWORD)
if gg.getResultCount() <= 15 then
	gg.toast("成功,请选择想要的物品")
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
gg.editAll("1889256860", gg.TYPE_QWORD)
gg.toast("小钢琴")
end

function k2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("3275797515", gg.TYPE_QWORD)
gg.toast("凛冬大钢琴")
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

function k12()
gg.setRanges(gg.REGION_C_ALLOC)
gg.getResults(100)
gg.editAll("2701016401",gg.TYPE_QWORD)
gg.toast("灯笼")
end


--查漏补缺
function L()
	  G12 = 1
  menu12 = gg.multiChoice({
    "🧡晨岛 - [左侧山洞内]",
    "🧡晨岛 - [右侧山内双人门]",
    "💚云野 - [进3塔图]",
    "💚云野 - [八人门入口]",
    "💚云野 - [浮岛图入口]🔥",
    "❤️霞谷 - [右侧赛道入口]",
    "❤️霞谷 - [右赛道光翼]",
    "❤️霞谷 - [赛道终点]",
    "🖤墓土 - [方舟入口小船]🔥",
    "🖤墓土 - [方舟出口小船]",
    "💙禁阁 - [一楼四人门内]",
    "💙禁阁 - [二楼四人门内]",
    "💙禁阁 - [二楼四人门口]",
    "💙禁阁 - [三楼两处烛火]",     
    " 返  回  主  页",
  }, nil, "查漏补缺")
  if menu12 == nil then else
  if menu12[1] == true then l12() end
  if menu12[2] == true then l13() end
  if menu12[3] == true then l1() end
  if menu12[4] == true then l2() end
  if menu12[5] == true then l14() end
  if menu12[6] == true then l3() end
  if menu12[7] == true then l4() end
  if menu12[8] == true then l5() end
  if menu12[9] == true then l6() end
  if menu12[10] == true then l7() end
  if menu12[11] == true then l8() end
  if menu12[12] == true then l9() end
  if menu12[13] == true then l10() end
  if menu12[14] == true then l11() end
  if menu12[15] == true then HOME() end end
end


--云野进3塔
function l1()
	Teleport({79.76215362548828;160.7827911376953;62.864688873291016})
	gg.toast("瞬移 [云野 - 进入3塔] 完成")
end

--云野八人门入口
function l2()
	Teleport({-47.86541748046875;182.8914031982422;323.3805236816406})
	gg.toast("瞬移 [云野 - 八人门入口] 完成")
end

--霞谷右侧滑行赛道入口
function l3()
	Teleport({282.8741760253906;39.68141555786133;-525.9309692382812})
	gg.toast("瞬移 [霞谷 - 滑行赛道入口] 完成")
end

--霞谷右侧滑行赛道光翼
function l4()
	Teleport({195.82032775878906;630.882568359375;-421.2250671386719})
	gg.toast("瞬移 [霞谷 - 滑行赛道光翼] 完成")
end

--霞谷赛道终点
function l5()
	Teleport({57.915462493896484;137.88381958007812;-221.1772918701172})
	gg.toast("瞬移 [霞谷 - 赛道终点] 完成")
end

--墓土进入方舟小船
function l6()
	Teleport({151.09547424316;1.08663058281;46.78000259399})
	gg.toast("瞬移 [墓土 - 进方舟入口小船] 完成")
end

--墓土方舟出口小船
function l7()
	Teleport({-54.02834701538086;142.46949768066406;166.82398986816406})
	gg.toast("瞬移 [墓土 - 方舟出口小船] 完成")
end

--禁阁一楼四人门内
function l8()
	Teleport({-46.50438690185547;40.41745376586914;-16.556041717529297})
	gg.toast("瞬移 [禁阁一楼四人门内] 完成")
end

--禁阁二楼四人门内烛火
function l9()
	Teleport({23.99606704711914;82.99022674560547;47.41282653808594})
	gg.toast("瞬移 [禁阁二楼四人门内 完成")
end

--禁阁二楼门口烛火
function l10()
	Teleport({14.25452995300293;82.2242202758789;19.786466598510742})
	gg.toast("瞬移 [禁阁二楼四人门门口] 完成")
end

--禁阁三楼门两处烛火
function l11()
	Teleport({-15.766002655029297;149.55120849609375;-35.22820281982422})
	gg.toast("瞬移 [禁阁三楼烛火点] 完成")
end

--晨岛左山洞三处烛火
function l12()
	Teleport({146.90020751953125;86.14418029785156;-237.24212646484375})
	gg.toast("瞬移 [晨岛 - 左侧山洞内] 完成")
end

--晨岛右山洞内两处烛火双人门
function l13()
	Teleport({374.1410827636719;52.65858840942383;-12.51932144165039})
	gg.toast("瞬移 [云野 - 八人门入口] 完成")
end

function l14()
	Teleport({-9.7918510437;165.37245178223;-5.74012947083})
    gg.toast("瞬移 [云野浮岛图入口] 完成 ，请手动进入")
end

--返回上层
function HOME()
  G1 = -1
  G2 = -1
  G3 = -1
  G4 = -1
  G5 = -1
  G6 = -1
  G7 = -1
  G8 = -1
  G9 = -1
  G10 = -1
  G11 = -1
  G12 = -1
  G13 = -1
  G14 = -1
  Main()
end

cs = "已删除"

--退出
function Exit()
  print("\r\n光遇乱七八糟脚本结束，如需错误、疑问，请不要联系：\r\n二改整合\r\n" .. cs)
  os.exit()
end

while true do
	repeat
	if gg.isVisible(true) then
		gg.setVisible(false)
		if G14 == 1 then g4() break end
		if G13 == 1 then Sec() break end
		if G12 == 1 then L() break end
		if G11 == 1 then K() break end
		if G10 == 1 then J() break end
		if G1 == 1 then A() break end
		if G2 == 1 then B() break end
		if G3 == 1 then C() break end
		if G4 == 1 then D() break end
		if G5 == 1 then E() break end
		if G6 == 1 then F() break end
		if G7 == 1 then G() break end
		if G8 == 1 then H() break end
		if G9 == 1 then I() break end
		Main()
	end
	until true
end
