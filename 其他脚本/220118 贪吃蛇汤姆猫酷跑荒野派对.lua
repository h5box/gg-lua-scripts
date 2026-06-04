gg.alert("欢迎使用黎夏科技\n"..os.date("本次脚本开启时间为:\n%Y年%m月%d日%H时%M分%S秒").."")
function jiuyan(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."修改中,共修改1条数据")else gg.toast(qmnbn.."开启失败")end end end
local default="ALuaG"
function Main()
  menu = gg.choice({
    '贪吃蛇在线',
    '汤姆猫酷跑',
    '汤姆猫荒野派对',
    '主功能名称4',
    '主功能名称5',
    '退出脚本'},
  2018, "黎夏科技:www.kjdao.cc  \n黎夏科技yyds")
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then E() end
  if menu == 6 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    '修改长度',
    '修改人头数量',
    '三倍加速',
    '双倍加速',
    '4倍加速',
    '点了加速按钮加速会恢复',
    '所以别手贱点到',
    '点到也没事重新开就行',
    '待更新',
    '待更新',
    '返回上一页'},
 nil, os.date("黎夏提示现在是%Y/%m/%d日\n第第1部游戏开启，第2步开完第1步开启，第3部开完第2部变小之后开启\n黎夏  "))
   if menu1 == nil then else
  if menu1[1] == true then a1() end
  if menu1[2] == true then a2() end
  if menu1[3] == true then a3() end
  if menu1[4] == true then a4() end
  if menu1[5] == true then a5() end
  if menu1[6] == true then a6() end
  if menu1[7] == true then a7() end
  if menu1[8] == true then a8() end
  if menu1[9] == true then a9() end
  if menu1[10] == true then a10() end
  if menu1[11] == true then HOME() end
  end
GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    '飞天在火车上快速点暂停开等到开启成功后才可以取消暂停开启成功后一定要<退出脚本>全局有效',
    '副功能名称2',
    '副功能名称3',
    '副功能名称4',
    '副功能名称5',
    '副功能名称6',
    '副功能名称7',
    '副功能名称8',
    '副功能名称9',
    '副功能名称10',
    '返回上一页'},
 nil, os.date("黎夏提示现在是%Y/%m/%d日 \n黎夏  "))
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function C()
  menu1 = gg.multiChoice({
    '范围',
    '高跳(不推荐)',
    '飞天(开启成功后点一下跳跃键)',
    '踏空',
    '关闭飞天(要么在大厅关，在局内关的话下局才生效)',
    '飞天范围一键开启(超推荐)',
    '副功能名称7',
    '副功能名称8',
    '副功能名称9',
    '副功能名称10',
    '返回上一页'},
 nil, os.date("黎夏提示现在是%Y/%m/%d日 \n黎夏 \n黎夏提醒:最好只开<飞天>和<范围>\n高跳和飞天只能开一个哦！飞天可以恢复高跳恢复不了的哦"))
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[6] == true then c6() end
    if menu1[7] == true then c7() end
    if menu1[8] == true then c8() end
    if menu1[9] == true then c9() end
    if menu1[10] == true then c10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function D()
  menu1 = gg.multiChoice({
    '待更新',
    '副功能名称2',
    '副功能名称3',
    '副功能名称4',
    '副功能名称5',
    '副功能名称6',
    '副功能名称7',
    '副功能名称8',
    '副功能名称9',
    '副功能名称10',
    '返回上一页'},
 nil, os.date("黎夏提示现在是%Y/%m/%d日 \n黎夏  "))
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then d6() end
    if menu1[7] == true then d7() end
    if menu1[8] == true then d8() end
    if menu1[9] == true then d9() end
    if menu1[10] == true then d10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function E()
  menu1 = gg.multiChoice({
    '待更新',
    '副功能名称2',
    '副功能名称3',
    '副功能名称4',
    '副功能名称5',
    '副功能名称6',
    '副功能名称7',
    '副功能名称8',
    '副功能名称9',
    '副功能名称10',
    '返回上一页'},
 nil, os.date("黎夏提示现在是%Y/%m/%d日 \n黎夏  "))
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then e5() end
    if menu1[6] == true then e6() end
    if menu1[7] == true then e7() end
    if menu1[8] == true then e8() end
    if menu1[9] == true then e9() end
    if menu1[10] == true then e10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function a1()
jiuyan(
{
{['memory']=4},
{['name']='修改长度成功'},
{['value']=2039456997, ['type']=4},
{['lv']=7562361,['offset']=4, ['type']=4},
{['lv']=18,['offset']=32, ['type']=4},
{['lv']=2004,['offset']=56, ['type']=4},
},
{
{['value']=99999,['offset']=24,['type']=4},
}
)
end



function a2()
jiuyan(
{
{['memory']=4},
{['name']='修改人头数成功'},
{['value']=2039456997, ['type']=4},
{['lv']=7562361,['offset']=4, ['type']=4},
{['lv']=18,['offset']=32, ['type']=4},
{['lv']=2004,['offset']=56, ['type']=4},
},
{
{['value']=999999999,['offset']=28,['type']=4},
}
)
end



function a3()
 jiuyan(
{
{['memory']=4},
{['name']='修改三倍速度'},
{['value']=7562361, ['type']=4},
{['lv']=8,['offset']=4, ['type']=4},
{['lv']=18,['offset']=28, ['type']=4},
{['lv']=2004,['offset']=52, ['type']=4},
},
{
{['value']=18,['offset']=8,['type']=4,['freeze']=True},
}
)
end



function a4()
jiuyan(
{
{['memory']=4},
{['name']='修改双倍速度'},
{['value']=7562361, ['type']=4},
{['lv']=8,['offset']=4, ['type']=4},
{['lv']=18,['offset']=28, ['type']=4},
{['lv']=2004,['offset']=52, ['type']=4},
},
{
{['value']=14,['offset']=8,['type']=4,['freeze']=True},
}
)
end



function a5()
jiuyan(
{
{['memory']=4},
{['name']='修改四倍速度'},
{['value']=7562361, ['type']=4},
{['lv']=8,['offset']=4, ['type']=4},
{['lv']=18,['offset']=28, ['type']=4},
{['lv']=2004,['offset']=52, ['type']=4},
},
{
{['value']=24,['offset']=8,['type']=4,['freeze']=True},
}
)
end



function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.92000007629F;1.92000007629F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.92000007629F;1.92000007629F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end



function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.30000001192;-1.40129846e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.30000001192", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("6",gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
end



function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("15",gg.TYPE_FLOAT)
  gg.toast("高跳开启成功")
end



function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("9999999",gg.TYPE_FLOAT)
  gg.toast("飞天开启成功")
end



function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0   0.30000001192;0.20000000298;0.05000000075;0.5:: ", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0   0.30000001192", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("99",gg.TYPE_FLOAT)
  gg.toast("踏空开启成功")
end



function c5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9999999", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("9999999", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("5.12099981308",gg.TYPE_FLOAT)
  gg.toast("飞天关闭成功")
end





function c6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.30000001192;-1.40129846e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.30000001192", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("6",gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("5.12099981308", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("9999999",gg.TYPE_FLOAT)
  gg.toast("飞天开启成功")
end

function Exit()
print("欢迎下次光临")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '黎夏科技yyds'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end












