--[[
源码来自沐桃(整合)暂时不能开加速
修改完善整合：by沐桃
如有错误，可联系解决（看是否有空处理），若本脚本侵犯您的权益，我也没办法！！！
欢迎您对本脚本修改，补充，完善。Q群1059629561
开源脚本仅供学习，请勿倒卖或做商业用途，后果引起的法律责任与本人无关！！！！！
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
--跑图--
function Teleport(xzy)
    x = xzy[1]
    z = xzy[2]
    y = xzy[3]
    local t = {}
    t[1] = {}
    t[1].address = xdz
    t[1].flags = 16
    t[1].value = x
--    t[1].freeze = true
    t[2] = {}
    t[2].address = zdz
    t[2].flags = 16
    t[2].value = z
--    t[2].freeze = true
    t[3] = {}
    t[3].address = ydz
    t[3].flags = 16
    t[3].value = y
--    t[3].freeze = true
    gg.addListItems(t)
    gg.setValues(t)
end
function fffff()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber('2.5',gg.TYPE_FLOAT)
  gg.refineNumber('2.5',gg.TYPE_FLOAT)
  local cf = gg.getResults(1)
  gg.clearResults()
  return cf[1].address
end
local dz = fffff()
function gg.searchNumberB(...)
  local arg = {...}
  gg.searchNumber(arg[1],arg[2],false, gg.SIGN_EQUAL,0x7000000000,dz)
end

local vit = {}
function hqzb()
    gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(4)
	gg.searchNumberB("-1,067,909,120", gg.TYPE_DWORD)
	gg.refineAddress("???????1D4",-1,gg.TYPE_DWORD)
	gg.toast("如果报错尝试重启手机或游戏")
--	D94
--	gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
    local num = gg.getResults(1)
        local dz = num[1].address + 184
        gg.toast("🌹准备好了吗🌹")
        xdz = dz + 4
        zdz = dz + 8
        ydz = dz + 12
        
        local zuo = {}
        zuo[1] = {}
	    zuo[1].address = dz + 13148
	    zuo[1].flags = gg.TYPE_DWORD
	    zuo = gg.getValues(zuo)
    	vit = zuo[1]
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
function wxnl()
	gg.setVisible(false)
    gg.toast("请不要动哦！！")
    if nl_flag ~= 1 then
	
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumberB("256", gg.TYPE_DWORD)
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
        gg.toast("无限能量开启")
        nl_flag = 1
      end
    else
      gg.toast("⚡无限能量关闭⚡")
      wxfpy[1].freeze = false
      gg.addListItems(wxfpy)
      nl_flag = 0
    end
end
--6月9日新加内容结束--

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

function Spitout()
	local rolePosition = getRolePosition()
	local roleX = rolePosition[1].value
	local roleZ = rolePosition[2].value
	local roleY = rolePosition[3].value
	local positionStr = "{" .. tostring(roleX) .. ";" .. tostring(roleZ) .. ";" .. tostring(roleY) .. "}"
	gg.copyText(positionStr)
	gg.toast("坐标"..positionStr.."\n已复制到剪贴板")
end

gg.setVisible(false)
gg.clearResults()
hqzb()
wxnl()
gg.setVisible(true)
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
map2[1][4] = {-138.54043579101562;159.7581787109375;144.15615844726562}
map2[1][5] = {-214.46420288085938;181.380126953125;152.9370880126953}
map2[1][6] = {27.35553359985;184.77207946777;278.81311035156}
map2[1][7] = {101.27056884766;181.26351928711;257.22482299805}
map2[1][8] = {66.5023727417;186.11111450195;376.91757202148}
map2[1][9] = {-19.33318710327;58.91622924805;27.37077331543}
map2[1][10] = {137.93855285645;266.59573364258;478.81997680664}
map2[1][11] = {146.46572875977;304.30899047852;537.32904052734}
map2[1][12] = {290.13339233398;200.00207519531;178.79241943359}
map2[1][13] = {348.18463134766;197.88877868652;111.59169006348}

local ngdCount2 = 0
map2[2] = {}
map2[2][1] = {-146.00579833984375;80.65799713134766;119.78582763671875}
map2[2][2] = {-20.307619094848633;14.561330795288086;383.4365539550781}
map2[2][3] = {77.29523468017578;1.4387099742889404;324.7571105957031}
map2[2][4] = {108.97132873535156;2.413926362991333;333.1432800292969}
map2[2][5] = {94.6849136352539;10.98923110961914;362.2275390625}
map2[2][6] = {60.43352127075195;18.843082427978516;272.98565673828125}
map2[2][7] = {63.696815490722656;94.9338150024414;308.40447998046875}
map2[2][8] = {63.6467628479;94.64176940918;308.23196411133}
map2[2][9] = {240.47305297851562;94.21286010742188;205.26710510253906}

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
  "🏃.自动/手动跑图",
  "🏃.收集-瞬移点",
  "✨. 其他 - 功能",
  "👚. 换装 - 变更背后物品",
  "🎅. 先祖重置瞬移",
  "🌜. 星盘动作替换(替换已解锁完的动作,可强行毕业)",
  "🙇. 体验复刻先祖(可拿动作)",
  "❌. 退出   脚本"
 }, nil, "沐桃 Sky Script Q群1059629561--- VerXR1.0")
  if menu == 1 then Sec() end
  if menu == 2 then MoveMenu() end
  if menu == 3 then Other() end
  if menu == 4 then Behind() end
  if menu == 5 then ZMOve() end
  if menu == 6 then Action() end
  if menu == 7 then Season() end
  if menu == 8 then Exit() end
end
--瞬移点菜单
function MoveMenu()
     Gmenu = -1
     Tmenu = -1
     Dmenu = -1
     MMenu=1
     menu_move = gg.choice({
     "1. 光翼瞬移点",
     "2. 跑图常用瞬移点",
     "3. 彩蛋瞬移点",
     "0.返回主页"
  }, nil, "瞬移点")
  if menu_move == 1 then GMove() end
  if menu_move == 2 then TMove() end
  if menu_move == 3 then DMove() end
  if menu_move == 4 then HOME() end
 
end

--光翼瞬移点
function GMove()
	Gmenu = 1
	G1 = -1
	G2 = -1
	G3 = -1
	G4 = -1
	G5 = -1
	G6 = -1
	G7 = -1
	menu1 = gg.multiChoice({
	  "1. 晨岛",
	  "2. 云野",
	  "3. 雨林",
	  "4. 霞谷",
	  "5. 墓土",
	  "6. 禁阁",
	  "6. 暴风眼",
	  "0. 返回上一页"
	}, nil, "光翼瞬移点")
	if menu1 == nil then else
	if menu1[1] == true then MapA() end
	if menu1[2] == true then MapB() end
	if menu1[3] == true then MapC() end
	if menu1[4] == true then MapD() end
	if menu1[5] == true then MapE() end
	if menu1[6] == true then MapF() end
	if menu1[7] == true then MapG() end
	if menu1[8] == true then MoveMenu() end end
  end


--跑图常用瞬移点
function TMove()
	Tmenu=1
	menu2 = gg.choice({
	  "1. 霞谷滑行赛道",
	  "2. 墓土方舟乘船点",
	  "3. 墓土方舟",
	  "4. 禁阁二楼先祖",
	  "5. 禁阁三楼先祖",
	  "6. 禁阁一楼二人门",
	  "7. 云野八人门",
	  "8.飞行赛道卡图传送点",
	  "0. 返回上一页"
	}, nil, "跑图瞬移点")
	if menu2 == 1 then TuA() end
	if menu2 == 2 then TuB() end
	if menu2 == 3 then TuC() end
	if menu2 == 4 then TuD() end
	if menu2 == 5 then TuE() end
	if menu2 == 6 then TuF() end
	if menu2 == 7 then TuG() end
	if menu2 == 8 then TuH() end
	if menu2 == 9 then MoveMenu() end
  end

function TuA()
	Teleport({293.1996154785156;38.73601531982422;-524.4111328125})
	gg.toast("瞬移滑行赛道完成")
end
function TuB()
	Teleport({150.9330291748047;1.098946452140808;46.88561248779297})
	gg.toast("瞬移乘船地点成功")
end
function TuC()
	Teleport({112.33781433105469;141.43411254882812;386.235107421875})
	gg.toast("达到方舟成功")
end
function TuD()
	Teleport({33.529815673828125;82.81269836425781;38.9080924987793})
	gg.toast("已传到禁阁二楼")
end
function TuE()
	Teleport({-37.21377182006836;143.4535675048828;-21.584148406982422})
	gg.toast("已传到禁阁三楼")
end
function TuF()
	Teleport({-42.6407585144043;38.3612060546875;-98.20526123046875})
	gg.toast("禁阁一楼二人门")
end
function TuG()
	Teleport({-52.46832275390625;180.03219604492188;324.8914489746094})
	gg.toast("云野二图传八人门成功")
end
function TuH()
	Teleport({-269.4794006347656;1172.140625;285.8036804199219})
	gg.toast("霞谷飞行赛道传送点1")
end



--点/吸蜡烛
function Candle()
  CanMenu=1
  menu3 = gg.multiChoice({
	"1. 点蜡烛",
	"2. 吸蜡烛",
	"0. 返回上一页"
  }, nil, "点/吸蜡烛")
  if menu3 == nil then else
  if menu3[1] == true then j1() end
  if menu3[2] == true then j2() end
  if menu3[3] == true then HOME() end end
end

--点蜡烛
function j1()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumberB("1;-1,027,080,192;2~608::25" , gg.TYPE_DWORD)
	gg.refineNumber("-1,027,080,192", gg.TYPE_DWORD)
	p = gg.getResultCount()
	q = gg.getResults(p)

	for i = 1,p do
         	 local  r = {}
				r[i] = {}
			        r[i].address = q[i].address - 56
				    r[i].flags = 16
					r[i].value = "999999"
	gg.setValues(r)
 end
	gg.clearResults()
    gg.toast("点蜡烛，修改成功")
end

--吸蜡烛
function j2()
	 gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumberB("3.5F;-1F::9" , gg.TYPE_FLOAT)
     gg.refineNumber("3.5", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("吸蜡烛，修改成功")
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

-- 解锁动作
function Action()
    AcMenu=1
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
		Action()
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
		ACtion()
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
		ACtion()
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
			gg.searchNumberB(tostring(val),gg.TYPE_QWORD,false)
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

---------------------------2020-07-02 东街猫儿添加


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
--------------- 沐桃2020-07-04添加

local selectedSpirit = {}
function Season()
    SeMenu=1
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
				gg.searchNumberB(tostring(val.code),gg.TYPE_QWORD,false)
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
--晨岛
function MapA()
  G1 = 1
  menu4 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "0. 返回上一页"
  }, nil, "晨岛光翼")
  if menu4 == nil then else
  if menu4[1] == true then a1() end
  if menu4[2] == true then a2() end
  if menu4[3] == true then GMove() end end

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

--云野
function MapB()
  G2 = 1
  menu5 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "3. 新图光翼[上一个]",
    "4. 新图光翼[下一个]",
    "0. 返回上一页"
  }, nil, "云野光翼")
  if menu5 == nil then else
  if menu5[1] == true then b1() end
  if menu5[2] == true then b2() end
  if menu5[3] == true then b3() end
  if menu5[4] == true then b4() end
  if menu5[5] == true then GMove() end end
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
	if gdCount2 == 13 then
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
		if gdCount2 == 6 and map2_right_out ~= 1 then
			Teleport({-104.2032699585;184.77220153809;172.62110900879})
			gg.toast("已瞬移至 [云野右侧隐藏图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_right_out = 1
			return 0
		end
		if gdCount2 == 9 and map2_eight_in ~= 1 then
			Teleport({-48.94686126709;181.93348693848;322.91494750977})
			gg.toast("已瞬移至 [云野八人图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_in = 1
			return 0
		end
		if gdCount2 == 10 and map2_eight_out ~= 1 then
			Teleport({31.82697105408;42.34567260742;0.20620749891})
			gg.toast("已瞬移至 [云野八人图出口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map2_eight_out = 1
			return 0
		end
		if gdCount2 == 12 and map2_left_in ~= 1 then
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
--雨林
function MapC()
  G3 = 1
  menu6 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上一页"
  }, nil, "雨林 - 瞬移")
  if menu6 == nil then else
  if menu6[1] == true then c1() end
  if menu6[2] == true then c2() end
  if menu6[3] == true then c3() end
  if menu6[4] == true then c4() end
  if menu6[5] == true then GMove() end end
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

--预留位置
function c3()
	gg.toast("预留位置")
end

--预留位置
function c4()
	gg.toast("预留位置")
end

--霞谷
function MapD()
  G4 = 1
  menu7 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上一页"
  }, nil, "霞谷 - 瞬移")
  if menu7 == nil then else
  if menu7[1] == true then d1() end
  if menu7[2] == true then d2() end
  if menu7[3] == true then d3() end
  if menu7[4] == true then d4() end
  if menu7[5] == true then GMove() end end
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

