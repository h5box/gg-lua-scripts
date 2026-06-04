function AMNAXLUEWADPWSFBKYEL(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function RORVZALSVASCZDKERNPL(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function GJOTFWCZKWTKGYMFHOKX(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function DOANMCMJBGWNMJVPDHPX(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function NBNRYLPMXYFBQDALSRTK(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function YROSFGZQKVUARJGFOSMP(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function SCODHFCHEYKDLLXPBDLF(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function BATKFHHFSKNOVFHJFOWY(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function WWKLJUDLMTPJFKQLZLRB(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function BMTPYREBFYLWWEOMANXU(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function LVMLAMSWBBJUTLJOAPKB(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function YQGJSJPQAVFFASPAMENZ(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function Main0()
SN = gg.choice({
	 AMNAXLUEWADPWSFBKYEL('QCPUXJLYDRHHMMMLXPBV','E4B880E7BAA7E88F9CE58D95'),
	 RORVZALSVASCZDKERNPL('SLEOUCQFUYDMOGRYVOFS','3131E58FB7E998B2'),
	 GJOTFWCZKWTKGYMFHOKX('ZSTJPRENJGWCWHJVLOGK','3132E58FB7E998B2'),
	 DOANMCMJBGWNMJVPDHPX('ONPROEBVNNYBXWTOTEFO','E98080E587BAE8849AE69CAC'),
}, nil, NBNRYLPMXYFBQDALSRTK('KFSAAYJUGCTGRHKGVYVA','E68891E698AFE4B880E4B8AAE9BB98E9BB98E697A0E997BBE79A84E585ACE5918A'))
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
if SN==3 then
	 HS3()
end
if SN==4 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, YROSFGZQKVUARJGFOSMP('LFHENMXCMLVRXACEAJJH','E9BB91E799BDE998B2'))
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(SCODHFCHEYKDLLXPBDLF('GDBJQJMDGYXTCEJEPKNC','3635382C303435'), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(BATKFHHFSKNOVFHJFOWY('COUQACAQLOCCLXPSNGGG','3635382C303435'), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast(WWKLJUDLMTPJFKQLZLRB('TAKOUQWSLOQAZKZYFMNS','E5BC80E590AFE68890E58A9F'))
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(BMTPYREBFYLWWEOMANXU('TUDMHPLXKRQRUNCTGUNO','3133302C333036'), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(LVMLAMSWBBJUTLJOAPKB('BZSRMJSPWOEBJNYTFGYG','3133302C333036'), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast(YQGJSJPQAVFFASPAMENZ('RXGKUZXCJKRUKFVYEBUD','E5BC80E590AFE68890E58A9F'))
	 gg.clearResults()
end

function HS4()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end