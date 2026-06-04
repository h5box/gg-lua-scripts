local v=''
--解密内容
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
--取中间内容
function hont()
  luaaa = gg.choice({
    "✔一键解新版yic",
    "✔64编码解密",
    "✔-enc一键解密",
    "✔数字解密",
    "✔关闭脚本"
  }, nil, "Lua解密工具QQ1361189880")--十里六月
  if luaaa ~=nil then
    if luaaa == 1 then
      yicyj()
    end
    if luaaa == 2 then
      phlk()
    end
    if luaaa == 3 then
      sju()
    end
    if luaaa == 4 then
      jip()
    end
    if luaaa == 5 then
      os.exit()
    end
  else
  end

end
function yicyj()
  v_value1 = gg.prompt({
    "请复制粘贴要解密代码" 
  }, {
  }, {
    [1] = "number"
  })
  local lpn = v_value1[1]
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
      print("密码:"..key+i)
      v=ggp1
      break
    end
  end
  if v=="" then
    gg.toast(string.char(231,160,180,232,167,163,229,164,177,232,180,165,58,232,175,183,230,137,190,81,81,57,56,48,51,51,52,52,48,48,230,136,150,232,128,133,230,137,139,229,138,168,232,167,163,229,175,134))
    os.exit()
  end 
  if string.find(v,"LuaR")==nil then
    file = io.open("/storage/emulated/0/Tiaos.lua", "w")
    file:write(string.char(112,114,105,110,116,40,115,116,114,105,110,103,46,99,104,97,114,40,50,51,49,44,49,54,48,44,49,56,48,44,50,51,50,44,49,54,55,44,49,54,51,44,50,51,50,44,49,51,50,44,49,53,52,44,50,51,48,44,49,53,54,44,49,55,50,44,50,50,57,44,49,56,51,44,49,54,53,44,50,50,57,44,49,51,51,44,49,56,51,44,56,49,44,49,49,51,44,53,55,44,53,54,44,52,56,44,53,49,44,53,49,44,53,50,44,53,50,44,52,56,44,52,56,41,41).."\n"..v)
    file:close()
  else
    file = io.open("/storage/emulated/0/Tiaos.lua", "w")
    file:write(v)
    file:close()
  end

  gg.toast('请查看你的路径:/storage/emulated/0/Tiaos.lua')
end
function sju()
  v_value1 = gg.prompt({
    "请复制粘贴要解密全部代码" 
  }, {
  }, {
    [1] = "number"
  })
  function pp(tt)   
   ggg=string.gsub(tt,"return a","file = io.open('/storage/emulated/0/Tiaos.lua', 'w')file:write(a)file:close() return ''")
   file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
   pcall(loadfile('/storage/emulated/0/tm.lua'))
   os.remove('/storage/emulated/0/tm.lua')
  end
  pp(v_value1[1])
  gg.toast('请查看你的路径:/storage/emulated/0/Tiaos.lua')
end

function phlk()
  v_value1 = gg.prompt({
    "请复制粘贴要解密代码" 
  }, {
  }, {
    [1] = "number"
  })
  xrjb = Yicjm(v_value1[1])
  xrjb = string.gsub(xrjb,'&#39;','\'')
  file=io.open('/storage/emulated/0/Tiaos.lua','w')file:write(xrjb)file:close()
  gg.toast('请查看你的路径:/storage/emulated/0/Tiaos.lua')
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
                str=str..string.char(math.floor(data/math.pow(2,j)))             data=math.fmod(data,math.pow(2,j))
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
function jip()
  v_value1 = gg.prompt({
    "请复制粘贴要解密全部代码" 
  }, {
  }, {
    [1] = "number"
  })
  local ggg="(loadstring and loadstring or load)((function(t) local ii='' for i=1,#t do ii=ii..string.char(t[i]) end file=io.open('/storage/emulated/0/Tiaos.lua','w')file:write(ii)file:close() return '' end)((loadstring and loadstring or load)('return "..Xzzj(v_value1[1],'string.char(',')').."')()))()"
  file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
  pcall(loadfile('/storage/emulated/0/tm.lua'))
  os.remove('/storage/emulated/0/tm.lua')
  gg.toast('请查看你的路径:/storage/emulated/0/Tiaos.lua')
end
while true do
  hont()
end