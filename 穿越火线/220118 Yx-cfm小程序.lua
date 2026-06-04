local Offset_Yx = function(Tab)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(Tab["内存"])
    
    gg.searchNumber(Tab["主特征码"][1], Tab["主特征码"][2], false, gg.SIGN_EQUAL, 0, -1, 0)
    
    local results = gg.getResults(gg.getResultsCount())
    if not results then
        return gg.toast("未搜到结果")
    end
    gg.clearResults()
    local Ton = tonumber
    for index, value in pairs(Tab["副特征码"]) do
    
        for i = 1, #results do
            results[i].address = results[i].address + value[3]
            results[i].flags = value[2]
        end
        local _ofResults, Final = gg.getValues(results), {}
        
        for i = 1, #_ofResults do
            if type(value[1]) == "table" then
                for ind, key in pairs(value[1]) do
                    if _ofResults[i].value == Ton(key) then
                        Length = #Final + 1
                        Final[Length] = {}
                        Final[Length].address = _ofResults[i].address - value[3]
                        Final[Length].flags = value[2]
                    end
                end
            else
                local __npt = string.find(value[1], "~")
                local Min, Max, Length
                if __npt then
                    Min = Ton(string.sub(value[1], 0, (__npt-1)))
                    Max = Ton(string.sub(value[1], (__npt+1), -1))
                    if _ofResults[i].value >= Min and _ofResults[i].value <= Max then
                        Length = #Final + 1
                        Final[Length] = {}
                        Final[Length].address = _ofResults[i].address - value[3]
                        Final[Length].flags = value[2]
                    end
                
                elseif _ofResults[i].value == Ton(value[1]) then
                    Length = #Final + 1
                    Final[Length] = {}
                    Final[Length].address = _ofResults[i].address - value[3]
                    Final[Length].flags = value[2]
                end
            end
        end
        if #Final == 0 then
            return gg.toast("未偏移到结果")
        end
        
        results = gg.getValues(Final)
    end
    for index, value in pairs(Tab["修改"]) do
    
        local EditAll = {}
        for i = 1, #results do
        
            EditAll[i] = {}
            EditAll[i].address = results[i].address + value[3]
            EditAll[i].flags = value[2]
            EditAll[i].value = value[1]
            if value[4] or Tab["是否全部冻结"] then
                EditAll[i].freeze = true
            end
        end
        
        if value[4] or Tab["是否全部冻结"] then
            gg.addListItems(EditAll)
        else
            gg.setValues(EditAll)
        end
    end
    return gg.toast(Tab["功能名字"] .. "已开启 共修改" .. (#results * #Tab["修改"]) .."条数据")
end
function Main()
local yc = gg.multiChoice({
"骁龙单透[一局一开]",
"通用双透[一局一开]",
"无后[一命一开]",
"锁头[大厅全局]",
"自瞄[大厅全局]",
"静步[大厅全局]",
"高跳[大厅全局]",
"上色[大部分人物]",
"退出[Exit]"
})
if yc==nil then
gg.toast("未选择")
else
if yc[1] then
Offset_Yx({
	["主特征码"] = {"1.4408571199727067E-40",16},
	["副特征码"] = {
		{"4.722369297619412E21",16,4},
		{"4.796155710964297E21",16,12},
		{"3.76158192263132E-37",16,20},
		},
	["修改"] = {
		{"0.5",16,96},
		},
	["功能名字"] = "透视",
	["内存"] = 1048576,
	["是否全部冻结"] = false
})
end
if yc[2] then
Offset_Yx({
	["主特征码"] = {"2048.0",64},
	["副特征码"] = {
		{"10.0",64,-24},
		{"0.01",64,-12},
		},
	["修改"] = {
		{"10880",64,0},
		},
	["功能名字"] = "透视",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[3] then
Offset_Yx({
	["主特征码"] = {"2.25",64},
	["副特征码"] = {
		{"1.0",64,-24},
		{"0.96~0.98",64,48},
		},
	["修改"] = {
		{"0.01",64,-24},
		{"0.01",64,0},
		{"0.01",64,-12},
		},
	["功能名字"] = "无后",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[4] then
Offset_Yx({
	["主特征码"] = {"2.6",64},
	["副特征码"] = {
		{"0.6",64,16},
		},
	["修改"] = {
		{"0.83",64,16},
		},
	["功能名字"] = "锁头",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[5] then
Offset_Yx({
	["主特征码"] = {"0.075",64},
	["副特征码"] = {
		{"1.0E-4",64,-28},
		{"1.2",64,12},
		{"1.05",64,84},
		},
	["修改"] = {
		{"0.4",64,0},
		},
	["功能名字"] = "自瞄",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[6] then
Offset_Yx({
	["主特征码"] = {"-0.001",64},
	["副特征码"] = {
		{"0.1",64,24},
		{"2.6",64,36},
		{{"0.6","0.83"},64,48},
		},
	["修改"] = {
		{"4.5",64,36},
		},
	["功能名字"] = "加速",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[7] then
Offset_Yx({
	["主特征码"] = {"8",64},
	["副特征码"] = {
		{"3.5",64,12},
		},
	["修改"] = {
		{"6",64,12},
		},
	["功能名字"] = "高跳",
	["内存"] = 32,
	["是否全部冻结"] = false
})
end
if yc[8] then
    local Color={
        {"-500","500","-500"},
        {"500","-500","-500"},
        {"500","500","-500"},
        {"500","-500","500"},
        {"-500","500","500"},
        {"-500","-500","500"},
        {"-500","-500","-500"},
        {"500","500","500"},
    }--上色代码
    local color={"💚色","❤️色","💛色","💜色","💙色","深💙色","🖤色","🤍色"}
    local ss=gg.choice(color,nil,"请选择你需要的上色")
    if ss~=nil then
            Offset_Yx({
				["主特征码"] = {"0.5",16},
				["副特征码"] = {
					{"1",16,-48},
					{"1",16,-44},
					{"1",16,-40},
					},
				["修改"] = {
					{Color[ss][1],16,-48},
					{Color[ss][2],16,-44},
					{Color[ss][3],16,-40},
					},
				["功能名字"] = "上色",
				["内存"] = 4,
				["是否全部冻结"] = false
			})
    end
end
if yc[9] then
os.exit()
end
end
end

while true do
if gg.isVisible(true) then
    gg.setVisible(false)
    Main()
  end
end