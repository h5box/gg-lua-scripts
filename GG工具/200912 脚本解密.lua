if gg.alert("是否加入群聊","是","否") ~=1 then  os.exit() end gg.alert("已复制群号\n欢迎你的加入！！！")gg.copyText(973671359)

local g = {}
g.last = gg.getFile()
ZygtxLOG = nil
local configFile = "/storage/emulated/0/Android/ZygtxLOG.cfg"
g.data = loadfile(configFile)
if g.data ~= nil then
  ZygtxLOG = g.data()
  g.data = nil
end
if ZygtxLOG == nil then
  ZygtxLOG = {g.last, g.last:gsub('/[^/]+$', '')}
end
ZygtxLOG=gg.prompt({
  "选择解密文件",
  "选择解密路径",
  "记录函数调用",----3
  "转储代码加载",----4
  "退出函数跳过",----5
  "网络验证跳过",----6
  "函数调试模式",----7
  "选择转储门限",----8
},
ZygtxLOG,
{"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","text"})
if ZygtxLOG == nil then os.exit() end
if loadfile(ZygtxLOG[1])==nil then
  gg.alert("脚本读取失败")
  os.exit()
end
gg.saveVariable(ZygtxLOG, configFile)
local ignoreHook="getLine;isVisible;setVisible;getFile;getResultsCount;gg.addListItems"
local ignoreInvoke="getResultCount;sleep;searchNumber;searchAddress;"
local TSignore="rep,format,insert,char,clock,alert,toast"
local file=ZygtxLOG[1]
local outpath=ZygtxLOG[2].."/"
local filename=ZygtxLOG[1]:match("[^/]+$")
local test = loadfile(file)
local tr = {}
math.randomseed(os.time())
local time=0
local sel = select
local typ = type
local str = tostring
local echo = print
local io_open = io.open
local ggg = {}
for k, v in pairs(gg) do
  ggg[k] = v
end
ggg.prompt({"点击确定"},{file},{"file"})



if true then--debug.traceback
  local t="stack traceback:\n	"..ZygtxLOG[1]..":13 in main chunk\n	[Java]: in ?"
  local orig = debug.traceback
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return t
  end
  tr[hook] = orig
  debug.traceback = hook
end



if true then--debug.getinfo
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = ZygtxLOG[1],
      ['source'] = '@'..ZygtxLOG[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..ZygtxLOG[1],
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
    elseif str(arg[1])=="3" then return nil
    elseif str(arg[1]):find("storage") then return cg[2]
    elseif str(arg[1])=="2" then x=ggg.alert("选择","第二次","第一次")
      if x==2 then result=nil end
    else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end



if true then--tostring
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
      else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
          else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
        else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      arg[1] = tr[arg[1]]
    else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end



if true then--os.clock
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end



ttt=0
if true then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",345),"=")
    else
      ttt=0
      return orig("==","=")
    end
  end
  tr[hook] = orig
  string.gmatch = hook
end



if true then
  local orig = gg.setVisible(false)
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end



if false then
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert(str(arg).."\n"..str(result),"忽略","返回nil","返回随机文件")
    if x==2 then orig(ZygtxLOG[1]..".log.txt","w"):write(string.rep("1",521)):close()
    end
    if x==3 then orig(ZygtxLOG[1]..".log.txt","w"):write(string.rep("1",719)):close()
    end
    return result
  end
  io.open=hook
end



if ZygtxLOG[4] then
  local orig = load
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    local data=str(arg[1])
    if result and string.len(data)>tonumber(ZygtxLOG[8])
    then
      time=time+1
      f=io_open(outpath.."[LOAD_"..time.."]"..filename..".lua","w")
      f:write(data)
      f:close()
    end
    return result
  end
  tr[hook] = orig
  load = hook
end



if ZygtxLOG[3] then
  local file = outpath.."[拦截log]"..filename..'.log'
  local f = io_open(file, 'w')
  f:write("--Hook Start\n")
  f:close()
  local names = {
    allocatePage = {'^PROT_', '0x%X'},
    copyMemory = {'0x%X', '0x%X'},
    dumpMemory = {'0x%X', '0x%X'},
    gotoAddress = {'0x%X'},
    setRanges = {'^REGION_'},
    searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
    searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
    searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
    editAll = {nil, '^TYPE_'},
    loadList = {nil, '^LOAD_'},
    saveList = {nil, '^SAVE_'},
  }
  names.refineAddress = names.searchAddress
  names.refineNumber = names.searchNumber
  local rets = {
    alert = 1,
    prompt = 1,
    choice = 1,
    multiChoice = 1,
  }
  local toFlags = function (check, value)
    local ret = ''
    for k, v in pairs(ggg) do
      if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then ret = ret..' | ' end
        ret = ret..'gg.'..k
        value = value & ~v
      end
    end
    if ret == '' or value ~= 0 then
      if ret ~= '' then ret = ret..' | ' end
      ret = ret..value
    end
    return ret
  end
  local f = io_open(file, 'a')
  local write=function(content)
    if nowfunc~="clearResults" or nowfunc~=lastfunc then
      f:write(content):flush()
    end
  end
  for i, v in pairs(ggg) do
    if typ(v) == 'function' and ignoreHook:match(i)==nil
    then
      local orig = v
      local name = i
      local hook = 1
      hook = function (...)
        local arg = {...}
        lastfunc=nowfunc
        nowfunc=name
        if i == 'choice' then
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            if arg~=nil and ret~=nil then
              write(" -- ")
              write(arg[1][ret])
              write(" --\n")
            end
            return ret
          end
        end
        if i == 'multiChoice' then
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            local num={}
            for w in string.gmatch(str(ret), "%[(%d+)%] =") do
              if arg~=nil and w~=nil then
                table.insert(num,arg[1][tonumber(w)])
              end
            end
            for j, a in ipairs(num) do
              if a==nil then
                write(" -- ")
                write(a)
                write(" --\n")
              end
            end
            return ret
          end
        end
        write('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then write(', ') end
          if typ(a) == 'string' then write('"') end
          local b = a
          if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
            local check = names[name][j]
            if check:sub(1, 1) ~= '^' then
              if a == 0 or a == -1 then
                b = a
              else
                b = check:format(a)
              end
            else
              b = toFlags(check, a)
            end
          end
          b = str(b)
          write(b)
          if typ(a) == 'string' then write('"') end
        end
        write(")")
        write("\n")
        local result = 1
        if ignoreInvoke:match(name) then
          --ggg.toast("跳过函数gg." .. name .. "()")
        elseif name=="getResults" then
          result={{['address'] = 0x00000000,['flags'] = 4,['value'] = 10}}
        else
          result=orig(...)
        end
        return result
      end
      tr[hook] = orig
      gg[i] = hook
    end
  end
end




if ZygtxLOG[7] then
  --list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
  list={["gg"]=gg}
  for a,b in pairs(list) do
    for k,v in pairs(b) do
      local orig=b[k]
      hook=1
      local hook=function(...)
        local arg={...}
        local result=orig(...)
        if #str(arg)>3000 then arg={} end
        if #str(result)>3000 then result="" end
        if TSignore:match(k)==nil then
          local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"
          io_open(ZygtxLOG[1].."xxx","a"):write(dy):close()
          if x==3 then ggg.copyText(dy) end
        end
        return orig(...)
      end
      b[k]=hook
    end
  end
end


if ZygtxLOG[5] then
  local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    ggg.toast("已跳过os.exit的执行")
    return true
  end
  tr[hook] = orig
  os.exit = hook
end


if ZygtxLOG[6] then
  local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
    elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
    elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
    elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}
    end
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end



return test()
