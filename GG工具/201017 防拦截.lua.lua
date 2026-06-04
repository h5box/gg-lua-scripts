for i = -1, -2 do;se = 'The wind of birds';end
local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) 
local _ = _  == false or (function() gg.alert("鸟之风加密：检测到拦截,gun","","","")--拦截器进入提示
os.exit()--开拦截器进会提示上面的话然后退出，但是人家一个跳过os.exit（也就是退出)这个就不起作用了，在os.exit下面加个强制退出即可
 end)()
 
---防部分拦截器