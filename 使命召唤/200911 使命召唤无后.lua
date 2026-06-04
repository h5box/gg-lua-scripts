SN =gg.choice({
  "开启无后",
  "退出脚本"
 }, nil, "购买其他脚本 找幻影 QQ2263679859")
  if SN == nil then
  else
  if SN== 1 then
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA) gg.searchNumber("-5.72949909e27F;-2.78698203e28F;-3.74440972e28F:9", gg.TYPE_FLOAT)
  gg.refineNumber("-2.78698203e28", gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
end
end