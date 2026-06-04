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

