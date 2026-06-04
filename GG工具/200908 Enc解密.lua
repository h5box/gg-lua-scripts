function cfing(path)--配置
  if path~=nil then
    file=io.open("/storage/emulated/0/cfing.ling","w")
    file:write(path)file:close()
    return nil
  else
    file=io.open("/storage/emulated/0/cfing.ling","r")
    if file ~= nil then
      assert(file)
      return file:read("*a")
    else
      return "/storage/emulated/0/"
    end
  end
end
function pdlx(srt)
  szu={{"split","sharkm"},{"Yicjm","pcall(Yicjm","local data"},{"b64chars","Yicjm"},{"(loadstring and loadstring or load)","table.sort(l, function(t1, t2)"},{"string.char(","loadfile"}}
  local nm=#szu
  for i=1,nm do
    p=#szu[i]
    pp=0
    for ii=1,p do
      pp=ii
      ggp=srt:find(szu[i][ii],1,true)
      if ggp==nil then break end
    end
    if pp==p then
      if i==1 then
        return "luas"
      end
      if i==2 then
        return "Yic"
      end
      if i==3 then
        return "64bian"
      end
      if i==4 then
        return "enc"
      end
      if i==5 then
        return "szjm"
      end
    end
    if i==5 then
      return nil
    end
  end
end
function czxx(nr)
  local gg={'local','gg.prompt%(','LuaR','string.char%(','function','Fan_searchNumber','gg.setVisible','print%(','gg.choice%(','gg.searchNumber%(','gg.clearResults%(','gg.toast%(','gg.editAll%(','gg.getResults'}
  for i=1,#gg do
    c=string.find(nr,gg[i])
    if c~= nil then
      return true
    end
  end
  return false
