--2018©2019 北玄 201902409 群709606679
function Bxin()
  BxA=gg.prompt(
  {'验证写入工具 北玄201902409 群709606679'},
  {[1]='/sdcard/tencent/QQfile_recv/'},
  {[1]='file'})
  BxX = BxA[1]
  BxAa =loadfile(BxX)
  if BxAa == nil then BxAb = gg.alert("您选择的脚本并没有数据","返回","退出") 
    if BxAb == 1 then Bxin() 
    else print("感谢使用 北玄 201902409")os.exit()
    end
  else
    BxAc = io.open(BxX,"r")
    assert(BxAc)
    BxAd = BxAc:read("*a")
    Bxdm = BxAd
    BxB = gg.choice({
      "北玄原创 普通密码验证",
      "北玄原创 时间密码验证",
      "北玄原创 本地文件验证",
      "北玄原创 内部 QQ 验证",
      "北玄原创 时间限制验证",
      "北玄原创 使用次数验证",
      "北玄原创 伪卡密网络验证",
      "北玄原创 账号登录验证",
      "重新选择一次脚本(返回)",
      "北玄原创 注2018©2019"
    },201902409,"验证写入工具 北玄出品 201902409")
    if BxB == 1 then BxC() end
    if BxB == 2 then BxD() end
    if BxB == 3 then BxE() end
    if BxB == 4 then BxF() end
    if BxB == 5 then BxG() end
    if BxB == 6 then BxH() end
    if BxB == 7 then BxI() end
    if BxB == 8 then BxJ() end
    if BxB == 9 then Bxin() end
    if BxB == 10 then gg.alert("北玄出品: \n2018~2019\nQ:201902409\n群709606679") end
    if BxB ~= 1 and BxB ~= 2 and BxB ~= 3 and BxB ~= 4 and BxB ~= 5 and BxB ~= 6 and BxB ~= 7 and BxB ~= 8 and BxB ~= 9 and BxB ~= 10 then Bxin() end
  end
end

function BxC()
  BxCa = gg.prompt({"正在植入普通密码验证 请输入验证密码:"},{[1] = "0"},{[1] = number})
  BxCc = "'"..BxCa[1].."'"
  BxCb = "function Bxyz() \n gg.alert('密码正确') \n end\n function Noyz()\n gg.alert('密码错误')\n os.exit()\n end\n Bxjm = gg.prompt({'请输入密码'}, {[1] = 0}, {[1] = 'number'})\nif Bxjm[1] =='' then print('没输入密码哦') os.exit() end\n if Bxjm[1]=="..BxCc.." then Bxyz() else Noyz() end\n"..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  BxCd:close()
  gg.alert("普通密码验证已经植入 您的脚本密码是:"..BxCc.."")
  os.exit()
end

function BxD()
  day=os.date("*t").day
  --d为日
  hour=os.date("*t").hour
  --h为时
  min=os.date("*t").min
  --min为分
  BxCa = gg.prompt({"正在植入时间密码验证 请输入验证算法:","天 day","时 hour","分 min"},{[1] = "例子: day*45-3  (根据下方英文)",[2]=false ,[3] = false ,[4] = true},{[1] = "text",[2]="checkbox",[3]="checkbox",[4]="checkbox"})
  BxCc = BxCa[1]
  Bxsuan = tostring(BxCc)

  BxCb = "day=os.date('*t').day \n --d为日 \n hour=os.date('*t').hour \n --h为时 \n min=os.date('*t').min \n --min为分 \n Bxsuan = tostring("..BxCc..") \n function Bxyz()\n gg.alert('密码正确')\n end \n function Noyz() \n gg.alert('密码错误') \n os.exit() \n end \n Bxjm = gg.prompt({'请输入密码'}, {[1] = 0}, {[1] = 'number'}) \n if Bxjm[1] =='' then print('没输入密码哦') os.exit() end\n if Bxjm[1]==Bxsuan then Bxyz() else Noyz() end\n"..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  gg.alert("时间密码验证已经植入 您的脚本密码算法是:"..BxCc.."")
  BxCd:close()
  os.exit()
end

function BxE()
  BxCa = gg.prompt({"输入验证文件名字:(例:北玄内部验证)","如果没有文件提示:(例:您不是内部人员，请联系北玄","如果有文件提示:(例:欢迎使用)"},{[1] = "0"},{[2] = "text",[3] = "text",[1] = "text"})
  BxCv = "'"..BxCa[2].."'"
  BxCn = "'"..BxCa[3].."'"
  BxCb = "BxCa =io.open('/sdcard/tencent/QQfile_recv/"..BxCa[1].."','r') \n if BxCa == nil then gg.alert("..BxCv..") os.exit() else gg.alert("..BxCn..") end \n "..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  gg.alert("文件验证已经植入 运行就在腾讯目录创建一个文件名字为:"..BxCa[1])
  BxCd:close()
  os.exit()
