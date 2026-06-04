function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local hex = {} function patch(lib,offset,edit,type) local ranges = gg.getRangesList(lib) local xy = {} xy[1] = {} xy[1].address = ranges[1].start + offset xy[1].flags = type xy[1].value = edit gg.setValues(xy) end
--制作 
function Main()
  SN =gg.multiChoice({
  "防,腾讯！",
  "透",
  "范围",
 }, nil, "")
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
    i()
  end
if SN[10] == true then
    j()
  end
if SN[11] == true then
    k()
  end
if SN[12] == true then
    l()
  end
 if SN[13] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
a = "13488\nVar #C7B04B84|c7b04b84|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20b84\nVar #C7B04B88|c7b04b88|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20b88\nVar #C7B04B8C|c7b04b8c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20b8c\nVar #C7B04B90|c7b04b90|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20b90\nVar #C7B04BD0|c7b04bd0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bd0\nVar #C7B04BD4|c7b04bd4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bd4\nVar #C7B04BD8|c7b04bd8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bd8\nVar #C7B04BE4|c7b04be4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20be4\nVar #C7B04BE8|c7b04be8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20be8\nVar #C7B04BF0|c7b04bf0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bf0\nVar #C7B04BF4|c7b04bf4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bf4\nVar #C7B04BF8|c7b04bf8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bf8\nVar #C7B04BFC|c7b04bfc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20bfc\nVar #C7B04E54|c7b04e54|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e54\nVar #C7B04E58|c7b04e58|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e58\nVar #C7B04E5C|c7b04e5c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e5c\nVar #C7B04E60|c7b04e60|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e60\nVar #C7B04E64|c7b04e64|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e64\nVar #C7B04E68|c7b04e68|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e68\nVar #C7B04E6C|c7b04e6c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e6c\nVar #C7B04E70|c7b04e70|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e70\nVar #C7B04E74|c7b04e74|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e74\nVar #C7B04E78|c7b04e78|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e78\nVar #C7B04E94|c7b04e94|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e94\nVar #C7B04E98|c7b04e98|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e98\nVar #C7B04E9C|c7b04e9c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20e9c\nVar #C7B04EA0|c7b04ea0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ea0\nVar #C7B04EA4|c7b04ea4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ea4\nVar #C7B04EA8|c7b04ea8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ea8\nVar #C7B04EAC|c7b04eac|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20eac\nVar #C7B04EB0|c7b04eb0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20eb0\nVar #C7B04EB4|c7b04eb4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20eb4\nVar #C7B04EB8|c7b04eb8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20eb8\nVar #C7B04EBC|c7b04ebc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ebc\nVar #C7B04EC0|c7b04ec0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ec0\nVar #C7B04EC4|c7b04ec4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ec4\nVar #C7B04EC8|c7b04ec8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ec8\nVar #C7B04ECC|c7b04ecc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ecc\nVar #C7B04ED0|c7b04ed0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20ed0\nVar #C7B04F34|c7b04f34|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f34\nVar #C7B04F38|c7b04f38|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f38\nVar #C7B04F3C|c7b04f3c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f3c\nVar #C7B04F40|c7b04f40|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f40\nVar #C7B04F44|c7b04f44|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f44\nVar #C7B04F48|c7b04f48|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f48\nVar #C7B04F4C|c7b04f4c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f4c\nVar #C7B04F50|c7b04f50|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f50\nVar #C7B04F54|c7b04f54|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f54\nVar #C7B04F58|c7b04f58|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f58\nVar #C7B04F5C|c7b04f5c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f5c\nVar #.C7B04F60|c7b04f60|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtersafe.so|20f60"
fileData = gg.EXT_STORAGE .. "/[####].dat"
io.output(fileData):write(a):close()
gg.loadList(fileData, gg.LOAD_APPEND)
gg.sleep(50)
r = gg.getListItems()
gg.loadResults(r)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.loadResults(r)
gg.clearResults()
getReset = gg.getValues(r)
os.remove(fileData)
gg.clearResults()
gg.toast("防成功")
end



