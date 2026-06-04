function Main1()
SN = gg.choice({
	 "",
}, nil, "")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "被动减CD区",
	 "主动减CD区",
	 "蓄技减CD区",
	 "被动加攻速区",
	 "退出脚本",
}, nil, "月神原创出品，s20赛季狗无敌修复版本")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
FX1=0
end

function HS2()
SN1 = gg.choice({
	 "貂蝉被动减CD",
	 "干将被动减CD",
	 "夫子被动减CD",
	 "光信被动减CD",
	 "玉环被动减CD",
	 "曹操被动减CD",
	 "曹操被动加攻速",
	 "返回上一页",
}, nil, "月神原创出品，s20赛季狗无敌修复版本")
if SN1==1 then
	 dcbd()
end
if SN1==2 then
	 gjbd()
end
if SN1==3 then
	 fzbd()
end
if SN1==4 then
	 gxbd()
end
if SN1==5 then
	 yhbd()
end
if SN1==6 then
	 ccbd()
end
if SN1==7 then
	 ccgs()
end
if SN1==8 then
	 HOME()
end
FX1=0
end
function dcbd()
XGZ = gg.prompt({
    "默认4150减0.15秒"
  }, {
    [1] = 4150
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("329,868,451;500;16:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+44,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("貂蝉自定义减CD开启成功")
end
end


function gjbd()
XGZ = gg.prompt({
    "默认1150减0.15秒"
  }, {
    [1] = 1150
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("428,822,135;2,058,537,299;1,516,193,773:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,516,193,773", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+52,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("干将自定义减CD开启成功")
end
end


function fzbd()
XGZ = gg.prompt({
    "默认1050减0.05秒"
  }, {
    [1] = 1050
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-822,154,280;-1,945,495,424:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("-1,945,495,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+48,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("老夫子自定义减CD开启成功")
end
end


function gxbd()
XGZ = gg.prompt({
    "默认1050减0.05秒"
  }, {
    [1] = 1050
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-1,312,776,901;1,033,978,754:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,033,978,754", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+48,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("光信自定义减CD开启成功")
end
end

function yhbd()
XGZ = gg.prompt({
    "默认1050减0.05秒"
  }, {
    [1] = 1060
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,507,553,501;505,756,633:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("505,756,633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+48,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("杨玉环自定义减CD开启成功")
end
end


function ccbd()
XGZ = gg.prompt({
    "默认1100减0.1秒"
  }, {
    [1] = 1100
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-724,267,602;1,161,653,026:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,161,653,026", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+48,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("曹操自定义减CD开启成功")
end
end


function HS3()
SN2 = gg.choice({
	 "貂蝉一二技能减CD",
	 "曜全技能减cd",
	 "王昭君全技能减cd",
	 "瑶大招减cd",
	 "返回上一页",
}, nil, "月神原创出品，s20赛季狗无敌修复版本")
if SN2==1 then
	 dczd()
end
if SN2==2 then
	 yzd()
end
if SN2==3 then
	 zjzd()
end
if SN2==4 then
	 ayzd()
end
if SN2==5 then
	 HOME()
end
FX1=0
end

function dczd()
XGZ = gg.prompt({
    "一技能默认4900减0.1秒"
  }, {
    [1] = 4900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-862,860,119;781,309,477:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("781,309,477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "二技能默认9900减0.1秒"
  }, {
    [1] = 9900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-2,080,752,598;2,807,954,657:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("2,807,954,657", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("貂蝉自定义减CD开启成功")
end
end


function yzd()
XGZ = gg.prompt({
    "一技能默认5850减0.15秒"
  }, {
    [1] = 5850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-1,720,667,233;-107,069,659:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("-107,069,659", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "二技能默认6850减0.15秒"
  }, {
    [1] = 6850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,654,237,206;1,632,757,587:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,632,757,587", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "大招默认14850减0.15秒"
  }, {
    [1] = 14850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,167,804,219;1,908,973,894:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,908,973,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("曜自定义减CD开启成功")
end
end


function zjzd()
XGZ = gg.prompt({
    "一技能默认4900减0.1秒"
  }, {
    [1] = 4900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("428,761,433;1,057,450,739:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,057,450,739", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "二技能默认7900减0.1秒"
  }, {
    [1] = 7900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-1,018,855,262;-1,208,607,003:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("-1,208,607,003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "大招默认34900减0.1秒"
  }, {
    [1] = 34900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-862,496,389;-830,676,078:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("-830,676,078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("王昭君自定义减CD开启成功")
end
end


function ayzd()
XGZ = gg.prompt({
    "大招默认14700减0.3秒(快猫看见有人说能0.3)"
  }, {
    [1] = 14700
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("530,045,370;407,299,981:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("407,299,981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address-12,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("瑶自定义减CD开启成功")
end
end


function HS4()
SN3 = gg.choice({
	 "诸葛二技能减cd",
	 "张良二技能减cd",
	 "扁鹊一技能减cd",
	 "周瑜二技能减cd",
	 "莱狄二技能减cd",
	 "狼狗全技能减cd",
	 "守约二技能减cd",
	 "返回上一页",
}, nil, "月神原创出品，s20赛季狗无敌修复版本")
if SN3==1 then
	 zgxl()
end
if SN3==2 then
	 zlxl()
end
if SN3==3 then
	 bqxl()
end
if SN3==4 then
	 zyxl()
end
if SN3==5 then
	 ldxl()
end
if SN3==6 then
	 lgxl()
end
if SN3==7 then
	 syxl()
end
if SN3==8 then
	 HOME()
end
FX1=0
end
function zgxl()
XGZ = gg.prompt({
    "默认9850减0.15秒"
  }, {
    [1] = 9850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+200,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("诸葛亮自定义减CD开启成功")
end
end


function zlxl()
XGZ = gg.prompt({
    "默认11850减0.15秒"
  }, {
    [1] = 11850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+536,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("张良自定义减CD开启成功")
end
end


function bqxl()
XGZ = gg.prompt({
    "默认14850减0.15秒"
  }, {
    [1] = 14850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+424,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("扁鹊自定义减CD开启成功")
end
end

function zyxl()
XGZ = gg.prompt({
    "默认8350减0.15秒"
  }, {
    [1] = 8350
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+312,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("周瑜自定义减CD开启成功")
end
end


function ldxl()
XGZ = gg.prompt({
    "默认16850减0.15秒"
  }, {
    [1] = 16850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+872,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("米莱狄自定义减CD开启成功")
end
end


function lgxl()
XGZ = gg.prompt({
    "一技能默认15900减0.1秒"
  }, {
    [1] = 15900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+144,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "二技能默认4900减0.1秒"
  }, {
    [1] = 4900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+88,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
end
XGZ = gg.prompt({
    "大招默认11900减0.1秒"
  }, {
    [1] = 11900
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+32,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("成吉思汗自定义减CD开启成功")
end
end

function syxl()
XGZ = gg.prompt({
    "默认24850减0.15秒"
  }, {
    [1] = 24850
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("-849,212,900;1,163,336,964:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,163,336,964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+368,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("百里守约自定义减CD开启成功")
end
end


function HS5()
SN4 = gg.choice({
	 "曹操被动加攻速",
	 "后羿被动加攻速",
	 "返回上一页",
}, nil, "月神原创出品，s20赛季狗无敌修复版本")
if SN4==1 then
	 ccgs()
end
if SN4==2 then
	 hygs()
end
if SN4==3 then
	 HOME()
end
FX1=0
end

function ccgs()
XGZ = gg.prompt({
    "默认1100加1％"
  }, {
    [1] = 1100
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,286,724,513;-1,353,267,135:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("-1,353,267,135", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+44,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("曹操自定义加攻速开启成功")
end
end


function hygs()
XGZ = gg.prompt({
    "默认700加1％"
  }, {
    [1] = 700
  }, {
    [1] = "number"
  })
ZDYXGZ = "\"" .. XGZ[1] .. "\""
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,718,458,464;1,474,135,421:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("数据未搜索到，请重新搜索")
else
gg.searchNumber("1,474,135,421", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
end  
for i=1, n do
gg.setValues({[1]={address = jz[i].address+44,flags = gg.TYPE_DWORD,value = ZDYXGZ}})
gg.toast("后羿自定义加攻速开启成功")
end
end




function HS6()
	 os.exit()
end

function HOME()
Main1()
end


while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main1()
  end
end