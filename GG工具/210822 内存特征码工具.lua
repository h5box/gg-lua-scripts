function split(szFullString, szSeparator)
local nFindStartIndex = 1
local nSplitIndex = 1
local nSplitArray = {}
while true do
local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
break
end
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(szSeparator)
nSplitIndex = nSplitIndex + 1
end
return nSplitArray
end
function checktype(datatype)
local type
if datatype == 'A' then
type = gg.TYPE_AUTO
elseif datatype == 'D' then
type = gg.TYPE_DWORD
elseif datatype == 'F' then
type = gg.TYPE_FLOAT
elseif datatype == 'E' then
type = gg.TYPE_DOUBLE
elseif datatype == 'W' then
type = gg.TYPE_WORD
elseif datatype == 'B' then
type = gg.TYPE_BYTE
elseif datatype == 'Q' then
type = gg.TYPE_QWORD
elseif datatype == 'X' then
type = gg.TYPE_XOR
else
gg.alert('不正确的类型')
os.exit()
end
return type
end
function memory(range)
local mr
if range == 'Jh' then
mr = gg.REGION_JAVA_HEAP
elseif range == 'Ch' then
mr = gg.REGION_C_HEAP
elseif range == 'Ca' then
mr = gg.REGION_C_ALLOC
elseif range == 'Cd' then
mr = gg.REGION_C_DATA
elseif range == 'Cb' then
mr = gg.REGION_C_BSS
elseif range == 'PS' then
mr = gg.REGION_PPSSPP
elseif range == 'A' then
mr = gg.REGION_ANONYMOUS
elseif range == 'J' then
mr = gg.REGION_JAVA
elseif range == 'S' then
mr = gg.REGION_STACK
elseif range == 'As' then
mr = gg.REGION_ASHMEM
elseif range == 'O' then
mr = gg.REGION_OTHER
elseif range == 'B' then
mr = gg.REGION_BAD
elseif range == 'Xa' then
mr = gg.REGION_CODE_APP
elseif range == 'Xs' then
mr = gg.REGION_CODE_SYS
else
gg.alert('不正确的内存范围')
os.exit()
end
return mr
end
toast = function(str)
gg.toast(tostring(str))
end
sleep = function(ms)
gg.sleep(ms)
end
function Main()
XQM = gg.choice({
"内存工具️",
"️复制号码️",
"️退出工具"
}, nil, "特征码工具")
if XQM == 1 then main() end
if XQM == 2 then FZ() end
if XQM == 3  then os.exit() end
XGCK = -1 end
function main()
local datavalue = {'请输入地址(不可空)', '请输入类型(不可空)', '默认偏移范围(四的倍数)'}
local datatype = {'', '', '150'}
local prompttype = {'text', 'text', 'text'}
data = gg.prompt(datavalue, datatype, prompttype)
if data == '' or data == nil then
gg.alert('不正确的地址')
os.exit()
elseif data[1] == '' or data[1] == nil then
gg.alert('不正确的地址')
os.exit()
elseif data[2] == '' or data[2] == nil then
gg.alert('不正确的类型')
os.exit()
else
datatype = data[2]
gg.searchAddress(data[1], -1, checktype(datatype))
end
sz = gg.getResults(1)
pyfw = data[3] / 4
zpyvalue = 4
fpyvalue = pyfw * -4
farrsl = 0
zarrsl = 0
own = {}
own[0] = {}
own[0].address = sz[1].address
own[0].flags = checktype(datatype)
bown = gg.getValues(own)
bs = bown[0].value .. '   偏移量：' .. 0
for fbl = 1, pyfw do
farrsl = farrsl + 1
fszb = {}
fszb[1] = {}
fszb[1].address = sz[1].address + fpyvalue
fszb[1].flags = checktype(datatype)
bfszb = gg.getValues(fszb)
for fi = 1, pyfw do
if fi == fi then
farray = bfszb[1].value
end
end
farr = {}
farr[farrsl] = {}
farr[farrsl] = farray
fzpyvalue = farr[farrsl]
if farrsl == 1 then
valuepyfz = ''
end
valuepyfz = valuepyfz .. fzpyvalue .. '   偏移量：' .. fpyvalue .. ', '
fpyvalue = fpyvalue + 4
end
for zbl = 1, pyfw do
zarrsl = zarrsl + 1
zszb = {}
zszb[1] = {}
zszb[1].address = sz[1].address + zpyvalue
zszb[1].flags = checktype(datatype)
bzszb = gg.getValues(zszb)
for zi = 1, pyfw do
if zi == zi then
zarray = bzszb[1].value
end
end
zarr = {}
zarr[zarrsl] = {}
zarr[zarrsl] = zarray
zzpyvalue = zarr[zarrsl]
if zarrsl == 1 then
valuepyzz = ''
end
valuepyzz = valuepyzz .. zzpyvalue .. '   偏移量：' .. zpyvalue .. ', '
zpyvalue = zpyvalue + 4
end
sxpy = '选择上下偏移特征码' .. ', ' .. valuepyfz .. bs .. ', ' .. valuepyzz .. '选择上下偏移特征码(此行勿勾选)'
sxpyfg = split(sxpy, ', ')
local selection = 'checkbox'
fwsl = data[3] / 2 + 1
xfwsl = fwsl
xj = ', '
sl = 0
for dx = 1, fwsl do
if dx == fwsl then
break
else
sl = sl + 1
dxb = {}
dxb[sl] = {}
dxb[sl] = selection
if sl == 1 then
dxsz = 'text' .. xj
end
end
end
for x = 1, xfwsl do
dxsz = dxsz .. selection .. xj
end
dxsz = dxsz .. selection
separate = split(dxsz, ', ')
valuedata = gg.prompt(sxpyfg, {''}, separate)
cssl = 0
if valuedata ~= nil then
pdfw = data[3] / 2 + 2
for pd = 2, pdfw do
if valuedata[pd] == true then
cssl = cssl + 1
pdsz = {}
pdsz[1] = {}
pdsz[1] = sxpyfg[pd]
for xi = 1, pdfw do
if xi == xi then
xipdcs = pdsz[1]
end
end
xirr = {}
xirr[cssl] = {}
xirr[cssl] = xipdcs
xisc = xirr[cssl]
if cssl == 1 then
csxi = ''
end
csxi = csxi .. xisc .. ', '
end
end
end
xzpd = split(csxi, ', ')
print(cssl)
print(checktype(datatype))
function tzmxrwj(xzpd, datatype)
qmfg = xzpd[1]
zxrfgsz = qmfg:match("(.+)   偏移量：")
zxrfgpy = qmfg:match("   偏移量：(.+)")
if zxrfgpy < "0" then
zxrfgpy = "-1" * zxrfgpy
elseif zxrfgpy > "0" then
zxrfgpy = 1 * zxrfgpy
end
--datatype = data[2]
ztzm = '{["value"] = ' .. zxrfgsz .. ', ["type"] = ' .. checktype(datatype) .. '},'
--print(ztzm)
--{["value"] = 9.20161819458, ["type"] = qm.F},