function b()
so=gg.getRangesList('libtersafe.so')[1].start
local py=0x38330C      
setvalue(so+py,4,0)
b = "25571\nVar #C9638EF8|c9638ef8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2ef8\nVar #C9638EFC|c9638efc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2efc\nVar #C9638F00|c9638f00|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f00\nVar #C9638F04|c9638f04|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f04\nVar #C9638F08|c9638f08|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f08\nVar #C9638F0C|c9638f0c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f0c\nVar #C9638F10|c9638f10|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f10\nVar #C9638F14|c9638f14|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f14\nVar #C9638F18|c9638f18|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f18\nVar #C9638F1C|c9638f1c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f1c\nVar #C9638F20|c9638f20|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f20\nVar #C9638F24|c9638f24|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f24\nVar #C9638F28|c9638f28|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f28\nVar #C9638F2C|c9638f2c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f2c\nVar #C9638F30|c9638f30|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f30\nVar #C9638F34|c9638f34|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f34\nVar #C9638F38|c9638f38|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f38\nVar #C9638F3C|c9638f3c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f3c\nVar #C9638F40|c9638f40|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f40\nVar #C9638F44|c9638f44|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f44\nVar #C9638F48|c9638f48|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f48\nVar #C9638F4C|c9638f4c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f4c\nVar #C9638F50|c9638f50|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f50\nVar #C9638F54|c9638f54|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f54\nVar #C9638F58|c9638f58|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f58\nVar #C9638F5C|c9638f5c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f5c\nVar #C9638F60|c9638f60|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f60\nVar #C9638F64|c9638f64|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f64\nVar #C9638F68|c9638f68|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f68\nVar #C9638F6C|c9638f6c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f6c\nVar #C9638F70|c9638f70|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f70\nVar #C9638F74|c9638f74|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f74\nVar #C9638F78|c9638f78|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f78\nVar #C9638F7C|c9638f7c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f7c\nVar #C9638F80|c9638f80|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f80\nVar #C9638F84|c9638f84|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f84\nVar #C9638F88|c9638f88|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f88\nVar #C9638F8C|c9638f8c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f8c\nVar #C9638F90|c9638f90|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f90\nVar #C9638F94|c9638f94|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f94\nVar #C9638F98|c9638f98|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f98\nVar #C9638F9C|c9638f9c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2f9c\nVar #C9638FA0|c9638fa0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fa0\nVar #C9638FA4|c9638fa4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fa4\nVar #C9638FA8|c9638fa8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fa8\nVar #C9638FAC|c9638fac|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fac\nVar #C9638FB0|c9638fb0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fb0\nVar #C9638FB4|c9638fb4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fb4\nVar #C9638FB8|c9638fb8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fb8\nVar #C9638FBC|c9638fbc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fbc\nVar #C9638FC0|c9638fc0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fc0\nVar #C9638FC4|c9638fc4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fc4\nVar #C9638FC8|c9638fc8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fc8\nVar #C9638FCC|c9638fcc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fcc\nVar #C9638FD0|c9638fd0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fd0\nVar #C9638FD4|c9638fd4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fd4\nVar #C9638FD8|c9638fd8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fd8\nVar #C9638FDC|c9638fdc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fdc\nVar #C9638FE0|c9638fe0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fe0\nVar #C9638FE4|c9638fe4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fe4\nVar #C9638FE8|c9638fe8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fe8\nVar #C9638FEC|c9638fec|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2fec\nVar #C9638FF0|c9638ff0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2ff0\nVar #C9638FF4|c9638ff4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2ff4\nVar #C9638FF8|c9638ff8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2ff8\nVar #C9638FFC|c9638ffc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so|2ffc\nVar #C9639000|c9639000|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|0\nVar #C9639004|c9639004|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|4\nVar #C9639008|c9639008|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|8\nVar #C963900C|c963900c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|c\nVar #C9639010|c9639010|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|10\nVar #C9639014|c9639014|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|14\nVar #C9639018|c9639018|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|18\nVar #C963901C|c963901c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|1c\nVar #C9639020|c9639020|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|20\nVar #C9639024|c9639024|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|24\nVar #C9639028|c9639028|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|28\nVar #C963902C|c963902c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|2c\nVar #C9639030|c9639030|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|30\nVar #C9639034|c9639034|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|34\nVar #C9639038|c9639038|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|38\nVar #C963903C|c963903c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3c\nVar #C9639040|c9639040|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|40\nVar #C9639044|c9639044|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|44\nVar #C9639048|c9639048|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|48\nVar #C963904C|c963904c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|4c\nVar #C9639050|c9639050|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|50\nVar #C9639054|c9639054|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|54\nVar #C9639058|c9639058|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|58\nVar #C963905C|c963905c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|5c\nVar #C963906C|c963906c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|6c\nVar #C9639070|c9639070|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|70\nVar #C9639074|c9639074|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|74\nVar #C9639078|c9639078|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|78\nVar #C963907C|c963907c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|7c\nVar #C9639080|c9639080|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|80\nVar #C9639084|c9639084|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|84\nVar #C9639088|c9639088|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|88\nVar #C963908C|c963908c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|8c\nVar #C9639090|c9639090|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|90\nVar #C9639094|c9639094|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|94\nVar #C9639098|c9639098|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|98\nVar #C963909C|c963909c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|9c\nVar #C96390A0|c96390a0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|a0\nVar #C96390A4|c96390a4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|a4\nVar #C96390A8|c96390a8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|a8\nVar #C96390AC|c96390ac|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|ac\nVar #C96390B0|c96390b0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|b0\nVar #C96390B4|c96390b4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|b4\nVar #C96390B8|c96390b8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|b8\nVar #C96390BC|c96390bc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|bc\nVar #C96390C0|c96390c0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|c0\nVar #C96390C4|c96390c4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|c4\nVar #C96390C8|c96390c8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|c8\nVar #C96390CC|c96390cc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|cc\nVar #C96390D0|c96390d0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|d0\nVar #C96390D4|c96390d4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|d4\nVar #C96390D8|c96390d8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|d8\nVar #C96390DC|c96390dc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|dc\nVar #C96390E0|c96390e0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|e0\nVar #C96390E4|c96390e4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|e4\nVar #C96390E8|c96390e8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|e8\nVar #C96390EC|c96390ec|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|ec\nVar #C96390F0|c96390f0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|f0\nVar #C96390F4|c96390f4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|f4\nVar #C96390F8|c96390f8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|f8\nVar #C96390FC|c96390fc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|fc\nVar #C9639100|c9639100|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|100\nVar #C9639104|c9639104|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|104\nVar #C9639108|c9639108|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|108\nVar #C963910C|c963910c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|10c\nVar #C9639110|c9639110|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|110\nVar #C9639114|c9639114|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|114\nVar #C9639118|c9639118|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|118\nVar #C963911C|c963911c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|11c\nVar #C9639120|c9639120|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|120\nVar #C9639124|c9639124|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|124\nVar #C9639128|c9639128|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|128\nVar #C963912C|c963912c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|12c\nVar #C9639130|c9639130|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|130\nVar #C9639134|c9639134|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|134\nVar #C9639138|c9639138|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|138\nVar #C963913C|c963913c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|13c\nVar #C9639140|c9639140|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|140\nVar #C9639144|c9639144|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|144\nVar #C9639148|c9639148|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|148\nVar #C963914C|c963914c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|14c\nVar #C9639150|c9639150|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|150\nVar #C9639154|c9639154|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|154\nVar #C9639158|c9639158|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|158\nVar #C963915C|c963915c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|15c\nVar #C9639160|c9639160|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|160\nVar #C9639164|c9639164|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|164\nVar #C9639168|c9639168|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|168\nVar #C963916C|c963916c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|16c\nVar #C9639170|c9639170|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|170\nVar #C9639174|c9639174|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|174\nVar #C9639178|c9639178|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|178\nVar #C963917C|c963917c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|17c\nVar #C9639180|c9639180|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|180\nVar #C9639184|c9639184|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|184\nVar #C9639188|c9639188|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|188\nVar #C963918C|c963918c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|18c\nVar #C9639190|c9639190|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|190\nVar #C963920C|c963920c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|20c\nVar #C9639210|c9639210|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|210\nVar #C9639214|c9639214|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|214\nVar #C9639218|c9639218|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|218\nVar #C963921C|c963921c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|21c\nVar #C9639220|c9639220|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|220\nVar #C9639224|c9639224|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|224\nVar #C9639228|c9639228|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|228\nVar #C963922C|c963922c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|22c\nVar #C9639230|c9639230|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|230\nVar #C9639234|c9639234|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|234\nVar #C9639238|c9639238|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|238\nVar #C963923C|c963923c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|23c\nVar #C9639240|c9639240|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|240\nVar #C9639244|c9639244|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|244\nVar #C9639248|c9639248|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|248\nVar #C963924C|c963924c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|24c\nVar #C9639250|c9639250|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|250\nVar #C9639254|c9639254|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|254\nVar #C9639258|c9639258|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|258\nVar #C963925C|c963925c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|25c\nVar #C9639260|c9639260|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|260\nVar #C9639280|c9639280|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|280\nVar #C9639284|c9639284|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|284\nVar #C963928C|c963928c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|28c\nVar #C9639290|c9639290|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|290\nVar #C9639294|c9639294|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|294\nVar #C9639298|c9639298|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|298\nVar #C963929C|c963929c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|29c\nVar #C96392A0|c96392a0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|2a0\nVar #C96392A4|c96392a4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|2a4\nVar #C96392A8|c96392a8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|2a8\nVar #C9639394|c9639394|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|394\nVar #C9639398|c9639398|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|398\nVar #C963939C|c963939c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|39c\nVar #C96393A0|c96393a0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3a0\nVar #C96393A4|c96393a4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3a4\nVar #C96393A8|c96393a8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3a8\nVar #C96393AC|c96393ac|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3ac\nVar #C96393B0|c96393b0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3b0\nVar #C96393B4|c96393b4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3b4\nVar #C96393B8|c96393b8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3b8\nVar #C96393D8|c96393d8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3d8\nVar #C96393E0|c96393e0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3e0\nVar #C96393E4|c96393e4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3e4\nVar #C96393E8|c96393e8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3e8\nVar #C96393F0|c96393f0|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3f0\nVar #C96393F4|c96393f4|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3f4\nVar #C96393F8|c96393f8|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3f8\nVar #C96393FC|c96393fc|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|3fc\nVar #C9639400|c9639400|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|400\nVar #C9639404|c9639404|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|404\nVar #C9639408|c9639408|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|408\nVar #C963940C|c963940c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|40c\nVar #C9639410|c9639410|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|410\nVar #C9639414|c9639414|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|414\nVar #C9639418|c9639418|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|418\nVar #C963941C|c963941c|4|0|1|0|0|0|rw-p|/data/data/com.excean.maid/gameplugins/com.tencent.tmgp.cod/lib/libtprt.so:bss|41c"
fileData = gg.EXT_STORAGE .. "/[###].dat"
io.output(fileData):write(b):close()
gg.loadList(fileData, gg.LOAD_APPEND)
gg.sleep(50)
r = gg.getListItems()
gg.loadResults(r)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.loadResults(r)
gg.clearResults()
getReset = gg.getValues(r)
os.remove(fileData)
gg.clearResults()
gg.toast("防封成功")
end






