function TR_getfile(A0_73)
  io.input((io.open(A0_73, "r")))
  return (io.read("*a"))
end
function TR_savefile(A0_74, A1_75)
  file = io.open(gg.CACHE_DIR .. "/" .. A0_74, "w+")
  io.output(file)
  io.write(A1_75)
  io.close(file)
end
function TR_writefile(A0_76, A1_77)
  file = io.open(A0_76, "w")
  file:write(A1_77)
  file:close()
end
function TR_jia(A0_78, A1_79)
  if string.find(A0_78, string.char(10)) ~= nil then
  end
  if A1_79 == nil then
    A1_79 = "#2347"
  end
  return TR_replace(A0_78, string.char(13), A1_79)
end
function jie(A0_80, A1_81)
  local L2_82, L3_83, L4_84
  if A1_81 == nil then
    A1_81 = "#2347"
  end
  L2_82 = TR_replace
  L3_83 = A0_80
  L4_84 = A1_81
  return L2_82(L3_83, L4_84, string.char(13))
end
function TR_replace(A0_85, A1_86, A2_87)
  local L3_88
  L3_88 = nil
  while true do
    L3_88 = string.find(A0_85, A1_86)
    if L3_88 == nil then
      break
    end
    A0_85 = string.sub(A0_85, 1, L3_88 - 1) .. A2_87 .. string.sub(A0_85, L3_88 + #A1_86, -1)
  end
  return A0_85
end
function TR_compile(A0_89, A1_90)
  code = loadfile(A0_89)
  code = string.dump(code,true)
  dump = TR_jia(code, "#2000" .. A1_90 .. "#")
  finish = "load(jie([[" .. dump .. "]],\"#2000" .. A1_90 .. "#\"))()"
  return finish
end
function TR_main()
  gg.func = {}
  result = gg.prompt({
    "选择脚本加密",
    "请:输入编译次数"
  }, {
  gg.getFile(),
    "200"
    
  }, {"file", "text"})
  TR = result[2]
  fn = result[1].."B"
  file9=io.open(fn,'w')
file9:write()
file9:close()
  local filel = io.open(result[1], "r") assert(filel) 
repeat
local data = filel:read("*l")
if data~=nil then
local baohan = string.find(data, "gg.clearResults")
local bh1 = string.find(data, "gg.setRanges")
local bh2 = string.find(data, "gg.searchNumber")
local bh3 = string.find(data, "gg.getResults")
local bh4 = string.find(data, "gg.editAll")
local bh5 = string.find(data, "gg.toast")
if type(baohan) =='number' or  type(bh1) =='number'  or  type(bh2) =='number'  or  type(bh3) =='number' or type(bh4) =='number'  or type(bh5) =='number'  then 
pd=nil
local da={}
local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
da[i]=tonumber(b)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end
local NR='load(string.char('..result..'))()'  
file = io.open(fn, 'a+')
file:write(NR)
file:write("\n")
file:close()
else
file = io.open(fn, 'a+')
file:write(data)
file:write("\n")
file:close()
end
end
until data == nil
  source = TR_getfile(fn)
  TR_savefile("code1.lua", source)
  lib = [[
function jie(fd,key)
	if key==nil then
		key='#2347'
	end
	return replace(fd,key,string.char(13))
end
function replace(from,fs,ts)
	local index
	local head,foot
	while 1 do
		index=string.find(from,fs)
		if index==nil then
			break
		end
		head=string.sub(from,1,index-1)
		foot=string.sub(from,index+#fs,-1)
		from=head..ts..foot
	end
	return from
end

]]
  for _FORV_3_ = 1, TR do
    bin = TR_compile(gg.CACHE_DIR .. "/code" .. _FORV_3_ .. ".lua", _FORV_3_)
    os.remove(gg.CACHE_DIR .. "/code" .. _FORV_3_ .. ".lua")
    if _FORV_3_ == TR then
      bin = lib .. bin
    end
    TR_savefile("code" .. _FORV_3_ + 1 .. ".lua", bin)
  end
  TR_writefile(fn, bin)
  print("成功！")
end
TR_main()
sss=io.open(fn,"r")
assert(sss)
ssss=sss:read('*a')
fff=[[gg.toast("神盾加密成功")

]]..ssss..""
file2=io.open(fn,'w')
file2:write(fff)
file2:close()

n=string.gsub(string.dump(loadfile(fn),true),"LuaR", "LuaX")
file3=io.open(fn,'w')
file3:write(n)
file3:close()
--来源于网络，谁开源的忘记了