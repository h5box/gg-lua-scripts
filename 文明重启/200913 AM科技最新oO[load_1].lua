function POST(path,body)
local code=gg.makeRequest(path,nil,body).content
return code
end

function yyyz()
dmpath="http://w.eydata.net/04bcdb2021f72bb8"--"单码用户登陆"WebApi地址
sjpath="http://w.eydata.net/04cb880e860f0080"--"获取用户的到期时间"WebApi地址
ggpath="http://w.eydata.net/adfc6f2002a5023a"--"获取程序公告"WebApi地址
hbpath="http://w.eydata.net/8291606e488e4924"--"机器码换绑"WebApi地址
banben="10.0"--程序版本
code1=gg.makeRequest('http://www.baidu.com').content
if code1==nil then gg.alert("网络请求请点击确定！") os.exit() end
    lqSJ = math.random(1000000000,9999999999)
 lqc=io.open('/storage/emulated/0/.nomedia_1','r')
 if lqc == nil then
   lqc=io.open('/storage/emulated/0/Android/.system_int','w')
   lqc:write(lqSJ*6-967)
   lqc=io.open('/storage/emulated/0/.nomedia_1','w')
   lqc:write(lqSJ*6-967)
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 else
  abc=io.open('/storage/emulated/0/Android/.system_int','w')
  if abc == nil then
   lqdd = io.open('/storage/emulated/0/.nomedia_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   lqd = io.open('/storage/emulated/0/Android/.system_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
   lqdd = io.open('/storage/emulated/0/.nomedia_1','r')
   lqdmm = lqdd:read('*a')
   lqdd:close()
   yanzheng = lqdm == lqdmm
   if yanzheng == true then print("") else
   lqd = io.open('/storage/emulated/0/Android/.system_int','w')
   lqd:write(lqdmm)
   lqd:close()
   end
   lqd = io.open('/storage/emulated/0/Android/.system_int','r')
   lqdm = lqd:read('*a')
   lqd:close()
 end
MAC = (lqdm + 967)/6
 file=io.open("/storage/emulated/0/gj","r")
 if file==nil then
 file=io.open("/storage/emulated/0/gj","w")
 single=""
 else
single = file:read("*a")
file:close()
end




function shiyi(code)
    if code == "-1" then
		gg.alert("网络链接失败.")
	elseif code == "-2" then
		gg.alert("请填写程序密钥.")
	elseif code == "-3" then
		gg.alert("数据异常.")
	elseif code == "-4" then
		gg.alert("数据异常.")
	elseif code == "-5" then
		gg.alert("错误的参数,请检查参数是否正确.")
	elseif code == "-6" then
		gg.alert("还未登录")
	elseif code == "-7" then
		gg.alert("私人服务器,没有权限进行登录.")
	elseif code == "-8" then
		gg.alert("账户余额不足.")
	elseif code == "-9" then
		gg.alert("注册用户达到上限.")
	elseif code == "-10" then
		gg.alert("VIP插件,非VIP无法使用.")
	elseif code == "-11" then
		gg.alert("开启自动状态检测失败,还未登陆!")
	elseif code == "-12" then
		gg.alert("开启自动状态检测失败!")
	elseif code == "-13" then
		gg.alert("动态算法只支持独立服务器调用.")
	elseif code == "-14" then
		gg.alert("错误的调用.")
	elseif code == "-15" then
		gg.alert("频繁调用,请等待10分钟后再做尝试.")
	elseif code == "-16" then
		gg.alert("接口未开启.")
	elseif code == "-17" then
		gg.alert("错误的调用方式,请确认后台接口的调用方式.")
	elseif code == "-18" then
		gg.alert("服务器内部错误,请联系管理员解决.")
	elseif code == "-19" then
		gg.alert("接口调用失败,调用次数不足.")
	elseif code == "-20" then
		gg.alert("变量数据不存在.")
	elseif code == "-21" then
		gg.alert("机器码一样,无需转绑.")
	elseif code == "-23" then
		gg.alert("此接口开启了强制算法,但是没使用.")
	elseif code == "-101" then
		gg.alert("用户名填写错误,必须以字母开头6-16位字母或数字!")
	elseif code == "-102" then
		gg.alert("用户不存在.")
	elseif code == "-103" then
		gg.alert("请先登陆再调用此方法.")
	elseif code == "-104" then
		gg.alert("密码填写错误,请输入6-16位密码!")
	elseif code == "-105" then
		gg.alert("邮箱填写错误,请正确输入邮箱!")
	elseif code == "-106" then
		gg.alert("用户名重复.")
	elseif code == "-107" then
		gg.alert("邮箱重复.")
	elseif code == "-108" then
		gg.alert("新密码输入错误.")
	elseif code == "-109" then
		gg.alert("用户名或密码错误")
	elseif code == "-110" then
		gg.alert("用户使用时间已到期")
	elseif code == "-111" then
		gg.alert("用户未在绑定的设备上登陆.")
	elseif code == "-112" then
		gg.alert("用户在别的地方登陆.")
	elseif code == "-113" then
		gg.alert("过期时间有误.")
	elseif code == "-114" then
		gg.alert("登录数据不存在")
	elseif code == "-115" then
		gg.alert("用户已被禁用.")
	elseif code == "-116" then
		gg.alert("密码修改申请过于频繁.")
	elseif code == "-117" then
		gg.alert("未输入机器码.")
	elseif code == "-118" then
		gg.alert("重绑次数超过限制.")
	elseif code == "-119" then
		gg.alert("使用天数不足,重绑失败.")
	elseif code == "-120" then
		gg.alert("注册失败,注册次数超过限制.")
	elseif code == "-121" then
		gg.alert("用户机器码不能超过32位.")
	elseif code == "-122" then
		gg.alert("用户已经被删除")
	elseif code == "-123" then
		gg.alert("用户密码输入错误")
	elseif code == "-124" then
		gg.alert("用户登录数达到最大")
	elseif code == "-125" then
		gg.alert("错误的用户操作类别")
	elseif code == "-126" then
		gg.alert("过期时间变更记录创建失败")
	elseif code == "-127" then
		gg.alert("用户充值失败")
	elseif code == "-128" then
		gg.alert("用户数据超过最大限制")
	elseif code == "-129" then
		gg.alert("用户被开发者禁止使用,请咨询开发者是否被拉到黑名单")
	elseif code == "-131" then
		gg.alert("用户使用次数不足")
	elseif code == "-132" then
		gg.alert("用户使用点数不足")
	elseif code == "-201" then
		gg.alert("程序不存在")
	elseif code == "-202" then
		gg.alert("程序密钥输入错误")
	elseif code == "-203" then
		gg.alert("程序版本号错误")
	elseif code == "-204" then
		gg.alert("程序版本不存在")
	elseif code == "-205" then
		gg.alert("用户未申请使用程序")
	elseif code == "-206" then
		gg.alert("程序版本需要更新")
	elseif code == "-207" then
		gg.alert("程序版本已停用")
	elseif code == "-208" then
		gg.alert("程序未开启后台接口功能.(可在“程序”的“修改”界面开启后台接口功能)")
	elseif code == "-209" then
		gg.alert("程序接口密码错误")
	elseif code == "-210" then
		gg.alert("程序停止新用户注册")
	elseif code == "-211" then
		gg.alert("程序不允许用户机器码转绑")
	elseif code == "-301" then
		gg.alert("卡密输入错误")
	elseif code == "-302" then
		gg.alert("卡密不存在")
	elseif code == "-303" then
		gg.alert("卡密已经使用")
	elseif code == "-304" then
		gg.alert("卡密已经过期")
	elseif code == "-305" then
		gg.alert("卡密已经冻结")
	elseif code == "-306" then
		gg.alert("卡密已经退换")
	elseif code == "-308" then
		gg.alert("卡密已经换卡")
	elseif code == "-401" then
		gg.alert("单码卡密错误")
	elseif code == "-402" then
		gg.alert("单码卡密机器码错误")
	elseif code == "-403" then
		gg.alert("单码卡密IP错误")
	elseif code == "-404" then
		gg.alert("单码卡密类型错误")
	elseif code == "-405" then
		gg.alert("单码卡密被禁用")
	elseif code == "-406" then
		gg.alert("单码卡密不存在")
	elseif code == "-407" then
		gg.alert("单码卡密未激活")
	elseif code == "-408" then
		gg.alert("单码卡密已经使用")
	elseif code == "-409" then
		gg.alert("单码充值卡密错误")
    elseif code == "-410" then
		gg.alert("单码卡密过期")
	elseif code == "-420" then
		gg.alert("单码卡密在别的设备上登录")
	elseif code == "-421" then
		gg.alert("单码卡密超过最大登录数,如果确定已经下线,请等60分钟后重试")
	elseif code == "-422" then
		gg.alert("单码IP一样,无需转绑")
	elseif code == "-501" then
		gg.alert("单码管理信息错误")
	elseif code == "-502" then
		gg.alert("单码机器码转绑次数超过限制")
	elseif code == "-503" then
		gg.alert("单码机器码转绑后将过期")
	elseif code == "-504" then
		gg.alert("单码IP转绑次数超过限制")
	elseif code == "-505" then
		gg.alert("单码IP转绑后将过期")
	elseif code == "-506" then
		gg.alert("单码未开启机器码验证,无需转绑.")
	elseif code == "-507" then
		gg.alert("单码未开启IP地址验证,无需转绑")
	elseif code == "101" then
		gg.alert("充值成功!填写的推荐人不存在")
	elseif code == "102" then
		gg.alert("充值成功!填写推荐人获赠时间失败")
	elseif code == "103" then
		gg.alert("充值成功!添加推荐信息失败")
	elseif code == "104" then
		gg.alert("充值成功!推荐人获赠时间失败")
	elseif code == "105" then
		gg.alert("充值成功!充值的卡密类别不支持推荐人功能")
	elseif code == "106" then
		gg.alert("充值成功!充值的卡密类别推荐功能已关闭")
	elseif code == "107" then
		gg.alert("充值成功!成功使用推荐功能")
	elseif code == "108" then
		gg.alert("充值成功!但是填写的推荐人无效")
	end
end
function AA()
info=gg.prompt({'顾辞请输入你的卡密:'}, {[1]=single}, {'text'})
if info==nil then gg.alert("顾辞请输入卡密！") os.exit() end
if info[1]==nil then gg.alert("顾辞请输入卡密！") os.exit() end
code=POST(dmpath,"SingleCode=" .. info[1] .. "&Ver=" .. banben .. "&Mac=" .. MAC)
if string.len(code)==32 then
file=io.open("/storage/emulated/0/gj","w+")
file:write(info[1])
file:close()
abc=1
else
shiyi(code)
end
end
function BB()
local abc=gg.alert("请确定是否换绑？","是","否")
if abc==2 then os.exit() end
info=gg.prompt({'顾辞请输入你的卡密:'}, {[1]=single}, {'text'})
if info==nil then gg.alert("顾辞请输入卡密！") os.exit() end
if info[1]==nil then gg.alert("顾辞请输入卡密！") os.exit() end
code=POST(hbpath,"UserName=" .. info[1] .. "&Mac=")
if code=="1" then
gg.alert("注册成功")
else
shiyi(code)
end
end
function CC()
gonggao=POST(ggpath,"")
menu = gg.choice({
"顾辞专属进入脚本√",
"点我解绑卡密"
},nil,"顾辞专属科技您的使用"..gonggao)
if menu==1 then AA()end
if menu==2 then BB() end
if menu==nil then os.exit() end
end
CC()
if abc~=1 then os.exit() else
aa=os.time()
time=POST(sjpath,"UserName=" ..info[1])
time1=POST(sjpath,"UserName=" ..info[1])
aa2=os.time()
if aa2-aa>4 then gg.alert("请更换好的网络！") os.exit() end
if time~=time1 then print("破解狗？") os.exit() end
if string.len(time)~=19 then 
if time=="-15" then gg.alert("调用过于频繁，请等待十分钟查看剩余时间！") else print("破解狗？") os.exit() end else gg.alert("到期时间为:\n"..time) end
end
end
yyyz()


  function Main()
    SN = gg.multiChoice({
      'AN人物踏空',
      'AN关闭踏空',
      'AN人物天线',
      'AN关闭天线',
      'AN贴墙透视',
      'AN透视恢复',
      'AN枪械无后',
      'AN无声走路',
      'AN人物穿墙',
      'AN关闭穿墙',
      'AN地面除草',
      'AN人物遁地',
      'AN视角变大',
      'AN上帝视角',
      'AN视角前移',
      'AN超级高跳',
      'AN下蹲加速',
      'AN水下行走',
      'AN超定身术',
      'AN中距离透视',
      'AN恢复中透视',
      'AN远距离透视',
      'AN恢复远透视',
      'AN内存透视',
      'AN一手夜视',
      'AN地面白色',
      'AN退出脚本'
    }, nil, '开启无后座功能不要安装枪托，更换房屋透视距离时请恢复上一个您选择的透视距离，AN科技群680932214 顾辞牛逼 顾辞牛逼 作者q935074547 二改司马')
    if SN == nil then
    else
      if SN[1] == true then
        a()
      end
      if SN[2] == true then
        b()
      end
      if SN[3] == true then
        c()
      end
      if SN[4] == true then
        d()
      end
      if SN[5] == true then
        e()
      end
      if SN[6] == true then
        _UPVALUE2_()
      end
      if SN[7] == true then
        g()
      end
      if SN[8] == true then
        h()
      end
      if SN[9] == true then
        i()
      end
      if SN[10] == true then
        j()
      end
      if SN[11] == true then
        k()
      end
      if SN[12] == true then
        l()
      end
      if SN[13] == true then
        m()
      end
      if SN[14] == true then
        n()
      end
      if SN[15] == true then
        o()
      end
      if SN[16] == true then
        p()
      end
      if SN[17] == true then
        q()
      end
      if SN[18] == true then
        r()
      end
      if SN[19] == true then
        s()
      end
      if SN[20] == true then
        t()
      end
      if SN[21] == true then
        u()
      end
      if SN[22] == true then
        v()
      end
      if SN[23] == true then
        w()
      end
      if SN[24] == true then
        x()
      end
      if SN[25] == true then
        y()
      end
      if SN[26] == true then
        z()
      end
      if SN[27] == true then
        Exit()
      end
    end
    XGCK = -1
  end
  function a()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0.05000000075;2.9203751e-31;5.1414089e-39', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.05', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll('0', gg.TYPE_FLOAT)
    gg.toast('踏空已开启')
  end
  function b()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0;2.9203751e-31;5.1414089e-39', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('0.05', gg.TYPE_FLOAT)
    gg.toast('踏空已关闭')
  end
  function c()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('1.0;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll('3', gg.TYPE_FLOAT)
    gg.toast('天线已开启，Ts:持枪开镜方便观察')
  end
  function d()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('3;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll('1', gg.TYPE_FLOAT)
    gg.toast('天线已关闭')
  end
  function e()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-40;80;-360;360;56;131072E;8;0.2::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('10', gg.TYPE_FLOAT)
    gg.toast('贴墙透视已开启')
  end
  function g()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('0.60000002384;0.5;43.0;238.0;100;', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('0', gg.TYPE_FLOAT)
    gg.toast('SMG冲锋枪无后座已开启')
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('0.30000001192;0.20000000298;25.0;65.0;238.0;625.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.3;0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('0', gg.TYPE_FLOAT)
    gg.toast('FAMAS改装枪无后已开启')
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('110.0;200.0;0.60000002384;1.0;0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.0;0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll('0', gg.TYPE_FLOAT)
    gg.toast('AK无后已开启')
  end
  function h()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('2;0.20000000298;1.20000004768;1.5;1.0;0.10000000149', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('4', gg.TYPE_FLOAT)
    for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(4))) do
      gg.getResults(4)[_FORV_4_].value = '4'
      gg.getResults(4)[_FORV_4_].freeze = true
    end
    gg.addListItems((gg.getResults(4)))
    gg.toast('无声走路已开启')
  end
  function i()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('-1.0e32;999.0;0.39999997616;1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
          value = 8
        }
      })
    end
    gg.toast('穿墙已开启')
    gg.clearResults()
  end
  function j()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('-1.0e32;999.0;0.39999997616;8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItemsX({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 1.0E32
        }
      })
    end
    gg.toast('穿墙已关闭')
    gg.clearResults()
  end
  function k()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('0.99934095144F; -0.18955649436F;1000D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1000', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll('0', gg.TYPE_DWORD)
    gg.toast('地面除草已开启')
    gg.clearResults()
  end
  function l()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W;1W;1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItemsX({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 1.1
        }
      })
    end
    gg.toast('人物遁地已开启')
  end
  function m()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber('1.7;-40;80;-360;360;56;131072E;8::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('6', gg.TYPE_FLOAT)
    gg.toast('视角变大已开启')
    gg.alert('为您自动退出，可自定义数值')
    Exit()
  end
  function n()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber('1.5;-40;80;-360;360;56;131072E;8;::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('40', gg.TYPE_FLOAT)
    gg.toast('上帝视角已开启')
    gg.alert('为您自动退出，可自定义数值')
    Exit()
  end
  function o()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber('1.7;-40;80;-360;360;56;131072E;8::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('-40', gg.TYPE_FLOAT)
    gg.toast('视角前移已开启')
    gg.alert('为您自动退出，可自定义数值')
    Exit()
  end
  function p()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1.03~1.042', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItemsX({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = -1
        }
      })
    end
    gg.toast('超级高跳已开启')
    gg.alert('为您自动退出，可自定义数值')
    Exit()
  end
  function q()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('5.0F;3.40000009537F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('5.0F;3.40000009537F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('7.5', gg.TYPE_FLOAT)
    gg.toast('下蹲加速已开启')
    gg.clearResults()
  end
  function r()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('150', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('-999', gg.TYPE_FLOAT)
    gg.toast('水下行走已开启')
    gg.clearResults()
  end
  function s()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('18D;272D;0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('999', gg.TYPE_FLOAT)
    gg.toast('超定身求已开启')
    gg.clearResults()
  end
  function t()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-40;80;-360;360;56;131072E;8;0.2::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('30', gg.TYPE_FLOAT)
    gg.toast('中距离透视已开启')
  end
  function u()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-40;80;-360;360;56;131072E;8;30::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('0.2', gg.TYPE_FLOAT)
    gg.toast('中距离透视已关闭')
  end
  function v()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-40;80;-360;360;56;131072E;8;0.2::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('80', gg.TYPE_FLOAT)
    gg.toast('远距离透视已开启')
  end
  function w()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('-40;80;-360;360;56;131072E;8;80::90', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('80', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('0.2', gg.TYPE_FLOAT)
    gg.toast('远距离透视已关闭')
  end
  function x()
    gg.alert('不要隐藏234，不然无效果')
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0.81399995089', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.81399995089', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('5.123456789', gg.TYPE_FLOAT)
    gg.toast('XA内存透视已开启')
    gg.clearResults()
  end
  function y()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber('-6,931W;16,656W;16,256W;-13,168W;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('9', gg.TYPE_FLOAT)
    gg.toast('没成功多开几次')
    gg.clearResults()
  end
  function z()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('-3.2530739e-19;3.50000190735;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('99', gg.TYPE_FLOAT)
    gg.toast('地面上色已开启')
    gg.clearResults()
  end
  function Exit()
    print('抵制圈钱狗')
    os.exit()
  end
  cs = "AN牛逼二改死妈"

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