end

function BxF()
  BxCa = gg.prompt({"请输入QQ号(让谁用就输入他的QQ号):","验证成功提示:","验证失败提示"},{[1] = "例(按格式写！每个Q号之间加英文版的,:'201902409','123456','456789'",[2] = "",[3] = ""},{[1] = "text",[2] = "text",[3] = "text"})
  BxCv = "'"..BxCa[2].."'"
  BxCn = "'"..BxCa[3].."'"
  BxCb ="qqaccounts = {"..BxCa[1].."} \n passflag=false \n for i, v in ipairs(qqaccounts) \n do file = io.open( '/storage/emulated/0/tencent/MobileQQ/artfilter/' .. v .. 'artfilter.config', 'rb') \n  if file then \n    passflag=true \n    file:close() \n    break \n  end  \n end  \n if passflag then \n  gg.alert("..BxCv..") \n else  \n  gg.alert("..BxCn..") \n   os.exit() \n end\n\n"..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  gg.alert("QQ验证已经植入")
  BxCd:close()
  os.exit()
end
function BxG()
  BxCa = gg.prompt({"到期年份:","到期月份:","到期天数:","到期时数:","时间到期提示:"},{[1] ="2019",[2] = "5",[3] = "20",[4] = "24"},{[1] = "number",[2] = "number",[3] = "number",[4] ="number",[5] ="text"})
  BxCv = BxCa[1]
  BxCn = BxCa[2]
  BxCm = BxCa[3]
  BxCi = BxCa[4]
  BxCo = "'"..BxCa[5].."'"
  BxCb = "endtime=load('return os.time{year="..BxCv..", month="..BxCn..", day="..BxCm..", hour="..BxCi.."}')() \n if(os.time()>endtime) then \n gg.alert("..BxCo..") \n os.exit() \n end \n "..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  gg.alert("时间验证已经植入 您设置简单到期时间为:"..BxCv.."."..BxCn.."."..BxCm.."."..BxCi)
  BxCd:close()
  os.exit()
end

function BxH()
  BxCa = gg.prompt({"您的名字:","您的群号:","体验次数"},{[1] = '例:北玄',[2]='例:201902409',[3] ='例:3'},{[1] = "text",[2] = "text",[3] = "number"})
  BxCy = BxCa[3]
  BxCm = BxCa[2]
  BxCi = BxCa[1] 
  BxCb="yz = gg.alert('提示🔊：您可以体验此脚本"..BxCy.."次，体验次数用完无法再次使用！','➽开始体验','➽加入内部',' ➽退出脚本') \n if yz == 2 then gg.alert('提示🔊："..BxCm.." 免费更新！','➽知道了') os.exit() end \n if yz == 3 then gg.alert('退出成功 "..BxCm.."免费脚本群','➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥"..BxCi.."就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end \n file=io.open('/storage/emulated/0/tencent/QQfile_recv/.thumbnails/北玄验证文件','a+') \n file:write('1') \n cs = file:seek('end')  \n ss =".. BxCy.." \n if cs < ss then  \n   gg.alert('提示：您当前使用次数为'..cs..'次！剩余可用次数为'..ss-cs..'次！') \n else  \n   gg.alert('提示：您当前可用次数已用完！获取最新脚本请加群！') \n   os.exit() \n end  \n tg = gg.alert('北提示：验证通过！欢迎使用！','➽开始奔放','➽体验次数',' ➽退出脚本') \n if tg == 1 then gg.alert('试用开始') end \n if tg == 2 then   gg.alert(BxCv,'➽知道了') end \n if tg == 3 then   gg.alert(BxCn,'➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥"..BxCi.."就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end \n "..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  BxCd:close()
  gg.alert("试用验证已经植入 您设置脚本体验"..BxCy.."次")
end