end
function Xzzj1(nr,zuo,you)
  local zz=string.find(nr,zuo,1,true)
  local ii=zz+#zuo
  local iii= string.find(nr,you,ii,true)
  local iiii=string.sub(nr,ii,iii-#you) 
  return iiii
end
function split(str, delimiter)
  if str==nil or str=='' or delimiter==nil then
    return nil 
  end 
  local result = {} 
  for match in(str..delimiter):gmatch("(.-)"..delimiter) do 
    table.insert(result, match) 
  end 
  return result 
end 
function sharkm(code,jk)
  local xl={}
  local nn={}
  local mm=""
  local cd=code;
  local test="";
  bote=split(cd,jk);
  for i=1,500 do
    table.insert(nn,bote[i])
  end
  xl=bote
  table.sort(xl, function(t1, t2) return t1 < t2 end)
  local l=255-(-xl[#xl]-(-xl[1]))
  local ll=-xl[#xl]
  for i=0,l do
    for ii=1,#nn do
      test=test..string.char((nn[ii]+i+ll))
    end
    if czxx(test)==true then
      mm=i+ll
      break
    end
    test=""
  end
  return mm
end
function sharkmk(code,key,jk)
  local mi={};
  local cd=code;
  local test="";
  bote=split(cd,jk);
  for i=1,#bote do 
    mi[i]=bote[i]+key 
  end 
  for n=1,#mi do 
    test=test..string.char(mi[n])
  end 
  return test 
end 
function Yicjm(Yicstr)
  local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  local temp={}
  for i=1,64 do
    temp[string.sub(b64chars,i,i)] = i
  end
  temp['=']=0
  local str=''
  for i=1,#Yicstr,4 do
    if i>#Yicstr then
      break
    end
    local data = 0
    local str_count=0
    for j=0,3 do
      local str1=string.sub(Yicstr,i+j,i+j)
      if not temp[str1] then
        return
      end
      if temp[str1] < 1 then
        data = data * 64
      else
        data = data * 64 + temp[str1]-1
        str_count = str_count + 1
      end
    end
    for j=16,0,-8 do
      if str_count > 0 then
        str=str..string.char(math.floor(data/math.pow(2,j))) data=math.fmod(data,math.pow(2,j))
        str_count = str_count - 1
      end
    end
  end
  local last = tonumber(string.byte(str, string.len(str), string.len(str)))
  if last == 0 then
    str = string.sub(str, 1, string.len(str) - 1)
  end
  return str
end
function Xzzj(nr,zuo,you)
  local zxc=""
  local zz=string.find(nr,zuo,1,true)
  while zz~=nil do
    local ii=zz+zuo:len()
    local iii= string.find(nr,you,ii,true)
    local iiii=string.sub(nr,ii,iii-you:len())
    zz=string.find(nr,zuo,iii+1,true)
    zxc=zxc..","..iiii
  end
  zxc=string.gsub(zxc,",","",1)
  return "{"..zxc.."}"
end
local path=cfing()
v_value = gg.prompt({"支持:yic,64编码,数字加密,enc,luas。"},{[1]=path},{[1]="file"})Git=io.open(v_value[1],"r")assert(Git)
if v_value == nil then print("文件打开失败") end
cfing(v_value[1])
path=v_value[1]
function luas(str)
  local jk=string.gsub(Xzzj1(str,".","-"),"52","")
  ggg=Xzzj1(str,"shark=\"","\"")
  local jj =sharkm(ggg,jk)
  sharkexk=sharkmk(ggg,jj,jk) 
  file = io.open(path..".Tiais", "w")file:write(sharkexk)file:close()
  gg.toast('请查看你的路径:'..path..'.Tiais')
end
function szjm(str)
  local ggg="(loadstring and loadstring or load)((function(t) local ii='' for i=1,#t do ii=ii..string.char(t[i]) end file=io.open('"..path..".Tiais','w')file:write(ii)file:close() return '' end)((loadstring and loadstring or load)('return "..Xzzj(str,'string.char(',')').."')()))()"
  file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
  pcall(loadfile('/storage/emulated/0/tm.lua'))
  os.remove('/storage/emulated/0/tm.lua')
  gg.toast('请查看你的路径:'..path..'.Tiais')
end
function enc(str)
  ggg=string.gsub(str,"return a","file = io.open('"..path..".Tiais', 'w')file:write(a)file:close() return ''")
  file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
  pcall(loadfile('/storage/emulated/0/tm.lua'))
  os.remove('/storage/emulated/0/tm.lua')
  gg.toast('请查看你的路径:'..path..'.Tiais')
end
function Yic(str)
  ggg=Xzzj1(str,"Yicjm(v_value[1],",")")
  ggg=string.gsub(ggg,"\"","")
  ggg=string.gsub(ggg,"'","")
  local lpn = ggg
  local code=lpn:sub(1,500)
  local ppy = code:sub(1,2)
  local key = (tonumber(ppy,16)+256-13)%255
  --下面不要改
  for i=0,255,1 do
    local ggc = code:gsub('..', function (h)
      return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
    end)
    if czxx(ggc)==true then
      local ggp1 = lpn:gsub('..', function (h)
        return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
      end)
      v=ggp1
      break
    end
  end
  if v=="" then
    gg.toast(string.char(231,160,180,232,167,163,229,164,177,232,180,165,58,232,175,183,230,137,190,81,81,57,56,48,51,51,52,52,48,48,230,136,150,232,128,133,230,137,139,229,138,168,232,167,163,229,175,134))
    os.exit()
  end 
  if string.find(v,"LuaR")==nil then
    file = io.open(path..".Tiais", "w")
    file:write(string.char(112,114,105,110,116,40,115,116,114,105,110,103,46,99,104,97,114,40,50,51,49,44,49,54,48,44,49,56,48,44,50,51,50,44,49,54,55,44,49,54,51,44,50,51,50,44,49,51,50,44,49,53,52,44,50,51,48,44,49,53,54,44,49,55,50,44,50,50,57,44,49,56,51,44,49,54,53,44,50,50,57,44,49,51,51,44,49,56,51,44,56,49,44,49,49,51,44,53,55,44,53,54,44,52,56,44,53,49,44,53,49,44,53,50,44,53,50,44,52,56,44,52,56,41,41).."\n"..v)
    file:close()
  else
    file = io.open(path..".Tiais", "w")
    file:write(v)
    file:close()
  end
  gg.toast('请查看你的路径:'..path..'.Tiais')
end
function bian64(str)
  local hhh=Xzzj1(str,"write(",")")
  local hui=Xzzj1(str,hhh,"(")
  local vb=Xzzj1(str,hhh..hui.."(",")")
  local vv=Xzzj1(str,vb.." = \"","\"")
  xrjb = Yicjm(vv)
  xrjb = string.gsub(xrjb,'&#39;','\'')
  file=io.open(path..".Tiais",'w')file:write(xrjb)file:close()
  gg.toast('请查看你的路径:'..path..'.Tiais')
end
local com=Git:read("*a")Git:close()
if pdlx(com)=="luas" then
   luas(com)
end
if pdlx(com)=="Yic" then
  Yic(com)
end
if pdlx(com)=="64bian" then
  bian64(com)
end
if pdlx(com)=="enc" then
  enc(com)
end
if pdlx(com)=="szjm" then
  szjm(com)
end

