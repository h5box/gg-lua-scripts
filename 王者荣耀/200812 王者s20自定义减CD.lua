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
	 "貂蝉被动减CD",
	 "干将被动减CD",
	 "夫子被动减CD",
	 "光信被动减CD",
	 "貂蝉主动一二技能减CD",
	 "曜主动全技能减CD",
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
if SN==6 then
	 HS7()
end
if SN==7 then
	 HS8()
end
FX1=0
end

function HS2()
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


function HS3()
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


function HS4()
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


function HS5()
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


function HS6()
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


function HS7()
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






function HS8()
	 os.exit()
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