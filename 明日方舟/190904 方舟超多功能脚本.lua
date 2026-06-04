--local FRAME_VISION = '2.2' 
local WRITER = 'zzer' 
local GG_VISION = '5.65.1' 
local ANDROID = '5.1.1-ROOT ' 
local GGLUA_WEB = 'http://gg.zzer.xyz' 
local FIRST_LAST= '18/9/20-18/10/19'   
_z={ search={{code=' ',type=' ',model=' ',count=0,time=''},time=0,count=0}, get_res={}, edit={{{value='',address='',type='',freeze=true,freezeO='$nil',save=false}},value=' ',address=' ',type=' '}, region='默认', info={} }   function tcall(loadoj)   if loadoj==nil then     loadoj=' '   end   fun=load(loadoj)   if(fun)then     fun()   end end  function zsilp(strn,chars)      strSun = {} ongsubs,gsubs = string.gsub(strn,chars,chars)   for i = 0, gsubs do      wi=string.find(ongsubs,chars);     if(wi == nil)then wi = -1     end     acc=string.sub(ongsubs,1,wi) table.insert(strSun,(string.gsub(acc,chars,'')) ); ongsubs=string.sub(ongsubs,wi+1,-1) ;   end   return strSun end  function zluac()  local t={'编译完成','文件在>/sdcard/1.luac'}   local lc=gg.prompt({'选择你要进行编译的脚本'},{[1]='/sdcard/'}, {[1] = 'file'})     if lc==nil then   os.exit()     end      if lc[1]=='/sdcard/' then   gg.alert("No chiose file！")      else   local f = io.open(lc[1],"r") local all = f:read("*a")   z_f="function zdc() "..all.." end  zx=string.dump(zdc,false)  f2 = io.open(\"sdcard/1.luac\",\"w\")  f2:write(zx)  f2:close()"   cf = io.open("/sdcard/Compilation tool by zzer","w")   cf:write(z_f) cf:close()   pcall( loadfile('/sdcard/Compilation tool by zzer')) os.remove('/sdcard/Compilation tool by zzer') f:close() gg.alert(t[1],t[2])   end   end  function getNetDate(host)   if(host==nil)then     host='http://www.gameguardian.net'   end   netTime=(gg.makeRequest(host))  return string.sub(netTime.date,1,-4) end function getIp()  return gg.makeRequest('http://zzer.xyz/ip.php').content; end      function checkType(stype,ojname)     if(stype=='DW' or stype=='D' )then ojname =gg.TYPE_DWORD;      else if(stype=='DO' or stype=='E' )then ojname=gg.TYPE_DOUBLE; else if(stype=='F')then  ojname=gg.TYPE_FLOAT; else  if(stype=='B')then    ojname=gg.TYPE_BYTE;   else    if(stype=='W')then      ojname=gg.TYPE_WORD;     else      if(stype=='X')then ojname=gg.TYPE_XOR; else if(stype=='Q')then  ojname=gg.TYPE_QWORD; else  if(stype=='A' or stype ==nil )then   ojname=gg.TYPE_AUTO;  end end end     end   end end end      end     return ojname   end  function setRegion(thisR) local onRegion={} doRegion=zsilp(thisR ,'|') for i=1,#doRegion  do  if(doRegion[i]=='B')then table.insert(onRegion,'gg.REGION_BAD') else if(doRegion[i]=='A')then  table.insert(onRegion,'gg.REGION_ANONYMOUS') else if(doRegion[i]=='As')then    table.insert(onRegion,'gg.REGION_ASHMEM')   else if(doRegion[i]=='Ca')then      table.insert(onRegion,'gg.REGION_C_ALLOC')     else if(doRegion[i]=='Cb')then table.insert(onRegion,'gg.REGION_C_BSS') else if(doRegion[i]=='Cd')then  table.insert(onRegion,'gg.REGION_C_DATA') else if(doRegion[i]=='Ch')then   table.insert(onRegion,'gg.REGION_C_HEAP')  else if(doRegion[i]=='Xa')then     table.insert(onRegion,'gg.REGION_CODE_APP')    else if(doRegion[i]=='Xs')then table.insert(onRegion,'gg.REGION_CODE_SYS')      else if(doRegion[i]=='J')then table.insert(onRegion,'gg.REGION_JAVA') else if(doRegion[i]=='Jh')then   table.insert(onRegion,'gg.REGION_JAVA_HEAP')  else if(doRegion[i]=='O')then    table.insert(onRegion,'gg.REGION_OTHER')   else if(doRegion[i]=='PS')then      table.insert(onRegion,'gg.REGION_PPSSPP')     else if(doRegion[i]=='S')then table.insert(onRegion,'gg.REGION_STACK')      end     end   end  end end      end    end  end end end     end   end end end      end     if doRegion~=nil then  doRegion=table.concat(onRegion,' | ')   return  pcall(load("gg.setRanges\(".. doRegion .. "\)"))  end end function c_R()  local R ={x,y}    function R:In(o) o=o or {} setmetatable(o,self) self._index=self return o     end  return R  end    function _box_(_z,isSave)     local box = {}     function box:c()     return gg.clearResults()     end     function box:s(str,get,doBefore,doAfter)      local d={} if(str~=nil)then  local xs=zsilp(str,'|'); if(doBefore==nil)then doBefore=' ' end if(doAfter==nil)then doAfter=' ' end tcall(doBefore) for s=1,#xs do if isSave~=nil then _z.search[s]={} end Sch=zsilp(xs[s] ,"_") t_type=checkType(Sch[2]) if(Sch[3]==nil)then Sch[3]=' ' end if(string.match(Sch[3],'%$')=='$')then local misk=string.match(Sch[3],'0x.*') if(misk==nil)then misk=-1 end local g_ss=string.gsub(Sch[1],'%?','') local andAdd=zsilp(g_ss,';') if(andAdd[1]~=Sch[1])then      add = gg.getResults(gg.getResultCount()) for i=1,#andAdd do for r=1,#add do  if( string.match(string.format('%#x',add[r].address,16),andAdd[i],-#andAdd[i])==nil )then  d[r]={} d[r].address=add[r].address d[r].flags=add[r].flags else  d[r]={} end    end for z,v in pairs(andAdd) do   for k in pairs(d) do   if d[k].flags==nil or  string.match(string.format('%#x',d[k].address,16),v,-#v) then d[k]=nil  end     end end end gg.removeResults(d) end      if(andAdd[1]==Sch[1])then gg.searchAddress(Sch[1],misk,t_type, gg.SIGN_EQUAL, 0, -1); end if isSave~=nil then _z.search[s].model='searchAddress' end else      gg.searchNumber(Sch[1],t_type, false, gg.SIGN_EQUAL, 0, -1); if isSave~=nil then _z.search[s].model='searchNumber' end end if isSave~=nil then _z.search[s].code=Sch[1] _z.search[s].type=Sch[2] _z.search[s].count=gg.getResultCount() _z.search.count=_z.search[s].count  _z.search.time=s  _z.search[s].time=s end   tcall(doAfter)   if(gg.getResultCount()==0)then    return 'Not Result' end      end   if(get~=nil)then  zs_res=gg.getResults(get);  if isSave~=nil then _z.get_res.much=get end return zs_res end end  end function editCode(str) et={} if(str==nil)then  else Esearch=zsilp(str,'|') for i=1,#Esearch do  Etable=zsilp(Esearch[i],'_')  e_type=Etable[2]  e_type=checkType(e_type)  if(Etable[3]==nil)then    Etable[3]=0  end  et[i] = {} et[i].address = Etable[3] et[i].flags = e_type et[i].value = Etable[1] end return et end      end function box:e(Res,Str,IsFreeze,Save,EBefore,EAfter) if(type(res)~='table')then res,str,isFreeze,save,eBefore,eAfter=zs_res,Res,Str,IsFreeze,Save,EBefore else res,str,isFreeze,save,eBefore,eAfter=Res,Str,IsFreeze,Save,EBefore,EAfter end  editCode(str)   if(eBefore==nil)then eBefore=' ' end if(eAfter==nil)then eAfter=' ' end  if(res~=nil and str~=nil and type(res)=='table')then      if(isFreeze==false or isFreeze==nil)then SetFreeze='$false'      else if(isFreeze==true or isFreeze:match('true')=='true' )then SetFreeze='$true' if(isFreeze~=true)then      local freeO=zsilp(isFreeze,'_') Fromin=zsilp(freeO[2],'~') FromTo=true     end    end     end for zi=1,#res do   if isSave~=nil then _z.edit[zi]={} _z.get_res[zi]={} end editz=false     for z=1,#et do if(et[z].address~=0)then local tab={{address=res[zi].address+et[z].address,flags=res[zi].flags}} local add=gg.getValues(tab) if isSave~=nil then _z.get_res[zi].address=string.format('%#X',res[zi].address,16) _z.get_res[zi].value=add[1].value _z.get_res[zi].flags=add[1].flags end  else if isSave~=nil then _z.get_res[zi].value=res[zi].value _z.get_res[zi].address=string.format('%#X',res[zi].address,16) _z.get_res[zi].flags=res[zi].flags    end end if isSave~=nil then _z.edit[zi][z]={} end et[z].address=res[zi].address+et[z].address et[z].flags=e_type if(SetFreeze=='$true')then et[z].freeze=true  if FromTo==true then et[z].freezeType= gg.FREEZE_IN_RANGE et[z].freezeFrom =Fromin[1] et[z].freezeTo = Fromin[2] if isSave~=nil then _z.edit[zi][z].freezeO= Fromin[1]..'~'..Fromin[2] end end     end   if isSave~=nil then    _z.edit[zi][z].value=et[z].value _z.edit[zi][z].address=string.format("%#X",et[z].address,16)  _z.edit[zi][z].type=e_type _z.edit[zi][z].freeze=SetFreeze _z.edit.value=res[zi].value _z.edit.address=_z.edit[zi][z].address _z.edit.type=e_type    end if save==nil then save='No save' end if isSave~=nil then _z.edit[zi][z].save=save end if(z==#et)then     tcall(eBefore)    if exitz then if isSave~=nil then  _z.edit[1]={}  _z.get_res[1]={}  _z.edit[1][1]={}     end return 1 end    if not editz then gg.setValues(et)     end    if(save==true)then     gg.addListItems(et)   end editCode(str) end      end    end   end tcall(eAfter) end local temp =c_R()     return temp:In(box)   end    z=_box_(_z,isSave)    function zsearch(tSet)  exitz=false; local search='搜索改善'  local regiO ='内存范围'  local getN ='获取结果'  local editN ='修改数据' local  cleaL='清理结果'  local freeZ ='冻结数据' local saveL='保存结果' local control='控制中心'  local sModle='普通(精确)搜索' local echoL='输出日志'   controlT={s={before='',after=''},e={before='',after=''}} local  et={}  _z={ cleanmodel={exp='搜索前清理',model=2}, search={{code=' ',type=' ',model=' ',count=0,time=''},time=0,count=0}, get_res={}, edit={{{value='',address='',type='',freeze=true,freezeO='$nil',save=false}},value=' ',address=' ',type=' '}, region='默认', info={} } if(tSet[regiO] == nil)then   doRegion=nil;    else     setRegion(tSet[regiO])   _z.region=tSet[regiO]  end    if (tSet[cleaL]~=nil)then     if(tSet[cleaL]==1)then clean_sta= 'gg.clearResults()'; clean_end='gg.clearResults()';      _z.cleanmodel.model=tSet[cleaL]  _z.cleanmodel.exp='搜索前修改后清理'  end if(tSet[cleaL]==2)then clean_sta='gg.clearResults()'; clean_end=''; _z.cleanmodel.model=tSet[cleaL]  _z.cleanmodel.exp='搜索前清理' end if(tSet[cleaL]==3)then  clean_sta='';  clean_end='gg.clearResults()'; _z.cleanmodel.model=tSet[cleaL]  _z.cleanmodel.exp='修改后清理' end      if(tSet[cleaL]==4)then    clean_sta=''; clean_end='';   _z.cleanmodel.model=tSet[cleaL]  _z.cleanmodel.exp='不清理' end    else    clean_sta='gg.clearResults()';     clean_end='';    end   if(tSet[control]~=nil)then     cCmd=zsilp(tSet[control],'|') for i=1,#cCmd do     if(cCmd[i]:match('\:s\:')=='\:s\:')then cCmd[i]=cCmd[i]:gsub('\:s\:','|') cmd_s=zsilp(cCmd[i],'|') if(cmd_s[1]:gsub('%s','')=='before')then   controlT.s.before=cmd_s[2]     else if(cmd_s[1]:gsub('%s','')=='after')then      controlT.s.after=cmd_s[2]      end end     else if(cCmd[i]:match('\:e\:')=='\:e\:')then     cCmd[i]=cCmd[i]:gsub('\:e\:','|') cmd_e=zsilp(cCmd[i],'|') if(cmd_e[1]:gsub('%s','')=='before')then   controlT.e.before=cmd_e[2]     else if(cmd_e[1]:gsub('%s','')=='after')then      controlT.e.after=cmd_e[2]      end end end     end     end      end   if(tSet[echoL]==true)then z=_box_(_z,tSet[echoL]) end pcall(load(clean_sta)) z:s(tSet[search],tSet[getN],controlT.s.before,controlT.s.after) z:e(tSet[editN],tSet[freeZ],tSet[saveL],controlT.e.before,controlT.e.after) pcall(load(clean_end))    if(tSet['输出日志']==true)then    all_se='' all_ed=''   for i=1,#_z.search do     all_se=all_se..'\n    模式:'.. _z.search[i].model..'\n    第'.. _z.search[i].time.. '次搜索:'.. _z.search[i].code .. '\n    类型:'.. _z.search[i].type..'\n    结果数:'.. _z.search[i].count ..'\n' end     for i=1,#_z.edit do for n=1,#_z.edit[i] do   if _z.edit[i][n].freezeO==nil then _z.edit[i][n].freezeO='$nil' end if _z.edit[i][n].freeze==nil then _z.edit[i][n].freeze='$false' end if _z.edit[i][n].save==nil then _z.edit[i][n].save='$false' end if _z.get_res[i]==nil then _z.get_res[i]={} _z.get_res[i].value='0' _z.get_res[i].address='$nil' _z.get_res[i].flags='$nil' end     all_ed=all_ed..'\n    数值变动:'.._z.get_res[i].value..'→'.._z.edit[i][n].value..'\n    地址变动:'.._z.get_res[i].address..'→'.._z.edit[i][n].address..'\n    类型变动:'.._z.get_res[i].flags..'→'.._z.edit[i][n].type..'\n    冻结:'..tostring(_z.edit[i][n].freeze) ..'    范围:'..tostring(_z.edit[i][n].freezeO) ..'   保存:'..tostring(_z.edit[i][n].save)..'\n' end end  print('\n\n👾 >>日志收集器 >>\n===================\n数据取自表→[ _z ]','\n【设置的内存范围:',_z.region:gsub('gg.REGION_','') ,'\n【搜索:  ',all_se,'\n【选取结果:', _z.get_res.much,'\n【修改的数据:', all_ed,'\n===================\n')   all_se=nil all_ed=nil    end     ::exit:: doRegion=nil onRegion=nil res=nil Sch=nil t_type=nil cCmd=nil clean_sta=nil clean_end=nil Search=nil Esearch=nil e_type=nil FromTo=nil SetFreeze=nil Etable=nil exitz=nil    return _z end    function zcheckp(post,localV)   return gg.makeRequest('http://gg.zzer.xyz/checkupdate.php', nil,'set_url='..post..'&localVision='..localV).content end function zupdate(net_scr,net_set,vision,path)   php_echo=zcheckp(net_set,vision)   doc=load(string.gsub(php_echo,'\n\'%,','\','))   if doc then     php_e={}     doc()     if(php_e.isup=='true')then isupdate=gg.alert('当前版本：'..vision..'\n检查到新版本：'..php_e['最新版']..'\n更新时间：'..php_e['更新时间']..'\n更新详情：'..php_e['更新详情']..'\n\n是否更新？','更新','下次') if(isupdate==1)then f=io.open(path,"w") f:write(gg.makeRequest(net_scr).content) f:close() gg.toast('更新完毕,请重启脚本!') os.exit() end     end   end end    

