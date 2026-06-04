gg.setRanges(4)--设置内存
ab={
{"搜索"},
{"廉颇",105},
{"小乔",106},
{"赵云",107},
{"墨子",108},
{"妲己",109},
{"嬴政",110},
{"孙尚香",111},
{"鲁班",112},
{"庄周",113},
{"刘禅",114},
{"高渐离",115},
{"阿轲",116},
{"钟无艳",117},
{ "孙膑" ,  118},
{ "扁鹊" , 119 },
{ "白起" ,  120},
{ "芈月" , 121 },
{ "吕布" ,123  },
{ "周瑜" , 124 },
{ "元歌" , 125 },
{ "夏侯惇" ,126  },
{ "甄姬" ,  127},
{ "曹操" , 128 },
{ "典韦" ,129  },
{ "宫本武藏" ,  130},
{"李白"  , 131 },
{ "马可波罗" ,132  },
{ "狄仁杰" ,  133},
{ "达摩" ,134  },
{ "项羽" , 135 },
{ "武则天" , 136 },
{ "司马懿" ,  137},
{ "老夫子" , 139},
{ "关羽" , 140 },
{ "貂蝉" , 141 },
{ "安琪拉" ,142  },
{ "程咬金" , 144 },
{ "露娜" , 146 },
{ "姜子牙" , 148 },
{ "刘邦" , 149 },
{ "韩信" , 150 },
{ "王昭君" , 152 },
{ "兰陵王" ,  153},
{ "花木兰" , 154 },
{ "艾琳" , 155 },
{ "不知火舞" , 157 },
{ "娜可露露" , 162 },
{ "橘右京" , 163 },
{ "亚瑟" ,  166},
{ "孙悟空" , 167 },
{ "牛魔" ,168  },
{"后羿"  , 169 },
{ "刘备" , 170 },
{ "张飞" , 171 },
{ "李元芳" , 173 },
{ "虞姬" , 174 },
{ "钟馗" , 175 },
{ "杨玉环" , 176 },
{ "成吉思汗" ,177  },
{ "杨戬" , 178 },
{ "女娲" , 179 },
{ "哪吒" , 180 },
{ "雅典娜" , 183 },
{ "雅典娜" , 183 },
{ "蔡文姬" , 184 },
{ "太乙真人" , 186 },
{ "东皇太一" , 187 },
{ "鬼谷子" , 189 },
{"诸葛亮"  , 190 },
{ "大乔" , 191 },
{ "黄忠" , 192 },
{ "铠" , 193 },
{ "苏烈" ,194  },
{ "百里玄策" , 195 },
{ "百里守约" , 196 },
{ "弈星" , 197 },
{ "梦奇" ,  198},
{ "公孙离" , 199 },
{ "沈梦溪" , 312 },
{ "张良" , 156 },
{ "干将莫邪" , 182 },
{ "明世隐" , 501 },
{ "裴擒虎" , 502 },
{ "狂铁" , 503 },
{ "米莱狄" , 504 },
{ "瑶" , 505 },
{ "云中君" , 506 },
{ "李信" , 507 },
{ "伽罗" , 508 },
{ "盾山" , 509 },
{ "孙策" , 510 },
{ "猪八戒" , 511 },
{ "上官婉儿" , 513 },
{ "嫦娥" , 515 },
{ "马超" , 518 },
{ "盘古" , 529 },
{ "曜" , 522 },
{ "西施" , 523 },
{ "鲁班大师" , 525 },
{ "蒙犽", 524 },
{ "蒙恬" , 527 },
{ "镜" , 531 },
{ "阿古朵" , 533 },
{ "夏洛特" , 536 },
{"司空震" , 537 },
{ "澜" , 528 }
}

sz={}
for i=1,10 do
sz[i]=tostring(i)
end

function jm()
xz=gg.choice(sz,nil,"属性修改")
if xz~=nil then
 
if xz~=11 then
xgjm(xz)
xg(xz)
end
end
end
function jzname()
gg.clearResults()

