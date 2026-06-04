--By：注：适配其他手机优化搜索闪退,稳定跑图版此脚本为二改感谢仙圣
--最后更新跑图功能，配合手机冷冻时间150000
XiNian_CaiDan1 = "main"
function firstMain()
  gg.setVisible(false)
    XiNian_CaiDan1 = 'main'
    ChuSi()
    DhZh()
    ZhuiMeng()
    Wxnlcsh()
    main()
end
local paotu = {}
paotu[1] = {11.33805503845;1.07;0.86344474554}
paotu[2] = {479.30438232421875;213.60411071777344;-1033.25390625}
paotu[3] = {-17.372812271118164;171.26510620117188;-2.61037540435791}--云一右副入传
paotu[4] = {-359.2660827636719;136.53712463378906;124.91087341308594}--圣岛
paotu[5] = {270.2274169921875;174.009521484375;-27.234676361083984}
paotu[6] = {-44.61409378051758;167.82762145996094;35.79931640625}--云一右副内回传点
paotu[7] = {171.47674560546875;162.5426025390625;7.549071788787842}--云一左副起传
paotu[8] = {242;200;229}--云一左副出口传
paotu[9] = {-52.46832275390625;180.03219604492188;324.8914489746094}--云二蝴蝶门传
paotu[10] = {31.9806209564209;42.211456298828125;0.51051217913627625}--八门出传
paotu[11] = {132.1917266845703;255.7042694091797;486.8236083984375}--云顶传
paotu[12] = {-132.80177307128906;108.91059875488281;41.570411682128906}
paotu[13] = {29.446800231933594;98.68903350830078;-108.74456024169922}--进二图
paotu[14] = {-2.339399576187134;110.83828735351562;-51.326168060302734}--雨二右隐藏图传
paotu[15] = {54.783382415771484;53.172725677490234;45.045841217041016} --进地下隐藏图
paotu[16] = {-55.29804992675781;210.12454223632812;-282.44921875} --出地下隐藏图
paotu[17] = {17.021774291992188;88.15483856201172;124.06153869628906} --进入最后一个图
paotu[18] = {-17.36788558959961;182.655517578125;402.27899169921875}--雨林终点传
paotu[19] = {6.131390571594238;196.65492248535156;224.84304809570312}
paotu[20] = {206.29270935058594;57.820106506347656;-604.9664916992188}--进天文台
paotu[21] = {204.70770263671875;491.51055908203125;-205.14031982421875}--进飞行赛道
paotu[22] = {137;1017;-100}--云传
paotu[23] = {54;155;-138}--终点动画
paotu[24] = {60.74193572998047;137.8476104736328;-292.3225402832031}--进终点门
paotu[25] = {8.038422584533691;141.21749877929688;-197.4063262939453}
paotu[26] = {-210.83389282226562;43.8532829284668;-825.1362915039062}--进漩涡传
paotu[27] = {-93.77214813232422;11.91988754272461;156.5588836669922}--进二图传
paotu[28] = {192.6549835205078;68.13046264648438;-72.91191864013672}--进沉船
paotu[29] = {-349.27203369140625;34.950706481933594;387.2141418457031}--进古战场
paotu[30] = {-289.4688415527344;93.0536117553711;-404.3544921875}--终点门
paotu[31] = {-1.7305372953414917;207.7891387939453;-66.75567626953125}
paotu[32] = {-2.3683698177337646;37.12582778930664;-172.75494384765625}--门
paotu[33] = {7.157510280609131;62.34695816040039;-26.602800369262695}--出口
paotu[34] = {-42.6407585144043;38.3612060546875;-98.20526123046875} --禁阁一层，进入右侧门
paotu[35] = {40.35205459595,541.86962890625,-25.08329963684} --出右门
paotu[36] = {-0.1043953374,214.60452270508,2.59286475182} --禁阁四层，传入四层
XiNian_Data = {}
XiNian_Data[1] = {('CandleSpace'), -768833570, ('遇境')}
XiNian_Data[2] = {'Dawn', 1649439303, ('晨岛')}
XiNian_Data[3] = {'Prairie_ButterflyFields', -1817621630, ('云野一图')}
XiNian_Data[4] = {'Prairie_Village', -1944435120, ('云野二图')}
XiNian_Data[5] = {'Prairie_Cave', -1050035699, ('云野左图')}
XiNian_Data[6] = {'Prairie_NestAndKeeper', 312004957, ('云野右图')}
XiNian_Data[7] = {'DayHubCave', -1900248111, '云野八人门'}
XiNian_Data[8] = {'DayEnd', 1190972738, ('云野宫殿')}
XiNian_Data[9] = {'Prairie_Island', -1237641587, ('云野海岛')}
XiNian_Data[10] = {('Rain'), 164626931, ('雨林一图')}
XiNian_Data[11] = {('RainForest'), -1455381650, '雨林二图'}
XiNian_Data[12] = {('RainShelter'), -1574275404, '雨林副本'}
XiNian_Data[13] = {('Rain_Cave'), -161371567, '雨林副本隐藏图'}
XiNian_Data[14] = {('RainMid'), -2135324521, '雨林水母图'}
XiNian_Data[15] = {('RainEnd'), 128844448, '雨林宫殿'}
XiNian_Data[16] = {('Sunset'), 1638008359, '霞谷一图'}
XiNian_Data[17] = {('Sunset_Citadel'), -2115418256, '霞谷飞行一图'}
XiNian_Data[18] = {('Sunset_FlyRace'), 1844499196, '霞谷飞行二图'}
XiNian_Data[19] = {('SunsetRace'), 571720490, '霞谷地面赛道'}
XiNian_Data[20] = {('SunsetEnd'), -1934656620, '霞谷终点'}
XiNian_Data[21] = {('SunsetEnd2'), 507487826, '霞谷宫殿'}
XiNian_Data[22] = {('DuskStart'), 817373972, '墓土一图'}
XiNian_Data[23] = {('Dusk'), 1147491976, '墓土二图'}
XiNian_Data[24] = {('DuskOasis'), 170656205, '墓土魔法季'}
XiNian_Data[25] = {('DuskGraveyard'), 864432821, '墓土五龙图'}
XiNian_Data[26] = {('Dusk_CrabField'), -1644045427, '墓土副本'}
XiNian_Data[27] = {('DuskMid'), 1597085778, '墓土古战场'}
XiNian_Data[28] = {('DuskEnd'), -136010643, '墓土宫殿'}
XiNian_Data[29] = {('Night'), -1936060159, '禁阁低层'}
XiNian_Data[30] = {('NightArchive'), 2518601, '禁阁副本'}
XiNian_Data[31] = {('Night2'), -1987505335, '禁阁高层'}
XiNian_Data[32] = {('NightEnd'), -2027781754, '禁阁终点'}
XiNian_Data[33] = {('TGCOffice'), 295816905, '办公室'}
XiNian_Data[34] = {('StormStart'), -1184245578, '暴风一图'}
XiNian_Data[35] = {('Storm'), 1705189686, '暴风二图'}
XiNian_Data[36] = {('StormEnd'), -815180717, '伊甸'}
XiNian_Data[37] = {('OrbitEnd'), 567986524, '重生二图'}
XiNian_Data[38] = {('CandleSpaceEnd'), -2043682661, '星光大道'}
XiNian_Gata = {}
XiNian_Gata[1] = {}--[[空]]
XiNian_Gata[2] = {{117.49571990967,2.14908671379,310.85702514648},{52.27350234985,34.10396575928,369.94454956055},{281.88159179688,2.22269964218,188.94566345215},{107.01401519775,24.28181648254,48.49942779541},{414.75527954102,94.82239532471,-6.64422082901}}
XiNian_Gata[3] = {{125.85375213623;148.40830993652;-27.92642974854},{106.17017364502;174.64419555664;26.75840377808},{80.72425842285;160.55029296875;62.6540222168}}
XiNian_Gata[4] = {{27.35553359985;184.77207946777;278.81311035156},{101.27056884766;181.26351928711;257.22482299805},{66.5023727417;186.11111450195;376.91757202148},{137.93855285645;266.59573364258;478.81997680664},{146.46572875977;304.30899047852;537.32904052734}}
XiNian_Gata[5] = {{290.13339233398;200.00207519531;178.79241943359},{348.18463134766;197.88877868652;111.59169006348}}
XiNian_Gata[6] = {{-138.5767059326172;159.93603515625;144.49884033203125},{-214.21221923828125;181.55755615234375;152.71746826171875}}
XiNian_Gata[7] = {{-19.33318710327;58.91622924805;27.37077331543}}
XiNian_Gata[8] = {}--[[空]]
XiNian_Gata[9] = {{-146.9081268310547;80.83140563964844;119.24666595458984},{78.52336883544922;1.5715587139129639;324.4045715332031},{-20.79007339477539;14.868534088134766;382.97509765625},{94.60398864746094;11.161883354187012;362.0251770019531},{108.23951721191406;2.680840253829956;333.7630615234375},{61.57754135131836;18.996665954589844;273.5817565917969},{63.883235931396484;95.04407501220703;307.715576171875},{241.16712951660156;94.53076934814453;205.51016235351562}}
XiNian_Gata[10] = {{2.13302397728;114.62173461914;-257.74035644531},{27.27236175537;98.32046508789;-117.29396820068}}
XiNian_Gata[11] = {{24.22917366028;127.21475982666;-64.9084777832},{80.36828613281;129.32788085938;-12.00599861145},{66.24879455566;99.87233734131;45.67139816284},{104.18180084229;111.61292266846;-111.34979248047}}
XiNian_Gata[12] = {{-44.52954101562;103.50183868408;-18.99171257019},{-20.89667510986;96.37775421143;23.3992023468}}
XiNian_Gata[13] = {{26.23741531372;78.26388549805;-416.63986206055},{9.87658882141;137.31497192383;-213.43074035645},{-65.82335662842;208.65147399902;-202.29818725586},{-68.73613739014;210.23043823242;-295.44775390625}}
XiNian_Gata[14] = {{-22.06701850891;141.86561584473;273.64901733398},{-50.04446792603;149.48065185547;58.78827285767},{117.94002532959;178.50863647461;157.54365539551}}
XiNian_Gata[15] = {{32.15616989136;111.79304504395;58.49747848511}}
XiNian_Gata[16] = {{-151.72290039062;263.46438598633;-149.25282287598},{165.65696716309;41.44527816772;-540.47784423828},{198.90878295898;48.46887969971;-517.16070556641}}
XiNian_Gata[17] = {{84.07421112061;558.27600097656;-55.4520111084},{115.62945556641;502.25119018555;-38.70120239258}}
XiNian_Gata[18] = {{-396.41152954102;1163.42333984375;47.16595458984},{67.96189880371;1053.02795410156;-28.98570251465},{137;1017;-100},{40.33958816528;185.05342102051;73.34194946289}}
XiNian_Gata[19] = {{195.60102844238;630.80944824219;-421.51663208008}}
XiNian_Gata[20] = {{-15.27802371979;174.11576843262;-269.24426269531}}
XiNian_Gata[21] = {{-26.86660766602;150.21412658691;-164.30195617676}}
XiNian_Gata[22] = {}--[[空]]
XiNian_Gata[23] = {{97.71636962891;45.43786621094;367.83847045898},{28.56142425537;0.46644225717;342.9616394043}}
XiNian_Gata[24] = {{112.59884643555;141.60664367676;385.39486694336},{305.02200317383;121.83631896973;559.58319091797}}
XiNian_Gata[25] = {{83.6520690918;92.54627990723;185.87461853027},{67.59731292725;98.88622283936;120.99040222168},{91.61358642578;77.99578094482;-55.83699417114},{-12.41992855072;64.98532104492;-91.22381591797},{15.34145832062;83.91411590576;-139.27084350586},{28.08928108215;71.11177062988;-222.40245056152}}
XiNian_Gata[26] = {{-22.72827911377;32.4552230835;527.53137207031},{-165.06657409668;1.70548176765;369.33148193359},{-293.2229309082;3.22860455513;335.40350341797}}
XiNian_Gata[27] = {{-205.31097412109;130.31030273438;-160.40197753906},{-238.10581970215;86.01084136963;-394.50183105469}}
XiNian_Gata[28] = {{4.47481489182;202.44841003418;32.13433074951},{-1.7305372953414917;207.7891387939453;-66.75567626953125}}
XiNian_Gata[29] = {{20.43115615845;46.78216171265;-67.82855987549},{33.94861221313;160.77113342285;-41.95145797729}}
XiNian_Gata[30] = {{55.50157928467;540.70965576172;-33.98306274414},{78.94891357422;554.41192626953;-41.106590271}}
XiNian_Gata[31] = {{48.09609985352;228.29138183594;8.88393878937},{-39.25553512573;140.63380432129;9.49728012085},{13.063741683959961;183.3470916748047;41.981956481933594},{-0.35613438487;303.56619262695;58.07741546631}}
XiNian_Gata[32] = {}--[[空]]
XiNian_Gata[33] = {}--[[空]]
XiNian_Gata[34] = {{-3.08880496025;196.74859619141;-21.45963668823}}
XiNian_Gata[35] = {{10.9555025100708;266.5698547363281;-275.08282470703125},{21.324512481689453;266.6036071777344;-280.2614440917969},{29.371007919311523;266.4582824707031;-292.146240234375},{36.007598876953125;266.62445068359375;-288.6400146484375},{52.29977798461914;266.61077880859375;-294.6586608886719},{59.86273956298828;267.3311767578125;-311.7348327636719},{59.58086395263672;270.386474609375;-323.409423828125}}
local XiNian_Mmqm = {
  {812663058;1953384759;1761636210;27502;0;0;1851867932;1399155812;1701011824;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[境遇]]
  {1936018970;1232032884;1851878515;29540;0;0;2002863132;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[晨岛]]
  {812663058;1953384759;1761636210;27502;0;0;2002863132;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[云野一图]]
  {812663058;1953384759;1761636210;27502;0;0;2036417564;6581829;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[云野二图]]
  {812663058;1953384759;1761636210;27502;0;0;1634881564;1701409385;1986085727;101;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[云野左图]]
  {1936018970;1232032884;1851878515;29540;0;0;1634881582;1701409385;1936019039;1684947316;1885693259;29285;0;0;0;0;0;0;-11796322;1;0;0},--[[云野右图]]
  {1936018970;1232032884;1851878515;29540;0;0;2036417564;1130526024;6649441;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[八人阵]]
  {812663058;1953384759;1761636210;27502;0;0;2036417564;6581829;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[云野宫殿]]
  {1936018970;1232032884;1851878515;29540;0;0;1634881564;1701409385;1819494751;6581857;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[圣岛]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林一图]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;1919895150;7631717;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林二图]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;1701335918;1919251564;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林副本]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;1631805294;25974;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林隐藏图]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;1684622702;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林水母图]]
  {812663058;1953384759;1761636210;27502;0;0;1767985692;1684948334;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[雨林宫殿]]
  {812663058;1953384759;1761636210;27502;0;0;1853182748;7628147;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷一图]]
  {812663058;1953384759;1761636210;27502;0;0;1853182750;1601463667;1635019075;7103844;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷飞行一图]]
  {812663058;1953384759;1761636210;27502;0;0;1853182750;1601463667;1635019075;7103844;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷飞行二图]]
  {812663058;1953384759;1761636210;27502;0;0;1853182748;1383359859;6644577;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷滑行]]
  {812663058;1953384759;1761636210;27502;0;0;1853182748;1165256051;25710;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷终点]]
  {812663058;1953384759;1761636210;27502;0;0;1853182748;1165256051;3302510;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[峡谷宫殿]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1635013483;29810;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土一图]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;107;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土二图]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1935757163;29545;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土魔法季]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1684622699;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土五龙]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1684622699;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土副本]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1684622699;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土古战场]]
  {812663058;1953384759;1761636210;27502;0;0;1937064988;1684948331;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[墓土宫殿]]
  {812663058;1953384759;1761636210;27502;0;0;1734954524;29800;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[禁阁第一层]]
  {812663058;1953384759;1761636210;27502;0;0;1734954524;1916892264;1986619491;101;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[禁阁副本]]
  {812663058;1953384759;1761636210;27502;0;0;1734954524;3306600;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[禁阁四层]]
  {812663058;1953384759;1761636210;27502;0;0;1734954524;1850045544;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[禁阁终点画]]
  {812663058;1953384759;1761636210;27502;0;0;1128748060;1768318543;25955;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[TGC办公室]]
  {812663058;1953384759;1761636210;27502;0;0;1869894428;1951624562;7631457;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[暴风一]]
  {812663058;1953384759;1761636210;27502;0;0;1869894428;28018;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[暴风二]]
  {812663058;1953384759;1761636210;27502;0;0;1869894428;1850043762;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[伊甸]]
  {812663058;1953384759;1761636210;27502;0;0;1651658524;1850045545;100;0;0;0;0;0;0;0;0;0;-11796322;1;0;0},--[[重生二图]]
  {812663058;1953384759;1761636210;27502;0;0;2002863132;110;0;0;0;0;0;0;0;0;0;0;-11796322;1;0;0}}--[[星光大道]]

