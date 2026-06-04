

--[北辰科技]--
function DZSH()
menu = gg.multiChoice({
"1. 北辰强力自瞄 ",
"2. 北辰透视(加强) ",
"3. 北辰穿山加自瞄 ",
"4. 北辰穿山加自瞄关闭 ",
"5. 北辰秒杀5倍 ",
"6. 北辰秒杀8倍 ",
"7. 北辰秒杀12倍 ",
"8. 北辰秒杀20倍 ",
"9. 北辰全枪无后 ",
"10. 北辰匕首远程 ",
"11. 北辰子弹穿墙 ",
"12. 北辰穿墙关闭 ",
"13. 北辰生化手雷 ",
"14. 北辰远程开启 ",
"15. 北辰远程关闭 ",
"16. 北辰手雷范围 ",
"17. 北辰高跳开启 ",
"18. 北辰高跳关闭 ",
"19. 北辰踏空开启 ",
"20. 北辰踏空关闭 ",
"21. 北辰自定义倍攻 ",
"22. 北辰自定义自瞄 ",
"23. 北辰手雷速度(丢两颗手雷以后开启) ",
"24. 北辰子弹加速 ",
"25. 北辰全枪聚点 ",
"26. 北辰折凳重击远程 ",
"27. 北辰蹲下抬高 ",
"28. 北辰蹲下抬高恢复 ",
"29. 北辰散弹聚点(多开几次) ",
"30. 北辰刀攻击范围变大 ",
"31. 北辰刀重击加速(有的不管用) ",
"32. 北辰尼泊尔远程 ",
"33. 北辰生化英雄大刀远程 ",
"34. 北辰超级屏息 ",
"35. 北辰手雷反弹 ",
"36. 北辰生化死神远程 ",
"成为凡人！"},nil,"作者快猫北辰"..sj)
     if menu == nil then
  else  
     if menu[1] == true then
      HZ1()
     end
     if menu[2] == true then
      HZ2()
      end
     if menu[3] == true then
      HZ3()
      end
     if menu[4] == true then
      HZ4()
      end
     if menu[5] == true then
      HZ5()
      end
     if menu[6] == true then
      HZ6()
      end
     if menu[7] == true then
      HZ7()
      end
      if menu[8] == true then
      HZ8()
      end
      if menu[9] == true then
      HZ9()
      end
      if menu[10] == true then
      HZ10()
      end
      if menu[11] == true then
      HZ11()
      end
      if menu[12] == true then
      HZ12()
      end
      if menu[13] == true then
      HZ13()
      end
      if menu[14] == true then
      HZ14()
      end
      if menu[15] == true then
      HZ15()
      end
      if menu[16] == true then
      HZ16()
      end
      if menu[17] == true then
      HZ17()
      end
      if menu[18] == true then
      HZ18()
      end
      if menu[19] == true then
      HZ19()
      end
      if menu[20] == true then
      HZ20()
      end
      if menu[21] == true then
      HZ21()
      end
      if menu[22] == true then
      HZ22()
      end
      if menu[23] == true then
      HZ23()
      end
      if menu[24] == true then
      HZ24()
      end
      if menu[25] == true then
      HZ25()
      end
      if menu[26] == true then
      HZ26()
      end
      if menu[27] == true then
      HZ27()
      end
      if menu[28] == true then
      HZ28()
      end
      if menu[29] == true then
      HZ29()
      end
      if menu[30] == true then
      HZ30()
      end
      if menu[31] == true then
      HZ31()
      end
      if menu[32] == true then
      HZ32()
      end
      if menu[33] == true then
      HZ32()
      end
      if menu[34] == true then
      HZ32()
      end
      if menu[35] == true then
      HZ32()
      end
      if menu[36] == true then
      HZ32()
      end
     if menu[37] == true then
      Exit()
      end
  end
    PD1 = 1
    PD2 = 2
end
function HZ1()
  gg.clearResults()
  gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setVisible(false)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.clearResults()
end

