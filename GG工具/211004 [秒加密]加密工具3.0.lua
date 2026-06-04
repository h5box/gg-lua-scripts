enctime=os.clock()
local Content, Dir = "",""
while true do
local Prompt = gg.prompt({"选择要加密的脚本"},{gg.getFile()},{"file"}) or {""}
local error, Open = pcall(io.input,Prompt[1])
if not(error) then
gg.toast("脚本不支持")
else
local Text = Open:read("*a")
if not(load(Text)) then
gg.toast("脚本不支持")
else
Dir = Prompt[1]
Content = Text
break
end
end
end
local Bytes = {Content:byte(1,-1)}
local ChunkBlock = [[


gg.toast("脚本加载中....")
gg.sleep(800)
local ELGG = '🛡BZH正在保护你的脚本🛡'
for k, v in ipairs({}) 
do 
if ipairs(k..v) == true then
 break end end
local function ELGGREVO()
for i = 1, 0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end
for i = 1, 0 do i((true | false) - true) end
local ELGG_CHAR = string.char
local ELGG_VERSION = ELGG:match(ELGG_CHAR(37,115,40,118,46,43,41,226,132,162,239,184,143))
local ELGG_PROTECT = ELGG_CHAR(240,159,155,161,239,184,143,32,80,114,111,116,101,99,116,32,98,121,32,69,76,71,71,82,101,118,111,32)..ELGG_VERSION..ELGG_CHAR(226,132,162,239,184,143,32,240,159,155,161,239,184,143,10)
local ELGG_EX = function(msg) if msg then print(msg) end os.exit() while true do _ENV = nil end end
local R_ = function(m, n)
  if not m or not m[10] or not n then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,55,53)) end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..ELGG_CHAR((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local Revo_Y = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,56,52)) end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{24,88,36,62,94,30,31,38,63,80},{99,90,63,47,31,47,45,35,75,71},{14,42,61,65,16,26,39,87,95,68},{14,89,65,26,45,24,85,54,48,14},{18,99,51,45,65,98,12,91,55,40},{61,59,17,60,53,71,22,65,71,84},{72,36,88,41,51,51,42,26,35,94},{40,99,35,89,92,37,19,62,89,32},{92,84,55,96,25,78,42,92,26,71},{38,94,45,36,38,98,90,50,35,83}}
local Revo_A = {5,5,8,4,1,3,1,1,6,5,5,8,7,10,6,2,2,9,1,3}
local Revo_Z = Revo_Y(Revo_L, Revo_A)
if not Revo_Z or not Revo_Z[10] then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,52)) end
local R_R = function(c)
   if not c then ELGG_EX(ELGG_PROTECT..ELGG_CHAR(227,128,144,226,157,140,227,128,145,32,69,82,82,79,82,32,99,111,100,101,32,58,32,48,120,48,48,48,48,51,57,54)) end
   return R_(Revo_Z, c)
