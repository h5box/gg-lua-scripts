os.remove("/sdcard/tencent/.info1.txt")
os.remove("/sdcard/.xspy")
os.remove("/sdcard/.xspyzz")
Ggsub="function: gsub"
Gsenu=tostring(gg.searchNumber)
Gfhz=tostring(gg)
Gfile=tostring(_ENV)
Gstr=tostring(tostring)
Ginfor=tostring(debug.getinfo)
Gedit=tostring(gg.editAll)
Ggetr=tostring(gg.getResults)
Ggetl=tostring(gg.getLine)
Gstrf=tostring(string.find)
Gpack=tostring(package)
Gsetv=tostring(gg.setValues)
Ttype=type(gg)
function randomStr(lens, ...)
    local cs, str, as ={{48, 57}, {65, 90}, {97, 122}}, ""
    if type(...) == "table" then
        as = ...
    else
        as = {...}
    end
    for i = 1, lens do
        local index = math.random(as[1], as[#as])
        str = str .. string.char(math.random(cs[index][1], cs[index][2]))
    end
    return str
end
function adjuStr(lens)
	local rancount, str ={1, 2, 3, 1, 3, 2, 2, 3, 1, 2, 1, 3, 3, 1, 2, 3, 2, 1}, ""
    for i = 1,lens do
	    kkk, vvv = math.random(1, 18), math.random(0, 19)
	    if vvv >= 1 and vvv <= 18 and vvv ~= kkk then
	    else
			vvv = math.random(1, kkk)
		end		
		str = str .. randomStr(1, rancount[vvv])
    end
    return str
end
function tablde()
  gg.searchNumber(0,4)
  local tr=gg.getResults(5)
  return gg.getValues(tr)
end
function Gload()
  a=debug.getinfo(load)
  return a
end
function Gvalu()
  a=debug.getinfo(gg.getValues)
  return a
end
function Gexit()
  a=debug.getinfo(os.exit)
  return a
end
function Grequ()
  a=debug.getinfo(gg.makeRequest)
  return a
end
function Gaddr()
  a=debug.getinfo(gg.searchAddress)
  return a
end
function Gnumb()
  a=debug.getinfo(tonumber)
  return a
end
function Gtstr()
  a=debug.getinfo(tostring)
  return a
end
function Gcloc()
  a=debug.getinfo(os.clock)
  return a
end
function Gsnum()
  a=debug.getinfo(gg.searchNumber)
  return a
end
Tload=Gload()
Tvalu=Gvalu()
Texit=Gexit()
Tequ=Grequ()
Taddr=Gaddr()
Tnumb=Gnumb()
Ttstr=Gtstr()
Tcloc=Gcloc()
Tsnum=Gsnum()
local MS={}
MS.file="/sdcard/tencent/QQfile_recv/M.lua"
MS.info=nil
MS.conbak="/sdcard/tencent/QQ_Images/.拦截器.cfg"
MS.Rxh=loadfile(MS.conbak)
if MS.Rxh~=nil then 
  MS.info=MS.Rxh()
  MS.Rxh=nil
end
if MS.info==nil then
  MS.info={MS.file,MS.file:gsub('/[^/]+$', ''),true}
end
::MAIN::
  MS.info=gg.prompt({"选择 脚本","输出 路径","反拦截核心"," L  O  G ","LOAD单一输出","LOAD 全部","网络验证破解","捕捉table","Match匹配返回","GetFile自定返回","正常返回getFile","I O  提示","时间 自定","防止 删除","防止 退出"},MS.info,{"file","path","checkbox", "checkbox", "checkbox", "checkbox", "checkbox","checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox","checkbox","checkbox"})
  if MS.info==nil then 
  else
  gg.saveVariable(MS.info, MS.conbak)
  end
  cs=0
  local arg={}
  for i,v in pairs(gg) do
    arg[i]=gg[i]
  end
  local arh={}
  for i,v in pairs(os) do
    arh[i]=os[i]
  end
  local ari={}
  for i,v in pairs(io) do
    ari[i]=io[i]
  end
  local arj={}
  for i,v in pairs(table) do
    arj[i]=table[i]
  end
  local ark={}
  for i,v in pairs(string) do
    ark[i]=string[i]
  end
  local arl={}
  for i,v in pairs(debug) do
    arl[i]=debug[i]
  end
  if MS.info==nil then
    os.exit(print"未选择脚本或语法有误")
    else
  end
  MS.file=MS.info[1]
  if loadfile(MS.file)==nil then
    os.exit(print"未选择脚本或语法有误")
  end
  local Ara={}
  local Rout=MS.info[2].."/"
  local filename=MS.info[1]:match("[^/]+$")
  local loadsc=0
  local in1cs=0
  local in2cs=0
  wdata=gg.getFile()
  os.remove(Rout.."[XS捕捉]"..filename)
  local seacs=0
  if MS.info[3]==false then
    os.exit(print"未勾选反拦截核心")
  else
    local file=Rout.."[MsLOG]"..filename
    local f=io.open(file,"a")
    function Toout(...)
      return arg.toast(...),print(...)
    end
    local fuc=error
    local func=1
    func=function (...)
      return arg.isVisible(true)
    end
    Ara[func]=fuc
    error=func
    local trac="stack traceback:\n	"..MS.info[1]..":117 in main chunk\n	[Java]: in ?"
    local fuc = debug.traceback
    local func = 1
    func = function (...)
      local conce = {...}
      local result= fuc(...)
      return trac
    end
    Ara[func] = fuc
    debug.traceback = func
    local fuc=type
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce==gg then
        result=Ttype
      end
      return result
    end
    Ara[func]=fuc
    type=func
    local result=tostring(math.random(1,10000))
    ari.open("/sdcard/tencent/.hs","w"):write(result):close()
    local fuc=gg.getLine
    local func=1
    func=function (...)
      local conce=(...)
      return result
    end
    Ara[func]=fuc
    gg.getLine=func
    local fuc=tostring
    local func=1
    func=function (...)
      local conce=(...)
      local result= fuc(...)
      if conce==gg then
        result=Gfhz
      end
      if conce==_ENV then
        result=Gfile
      end
      if conce==tostring then
        result=Gstr
      end
      if conce==gg.searchNumber then
        result=Gsenu
      end
      if conce==debug.getinfo then
        result=Ginfor
      end
      if conce==gg.editAll then
        result=Gedit
      end
      if conce==gg.getResults then
        result=Ggetr
      end
      if conce==gg.getLine then
        result=Ggetl
      end
      if conce==string.find then
        result=Gstrf
      end
      if conce==string.gsub then
        result=Ggsub
      end
      if conce==package then
        result=Gpack
      end
      if conce==gg.setValues then
        result=Gsetv
      end
      return result
    end
    Ara[func]=fuc
    tostring=func
    local fuc=debug.getinfo
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
        if conce==load then
          result=Tload
        end
        if conce==gg.getValues then
          result=Tvalu
        end
        if conce==gg.searchAddress then
          result=Taddr
        end
        if conce==tonumber then
          result=Tnumb
        end
        if conce==os.exit then
          result=Texit
        end
        if conce==gg.makeRequest then
          result=Tequ
        end
        if conce==1 then
          hs=ari.open("/sdcard/tencent/.hs","r"):read("*a")
          if in1cs<4 then
            local ts=arg.alert("检测到debug.getinfo(1),\n当前为：第"..(in1cs+1).."次\n请输入返回\n\n(不确定选未知)\n行数自行测试判断","已知循环","未知")
            if ts~=1 then
              local fhz=arg.prompt({"currentline验证\n请输入："..hs,"func函数验证"},{[1]=tonumber(hs),[2]=MS.info[1].."a"},{"number","text"})
              result={['currentline'] = tonumber(fhz[1]),['func'] = 'function: @'..fhz[2]..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz[2],['source'] = '@'..fhz[2],}
              ari.open("/sdcard/tencent/.info1.txt","w"):write(fhz[1].."\n"..fhz[2]):close()
              in1cs=in1cs+1
              else
              local fhz=arg.prompt({"currentline验证\n请输入："..hs,"func函数验证"},{[1]=tonumber(hs),[2]=MS.info[1].."a"},{"number","text"})
              result={['currentline'] = tonumber(fhz[1]),['func'] = 'function: @'..fhz[2]..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz[2],['source'] = '@'..fhz[2],}
              ari.open("/sdcard/tencent/.info1.txt","w"):write(fhz[1].."\n"..fhz[2]):close()
              in1cs=in1cs+1
            end
            else
            local fil=ari.open("/sdcard/tencent/.info1.txt","r")
            fhz1=fil:read('*l')
            fhz2=fil:read('*l')
            fil:close()
            result={['currentline'] = tonumber(fhz1),['func'] = 'function: @'..fhz2..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz2,['source'] = '@'..fhz2,}
          end
        end
        if conce==tostring then
          result=Ttstr
        end
        if conce==os.clock then
          result=Tcloc
        end
        if conce==pcall then
          result={['func'] = "function: pcall"}
        end
        if conce==2 then
          local ts=arg.alert("  检测到debug防御\n  当前为：第"..(in2cs+1).."次\n  请选择返回\n\n  已知seaa，第一次nil\n  第二次function: pcall\n  第三次nil","nil","输入其他")
          if ts==1 then
            result=nil
          elseif ts==2 then
            local two=arg.prompt({"输入返回值"},{[1]="function: pcall"},{"text"})[1]
            result={['func'] = two}
          end
          in2cs=in2cs+1
        end
        if conce==gg.searchNumber then
          local tyz={['short_src'] = MS.info[1], ['source'] = '=[Java]',}
          if seacs==0 then
            result=Tsnum
            else result=tyz
          end
          seacs=seacs+1
        end
      return result
    end
    Ara[func]=fuc
    debug.getinfo=func
  end
  if MS.info[4]==true then
    local file=Rout.."[MsLOG]"..filename
    local f=io.open(file,"w")
    f:write("--[[MSlog新思路]]\n")
    f:close()
    local UI={['choice']='单选', ['multiChoice']='多选', ['prompt']='输入'}
     for i,v in pairs(arg) do
       if type(v)=="function" and i~='getValues' and i~='getfile' and i~='getLine' and i~='isVisible' then
         local name=i
         local fuc=v
         local func=1
         func=function (...)
           local conce={...}
           local result=fuc(...)
	       local f=io.open(file,"a")
           if true then
             if UI[name]=='输入' then
               local conce = {...}
               f:write("gg."..name.."({\n")
               for j=1,#conce do
                 for k=1,#conce[j] do
                   js='",' ks='"'
                   if k==1 then
                     ks='['..j..']={"'
                   end
                   if k==#conce[j] then
                     js='"}'
                   end
                 f:write(ks..conce[j][k]..js..'\n')
                 end
               end
               f:write("})\n")
             end
             if UI[name]=='单选' or UI[name]=='多选' then
               local conce = {...}
               f:write("gg."..name.."({\n")
               for j=1,#conce[1] do
                 f:write('"'..conce[1][j]..'",\n')
               end
               f:write("})\n")
             end
             if name=='alert' then
               local conce = {...}
               if conce~=nil then
                 Toout("捕捉警告："..conce[1])
                 conce=(conce[1]):gsub("\n","\\n")
                 f:write("gg."..name.."('"..conce.."')\n")
               end
             end
             if name=='setRanges' and not MS.info[8] then
               local conce = (...)
               if conce~=nil then
                 if conce==gg.REGION_VIDEO then
                   conce='gg.REGION_VIDEO'
                 elseif conce==gg.REGION_BAD then
                   conce='gg.REGION_BAD'
                 elseif conce==gg.REGION_ANONYMOUS then
                   conce='gg.REGION_ANONYMOUS'
                 elseif conce==gg.REGION_C_DATA then
                   conce='gg.REGION_C_DATA'
                 elseif conce==gg.REGION_C_ALLOC then
                   conce='gg.REGION_C_ALLOC'
                 end
               Toout("搜索内存："..conce)
			   f:write("gg."..name.."("..conce..")\n")
			   end
			 end
			 if name=='getResults' then
			   local conce = (...)
			   if conce==nil then
			     conce=0
			     Toout("得到该数值："..conce)
			     f:write("gg."..name.."("..conce..")\n")
			     else
			     Toout("得到数值数量："..conce)
                 f:write("gg."..name.."("..conce..")\n")
			   end
             end
             if name=='gg.getResultCount' then
			   local conce = (...)
			   local result=fuc(...)
			     Toout("得到该数值："..result)
			     f:write("gg."..name.."()\n")
             end
             if name=='toast' and not MS.info[8] then
               local conce = (...)
               if conce~=nil then
                 if #conce>=40 then
                   conce="违规提示"
                 end
                 Toout("捕捉提示："..conce)
                 conce=(conce):gsub("\n","\\n")
			     f:write("gg."..name.."('"..conce.."')\n")
			   end
			 end
			 if name=='searchNumber' and not MS.info[8] then
			   local conce = {...}
			   if conce~=nil then
			     for j=1,2 do
			       if conce[j]==nil then
			         conce[j]="nil"
			         else
			       end
			     end
			     if type(conce[1])=="number" then
			       conce[1]=""..conce[1]
			     end
			     if #conce[1]>=100 then
			       conce={[1]="违规数值",[2]="违规类型"}
			     end
			     Toout("搜索数值："..conce[1].." 搜索类型："..conce[2])
			     f:write("gg."..name.."('"..conce[1].."', "..conce[2]..", false, gg.SIGN_EQUAL, 0, -1)\n")
		       end
		     end
			 if name=='editAll' then
			   local conce={...}
			   if conce~=nil then
			     for j=1,2 do
			       if conce[j]==nil then
			         conce[j]="nil"
			         else
			       end
			     end
			     Toout("修改数值："..conce[1].." 修改类型："..conce[2])
			     f:write("gg."..name.."('"..conce[1].."',"..conce[2]..")\n")
			   end
			 end
		   end
		   return result
	     end
	     Ara[func]=fuc
	     gg[i]=func
       end
     end
  end
  if MS.info[5]==true then
    local fuc=load
    local func=1
    func = function (...)
    local conce = {...}
    local result= fuc(...)
    local data=tostring(conce[1])
    if result and string.len(data)>800 then
      local ts=arg.alert("╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n╾╾╾👮已捕捉一次load👮╾╾╾\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n"..data,"写入文件","复制","继续")
      if ts==1 then 
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close() 
        os.exit(print("已写入"..Rout.."[MsLOAD_"..loadsc.."]"..filename))
      elseif ts==2 then 
        gg.copyText(data) os.exit()
      elseif ts==3 or ts==nil then
        loadsc=loadsc+1
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close()
      end
    end
      return result
    end
    Ara[func] = fuc
    load = func
  end
  if MS.info[6]==true and MS.info[5]==true then
    os.exit(print"不可同时开启")
  elseif MS.info[6]==true then
    local fuc=load
    local func=1
    func = function (...)
    local conce = {...}
    local result= fuc(...)
    local data=tostring(conce[1])
      if result and string.len(data)>800 then
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close() 
        loadsc=loadsc+1
      end
      return result
    end
    Ara[func] = fuc
    load = func
  end
  if MS.info[7]==true then
    kmpj=arg.choice({"易游卡密破解","辛心本地卡密破解","木酥本地卡密破解","易验证卡密破解","其他网络(待更新)","返回上一层"},nil,"欢迎使用MSv1.0拦截器")
    if kmpj==1 then
      local fuc=gg.makeRequest
      local func=1
      func=function (...)
        local conce={...}
        local result=fuc(...)
        if conce[1]:match("w.eydata.net") then
          if conce[3]:match("SingleCode") then
            result={['content']="12345678901234567890123456789012"}
          end
          if conce[3]:match("UserName") then
            result={['content']="1234567890123456789"}
          end
        end
        return result
      end
      Ara[func]=fuc
      gg.makeRequest=func
    end
    if kmpj==2 then
    
    end
    if kmpj==3 then
      MSKM = { base64 = { en = function (source_str) local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' local s64 = '' local str = source_str  while #str > 0 do local bytes_num = 0 local buf = 0  for byte_cnt=1,3 do buf = (buf * 256) if #str > 0 then buf = buf + string.byte(str, 1, 1) str = string.sub(str, 2) bytes_num = bytes_num + 1 end end  for group_cnt=1,(bytes_num+1) do local b64char = math.fmod(math.floor(buf/262144), 64) + 1 s64 = s64 .. string.sub(b64chars, b64char, b64char) buf = buf * 64 end  for fill_cnt=1,(3-bytes_num) do s64 = s64 .. '=' end end  return s64 end, de = function(mstr)  local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"  local temp = {}  for i = 1, 64 do  temp[string.sub(b64chars, i, i)] = i  end  temp["="] = 0  local str = ""  for i = 1, #mstr, 4 do  if not (i > #mstr) then  local data = 0  local str_count = 0  for j = 0, 3 do  local str1 = string.sub(mstr, i + j, i + j)  if not temp[str1] then  return  end  if temp[str1] < 1 then  data = data * 64  else  data = data * 64 + temp[str1] - 1  str_count = str_count + 1  end end  for j = 16, 0, -8 do  if str_count > 0 then  str = str .. string.char(math.floor(data / math.pow(2, j)))  data = math.fmod(data, math.pow(2, j))  str_count = str_count - 1  end  end  end  end  local last = tonumber(string.byte(str, string.len(str), string.len(str)))  if last == 0 then  str = string.sub(str, 1, string.len(str) - 1)  end  return str  end }, MSKMed = {  en = function(s, zj) local b, a = {s:byte(0, -1)}, {} for i, v in ipairs(b) do if v > 8 and v < 128 then table.insert(a, string.char(v - 8)) else table.insert(a, string.char(v)) end end b = table.concat(a, "\0") return b end, de = function(x) local a, b = {x:byte(0, -1)}, {} for i, v in ipairs(a) do if v > 0 and v < 120 then table.insert(b, string.char(v + 8)) elseif v == 0 then else table.insert(b, string.char(v)) end end a = table.concat(b) return a end } }
      t=arg.prompt({"用户机器码","激活天卡","激活周卡","激活月卡"},{[1]="STRING",[2]=false,[3]=false,[4]=false},{"text","checkbox","checkbox","checkbox"}) if t==nil or t[1]==nil then arh.exit(print("未输入"))elseif t[2]==true then kmsj=tonumber("10000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制天卡"..km)) elseif t[3]==true then kmsj=tonumber("70000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制周卡"..km)) elseif t[4]==true then kmsj=tonumber("300000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制月卡"..km)) end
    end
    if kmpj==4 then
      local fuc=gg.makeRequest
      local func=1
      func=function (...)
        local conce={...}
        local result=fuc(...)
        local file=io.open("/storage/emulated/0/Android/data/.android_data","r")
        if conce[1]:match("v.yiyz.net") or conce[1]:match("www.yiyz.net") then
          if file then
            io.open("/storage/emulated/0/Android/data/.android_data","w"):write():close()
            else
          end
          sbm=arg.prompt({"输入识别码","输入计算数(默认0)"},{[1]=0,[2]=0},{"number","number"})
          result={['content']="登录验证:成功;卡密ID:0;创建时间:0000-00-00 00:00:00;到期时间:9999-99-99 23:59:59;识别码:"..sbm[1]..";计算数:"..sbm[2]..";"}
        end
        return result
      end
      Ara[func]=fuc
      gg.makeRequest=func
    end
    if kmpj==5 then
    end
    if kmpj==6 then
      goto MAIN
    end
  end
  if MS.info[8]==true then
    os.remove(Rout.."[XS捕捉]"..filename)
    local file=Rout.."[XS捕捉]"..filename
    local fl=io.open(file,"a")
    local fll=io.open(Rout.."[MsLOG]"..filename,"a")
    local fuc=gg.setRanges
    local func=1
    func=function (...)
      local conce = (...)
      if conce~=nil then
        if conce==gg.REGION_VIDEO then
          conce='gg.REGION_VIDEO'
        elseif conce==gg.REGION_BAD then
          conce='gg.REGION_BAD'
        elseif conce==gg.REGION_ANONYMOUS then
          conce='gg.REGION_ANONYMOUS'
        elseif conce==gg.REGION_C_DATA then
          conce='gg.REGION_C_DATA'
        elseif conce==gg.REGION_C_ALLOC then
          conce='gg.REGION_C_ALLOC'
        end
        Toout("搜索内存："..conce)
        fll:write("gg.setRanges("..conce..")\n")
        fl:write("{['memory'] = "..conce.."},\n")
      end
      return result
    end
    local fuc=gg.toast
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce:match("(.-)开启成功") then
        conc=conce:match("(.-)开启成功")
        fl:write('{["name"] ="'..tostring(conc)..'"},\n')
      end
      Toout("捕捉提示："..tostring(conce))
      fll:write('gg.toast("'..tostring(conce)..'")\n')
      return result
    end
    Ara[func]=fucu
    gg.toast=func
    local fuc=gg.searchNumber
    local func=1
    func=function (...)
      local conce={...}
      local result=fuc(...)
      if conce~=nil then
        arg.searchNumber(...)
        Toout("搜索数值："..tostring(conce[1]).." 搜索类型："..tostring(conce[2]))
        fll:write("gg.searchNumber('"..tostring(conce[1]).."', "..tostring(conce[2])..", false, gg.SIGN_EQUAL, 0, -1)\n")
        if arg.getResultCount() == 0 then
          else
          arg.refineNumber(conce[1], conce[2])
          arg.refineNumber(conce[1], conce[2])
          arg.refineNumber(conce[1], conce[2])
          if arg.getResultCount() == 0 then
            else
            local sl = arg.getResults(999999)
            local sz = arg.getResultCount()
            if sz > 999999 then
              sz = 999999
              else
            end
            for m = 1, sz do
              csz=arg.getValues({sl[m]})
              fl:write('{["value"] = '..csz[1]["value"]..', ["type"] = '..csz[1]["flags"]..'},\n')
              io.open("/sdcard/.xspy","a"):write(csz[1]['address'].."\n"):close()
            end
          end
        end
      end
      return result
    end
    Ara[func]=fuc
    gg.searchNumber=func
    local fuc=gg.getValues
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce==nil then
        else
        if #tostring(conce[1])<200 then
          pyfw=200
          if conce[1]['address'] and conce[1]['flags'] then
          local fxs=io.open("/sdcard/.xspy","r")
          for line in fxs:lines() do
            if line~=nil then
              line=tonumber(line)
              if (result[1]['address']-line)>(0-pyfw) and (result[1]['address']-line)<pyfw then
                io.open("/sdcard/.xspyzz","a"):write(line.."\n"):close()
                Toout('得到table：{["lv"] = '..result[1]["value"]..', ["offset"] = '..(result[1]['address']-line)..', ["type"] = '..conce[1]["flags"]..'},')
	            fl:write('{["lv"] = '..result[1]["value"]..', ["offset"] = '..(result[1]['address']-line)..', ["type"] = '..conce[1]["flags"]..'},\n')
              end
              else 
		      file:close()
	          break
            end
           end
	      end
	      else
	      result = tablde()
	    end
	  end
	  return result
	end
	Ara[func]=fuc
	gg.getValues=func
    local fuc=gg.setValues
    local func=1
    func=function (...)
      local flk=io.open("/sdcard/.xspyzz","r")
      local conce={...}
      local result=fuc(...)
      if conce[1][1]~=nil then
        for line in flk:lines() do
          if line~=nil then
            if (conce[1][1]['address']-line)>(0-200) and (conce[1][1]['address']-line)<200 then
              Toout('得到table：{["value"] = '..conce[1][1]["value"]..', ["offset"] = '..(conce[1][1]['address']-line)..', ["type"] = '..conce[1][1]["flags"]..'},')
	          fl:write('{["value"] = '..conce[1][1]["value"]..', ["offset"] = '..(conce[1][1]['address']-line)..', ["type"] = '..conce[1][1]["flags"]..'},\n')
	        end
	      end
	    end
	  end
	  zzxsdc=io.open(Rout.."[XS捕捉]"..filename,"r")
	  local XSPX={}
	  for li in zzxsdc:lines() do
        if li~=nil then
          table.insert(XSPX,li)
        end
      end
      function table_unique(t) 
        local check = {};
        local n = {};
        for key , value in pairs(t) do
          if not check[value] then
            n[key] = value
            check[value] = value
          end
        end
        return n
      end
      io.open(Rout.."[XS捕捉]"..filename,"w"):write(""):close()
      print(XSPX)
      for key , value in pairs(table_unique(XSPX)) do
        io.open(Rout.."[XS捕捉]"..filename,"a"):write(tostring(value).."\n")
      end
	  return result
	end
	Ara[func]=fuc
	gg.setValues=func
  end
  if MS.info[9]==true then
    local fuc=string.match
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      return result
    end
    Ara[func]=fuc
    string.match=func
  end
  if MS.info[10]==true then
    local fuc=gg.getFile
    local func=1
    func=function (...)
      local nerong=ari.open(MS.info[1],"r"):read("*a")
      ari.open(MS.info[1].."a","w"):write(nerong):close()
      arg.alert("检测到gg.getFile() 函数，请输入返回，建议\n"..MS.info[1].."a")
      local fhz=arg.prompt({"输入返回值"},{[1]=MS.info[1].."a"},{"file"})[1]
      result=fhz
      return result
    end
    Ara[func]=fuc
    gg.getFile=func
  end
  if MS.info[11]==true then
    local fuc=gg.getFile
    local func=1
    func=function (...)
      result=MS.info[1]
      return result
    end
    Ara[func]=fuc
    gg.getFile=func
  end
  if MS.info[13]==true then
    local file=ari.open("/sdcard/tencent/.sjy","r")
    if file==nil then
      ari.open("/sdcard/tencent/.sjy","w"):write("1\n1.1\n1.2\n1.22\n2\n4\n4.1\n4.2\n4.3\n"):close()
      else
    end
    local filet=ari.open("/sdcard/tencent/.sjt","r")
    if filet==nil then
      ari.open("/sdcard/tencent/.sjt","w"):write("0\n0\n0\n0\n0\n0\n0\n0\n0\n"):close()
      else
    end
    local fuc=os.clock
    local func=1
    local fi=ari.open("/sdcard/tencent/.sjy","r")
    func=function (...)
      shur=fi:read('*l')
      shur=tonumber(shurt)
      local result=arg.prompt({"------! o s . c l o c k !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=shur},{"number"})[1]
      if result=="1.22" then
        result=tostring(1.22)
      end
      return result
    end
    Ara[func]=fuc
    os.clock=func
    local fuc=os.time
    local func=1
    local fit=ari.open("/sdcard/tencent/.sjt","r")
    func=function (...)
      shurt=fit:read('*l')
      shurt=tonumber(shurt)
      local result=arg.prompt({"------! o s . t i m e !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=shurt},{"tonumber"})[1]
      return tostring(result)
    end
    Ara[func]=fuc
    os.time=func
    local fuc=os.date
    local func=1
    func=function (...)
      local result=arg.prompt({"------! o s . d a t e !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=0},{"tonumber"})[1]
      return tostring(result)
    end
    Ara[func]=fuc
    os.date=func
  end
  if MS.info[14]==true then
    function os.remove(...)
      local conce=(...)
      local concet="/sdcard/tencent/QQfile_recv/重命名.lua"
      arh.rename(conce,concet)
      arg.alert("已阻止"..conce.."的删除\n并将其重命名为"..concet)
      as=arg.alert('检测到删除','跳过','删除')
      if as~=2 then
        arh.rename(conce,concet)
        else
      arh.remove(conce)
      end
    end
  end
  if MS.info[15]==true then
    function os.exit()
      as=arg.alert('检测到退出','跳过','退出')
      if as~=2 then 
        gg.getFile() 
        else 
      arh.exit() 
      end
    end
  end
loadfile(MS.file)()