--空欢原创
--二改请留版权
--2296794234
Getmemory=function(memory)
nc={"A","B","Ch","Ca","Cb","Xa","Jh","Ps"}
fw={"gg.REGION_ANONYMOUS","gg.REGION_BAD","gg.REGION_C_HEAP","gg.REGION_C_ALLOC","gg.REGION_C_BSS","gg.REGION_CODE_APP","gg.REGION_C_HEAP","gg.REGION_PPSSPP"}
for i=1,#fw do
if memory==nc[i]
then ncfw=fw[i]
break
end
end
return ncfw
end
GetSrc=function(data,code)
py=code[4]-data[1].offset

if code[3]=="F" then vtype="gg.TYPE_FLOAT" end
 if code[3]=="D" then vtype="gg.TYPE_DWORD" end
  if code[3]=="E" then vtype="gg.TYPE_DOUBLE" end
tzm="qmnb={\n{[\"memory\"]="..Getmemory(code[5]).."}; \n{[\"name\"]=\""..code[1].."\"}; \n{[\"value\"]="..tostring(data[1].value)..";[\"type\"]="..vtype.."}; \n"


for i=2,#data -1 do
tzm=tostring(tzm).."{[\"lv\"]="..tostring(data[i].value)..";[\"offset\"]="..tostring(data[i].offset - data[i-1].offset)..";[\"type\"]="..vtype.."};\n"
end


tzm=tzm.."}\nqmxg={\n{[\"value\"]="..code[2]..";[\"offset\"]="..py..";[\"type\"]="..vtype.."};\n}\nxqmnb(qmnb)"
gg.copyText(tzm)
--[[ 这段代码为记录之前的函数所用，可不使用
if not io.open("/storage/emulated/0/Download/function.log","r") then
file=io.open("/storage/emulated/0/Download/function.log","W")
file:write(" ")
file:close()
else
file=io.open("/storage/emulated/0/Download/function.log","r")
a=file:read("*a")
file:close()
end
file=io.open("/storage/emulated/0/Download/function.log","w")
file:write(a.."\n\n"..tzm)
file:close()
]]
gg.alert("已为您复制到剪贴板")
end
function StringToTable(data, splitint)
    local StartIndex = 1;
    local SplitIndex = 1;
    local SplitArray = {};
    while true do
        local FindLastIndex = string.find(data, splitint, StartIndex);
        if not FindLastIndex then
            SplitArray[SplitIndex] = string.sub(data, StartIndex, string.len(data));
            break ;
        end
        SplitArray[SplitIndex] = string.sub(data, StartIndex, FindLastIndex - 1);
        StartIndex = FindLastIndex + string.len(splitint);
       
        SplitIndex = SplitIndex + 1;
    end
    return SplitArray;
end
--以下部分容易报错，谨慎修改和使用
function jm()
main=gg.choice({"初次获取","二次对比","测试代码","反馈bug","退出"},nil,"一只空欢\nI always love you .")
zul={"F";"S";"C","T","Exit"}
for i=1,#zul do
if main == i then _G[zul[i]]() end
end
Kenfun=-1
end
Exit=function()
os.exit()
end
T=function()
gg.copyText("2296794234")
gg.alert("已为你复制空欢QQ号，赶快添加吧！")
end
C=function()
gg.alert("暂未开放")
end
 F=function()
 mainf=gg.prompt({
  "十六进制地址",
  "数据类型,\nF=float,D=dword,E=double默认F",
  "遍历长度",
}, {
  "",
  "F",
  36 ,
}, {
   "number",
   "string",
   "number"
})
 if mainf~=nil then
 vtb={}
 vtb.addr=mainf[1]
 vtb.type=mainf[2]
 vtb.number=mainf[3]
 Fsearch(vtb)
 end
 end
 Fsearch=function(vtb)
 if vtb.addr=="" then gg.alert("请输入十六进制地址") F() end
 if vtb.type=="F"  then vtype=16 end 
 if vtb.type=="D" then vtype=4 end
  if vtb.type=="E" then vtype=8 end
 vtb.addr=tonumber(vtb.addr,16)
 
 data1=""
 data2=""
 
 for i=1,vtb.number do
 kk=i*4
