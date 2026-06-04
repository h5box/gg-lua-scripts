
if not gg.getRangesList('libBootloader.so') then  so=0 else  so=gg.getRangesList('libBootloader.so')[1].start end
function addrjump(a,b) tem=gg.getValues({[1]={address=a+b,flags=32}})[1].value return tem end
function addrjumppro(a,b,c)
    for i=1,c do
        a=addrjump(a,b[i])
    end
    return a
end
function doAction(method) load(method .. "()")() end
function MOM0choice(anniucd,name) local wjzbtmp={} for k,v in pairs(anniucd)do wjzbtmp[#wjzbtmp + 1] = {}  wjzbtmp[#wjzbtmp] = anniucd[k][1] end SN=gg.choice(wjzbtmp,nil,name) if SN then doAction(anniucd[SN][2]) end end
--gg.clearList() gg.clearResults() gg.setRanges(8) gg.searchNumber("15000",16) result = gg.getResults(1) fanwei = result[1].address gg.clearResults()
function search(...) local sousuo1 = {...} gg.searchNumber(sousuo1[1],sousuo1[2],false, gg.SIGN_EQUAL,0x1000000000,so) end
function searchaddr(nclx,sj,lx,py1,pylx,pysj,py2,name) gg.clearResults() gg.setRanges(nclx) if nclx == 4 then gg.setRanges(4|-2080896) search(sj,lx) else  gg.searchNumber(sj,lx)  end local wjzbtmp = {} for k, v in ipairs(gg.getResults(gg.getResultCount())) do  wjzbtmp[k] = { address = v.address + py1, flags = pylx   } end for k, v in ipairs(gg.getValues(wjzbtmp)) do if v.value == pysj then if name then gg.toast(name.."成功✔️") end return v.address+py2 end  end    gg.toast(name.."️失败")  end        
local init_tabkey={"address","flags","value","freeze"}  
function seaio(t,a,b,c,d)  
t[#t+1]={}  
t[#t][init_tabkey[1]]=a  t[#t][init_tabkey[2]]=b  if c then t[#t][init_tabkey[3]]=c end if d then t[#t][init_tabkey[4]]=d end end
function forseaio(i,j,t,a,py,xhpy,b,c,d) for k=i,j do seaio(t,a+py+xhpy*k,b,c,d) end end--这个真的很好用别问我为什么
function panduan(rec)  file,err=io.open(rec)  if file==nil then return false  else return true end end
function write( fileName, content ) local f = assert( io.open( fileName, 'w'))   f:write( content )     f:close()  end
function read( fileName )  file=io.open(fileName)  if file==nil then return false end  local f = assert( io.open(fileName, 'r'))    local content = f:read("*all")   f:close()   return content  end
add=gg.addListItems

function getvalue(v,n)
local tmp={}
tmp[1]={address = v, flags = n }
tmp=gg.getValues(tmp)
return tmp[1].value
end
--[[
 录制烛火ID
]]

sdjz=addrjump(so,0x157EE20)+0xEC
rwdz=addrjump(sdjz,0x4533F8)+0x2B15C
dtaddr=sdjz+0x2630E20--地图判断

id = {}--烛火id内存地址
forseaio(1,32,id,dtaddr,"0","4",4)

ID_value={}--总表
ID_value[1]=getvalue(dtaddr,4)
function cccc()
local ID=gg.getValues(id)
for i=1,#ID do
if ID[i].value ~= 0 then 
ID_value[#ID_value+1]=ID[i].value
end
ID[i].value=0
end
gg.setValues(ID)
end

function xxxx()
idtxt="{"
for i=1,#ID_value do
idtxt=idtxt..ID_value[i]..";"
end
idtxt=idtxt.."};"
print(idtxt)
write("/storage/emulated/0/光遇烛火ID/"..ID_value[1],idtxt)
end


    gg.setVisible(false) 
    while true do
        if gg.isVisible(true) then
           gg.setVisible(false) 
           if gg.alert("已录制ID:"..#ID_value,"退出打印","继续录制")==2 then
               cccc()
               gg.setVisible(false) 
           else
               xxxx()
               return 0
           end
        end
    end




