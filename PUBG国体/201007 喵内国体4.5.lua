function Re_(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end --全新版本
--不加密了就
--二改的长点良心吧(ฅ>ω<*ฅ)
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
        
        if (#data > 0) then
           gg.toast(Re_({230,144,156,231,180,162,206,183})..#data..Re_({230,157,161,206,148,206,152}))
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
          
        else
            gg.toast(Re_({110,111,116,32,102,111,117,110,100}), false)
            return false
        end
    else
        gg.toast(Re_({78,111,116,32,70,111,117,110,100}))
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg.searchNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,206,148,206,152})) else gg.toast(qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end


function Main()
menu = gg.choice({
Re_({224,184,133,233,128,143,232,167,134,229,138,159,232,131,189,224,184,133}),
Re_({224,184,133,229,164,167,229,142,133,229,138,159,232,131,189,224,184,133}),
Re_({224,184,133,232,144,189,229,156,176,229,138,159,232,131,189,224,184,133}),
Re_({224,184,133,232,135,170,231,158,132,229,138,159,232,131,189,224,184,133}),
Re_({224,184,133,232,140,131,229,155,180,229,138,159,232,131,189,224,184,133}),
Re_({224,184,133,233,128,128,229,135,186,232,132,154,230,156,172,224,184,133})},
nil,Re_({87,75,88,227,128,129,229,150,181,229,134,133,229,136,182,228,189,156,239,188,140,230,186,144,231,160,129,229,164,167,233,131,168,229,136,134,230,157,165,230,186,144,228,186,142,231,189,145,231,187,156,239,188,140,87,75,88,231,137,155,233,128,188}))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then D() end
if menu == 4 then E() end
if menu == 5 then F() end
if menu == 6 then Exit() end
XGCK=-1
end


function A()
menu1 = gg.multiChoice({
Re_({232,129,148,229,143,145,231,167,145,80,49,48}),
Re_({233,171,152,233,128,154,233,170,129,233,190,153,56,54,53}),
Re_({232,129,148,229,143,145,231,167,145,80,50,51}),
Re_({233,186,146,233,186,159,231,187,191}),
Re_({233,170,129,233,190,153,52,50,53,233,128,143,232,167,134}),
Re_({233,170,129,233,190,153,55,49,48,233,128,143,232,167,134}),
Re_({232,129,148,229,143,145,231,167,145,80,54,48}),
Re_({233,170,129,233,190,153,54,54,48}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({87,75,88,229,150,181,229,134,133,229,136,182,228,189,156,239,188,140,87,75,88,231,137,155,233,128,188}))
if menu1 == nil then else 
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then HOME() end
end

end

function a1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(Re_({51,48,52,68,59,51,50,56,68,59,51,50,56,68,59,54,52,68,59,51,44,53,53,50,68,58,49,48,48}),  4,false,536870912,0, -1)
gg.searchNumber(Re_({54,52}), 4,false,536870912,0,-1)
gg.getResults(10)
gg.editAll(Re_({54,49}),4)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value = Re_({54,49})
t[i].freeze = true
end
gg.addListItems(t)
gg.toast(Re_({233,128,143,232,167,134,230,136,144,229,138,159}))
end


function a2()
gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber(Re_({49,46,49,50,48,50,48,53,48,56,101,45,49,57,59,51,46,55,54,49,53,56,49,57,50,101,45,51,55,59,50,46,48,59,48,46,50,52,48,50,50,54,53,48,55,49,57,59,48,46,54,57,51,49,52,55,49,56,50,52,54,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
	 gg.toast(Re_({56,54,53,233,128,143,232,167,134,229,188,128,229,144,175,230,136,144,229,138,159}))
	 gg.clearResults()
end


function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(Re_({49,54,59,51,50,59,52,51,50,59,55,54,59,52,59,52,52,59,51,52,52,59,56,48,59,49,50,59,52,56,59,51,54,56,59,56,52,59,52,59,53,50,58,58}),  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({51,52,52}), gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({50}),gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(Re_({32,45,49,46,56,51,56,56,53,51,52,69,50,56}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_FLOAT)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(Re_({53,54,59,52,56,59,49,54,58,58,51,50}), gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({53,54}), gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({51,56}),gg.TYPE_DWORD)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end


function a4()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(Re_({49,54,68,59,51,50,68,59,52,48,68,58,58,50,53}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({49,54}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 28}})
  end
  gg.toast(Re_({231,187,191,232,137,178,229,188,128,229,144,175,230,136,144,229,138,159}))
  gg.clearResults()
end


function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(Re_({51,46,49,53,50,57,50,49,53,52,101,45,52,51,59,50,46,48,58,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({50}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll(Re_({49,50,48}), gg.TYPE_FLOAT, false, 536870912, 0, -1)
gg.clearResults()
gg.toast(Re_({52,50,53,229,129,143,231,167,187,228,188,152,229,140,150,233,128,143,232,167,134,229,188,128,229,144,175}))

qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({228,186,186,231,137,169,231,187,191,232,137,178})},
{[Re_({118,97,108,117,101})] = 8204, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 538968075, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1194380046, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 970, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 4},

}
xqmnb(qmnb)

qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({232,189,166,232,190,134,231,186,162,232,137,178})},
{[Re_({118,97,108,117,101})] = 8204, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1077936128, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1194380038, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 11, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 4},

}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({32,45,49,46,56,51,56,56,53,51,52,69,50,56}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({48}),gg.TYPE_FLOAT)
gg.toast(Re_({233,128,143,232,167,134,233,152,178,233,151,170}))

qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({230,175,146,229,156,136,229,143,175,232,167,129,229,140,150})},
{[Re_({118,97,108,117,101})] = 8196, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1194330372, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1194346752, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 8195, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 4},

}
xqmnb(qmnb)
end


function a6()
gg.setRanges(1048576)--V内存
local dataType = 16--人物模糊
local tb1 = {{3.75000405312, 0},{4.9252807e21, 8},{4.9068345e21, 16}}
local tb2 = {{5444, 20}}
SearchWrite(tb1, tb2, dataType)
gg.toast(Re_({230,168,161,231,179,138}))
gg.setRanges(1048576)--V内存
local dataType = 16--人物透明
local tb1 = {{5.6262676e21, 0},{6.0874458e21, 8},{6.1058931e21, 16}}
local tb2 = {{5444, 28}}
SearchWrite(tb1, tb2, dataType)
gg.toast(Re_({233,128,143,230,152,142}))
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast(Re_({230,148,190,233,151,170}))--弹语
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber(Re_({55,68,59,49,44,49,57,52,44,51,55,57,44,56,49,50,68,59,49,44,49,57,52,44,51,52,52,44,52,56,49,68,59,56,44,50,48,49,68,59,49,44,48,55,52,44,55,57,52,44,52,57,54,68}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,50,48,49}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll(Re_({55}), gg.TYPE_DWORD)
gg.toast(Re_({231,187,191,232,137,178}))
end


function a7()
gg.alert(Re_({229,135,134,229,164,135,229,188,128,229,144,175}))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber(Re_({53,46,49,53,54,55,55,56,51,101,45,52,51,59,51,46,53,56,55,51,50,52,49,101,45,52,51,59,51,46,50,50,50,57,56,54,53,101,45,52,52,59,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast(Re_({230,136,144,229,138,159}))
  gg.clearResults()
end


function a8()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.7408149e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.6262783e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function B()
menu1 = gg.multiChoice({
Re_({230,151,160,229,144,142,233,152,178,230,138,150}),
Re_({229,133,168,230,158,170,232,129,154,231,130,185}),
Re_({233,153,164,232,141,137,229,138,159,232,131,189}),
Re_({229,150,181,229,134,133,229,164,169,231,186,191}),
Re_({229,133,168,229,177,128,231,158,172,229,135,187}),
Re_({229,133,168,229,177,128,233,153,164,233,155,190}),
Re_({233,153,164,232,141,137,233,153,164,230,160,145}),
Re_({229,133,168,230,158,170,229,138,160,228,188,164}),
Re_({231,169,186,228,184,173,232,139,159,229,136,134,40,230,181,139,232,175,149,41}),
Re_({230,157,128,231,140,170,229,173,144,229,188,185}),
Re_({233,153,141,232,144,189,228,188,158,229,138,160,233,128,159}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({87,75,88,229,150,181,229,134,133,229,136,182,228,189,156,239,188,140,87,75,88,231,137,155,233,128,188}))
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
if menu1[12] == true then HOME() end
end

end

function b1()
  qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_CODE_APP},
{[Re_({110,97,109,101})] = Re_({229,133,168,229,177,128,229,141,136,229,144,142})},
{[Re_({118,97,108,117,101})] = -2.9756183e20, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = -9.9839328e27, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = -2.9766999e20, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = -1.1149337e28, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
Name = Re_({232,182,133,231,186,167,230,151,160,229,144,142}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.171954133480088E27, 0},
{-2.78698202667584E28, -12},
{-3.7444097189855772E28, -8},
{-1.1368873507541788E-13, -4},

}
local modify = {{0, -12},}
SearchWrite(search,modify,dataType,Name)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({233,152,178,230,138,150,229,188,128,229,144,175,228,184,173})},
{[Re_({118,97,108,117,101})] = -1476732160.0, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -3.7444097189855772E28, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -1.114450155758339E28, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 128.0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({229,133,168,230,158,170,233,152,178,230,138,150,229,188,128,229,144,175,230,136,144,229,138,159})},
{[Re_({118,97,108,117,101})] = -6.154945350000412E27, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -2.656333398413989E21, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -1.114450155758339E28, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.0, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end


function b2()
gg.setRanges(8)--聚点
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0}, {-1.238242388799446E28, -8}, {-1.423933276633091E28, -4}, {-1.8331474059341755E27, 4}, {-7.160887698833495E24, 8}, }
local tb2 = {{90, 0}, }
SearchWrite(tb1, tb2, dataType)
end


function b3()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({229,133,168,229,155,190,233,153,164,233,155,190})},
{[Re_({118,97,108,117,101})] = -2123974960349970432, [Re_({116,121,112,101})] = 32},
{[Re_({108,118})] = -1.3620439e28, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end


function b4()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{9.73725,0x68},}SearchWrite(tb1,tb2,dataType)
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({56,56,46,53,48,53,55,54,48,49,57,50,56,55,70,59,56,55,46,50,55,55,56,50,52,52,48,49,56,54,70,59,45,49,48,48,46,57,49,49,57,52,49,53,50,56,51,50,70,59,49,70,58,58,49,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,56,46,53,48,53,55,54,48,49,57,50,56,55,70,59,56,55,46,50,55,55,56,50,52,52,48,49,56,54,70,59,49,70}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({49,46,57,54,56,55,53,59,49,46,57,54,56,55,53,59,57,57,57,59,49,46,57,54,56,55,53,59,49,46,57,54,56,55,53,59,57,57,57}), gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(Re_({48,46,57,56,57,48,48,54,57,51,54,53,53,126,48,46,57,56,57,48,48,55,50,51,52,53,55,59,48,46,49,52,55,56,54,56,48,50,50,51,50,126,48,46,49,52,55,56,54,56,52,48,57,55,53,59,49,46,49,57,50,48,57,50,54,101,45,55,58,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({48,46,57,56,57,48,48,54,57,51,54,53,53,126,48,46,57,56,57,48,48,55,50,51,52,53,55}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll(Re_({57,57,57,57,57,57}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,164,169,231,186,191,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function b5()
gg.setRanges(16384)
local dataType = 16
local search = {{-1.4278110478704994E28, 0},{8.562694393506966E-26, -12},{1.8175359108152E-27, -8},}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)
local dataType = 16
local search = {{-3.254379949369797E30, 0},{2.646983324423844E-23, -56},}
local modify = {{0, -56},}
SearchWrite(search,modify,dataType,Name)
end


function b6()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 16384},
{[Re_({110,97,109,101})] = Re_({229,133,168,229,155,190,233,153,164,233,155,190})},
{[Re_({118,97,108,117,101})] = -2123974960349970432, [Re_({116,121,112,101})] = 32},
{[Re_({108,118})] = -1.3620439e28, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
end


function b7()
    gg.setRanges(16384)
    SearchWrite({
      {
        tonumber(Re_({45,51,46,49,56,54,51,56,48,54,101,51,48})),
        tonumber(Re_({48}))
      },
      {
        tonumber(Re_({45,54,46,49,56,52,48,56,54,53,101,50,55})),
        tonumber(Re_({49,50}))
      }
    }, {
      {
        tonumber(Re_({48})),
        tonumber(Re_({48}))
      }
    }, (tonumber(Re_({49,54}))))
end


function b8()
 gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber(Re_({56,56,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,56,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,54,54,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({50,53,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({55,49,53,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({55,49,53,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,52,48,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({53,48,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({56,55,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,55,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,54,55,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({55,53,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({57,48,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({57,48,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,56,48,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,48,48,37}))
end


function b9()
gg.clearResults()
	 gg.setRanges(65536)
	 gg.searchNumber(Re_({49,59,48,46,53,59,54,48,48,59,53,53,53,59,51,48,48,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,59,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -2}})
	 end
	 gg.toast(Re_({229,188,128,229,144,175}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(Re_({54,48,48,59,53,53,53,59,51,48,48,58,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({54,48,48,59,53,53,53,59,51,48,48,58,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -999999}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber(Re_({49,59,54,48,48,59,45,49,53,48,48,59,45,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({49,59,54,48,48,59,45,49,53,48,48,59,45,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1999999}})
	 end
	 gg.toast(Re_({}))
	 gg.clearResults()
end


function b10()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({45,50,48,54,55,49,53,50,50,50,52,57,54,57,53,52,53,50,48,48}),  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll(Re_({45,50,48,54,55,49,53,50,50,50,56,57,54,51,48,53,55,54,54,52}),32)
gg.clearResults()
end


function b11()
gg.setRanges(32)
gg.searchNumber(Re_({50,48,48,59,50,48,48,59,49,59,49,58,58,49,51}), 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49}), 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.getResults(21)
gg.editAll(Re_({50,52,49,50}), 16)
gg.toast(Re_({233,153,141,232,144,189,228,188,158,229,138,160,233,128,159,229,188,128,229,144,175,230,136,144,229,138,159}))
end



function D()
menu1 = gg.multiChoice({
Re_({228,186,186,231,137,169,229,156,176,231,186,191}),
Re_({230,173,165,230,158,170,231,158,172,229,135,187}),
Re_({230,173,165,230,158,170,229,138,160,228,188,164}),
Re_({228,184,138,229,184,157,232,167,134,232,167,146}),
Re_({231,158,172,233,151,180,229,188,128,233,149,156}),
Re_({232,182,133,229,188,186,232,183,175,233,163,158}),
Re_({229,150,181,229,134,133,229,138,160,233,128,159}),
Re_({229,138,160,233,128,159,229,133,179,233,151,173}),
Re_({228,188,151,231,148,159,229,138,160,233,128,159}),
Re_({229,138,160,233,128,159,229,133,179,233,151,173}),
Re_({229,144,137,230,153,174,229,141,135,229,164,169}),
Re_({229,144,137,230,153,174,229,133,179,233,151,173}),
Re_({232,159,145,232,158,130,229,141,135,229,164,169}),
Re_({232,159,145,232,158,130,229,133,179,233,151,173}),
Re_({229,144,137,230,153,174,229,138,160,233,128,159}),
Re_({229,133,168,232,189,166,229,138,160,233,128,159}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({87,75,88,229,150,181,229,134,133,229,136,182,228,189,156,239,188,140,87,75,88,231,137,155,233,128,188}))
if menu1 == nil then else 
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then d16() end
if menu1[17] == true then HOME() end
end

end

function d1()
gg.setRanges(32)
local tb1 = {{tonumber(Re_({45,49,46,54,56,55,52,49,51,54,57,50,52,55})),tonumber(Re_({48}))}, {tonumber(Re_({48,46,51,51,48,54,55,49,57,57,53,56,56})),tonumber(Re_({49,50}))}, } 	
local tb2 = {{tonumber(Re_({45,57,57,57,57,57,57,57,57,57})),tonumber(Re_({48}))}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast(Re_({229,156,176,231,186,191,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function d2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,188,128,229,144,175,230,136,144,229,138,159})},
{[Re_({118,97,108,117,101})] = 0.08600000292, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0.05, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},

}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,188,128,229,144,175,230,136,144,229,138,159})},
{[Re_({118,97,108,117,101})] = 0.09600000083, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0.05, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},

}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] = Re_({229,188,128,229,144,175,230,136,144,229,138,159})},
{[Re_({118,97,108,117,101})] = 0.10000000149, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 71500, [Re_({111,102,102,115,101,116})] = -32, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1, [Re_({111,102,102,115,101,116})] = -24, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 4.2038954e-44, [Re_({111,102,102,115,101,116})] = -20, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-44, [Re_({111,102,102,115,101,116})] = -16, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.4012985e-45, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 3.6013371e-43, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 4.2038954e-45, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0.05, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = 16},

}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({51,51,48,48,48,126,57,57,57,57,57,59,51,48,68,59,49,48,68,58,58,49,55}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({51,51,48,48,48,126,57,57,57,57,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({52,48,48,48,48}), gg.TYPE_FLOAT)
gg.alert(Re_({228,188,164,229,174,179,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function d3()
 gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber(Re_({56,56,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,56,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,54,54,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({50,53,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({55,49,53,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({55,49,53,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,52,48,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({53,48,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({56,55,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({56,55,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,54,55,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({55,53,37}))
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({57,48,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({57,48,48,48,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(Re_({49,56,48,48,48,48}), gg.TYPE_FLOAT)
gg.toast(Re_({49,48,48,37}))
end


function d4()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 32},
{[Re_({110,97,109,101})] =Re_({228,184,138,229,184,157,232,167,134,232,167,146})},
{[Re_({118,97,108,117,101})] =178, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 15, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 25, [Re_({111,102,102,115,101,116})] = -16, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] =440, [Re_({111,102,102,115,101,116})] = -24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end


function d5()
Name = Re_({231,167,146,229,188,128,229,128,141,233,149,156}) 
gg.setRanges(32)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.37999999523,0xEAE0},{6.16031837463, 0xEAD4},{6.1603140831,0xEACC},}
local tb2 = {{0, 0xEAE0},}
SearchWrite(tb1, tb2, dataType)
end


function d6()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({49,56,46,51,56,55,56,55,56,52,49,55,57,55}), 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({49,56,46,51,56,55,56,55,56,52,49,55,57,55}), 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll(Re_({49,53,48}), 16)
  gg.toast(Re_({228,184,139,232,185,178,232,183,175,233,163,158,229,188,128,229,144,175,230,136,144,229,138,159}))

  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(Re_({53,46,56,50,49,52,50,49,49,52,54,51,57}), 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({53,46,56,50,49,52,50,49,49,52,54,51,57}), 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll(Re_({49,53,48}), 16)
  gg.toast(Re_({231,171,153,231,171,139,232,183,175,233,163,158,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function d7()
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({54,46,49,54,51,48,57,48,52,101,45,51,51})),tonumber(Re_({45,52}))}, {tonumber(Re_({45,57,46,57,56,51,57,51,50,56,101,50,55})),tonumber(Re_({52}))}, {tonumber(Re_({45,49,46,48,48,55,48,57,55,53,101,50,56})),tonumber(Re_({49,54}))}, } 	
local tb2 = {{tonumber(Re_({48})), tonumber(Re_({48}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({45,49,46,48,53,51,48,51,54,55,101,50,56})),tonumber(Re_({45,49,50}))}, {tonumber(Re_({45,53,46,56,52,53,52,53,56,54,101,50,55})),tonumber(Re_({45,56}))}, {tonumber(Re_({45,50,46,55,56,54,48,49,53,49,101,50,56})),tonumber(Re_({48}))}, {tonumber(Re_({45,51,46,55,52,52,52,48,57,55,101,50,56})),tonumber(Re_({52}))}, {tonumber(Re_({45,50,46,55,57,51,55,53,50,101,50,56})),tonumber(Re_({50,57,54}))}, } 	
local tb2 = {{tonumber(Re_({48})),tonumber(Re_({48}))}, {tonumber(Re_({48})),tonumber(Re_({52}))}, {tonumber(Re_({48})),tonumber(Re_({50,57,54}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = Re_({229,138,160,233,128,159,229,188,128,229,144,175,228,184,173})},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2.3,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast(Re_({229,138,160,233,128,159,229,188,128,229,144,175,228,184,173}))
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name=Re_({229,133,168,233,128,159,231,187,159,228,184,128})
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(32) 
local tb1 = {{ (Re_({51,54,48,48,48,48,48,48,48,48})), (Re_({56,48}))}, { (Re_({50,53,48,48,48,48,48,48,48,48})), (Re_({56,56}))} } 	
local tb2 = {{ (Re_({49,50,48,48})), (Re_({48}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Fxs({{11.25,0,16},{-1.8890966e26,4,16},{-0.60239994526,8,16},},{{10.90734863281,0,16},},8,Re_({70,120,115}))
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.0005, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.025, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{1.448214205959717E-35, 0},{-3.8369230488065634E21, -4},}
local tb2 = {{-3.8369228e21, -4},}
SearchWrite(tb1, tb2, dataType)
end


function d8()
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({54,46,49,54,51,48,57,48,52,101,45,51,51})),tonumber(Re_({45,52}))}, {tonumber(Re_({45,57,46,57,56,51,57,51,50,56,101,50,55})),tonumber(Re_({52}))}, {tonumber(Re_({45,49,46,48,48,55,48,57,55,53,101,50,56})),tonumber(Re_({49,54}))}, } 	
local tb2 = {{tonumber(Re_({45,54,46,49,53,50,54,50,51,49,101,50,55})),tonumber(Re_({48}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({45,49,46,48,53,51,48,51,54,55,101,50,56})),tonumber(Re_({45,49,50}))}, {tonumber(Re_({45,53,46,56,52,53,52,53,56,54,101,50,55})),tonumber(Re_({45,56}))}, {tonumber(Re_({48})),tonumber(Re_({48}))}, {tonumber(Re_({48})),tonumber(Re_({52}))}, {tonumber(Re_({48})),tonumber(Re_({50,57,54}))}, } 	
local tb2 = {{tonumber(Re_({45,50,46,55,56,54,48,49,53,49,101,50,56})),tonumber(Re_({48}))}, {tonumber(Re_({45,51,46,55,52,52,52,48,57,55,101,50,56})),tonumber(Re_({52}))}, {tonumber(Re_({45,50,46,55,57,51,55,53,50,101,50,56})),tonumber(Re_({50,57,54}))}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = Re_({229,138,160,233,128,159,229,133,179,233,151,173,228,184,173})},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast(Re_({229,138,160,233,128,159,229,133,179,233,151,173,228,184,173}))
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.025, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.0005, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
Name = Re_({230,129,162,229,164,141}) 
local tb1 = {{1.448214205959717E-35, 0},{-3.8369228e21, -4},{-1.1903915942440579E21, -44},{-2.9557634527827853E20, -40},{-3.6893509258042357E20, -12},}
local tb2 = {{-3.8369230488065634E21, -4},}
SearchWrite(tb1, tb2, dataType)
end


function d9()
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({54,46,49,54,51,48,57,48,52,101,45,51,51})),tonumber(Re_({45,52}))}, {tonumber(Re_({45,57,46,57,56,51,57,51,50,56,101,50,55})),tonumber(Re_({52}))}, {tonumber(Re_({45,49,46,48,48,55,48,57,55,53,101,50,56})),tonumber(Re_({49,54}))}, } 	
local tb2 = {{tonumber(Re_({48})), tonumber(Re_({48}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber(Re_({45,49,46,48,53,51,48,51,54,55,101,50,56})),tonumber(Re_({45,49,50}))}, {tonumber(Re_({45,53,46,56,52,53,52,53,56,54,101,50,55})),tonumber(Re_({45,56}))}, {tonumber(Re_({45,50,46,55,56,54,48,49,53,49,101,50,56})),tonumber(Re_({48}))}, {tonumber(Re_({45,51,46,55,52,52,52,48,57,55,101,50,56})),tonumber(Re_({52}))}, {tonumber(Re_({45,50,46,55,57,51,55,53,50,101,50,56})),tonumber(Re_({50,57,54}))}, } 	
local tb2 = {{tonumber(Re_({48})),tonumber(Re_({48}))}, {tonumber(Re_({48})),tonumber(Re_({52}))}, {tonumber(Re_({48})),tonumber(Re_({50,57,54}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = Re_({229,138,160,233,128,159,229,188,128,229,144,175,228,184,173})},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_CODE_APP)
local dataType=gg.TYPE_FLOAT Name=Re_({229,133,168,233,128,159,231,187,159,228,184,128})
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00050000002,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.02, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
gg.toast(Re_({231,168,179,229,174,154,229,138,160,233,128,159}))
end


function d10()

end


function d11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({48,46,48,48,48,53,53,53,53,53,53,53,55,59,52,57,46,57,57,57,57,57,54,49,56,53,51,59,50,52,46,57,57,57,57,57,56,48,57,50,54,53}),  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({48,46,48,48,48,53,53,53,53,53,53,53,55}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({48,46,48,48,52,53,53,53,53,53,53,53,55}),gg.TYPE_FLOAT)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end


function d12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({48,46,48,48,52,53,53,53,53,53,53,53,55}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({48,46,48,48,52,53,53,53,53,53,53,53,55}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({48,46,48,48,48,53,53,53,53,53,53,53,55}),gg.TYPE_FLOAT)
gg.toast(Re_({229,133,179,233,151,173,230,136,144,229,138,159}))
end


function d13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({48,46,48,48,48,49,54,54,54,54,54,54,54,59,59,52,57,46,57,57,57,57,57,54,49,56,53,51}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({48,46,48,48,48,49,54,54,54,54,54,54,54}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({48,46,48,48,52,49,54,54,54,54,54,54,54}),gg.TYPE_FLOAT)
gg.toast(Re_({229,188,128,229,144,175,230,136,144,229,138,159}))
end


function d14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({48,46,48,48,52,49,54,54,54,54,54,54,54}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(Re_({48,46,48,48,52,49,54,54,54,54,54,54,54}), gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll(Re_({48,46,48,48,48,49,54,54,54,54,54,54,54}),gg.TYPE_FLOAT)
gg.toast(Re_({229,133,179,233,151,173,230,136,144,229,138,159}))
end


function d15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(Re_({48,46,55,54,48,48,48,48,48,53,48,48,55,59,48,46,57,54,48,55,56,52,51,49,54,48,54,59,49,59,48,46,55,52,53,48,57,56,48,53,52,52,49,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({48,46,55,52,53,48,57,56,48,53,52,52,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(Re_({57,57,57,57,57}), gg.TYPE_FLOAT)
gg.toast(Re_({229,144,137,230,153,174,229,138,160,233,128,159}))
end


function d16()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(Re_({53,48,59,53,59,48,46,48,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({48,46,48,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll(Re_({45,48,46,50,51}), gg.TYPE_FLOAT)
  g10sj=Re_({49})
  gg.toast(Re_({229,133,168,232,189,166,229,138,160,233,128,159,229,183,178,229,188,128,229,144,175}))
end



function E()
menu1 = gg.multiChoice({
Re_({67,68,232,135,170,231,158,132}),
Re_({229,133,168,229,177,143,232,135,170,231,158,132}),
Re_({230,187,139,229,145,179,232,135,170,231,158,132}),
Re_({230,140,129,230,158,170,232,135,170,231,158,132}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({232,135,170,231,158,132,229,188,128,67,68,229,133,168,229,177,143,230,140,129,230,158,170,229,176,177,232,161,140,239,188,140,230,187,139,229,145,179,232,135,170,231,158,132,229,155,162,231,171,158,231,148,168}))
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then HOME() end
end

end

function e1()
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({229,134,133,229,173,152,232,135,170,231,158,132})},
{[Re_({118,97,108,117,101})] = 3.5, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 2.20000004768, [Re_({111,102,102,115,101,116})] = -44, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0.5, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0.10000000149, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0.5, [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0.80000001192, [Re_({111,102,102,115,101,116})] = 32, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0.80000001192, [Re_({111,102,102,115,101,116})] = 36, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 200, [Re_({111,102,102,115,101,116})] = 52, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 20, [Re_({111,102,102,115,101,116})] = 56, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 100, [Re_({111,102,102,115,101,116})] = 60, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 99999, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 99999, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 99999, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 99999, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.setRanges(16384)
local tb1 = {{ (Re_({51,54,48})), (Re_({45,49,50}))}, { (Re_({48,46,48,48,48,49})), (Re_({48}))}, { (Re_({49,52,55,56,56,50,56,50,56,56})), (Re_({56,52}))}, } 	
local tb2 = {{ (Re_({57,57,57,57,57})), (Re_({48}))}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.555965707145412E26, 0},

}
local modify = {{-3.86856308e25, 92},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,48,49,53,49,55,53,49,54,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({48,46,48,48,48,49,59,49,52,55,56,56,50,56,50,56,56,58,58}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({48,46,48,48,48,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll(Re_({49,56,48}), gg.TYPE_FLOAT)
gg.toast(Re_({229,134,133,229,173,152,232,135,170,231,158,132,229,183,178,230,136,144,229,138,159}))
end


function e2()
gg.setRanges(16384)
gg.searchNumber(Re_({50,48,49,53,49,55,53,49,54,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.setRanges(16384)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({45,53,49,49,55,48,51,48,51,56,59,45,51,51,54,53,56,54,57,54,49,58,50,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({45,53,49,49,55,48,51,48,51,56}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll(Re_({45,52,55,54,48,53,51,53,48,52}), gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,46,54,54,49,53,51,53,52,101,51,53,59,45,53,46,56,48,52,57,51,55,54,101,50,54,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,46,54,54,49,53,51,53,52,101,51,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({49,46,54,54,49,53,51,53,49,101,51,53}), gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({45,49,57,48,51,56,57,53,54,50,49,57,57,52,48,48,48,51,56,51}),  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll(Re_({45,49,57,48,51,56,57,53,54,50,49,57,57,52,48,48,48,51,56,50}),gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({50,48,49,53,49,55,53,49,54,56}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({48}), gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(Re_({49,46,54,54,49,53,51,53,52,101,51,53,59,45,53,46,56,48,52,56,57,52,53,101,50,54,58,57}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(Re_({49,46,54,54,49,53,51,53,52,101,51,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll(Re_({49,46,54,54,49,53,51,53,49,101,51,53}), gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(Re_({229,188,128,230,158,170,232,135,170,231,158,132,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function e3()
Name = Re_({230,140,129,230,158,170,232,135,170,231,158,132,45,45,230,187,139,229,145,179}) 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({230,140,129,230,158,170,232,135,170,231,158,132}) 
gg.setRanges(8)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)

end


function e4()
Name = Re_({230,151,160,232,167,134,233,152,159,229,143,139,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({230,140,129,230,158,170,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({230,140,129,230,158,170,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)


Name = Re_({229,188,128,231,129,171,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({229,188,128,231,129,171,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,182,180,228,184,139,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,182,180,228,184,139,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,183,157,231,166,187,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,183,157,231,166,187,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({50,55,48,226,132,131}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({50,55,48,226,132,131}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({233,162,145,231,142,135,232,135,170,231,158,132})
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,191,145,230,136,152,232,135,170,231,158,132}) 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},

}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)

Name = Re_({232,135,170,231,158,132}) 
gg.setRanges(32)
local dataType = 16
local search = {{8000.0, 0},{3.5, -64},{0.5, -44},{200.0, -12},{100.0, -4},}
local modify = {{99999, -48},{99999, -52},{99999, -56},{99999, -60},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(16384)
Name=Re_({232,183,157,231,166,187})
local dataType = 32
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name=Re_({232,182,180,233,148,129})
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name=Re_({229,138,160,232,189,189,229,136,164,230,150,173})--/-3.9291568e21;2.6469862e-23;-8.736414e22;-3.8369228e21
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{-3.9291565e21,0x6D58}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name=Re_({232,182,133,229,188,186,229,136,164,230,150,173})--/1.6615354e35;-1.1221873e28;-5.8048698e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7A38}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name=Re_({229,133,168,229,155,190,232,183,157,231,166,187})--/1.6615354e35;-1.1144502e28;-5.8053394e26;-1.0525532e28
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x6654}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name=Re_({50,55,48,226,132,131,232,140,131,229,155,180})--/1.6615354e35;-1.1221873e28;-5.8049129e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7864}}SearchWrite(tb1,tb2,dataType)
end


function F()
menu1 = gg.multiChoice({
Re_({87,75,88,232,140,131,229,155,180}),
Re_({229,164,180,233,131,168,232,140,131,229,155,180}),
Re_({229,150,181,229,134,133,232,140,131,229,155,180}),
Re_({230,137,147,233,184,159,232,140,131,229,155,180}),
Re_({232,128,129,229,164,150,232,140,131,229,155,180}),
Re_({232,191,148,229,155,158,228,184,138,228,184,128,233,161,181})},
nil,Re_({232,140,131,229,155,180,229,133,168,229,188,128,233,133,141,229,144,136,231,158,172,229,135,187,228,184,137,230,158,170,231,167,146,230,157,128,239,188,140,87,75,88,231,137,155,233,128,188}))
if menu1 == nil then else 
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then HOME() end
end

end

function f1()
gg.setRanges(32)--子弹范围
local dataType = 16
local Name =Re_({229,173,144,229,188,185,232,140,131,229,155,180})
local tb1 = {{90.775703430176, 0}, {0, 0}, {8, 0}, {16, 2}, }
local tb2 = {{150, 2}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--身体范围
local dataType = 16
local Name =Re_({229,164,180,233,131,168,232,140,131,229,155,180})
local tb1 = {{0.00009203507, 0}, {25, 20}, {30.5, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name =Re_({232,186,171,228,189,147,232,140,131,229,155,180})
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name =Re_({232,186,171,228,189,147,232,140,131,229,155,180,50})
local tb1 = {{-88.73961639404, 0}, {18, 4}, {28, 8}, }
local tb2 = {{-530, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name =Re_({229,133,168,232,186,171,232,140,131,229,155,180})
local tb1 = {{69.5, 0}, {33, -4}, {35, -8}, }
local tb2 = {{270, 0}, {130, -4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end


function f2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({232,182,133,229,164,167,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 9.20161819458, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 12, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 0, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 155, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT, [Re_({102,114,101,101,122,101})] = true},
{[Re_({118,97,108,117,101})] = 155, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT, [Re_({102,114,101,101,122,101})] = false},
{[Re_({118,97,108,117,101})] = 155, [Re_({111,102,102,115,101,116})] = 28, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 155, [Re_({111,102,102,115,101,116})] = 32, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({229,164,180,233,131,168,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 0.00009203507, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 25, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 30.5, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 295, [Re_({111,102,102,115,101,116})] = 20, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 295, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({232,186,171,228,189,147,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = -88.66608428955, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 16, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 26, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -430, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({232,186,171,228,189,147,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = -88.73961639404, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 18, [Re_({111,102,102,115,101,116})] = 4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 28, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
{[Re_({118,97,108,117,101})] = -530, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = gg.REGION_ANONYMOUS},
{[Re_({110,97,109,101})] = Re_({229,133,168,232,186,171,232,140,131,229,155,180})},
{[Re_({118,97,108,117,101})] = 69.5, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 33, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({108,118})] = 35, [Re_({111,102,102,115,101,116})] = -8, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
qmxg = {
--[Re_({102,114,101,101,122,101})] = true   添加这个为冻结
--[Re_({102,114,101,101,122,101})] = false   这个为恢复冻结，取消冻结
{[Re_({118,97,108,117,101})] = 270, [Re_({111,102,102,115,101,116})] = 0, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
{[Re_({118,97,108,117,101})] = 130, [Re_({111,102,102,115,101,116})] = -4, [Re_({116,121,112,101})] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end 
  function e7()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(Re_({57,46,50,48,49,54,49,56,49,57,52,53,56,59,50,51,59,50,53,59,51,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({50,53,59,51,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll(Re_({50,54,48}), gg.TYPE_FLOAT)
  gg.searchNumber(Re_({51,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll(Re_({50,54,48}), gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber(Re_({49,59,50,48,46,53,49,57,52,49,56,55,49,54,52,51,59,50,46,48,52,57,48,56,57,52,51,49,55,54,59,45,56,54,46,52,53,55,54,55,57,55,52,56,53,52,59,45,57,50,46,50,51,49,49,55,48,54,53,52,51,59,49,54,46,48}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(Re_({49,54}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(Re_({49,50,48}), gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(Re_({57,46,50,48,49,54,49,56,49,57,52,53,56,59,50,51,59,50,53,59,51,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber(Re_({50,53,59,51,48,46,53}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(Re_({50,52,48}), gg.TYPE_FLOAT)
  gg.toast(Re_({231,156,159,228,188,164,229,164,180,233,131,168,232,140,131,229,155,180,229,188,128,229,144,175,230,136,144,229,138,159}))
end


function f3()
gg.setRanges(32)
local dataType = 16
local search = {{9.20161819458, 0},{25, 20},{30.5, 24},}
local modify = {{300, 20},{300, 24},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-99999999, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999999, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{69.5, 0},{33, -4},{35, -8},}
local modify = {{270, 0},{130, -4},}
SearchWrite(search,modify,dataType,Name)
end


function f4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(Re_({45,53,46,49,49,48,52,51,49,55,69,50,55,59,45,49,46,51,48,55,57,57,50,56,69,50,49,59,48,46,48,48,48,48,49,59,54,46,49,54,51,48,52,50,55,69,45,51,51}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Re_({48,46,48,48,48,48,49}), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Re_({54}), gg.TYPE_FLOAT)
	 gg.toast(Re_({229,166,136,231,154,132,239,188,140,231,155,180,230,142,165,231,169,191,229,136,176,229,175,185,233,157,162,229,167,165,229,167,165,229,174,182,227,128,130}))
	 gg.clearResults()
end


function f5()
qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {name = Re_({72,101,97,100,32,114,97,110,103,101})},
    {
      value = 9.203507E-5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 25,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 30.5,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 295,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      value = 295,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = Re_({87,104,111,108,101,32,98,111,100,121,32,114,97,110,103,101})
    },
    {
      value = 69.5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 33,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 35,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 260,
      offset = 0,
      type = gg.TYPE_FLOAT
    },
    {
      value = 120,
      offset = -4,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end






function Exit()
print(Re_({229,150,181,229,134,133,229,136,182,228,189,156,229,155,189,228,189,147,232,132,154,230,156,172,239,188,140,87,75,88,231,137,155,233,128,188}))
os.exit()
end



function HOME()
lw=1
Main()
end



cs = Re_({229,150,181,229,134,133,229,155,189,228,189,147})
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