xrsi = 0
for qm = 2, (#xzpd) do
qmfg = xzpd[qm]
xrfgsz = qmfg:match("(.+)   偏移量：")
xrfgpy = qmfg:match("   偏移量：(.+)")
xrsi = xrsi + 1
xsisz = {}
xsisz[1] = {}
xsisz[1] = xrfgsz
xsisz[2] = {}
xsisz[2] = xrfgpy
for xri = 2, (#xzpd) do
if xri == xri then
xrarr = xsisz[1]
xrpyl = xsisz[2]
end
end
xrarry = {}
xrarry[xrsi] = {}
xrarry[xrsi] = xrarr
vlxr = xrarry[xrsi]
xrpyay = {}
xrpyay[xrsi] = {}
xrpyay[xrsi] = xrpyl
vxry = xrpyay[xrsi]
if xrsi == 1 then
xrvl = ''
xrvy = ''
end
if vlxr == nil then
else
xrvl = xrvl .. vlxr .. ', '
xrvy = xrvy .. vxry + zxrfgpy .. ', '
end
end
xrwm = zxrfgsz .. ', ' .. xrvl
xrwy = 0 .. ', ' .. xrvy
fgxrwm = split(xrwm, ', ')
fgxrwy = split(xrwy, ', ')
print(fgxrwm)
print(fgxrwy)
blzr = 0
lbzi = 0
for blwm = 1, (#fgxrwm) do
blzr = blzr + 1
blfgwy = fgxrwy[blzr]
if fgxrwm[blwm] == '' or fgxrwm[blwm] == nil then
else
blfgwm = fgxrwm[blwm] .. '   偏移量：' .. blfgwy .. ', '
lbzi = lbzi + 1
print(blfgwm)
for xzi = 1, (#fgxrwm) do
if xzi == xzi then
zxiz = blfgwm
end
end
ixxi = {}
ixxi[lbzi] = {}
ixxi[lbzi] = zxiz
ixxivl = ixxi[lbzi]
if lbzi == 1 then
zxcx = ''
end
zxcx = zxcx .. ixxivl
end
end
zxcx = zxcx .. '选择要修改的特征码(此行勿勾选)'
fgzxcx = split(zxcx, ', ')
fgftsl = 0
for ftzmfg = 2, (#fgzxcx) do
local lvtzm = '{["lv"] = '
local tzmset = ', ["offset"] = '
local tzmtype = ', ["type"] = '
local fgjw = '},'
local hhf = '\n'
ftmfg = fgzxcx[ftzmfg]
ftzfgjg = ftmfg:match("(.+)   偏移量：")
ftyfgjg = ftmfg:match("   偏移量：(.+)")
if ftzfgjg == nil then
else
fgftsl = fgftsl + 1
ftzmjg = lvtzm .. ftzfgjg .. tzmset .. ftyfgjg .. tzmtype .. checktype(datatype) .. fgjw
for ftxix = 1, (#fgzxcx) do
if ftxix == ftxix then
ftiarr = ftzmjg
end
end
ftxarr = {}
ftxarr[fgftsl] = {}
ftxarr[fgftsl] = ftiarr
ftval = ftxarr[fgftsl]
if fgftsl == 1 then
ftxjbl = ''
end
ftxjbl = ftxjbl .. ftval .. hhf
end
end
fszb = {}
fszb[1] = {}
fszb[1].address = sz[1].address + fpyvalue
fszb[1].flags = checktype(datatype)
bfszb = gg.getValues(fszb)
for fi = 1, pyfw do
if fi == fi then
farray = bfszb[1].value
end
end
farr = {}
farr[farrsl] = {}
farr[farrsl] = farray
fzpyvalue = farr[farrsl]
if farrsl == 1 then
valuepyfz = ''
end
valuepyfz = valuepyfz .. fzpyvalue .. '   偏移量：' .. fpyvalue .. ', '
print(fgzxcx)
local accsep = 'checkbox'
for acse = 1, cssl do
if acse == cssl then
break
else
if acse == 1 then
acsz = ''
end
end
end
if acsz == nil then
gg.alert('不可只选一个特征码')
os.exit()
else
for acx = 1, cssl do
acsz = acsz .. accsep .. ', '
end
acsz = acsz .. accsep
fgacsz = split(acsz, ', ')
acc = gg.prompt(fgzxcx, {'by：LiuL丶XQM'}, fgacsz)
end
caac = 0
if acc ~= nil then
for cca = 1, (#zxcx) do
if acc[cca] == true then
caac = caac + 1
pdac = {}
pdac[1] = {}
pdac[1] = fgzxcx[cca]
for cxi = 1, (#zxcx) do
if cxi == cxi then
acca = pdac[1]
end
end
cicz = {}
cicz[caac] = {}
cicz[caac] = acca
zcv = cicz[caac]
if caac == 1 then
zcvxi = ''
end
zcvxi = zcvxi .. zcv .. ', '
end
end
end
fgft = split(zcvxi, ', ')
print(fgft)
print(zcvxi)
print(zxrfgsz)
xgftx = 0
for xgtm = 1, (#fgft) do
local xgtxm = '{["value"] = '
local xgset = ', ["offset"] = '
local xgtype = ', ["type"] = '
local xgjw = '},'
local hhf = '\n'
xgtzm = fgft[xgtm]
--print(xgtzm)
--fgxgztm = xgtzm:match("(.+)   偏移量：")
fgxgztm = xgszxg
fgxgytm = xgtzm:match("   偏移量：(.+)")
--print(fgxgztm)
if fgxgytm == nil then
else
xgftx = xgftx + 1
mxg = xgtxm .. fgxgztm .. xgset .. fgxgytm .. xgtype .. checktype(datatype) .. xgjw
for xgxix = 1, (#fgft) do
if xgxix == xgxix then
xgtmarr = mxg
end
end
xgxarr = {}
xgxarr[xgftx] = {}
xgxarr[xgftx] = xgtmarr
xgtmvl = xgxarr[xgftx]
if xgftx == 1 then
xgtmxj = ''
end
xgtmxj = xgtmxj .. xgtmvl .. hhf
end
end
--print(xgtmxj)
sssz = 'qmnb = {\n' .. '{["memory"] = ' .. memory(range) .. '},\n' .. '{["name"] = "' .. name .. '"},\n'
xgssz = 'qmxg = {\n' .. xgtmxj .. '}'
sssz = sssz .. ztzm .. '\n' .. ftxjbl .. '}\n'
sssz = sssz .. xgssz .. '\nxqmnb(qmnb)'
--print(sssz)
file = io.open("/storage/emulated/0/特征码文件.lua/" .. name .. "GG仿XS.lua", "w")
file:write(sssz)
file:close()
toast("脚本保存在/storage/emulated/0/特征码文件.lua/" .. name .. "GG仿XS.lua")
end

--qmxg = {
local muc = {'请输入内存范围(不可空)', '请输入功能名称(不可空)', '请输入要修改的值(不可空)'}
local mucz = {'', ''}
local muprompttype = {'text', 'text', 'text'}
mucd = gg.prompt(muc, mucz, muprompttype)
if mucd == '' or data == nil then
gg.alert('不正确的内存范围')
os.exit()
elseif mucd[1] == '' or mucd[1] == nil then
gg.alert('不正确的内存范围')
os.exit()
elseif mucd[2] == '' or mucd[2] == nil then
gg.alert('不正确的功能名称')
os.exit()
elseif mucd[3] == '' or mucd[3] == nil then
gg.alert('不正确的修改数值')
os.exit()
else
range = mucd[1]
name = mucd[2]
xgszxg = mucd[3]
--print(xgszxg)
--tzmxrwj(xzpd)
tzmxrwj(xzpd, datatype)
end
end


function FZ()
XQM = gg.choice({
"❤️作者❤️",
"❤️月光群❤️",
"❤️咸鱼阁❤️"
}, nil, "蜗牛娱乐网 www.woniuwl.com")
if XQM == 1 then zuozhe() end
if XQM == 2 then yueguang() end
if XQM == 3  then xyg() end
XGCK = -1 end

function zuozhe()
gg.copyText("1332116925")
end

function yueguang()
gg.copyText("184546003")
end

function xyg()
gg.copyText("700955760")
end

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