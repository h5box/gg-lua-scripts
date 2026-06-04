function suiaa(a)  gg.setVisible(false) gg.clearResults() aa=0 gg.setRanges(a["内存"]) gg.searchNumber(a["主特征码"],a["类型"]) if gg.getResultsCount()<1 then gg.toast("搜索失败")  aa=gg.getResults(gg.getResultsCount()) else  if a["蒙版"]~=false then gg.refineAddress(a["蒙版"]) end  aa=gg.getResults(gg.getResultsCount()) end return aa end function  xinsuia(a,b,c) here=0 for i=1,#a do  b1={{address=a[i].address+b[1]["偏移量"],flags=b[1]["类型"]},{address=a[i].address+b[2]["偏移量"],flags=b[2]["类型"]}} if gg.getValues(b1)[1].value==b[1]["副特征码"] and gg.getValues(b1)[2].value==b[2]["副特征码"] then c1={} for ii=1,#c do  c1[ii]={address=a[i].address+c[ii]["偏移量"],value=c[ii]["值"],flags=c[ii]["类型"],freeze=c[ii]["冻结"]}  end for ii=1,#c do  if c[ii]["冻结"]==true then gg.addListItems({c1[ii]}) here=here+1 else  gg.setValues(c1,ii) here=here+1  end  end end end if here>0 then gg.toast("修改成功") else gg.toast("修改失败") end end



--上方配置，勿做修改
--为新版数据对比量身定做，实现一键脚本功能
--偏移量统一为距离主特征码位置量,副特征码数量为2
--支持蒙版搜索，修改目标值数量无上限，可选择冻结
--suia为主特征码及内存，suib为副特征码，suic为修改值



--函数例子
function a()
suia=suiaa({["内存"]=4,["主特征码"]=32,["类型"]=16,["蒙版"]=false})
suib={
{["偏移量"]=4  ,["副特征码"]=32 ,["类型"]=16},
{["偏移量"]=-4  ,["副特征码"]=124 ,["类型"]=4 },
}
suic={
{["偏移量"]=0,["值"]=2 ,["类型"]=16 ,["冻结"]=false},
{["偏移量"]=4,["值"]=25 ,["类型"]=16 ,["冻结"]=true},

}
xinsuia(suia,suib,suic)
end


a()