function c()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x1ECE118      
setvalue(so+py,4,0)
gg.toast("透成功")
end



function d()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x1B4B058      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x1DC6508      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x1F0C404      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x452C23C      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x696A420      
setvalue(so+py,4,0)
gg.toast("成功")
end



function e()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x2F0AD0C      
setvalue(so+py,4,0)
gg.toast("防封")
end



function f()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x30798E4      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x307984C      
setvalue(so+py,4,0)
gg.toast("成功")
end



function g()
T = gg.multiChoice({
	"g",
	"g",
"返回",
},nil, "范围")
if T == nil then else
if T[1] == true then BT1() end
if T[2] == true then BT2() end
if T[3] == true then main() end
end
CODM = -1
end



function BT1()--修复
so=gg.getRangesList('libunity.so')[1].start
py=0x3588D8 
setvalue(so+py,16,23) 
so=gg.getRangesList('libunity.so')[1].start
py=0x3588DC 
setvalue(so+py,16,23)
so=gg.getRangesList('libunity.so')[1].start
py=0x4FB208 
setvalue(so+py,16,6)
so=gg.getRangesList('libunity.so')[1].start
py=0xB2BFAC 
setvalue(so+py,16,0)
gg.toast("修复成功")
end



function BT2()
so=gg.getRangesList('libunity.so')[1].start
py=0x3588D8 
setvalue(so+py,16,-5.76566947e27) 
so=gg.getRangesList('libunity.so')[1].start
py=0x3588DC 
setvalue(so+py,16,-5.76808791e27)
so=gg.getRangesList('libunity.so')[1].start
py=0x4FB208 
setvalue(so+py,16,0.00001)
so=gg.getRangesList('libunity.so')[1].start
py=0xB2BFAC 
setvalue(so+py,16,-4.99921227e27)
gg.toast("成功")
end



function h()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x31BDF94      
setvalue(so+py,4,0)
gg.toast("成功")
end



function i()
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x5621538      
setvalue(so+py,4,0)
so=gg.getRangesList('libil2cpp.so')[1].start
local py=0x31B78C8      
setvalue(so+py,16,1)
gg.toast("成功")
end


function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.28000020981;3.20000004768;0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("20", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("封号成功")
end



function k()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1041462460", gg.TYPE_DWORD)
gg.getResults("9999", nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1077936128", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.1439999938", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("3", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("封号成功︎")
end



function l()
so=gg.getRangesList('libunity.so')[1].start
local py=0x15BF28      
setvalue(so+py,16,10)
so=gg.getRangesList('libunity.so')[1].start
local py=0x1540F0      
setvalue(so+py,16,10)
gg.toast("防封成功")
end



function Exit()
os.exit()
end
cs = "WPS"



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