
text = gg.prompt({'请输入要搜索的值:'}, {'100'}, {'text'})
if not text then
    return
end
text = text[1]
t1 = os.clock()
gg.clearResults()
gg.searchNumber(text, 4)
resultsCount = gg.getResultsCount(1)
if resultsCount == 0 then
    gg.alert('没有搜索到值~')
    return
end
results = gg.getResults(resultsCount)
gg.editAll('200', 4)
gg.setValues(results)
gg.toast('测试完毕')
print('耗时:', os.clock() - t1)

