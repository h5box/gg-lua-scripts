ydyz='http://www.iyuji.cn/iyuji/s/YktvbGljMUlTNTNiU21HWURWUXFUQT09/1577892632609464'
local pb = gg.makeRequest(ydyz).content
local pb1 = pb:match('【开关】(.-)【开关】')
local pb2 = pb:match('【公告】(.-)【公告】')
local pb3 = pb:match('【作者信息】(.-)【作者信息】')
local pb4 = pb:match('【脚本】(.-)【脚本】')
if pb1=='开' then
else
gg.alert('升级维护中')
os.exit() 
end
gg.alert(pb2)
gg.toast(pb3)
pcall(load(pb4))
