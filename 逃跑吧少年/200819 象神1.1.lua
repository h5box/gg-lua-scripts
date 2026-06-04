function Cx_(co)res=''for i in ipairs(co)do res=res..string.char(co[i]) end return res end gg.alert(Cx_({229,138,159,232,131,189,232,175,183,229,133,168,233,131,168,229,156,168,230,184,184,230,136,143,229,134,133,229,188,128,229,144,175,239,188,129,233,131,168,229,136,134,228,187,163,231,160,129,233,157,158,229,142,159,229,136,155,239,188,129}))
function split(szFullString, szSeparator)
local nFindStartIndex=1 
local nSplitIndex=1 
local nSplitArray={} while true do 
local 
nFindLastIndex=string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex]=string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex]=string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex=nFindLastIndex + string.len(szSeparator) 
nSplitIndex=nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x=1, #(qmxg) do 
xgpy=szpy + qmxg[x][Cx_({111,102,102,115,101,116})] xglx=qmxg[x][Cx_({116,121,112,101})] 
xgsz=qmxg[x][Cx_({118,97,108,117,101})] 
gg.setValues({[1]={address=xgpy, flags=xglx, value=xgsz}}) 
xgsl=xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1][Cx_({109,101,109,111,114,121})]) 
gg.searchNumber(qmnb[3][Cx_({118,97,108,117,101})], qmnb[3][Cx_({116,121,112,101})]) 
if gg.getResultCount()==0 then 
gg.toast(qmnb[2][Cx_({110,97,109,101})] .. Cx_({229,188,128,229,144,175,229,164,177,232,180,165}))
else 
gg.refineNumber(qmnb[3][Cx_({118,97,108,117,101})], qmnb[3][Cx_({116,121,112,101})]) 
gg.refineNumber(qmnb[3][Cx_({118,97,108,117,101})], qmnb[3][Cx_({116,121,112,101})]) 
gg.refineNumber(qmnb[3][Cx_({118,97,108,117,101})], qmnb[3][Cx_({116,121,112,101})]) 
if gg.getResultCount()==0 then 
gg.toast(qmnb[2][Cx_({110,97,109,101})] .. Cx_({229,188,128,229,144,175,229,164,177,232,180,165})) 
else 
sl=gg.getResults(999999) 
sz=gg.getResultCount() 
xgsl=0 if sz > 999999 then 
sz=999999 end for i=1, sz do 
pdsz=true for v=4, #(qmnb) do if 
pdsz==true then 
pysz={} pysz[1]={} pysz[1].address=sl[i].address + qmnb[v][Cx_({111,102,102,115,101,116})] 
pysz[1].flags=qmnb[v][Cx_({116,121,112,101})] 
szpy=gg.getValues(pysz) 
pdpd=qmnb[v][Cx_({108,118})] .. Cx_({59}) .. szpy[1].value szpd=split(pdpd, Cx_({59})) 
tzszpd=szpd[1] 
pyszpd=szpd[2] 
if tzszpd==pyszpd then 
pdjg=true pdsz=true else 
pdjg=false pdsz=false end end end 
if pdjg==true then 
szpy=sl[i].address xgxc(szpy, qmxg) 
xgjg=true end end 
if xgjg==true then 
gg.toast(qmnb[2][Cx_({110,97,109,101})] .. Cx_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Cx_({230,157,161,230,149,176,230,141,174})) 
else 
gg.toast(qmnb[2][Cx_({110,97,109,101})] .. Cx_({229,188,128,229,144,175,229,164,177,232,180,165})) 
end 
end 
end 
end
 
