gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('403608',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('403687',gg.TYPE_DWORD)






--[[Welcome to Dluae]]