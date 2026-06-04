local t={"开始搜索\n"}
function Musy()
-- local _=gg.choice(table表,选中位置,标题)
local _=gg.choice(t)
if not _ then return else
_G["_".._]()
end
end

function _1()
gg.clearResults()
gg.searchNumber('100',4)
local sj=gg.getResultCount()
if (sj==0) then os.exit(print('搜索失败')) end--判断是否搜索出地址
jg=gg.getResults(1)--用jg变量来保存搜索的地址
dz16=string.format("%#X",jg[1].address)--10进制转16进制
gg.alert('Address(10):'..jg[1].address..'  Address(16):'..dz16..'  Value:'..jg[1].value..'  Flags:'..jg[1].flags)
-------
print('打印jg[1]')
print(jg[1])
print('打印jg[1]的地址(10进制)'..jg[1].address)
dz16=string.format("%#X",jg[1].address)--10进制转16进制
print('打印jg[1]的地址(16进制)'..dz16)
print('打印jg[1]的类型'..jg[1].flags)
print('打印jg[1]的数值'..jg[1].value)
print('打印jg[1]的地址偏移4的地址(10)'..jg[1].address+4)
dz2_16=string.format("%#X",jg[1].address+4)--10进制转16进制
print('打印jg[1]的地址偏移4的地址(16)'..dz2_16)
-------
gg.toast("数据获取成功️！")

-- function (values) end, -- gg.getValues(table values) -> table || string with error
local data={
{["address"]=jg[1].address,["value"]=1009,["flags"]=4,["freeze"]=false}
}
gg.setValues(data)--修改原值

local data={
{["address"]=jg[1].address+4,["value"]=1009,["flags"]=4,["freeze"]=true}
}
gg.addListItems(data)--修改冻结原值偏移4数值值

--{{["address"]=地址,["value"]=修改值,["flags"]=类型,["freeze"]=冻结}}

--保存数值 gg.addListItems({{["address"]=jg[1].address,["flags"]=4,["freeze"]=false}})
--冻结数值 gg.addListItems({{["address"]=jg[1].address,["flags"]=4,["freeze"]=true}})
end


gg.showUiButton()
while(true)do
if gg.isClickedUiButton()
then Musy()
end
end