end
if not revo or not revo.getPhoneInfo or not revo.goURL or gg.isDebug or not gg.getPathDebug then ELGG_EX() end
local Revo_X = function(d) if d:sub(1,7) == R_R({125,240,97,186})..ELGG_VERSION:sub(2,4) then return end ELGG_EX() end
local env, nx = tostring(_ENV), false
for k in env:gmatch(R_R({83,185,24,116,181})) do
if k:find(R_R({82,234,50})) then
if nx then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) else nx = true end end
if k:find(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) and k:match(R_R({101,176,94,166,235,104,170,243,90,185,24,116,229})) ~= gg.getFile() then ELGG_EX(R_R({13,37,139,58,99,154,139,19,122,218,54,107,239,80,191,16,110,223,48,143,203,237,5,107,26,67,122,85,141,169,14,235,111,250,89,114,31,43,211,58,154,246,84,185,18,43,223,51,148,254,11,190,14,125,212,59,159,172})) end
end env, nx = nil, nil
local ldprint = ELGG_PROTECT..R_R({53,109,133,235,154,195,250,235,119,218,44,143,240,93,139,15,112,223,48,142,255,80,175,235,13,37,139,58,99,154,117,173,201,46,11,143,26,121,146,63,75,0,94,176,203,119,218,44,143,240,93,108})
if not debug.traceback or not tostring(debug.traceback()):find(R_R({142,243,96,185,22})) then ELGG_EX(ldprint) end
for v in tostring(debug.traceback()):gmatch(R_R({83,185,24,116,181})) do
if (not v) or (v:find(R_R({90})) and v:match(R_R({89,179,26,121,216,52,165})) ~= gg.getFile()) then ELGG_EX(ldprint) end
end
if gg.getFile() ~= revo.getPath() or gg.getFile() ~= gg.getPathDebug then ELGG_EX() end
local R_OS = io.input(gg.getFile()):read(R_R({85,236}))
local f = io.open(gg.FILES_DIR:match(R_R({137,179,25,117,218,52,147,38,137,186,72,117,212,47}))..R_R({158,243,76,189,16,111,202,59,157,240,81,190,218})..gg.PACKAGE..R_R({138,251,93,176,17,112,221,48,153,238,80,190,217,131,216,55}), R_R({157}))
if not f then ELGG_EX() else
local R_C = f:read(R_R({85,236}))
f:close()
for k in R_C:gmatch(gg.getTargetPackage()..R_R({80,184,94,174,29,116,219,63,158,173,41,115,217,56,148,7})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
for k in R_C:gmatch(R_R({154,253,100,112,216,59,141,9,83,185,24,116,231})) do
if not k or k ~= gg.getFile() or k ~= revo.getPath() or k ~= gg.getPathDebug then ELGG_EX() end
end
end
gg.toast(R_R({27,42,134,236,154,195,250,235,123,253,90,191,16,110,223,235,141,4,11,144,247,82,178,29,144,1,90,107})..ELGG_VERSION)
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_BAD | gg.REGION_ANONYMOUS)
result = gg.getResults(5000)
Revo_X(R_OS)
gg.setValues(result)
gg.clearResults()
gg.editAll(0, gg.TYPE_DWORD|gg.TYPE_FLOAT)
gg.setRanges()
end
local R_ = function(m, n)
  if not m or not m[10] or not n then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then print(HH) os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print(HH,_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print(HH)
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
	if not f then
print(HH)
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print(HH,Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print(HH)
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local R_ = function(m, n)
  if not m or not m[10] or not n then  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  if not j or not j[10][10] or not k or not k[20] then  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
  local m, o = 1, {}
  repeat table.insert(o, j[k[m] ][k[m+1] ])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = {{27,68,89,32,80,48,23,67,80,78},{80,38,55,40,73,18,71,21,30,49},{35,36,39,66,12,79,62,10,91,85},{89,46,31,89,53,40,27,19,61,24},{82,97,28,21,93,44,51,46,40,12},{87,32,62,47,17,98,64,29,74,80},{83,46,16,86,14,76,20,20,50,27},{13,81,62,32,87,11,57,89,34,47},{25,20,88,89,54,88,22,94,71,75},{62,53,63,49,49,88,14,83,56,98}}
local Revo_A = {7,7,2,2,6,10,6,8,4,8,6,4,1,7,1,6,1,6,5,7}
local Revo_O = getKey(Revo_L, Revo_A)
if not Revo_O then os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
local Revo_D = function(c)
   if not Revo_O or not Revo_O[10] or not c then  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end  end
   return R_(Revo_O, c)
end
local a = (tostring(_ENV))
l=#a
if tostring(_ENV.gg):find(Revo_D({42})) then
  print("",_ENV.gg) os.exit()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch("function: @(.-):")) do
    if k ~= gg.getFile() then
    print("")
	  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  print("")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      print("")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
if not f then
print("")
  os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
  for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print("",Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      print("")
      os.exit() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end



local dZvT=string.rep(" ",1048576)
sOaJ={}
for cInW=1,1024 do sOaJ[cInW]=dZvT 
end 
dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do 
pcall(wNjO,sOaJ)
end 
]]
local Credits = [===[ 
 
 
         (　　 へ　　　　   ／|
　　/＼7　　   ∠＿/
　 /　│　　 ／　／
　│　Z ＿,＜　／　　 /`ヽ
　│　　　　　ヽ　　 /　　〉
　 Y　　　　　  `　 /　／
　ｲ●　､　●　　⊂⊃ 〈　　
　()　 へ　　　　|　＼〈
　　>ｰ ､_　 ィ　 │ ／／
　 / へ　　 /　ﾉ＜| ＼＼
　 ヽ_ﾉ　　(_／　 │／／
　　7　　　　　　　|／
　　＞―r￣￣`ｰ―＿  |
BZH时刻保护你的脚本🛡🛡🛡🛡🛡
🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽
ℹ️️加密作者:BZH
📈加密强度：★★★★★
Ⓜ️加密链接：已关闭下载链接
--加密作者留言:加Q172386795 免费代加密 高强度
🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼🔼.
]===]
io.open(Dir.."GB.LUA","w"):write(string.dump(load(ChunkBlock.."\n\npcall(load(string.char(table.unpack({"..table.concat(Bytes,",").."}))))"),true).."\n\n"..Credits)
gg.alert('加密完成\n')
gg.toast(os.date("当前加密时间为:\n%Y年%m月%d日%H时%M分%S秒"))
print('温馨提示:加密完成耗时'..os.clock()-enctime)
print(os.date("%H:%M:%S %p ⌚️ %A, %d %B %Y"))