-----------------------------------------------------------------------------------------
function SearchWrite(tb1, tb2, dataType, Name)
  local lt1={}
  local lt2={}
  local mm1={[Cx_({228,184,187,231,137,185,229,190,129,231,160,129})]=tb1[1][1],[Cx_({231,177,187,229,158,139})]=dataType }
  table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={[Cx_({229,137,175,231,137,185,229,190,129,231,160,129})]=tb1[i][1],[Cx_({229,129,143,231,167,187})]=tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={[Cx_({228,191,174,230,148,185})]=tb2[i][1],[Cx_({229,129,143,231,167,187})]=tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={[Cx_({228,191,174,230,148,185})]=false,[Cx_({229,129,143,231,167,187})]=tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end

function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1][Cx_({231,177,187,229,158,139})]
  gg.searchNumber(Search[1][Cx_({228,184,187,231,137,185,229,190,129,231,160,129})], lx)
  local count=gg.getResultCount()
  local result=gg.getResults(count)
  gg.clearResults()
  local data={}
  if (count > 0) then
    gg.toast(Cx_({229,133,177,230,144,156,231,180,162,32})..count..Cx_({32,230,157,161,230,149,176,230,141,174}))
    for i, v in ipairs(result) do
      v.isUseful=true
    end
    for k=2, #Search do
      local tmp={}
      local num=Search[k][Cx_({229,137,175,231,137,185,229,190,129,231,160,129})]
      if Search[k][Cx_({231,177,187,229,158,139})]~=nil then
           lx=Search[k][Cx_({231,177,187,229,158,139})]
         else
           lx=Search[1][Cx_({231,177,187,229,158,139})]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1]={}
        tmp[#tmp].address=v.address + Search[k][Cx_({229,129,143,231,167,187})]
        tmp[#tmp].flags=lx
      end
      tmp=gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~=tostring(num) ) then
          result[i].isUseful=false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1]=v.address
      end
    end
    if (#data > 0) then
      local t={}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w[Cx_({231,177,187,229,158,139})] ~=nil then
             lx=w[Cx_({231,177,187,229,158,139})]
           else
             lx=Search[1][Cx_({231,177,187,229,158,139})]
          end
          t[#t+1]={}
          t[#t].address=data[i] + w[Cx_({229,129,143,231,167,187})]
          t[#t].flags=lx
          if (w[Cx_({228,191,174,230,148,185})]~=nil) and (w[Cx_({228,191,174,230,148,185})]~=false) then
            t[#t].value=w[Cx_({228,191,174,230,148,185})]
            gg.setValues(t)
            if (w[Cx_({229,134,187,231,187,147})]==true) then
              local item={}
              item[#item+1]=t[#t]
              item[#item].freeze=w[Cx_({229,134,187,231,187,147})]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast(Cx_({229,133,177,229,129,143,231,167,187,32})..#t..Cx_({32,230,157,161,230,149,176,230,141,174}))
     else
      gg.toast(Cx_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
      return false
    end
   else
    gg.toast(Cx_({230,156,170,230,144,156,229,136,176,230,149,176,230,141,174,239,188,129}))
    return false
  end
end

 
-----------------------------------------------------------------------------------------

function Main()
  SN=gg.multiChoice({
  Cx_({229,156,176,229,155,190,233,128,143,232,167,134}),
  Cx_({231,167,146,229,188,128,233,148,129}),
  Cx_({231,167,146,229,188,128,232,161,165,231,187,153}),
  Cx_({229,188,128,233,148,129,229,138,160,233,128,159}),
  Cx_({231,150,190,232,183,145,229,138,160,233,128,159}),
  Cx_({230,151,160,233,153,144,230,151,182,233,151,180}),
  Cx_({229,174,158,228,189,147,233,135,145,229,184,129}),
  Cx_({229,140,187,231,150,151,231,174,177,229,133,168,229,177,143,232,140,131,229,155,180}),
  Cx_({229,128,146,229,156,176,229,164,141,230,180,187}),
  Cx_({233,128,128,229,135,186,232,132,154,230,156,172})
 }, nil, Cx_({230,151,160,232,129,148,231,179,187,230,150,185,229,188,143,239,188,129}))
  if SN==nil then
  else
  if SN[1]==true then
    a()
  end
  if SN[2]==true then
   b()
  end
  if SN[3]==true then
   c()
  end
  if SN[4]==true then
   d()
  end
  if SN[5]==true then
   e()
  end
  if SN[6]==true then
   f()
  end
  if SN[7]==true then
   g()
  end
  if SN[8]==true then
   h()
  end
   if SN[9]==true then
   i()
  end
  if SN[10]==true then
   Exit()
  end
end
  XGCK=-1
end


function a()
  qmnb={
{[Cx_({109,101,109,111,114,121})]=32},
{[Cx_({110,97,109,101})]=Cx_({233,128,143,232,167,134})},
{[Cx_({118,97,108,117,101})]=3.2354159853256404E-40, [Cx_({116,121,112,101})]=16},
{[Cx_({108,118})]=16.62690544128418, [Cx_({111,102,102,115,101,116})]=4, [Cx_({116,121,112,101})]=16},
{[Cx_({108,118})]=1.401298464324817E-45, [Cx_({111,102,102,115,101,116})]=12, [Cx_({116,121,112,101})]=16},
}
qmxg={
{[Cx_({118,97,108,117,101})]=0, [Cx_({111,102,102,115,101,116})]=12, [Cx_({116,121,112,101})]=16},
}
xqmnb(qmnb)

end 




function b()
qmnb={
{[Cx_({109,101,109,111,114,121})]=32},
{[Cx_({110,97,109,101})]=Cx_({231,167,146,229,188,128,233,148,129})},
{[Cx_({118,97,108,117,101})]=1.2215520886178692E-38, [Cx_({116,121,112,101})]=16},
{[Cx_({108,118})]=3.2354159853256404E-40, [Cx_({111,102,102,115,101,116})]=-4, [Cx_({116,121,112,101})]=16},
}
qmxg={
{[Cx_({118,97,108,117,101})]=999, [Cx_({111,102,102,115,101,116})]=0, [Cx_({116,121,112,101})]=16},

}
xqmnb(qmnb)
end


function c()
gg.setRanges(32)
local tb1={ 
{[Cx_({231,177,187,229,158,139})]=16  ,[Cx_({228,184,187,231,137,185,229,190,129,231,160,129})]=5.0  } , 
{[Cx_({231,177,187,229,158,139})]=16  ,[Cx_({229,129,143,231,167,187})]=4  ,[Cx_({229,137,175,231,137,185,229,190,129,231,160,129})]=0.20000000298023224  },
{[Cx_({231,177,187,229,158,139})]=16  ,[Cx_({229,129,143,231,167,187})]=8  ,[Cx_({229,137,175,231,137,185,229,190,129,231,160,129})]=1.0  },
}
 local tb2={ 
 {[Cx_({231,177,187,229,158,139})]=16 ,[Cx_({229,129,143,231,167,187})]=0  , [Cx_({229,134,187,231,187,147})]=false  , [Cx_({228,191,174,230,148,185})]=0.1  } , 
} LongTao(tb1, tb2)
end


function d()
qmnb={
{[Cx_({109,101,109,111,114,121})]=32},
{[Cx_({110,97,109,101})]=Cx_({229,188,128,233,148,129,229,138,160,233,128,159})},
{[Cx_({118,97,108,117,101})]=3.2354159853256404E-40, [Cx_({116,121,112,101})]=16},
{[Cx_({108,118})]=1.2215520886178692E-38, [Cx_({111,102,102,115,101,116})]=4, [Cx_({116,121,112,101})]=16},
{[Cx_({108,118})]=1.401298464324817E-45, [Cx_({111,102,102,115,101,116})]=12, [Cx_({116,121,112,101})]=16},
}
qmxg={
{[Cx_({118,97,108,117,101})]=2.8, [Cx_({111,102,102,115,101,116})]=4, [Cx_({116,121,112,101})]=16},
}
xqmnb(qmnb)
end



function e()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Cx_({54,59,48,46,51,59,48,59,48,58,58,49,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Cx_({48,46,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Cx_({50}), gg.TYPE_FLOAT)
  gg.toast(Cx_({231,150,190,232,183,145,229,138,160,233,128,159,229,188,128,229,144,175,230,136,144,229,138,159}))
  gg.clearResults()



end



function f()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Cx_({49,48,48,48,68,59,52,46,51,59,49,51,68,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Cx_({52,46,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Cx_({57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Cx_({49,48,48,49,68,59,52,46,51,59,49,51,68,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Cx_({52,46,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Cx_({57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Cx_({230,151,160,233,153,144,230,151,182,233,151,180,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
 end



function g()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Cx_({50,48,59,50,48,59,50,48,58,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Cx_({50,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Cx_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Cx_({229,174,158,228,189,147,233,135,145,229,184,129,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end



function h()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Cx_({49,68,59,48,46,54,59,49,46,50,59,50,48,59,49,48,48,48,59,50,46,53,59,48,46,50,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Cx_({49,46,50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Cx_({49,50,48,48,48}), gg.TYPE_FLOAT)
  gg.toast(Cx_({229,140,187,231,150,151,231,174,177,229,133,168,229,177,143,232,140,131,229,155,180,229,188,128,229,144,175,230,136,144,229,138,159}))
  gg.clearResults()
end

function i()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Cx_({50,51,48,44,56,56,55,68,59,49,46,50,50,49,53,53,50,49,101,45,51,56,70,59,49,68,59,50,51,48,44,56,56,55,68,59,49,44,49,49,54,44,48,54,52,44,55,52,51,68,59,49,68,59,50,51,48,44,56,56,55,68,59,48,46,49,53,50,57,51,51,48,55,54,48,50,70,59,49,68,59,48,46,51,48,48,48,48,48,48,49,49,57,50,70,58,58,54,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Cx_({49,46,50,50,49,53,53,50,49,101,45,51,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Cx_({49,48,48}), gg.TYPE_FLOAT)
	 gg.toast(Cx_({229,128,146,229,156,176,229,164,141,230,180,187,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end 

function Exit()
print(Cx_({229,191,171,231,140,171,231,164,190,229,140,186,232,177,161,231,165,158}))
os.exit()
end
cs=Cx_({230,151,160,232,129,148,231,179,187,230,150,185,229,188,143,239,188,129})



while true do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end