local XiNian_ShanYi = false
local XiNian_XiHuo = true
local XiNian_She = nil
local XiNian_End = nil
function XiNian()
  gg.isVisible(false)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber('2.5', 16)
  gg.refineNumber('2.5', 16)
  local XiNian_Lin = gg.getResults(1)
  gg.clearResults()
  local MoB = {"1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
  local Zfc = string.upper(string.format("%#x",XiNian_Lin[1].address))
  local Zfc2 = string.gsub(Zfc,"0x","")
  local zzz = string.sub(Zfc2,0,1)
  local xxx = string.sub(Zfc2,2,2)
  local xxx1 = string.sub(Zfc2,3,3)
  local lai = ""
  for k,v in ipairs(MoB) do
    if xxx == v then
      lai = MoB[k-1]
      break
    end
  end
  XiNian_She = string.format("%d","0x"..zzz..lai..xxx1.."0000000")
  XiNian_End = XiNian_Lin[1].address
end
XiNian()
function XiNian_searchNumber(...)
  local arg = {...}
  gg.searchNumber(arg[1], arg[2], false, gg.SIGN_EQUAL, XiNian_She, XiNian_End)
end
XiNian_Dz = nil
function ChuSi()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber("-1,067,909,120", gg.TYPE_DWORD)
  gg.refineNumber("-1,067,909,120", gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg >= 1 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address + 60
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 1 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        break
      end
    end--124
    local XiNian_Tpp = {}
    XiNian_Tpp[1] = {}
    XiNian_Tpp[1].address = XiNian_Zjg[1].address+124
    XiNian_Tpp[1].flags = gg.TYPE_DWORD
    XiNian_Dz = gg.getValues(XiNian_Tpp)
    gg.clearResults()
    gg.toast("XiNian🌸:人物坐标获取成功")
   else
    gg.toast("XiNian🌸:人物坐标获取失败")
    os.exit()
  end
end
function ShunYi(...)
  local lb={...}
  local XiNian_Tmp = {}
  for x=1, 3 do
    XiNian_Tmp[#XiNian_Tmp+1] = {}
    XiNian_Tmp[#XiNian_Tmp].address = XiNian_Dz[1].address + x * 4
    XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_FLOAT
    XiNian_Tmp[#XiNian_Tmp].freeze = true
    if lb[1] ~= nil then XiNian_Tmp[#XiNian_Tmp].value = lb[1][x] end
  end
  if lb[1] ~= nil then
    gg.addListItems(XiNian_Tmp)
    gg.sleep(lb[2] and lb[2] or 50)
    gg.removeListItems(XiNian_Tmp)
  end
  return gg.getValues(XiNian_Tmp)
end
function QShunYi()
  local XiNian_Tmp = {}
  for x=1, 3 do
    XiNian_Tmp[#XiNian_Tmp+1] = {}
    XiNian_Tmp[#XiNian_Tmp].address = XiNian_Dz[1].address + x * 4
    XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_FLOAT
  end
  local zbu = gg.getValues(XiNian_Tmp)
  gg.copyText("{"..zbu[1].value..";"..zbu[2].value..";"..zbu[3].value.."}",false)
end
XiNian_Lzdz = nil
XiNian_Dhdz = nil
XiNian_Dhdz1 = nil
function DhZh()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber('3267887104', gg.TYPE_QWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address - 8
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 1 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        break
      end
    end
    local XiNian_Dzi = XiNian_Zjg[1].address
    XiNian_Lzdz = XiNian_Dzi - 48
    gg.copyText(string.format("%#x",XiNian_Lzdz),false)
    gg.toast('XiNian🌸:点蜡获取成功')
   else
    gg.toast('XiNian🌸:点蜡获取失败')
  end
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber('1133903872', gg.TYPE_QWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address - 2508
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 50 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        break
      end
    end
    local XiNian_Dzi = XiNian_Zjg[1].address
    XiNian_Dhdz = XiNian_Dzi + 2508
    gg.toast('XiNian🌸:炸花获取成功')
   else
    gg.toast('XiNian🌸:炸花获取失败')
  end
  gg.clearResults()
  gg.clearResults()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber('257;-1::8', gg.TYPE_DWORD)
  gg.refineNumber("257", gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address - 12
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_FLOAT
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == "1" then
        XiNian_Zjg[1] = XiNian_Tmp[k]
--        gg.addListItems(XiNian_Zjg)
        break
      end
    end
    local XiNian_Dzi = XiNian_Zjg[1].address
    XiNian_Dhdz1 = XiNian_Dzi - 324
    gg.toast('XiNian🌸:花获取成功')
    ShunD1()
   else
    gg.toast('XiNian🌸:花获取失败')
  end
  gg.clearResults()
end
XiNian_Zjg = {}
XiNian_Zjg1 = {}
gg.setVisible(false)
gg.clearResults()
gg.setRanges(4)
XiNian_searchNumber("14739", gg.TYPE_DWORD)
gg.refineNumber("14739", gg.TYPE_DWORD)
local XiNian_Jg = gg.getResultCount()
local XiNian_Zjg1 = {}
if XiNian_Jg >= 1 then
  local XiNian_Zjg = gg.getResults(XiNian_Jg)
  local XiNian_Tmp = {}
  for k, v in pairs(XiNian_Zjg) do
    XiNian_Tmp[#XiNian_Tmp + 1] = {}
    XiNian_Tmp[#XiNian_Tmp].address = v.address + 12
    XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
  end
  XiNian_Tmp = gg.getValues(XiNian_Tmp)
  for k, v in pairs(XiNian_Tmp) do
    if v.value == 104 then
      XiNian_Zjg[1] = XiNian_Tmp[k]
      XiNian_Zjg1[1] = XiNian_Zjg[1]
      break
    end
  end
end
gg.clearResults()
function Csm2(...)
  local Dcs = {...}
  local XiNian_Tmp1 = {}
  local XiNian_Tmp2 = {}
  local hhh = ShunYi()
  if #Dcs == 3 then
    
    for ib = 1,22 do
      XiNian_Tmp2[#XiNian_Tmp2+1] = {}
      XiNian_Tmp2[#XiNian_Tmp2].address = XiNian_Zjg1[1].address + 104 - 224 + 224 * Dcs[1] + 40 + ib * 4
      XiNian_Tmp2[#XiNian_Tmp2].flags = gg.TYPE_DWORD
      XiNian_Tmp2[#XiNian_Tmp2].value = Dcs[3][ib]
    end
    gg.setValues(XiNian_Tmp2)
  end
  if #Dcs == 3 then
    for x = 1, 3 do
      XiNian_Tmp1[#XiNian_Tmp1+1] = {}
      XiNian_Tmp1[#XiNian_Tmp1].address = XiNian_Zjg1[1].address + 104 - 224 + 224 * Dcs[1] + x * 4
      XiNian_Tmp1[#XiNian_Tmp1].flags = gg.TYPE_FLOAT
      XiNian_Tmp1[#XiNian_Tmp1].freeze = true
      XiNian_Tmp1[#XiNian_Tmp1].value = hhh[x].value
    end
    gg.setValues(XiNian_Tmp1)
  end
  if #Dcs == 2 then
    XiNian_Tmp1 = {}
    for x = 1, 3 do
      XiNian_Tmp1[#XiNian_Tmp1+1] = {}
      XiNian_Tmp1[#XiNian_Tmp1].address = XiNian_Zjg1[1].address + 104 - 224 + 224 * Dcs[1] + x * 4
      XiNian_Tmp1[#XiNian_Tmp1].flags = gg.TYPE_FLOAT
      XiNian_Tmp1[#XiNian_Tmp1].freeze = true
      XiNian_Tmp1[#XiNian_Tmp1].value = Dcs[2][x]
    end
    gg.addListItems(XiNian_Tmp1)
    gg.sle(1300)
    gg.removeListItems(XiNian_Tmp1)
  end
end
function pdujtm(xx)
  local XiNian_Tmp3 = {}
  while true do
    XiNian_Tmp3 = {}
    XiNian_Tmp3[1] = {}
    XiNian_Tmp3[1].address = XiNian_Zjg1[1].address + 9109484
    XiNian_Tmp3[1].flags = 4
    XiNian_Tmp3 = gg.getValues(XiNian_Tmp3)
    if XiNian_Tmp3[1].value == XiNian_Data[xx][2] then
      goto jtcg
    end
  end
::jtcg::
  gg.toast("XiNian🌸:进入『"..XiNian_Data[xx][3].."』成功")
  gg.sleep(3000)
end
function symdi(x)
  local XiNian_Tmp3 = {}
  XiNian_Tmp3 = {}
  XiNian_Tmp3[1] = {}
  XiNian_Tmp3[1].address = XiNian_Zjg1[1].address + 9109484
  XiNian_Tmp3[1].flags = 4
  XiNian_Tmp3 = gg.getValues(XiNian_Tmp3)
  if XiNian_Tmp3[1].value == XiNian_Data[x][2] then return end
  Csm2(1,"",XiNian_Mmqm[x])
  if x == 3 then
    gg.sleep(800)
    Csm2(2,{67.95957946777;1.16132426262;456.5735168457})
  end
  if x == 4 then
    gg.sleep(800)
    Csm2(2,{-66.57843780517578;85.30348205566406;42.331504821777344})
  end
  if x == 18 then
    gg.sleep(800)
    Csm2(1,{53.059871673583984;468.3950500488281;138.73963928222656})
  end
  if x == 25 then
    gg.sleep(800)
    Csm2(1,{22.33564186096;98.8490447998;-46.86563491821})
  end
  if x == 26 then
    gg.sleep(800)
    Csm2(2,{22.33564186096;98.8490447998;-46.86563491821})
  end
  if x == 38 then
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    XiNian_searchNumber(':Prairie_ButterflyFields', gg.TYPE_BYTE)
    gg.refineNumber(':Prairie_ButterflyFields', gg.TYPE_BYTE)
    gg.getResults(800)
    gg.editAll(':CandleSpaceEnd', gg.TYPE_BYTE)
    gg.clearResults()
    gg.sleep(800)
    Csm2(2,{67.95957946777;1.16132426262;456.5735168457})
  end
  pdujtm(x)
end
function gxigy()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber("65793", 32, false, gg.SING_EQUAL, 0, -1)
  gg.refineNumber("65793", 32, false, gg.SING_EQUAL, 0, -1)
  z = gg.getResultCount()
  w = gg.getResults(z)
  t = {}
  for i, v in ipairs(w) do
    t[#t + 1] = {}
    t[#t].address = v.address - 144
    t[#t].flags = 32
  end
  t = gg.getValues(t)
  local r = {}
  w = {}
  for i, v in ipairs(t) do
    if v.value == 257 then
      w[#w+1] = t[i]
    end
  end
  for i = 1, #w do
    r[i] = {}
    r[i].address = w[i].address
    r[i].flags = 4
    r[i].value = "256"
    gg.setValues(r)
  end
  gg.clearResults()
end
function paogyi(x)
  local jic = 32 - x + 1
  for i = 1,jic do
    if #XiNian_Gata[x+i-1] ~= 0 then
      symdi(x+i-1)
      pdujtm(x+i-1)
      gxigy()
      gg.sleep(500)
      for ii = 1,#XiNian_Gata[x+i-1] do
        ShunYi(XiNian_Gata[x+i-1][ii])
        gg.sleep(17000)
      end
      if i == jic then
        ShunYi({2.260443925857544;262.16070556640625;-236.75033569335938})
        gg.sleep(200)
        ShunYi(XiNian_Gata[x+i-1][1])
        gg.sleep(17000)
        ShunYi({6.62452173233;265.95574951172;-244.71562194824})
        gg.sleep(200)
        ShunYi(XiNian_Gata[x+i-1][1])
        gg.sleep(17000)
      end
    end
  end
  symdi(1)
  gg.toast("XiNian🌸:光翼跑图完毕")
end
function Zddzuo()
  local XiNian_Tmp = {}
  for i=1,5 do
    XiNian_Tmp[i] = {}
    XiNian_Tmp[i].address = XiNian_Lzdz + (i - 1) * 24 + 10323656
    XiNian_Tmp[i].flags = gg.TYPE_DWORD
    XiNian_Tmp[i].value = 65535
  end
  gg.setValues(XiNian_Tmp)
end
function ShunD()
  local XiNian_Lz = {}
  for i = 1, 450 do
    XiNian_Lz[i] = {}
    XiNian_Lz[i].address = XiNian_Lzdz + i * 448
    XiNian_Lz[i].flags = gg.TYPE_FLOAT
    XiNian_Lz[i].value = 2
  end
  gg.setValues(XiNian_Lz)
end
function ShunD1()
  local XiNian_Dh = {}
  for i = 1, 256 do
    XiNian_Dh[i] = {}
    XiNian_Dh[i].address = XiNian_Dhdz + i * 8
    XiNian_Dh[i].flags = gg.TYPE_FLOAT
    XiNian_Dh[i].freeze = true
    XiNian_Dh[i].value = '0'
  end
  gg.addListItems(XiNian_Dh)
end
function XiSouZH()
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber("-842203136",gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg == 0 then
    gg.toast("XiNian🌸:吸收失败！")
    os.exit()
  end
  local XiNian_Zjg = gg.getResults(XiNian_Jg)
  local XiNian_Tmp = {}
  for i, v in ipairs(XiNian_Zjg) do
    XiNian_Tmp[#XiNian_Tmp+1] = {}
    XiNian_Tmp[#XiNian_Tmp].address = v.address - 12
    XiNian_Tmp[#XiNian_Tmp].flags = 16
  end
  local XiNian_Tmp1 = {}
  XiNian_Tmp = gg.getValues(XiNian_Tmp)
  for i, v in ipairs(XiNian_Tmp) do
    if "" .. v.value == "3.5" then
      XiNian_Tmp1[#XiNian_Tmp1+1] = {}
      XiNian_Tmp1[#XiNian_Tmp1].address = XiNian_Tmp[i].address
      XiNian_Tmp1[#XiNian_Tmp1].flags = 16
      XiNian_Tmp1[#XiNian_Tmp1].value = 999999
    end
  end
  gg.setValues(XiNian_Tmp1)
  gg.clearResults()
  gg.toast("XiNian🌸:吸收成功")

end
local gmlq = nil
function sjizb()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber("171491",gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if(XiNian_Jg == nil or XiNian_Jg == 0) then
    gg.toast("XiNian🌸:失败")
    return
  end
  local XiNian_Zjg = gg.getResults(1)
  gmlq = XiNian_Zjg[1].address + 88
end
sjizb()
function zhigm(n)
  local XiNian_Sp1 = {}
  for i = 1 ,3 do
    for ii = 1,77 do
      XiNian_Sp1[ii] = {}
      XiNian_Sp1[ii].address = XiNian_Lzdz + 528 * (ii - 1) + 4 * (i - 1) + 8039232
      XiNian_Sp1[ii].flags = 16
      XiNian_Sp1[ii].value = n[i]
      print(n[i])
    end
  end
  gg.setValues(XiNian_Sp1)
end
function XHSG(x)
  local XiNian_RwuZ = {}
  local XiNian_Sp = {}
  local XiNian_Gy = {}
  local XiNian_Hp = {}
  if x == 2 then
    XiNian_Gy = {}
    for i = 1,9 do
      XiNian_Gy[i] = {}
      XiNian_Gy[i].address = XiNian_Lzdz + 304 * ( i - 1 ) + 4796000 + 104
      XiNian_Gy[i].flags = 4
      XiNian_Gy[i].value = 4
    end
    gg.setValues(XiNian_Gy)
    for i = 1,9 do
      XiNian_Gy[i] = {}
      XiNian_Gy[i].address = XiNian_Lzdz + 304 * ( i - 1 ) + 4796000 + 104
      XiNian_Gy[i].flags = 4
      XiNian_Gy[i].value = 1
    end
    gg.setValues(XiNian_Gy)
  end
  for i = 1,3 do
    XiNian_RwuZ[i] = {}
    XiNian_RwuZ[i].address = XiNian_Dz[1].address + i * 4
    XiNian_RwuZ[i].flags = 16
    XiNian_RwuZ = gg.getValues(XiNian_RwuZ)
    if x == 1 then
      XiNian_Sp = {}
      for ii = 1,77 do
        XiNian_Sp[ii] = {}
        XiNian_Sp[ii].address = gmlq + 528 * (ii - 1) + 4 * (i - 1)
        XiNian_Sp[ii].flags = 16
        XiNian_Sp[ii].value = XiNian_RwuZ[i].value
      end
      gg.setValues(XiNian_Sp)
    end
    if x == 3 then
      XiNian_Hp = {}
      for ii = 1,256 do
        XiNian_Hp[ii] = {}
        XiNian_Hp[ii].address = XiNian_Dhdz1 + 416 * (ii - 1) + 4 * i
        XiNian_Hp[ii].flags = 16
        XiNian_Hp[ii].value = XiNian_RwuZ[i].value
      end
      gg.addListItems(XiNian_Hp)
      gg.setValues(XiNian_Hp)
    end
  end
end
function paotuba()
  local xizuhh = {1,2,3,7,9,11,19,20,21,23,25,30,31,34,36}
  local xihuaa = {4,8,10,12,13,14,15,16,17,18,24,26,27,28,29,32}
  local ycba = {13,14,15,16,26,27,28,29}
  ShunD()
  XiSouZH()
  for k,v in pairs(paotu) do
    ShunYi(v)
    for kiii,viii in pairs(ycba) do
      if k == viii then
        gg.sleep(7000)
        break
      end
    end
    gg.sleep(11000)
    if XiNian_XiHuo then
      for ki,vi in pairs(xizuhh) do
        if k == vi then
          ShunD()
          XiSouZH()
          break
        end
      end
      for kii,vii in pairs(xihuaa) do
        if k == vii then
          ShunD()
          XHSG(3)
          XiSouZH()
          break
        end
      end
      if k == 21 or k == 23 then
        if k == 21 then
          Zddzuo()
          Zddzuo()
          Zddzuo()
          gg.sleep(5000)
          XHSG(1)
        end
        gg.sleep(50000)
      end
      if k == 31 then
        XiuGi(2219120716,8)
      end
    end
    if XiNian_ShanYi then
      XHSG(2)
    end
    gg.sleep(5000)
  end
end
XiNian_Zbeiw = nil
function ZhuiMeng()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber('29281', gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address - 168
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 1 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        break
      end
    end
    local XiNian_Dzi = XiNian_Zjg[1].address
    XiNian_Zbeiw = XiNian_Dzi
    gg.toast('XiNian🌸:获取装备成功')
   else
    gg.toast('XiNian🌸:获取装备失败')
  end
end
function XiuGi(ID,p)
  vi = {}
  vi[1] = {}
  vi[1].flags = gg.TYPE_DWORD
  vi[1].address = XiNian_Zbeiw + p
  vi[1].value = ID
  gg.setValues(vi)
end
XiNian_Wxnl = false
XiNian_Wxhs = {}
XiNian_Wxhsdz = nil
function Wxnlcsh()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber("256", gg.TYPE_DWORD)
  gg.refineNumber("256", gg.TYPE_DWORD)
  XiNian_Wxhs = gg.getResultCount()
  if XiNian_Wxhs ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Wxhs)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address + 60
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_FLOAT
    end
    local XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 1.25 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        XiNian_Wxhsdz = XiNian_Zjg[1].address
        break
      end
    end
    gg.toast("XiNian🌸:无限能量地址获取成功")
   else
    gg.toast("XiNian🌸:无限能量地址获取失败")
  end
end
function Wxnl()
  if not XiNian_Wxnl then
    XiNian_Wxhs = {}
    XiNian_Wxhs[1] = {}
    XiNian_Wxhs[1].address = XiNian_Wxhsdz - 56
    XiNian_Wxhs[1].flags = gg.TYPE_FLOAT
    XiNian_Wxhs[1].value = "14"
    XiNian_Wxhs[1].freeze = true
    gg.addListItems(XiNian_Wxhs)
    gg.clearResults()
    gg.toast("XiNian🌸:无限能量开启成功")
    XiNian_Wxnl = true
   else
    gg.toast("XiNian🌸:无限能量关闭成功")
    XiNian_Wxhs[1].freeze = false
    gg.addListItems(XiNian_Wxhs)
    XiNian_Wxnl = false
  end
end
function Yjsji()
  gg.setRanges(4)
  gg.clearResults()
  XiNian_searchNumber(':emote_upgrade',gg.TYPE_BYTE)
  gg.getResults(gg.getResultCount())
  gg.setRanges(10000)
  gg.editAll(':0',gg.TYPE_BYTE)
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber("1936026722", gg.TYPE_DWORD)
  gg.refineNumber("1936026722", gg.TYPE_DWORD)
  ResultCount = gg.getResultCount()
  if ResultCount ~= 0 then
    local bbcc = {}
    local tmp = {}
    local XiNian_DDct = nil
    local result = gg.getResults(ResultCount)
    for k, v in pairs(result) do
      tmp[#tmp + 1] = {}
      tmp[#tmp].address = v.address + 248
      tmp[#tmp].flags = gg.TYPE_DWORD
    end
    tmp = gg.getValues(tmp)
    for k, v in pairs(tmp) do
      if v.value == 1 then
        XiNian_DDct = tmp[k].address + 8
        break
      end
    end
    for i = 1, 100 do
      bbcc[i] = {}
      bbcc[i].address = XiNian_DDct + i * 48
      bbcc[i].flags = gg.TYPE_DWORD
      bbcc[i].value = 6
    end
    gg.addListItems(bbcc)
    gg.setValues(bbcc)
  end
end
function Wxyh()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(4)
  XiNian_searchNumber("-1076845609", gg.TYPE_DWORD)
  local XiNian_Jg = gg.getResultCount()
  if XiNian_Jg ~= 0 then
    local XiNian_Zjg = gg.getResults(XiNian_Jg)
    local XiNian_Tmp = {}
    for k, v in pairs(XiNian_Zjg) do
      XiNian_Tmp[#XiNian_Tmp + 1] = {}
      XiNian_Tmp[#XiNian_Tmp].address = v.address + 28
      XiNian_Tmp[#XiNian_Tmp].flags = gg.TYPE_DWORD
    end
    XiNian_Tmp = gg.getValues(XiNian_Tmp)
    for k, v in pairs(XiNian_Tmp) do
      if v.value == 5 then
        XiNian_Zjg[1] = XiNian_Tmp[k]
        break
      end
    end
    local XiNian_Wxyh = {}
    XiNian_Wxyh[1] = {}
    XiNian_Wxyh[1].address = XiNian_Zjg[1].address - 4
    XiNian_Wxyh[1].flags = gg.TYPE_DWORD
    XiNian_Wxyh[1].value = "6"
    XiNian_Wxyh[1].freeze = true
    gg.addListItems(XiNian_Wxyh)
    gg.clearResults()
    gg.toast('XiNian🌸:开启成功')
   else
    gg.toast('XiNian🌸:开启失败')
  end
end
function toumdp()
  vii = {}
  vii[1] = {}
  vii[1].flags = gg.TYPE_FLOAT
  vii[1].address = XiNian_Wxhsdz - 16
  vii[1].value = "0"
  gg.setValues(vii)
end
function Chuanth()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber('2.5',gg.TYPE_FLOAT)
  gg.refineNumber('2.5',gg.TYPE_FLOAT)
  gg.getResults(1)
  gg.editAll("99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.toast("XiNian🌸:火箭🚀已经起飞！！！")
  gg.sleep(1000)
  gg.editAll("2.5", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.clearResults()
  gg.toast("XiNian🌸:火箭🚀没燃料了emmm！")
end
function mfgf(x)
  local bodySizeAddr = XiNian_Wxhsdz - 56 + 28668
  local bodyPyAddr = XiNian_Wxhsdz - 56 + 28668 + 48
  local bodyPhysiqueAddr = XiNian_Wxhsdz - 56 + 31740
  local bodyMagicTimeAddr = XiNian_Wxhsdz - 56 + 28668 + 8
  local bodySizeMagicTimeAddr = XiNian_Wxhsdz - 56 + 28668 +56
  local bodyLightMagicAddr = XiNian_Wxhsdz - 56 + 28668 + 96
  local bodyLightMagicTimeAddr = XiNian_Wxhsdz - 56 + 28668 + 104
  local bodyStates = {}
  if(x == nil) then
    return
    --魔法帽1,983,755,432
    --蜘蛛斗篷930,203,946
   elseif(x == 1) then
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
   elseif(x == 2) then
    bodyStates[2]={}
    bodyStates[2].address= bodyPyAddr
    bodyStates[2].flags=gg.TYPE_DWORD
    bodyStates[2].value=-1879316162
    bodyStates[4]={}
    bodyStates[4].address= bodyPhysiqueAddr
    bodyStates[4].flags=gg.TYPE_DWORD
    bodyStates[4].value=3
    bodyStates[6]={}
    bodyStates[6].address= bodySizeMagicTimeAddr
    bodyStates[6].flags = gg.TYPE_DWORD
    bodyStates[6].freeze = true
    bodyStates[6].value = 1752658590
   elseif(x == 3) then
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
   elseif(x == 4) then
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
   elseif(x == 5) then
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
   elseif(x == 6) then
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
   elseif(x == 7) then
    bodyStates[3]={}
    bodyStates[3].address= bodyPyAddr
    bodyStates[3].flags=gg.TYPE_DWORD
    bodyStates[3].value=1983755432
    bodyStates[7]={}
    bodyStates[7].address=bodySizeMagicTimeAddr
    bodyStates[7].flags = gg.TYPE_DWORD
    bodyStates[7].freeze = true
    bodyStates[7].value = 1752658590
    bodyStates[4]={}
    bodyStates[4].address= bodyPhysiqueAddr
    bodyStates[4].flags=gg.TYPE_DWORD
    bodyStates[4].value=3
   elseif(x == 8) then
    bodyStates[3]={}
    bodyStates[3].address= bodyPyAddr
    bodyStates[3].flags=gg.TYPE_DWORD
    bodyStates[3].value=1046521292
    bodyStates[7]={}
    bodyStates[7].address=bodySizeMagicTimeAddr
    bodyStates[7].flags = gg.TYPE_DWORD
    bodyStates[7].freeze = true
    bodyStates[7].value = 1752658590
    bodyStates[4]={}
    bodyStates[4].address= bodyPhysiqueAddr
    bodyStates[4].flags=gg.TYPE_DWORD
    bodyStates[4].value=3
   elseif(x == 9) then
    bodyStates[3]={}
    bodyStates[3].address= bodyLightMagicAddr
    bodyStates[3].flags=gg.TYPE_DWORD
    bodyStates[3].value=930203946
    bodyStates[7]={}
    bodyStates[7].address=bodyLightMagicTimeAddr
    bodyStates[7].flags = gg.TYPE_DWORD
    bodyStates[7].freeze = true
    bodyStates[7].value = 1752658590
    bodyStates[4]={}
    bodyStates[4].address= bodyPhysiqueAddr
    bodyStates[4].flags=gg.TYPE_DWORD
    bodyStates[4].value=3
   elseif(x == 10) then
    bodyStates[3]={}
    bodyStates[3].address= bodyLightMagicAddr
    bodyStates[3].flags=gg.TYPE_DWORD
    bodyStates[3].value=625581156
    bodyStates[7]={}
    bodyStates[7].address=bodyLightMagicTimeAddr
    bodyStates[7].flags = gg.TYPE_DWORD
    bodyStates[7].freeze = true
    bodyStates[7].value = 1752658590
    bodyStates[4]={}
    bodyStates[4].address= bodyPhysiqueAddr
    bodyStates[4].flags=gg.TYPE_DWORD
    bodyStates[4].value=3
   elseif(x == 11) then
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
  end
  gg.setValues(bodyStates)
  gg.toast("XiNian🌸:嘿嘿嘿,看看变化,老夫可爱吗？")
end
function Xianji()
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  XiNian_searchNumber("1043045760", 4)
  gg.refineNumber("1043045760", 4)
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
    if v.value == 679 then
      j = j + 1
      r[j] = {}
      r[j] = t[i]
      w[j] = t[i]
    end
  end
  for i = 1, j do
    tt = gg.getValues(tt)
    r[1] = {}
    r[1].address = w[i].address + 8
    r[1].flags = 16
    r[1].value = tt[1].value
    r[2] = {}
    r[2].address = w[i].address + 12
    r[2].flags = 16
    r[2].value = tt[2].value
    r[3] = {}
    r[3].address = w[i].address + 16
    r[3].flags = 16
    r[3].value = tt[3].value
    gg.setValues(r)
    gg.toast('XiNian🌸:吸取雕像成功！')
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
    gg.toast("XiNian🌸:人物超级跳修改成功")
    isSuperJumpOpen = true
   else
    gg.clearResults()
    gg.setRanges(8)
    gg.searchNumber('-1D;1F;1D::25',gg.TYPE_FLOAT)
    gg.refineNumber('1',gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("1", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
    gg.clearResults()
    gg.toast("XiNian🌸:人物超级跳关闭成功")
    isSuperJumpOpen = false
  end
end
local isSuper1 = false
function i55()
  if(not isSuper1) then
    gg.clearResults();
    gg.setRanges(8)
    gg.searchNumber('1D;3.5F::5',gg.TYPE_FLOAT)
    gg.refineNumber('3.5',gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("7", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
    gg.clearResults()
    gg.toast("XiNian🌸:人物加速修改成功")
    isSuper1 = true
   else
    gg.clearResults();
    gg.setRanges(8)
    gg.searchNumber('1D;3.5F::5',gg.TYPE_FLOAT)
    gg.refineNumber('3.5',gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("3.5", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
    gg.clearResults()
    gg.toast("XiNian🌸:人物加速恢复成功")
    isSuper1 = false
  end
end
function baibai()
  gg.toast('XiNian🌸:可能我又老又丑你不需要圣哥了(｡•́︿•̀｡)')
  --  gg.clearResults()
  --  gg.clearList()
  os.exit()
end
function main2()
  menu2 =
  gg.choice(
  {
    '🌸吸烛火',
    '🌸吸花朵',
    '🌸吸光芒',
    '🌸吸光翼(不建议最近查的严)',
    "🌸返回上一层"
  },
  nil,
  '----手动跑图辅助界面----'
  )
  if menu2 == 1 then
    ShunD()
    XiSouZH()
  end
  if menu2 == 2 then
     ShunD1()
      XHSG(3)
    XiSouZH()
  end
  if menu2 == 3 then
    XHSG(1)
  end
  if menu2 == 4 then
    XHSG(2)
  end
  if menu2 == 5 then
    XiNian_CaiDan1 = "main"
    main()
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main1()
  local X_xX =
  gg.multiChoice(
  {'🌸跑烛火', '🌸跑光翼(查的严)', '🌸返回上一层'},
  {[1] = XiNian_XiHuo, [2] = XiNian_ShanYi, [3] = false},
  '🌸熈年瞬移稳定跑图🌸'
  )
  if X_xX ~= nil then
    if X_xX[1] then
      XiNian_XiHuo = true
     else
      XiNian_XiHuo = false
    end
    if X_xX[2] then
      XiNian_ShanYi = true
     else
      XiNian_ShanYi = false
    end
    if X_xX[3] then
      XiNian_CaiDan1 = "main"
      main()
    end
    if X_xX[1] == true or X_xX[2] == true then
      paotuba()
    end
  end
  XiNian_CaiDan = nil
  gg.isVisible(false)
end
function main3_1()
  local caidy = {"可","无名","归属裤子","白绒","束脚","飘带","修身"}
  local daimy = {2119378818,570621080,268095236,-1203892007,2119378818,570621080,-1180077310}
  menu3_1 = gg.choice(caidy,nil,'---裤子界面----')
  if menu3_1 ~= nil then
    XiuGi(daimy[menu3_1],4)
  end
end
function main3_2()
  local caidy = {"蝙蝠","棕色蜜蜂","植树节","凛冬紫色","凛冬白色","归属季黑金","归属红金","归属白金","归属黑红","感恩红毛","新季节金","普通白","普通粉","普通绿","感恩金","感恩红","感恩蓝","普通黑","普通草绿","普通紫","TGC","奇奇怪怪","大圈球","追光紫纹","追光金纹","奇怪","尖牙","尖翅","新季节1","新季节2","新季节3"}
  local daimy = {2496216296,3130294398,2731242012,844189904,803430286,2181608090,3740388568,1740444614,705761080,3130294398,2473421893,2642234311,4009091214,1611389272,4290017146,2038455273,1676224199,4282852965,3167707894,3466800656,2219120716,4002608101,2186944737,2766860709,2716527852,3952275244,1205733815,1516488095,-1821545403,-292359195,-342692052}
  menu3_2 = gg.choice(caidy,nil,'---斗篷界面----')
  if menu3_2 ~= nil then
    XiuGi(daimy[menu3_2],8)
  end
end
function main3_3()
  local caidy = {"太阳帽","斗笠","道士帽","蝴蝶结","红耳机","卡卡西","百鸟","唐僧","某毛"}
  local daimy = {3342968869,-2063870146,-853772982,1859574381,343022577,777821397,298050356,777066155,640785264}
  menu3_3 = gg.choice(caidy,nil,'---发型界面----')
  if menu3_3 ~= nil then
    XiuGi(daimy[menu3_3],12)
  end
end

function main3_4()
  local caidy = {"面具","大头鸟","鹿头","龙头面具","宽鸟嘴","感恩某面具","追光季面具之一","兔耳","狐狸","功夫先祖","鸭嘴","无脸","一","二"}
  local daimy = {1984844986,3555166118,1044037391,2535142832,3716657324,2535142832,1884179272,4228619598,-1187124188,2726619261,570497295,1934512129,19177345100,1884179272}
  menu3_4 = gg.choice(caidy,nil,'---面具界面----')
  if menu3_4 ~= nil then
    XiuGi(daimy[menu3_4],16)
  end
end
function main3_5()
  local caidy = {"追光","归属","凛冬","感恩"}
  local daimy = {11177869781,1962184054,3594119491,2348358260}
  menu3_5 = gg.choice(caidy,nil,'---项链界面----')
  if menu3_5 ~= nil then
    XiuGi(daimy[menu3_5],20)
  end
end
function main3_6()
  local caidy = {"敲琴","大铃铛","尤克里里","秋千","篝火","烟花棒","雨伞","排箫","笛子","吉他","桌子","大钢琴","小铃","花伞"}
  local daimy = {399957901,4196378836,2352004821,3580839943,3779226149,3280753494,2574095143,1237767078,396560731,3269660804,992885953,3275797515,4246711693,3634028466}
  menu3_6 = gg.choice(caidy,nil,'---背饰界面----')
  if menu3_6 ~= nil then
    XiuGi(daimy[menu3_6],36)
  end
end
function main3()
  menu3 =
  gg.choice(
  {
    "🐷裤子",
    "🐷斗篷",
    "🐷发型",
    "🐷面具",
    "🐷项链",
    "🐷背饰",
    "🐷返回上一层"
  },
  nil,
  '---熈年自定义装扮界面----'
  )
  if menu3 == 1 then
    main3_1()
  end
  if menu3 == 2 then
    main3_2()
  end
  if menu3 == 3 then
    main3_3()
  end
  if menu3 == 4 then
    main3_4()
  end
  if menu3 == 5 then
    main3_5()
  end
  if menu3 == 6 then
    main3_6()
  end
  if menu3 == 7 then
    XiNian_CaiDan1 = "main"
    main()
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main4()
  local ljiq = ""
  local ljiq1 = ""
  local ljiq2 = ""
  if XiNian_Wxnl then ljiq = "[已开启]" else ljiq = "[已关闭]" end
  if isSuperJumpOpen then ljiq1 = "[已开启]" else ljiq1 = "[已关闭]" end
  if isSuper1 then ljiq2 = "[已开启]" else ljiq2 = "[已关闭]" end
  menu4 =
  gg.choice(
  {
    "🐷"..ljiq.."无限能量（易闪退）",
    "🐷透明斗篷(可以飞的无翼)",
    "🐷串天猴(用来跑禁阁)",
    "🐷一件升级动作（易闪退)",
    "🐷无限烟花（易闪退）",
    "🐷吸献祭雕像（需要到伊甸开启）",
    "🐷"..ljiq2.."人物加速(开了似乎退出游戏才能恢复)",
    "🐷"..ljiq1.."超级跳(开关似乎不太好用)",
    "🐷取自身坐标",
    "🐷置光芒坐标",
    "🐷返回上一层"
  },
  nil,
  '---熈年其他功能界面----'
  )
  if menu4 == 1 then
    Wxnl()
  end
  if menu4 == 2 then
    toumdp()
  end
  if menu4 == 3 then
    Chuanth()
  end
  if menu4 == 4 then
    Yjsji()
  end
  if menu4 == 5 then
    Wxyh()
  end
  if menu4 == 6 then
    Xianji()
  end
  if menu4 == 7 then
    i55()
  end
  if menu4 == 8 then
    superJump()
  end
  if menu4 == 9 then
    QShunYi()
  end
  if menu4 == 10 then
    local positionPrT = gg.prompt({"粘贴坐标"},{[1]=""},{[1]="text"})
    zhigm(assert(load("return " .. positionPrT[1]))())
  end
  if menu4 == 11 then
    XiNian_CaiDan1 = "main"
    main()
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main5()
  menu5 =
  gg.choice(
  {
    "💚1. 矮人放大(大脸萌妹)",
    "💚2. 原体型变大",
    "💚3. 体型变大(瘦)",
    "💚4. 原体型缩小",
    "💚5. 体型缩小(小脸萌妹)",
    "💚6. 黑暗中最靓的仔",
    "💚7. 巫女帽",
    "💚8. 南瓜头",
    "💚9. 蜘蛛斗篷",
    "💚10. 蝙蝠斗篷",
    "💚11. 恢复变化",
    "💚返回上一层"
  },
  nil,
  '---熈年魔法工坊界面----'
  )
  if menu5 == 12 then
    XiNian_CaiDan1 = "main"
    main()
  end
  mfgf(menu5)
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main6_1()
  local caid2 = {}
  menu6_1 = nil
  for k,v in pairs(XiNian_Data) do
    caid2[k] = "❤️"..v[3]
  end
  menu6_1 = gg.choice(caid2,nil,'---熈年地图任意门界面----')
  if menu6_1 ~= nil then
    symdi(menu6_1)
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main6()
  menu6 =
  gg.choice(
  {
    "❤️地图任意门",
    "❤️彩蛋任瞬门(未开启)",
    "❤️返回上一层"
  },
  nil,
  '---熈年任意瞬门界面----'
  )
  if menu6 == 1 then
    main6_1()
  end
  if menu6 == 2 then
    ShunYi({67.95957946777;1.16132426262;456.5735168457})
  end
  if menu6 == 3 then
    XiNian_CaiDan1 = "main"
    main()
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
function main()
  menu =
  gg.choice(
  {
    "🌸稳定瞬移跑图",
    "🌸手动跑图辅助",
    "🌸自慰装扮饰品",
    "🌸其他特殊功能",
    "🌸神秘魔法工坊",
    "🌸神秘任意瞬门",
    "🌸一键跑光翼(不怕的同学来)",
    "🌸不需要辅助了(交流群1126707170)"
  },
  nil,
  '---熈年多功能界面本脚本免费发现倒卖联系作者q2826082360'
  )
  if menu == 1 then
    XiNian_CaiDan1 = "main1"
    main1()
  end
  if menu == 2 then
    XiNian_CaiDan1 = "main2"
    main2()
  end
  if menu == 3 then
    main3()
    XiNian_CaiDan1 = "main3"
  end
  if menu == 4 then
    main4()
    XiNian_CaiDan1 = "main4"
  end
  if menu == 5 then
    main5()
    XiNian_CaiDan1 = "main5"
  end
  if menu == 6 then
    main6()
    XiNian_CaiDan1 = "main6"
  end
  if menu == 7 then
    local tmp = {}
    for i = 1,#XiNian_Data do
      tmp[i] = "🌸->>『"..XiNian_Data[i][3].."』"
    end
    local vv = gg.choice(tmp,nil,"---从哪里开始")
    paogyi(vv)
  end
  if menu == 8 then
    baibai()
  end
  gg.isVisible(false)
  XiNian_CaiDan = nil
end
firstMain()
XiNian_CaiDan1 = 'main'
while true do
  if gg.isVisible(true) then
    XiNian_CaiDan = XiNian_CaiDan1
    gg.setVisible(false)
  end
  if XiNian_CaiDan == 'main' then
    main()
  end
  if XiNian_CaiDan == 'main1' then
    main1()
  end
  if XiNian_CaiDan == 'main2' then
    main2()
  end
  if XiNian_CaiDan == 'main3' then
    main3()
  end
  if XiNian_CaiDan == 'main4' then
    main4()
  end
  if XiNian_CaiDan == 'main5' then
    main5()
  end
  if XiNian_CaiDan == 'main6' then
    main6()
  end
end