function HZ2()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("528422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("528422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(131072)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.50,0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HZ3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4095", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HZ4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4095", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4096", gg.TYPE_DWORD)
	 gg.toast("恢复成功")
	 gg.clearResults()
end


function HZ5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HZ6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HZ7()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HZ8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HZ9()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,400.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,400.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HZ10()
gg.clearResults()
  gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setVisible(false)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
end


function HZ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("666999", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.toast("新游戏开始前请恢复，不然卡视角。")
end
end


function HZ12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("恢复失败")
else
gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("恢复成功")
end
end


function HZ13()
gg.clearResults()
gg.searchNumber(" 5;2;8;4;22 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end

function HZ14()
gg.clearResults()
gg.searchNumber("0.69999998808;1.8;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end


function HZ15()
gg.clearResults()
gg.searchNumber("0.69999998808;999;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.toast("关闭成功")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end


function HZ16()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("8F;22F;10F;4F;5F;0.1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("范围手雷失败")
else
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("范围手雷成功")
end
end


function HZ17()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("11.942013", gg.TYPE_FLOAT)
gg.toast("开启成功")
end
end


function HZ18()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11.942013", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("恢复失败")
else
gg.searchNumber("11.942013", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("恢复成功")
end
end


function HZ19()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.70000004768F;1.20000004768F;0.10000000149F;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10.5678", gg.TYPE_FLOAT)
gg.toast("开启成功")
   end
end


function HZ20()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03999999911", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end


function HZ21()
menu1 = gg.choice({
	 "开启自定义倍攻",
	 "自定义倍攻倍数",
	 "返回",
}, nil, "最高20，过了20无效")
if menu1 == 1 then H1() end
if menu1 == 2 then H2() end
if menu1 == 3 then HOME() end
  end
  PD1 = 1

function H1()
local m = gg.prompt({"想要打多少发子弹，就输入多少发子弹，最高20"
 }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("倍攻开启失败")
else
gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll(m, gg.TYPE_DWORD)
gg.toast("倍攻开启")
   end
 end
 
 function H2()
 local z = gg.prompt({"上次修改的数值"}, {[1] = 5}, {[1] = "number"})[1]
 local m = gg.prompt({"自行修改"}, {[1] = 5}, {[1] = "number"})[1]
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(z, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress('?????E14')
if gg.getResultCount() == 0 then
gg.toast("自定义倍攻开启失败")
else
gg.searchNumber(z, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll(m, gg.TYPE_DWORD)
gg.toast("自定义倍攻ok")
   end
end


function HZ22()
local m = gg.prompt({
    "修改的越高越不好控制" }, {[1] = 50}, {[1] = "number"})[1]
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("自喵失败")
else
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(m, gg.TYPE_FLOAT)
gg.toast("自喵ok")
   end
end
 
 
function HZ23()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("64D;60F;33D;200D;100F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HZ24()
  gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;60F;41D;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function HZ25()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("聚点多试几次")
end



function HZ26()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.8",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.8",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function HZ27()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.2;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.7", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function HZ28()
gg.clearResults()
gg.clearResults()
gg.searchNumber("1.7;1.2;0.1;0.04; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.setVisible(false)
gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function HZ29()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("多试几次")
end



function HZ30()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-4095", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function HZ31()
gg.clearResults()
gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function HZ32()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function HZ33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function HZ33()
gg.clearResults()
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function HZ34()
gg.clearResults()
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setVisible(false)
gg.searchNumber("开启成功", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function HZ35()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8;22;10;4;5;0.1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("22",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.setVisible(false)
end



function HZ36()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.20000004768F;3F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function Exit()
gg.toast("我没有开挂哟，我只是神仙而已！💘💘💘")
print("枪战英雄优化")
print(sj)
os.exit() 
end



while true do
sj = os.date("\n%c")
  if gg.isVisible(true) then
    PD1 = nil
    gg.setVisible(false)
  end
  if PD1 == nil then
    DZSH()
  end
end