gg.searchNumber("1,651,470,960;13,151;6,581,861::129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.refineNumber("13151", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,-1)
vvval=gg.getResults(1)[1]["address"]
nampy={0xC4,0xC8,0xCC,0xD0,0xD4}
for w=1,5 do
nam={{address=vvval+nampy[w] , flags = 4}}
getnam=gg.getValues(nam)[1]["value"]
sz[w]=getnam
gg.clearResults()
end
for f=1,5 do
for g=2,#ab do
if sz[f]==ab[g][2] then
sz[f]=ab[g][1]
break
end
end
end
jm()
end
shuxin={"当前金币","最大生命","物攻","法强","物理防御","法术防御","最大法力","5秒回蓝","物理穿透百分比","法术穿透百分比","移速","5秒回血","攻速","暴击率","吸血","法术吸血","韧性","冷却","返回"}
xians=shuxin
ch={1,1,1,1,1,1,1,1,100,100,10,1,100,100,100,100,100,100}
ccval={}
pianyi={0x0,0x1B4,0x284,0x354,0x424,0x4F4,0x694,0x764,0x900,0x9D0,0xB70,0xC44,0xD14,0xDE4,0x1534,0x1600,0x17A0,0x1874}
function xg(xz)
xgsx=gg.choice(xians,nil,sz[xz])
if xgsx==19 then
jm()
end

if xgsx~=19 then
if xgsx~=nil then
xgsz(xgsx,xz)
end
end
end
disan=81920000
function xgsz(xgsx,xz)

val=gg.prompt(
    {"修改"..sz[xz].."的"..shuxin[xgsx].."(为空返回)"},
    {},
    {[1]='number'}
)

--val=tonumber(val)
if val~=nil then
if val[1]=='' then
xg(xz)
else
xiugai(xgsx,xz,val[1])

end
end


end

ccdz={}           --储存地址

function xiugai(xgsx,xz,val)
if ccdz[xz]==nil then
diyi=5+(xz-1)*12
dier=186+(xz-1)*276
if xz==6 then
diyi=60
dier=1474
end
if xz>6 then
diyi=9+(xz-7)*12
dier=232+(xz-7)*276
end
ss='"'..diyi..";"..dier..";"..disan.."::41"..'"'
gg.clearResults()

gg.searchNumber(ss, gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)

gg.refineNumber("81920000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,-1)

dizi=gg.getResults(1)[1]["address"]
--dz=string.format("%x",dizi)
ccdz[xz]=dizi




end
er=ccdz[xz]+0x1AC-pianyi[xgsx]
er="0x"..string.format("%x",er)

val=tonumber(val)*8192*ch[xgsx]

--73728000

if xgsx==17 then
xgshangx={{address=er+0x14 , flags = 4,value=val+6000*8192}}
gg.setValues(xgshangx)

elseif xgsx==13 then
xgshangx={{address=er+0x18 , flags = 4,value=val+20000*8192}}
gg.setValues(xgshangx)
elseif xgsx==18 then
xgshangx={{address=er+0x18 , flags = 4,value=val+4000*8192}}
gg.setValues(xgshangx)
end
sss={{address=er , flags = 4,value=val}}
ssss={{address=er , flags = 4,value=val}}

toa=gg.setValues(sss)
xgzhi=gg.getValues(ssss)
if toa==true then
gg.toast("修改成功")
end
gg.clearResults()

xgjm(xz)
xg(xz)
end
function xgjm(xz)
xians={"当前金币","最大生命","物攻","法强","物理防御","法术防御","最大法力","5秒回蓝","物理穿透百分比","法术穿透百分比","移速","5秒回血","攻速","暴击率","吸血","法术吸血","韧性","冷却","返回"}
if ccdz[xz]~=nil then
ccval[xz]={}
for z=1,18 do
dzzz=ccdz[xz]+0x1AC-pianyi[z]
zhi=gg.getValues({{address=dzzz , flags = 4}})
zhi=zhi[1]["value"]
zhi=zhi/8192/ch[z]
ccval[xz][z]=zhi
end

for k=1,18 do
xians[k]=shuxin[k]..': '..ccval[xz][k]
end
end
end
jm()
