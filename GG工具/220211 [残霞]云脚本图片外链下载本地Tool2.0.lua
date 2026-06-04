CX=[[
本工具更新重自定义命名(防止下载多个云脚本重叠重置)
]]
gg.alert(CX)
CX=gg.prompt({"请选择脚本保存路径","图片外链","文件名字",},{'/storage/emulated/0/','','残霞.lua',},{"text","text","text",})
if CX==nil then print("未选择脚本") os.exit() end
file=io.open(CX[1]..CX[3],"w")
file:write(gg.makeRequest(CX[2]).content)
file:close()
--[[
残霞交流群：809663698
]]