function Main()
  SN = gg.multiChoice({
  "晕龙",
  "无限驯养",
  "和平训",
  "无鞍骑和背龙",
  "无限下仔",
  "改性别",
  "强训",
  "晕龙后用改驯养进度条",
  "隐藏功能",
  "修改各种物品",
  "来来来默默",
  "退出脚本"
 }, nil, "摆渡人FerrymanQQ2987317594非原创")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
    if SN[9] == true then
   hh()
   end
    if SN[10] == true then
   hg()
   end
   if SN[11] == true then
   vhhh()
   end
     if SN[12] == true then
   Exit()
  end
end
  XGCK = -1
end





function a()
 local t = gg.prompt({  [1] = '生物当前血量不是最大血量' },{[1]= '1'},{ [1] ='numder'})
 zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =   t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?48_F_$',
['获取结果'] = 15,
['修改数据'] = '9999999_F_8',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end






function b()
gg.processPause()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '256;1,065,353,216;1~100::9_DW|1~100_DW',
['获取结果'] = 10,
['修改数据'] = '0_D_0',
['清理结果'] = 2,
['冻结数据'] = true,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end

 

function c()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '16991798_DW_0xA58|3075_DW_0xA5C|75502232_DW_0xA6C|0_DW_0xD08',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function d()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '-1_DW_0xA58|-1_DW_0xA5C',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function e()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '1_F_0xA98',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function f()
 menu1 = gg.multiChoice({
'改雄性',
'改雌性',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then aa1() end
if menu1[2] == true then aa2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end



function aa1()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '6250000_D_0xA58',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function aa2()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '3670528_D_0xA58|-1_DW_0xA5C',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end


function g()
local t = gg.prompt({
    [1] = "生物最大血量",
    [2] = "输入你的身份编号"}, {[1]='',[2]='540,843,899'}, { [1] ='numder',[2]='numder'} ) 
 zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 99,
['修改数据'] = t[2]..'_D_-0x9AC',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')


end


function h()
 local t = gg.prompt({ [1] = '生物最大血量' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?58_F_$',
['获取结果'] = 20,
['修改数据'] = '0_F_0xD08',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end

function hh()
menu1 = gg.multiChoice({
'龙无限加点',
'人物无限加点',
'眩晕附近所有生物',
'和平训附近所有生物',
'把范围内野生龙变成自己的',
'杀死附近所有生物',
'把范围内自己的所有龙变成野生',
'把范围内所有龙下仔不论敌我方',
'全图眩晕之后使用此功能修改所有龙的驯养进度条100%',
'范围所有变性',
'返回上一页'},
nil,'小心使用容易卡死')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end


function a1()
 local t = gg.prompt({ [1] = '生物当前经验值' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] =  t[1] - 1 .. '~' .. t[1] + 1 ..'_F|?24_F_$',
['获取结果'] = 99,
['修改数据'] = '1_DW_-0x8',
['清理结果'] = 2,
['冻结数据'] = true_1_D,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function a2()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '40,000,000.0_F|?30_F_$',
['获取结果'] = 99,
['修改数据'] = '1_D_-0x10',
['清理结果'] = 4,
['冻结数据'] = true,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end




function a3()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '900000_F|?30_F_$',
['获取结果'] = 1999,
['修改数据'] = '9999999_F_0x120',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function a4()
gg.processPause()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = '16991798_DW_0xA58|3075_DW_0xA5C|75502232_DW_0xA6C|0_DW_0xD08',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function a5()
 local t = gg.prompt({ [1] = '输入你的身份编码' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = t[1]..'_D_-0x9AC|-1_D_0xA58',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function a6()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '900000_F|?30_F_$',
['获取结果'] = 1999,
['修改数据'] = '-9999_F_0x118',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end


function a7()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = '5_D_-0x9AC|-1_D_0xA58',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end


function a8()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = '1_F_0xA98',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end


function a9()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = '1_F_0xA98',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function a10()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '2,200;1;100~50000::13_F|?58_F_$',
['获取结果'] = 1999,
['修改数据'] = '0_F_0xD08',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end

function hg()
 menu1 = gg.multiChoice({
'修改人物经验值',
'所有人无限加点',
 '单独修改衣服武器子弹传说攻击力耐力',
  '一键修改人物属性无敌',
 ' 修改范围所有龙的属性改为无敌恐龙属性',
 '修改所有武器防具传说耐力',
 '所有野生的等级改为最大',
'解除所有建筑的上限高度',
'修改所有单物品99999',
'修改你的所有材料',
'修改所有建筑材料',
'自定义左右飞天遁地',
'自定义传送坐标',
'全图个传送点',
'副功能名称15',
'返回上一页'},
nil,'大鸡吧无言以对')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end




function b1()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '10,000;1~400000;40,000,000::25_F|1~400000_F',
['获取结果'] = 10,
['修改数据'] = '4000000_F_0',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b2()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '40,000,000.0_F|?30_F_$',
['获取结果'] = 99,
['修改数据'] = '1_D_-0x14',
['清理结果'] = 2,
['冻结数据'] = true,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b3()
zsearch{
['内存范围'] = 'B',
['搜索改善'] = '搜索数值_DW|改善数值_DW',
['获取结果'] = 10,
['修改数据'] = '修改数值_D_0',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b4()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] ='40000000_F|?30_F_$',
['获取结果'] = 1900,
['修改数据'] = '2139095040_D_-0x610|2139095040_D_-0x614|2139095040_D_-0x618|2139095040_D_-0x628|2139095040_D_-0x624|2139095040_D_-0x61C|2139095040_D_-0x638|2139095040_D_-0x634|2139095040_D_-0x630|2139095040_D_-0x62C',
['清理结果'] = 2,
['冻结数据'] = False,
['保存结果'] = true,
['输出日志'] = False
}
gg.toast('鸡鸡很大欧')
end



function b5()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] ='900000_F|?30_F_$',
['获取结果'] = 1900,
['修改数据'] = '2139095040_D_-0x610|2139095040_D_-0x614|2139095040_D_-0x618|2139095040_D_-0x628|2139095040_D_-0x624|2139095040_D_-0x61C|2139095040_D_-0x638|2139095040_D_-0x634|2139095040_D_-0x630|2139095040_D_-0x62C',
['清理结果'] = 2,
['冻结数据'] = False,
['保存结果'] = true,
['输出日志'] = False
}
gg.toast('鸡鸡很大欧')
end



function b6()
zsearch{
['内存范围'] = 'B',
['搜索改善'] = '搜索数值_DW|改善数值_DW',
['获取结果'] = 10,
['修改数据'] = '修改数值_D_0',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b7()
zsearch{
['内存范围'] = 'B',
['搜索改善'] = '搜索数值_DW|改善数值_DW',
['获取结果'] = 10,
['修改数据'] = '修改数值_D_0',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b8()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("720", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("48", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1080", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("48", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1440", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("48", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("48", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
end

function b9()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] ='1;1~5000;0F;1F::13_D|?30_D_$',
['获取结果'] = 9999,
['修改数据'] = '99999_D_0',
['清理结果'] = 2,
['冻结数据'] = False,
['保存结果'] = False,
['输出日志'] = False
}
gg.toast('鸡鸡很大欧')
end



function b10()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] ='10~5000;1~5000;0F;1F::13_D|?30_D_$',
['获取结果'] = 9999,
['修改数据'] = '9999999_D_0',
['清理结果'] = 2,
['冻结数据'] = False,
['保存结果'] = False,
['输出日志'] = False
}
gg.toast('鸡鸡很大欧')
end



function b11()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] ='1~100;100;0F;1F::13_D|?30_D_$',
['获取结果'] = 9999,
['修改数据'] = '9999999_D_0',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b12()
 local t = gg.prompt({  [1] = '自定义你的坐标上下' },{[1]= '1'},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '82;82;-2,147,483,648D::13_F|?88_F_$',
['获取结果'] = 10,
['修改数据'] =  t[1].. '_F_0x20',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b13()
 local t = gg.prompt({  [1] = '左坐标' },{[1]= ''},{ [1] ='numder'})
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '82;82;-2,147,483,648D::13_F|?88_F_$',
['获取结果'] = 10,
['修改数据'] = t[1].. '_F_0x18',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('鸡鸡很大欧')
end



function b14()
menu1 = gg.multiChoice({
'红方舟1',
'家2',
'神器强壮3',
'恶魔岛4',
'草草原岛5',
'狮鹫峰6',
'火山7',
'冰山8',
'天辉矿洞9',
'独重矿通10',
'海底11',
'红树林12',
'天上自杀13',
'遁地14',
'飞天15',
'返回上一页'},
nil,'所有地图各个点，188处都有妈妈再也不用担心我迷路了')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function c1()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '82~83;82::5_F|?88_F_$',
['获取结果'] = 10,
['修改数据'] = '-261153_F_0x18|238149_F_0x1C|-11242_F_0x20',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('开启成功')
end

function c2()
gg.processPause()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '82~83;82::5_F|?88_F_$',
['获取结果'] = 10,
['修改数据'] = '247,852.765625_F_0x18|-250,332.640625_F_0x1C|-12,729.921875_F_0x20',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.processResume() 
gg.toast('开启成功')
end


function c3()
gg.processPause()
zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '82~83;82::5_F|?88_F_$',
['获取结果'] = 10,
['修改数据'] = '-188,118.9375_F_0x18|-160,574.859375_F_0x1C|-6,608.8623046875_F_0x20',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.processResume() 
gg.toast('开启成功')
end









function Exit()
print("鸡巴不够大")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '摆渡人Ferryman2987317594'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end









