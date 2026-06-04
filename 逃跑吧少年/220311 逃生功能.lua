DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

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
           gg.toast("\n共修改"..#data.."条数据")
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
            gg.toast("\n开启失败", false)
            return false
        end
    else
        gg.toast("\n开启失败")
        return false
    end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器

function Main0()
SN = gg.choice({
	 "一键开启",
	 "一键逃跑开了门用",
	 "49全局加速［自调］",
	 "搜狗全局加速［自调］",
	 "退出脚本",
}, nil, "自己演")
if SN==1 then a1() end
if SN==2 then a2() end
if SN==3 then b1() end
if SN==4 then b2() end
if SN==5 then a3() end
FX1=0
end

function a1()
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 4.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("3", FLOAT)
gg.toast("范围锁门人开启成功")
gg.clearResults()

end
end

function a2()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,061,997,773", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,061,997,773", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99999", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,061,997,773", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end
function b1()
local es=gg.prompt({"全局加速［默认1.3］"}, {[1] = 1.3}, {[1] = "text"})
if es==nil then os.exit(print("亲～你点击了取消哦")) end
 local Addr=getnc("libunity.so:bss","Cb")
  local List={0x284DC,0xEC}
  local List=readPointer(Addr,List)
  setvalue(List,es[1],16)
  _ENV["gg"]["toast"]("开启成功")

end
function b2()
local es=gg.prompt({"全局加速［默认为1.3］"}, {[1] = 1.3}, {[1] = "text"})
if es==nil then os.exit(print("亲～你点击了取消哦")) end
local Add=gg.getRangesList("libunity.so:bss")[1].start
local Add=Add+0x284DC
local Add=ReadAdd(Add)+0xEC
ReadAddress(Add,es[1],16,false,"全局加速")
end


function a3()
os.exit(print("作者企鹅:3468753723 本脚本完全免费，请勿倒卖"))end

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end