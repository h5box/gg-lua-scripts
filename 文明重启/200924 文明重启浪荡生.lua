
gg.alert("地基飞天切出地基进水自杀卡防摔，游泳飞天水中开启，遁地开时别动开好了爬下遁地")
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2]
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
            for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1]
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags
            end
                tmp = gg.getValues(tmp)
                for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                result[i].isUseful = false 
             end
          end
      end
             for i, v in ipairs(result) do
             if (v.isUseful) then 
             data[#data+1] = v.address
         end
     end
           if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                  offset = w[2] - base
                  t[#t+1] = {}
                  t[#t].address = data[i] + offset           
                  t[#t].flags = Type
                  t[#t].value = w[1]
                  if (w[3] == false) then
                  local item = {} 
                  item[#item+1] = t[#t]
                  item[#item]. freeze = false
                  gg.addListItems(item)
                  if (w[4] == true) then
                  local item = {} 
                  item[#item+1] = t[#t]
                  item[#item]. freeze = true
                  gg.addListItems(item)
               end
           end
       end
   end
     gg.setValues(t)
         
           gg.toast("开启成功")
           
            else
            gg.toast("开启成功")
            return false
        end
    else
      gg.toast("开启成功")
            
            return false
        end
    end


function Main() 
local yt = gg.multiChoice({
"人物天线",
"关闭天线",
"人物夜视",
"关闭夜视",
"一键黑天",
"一键白天",
"AKM无后",
"大厅无后",
"定怪灵魂",
"关闭灵魂",
"开启穿墙",
"关闭穿墙",
"         ",
"         ",
"         ",
"         ",
"         ",
"         ",
"         ",
"         ",
"         ",
"         ",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"往下滑",
"人物全遁",
"关闭全遁",
"穿弹除图",
"关闭除图",
"游泳飞天",
"关闭游泳",
"地基飞天",
"有伤灵魂",
"关闭灵魂",
"退出脚本",
}, nil, os.date("辣鸡神枪手二改狗，二改我的东西,代码写法和我一样"))
if yt == nil then else
if yt[1] == true then qu() end
if yt[2] == true then qi() end
if yt[3] == true then qy() end
if yt[4] == true then qo() end
if yt[5] == true then qt() end
if yt[6] == true then qr() end
if yt[7] == true then qe() end
if yt[8] == true then qw() end
if yt[9] == true then qq() end
if yt[10] == true then qm() end
if yt[11] == true then qn() end
if yt[12] == true then qb() end

if yt[13] == true then mn() end
if yt[14] == true then mb() end
if yt[15] == true then mv() end
if yt[16] == true then mc() end
if yt[17] == true then mx() end
if yt[18] == true then mz() end
if yt[19] == true then ml() end
if yt[20] == true then mk() end
if yt[21] == true then mj() end
if yt[22] == true then mh() end
if yt[23] == true then mg() end
if yt[24] == true then mf() end
if yt[25] == true then md() end
if yt[26] == true then ms() end
if yt[27] == true then ma() end
if yt[28] == true then mp() end
if yt[29] == true then mo() end
if yt[30] == true then mi() end
if yt[31] == true then mu() end
if yt[32] == true then my() end
if yt[33] == true then mt() end
if yt[34] == true then mr() end
if yt[35] == true then me() end
if yt[36] == true then mw() end
if yt[37] == true then mq() end
if yt[38] == true then nb() end
if yt[39] == true then nv() end
if yt[40] == true then nc() end
if yt[41] == true then nx() end
if yt[42] == true then nz() end
if yt[43] == true then nl() end
if yt[44] == true then nk() end
if yt[45] == true then nj() end
if yt[46] == true then nh() end
if yt[47] == true then ng() end
if yt[48] == true then nf() end
if yt[49] == true then nd() end
if yt[50] == true then ns() end
if yt[51] == true then na() end
if yt[52] == true then np() end
if yt[53] == true then no() end
if yt[54] == true then ni() end
if yt[55] == true then nu() end
if yt[56] == true then ny() end
if yt[57] == true then nt() end
if yt[58] == true then nr() end



if yt[59] == true then yc() end
if yt[60] == true then yd() end
if yt[61] == true then ye() end
if yt[62] == true then yf() end
if yt[63] == true then yg() end
if yt[64] == true then yh() end
if yt[65] == true then yi() end
if yt[66] == true then yj() end
if yt[67] == true then yk() end

if yt[68] == true then bv() end
if yt[69] == true then bc() end
if yt[70] == true then bx() end
if yt[71] == true then bz() end
if yt[72] == true then bl() end
if yt[73] == true then bk() end
if yt[74] == true then bj() end
if yt[75] == true then bh() end
if yt[76] == true then bg() end
if yt[77] == true then bf() end
if yt[78] == true then bd() end
if yt[79] == true then bs() end
end
XGCK = -1 end
  
 
  function qu()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
end
 function qi()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("0.16947640479", gg.TYPE_FLOAT)
end
  

  function qy()
   gg.setRanges(16384)
    SearchWrite({{"-2.7859868E28", 0},{"0.0549999997", -4},{"0.04044999927", -8}}, {{"2",-4,false}},
    gg.REGION_C_BSS)
    gg.clearList()
  end
  function qo()
   gg.setRanges(16384)
    SearchWrite({{"-2.7859868E28", 0},{"2", -4},{"0.04044999927", -8}}, {{"0.0549999997",-4,false}},
    gg.REGION_C_BSS)
    gg.clearList()
  end
 function qt()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("24",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
   gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;20::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("20",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
end
 function qr()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("24",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;120::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("120",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
end
function qe()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;35;50", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("735;30;110", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("735", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99999)
gg.editAll("9999999999",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999999)
gg.editAll("999999",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("95;101", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("95", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7;10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("7", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("0",gg.TYPE_FLOAT)
end
function qw()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4;1;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("0", gg.TYPE_FLOAT)
end
 function qq()
gg.clearResults(99999)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18D;84,000D;65,537D::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("18", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("17",gg.TYPE_DWORD)
gg.clearResults()
   gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-0.10000000149;1.0e32;0.00499999989::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 9
      }
    })
  end
  gg.clearResults()
  gg.clearList()
end
function qm()
  
gg.clearResults(99999)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("17D;84,000D;65,537D::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("18",gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.10000000149;9;0.00499999989::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.0e32
      }
    })
  end
  gg.clearResults()
  gg.clearList()
end
function qn()
   gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-0.10000000149;1.0e32;0.00499999989::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("9")
  end
  function qb()
   gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-0.10000000149;9;0.00499999989::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("1.0e32")
  end
function mn()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mb()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25235;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
  function mv()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
  function mc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25295;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mx()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25253;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mz()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25625;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ml()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25205;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25125;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mj()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("251125;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;69;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;95", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function md()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ms()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ma()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mp()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mo()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("77",gg.TYPE_FLOAT)
end
function mi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43747",gg.TYPE_FLOAT)
end
function mu()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43797",gg.TYPE_FLOAT)
end
function my()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437007",gg.TYPE_FLOAT)
end
function mt()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;51", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mr()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25235;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("47",gg.TYPE_FLOAT)
end
function me()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25252;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43747",gg.TYPE_FLOAT)
end
function mw()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25725;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function mq()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25235;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nb()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nv()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43797",gg.TYPE_FLOAT)
end
function nc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;71;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nx()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("29;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
  function nz()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;93;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("366", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nl()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;43;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;83;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nj()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("72;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("29;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ng()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;69;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("82;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437877",gg.TYPE_FLOAT)
end
function ns()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("7",gg.TYPE_FLOAT)
end
function na()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437",gg.TYPE_FLOAT)
end
function np()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("366", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function no()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("36", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ni()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4387",gg.TYPE_FLOAT)
end
function nu()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;3;4;89;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function ny()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("23;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nt()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("12;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function nr()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("72;3;4;9;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("77",gg.TYPE_FLOAT)
end
  
  
  
  
  
  

function yc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9",gg.TYPE_FLOAT)
end
function yc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9",gg.TYPE_FLOAT)
end
function yc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9",gg.TYPE_FLOAT)
end


function yc()
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
  gg.alert("浪荡生QQ1643151451")
local tb1 = {{"6Ⅰ0",0},{"3",-16},{"0.5",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"1148829Ⅰ696", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"10",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.06",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"80",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"9", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(4|32)
gg.searchNumber("0.09059999883;-0.31400001049F;0.02710000053",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.02710000053", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(90000)
gg.editAll("-1.1298777777777",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16,261W;25W;161W;1W;1.03999996185",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.03999996185", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.14987654321}})
end
end
end end end end end end end end end end 
end
end
function yd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("66", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("93",gg.TYPE_FLOAT)
end
function yd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("66", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("93",gg.TYPE_FLOAT)
end
function yd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("66", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("93",gg.TYPE_FLOAT)
end
function yd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("66", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("93",gg.TYPE_FLOAT)
end

function yd()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.14987654321",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.14987654321", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = false,value = 1.03999996185}})
	 	 end

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1.1298777777777",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.1298777777777",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99999)
gg.editAll("0.02710000053",gg.TYPE_FLOAT)

end
function ye()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("923",gg.TYPE_FLOAT)
end
function ye()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("923",gg.TYPE_FLOAT)
end
function ye()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("923",gg.TYPE_FLOAT)
end
function ye()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("923",gg.TYPE_FLOAT)
end
function ye()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"30",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"0.5", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(4|16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"1Ⅰ0000",0}, {"10000",12},{"100",4}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.30Ⅰ3",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"0",16},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"21.08",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"10",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"1.1", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function yf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("36", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9233",gg.TYPE_FLOAT)
end
function yf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("36", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9233",gg.TYPE_FLOAT)
end
function yf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("36", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9233",gg.TYPE_FLOAT)
end
function yf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("36", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("9233",gg.TYPE_FLOAT)
end

function yf()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"9.0785",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"0.05556", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(4|16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"1Ⅰ0000",0}, {"10000",12},{"100",4}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"5Ⅰ000",16},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"16",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"20.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"16.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.098",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"20", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function yg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43",gg.TYPE_FLOAT)
end
function yg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43",gg.TYPE_FLOAT)
end
function yg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43",gg.TYPE_FLOAT)
end
function yg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43",gg.TYPE_FLOAT)
end

function yg()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"2.0985",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"0.0855", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"Ⅰ20",0}, {"2000",64}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"Ⅰ0",136},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"30",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"110.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.90",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.09",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"66", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function yh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("336", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437",gg.TYPE_FLOAT)
end
function yh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("336", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437",gg.TYPE_FLOAT)
end
function yh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("336", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437",gg.TYPE_FLOAT)
end
function yh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("255;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("336", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("437",gg.TYPE_FLOAT)
end

function yh()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"6.0556",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"9.056", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"Ⅰ20",0}, {"2000",64}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"Ⅰ1",136},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"1.905568",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"11.303",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"9.05490",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"3.0198809",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"1.095", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function yi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function yi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function yi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end
function yi()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2525;1;6;5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3636", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("4377",gg.TYPE_FLOAT)
end

function yi()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"4.5009856",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"9.80984", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(4|16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"2139095Ⅰ039",0},{"24008",12},}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"0",36},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(string.rep((99), 450000))
gg.setRanges(4|16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"213909Ⅰ5039",0},{"24004",12},}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"0",36},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(string.rep((99), 450000))
gg.setRanges(4|16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"213909Ⅰ5039",0},{"24000",12},}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"0",36},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"3.0350",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"39.093",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"27.05190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.01609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"7.092", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end end end end end end end end end

function yj()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"2881",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"0", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"2Ⅰ57",0}, {"4",-4}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"0",32},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"150.086",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"7.043",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"26.03555190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"17.0561609",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"67", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function yk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1;6;54", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43737",gg.TYPE_FLOAT)
end
function yk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1;6;54", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43737",gg.TYPE_FLOAT)
end
function yk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1;6;54", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43737",gg.TYPE_FLOAT)
end
function yk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1;6;54", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("43737",gg.TYPE_FLOAT)
end
  
function yk()
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"210.0654",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
     local tb2 = {{"4.06575", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges(string.rep((99), 450000))
gg.setRanges(16|16384|8|32)
local dataType = 4|16|64
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"2Ⅰ57",0}, {"4",-4},}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb2 = {{"1",32},{"1",36}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 16
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
local tb1 = {{"5.0933654",0},{"7",-16},{"8",32}}
for f=1, 1  do
  if gg.isVisible(true) then 
  gg.setRanges(4)
local dataType = 16
local tb1 = {{"5.066843",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"56.0545190",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
    gg.setRanges(4)
local dataType = 16
local tb1 = {{"28.025569",0},{"7",-16},{"8",32}}
    local tb2 = {{"10", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
  
  return else
    local tb2 = {{"9.04565", 16},} 
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
end end end end end end end end end end end end end
function bv()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;5;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("63",gg.TYPE_FLOAT)
 os.exit()
end
function bc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;583;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bx()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("92;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bz()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("092;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bl()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;753;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bk()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;53;4;9;1;66;583", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bj()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bh()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;53;4;9;1;66;532", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("677",gg.TYPE_FLOAT)
end
function bf()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;53;4;9;1;676;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bd()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("28;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("78", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("67",gg.TYPE_FLOAT)
end
function bs()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("29;53;4;9;1;66;53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("798", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll("62",gg.TYPE_FLOAT)
end








cs = "BY：浪荡生"
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