function BxI()
  BxCa = gg.prompt({"请随机输入一个算法(例:546431不要超过6位)"},{[1] = "201902"},{[1] = "number"})
  BxCb = "function Bx() \n BxSJ = math.random(2019025,9999999) \n Bxc=io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') \n if Bxc == nil then \n Bxc=io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','w') \n Bxc:write(BxSJ) \n Bxd = io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') \n     Bxdm = Bxd:read('*a') \n     Bxd:close() \n     \n   else \n     Bxd = io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') \n     Bxdm = Bxd:read('*a') \n     Bxd:close() \n   end \n   Bxs = io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','r') \n   if Bxs == nil then \n     Bxsa=gg.alert('请选择激活卡密,如果否定请退出','激活卡密','退出') \n     if Bxsa ~= 1 then print('激活失败') os.exit()  \n     else \n       Bxv = gg.prompt({'请输入您的激活码:','您的专属机器码:'},{[1]='',[2]= Bxdm },{[1] = 'text',[2] = 'text'}) \n       if Bxv == nil then print('运行失败') os.exit() end \n       if Bxv[1] == nil then print('卡密不能为空') os.exit() end      local BxB = Bxv[1] \n       local BxC = Bxv[2] \n       BxD = (BxB - "..BxCa[1]..")/BxC \n       BxA = BxD \n       if BxA == 1 then gg.alert('激活码情况:恭喜激活天卡 谢谢使用','确定') \n       else \n         if BxA == 7 then gg.alert('激活码情况:恭喜激活周卡 谢谢使用','确定') \n         else \n           if BxA == 30 then gg.alert('激活码情况:恭喜激活月卡 谢谢使用','确定') \n           else \n             gg.alert('激活码错误 建议作者购买激活码') os.exit()  \n           end \n         end \n       end \n     end \n     Yz = os.date('%Y%m%d') + BxA..'' \n     Yza = Yz \n     Yzs = os.date('%H%M%S')  \n     Yzb =io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','w') \n     Yzb:write(Yza) \n     Yzb:close() \n     Yzc =io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll','w') \n      \n     Yzc:write(Yzs) \n     Yzc:close() \n   else \n     gg.alert('您激活卡密') \n     Yzd=io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','r') \n     Yzda=Yzd:read('*a') \n     Yze=io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll','r') \n     Yzea=Yze:read('*a') \n     Yzf = os.date('%Y%m%d')..'' \n     Yzg = os.date('%H%M%S') \n     if Yzda > Yzf then gg.alert('登录成功 当前余额:'..Yzda - Yzf..'Day') \n     else \n       if Yzea > Yzg then gg.alert('您好,您的余额不足，请尽快缴费，缴费请联系作者') \n       else \n         gg.alert('不好意思,您的余额已欠费,请缴费后使用') \n          \n         os.exit() \n       end \n     end \n   end \n end  Bx()\n "..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  BxCd:close()
  BxCg = 'Bx = gg.alert("确定要更新机器码吗？一切都会重置","确定重新","取消重置") \n if Bx == 1 then \n os.remove("/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll") \n os.remove("/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll") \n os.remove("/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini") \n gg.alert("重置完成") \n os.exit() \n else \n print("取消重置") \n os.exit() \n end'
  BxCd = io.open(BxX.." 机器码重置器","w")
  assert(BxCd)
  BxCd:write(BxCg)
  BxCd:close()
  BxCf = "Bx = gg.prompt({     '时间周期[1♥7♥30]','输入机器码'   }, {      [1]='30',   [2]=''      }, {'text','tex'})       if Bx == nil then    gg.alert('再见.结束成功! ') os.exit()     end           Bxz=Bx[1]*Bx[2]+"..BxCa[1].."      print(Bxz)"
  BxCd = io.open(BxX.."发卡机","w")
  assert(BxCd)
  BxCd:write(BxCf)
  BxCd:close()
  gg.alert("伪卡密网络验证已经植入 您的算法是:"..BxCa[1].."\n您的发卡工具和机器码重置器已经打包放在腾讯目录")
  os.exit()

end

function BxJ()
  BxCa = gg.prompt({"请设置脚本账号:","请设置脚本密码:"},{[1] = "0"},{[1] = "text",[2] = "text"})
  BxCv = "'"..BxCa[1].."'"
  BxCn = "'"..BxCa[2].."'"
  BxCb = "asd = gg.alert('账号验证开启','开始登陆','退出脚本')  \n if asd == 1 then  \n   aaa='请输入账号'  \n   bbb=''  \n   b = gg.prompt({  \n     '      请输入账号：',  \n     '     请输入密码：',  \n     '专属登陆系统 '}, {[1] = aaa,[2] = bbb,[3] = true}, {[1] = 'text',[2] = 'text',[3] = 'checkbox'})  \n   if b[1] == "..BxCv.." then  \n     if b[2] =="..BxCn.." then  \n       gg.alert('登陆成功 感谢使用','➽OjbK')  \n     else  \n       print('账号密码错误') os.exit()  \n     end  \n   else  \n     print('账号密码错误') os.exit()  \n   end  \n end  \n if asd == 2 then gg.alert('退出选择','➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥我就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end \n "..Bxdm
  BxCd = io.open(BxX.."Bx","w")
  assert(BxCd)
  BxCd:write(BxCb)
  BxCd:close()
  gg.alert("账号验证已经植入\n您的设置账号是:"..BxCv.."\n您的设置密码是:"..BxCn)
  os.exit()
end

Bxin()