back=gg.getValues({{address=vtb.addr+kk,flags=vtype}})
back=tostring(back[1].value)
data1=data1..back..";"
end


for i=-1*vtb.number ,0 do
 kk=i*4
back=gg.getValues({{address=vtb.addr+kk,flags=vtype}})
back=tostring(back[1].value)
data2=data2..back..";"
end
data=data2..data1
file=io.open("/storage/emulated/0/Download/遍历.log","w")
file:write(data)
file:close()
file=io.open("/storage/emulated/0/Download/遍历-setting.log","w")
file:write("lenth="..vtb.number..";\ntype="..vtb.type..";")
file:close()

gg.alert("第一次OK\n重新打开游戏进行第二次对比")
os.exit()
end

Ssearch=function()
 if vtb.addr=="" then gg.alert("请输入十六进制地址") S() end
 if vtb.type=="F"  then vtype=16 end 
 if vtb.type=="D" then vtype=4 end
  if vtb.type=="E" then vtype=8 end
vtb.addr=tonumber(vtb.addr,16)
data={}
kf=1
for i=-1*vtb.number,vtb.number do
data[kf]={}
kk=i*4
data[kf].value=gg.getValues({{address=vtb.addr+kk,flags=vtype}})[1].value
data[kf].offset=kk

kf=kf+1

end
GetResult(data)
end
GetResult=function(data)
file=io.open("/storage/emulated/0/Download/遍历.log","r")
if not file then gg.alert("请先进行第一次获取") os.exit() end
content=file:read("*a")
file:close()
oldv=StringToTable(content,";")

ke=1
Results={}
for i=1,#oldv -1  do
Results[ke]={}
if data[i].value~=0 then 
if tonumber(oldv[i])==data[i].value then 
Results[ke].value=data[i].value
Results[ke].offset=data[i].offset
ke=ke+1
end
end
end
print(data,oldv)
if ke==1 then gg.alert("特征码(排除0之后)数量过少，请扩大遍历长度")
else
ToEnd(Results)

end
end

ToEnd=function(tb)
datae={}
for i=1,#tb do
datae[i]=tostring(tb[i].value).."  偏移量: "..tostring(tb[i].offset)
end
typec={}
typec.v={}
typec.t={}
for i=1,#tb do
typec.t[i]="checkbox"

end
hy=1
sj={}

Layout=gg.prompt(datae,typec.v,typec.t)

for i=1,#Layout do
sj[hy]={}
if Layout[i]== true then

sj[hy].value=tb[i].value
sj[hy].offset=tb[i].offset
hy=hy+1
end
end

if hy<3 or hy>5
then gg.alert("请尽可能保证选择的特征码数量在3~5之间") end
src=gg.prompt({"功能名称 可能因为GG本身原因，无法呼出输入法，那就复制完成之后手动修改";"修改成多少";"修改类型";"偏移 默认为两次获取所粘贴的地址计算","内存(非必填)默认A;可填A,Jh,Ch,Ca,Cd,B,Xa,Cb,Ps"},{"Name","","",0,"A"},{"string","number","string","number","string"})
GetSrc(sj,src)



end
S=function()
file=io.open("/storage/emulated/0/Download/遍历-setting.log","r")
if not file then gg.alert("请先进行第一次获取") os.exit() end
content=file:read("*a")
file:close()
vnumber=tonumber(content:match("lenth=(.-);"),10)
vtype=content:match("type=(.-);")

mains=gg.prompt({
  "十六进制地址",
 
  
}, {
  "",
  
 
}, {
   "number",
   
   
})
 if mains~=nil then
 vtb={}
 vtb.addr=mains[1]
vtb.type=vtype
 vtb.number=vnumber
 Ssearch(vtb)
 end
 end







while(true)do
if gg.isVisible(true) then
Kenfun=1
gg.setVisible(false)
end
gg.clearResults()
if Kenfun==1 then
jm()
end
end

