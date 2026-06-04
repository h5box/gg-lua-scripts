local _KY,jldz,jmzj=function(mtz,mzj)for xh=1,10 do mtz=mtz:gsub(mzj[xh],xh-1)end return mtz end,{},{}for xh=1,10 do jmzj[xh]=debug.getinfo(_KY)[string.char(115,111,117,114,99,101)]:sub(xh,xh)end function KYXG(DZ,XGSJ,GNM,JLDZ)local t={}for i=1,#DZ do for k,w in ipairs(XGSJ) do offset=w[1]*4 t[#t+1]={}t[#t].address=DZ[i]+offset t[#t].flags=w[2]t[#t].value=w[3]if(w[4]==true)then local item={}item[#item+1]=t[#t]item[#item].freeze=true gg.addListItems(item)end end end gg.setValues(t)gg.toast("𝕂𝕐𝔾"..string.char(10)..GNM.."开启成功☑"..string.char(10)..JLDZ..#DZ.."条地址"..string.char(10).."修改了"..(#DZ*#XGSJ).."条数据")end function KY_ZZ(NCLX,SSSJ,XGSJ,GNM)gg.setVisible(false)if jldz[NCLX[4]]==nil then gg.clearResults()gg.setRanges(NCLX[1])gg.searchNumber(NCLX[2],NCLX[3])local count=gg.getResultCount()local result=gg.getResults(count)gg.clearResults()local data={}if(count>0)then for i,v in ipairs(result) do v.isUseful=true end for k=1,#SSSJ do local tmp={}local offset=_KY(SSSJ[k][1],jmzj)*4 local num=_KY(SSSJ[k][2],jmzj)for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp) do if (v.value~=num)then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful)then data[#data+1]=v.address end end if data[1]==nil then gg.toast("𝕂𝕐𝔾"..string.char(10)..GNM.."开启失败☒"..string.char(10).."原因：无符合条件的副特征码")else if NCLX[4]~=false then jldz[NCLX[4]]=data KYXG(data,XGSJ,GNM,"已记录")else KYXG(data,XGSJ,GNM,"搜索到")end end else gg.toast("𝕂𝕐𝔾"..string.char(10)..GNM.."开启失败☒"..string.char(10).."原因：未能搜索到主特征码")end else KYXG(jldz[NCLX[4]],XGSJ,GNM,"调用到")end end

function Main()
SN=gg.choice({
"灵魂出窍",
"全局加速",
"虚体穿墙",
"灵魂出窍",
"退出脚本"
},2018,"剩下两个开启前置都需要灵魂出窍")
if SN==1 then a()end
if SN==2 then b()end
if SN==3 then c()end
if SN==4 then d() end
if SN==5 then Exit()end
XGCK=-1
end

function a()
KY_ZZ({"32","1049247089","4",false},{
{[[1]],[[1008981770]]},
},{
{"-33","16","999",true},
},"灵魂出窍")
end

function b()

    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('0.14177720249', 16, false, gg.SIGN_EQUAL, 0, -1)  
    gg.getResults(30)
    gg.editAll("1", 16)
    gg.clearResults()
end


function c()
gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.searchNumber("1.0e32",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      jg=gg.getResults(100)
      sl=gg.getResultCount()
      if 100 < sl then
        sl=100
      end
      for _FORV_3_=1,sl do
        dzy=jg[_FORV_3_].address
        gg.addListItems({
          [1]={
            address=dzy,
            flags=gg.TYPE_FLOAT,
            freeze=true,
            value=8}})
      end
      gg.toast("穿墙")
      gg.clearResults()
      end



function d()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15D;1D;84,000D::9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("100%")
end


function Exit()
print("定制")
os.exit()
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
Main()
end
end