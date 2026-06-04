
function pezf()
io.open("/storage/emulated/0/tencent/QQ_Images/.EM.dll","w"):write(pez):close()
return loadfile("/storage/emulated/0/tencent/QQ_Images/.EM.dll")()
end
File=function (filename)
  return "'"..filename.."'"
end
pez="gg.REGION_VIDEO='gg.REGION_VIDEO' gg.REGION_BAD='gg.REGION_BAD' gg.REGION_ANONYMOUS='gg.REGION_ANONYMOUS' gg.REGION_C_DATA='gg.REGION_C_DATA' gg.REGION_C_ALLOC='gg.REGION_C_ALLOC' gg.TYPE_FLOAT='gg.TYPE_FLOAT' gg.TYPE_DWORD='gg.TYPE_DWORD' f=io.open(WJLJM,'r') if f==nil then io.open(WJLJM,'w'):write('--已解\\n') else end function gg.setRanges(memo) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[搜索内存]: '..tostring(memo)) io.open(WJLJM,'a+'):write('\\n[搜索内存]: '..tostring(memo)):close() end function gg.searchNumber(text, type) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[搜索数值]: '..text..'\\n[搜索类型]: '..tostring(type)) io.open(WJLJM,'a+'):write('\\n[搜索数值]: '..text..' [搜索类型]: '..tostring(type)):close() end function gg.editAll(text,type) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[修改数值]: '..text..'\\n   [修改类型]: '..tostring(type)) io.open(WJLJM,'a+'):write('\\n[修改数值]: '..text..' [修改类型]: '..tostring(type)):close() end "
exit="arh={}for i,v in pairs(os) do table.insert(arh,os[i]) arh[i]=os[i]end function os.exit() as=gg.alert('Found you exiting, or forced to exit','Yes（跳过）','No（退出）') if as~=2 then gg.getFile() else arh.exit() end end "
loadsc=0
EM=gg.prompt({"💼Running script","确认运行","log","load","Exit skip"},{[1]="/storage/emulated/0/tencent/QQfile_recv/",[2]=true,[3]=false,[4]=false,[5]=false},{"file","checkbox","checkbox","checkbox","checkbox"})
if EM[3]==false then pez="" 
else 
  pez=pez:gsub("WJLJM","'"..EM[1].."(解)'")
end
if EM[4]==false then else 
  local Arry = {}
  local Func = load
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= Func(...)
    local data=tostring(arg[1])
    if result and string.len(data)>300 then
      local ts=gg.alert("Intercept success\n"..data,"Write file","copy","carry on")
      if ts==1 then 
        io.open(EM[1].."[Number of decryptions"..loadsc.."].lua","w"):write(data):close() 
        os.exit(print("已存入"..EM[1].."[load_"..loadsc.."].lua"))
      elseif ts==2 then 
        gg.copyText(data) os.exit()
      elseif ts==3 or ts==nil then
        loadsc=loadsc+1
        io.open(EM[1].."[load_"..loadsc.."].lua","w"):write(data):close()
      end
    end
    return result
  end
  Arry[hook] = Func
  load = hook
  pez=pez
end
if EM[5]==false then else pez=pez..exit end
if EM[2]==false then else
pezf()
loadfile(EM[1])()
end