--预留位置
function d3()
	gg.toast("预留位置")
end

--预留位置
function d4()
	gg.toast("预留位置")
end

--暮土
function MapE()
  G5 = 1
  menu8 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
    "3. 新图光翼 - 1",
    "4. 新图光翼 - 2",
    "5. 采蘑菇[地下]",
    "6. 采蘑菇[空中]",
	"β. 预留位置",
	"β. 预留位置",
    "0. 返回上一页"
  }, nil, "暮土 - 瞬移")
  if menu8 == nil then else
  if menu8[1] == true then e1() end
  if menu8[2] == true then e2() end
  if menu8[3] == true then e3() end
  if menu8[4] == true then e4() end
  if menu8[5] == true then e5() end
  if menu8[6] == true then e6() end
  if menu8[7] == true then e7() end
  if menu8[8] == true then e8() end
  if menu8[9] == true then GMove() end end
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
			tmp[#tmp].address = jq[1].address + i * 4
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
			tmp[#tmp].address = jq[1].address + i * 4
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
	gg.toast("预留位置")
end

--预留位置
function e8()
	gg.toast("预留位置")
end

--禁阁
function MapF()
  G6 = 1
  menu9 = gg.multiChoice({
    "1. 光翼[上一个]",
    "2. 光翼[下一个]",
	"3. 点蜡烛",
	"4. 吸蜡烛",
    "0. 返回上一页"
  }, nil, "禁阁 - 瞬移")
  if menu9 == nil then else
  if menu9[1] == true then f1() end
  if menu9[2] == true then f2() end
  if menu9[3] == true then f3() end
  if menu9[4] == true then f4() end
  if menu9[5] == true then GMove() end end
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

--点蜡烛
function f3()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumberB("1;-1,027,080,192;2~608::25" , gg.TYPE_DWORD)
	gg.refineNumber("-1,027,080,192", gg.TYPE_DWORD)
	p = gg.getResultCount()
	q = gg.getResults(p)

	for i = 1,p do
     	     local  r = {}
				r[i] = {}
			        r[i].address = q[i].address - 56
				    r[i].flags = 16
					r[i].value = "999999"
	gg.setValues(r)

	end
	gg.clearResults()
    gg.toast("点蜡烛，修改成功")
end

--吸蜡烛
function f4()
	 gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumberB("3.5F;-1F::9" , gg.TYPE_FLOAT)
     gg.refineNumber("3.5", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("吸蜡烛，修改成功")
end

--暴风眼
function MapG()
  G7 = 1
  menu10= gg.multiChoice({
    "1. 一图终点",
    "2. 二图终点",
    "3. 自动伊甸",
	"4. 手动伊甸",
	"5. 进入伊甸",
	"6.拥抱金人",
	"7.图三",
	"8.图四",
	"9.重生门",
    "0. 返回上一页"
  }, nil, "暴风眼 - 瞬移")
  if menu10 == nil then else
  if menu10[1] == true then g1() end
  if menu10[2] == true then g2() end
  if menu10[3] == true then g3() end
  if menu10[4] == true then g4() end
  if menu10[5] == true then g5() end
  if menu10[6] == true then g6() end
  if menu10[7] == true then g7() end
  if menu10[8] == true then g8() end
  if menu10[9] == true then g9() end
  if menu10[10] == true then GMove() end end
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
 		[1] = 5000
 	}, {
 		[1] = 'number'
 	})
if freeze_time~=nil then
	if freeze_time[1] == "" then
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
end

--手动伊甸
function g4()
  G7 = -1
  g4Menu=1
  SM = gg.multiChoice({
      "上一步",
      "下一步",
      "返回上一级"
  }, nil, "手动伊甸")
  if SM == nil then else
  if SM[1] == true then sd1() end
  if SM[2] == true then sd2() end
  if SM[3] == true then MapG() end end
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
        gg.toast("图三终点瞬移完成")
end
function g8()
        Teleport({-45.95044708251953,2489.866455078125,2273.8876})
        gg.toast("图四终点瞬移完成")
end
function g9()
        Teleport({-0.48404788970947266;0.17157337069511414;239.1744842529297})
        gg.toast("重生门瞬移完成")
end

--彩蛋瞬移点
function DMove()
  Dmenu=1
  menu8 = gg.multiChoice({
    "1. 遇境 - 小黑屋",
    "2. 遇境 - 观星台",
	"3. 晨岛 - CG图",
    "4. 晨岛 - 终点",
    "5. 晨岛 - 彩虹桥",
    "6. 晨岛 - 透明桥",
	"7. 晨岛 - 富士山",
    "8. 云野 - 大草原",
    "9. 云野 - 幽灵船",
	"10. 云野 - 孤岛",
    "11. 云野 - CG图",
	"12. 云野 - 冰暴风眼",
    "13. 雨林 - 梅花桩",
    "14. 雨林 - CG图",
	"15. 雨林 - 终点",
    "16. 雨林 - 密室",
    "17. 雨林 - 锤子",
	"18. 霞谷 - 千鸟图",
    "19. 暮土 - 冰激凌山",
	"20. 暮土 - 终点",
    "21. 暮土 - CG图",
    "22. 禁阁 - 蜡像馆",
	"23. 禁阁 - 闪电岛",
    "24. 禁阁 - 日月岛",
    "25. 暴风眼 - 无色之地",
	"0. 返回上一页"
  }, nil, "彩蛋瞬移点")
  if menu8 == nil then else
  if menu8[1] == true then h1() end
  if menu8[2] == true then h2() end
  if menu8[3] == true then h3() end
  if menu8[4] == true then h4() end
  if menu8[5] == true then h5() end
  if menu8[6] == true then cdtm() end
  if menu8[7] == true then h6() end
  if menu8[8] == true then h7() end
  if menu8[9] == true then h8() end
  if menu8[10] == true then h9() end
  if menu8[11] == true then h10() end
  if menu8[12] == true then h11() end
  if menu8[13] == true then h12() end
  if menu8[14] == true then h13() end
  if menu8[15] == true then h14() end
  if menu8[16] == true then h15() end
  if menu8[17] == true then h16() end
  if menu8[18] == true then h17() end
  if menu8[19] == true then h18() end
  if menu8[20] == true then h19() end
  if menu8[21] == true then h20() end
  if menu8[22] == true then h21() end
  if menu8[23] == true then h22() end
  if menu8[24] == true then h23() end
  if menu8[25] == true then h24() end
  if menu8[26] == true then MoveMenu() end end
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

--晨岛透明桥
function cdtm()
    cdmenu = gg.choice({
  "最高点",
  "左略低点",
  "右略低点",
  "返回上一页"
 }, nil, "晨岛透明桥")
  if cdmenu == 1 then Teleport({128;191;-280}) end
  if cdmenu == 2 then Teleport({115;167;-267}) end
  if cdmenu == 3 then Teleport({182;165;-266}) end
  if cdmenu == 4 then DMove() end
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
	Teleport({97.56925201416;174.57604980469;265.3330078125})
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
	Teleport({-432.3563232421875;149.45217895507812;12.925182342529297})
	gg.toast("瞬移 [云野 - 冰暴风眼] 完成")
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
--暴风眼无色之地
function h24()
	Teleport({9.74781608581543;201.33566284179688;-340.79547119140625})
	gg.toast("瞬移 [暴风眼 - 无色之地] 完成")
end


--其他功能
function Other()
  Omenu = 1
  menu11 = gg.choice({
    "1. 锁定能量[开关]",
	"2. 无翼[仙圣透明斗篷]",
	"3. 无翼[修改翅膀数量]",
	"4. 坐标复制",
	"5. 角色瞬移(需输入当前图的{X;Z;Y}坐标)",
	"6. tgc通行证",
--	"7. 加速",
    "0. 返回主页"
  }, nil, "其他功能")
  if menu11 == 1 then wxnl() end
  if menu11 == 2 then Tmdp() end
  if menu11 == 3 then Wing() end
  if menu11 == 4 then Spitout() end
  if menu11 == 5 then i7() end
  if menu11 == 6 then Tgc() end
--  if menu11 == 10 then GSpeed() end
  if menu11 == 7 then HOME() end
end

--点蜡烛
function i2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumberB("1;-1,027,080,192;2~608::25" , gg.TYPE_DWORD)
gg.refineNumber("-1,027,080,192", gg.TYPE_DWORD)
p = gg.getResultCount()
q = gg.getResults(p)

for i = 1,p do
          local  r = {}
			r[i] = {}
			        r[i].address = q[i].address - 56
				    r[i].flags = 16
					r[i].value = "999999"
gg.setValues(r)

end
gg.clearResults()
  
    gg.toast("点蜡烛，修改成功")
end

--吸蜡烛
function i3()
	 gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumberB("3.5F;-1F::9" , gg.TYPE_FLOAT)
     gg.refineNumber("3.5", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("吸蜡烛，修改成功")
end

function i7()
local positionPrT = gg.prompt({"请输入瞬移位置格式{X;Z;Y}，如 {121;192;-100}"},{[1]=""},{[1]="text"})
        if(positionPrT == nil or #positionPrT == 0) then
            gg.toast("格式错误")
        else
            Teleport(assert(load("return " .. positionPrT[1]))())
            gg.toast("角色瞬移完成！")
        end
end


local tmdplist = false
local senergy={}
local wxf={}
--仙圣透明斗篷
function Tmdp()
gg.setVisible(false)
if(not tmdplist) then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumberB("256",gg.TYPE_DWORD)
    gg.refineNumber("256",gg.TYPE_DWORD)
 local wxfks = gg.getResultCount()
  if wxfks ~= 0 then
      wxf = gg.getResults(wxfks)
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
      senergy[1] = {}
      senergy[1].flags = gg.TYPE_FLOAT
      senergy[1].address = wxf[1].address -56
      senergy[1].value = "14"
      senergy[1].freeze = true
      senergy[2] = {}
      senergy[2].flags = gg.TYPE_FLOAT
      senergy[2].address = wxf[1].address -16
      senergy[2].value = "0"
      senergy[2].freeze = true
      gg.addListItems(senergy)
      gg.clearResults()
      tmdplist=true
      gg.toast("ฅ( ̳• ◡ • ̳)ฅ开启成功")
      end
else
    senergy[2].flags = gg.TYPE_FLOAT
    senergy[2].address = wxf[1].address -16
    senergy[2].freeze = true
    senergy[2].value = "1"
    gg.addListItems(senergy)
    tmdplist=false
    gg.toast("ฅ( ̳• ◡ • ̳)ฅ关闭成功")
end
gg.clearResults()
end


local gsp = false
local Sspeed = {}
local speedv=1
function GSpeed()
  speed=gg.prompt({'速度值'}, {[1] = speedv}, {[1] =number})
  if speed~=nil then
     if speed[1]+0 < 0 then
       gg.toast("非法输入")
	else
	    speed=speed[1]+0
	  if(not gsp) then
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumberB("533", 4, false, gg.SING_EQUAL, 0, -1)
        gg.refineNumber("533", 4, false, gg.SING_EQUAL, 0, -1)
         z = gg.getResultCount()
         w = gg.getResults(z)
         tmp = {}
         for i, v in ipairs(w) do
           tmp[#tmp + 1] = {}
           tmp[#tmp].address = v.address + 4
           tmp[#tmp].flags = 4
          end
          tmp = gg.getValues(tmp)
        for i, v in ipairs(tmp) do
          if v.value == 14 then
            tmp[i].address = tmp[i].address + 28
            tmp[i].flags = gg.TYPE_FLOAT
            Sspeed[1] = tmp[i]
            Sspeed[1].freeze = true
            gsp=true
      break
    end
  end
        Sspeed[1].value = speed
        speedv = Sspeed[1].value
        gg.toast("速度已修改")
        gg.setValues(Sspeed)  
        gg.addListItems(Sspeed)
        
    else
        Sspeed[1].value = speed
        speedv = Sspeed[1].value
        gg.toast("速度已修改")
        gg.setValues(Sspeed)  
        gg.addListItems(Sspeed)
      end
      end
      gg.clearResults()
    else
       gg.toast("非法输入")
end
end

--翅膀数量 8月20日添加
function Wing()
  qty=gg.prompt({'请输入需要的翅膀数量'}, {[1] = 0}, {[1] =number})
  if qty~=nil then
     if qty[1]+0 < 0 then
       gg.toast("非法输入")
	  else
	    qty=qty[1]+0
	    local wing = {}
        gg.setVisible(false)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumberB("699", 4, false, gg.SING_EQUAL, 0, -1)
        gg.refineNumber("699", 4, false, gg.SING_EQUAL, 0, -1)
        z = gg.getResultCount()
        w = gg.getResults(z)
        tmp = {}
        for i, v in ipairs(w) do
          tmp[#tmp + 1] = {}
          tmp[#tmp].address = v.address + 16
          tmp[#tmp].flags = 4
         end
        tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
         if v.value ==  73 then
         tmp[i].address = tmp[i].address - 32
         tmp[i].flags = 4
         wing[1] = tmp[i]
        break
      end
    end
      wing[1].value = qty
      wing[1].freeze = true
      gg.setValues(wing)
      gg.addListItems(wing)
      gg.toast("修改成功")
      end
    else
       gg.toast("非法输入")
end
gg.clearResults()
end


--tgc通行证
function Tgc()
  local tgc = {}
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  
  gg.searchNumberB("29281", 4, false, gg.SING_EQUAL, 0, -1)
  gg.refineNumber("29281", 4, false, gg.SING_EQUAL, 0, -1)

  z = gg.getResultCount()
  w = gg.getResults(z)
  tmp = {}
  for i, v in ipairs(w) do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address - 168
    tmp[#tmp].flags = 4
  end
  tmp = gg.getValues(tmp)
  for i, v in ipairs(tmp) do
    if v.value == 1 then
      tmp[i].address = tmp[i].address + 8
      tmp[i].flags = 4
      tgc[1] = tmp[i]
      break
    end
  end
  tgc[1].value = "2219120716"
  gg.toast("TGC通行证已获得")
  gg.setValues(tgc)  
  gg.addListItems(tgc)
  gg.clearResults()
end

--自爆
local zbb = 0
function Explode()
    if zbb~=1 then
        gg.alert("⚠️自爆与满翼不可都开启⚠️") 
        -- 黑人抬棺
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumberB("256",gg.TYPE_DWORD) 
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


--背后物品替换
function Behind()
	BeMenu = 1
	gg.clearResults()
	menu13 = gg.choice({
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
		"12. 背后空空如也",
		'0. 返回主页'
},nil,'你背上背着什么物品？')
	if menu13 == 1 then k001() end
	if menu13 == 2 then k002() end
	if menu13 == 3 then k003() end
	if menu13 == 4 then k004() end
	if menu13 == 5 then k005() end
	if menu13 == 6 then k006() end
	if menu13 == 7 then k007() end
	if menu13 == 8 then k008() end
	if menu13 == 9 then k009() end
	if menu13 == 10 then k010() end
	if menu13 == 11 then k011() end
	if menu13 == 12 then k012() end
	if menu13 == 13 then HOME() end
GLWW=-1
end

function K1()
	menu14 = gg.choice({
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
	if menu14 == 1 then k11() end
	if menu14 == 2 then k10() end
	if menu14 == 3 then k9() end
	if menu14 == 4 then k0() end
	if menu14 == 5 then k3() end
	if menu14 == 6 then k8() end
	if menu14 == 7 then k4() end
	if menu14 == 8 then k5() end
	if menu14 == 9 then k6() end
	if menu14 == 10 then k2() end
	if menu14 == 11 then k1() end
	if menu14 == 12 then k7() end
	if menu14 == 13 then Behind() end
	GLWW=-1
end

function k001()
	gg.setRanges(gg.REGION_C_ALLOC)
	gg.searchNumberB("3580839943", gg.TYPE_QWORD)
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
	gg.searchNumberB("3779226149", gg.TYPE_QWORD)
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
	gg.searchNumberB("3634028466", gg.TYPE_QWORD)
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
	gg.searchNumberB("992885953", gg.TYPE_QWORD)
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
	gg.searchNumberB("3280753494", gg.TYPE_QWORD)
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
	gg.searchNumberB("3269660804", gg.TYPE_QWORD)
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
	gg.searchNumberB("396560731", gg.TYPE_QWORD)
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
	gg.searchNumberB("1237767078", gg.TYPE_QWORD)
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
	gg.searchNumberB("3275797515", gg.TYPE_QWORD)
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
	gg.searchNumberB("4246711693", gg.TYPE_QWORD)
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
	gg.searchNumberB("2574095143", gg.TYPE_QWORD)
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
	gg.searchNumberB("2035109393", gg.TYPE_QWORD)
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


function ZMOve()
  ZMmenu = 1
  l1menu = -1
  l2menu = -1
  l3menu = -1
  l4menu = -1
  l5menu = -1
  l6menu = -1
  menu = gg.choice({
  "1. 晨岛",
  "2. 云野",
  "3. 雨林",
  "4. 霞谷",
  "5. 暮土",
  "6. 禁阁",
  "0. 返回主页"
 }, nil, "先祖重置瞬移")
  if menu == 1 then L1() end
  if menu == 2 then L2() end
  if menu == 3 then L3() end
  if menu == 4 then L4() end
  if menu == 5 then L5() end
  if menu == 6 then L6() end
  if menu == 7 then HOME() end
end

--晨岛
function L1()
  l1menu = 1
  --gg.setSpeed(2)
  menu1 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "晨岛 - 瞬移")
  if menu1 == nil then else
  if menu1[1] == true then l1() end
  if menu1[2] == true then ZMOve() end end
end

local map8_in = 0
local map8_temple_in = 0 --神庙入口

--晨岛先祖[下一个]
function l1()
	if gdCount1 == 0 and map8_in ~= 1 then
		cdcz()
		gg.toast("先祖重置完成，1秒后瞬移至晨岛入口")
		gg.sleep(1000)
		Teleport({11.265,1.5,1.02})
		gg.toast("瞬移晨岛入口完成，进入后请继续冲！")
		map8_in = 1
		return 0
	end
	
	if gdCount1 == 3 then
		gg.toast("请手动返回遇境")
	else
		gdCount1 = gdCount1 + 1
		xyz = map8[1][gdCount1]
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(6)
		gg.sleep(3000)
		if gdCount1 ==1 then
			for i = 1, #sky1 do
				gg.sleep(2000)
				Teleport(sky1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount1 ==2 then
			for i = 1, #sky2 do
				gg.sleep(2000)
				Teleport(sky2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount1 ==3 then
			for i = 1, #sky3 do
				gg.sleep(2000)
				Teleport(sky3[i])
			end
			gg.toast("这个先祖已结束，10秒后自动去终点！")
			gg.sleep(12000)
			Teleport({156.066879,103.757659,-295.490875})
			gg.toast("请务必冥想谢谢！")
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
  l2menu = 1
  menu2 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "云野 - 瞬移")
  if menu2 == nil then else
  if menu2[1] == true then l2() end
  if menu2[2] == true then ZMOve() end end
end

--云野先祖[下一个]
function l2()
	if gdCount2 == 0 and map9_in ~= 1 then
		l21()
		gg.toast("先祖重置完成，1秒后瞬移至云野入口")
		gg.sleep(1000)
		Teleport({8.9,1.5,4.48})
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
			Teleport({-9.7918510437;165.37245178223;-5.74012947083})
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
			Teleport({-104.2032699585;184.77220153809;172.62110900879})
			gg.toast("已瞬移至 [云野右侧隐藏图出口] ，请手动进入继续冲")
			gdCount2 = gdCount2 - 1
			map9_right_out = 1
			return 0
		end
		if gdCount2 == 7 and map9_left_in ~= 1 then
			l28()
			Teleport({157.29043579102;200.01664733887;226.44515991211})
			gg.toast("已瞬移至 [云野左侧隐藏图入口] ，请手动进入")
			gdCount2 = gdCount2 - 1
			map9_left_in = 1
			return 0
		end
		
		if gdCount2 == 8 and map9_left_out ~= 1 then
		  Teleport({242.77,198.38,226})
		  gg.toast("已瞬移至 [云野左侧隐藏图出口] ，请手动进入，5秒后将自动瞬移")
		  map9_left_out = 1
		  gg.sleep(5000)
		  Teleport({127.50,254.79,479.60})
		  gg.toast("已瞬移至 [云野神庙入口] ，请手动进入，10秒后将自动瞬移")
		  map9_temple_in = 1
		  gg.sleep(10000)
		  Teleport({-112.18,89.54,42.43})
		  gg.toast("请务必冥想谢谢！")
		  return 0
		end
		xyz = map9[1][gdCount2]
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(6)
		gg.sleep(3000)
		
		
		if gdCount2 ==1 then
			for i = 1, #yy1 do
				gg.sleep(3000)
				Teleport(yy1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==2 then
			for i = 1, #yy2 do
				gg.sleep(3000)
				Teleport(yy2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==3 then
			for i = 1, #yy3 do
				gg.sleep(3000)
				Teleport(yy3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==4 then
			for i = 1, #yy4 do
				gg.sleep(3000)
				Teleport(yy4[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==5 then
			--for i = 1, #yy5 do
			--	gg.sleep(3500)
			--	Teleport(yy5[i])
			--end
			gg.toast("自己冲吧！")
		end
		
		if gdCount2 ==6 then
			for i = 1, #yy6 do
				gg.sleep(3900)
				Teleport(yy6[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount2 ==7 then
			for i = 1, #yy7 do
				gg.sleep(3000)
				Teleport(yy7[i])
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
  l3menu = 1
  --gg.setSpeed(2)
  menu3 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "雨林 - 瞬移")
  if menu3 == nil then else
  if menu3[1] == true then l3() end
  if menu3[2] == true then ZMOve() end end
end

--雨林先祖[下一个]
function l3()
	if gdCount3 == 0 and map10_in ~=1 then
		l31()
		gg.toast("重置先祖完成，1秒后瞬移至雨林入口")
		gg.sleep(1000)
		Teleport({5.04,1.5,7.505})
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
			Teleport({28.37304496765;98.56972503662;-113.70115661621})
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
			Teleport({66.04258728027,99.53592681885,49.7889175415})
			gg.toast("已瞬移至 [雨林主地图入口2] ，请手动进入后继续冲")
			gdCount3 = gdCount3 - 1
			map10_main2 = 1
			return 0
		end
		if gdCount3 == 8 and map10_main3 ~=1 then
		  Teleport({-18.17,182.76,402.43})
		  gg.toast("已瞬移至 [雨林神庙入口] ，请手动进入，5秒后将自动瞬移")
		  map10_main3 = 1
		  gg.sleep(5000)
		  Teleport({-0.264,115.535,-4.0982})
		  gg.toast("请务必冥想谢谢！")
		  return 0
		end
		xyz = map10[1][gdCount3]
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(3)
		gg.sleep(3000)
		
		if gdCount3 ==1 then
			for i = 1, #yl1 do
				gg.sleep(1500)
				Teleport(yl1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==2 then
			for i = 1, #yl2 do
				gg.sleep(3000)
				Teleport(yl2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==3 then
			for i = 1, #yl3 do
				gg.sleep(1500)
				Teleport(yl3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==4 then
			for i = 1, #yl4 do
				gg.sleep(5000)
				Teleport(yl4[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount3 ==5 then
			for i = 1, #yl5 do
				gg.sleep(2500)
				Teleport(yl5[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		if gdCount3 ==6 then
			for i = 1, #yl6 do
				gg.sleep(3000)
				Teleport(yl6[i])
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
  l4menu = 1
  --gg.setSpeed(2)
  menu4 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "霞谷 - 瞬移")
  if menu4 == nil then else
  if menu4[1] == true then l4() end
  if menu4[2] == true then ZMOve() end end
end


--霞谷先祖[下一个]
function l4()
	if gdCount4 == 0 and map11_in ~=1 then
		l41()
		gg.toast("重置先祖完成，1秒后瞬移至霞谷入口")
		gg.sleep(1000)
		Teleport({-2.916,2,7.53})
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
			Teleport({205.1636505127;56.70009994507;-601.97637939453})
			gg.toast("已瞬移至 [霞谷天空赛道一图入口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky1_in = 1
			return 0
		end
		if gdCount4 == 4 and map11_sky1_out ~=1 then
			Teleport({206.68609619141;491.52456665039;-205.85830688477})
			gg.toast("已瞬移至 [霞谷天空赛道一图出口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky1_out = 1
			return 0
		end
		if gdCount4 == 4 and map11_sky2_in ~=1 then
	    	l44()
			Teleport({149.81336975098;1008.25744628906;-100.43368530273})
			gg.toast("已瞬移至 [霞谷天空赛道二图入口] ，请手动进入后继续冲")
			gdCount4 = gdCount4 - 1
			map11_sky2_in = 1
			return 0
		end
		xyz = map11[1][gdCount4]
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(6)
		gg.sleep(3000)
		
		if gdCount4 ==1 then
			for i = 1, #xg1 do
				gg.sleep(3000)
				Teleport(xg1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount4 ==2 then
			for i = 1, #xg2 do
				gg.sleep(1500)
				Teleport(xg2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end

		if gdCount4 ==3 then
			gg.toast("这个真得自己来！")
		end
		
		if gdCount4 ==4 then
			for i = 1, #xg4 do
				gg.sleep(1500)
				Teleport(xg4[i])
			end
			gg.toast("这个先祖已结束，10秒后自动去终点！")
			gg.sleep(12000)
			Teleport({60.076934,137.721679,-294.028564})
			gg.sleep(4000)
			Teleport({9.378504,137.932312,-184.543090})
			gg.toast("请务必冥想谢谢！")
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
 l5menu = 1
  --gg.setSpeed(2)
  menu5 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "暮土 - 瞬移")
  if menu5 == nil then else
  if menu5[1] == true then l5() end
  if menu5[2] == true then ZMOve() end end
end

local map12_in = 0
local map12_main1_out = 0 --一图出口
local map12_sunkenship_in = 0 --沉船入口
local map12_sunkenship_out = 0 --沉船出口
local map12_yilong_out = 0 --一龙图出口

--暮土先祖[下一个]
function l5()
	if gdCount5 ==0 and  map12_in ~= 1 then
		l51()
		l52()
		gg.toast("重置先祖完成，1秒后瞬移至墓土入口")
		gg.sleep(1000)
		Teleport({-6.42,2,4.445})
		gg.toast("瞬移完成，5秒后将瞬移至墓土一图入口")
		gg.sleep(5000)
		Teleport({-113.36,55,-796.6})
		gg.toast("瞬移完成")
		l51()
		l52()
		map12_in = 1
		return 0
	end
	
	if gdCount5 == 7 then
		gg.toast("请手动返回遇境")
	else
		gdCount5 = gdCount5 + 1
		if gdCount5 == 3 and map12_main1_out ~=1 then
			l53()
			l54()
			Teleport({-91.85065460205;11.72455883026;158.18051147461})
			gg.toast("已瞬移至 [暮土一图出口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_main1_out = 1
			return 0
		end
		if gdCount5 == 5 and map12_sunkenship_in ~=1 then
			l55()
			--gg.setSpeed(1)
			Teleport({189.26557922363;69.34118652344;-73.92557525635})
			gg.toast("已瞬移至 [暮土沉船入口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_sunkenship_in = 1
			return 0
		end
		
		if gdCount5 == 6 and map12_sunkenship_out ~=1 then
			l56()
			Teleport({-343.83453369141;35.31271362305;386.27169799805})
			gg.toast("已瞬移至 [暮土沉船出口] ，请手动进入后继续冲")
			gdCount5 = gdCount5 - 1
			map12_sunkenship_out = 1
			return 0
		end
		
		if gdCount5 == 7 and map12_yilong_out ~=1 then
		  Teleport({-285.36907958984;92.04296112061;-400.69836425781})
		  gg.toast("已瞬移至 [暮土一龙图出口] ，请手动进入,6秒后将自动瞬移")
		  gg.sleep(6000)
		  Teleport({0.1838,206.55,2.58})
		  map12_yilong_out = 1
		  return 0
		end
		
		xyz = map12[1][gdCount5]
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(6)
		gg.sleep(4000)
		
		if gdCount5 ==1 then
			for i = 1, #mt1 do
				gg.sleep(2500)
				Teleport(mt1[i])
			end
		end
		
		if gdCount5 ==2 then
			for i = 1, #mt2 do
				gg.sleep(3000)
				Teleport(mt2[i])
			end
		end
		
		if gdCount5 ==3 then
			for i = 1, #mt3 do
				gg.sleep(3000)
				Teleport(mt3[i])
			end
		end
		
		if gdCount5 ==4 then
			for i = 1, #mt4 do
				gg.sleep(3000)
				Teleport(mt4[i])
			end
		end
		
		if gdCount5 ==5 then
			for i = 1, #mt5 do
				gg.sleep(3000)
				Teleport(mt5[i])
			end
		end
		
		if gdCount5 ==6 then
			for i = 1, #mt6 do
				gg.sleep(3000)
				Teleport(mt6[i])
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
  l6menu = 1
  menu6 = gg.multiChoice({
    "1. 冲",
    "0. 返回主页"
  }, nil, "禁阁 - 瞬移")
  if menu6 == nil then else
  if menu6[1] == true then l6() end
  if menu6[2] == true then ZMOve() end end
end


local map13_top_in = 0
local map13_in = 0

--禁阁先祖[下一个]
function l6()
	if gdCount6 == 0 and map13_in ~=1 then
		l61()
		l62()
		l63()
		gg.toast("先祖重置完成，1秒后瞬移至禁阁入口")
		gg.sleep(1000)
		Teleport({-8.41,2,0.503})
		gg.toast("瞬移禁阁入口完成，请手动进入")
		map13_in = 1
		return 0
	end 
	
	if gdCount6 == 5 then
		gg.toast("没有下一个瞬移坐标了")
	else
	    gdCount6 = gdCount6 + 1
		xyz = map13[1][gdCount6]
		if gdCount6 == 4 and map13_top_in ~=1 then
			l64()
			Teleport({48.09609985352;228.29138183594;8.88393878937})
			gg.toast("请再冲一次")
			gdCount6 = gdCount6 - 1
			map13_top_in = 1
			return 0
		end
		Teleport(xyz)
		gg.toast("请手动点火4秒后将自动瞬移")
		--gg.setSpeed(6)
		gg.sleep(4000)
		
		if gdCount6 ==1 then
			for i = 1, #jg1 do
				gg.sleep(1500)
				Teleport(jg1[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
	
		if gdCount6 ==2 then
			for i = 1, #jg2 do
				gg.sleep(3500)
				Teleport(jg2[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
	
		if gdCount6 ==3 then
			for i = 1, #jg3 do
				gg.sleep(2500)
				Teleport(jg3[i])
			end
			gg.toast("这个先祖已结束，请点亮后继续冲！")
		end
		
		if gdCount6 ==4 then
			for i = 1, #jg4 do
				gg.sleep(2500)
				Teleport(jg4[i])
			end
			--gg.toast("这个先祖已结束，30秒后自动去终点！")
			--gg.sleep(30000)
			--Teleport({-0.018859,310.305175,69.788833})
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
	gg.searchNumberB(num, 32, false, gg.SING_EQUAL, 0, -1)
	gg.removeResults(gg.getResults(2))
	gg.getResults(10)
	gg.editAll("3811807379", gg.TYPE_QWORD)
	gg.clearResults()
end

function getZb()
	if sfs == true then
		gg.clearResults()
		gg.setRanges(gg.REGION_C_ALLOC)
		gg.searchNumberB("-1,067,909,120;1;1,065,353,216::217", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
		fhz = gg.getResults(gg.getResultCount())
		gg.toast("搜索到 [" .. gg.getResultCount() .. "] 个")
		sfs = false
	end
	
	
	local x = {}
	local zb = {}
	if gg.getResultCount() == 3 then
		for i=1, 3 do
			x[i] = {}
			x[i].address = fhz[3].address + i * 4
			x[i].flags = gg.TYPE_FLOAT
			x = gg.getValues(x)
			zb[i] = x[i].value
		end
	else
		gg.searchNumberB("1065353216", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
		for i=1, 3 do
			x[i] = {}
			x[i].address = fhz[1].address + i * 4
			x[i].flags = gg.TYPE_FLOAT
			x = gg.getValues(x)
			zb[i] = x[i].value
		end
	end
	
	gg.alert("[" .. zb[1] .. "][" .. zb[2] .. "][" .. zb[3] .. "]")
	
end
--重置瞬移先祖--


--跑图-晨岛
local map143 = {}
map143[1] = {156.18676757812;103.23870849609;-294.5241394043}
map143[2] = {150.65158081055;86.59052276611;-237.01953125}
map143[3] = {160.23219299316;85.74584960938;-248.42921447754}
map143[4] = {153.00785827637;86.48435974121;-251.92892456055}
map143[5] = {372.57305908203;52.57130813599;-11.77190208435}
map143[6] = {375.23532104492;51.58967590332;-13.80929470062}
map143[7] = {118.10299682617;0.97198873758;-1733.97021484375}--cg




--跑图-云野
local map144 = {}
map144[1] = {115.60176086426;196.81085205078;-434.86502075195}--云入口烛1
map144[2] = {119.39235687256;196.66189575195;-431.43505859375}--云入口烛2
map144[3] = {120.78240203857;196.61921691895;-427.14166259766}--云入口烛3
map144[4] = {125.69341278076;196.24737548828;-434.72247314453}--云入口大蜡烛1
map144[5] = {119.99072265625;196.18881225586;-423.10766601562}--云入口大蜡烛2
map144[6] = {77.42821502686;150.11305236816;3.10148835182}--云一洞口烛
map144[7] = {80.14566802979;150.08250427246;2.11862969398}--云一大蜡烛3
map144[8] = {90.35874176025;156.30891418457;46.62478637695}--云一大蜡烛4
map144[9] = {102.6978302002;154.87182617188;16.57647514343}--云一先祖烛
map144[10] = {82.07817840576;157.82202148438;50.2978515625}--云一出口烛
map144[11] = {58.6725959777832;150.79380798339844;7.27370023727417}--云一洞烛
map144[12] = {26.2653865814209;158.4989471435547;-20.397123336791992}--云一右副入烛
map144[13] = {-17.372812271118164;171.26510620117188;-2.61037540435791}--云一右副入传
map144[14] = {-104.82821655273438;158.04147338867188;53.739620208740234}--云一右副内起下烛
map144[15] = {-102.8588104248;171.53695678711;57.33250808716}--云一右副跳台
map144[16] = {-145.45869445801;170.86224365234;85.90411376953}--云一右副平台
map144[17] = {-159.85511779785156;158.31936645507812;116.78955841064453}--云一右副内一洞烛
map144[18] = {-194.755615234375;177.94134521484375;83.04451751708984}--云一右副内二洞烛
map144[19] = {-181.7674407959;189.21780395508;124.93006134033}--云一右副小高台
map144[20] = {-197.4191436767578;205.3974609375;86.28669738769531}--云一右副内二高台烛
map144[21] = {-157.05372619628906;196.1898956298828;118.16311645507812}--云一右副内一高台烛
map144[22] = {-198.01205444336;179.79231262207;86.30323791504}--云一右副大蜡烛5
map144[23] = {-359.2660827636719;136.53712463378906;124.91087341308594}--新图入口
map144[24] = {24.33456802368164;55.67715072631836;328.6855773925781}
map144[25] = {56.34254455566406;102.52068328857422;300.8757019042969}
map144[26] = {78.94340515136719;29.060487747192383;331.7101135253906}
map144[27] = {71.60596466064453;1.1953628063201904;302.8883361816406}
map144[28] = {50.55968475341797;0.8434000611305237;331.0429992675781}
map144[29] = {101.3031997680664;1.0473014116287231;361.0246887207031}
map144[30] = {115.63052368164062;18.525861740112305;323.6504821777344}
map144[31] = {75.35946655273438;18.284135818481445;280.5356140136719}
map144[32] = {78.32447052001953;8.332757949829102;296.04095458984375}
map144[33] = {92.10149383544922;2.6787989139556885;291.4185791015625}
map144[34] = {119.20208740234375;20.165529251098633;324.14703369140625}
map144[35] = {110.66464233398438;19.994873046875;332.09564208984375}
map144[36] = {92.13536071777344;6.6882171630859375;291.3611145019531}
map144[37] = {95.8053207397461;1.9116520881652832;290.0443420410156}
map144[38] = {140.17161560058594;12.682710647583008;283.6900329589844}
map144[39] = {244.67581176757812;95.687255859375;220.33270263671875}
map144[40] = {234.8611602783203;119.02686309814453;239.98463439941406}
map144[41] = {280.94256591796875;175.5189971923828;-25.880108833312988}--新图出口
map144[42] = {-137.30836486816406;169.07720947265625;80.83726501464844}
map144[43] = {-44.61409378051758;167.82762145996094;35.79931640625}--云一右副内回传点
map144[44] = {145.0370330810547;161.82015991210938;6.304953575134277}--云一左副起烛
map144[45] = {171.47674560546875;162.5426025390625;7.549071788787842}--云一左副起传
map144[46] = {279.54852294922;186.29521179199;82.25734710693}--云一左副大蜡烛6
map144[47] = {302.11297607421875;187.87973022460938;65.82952117919922}--云一左副内一烛
map144[48] = {296.7933654785156;182.36087036132812;134.3046112060547}--云一左副内二烛
map144[49] = {282.44036865234375;196.65106201171875;96.31594848632812}--云一左副内右高一烛
map144[50] = {258.6740417480469;199.00433349609375;127.19725799560547}--云一左副内右高二烛
map144[51] = {399.2491455078125;181.25975036621094;199.69834899902344}--云一左副内左洞一烛
map144[52] = {410.10217285156;185.59422302246;210.34518432617}--云一左副内左洞二烛
map144[53] = {375.05728149414;180.9786529541;225.53833007812}--云一左副内左洞三烛
map144[54] = {313.75122070312;187.85140991211;203.14541625977}--云一左副内左洞四烛
map144[55] = {268.35015869140625;193.56484985351562;212.97506713867188}--云一左副内末烛
map144[56] = {244.32598876953,197.86904907227,228.06080627441}--云一左副出口传
map144[57] = {242;200;229}--云一左副出口传
map144[58] = {89.51289245605,198.62976074219,268.43621826172}--云二一庙台
map144[59] = {96.54067993164;202.99490356445;271.29061889648}--云二一庙台花1
map144[60] = {95.54228973389;202.99942016602;274.67959594727}--云二一庙台花2
map144[61] = {67.30188751220703;193.91302490234375;361.1446838378906}--云二二庙台
map144[62] = {65.10161590576;198.14817810059;362.3815612793}--云二二庙台花
map144[63] = {65.89633178710938;187.16192626953125;362.7370910644531}--云二二人门烛
map144[64] = {26.259557724;183.24858093262;273.34768676758}--云二大蜡烛7
map144[65] ={-19.12663841248;196.83535766602;318.02593994141} 
map144[66] = {-40.871551513671875;183.21505737304688;317.0045471191406}
map144[67] = {-48.454994201660156;192.084716796875;319.98724365234375}
map144[68] = {-52.46832275390625;180.03219604492188;324.8914489746094}--云二蝴蝶门传
map144[69] = {-26.22090721130371;58.03938293457031;-44.910404205322266}--云二八人放狗烛
map144[70] = {31.9806209564209;42.211456298828125;0.51051217913627625}--八门出传
map144[71] = {133.95735168457;250.58154296875;456.18634033203}--云顶水边
map144[72] = {122.13149261475;254.35276794434;477.18838500977}--云顶门口
map144[73] = {132.1917266845703;255.7042694091797;486.8236083984375}--云顶传
map144[74] = {-99.89473724365;83.42595672607;43.98386764526}--云顶蜡烛1
map144[75] = {-106.39923095703;84.48821258545;40.20069885254}--云顶蜡烛2
map144[76] = {-109.84103393554688;87.26282501220703;45.893775939941406}--云顶蜡烛3
map144[77] = {-127.89055633544922;75.16905975341797;42.62199401855469}--顶下笑脸烛
map144[78] = {-529.02185058594;8.60619068146;-213.8217010498}--cg


--跑图-雨林
local map145 = {}
map145[1] = {131.82736206055;217.6923828125;-627.33093261719}--雨林大蜡烛1
map145[2] = {131.85511779785;218.42578125;-616.24346923828}--雨林大蜡烛2
map145[3] = {143.29095458984;219.55976867676;-606.51159667969}--雨林大蜡烛3
map145[4] = {-2.203404426574707;94.5761489868164;-228.66403198242188}
map145[5] = {18.45735740661621;95.40001678466797;-218.06982421875}
map145[6] = {20.990663528442383;97.03652954101562;-197.72007751464844}
map145[7] = {2.9503402709960938;100.0687026977539;-189.71299743652344}
map145[8] = {26.574356079101562;97.6395263671875;-176.4409637451172}
map145[9] = {9.373396873474121;97.7729263305664;-153.47169494628906}
map145[10] = {31.91049575805664;97.89644622802734;-145.87973022460938}
map145[11] = {30.677902221679688;99.5719985961914;-133.22152709960938}
map145[12] = {14.51413345336914;99.12451934814453;-131.0629425048828}
map145[13] = {32.32442474365;98.16691589355;-144.73559570312}--雨林大蜡烛5
map145[14] = {29.446800231933594;98.68903350830078;-108.74456024169922}--进二图
map145[15] = {32.01351165771;106.14221191406;-72.17198181152}--雨林大蜡烛6
map145[16] = {29.409271240234375;105.90355682373047;-71.40182495117188}
map145[17] = {17.570165634155273;106.4460678100586;-66.62906646728516}
map145[18] = {68.45333862304688;107.14192962646484;-88.78266906738281}
map145[19] = {97.56385040283203;112.40455627441406;-102.85734558105469}
map145[20] = {70.75733184814453;107.232666015625;-61.490875244140625}
map145[21] = {67.08811950683594;106.40901184082031;-52.508697509765625}
map145[22] = {41.83656692504883;97.60095977783203;-45.62275314331055}
map145[23] = {89.12765502929688;99.47599792480469;-29.770153045654297}
map145[24] = {106.83905792236328;112.14656066894531;-49.159645080566406}
map145[25] = {81.92449951171875;103.03842163085938;17.71517562866211}
map145[26] = {93.28926849365234;99.50831604003906;33.01365280151367}
map145[27] = {76.68873596191406;96.98365020751953;28.59961700439453}
map145[28] = {50.784584045410156;102.33153533935547;30.589534759521484}
map145[29] = {38.77291488647461;104.95604705810547;-2.9528141021728516}
map145[30] = {63.19426727294922;96.74542999267578;11.217307090759277}
map145[31] = {55.3155403137207;97.33916473388672;-4.644059658050537}
map145[32] = {45.73755645751953;95.83983612060547;-4.416775703430176}
map145[33] = {38.238365173339844;96.22483825683594;-10.521968841552734}
map145[34] = {24.924467086791992;117.56786346435547;-25.419710159301758}
map145[35] = {64.62691497803;100.23136138916;49.59238433838}--雨林大蜡烛7
map145[36] = {-2.339399576187134;110.83828735351562;-51.326168060302734}--雨二右隐藏图传
map145[37] = {13.74974536895752;83.5116195678711;-57.24790954589844}
map145[38] = {-1.2992981672286987;85.30338287353516;-53.561256408691406}
map145[39] = {-16.270732879638672;84.96279907226562;-31.028697967529297}
map145[40] = {-1.0055354833602905;84.93438720703125;-11.711012840270996}
map145[41] = {9.832176208496094;92.75342559814453;7.1179704666137695}
map145[42] = {-17.455183029174805;95.89004516601562;20.984111785888672}
map145[43] = {-30.485225677490234;94.82850646972656;14.06503677368164}
map145[44] = {0.07870174944400787;89.75100708007812;70.5005874633789}
map145[45] = {6.142397880554199;89.98209381103516;68.2716293334961}
map145[46] = {16.45709800720215;88.46916198730469;97.94193267822266}
map145[47] = {-8.16575813293;84.82319641113;-7.70112085342}--雨林大蜡烛8
map145[48] = {5.6106004715;90.33228302002;67.97341918945}--雨林大蜡烛9
map145[49] = {54.191062927246094;54.770408630371094;43.37236785888672}--隐藏图进地底隐藏图
map145[50] = {63.319236755371094;78.37176513671875;-281.47509765625}
map145[51] = {61.785152435302734;80.08026885986328;-287.1666259765625}
map145[52] = {1.76633882522583;121.0093994140625;-365.9449157714844}
map145[53] = {-54.46755599975586;132.1262664794922;-198.9167938232422}
map145[54] = {-37.388763427734375;132.10345458984375;-197.3150177001953}
map145[55] = {-33.27627944946289;133.17440795898438;-193.63510131835938}
map145[56] = {-57.56206130981445;210.17996215820312;-283.5279541015625}--出隐藏图中隐藏图
map145[57] = {17.838523864746094;87.8037338256836;124}--进水母图
map145[58] = {-79.4979019165039;153.09243774414062;155.51388549804688}
map145[59] = {-74.6307373046875;134.41847229003906;175.82106018066406}
map145[60] = {-63.85072708129883;143.30435180664062;220.92047119140625}
map145[61] = {-69.11176300048828;144.4777069091797;228.58154296875}
map145[62] = {-82.51073455810547;136.01907348632812;213.83433532714844}
map145[63] = {-92.72491455078125;136.0518035888672;225.72854614257812}
map145[64] = {-82.17101287841797;134.72496032714844;230.28773498535156}
map145[65] = {-76.02677154541016;134.48060607910156;230.77593994140625}
map145[66] = {-47.30995178222656;134.73764038085938;224.183837890625}
map145[67] = {-20.75389289855957;134.41195678710938;199.21145629882812}
map145[68] = {-35.12477111816406;136.9717559814453;159.58932495117188}
map145[69] = {2.4307680130004883;137.19619750976562;193.8965606689453}
map145[70] = {25.628307342529297;135.096435546875;221.997802734375}
map145[71] = {49.76029586791992;134.6642303466797;218.80902099609375}
map145[72] = {73.95918273925781;145.99652099609375;134.69493103027344}
map145[73] = {119.28811645507812;164.44772338867188;156.7918701171875}
map145[74] = {90.22545623779297;138.3655242919922;109.40245056152344}
map145[75] = {52.240909576416016;143.88363647460938;73.66879272460938}
map145[76] = {44.975379943847656;145.29437255859375;53.761775970458984}
map145[77] = {23.501495361328125;139.66944885253906;12.078184127807617}
map145[78] = {-11.234320640563965;138.20846557617188;85.80290222167969}
map145[79] = {-4.976045608520508;137.82252502441406;109.53020477294922}
map145[80] = {-9.166512489318848;134.5615997314453;137.6543731689453}
map145[81] = {-17.130474090576172;134.39584350585938;165.3542022705078}
map145[82] = {-23.678184509277344;139.99234008789062;221.4693145751953}
map145[83] = {-24.22772216796875;140.31878662109375;246.83804321289062}
map145[84] = {-7.68647241592;140.04997253418;127.28116607666}--雨林大蜡烛10
map145[85] = {-21.60939025879;139.92657470703;193.96231079102}--雨林大蜡烛11
map145[86] = {-17.36788558959961;182.655517578125;402.27899169921875}--雨林终点传
map145[87] = {6.333451747894287;104.5926284790039;-12.134096145629883}
map145[88] = {16.43203353881836;113.34284973144531;-15.379371643066406}
map145[89] = {-16.122543334960938;104.5932388305664;-5.3551716804504395}
map145[90] = {-13.461468696594238;105.8984146118164;7.52207088470459}
map145[91] = {8.754039764404297;109.80486297607422;69.82687377929688}
map145[92] = {-10.5328369140625;108.21336364746094;96.94149780273438}
map145[93] = {-9.981240272521973;108.2040023803711;67.60970306396484}
map145[94] = {7.642393589019775;106.72924041748047;93.62760162353516}
map145[95] = {0.22106818855;106.93251800537;97.13048553467}--雨林大蜡烛12
map145[96] = {4.75970983505;8.97922229767;503.04428100586}--cg



--跑图-霞谷
local map146 = {}
map146[1] = {-44.76485443115;306.10290527344;22.63001441956}--霞谷大蜡烛1
map146[2] = {-32.5977897644;306.44381713867;1.42672419548}--霞谷大蜡烛2
map146[3] = {-92.59186553955078;255.79177856445312;-148.4453125}
map146[4] = {-98.97477722167969;251.66648864746094;-164.38717651367188}
map146[5] = {-103.35491943359375;249.83128356933594;-172.832763671875}
map146[6] = {-105.87772369384766;248.24029541015625;-179.77073669433594}
map146[7] = {-108.69766235351562;246.6088104248047;-187.23260498046875}
map146[8] = {-110.41412353515625;244.8678436279297;-194.4726104736328}
map146[9] = {-122.05194091796875;239.70791625976562;-223.7830047607422}
map146[10] = {-125.28434753417969;267.6664123535156;-110.53711700439453}
map146[11] = {-149.92735290527344;226.8570556640625;-227.44825744628906}
map146[12] = {-135.61172485351562;198.6570281982422;-332.2059020996094}
map146[13] = {-64.35780334472656;124.6812515258789;-449.7171936035156}
map146[14] = {10.450285911560059;87.33418273925781;-454.9671936035156}
map146[15] = {67.18917846679688;75.29890441894531;-478.4848327636719}
map146[16] = {94.21472930908203;72.43785095214844;-490.087158203125}
map146[17] = {158.03570556640625;75.53165435791016;-446.781982421875}
map146[18] = {172.24948120117188;44.3740119934082;-486.6772766113281}
map146[19] = {220.70950317382812;44.45427322387695;-518.063232421875}
map146[20] = {188.4931182861328;44.58057403564453;-547.1014404296875}
map146[21] = {186.60269165039;48.10845947266;-526.18041992188}--霞谷大蜡烛3
map146[22] = {160.35694885254;45.13550949097;-531.51977539062}--霞谷大蜡烛4
map146[23] = {206.29270935058594;57.820106506347656;-604.9664916992188}--进门
map146[24] = {115.29063415527344;477.0027770996094;16.06882095336914}
map146[25] = {99.04637145996094;472.1065673828125;1.187245488166809}
map146[26] = {79.5333251953125;480.4363708496094;24.503482818603516}
map146[27] = {17.844085693359375;506.92388916015625;-4.885674953460693}
map146[28] = {26.237258911132812;530.4208984375;-38.021541595458984}
map146[29] = {95.77713775634766;560.3527221679688;-47.58984375}
map146[30] = {113.61669921875;534.3023681640625;-27.5811824798584}
map146[31] = {92.50080871582031;530.6990966796875;-50.65768051147461}
map146[32] = {105.09220886230469;478.4993591308594;-90.68204498291016}
map146[33] = {129.60484313964844;478.4994812011719;-71.72990417480469}
map146[34] = {143.32379150390625;480.37640380859375;-98.64441680908203}
map146[35] = {122.619140625;480.37640380859375;-113.82420349121094}
map146[36] = {140.4347381591797;485.3722839355469;-132.65879821777344}
map146[37] = {155.61138916015625;485.3722839355469;-120.56465911865234}
map146[38] = {175.20889282226562;494.9730224609375;-144.44924926757812}
map146[39] = {155.66905212402344;495.0263671875;-158.6274871826172}
map146[40] = {57.4171257019;474.75738525391;56.47984695435}--霞谷大蜡烛5
map146[41] = {112.4807434082;474.06539916992;-68.50860595703}--霞谷大蜡烛6
map146[42] = {204.70770263671875;491.51055908203125;-205.14031982421875}--进飞行赛道
map146[43] = {187.60020446777344;1186.941650390625;406.51434326171875}
map146[44] = {177.66615295410156;1186.94140625;404.269775390625}
map146[45] = {170.40806579589844;1187.875732421875;403.1292724609375}
map146[46] = {173.63829040527344;1186.94091796875;388.72137451171875}
map146[47] = {180.91175842285156;1186.9412841796875;390.77227783203125}
map146[48] = {191.1328887939453;1186.9703369140625;392.504150390625}
map146[49] = {168.03468322753906;1187.010009765625;391.3314514160156}--手动开门
map146[50] = {167.76588439941406;1186.6871337890625;390.9236755371094}
map146[51] = {-146.15777587890625;1187.180908203125;308.20083984375}
map146[52] = {-269.4794006347656;1172.140625;285.8036804199219}
map146[53] = {77.5286407470703;1076.035888671875;361.50336456298828}--拿个光之子
map146[54] = {137;1017;-100}--云传
map146[55] = {54;155;-138}--千鸟城传
map146[56] = {36.95596694946;135.67933654785;-220.98320007324}--霞谷大蜡烛7
map146[57] = {79.19212341309;135.67930603027;-218.0965423584}--霞谷大蜡烛8
map146[58] = {60.74193572998047;137.8476104736328;-292.3225402832031}--进终点门
map146[59] = {9.373971939086914;141.13034057617188;-188.0401153564453}
map146[60] = {9.239028930664062;141.1038360595703;-190.01651000976562}
map146[61] = {-30.518871307373047;146.9903564453125;-149.07537841796875}
map146[62] = {-30.08305549621582;140.20761108398438;-149.08651733398438}
map146[63] = {-29.187597274780273;146.8710174560547;-136.1443634033203}
map146[64] = {-19.137134552001953;153.4862060546875;-127.01026916503906}
map146[65] = {-11.19961166381836;153.62245178222656;-120.9801254272461}
map146[66] = {314.90731811523;173.38836669922;-783.63726806641}

--跑图墓土方舟
local map17 = {}
map17[1] = {-210.83389282226562;43.8532829284668;-825.1362915039062}--进漩涡传
map17[2] = {150.88035583496094;1.2303528785705566;47.05213928222656}--方舟进
map17[3] = {105.99718475341797;116.64276123046875;463.20355224609375}
map17[4] = {77.28841400146484;109.68357849121094;485.885986328125}
map17[5] = {42.70269775390625;108.71720886230469;500.8755798339844}
map17[6] = {79.6852798461914;108.87772369384766;523.847412109375}
map17[7] = {94.19420623779297;108.77814483642578;510.2540588378906}
map17[8] = {60.902381896972656;109.07894134521484;500.9869689941406}
map17[9] = {280.209228515625;104.30025482177734;362.9246520996094}
map17[10] = {285.2598876953125;102.49212646484375;346.5067443847656}
map17[11] = {302.8304138183594;113.27246856689453;349.1226806640625}
map17[12] = {287.1982421875;120.3602294921875;352.1530456542969}
map17[13] = {280.70086669921875;115.52603149414062;512.8643188476562}
map17[14] = {281.49249267578125;115.78571319580078;531.1863403320312}
map17[15] = {300.6126403808594;122.61006164550781;521.91650390625}
map17[16] = {303.63262939453125;120.72661590576172;543.7495727539062}
map17[17] = {330.70159912109375;120.54985809326172;557.2971801757812}
--跑图-暮土

local map147 = {}
map147[1] = {-70.51749420166016;66.21754455566406;-759.3367919921875}--墓土大蜡烛1
map147[2] = {-97.19038391113281;62.81600570678711;-789.6600341796875}--墓土大蜡烛2
map147[3] = {-210.83389282226562;43.8532829284668;-825.1362915039062}--进漩涡传
map147[4] = {84.58333587646484;0.4887930750846863;321.476318359375}
map147[5] = {82.22171020507812;0.6361188888549805;303.9442138671875}
map147[6] = {47.68532943725586;0.5425735712051392;231.57481384277344}
map147[7] = {31.781368255615234;0.8271701335906982;234.020751953125}
map147[8] = {-31.7234992981;2.23189425468;243.71058654785}--墓土大蜡烛3
map147[9] = {7.297956466674805;0.09288870543241501;300.19677734375}
map147[10] = {-6.911025524139404;0.5780452489852905;294.1271057128906}
map147[11] = {-29.96484375;1.7772810459136963;238.7903594970703}
map147[12] = {-27.673227310180664;0.8092966675758362;216.30819702148438}
map147[13] = {-53.329036712646484;0.8884901404380798;220.55726623535156}
map147[14] = {-57.57217025756836;0.10154907405376434;227.09129333496094}
map147[15] = {-59.24860382080078;0.9662719964981079;230.25357055664062}
map147[16] = {-91.76660919189453;2.182464361190796;327.45355224609375}
map147[17] = {-78.54911804199219;8.32947063446045;165.12667846679688}
map147[18] = {-82.88870239258;9.85094451904;164.39083862305}--墓土大蜡烛4
map147[19] = {-93.77214813232422;11.91988754272461;156.5588836669922}--进二图传
map147[20] = {70.05243682861328;90.65315246582031;259.2244567871094}
map147[21] = {44.14875793457031;90.38558197021484;232.5563507080078}
map147[22] = {52.33485412597656;99.00350952148438;155.31607055664062}
map147[23] = {47.50992202758789;93.41293334960938;143.01904296875}
map147[24] = {36.06306457519531;93.42144012451172;140.0792999267578}
map147[25] = {40.19976806640625;94.80970001220703;121.72950744628906}
map147[26] = {64.20258331298828;66.70899963378906;-14.94819450378418}
map147[27] = {49.61924362182617;69.51409149169922;-61.62223815917969}--墓土大蜡烛5
map147[28] = {85.78913879394531;65.72119903564453;-100.14730072021484}
map147[29] = {72.0611343383789;68.98323059082031;-157.65599060058594}
map147[30] = {44.40232849121;82.52998352051;-132.0393371582}--墓土大蜡烛6
map147[31] = {7.971547603607178;77.91605377197266;-142.2152862548828}
map147[32] = {-5.699362754821777;81.82476043701172;-123.96440124511719}
map147[33] = {-7.448570251464844;84.0191650390625;-127.59477233886719}
map147[34] = {-7.7204270362854;88.84687805175781;-132.92320251464844}
map147[35] = {0.5131586194038391;88.84307098388672;-134.4518585205078}
map147[36] = {38.06135177612305;69.32980346679688;-213.41641235351562}
map147[37] = {39.53430175781;70.68551635742;-220.12673950195}--墓土大蜡烛7
map147[38] = {192.6549835205078;68.13046264648438;-72.91191864013672}--进沉船
map147[39] = {102.51536560058594;82.49606323242188;-112.71026611328125}
map147[40] = {-179.4482879638672;4.183173179626465;491.1560363769531}
map147[41] = {-188.30636596679688;1.7212764024734497;477.6970520019531}
map147[42] = {-191.5103302001953;0.0935186892747879;437.64154052734375}
map147[43] = {-193.67445373535156;0.6370588541030884;400.0504455566406}
map147[44] = {-158.58485412597656;0.09282410144805908;377.59698486328125}
map147[45] = {-133.42332458496094;3.5071215629577637;417.37127685546875}
map147[46] = {-167.61940002441406;10.477231979370117;368.683837890625}
map147[47] = {-273.8460998535156;11.38762378692627;425.2352294921875}
map147[48] = {-288.9672546386719;18.411121368408203;420.174072265625}
map147[49] = {-287.4808654785156;28.822416305541992;404.7793273925781}
map147[50] = {-162.05456542969;7.41181182861;356.38223266602}--墓土大蜡烛8
map147[51] = {-349.27203369140625;34.950706481933594;387.2141418457031}--进古战场
map147[52] = {-213.20013427734;131.12268066406;-167.01449584961}--墓土大蜡烛9
map147[53] = {-49.45585632324219;104.3731460571289;-78.39041900634766}
map147[54] = {-185.26156616210938;121.75447082519531;-170.52597045898438}
map147[55] = {-215.11512756347656;141.1907958984375;-163.4281005859375}
map147[56] = {-244.9800567626953;119.35491180419922;-152.34176635742188}
map147[57] = {-228.95977783203125;102.30264282226562;-184.24244689941406}
map147[58] = {-251.5270233154297;101.23624420166016;-196.60752868652344}
map147[59] = {-231.3864288330078;100.58375549316406;-230.49464416503906}
map147[60] = {-270.6065979003906;105.22481536865234;-235.367431640625}
map147[61] = {-238.48216247558594;96.1323013305664;-285.8638916015625}
map147[62] = {-207.58657836914062;96.81498718261719;-304.279052734375}
map147[63] = {-275.43218994140625;84.69686889648438;-339.19384765625}
map147[64] = {-269.1346740722656;88.83450317382812;-368.968505859375}
map147[65] = {-225.3247833251953;83.31451416015625;-364.2699890136719}
map147[66] = {-217.3268737793;104.3557434082;-242.1534576416}--墓土大蜡烛10
map147[67] = {-289.4688415527344;93.0536117553711;-404.3544921875}--终点门
map147[68] = {2.5172619819641113;208.28602600097656;-2.3382880687713623}
map147[69] = {0.6634777784347534;208.26255798339844;-4.156835556030273}
map147[70] = {-3.2547483444213867;207.8109588623047;-1.532777190208435}
map147[71] = {0.2770621180534363;206.4495086669922;2.669926404953003}
map147[72] = {-100.19038391113281;62.81600570678711;-793.6600341796875}
map147[73] = {0.08378148079;202.90838623047;80.22185516357}
map147[74] = {-416.08380126953;12.07369232178;411.0588684082}--cg

--跑图-禁阁
local map148 = {}
--跑图-禁阁
local map148 = {}
map148[1] = {-6.641470909118652;35.847293853759766;-175.50387573242188}--办公室门口
map148[2] = {-6.641470909118652;35.847293853759766;-175.50387573242188}--办公室门口
map148[3] = {-2.3683698177337646;37.12582778930664;-172.75494384765625}--门
map148[4] = {-11.051301956176758;63.40142822265625;4.062231063842773}
map148[5] = {7.157510280609131;62.34695816040039;-26.602800369262695}--出口
map148[6] = {-42.6407585144043;38.3612060546875;-98.20526123046875}
map148[7] = {30.31833267211914;541.48876953125;28.513368606567383}
map148[8] = {31.710330963134766;541.91748046875;27.468273162841797}
map148[9] = {-1.4552849531173706;213.37742614746094;-1.2852287292480469}
map148[10] = {-0.02870649286;309.826171875;68.02626800537}--终点

function Sec()
  SDMenu = -1
  SecMenu = 1
  menu = gg.choice({
  "	➢ 点蜡烛/炸花 - 建议有花的地图开",
  --"	➢ 全图倍速",
  "	➢ 自动跑全图 - 遇境开",
  "	➢ 手动跑全图 - 进图开",
  "	➢ 当前图烛光吸收",
  "	➢ 当前图光翼吸收",
  "	➢ 返回主页",
 }, nil, "跑图菜单")
  if menu == 1 then 
    lightCandles()   
    lightFlowers()
    Sec()end
--  if menu == 2 then GSpeed() Sec()end
  if menu == 2 then ZD() end
  if menu == 3 then SD() Sec()end
  if menu == 4 then zgxs() Sec()end
  if menu == 5 then gyxs() Sec()end
  if menu == 6 then HOME() end
end


function QT()
gg.sleep(6000)
end

function ZD()
local zdret = gg.alert('是否开始跑图', '准备好了', '先不跑了')
if zdret==1 then
     if (not candlesLighted) then
        lightCandles()
        lightFlowers() 
    end
     gg.clearResults();
     gg.toast("开始自动跑图")
     Teleport({11.33805503845;1.07;0.86344474554})--进晨岛门
     QT()
     PT1()
     gg.toast("再看一会就得走了噢")
     QT()
     Teleport({479.30438232421875;213.60411071777344;-1033.25390625})--传云野
     QT()
     PT2()
     gg.toast("再看一会就得走了噢")
     QT()
     Teleport({-132.80177307128906;108.91059875488281;41.570411682128906})--传雨林
     QT()
     PT3()
     gg.toast("再看一会就得走了噢")
     QT()
     Teleport({6.131390571594238;196.65492248535156;224.84304809570312})--传霞谷
     QT()
     PT4()
     gg.toast("再看一会就得走了噢")
     QT()
     Teleport({8.038422584533691;141.21749877929688;-197.4063262939453})--传墓土
     QT()
     PT5()
     gg.toast("再看一会就得走了噢")
     Teleport({-1.7305372953414917;207.7891387939453;-66.75567626953125})--传禁阁
     QT()
     PT6()
     gg.sleep(2000)
      gg.toast("跑完了累死我了")
     gg.setVisible(true)   
end
Sec()
end

function SD()
  SDMenu = 1
  SecMenu = -1
  menusd = gg.choice({
  "	➢ 晨岛",
  "	➢ 云野",
  "	➢ 雨林",
  "	➢ 霞谷",
  "	➢ 滑行赛道(霞谷门口执行)", 
  "	➢ 暮土",
  "	➢ 瞬移到方舟(墓土门口执行)",
  "	➢ 方舟(方舟图内执行)",
  "	➢ 禁阁",
  "	➢ 跑图常用瞬移点",
  "	➢ 返回上一页",
 }, nil, "手动跑全图")
  if menusd == 1 then PT1() end
  if menusd == 2 then PT2() end
  if menusd == 3 then PT3() end
  if menusd == 4 then PT4() end
  if menusd == 5 then PTHX() end
  if menusd == 6 then PT5() end
  if menusd == 7 then PT51() end
  if menusd == 8 then PT52() end
  if menusd == 9 then PT6() end
  if menusd == 10 then TMove() end
  if menusd == 11 then Sec() end
end

function PTHX() 
  Teleport({-151.81674194335938;220.8046417236328;-275.9139709472656}) --一传二
  gg.sleep(600)
  Teleport({286.70147705078125;69.03689575195312;-526.7159423828125})  
  gg.sleep(10000)
  Teleport({163.91751098632812;935.1226806640625;662.5045776367188})
  --gg.setSpeed(5)
  stand(2)
  gg.toast("🌹请你优雅地一屁股坐下🌹")
  gg.sleep(10000)  
  Teleport({130.6686553955078;890.7075805664062;572.884033203125})
  gg.sleep(1000)
  Teleport({147.05918884277344;887.6572875976562;570.8413696289062})
  gg.sleep(1000)
  Teleport({167.92916870117188;888.3945922851562;571.513671875})
  gg.sleep(1000)
  Teleport({184.20411682128906;886.92724609375;571.1341552734375})
  gg.sleep(1000)
  Teleport({159.1138153076172;852.7987060546875;476.0665588378906})
  gg.sleep(1000)
  Teleport({255.4508056640625;585.8909912109375;-565.3806762695312})
  gg.sleep(10000)
  Teleport({54;155;-138})
  gg.toast("🌹来拿蜡烛🌹")
  gg.sleep(20000)
  --gg.setSpeed(1)
  end

local candlesLighted = false
local candlesLightedList = {}
--- 点蜡烛
function lightCandles()
    gg.setVisible(false)
    gg.clearResults()
	
	if(not candlesLighted) then
	
		gg.setRanges(gg.REGION_C_ALLOC)
		gg.searchNumberB("3267887104", gg.TYPE_QWORD, false, gg.SIGN_EQUAL)
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
  zero = {}
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumberB("-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0x6000000000, 0x8000000000)
  resultCount = gg.getResultCount()
  result = gg.getResults(resultCount)
  if result == 0 then
    gg.toast("火苗获取失败")
    return 0
  end
  tmp = {}
  for k,v in pairs(result)do
    tmp[#tmp + 1] = {}
    tmp[#tmp].address = v.address - 8
    tmp[#tmp].flags = gg.TYPE_DWORD
  end
  tmp = gg.getValues(tmp)
  for k, v in pairs(tmp) do
    if v.value == 1 then
      zero[1] = {}
      zero[1].address = tmp[k].address - 48
      zero[1].flags = 16
      break
    end
  end
zhahua = {}
for i = 1,256 do
zhahua[i] = {}
zhahua[i].address = zero[1].address + i * 8 + 10036092
zhahua[i].flags = gg.TYPE_FLOAT
end
  for i = 1, 256 do
      zhahua[i].value = 0
      zhahua[i].freeze = true
    end
    gg.setValues(zhahua)
    gg.addListItems(zhahua)
    flowersLightedList = zhahua
	flowersLighted = true
    gg.toast("ฅ( ̳• ◡ • ̳)ฅ炸花成功")
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


---来自[Dog egg]的脚本 后自己优化 256~257(256代表靠近收，257代表有手的);1(1为没收前，收完8,改3可自动收)::200 Dword
local gylist={}
local hflist = {}
function gyxs()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumberB("1357", 4, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("1357", 4, false, gg.SING_EQUAL, 0, -1)
 z = gg.getResultCount()
 w = gg.getResults(z)
      t = {}
      y  = {}
    for i, v in ipairs(w) do
      t[#t + 1] = {}
      t[#t].address = v.address + 120
      t[#t].flags = 4
      y[#y + 1] = {}
      y[#y].address = v.address + 224
      y[#y].flags = 4
end
    j = 0
    t = gg.getValues(t)
    y = gg.getValues(y)

for i, v in ipairs(t) do
 if v.value == 257 or v.value == 256 then
    if y[i].value==1 then
        j = j + 1
        w[j] = t[i] 
end
end
end
for i = 1, j do
					gylist[i]={}
					hflist[i]={}
					gylist[i].address = w[i].address + 104
				    gylist[i].flags = 4
					--r[i].freeze = true
					gylist[i].value = "3"
					hflist[i].address = gylist[i].address
					hflist[i].flags = 4
                    hflist[i].value = "0"
gg.setValues(gylist)	
--gg.addListItems(r)
gg.toast("正在吸收第"..i.."个光翼")
gg.sleep(500)
end
gg.sleep(6000)
--防止操作不了的恢复
gg.setValues(hflist)
gg.clearResults()
gg.toast("吸收完成，数目有所偏差，后期会优化")
end

function zgxs()
	-- 当前图吸收烛光
	gg.clearResults()
	gg.setRanges(4)
	gg.searchNumberB("-842203136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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



--跑图-晨岛
function PT1()
	
	freeze_time = 200
	gg.toast("请跳过动画")
	gg.sleep(5000)
	for i = 1, 7 do
		Teleport(map143[i])
		gg.toast("瞬移晨岛蜡烛 [" .. i .. "] 完成")
	    gg.sleep(freeze_time)
	end
    gg.toast("看什么看")
   gg.clearResults()
end



--跑图-云野
function PT2()	
	freeze_time = 300
	gg.toast("准备开车，坐稳扶好")
	--gg.setSpeed(5)
	gg.sleep(2000)
	for i = 1, 78 do
		Teleport(map144[i])
		gg.toast("瞬移云野蜡烛 [" .. i .. "] 完成")
	    gg.sleep(500)
		 if i == 12 then
		   gg.toast("当前地图烛光吸收")
		   zgxs()
	       gg.sleep(600)
	    else
		  if i == 13 then
		      freeze_time = 5000
			  gg.toast("汝将卡白屏于此")
			else		      
				if i == 23 then
					freeze_time = 5000
					gg.toast("即将进入云野新图")
			else		      
		    	if i == 40  then
					    zgxs()
			   	else		      
					if i == 42  then
					    --gg.setSpeed(0.5)
						freeze_time = 3000
						gg.toast("即将出云野新图")
		              else		      
		                  if i == 43 then
		                      --gg.setSpeed(5)
		                      freeze_time = 5000
		                      gg.toast("算你走运")
		                  else
		                       if i == 46 then
		                          freeze_time = 5000
		                          gg.toast("这次你真的会卡")
		                          else if i==55 then
		                          freeze_time = 1500
		                       else
		                           if i == 57 then
					                   --gg.setSpeed(1)
		                               freeze_time = 5000
		                               gg.toast("啥手机啊挺厉害啊")
		                               else if i==58 then
		                               --gg.setSpeed (5)
		                               freeze_time = 5000
		                           else
		                             if i == 67 then
		                                gg.toast("憋动")
		                                zgxs()
		                                else
		                                 if i == 68 then
		                                 gg.toast("请给八人门个面子，黑屏一下")
		                                 QT()
		                                 zgxs()
		                                else
		                                  if i == 70 then
		                                    freeze_time = 6000
		                                     gg.toast("看来我已经拦不住你了...")
		                                  else
		                                    if i == 73 then
		                                      freeze_time = 10000
		                                       gg.toast("下次来的时候你必卡qwq")
		                                     else
		                                      freeze_time = 200
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
	 gg.sleep(freeze_time)
    end
--gg.setSpeed(1)
gg.toast("跑完啦")
gg.clearResults()
end
		              



--跑图-雨林
function PT3()
	freeze_time = 1000
	gg.toast("动画要手动跳")
	gg.sleep(2000)
	for i = 1, 96 do
		Teleport(map145[i])
		gg.toast("瞬移雨林蜡烛 [" .. i .. "] 完成")
		  if i == 6 then
		      freeze_time = 5000
		      gg.toast("请跳过动画")
		      else if i==13 then
		          gg.toast("当前地图烛光吸收")
		          zgxs()
	           	  gg.sleep(600)
		  else
		    if i == 14 then
		      freeze_time = 10000
		      gg.toast("传不进就往后跑")
		   else		      
		      if i == 36 then
		          freeze_time = 10000
		          gg.toast("黑屏！黑屏！黑屏！")
		      else
		           if i == 49 then
		              freeze_time = 10000
		              gg.toast("黑屏我也救不了你老老实实跑吧")
		           else
		               if i == 55 then
		                 zgxs()
		           else
		               if i == 56 then
		                  freeze_time = 10000
		                   gg.toast("你手机这么好不如送我吧")
		               else
		                   if i == 57 then
		                     freeze_time = 10000
		                      gg.toast("不知道说点啥")
		                    else
		                      if i == 84 then
		                         freeze_time = 5000
		                         zgxs()
		                         else
		                       if i == 86 then
		                        freeze_time = 10000
		                         gg.toast("小黑屋play♂")
		                        else
		                         freeze_time = 200
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
       gg.sleep(freeze_time)
    end
  
gg.toast("您点的长发美女已到账")
gg.clearResults()
end




--跑图-霞谷
function PT4()
	freeze_time = 1000
	gg.toast("动画要手动跳！")
	gg.sleep(2000)
	for i = 1, 66 do
		Teleport(map146[i])
		gg.toast("瞬移霞谷蜡烛 [" .. i .. "] 完成")
		 if i == 22 then
		   gg.toast("当前地图烛光吸收")
		   zgxs()
	       gg.sleep(600)
	    else
		  if i == 23 then
		      freeze_time = 7000
		      gg.toast("前往霞光城中...")
		   else		      
		      if i == 42 then
		          freeze_time = 7000
		          gg.toast("梦开始的地方")
		      else
		           if i == 49 then
		              freeze_time = 10000
		              stand(2)
		              gg.toast("请你优雅地一屁股坐下")
		           else
		               if i == 54 then
		                  freeze_time = 15000
		                   gg.toast("没想到吧")
		               else
		                   if i == 55 then
		                     freeze_time = 35000
		                      gg.toast("来拿蜡烛")
		                    else
		                        if i == 59 then
		                        freeze_time = 7000
		                        gg.toast("你猜待会咱去哪")
		                        else
		                        freeze_time = 200
		                      end
		                   end
		                   end
		               end
		           end
              end
          end
     gg.sleep(freeze_time)
      end
gg.toast("这里挺漂亮的不是吗")
gg.clearResults()
end

--瞬移-墓土方舟
function PT51()
	freeze_time = 1000
	gg.toast("墓土门口执行")
	gg.sleep(2000)
	for i = 1, 2 do
    	Teleport(map17[i])
		gg.toast("瞬移墓土方舟蜡烛 [" .. i .. "] 完成")
		  if i == 1 then
		      freeze_time = 15000
		      gg.toast("啊我怎么被卷走了")
		   else		      
		      if i == 2 then
		         --gg.setSpeed(5)                  
		         freeze_time = 20000
		         stand(2)
		         gg.toast("🌹前往方舟，请一屁股坐下去（记得加速）🌹")
			     end
		        end
     gg.sleep(freeze_time)
      end
gg.toast("方舟瞬移完成")
gg.clearResults()
end

--跑图-墓土方舟
function PT52()
	freeze_time = 1000
	gg.toast("进入方舟后执行")
	gg.sleep(2000)
	for i = 3, 17 do
		Teleport(map17[i])
		gg.toast("瞬移墓土方舟蜡烛 [" .. i .. "] 完成")
		  if i == 1 then
		      freeze_time = 15000
		      gg.toast("啊我怎么被卷走了")
		   else		      
		      if i == 2 then
		         --gg.setSpeed(5)                  
		         freeze_time = 30000
		         gg.toast("🌹前往方舟，请一屁股走下去（记得加速）🌹")
		        end
		        end
     gg.sleep(freeze_time)
      end
zgxs()
gg.toast("方舟收取完成")
gg.clearResults()
end

--跑图-墓土
function PT5()
	freeze_time = 1000
	gg.toast("除了跳漩涡要降低倍速！！")
	--gg.setSpeed(5)
	gg.sleep(2000)
	for i = 1, 74 do         
		Teleport(map147[i])
		gg.toast("瞬移墓土蜡烛 [" .. i .. "] 完成")
		  if i == 3 then
		      freeze_time = 15000
		      gg.toast("啊我怎么被卷走了")
		      else
		       if i == 18 then
		          gg.toast("当前地图烛光吸收")
		          zgxs()
	           	  gg.sleep(600)
		   else		      
		      if i == 19 then
		          freeze_time = 7000
		          gg.toast("前方有只小宠物~")
		       else
		           if i == 37 then
		              zgxs()
		      else
		           if i == 38 then
		              freeze_time = 10000
		              gg.toast("进不进的来得看人品")
		          else
		               if i == 50 then
		               zgxs()
		           else
		               if i == 51 then
		                  freeze_time = 10000
		                   gg.toast("出不出的去也得看人品")
		                else
		                   if i == 66 then
		                   zgxs()
		               else
		                   if i == 67 then
		                     freeze_time = 6000
		                      gg.toast("就快跑完了")
		                    else
		                      if i == 73 then
		                      freeze_time =5000
		                      else
		                      freeze_time = 200
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
     gg.sleep(freeze_time)
      end
gg.toast("斯人已逝")
gg.clearResults()
end

--跑图-禁阁
function PT6()
    gg.toast("🌹等下会死啊🌹")
    Tgc()
    zgxs()
    for i = 1, 10 do
		Teleport(map148[i])
		 if i == 2 then
		    gg.sleep(3000)
		    gg.toast("🌹再等会🌹")
		  else	
		   if i == 3 then
		      gg.sleep(4000)
		      gg.toast("🌹来tgc公司看看🌹")
		    else			     
	           	 if i == 4 then
	           	 zgxs()
	           	 gg.sleep(600)
			   else
		             if i == 5 then
		                gg.sleep(5000)
		                gg.toast("🌹该回去了🌹")
		              else
		                 if i == 6 then		      
		                   gg.toast("🌹进入霍格沃茨藏书库中🌹")
		                   gg.sleep(9000)
		                   zgxs()
		                   gg.toast("🌹哥你别动🌹")
		                 else		      
		                    if i == 7 then		          
		                      gg.toast("🌹邓布利多大喊: 给老子滚！🌹")
		                      gg.sleep(9000)
		                    else		        
		                        if i == 9 then		                  
		                           gg.toast("🌹你被斯内普一脚踹上了天🌹")
		                           gg.sleep(9000)		                 
		                        else
		                            if i == 10 then
		                               zgxs()
		                               gg.toast("🌹(请勿打断施法)🌹")
		                             		                    
		                        end
		                      end
		                   end
		              end
		           end
              end
         end
       end
       
       
     end
--gg.setSpeed(1)
gg.toast("🌹欢迎加入斯莱特林🌹")
gg.clearResults()
end
--跑图--


--返回上层
function HOME()
  G1 = -1
  G2 = -1
  G3 = -1
  G4 = -1
  G5 = -1
  G6 = -1
  G7 = -1
  SDMenu = -1
  Omenu = -1
  CanMenu = -1
  BeMenu = -1
  ZMmenu = -1
  SecMenu = -1
  g4Menu = -1
  MMenu = -1
  SeMenu = -1
  AcMenu = -1
  Main()
end

cs = "已删除"

--退出
function Exit()
  print("\r\n光遇乱七八糟脚本执行结束，如需错误、疑问，也不要问我" .. cs)
  os.exit()
end

while true do
	repeat
	if gg.isVisible(true) then
		gg.setVisible(false)
		if G1 == 1 then MapA() break end
		if G2 == 1 then MapB() break end
		if G3 == 1 then MapC() break end
		if G4 == 1 then MapD() break end
		if G5 == 1 then MapE() break end
		if G6 == 1 then MapF() break end
		if G7 == 1 then MapG() break end
		if l1menu == 1 then L1() break end
		if l2menu == 1 then L2() break end
		if l3menu == 1 then L3() break end
		if l4menu == 1 then L4() break end
		if l5menu == 1 then L5() break end
		if l6menu == 1 then L6() break end
		if Dmenu == 1 then DMove() break end
		if Omenu == 1 then Other() break end
		if CanMenu == 1 then Candle() break end
		if BeMenu == 1 then Behind() break end
		if ZMmenu == 1 then ZMOve() break end
		if SecMenu == 1 then Sec() break end
		if g4Menu == 1 then g4() break end
		if Gmenu == 1 then GMove() break end
		if Tmenu == 1 then TMove() break end
		if MMenu == 1  then MoveMenu() break end
		if SeMenu == 1  then Season() break end
	    if SDMenu == 1  then SD() break end
		if AcMenu == 1  then Action() break end
		Main()
	end
	until true
end
