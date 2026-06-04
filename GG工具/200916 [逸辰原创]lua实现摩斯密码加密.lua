   function check(s)
       if string.byte(s) >= 65 and string.byte(s) <= 90 or string.byte(s) >= 48 and string.byte(s) <= 57 then
         return true
       else
         return false
       end
    end
local function mosm(data)
msmmb={"._",".__","_._.","_..",".",".._."}
msmb={".____","..___","...__","...._",".....","_....","__...","___..","____.","_____"}
      local txt = ""
      for i = 1, #data do
        local repl = string.sub(data,i,i)
        if check(repl) then
          local num = tonumber(repl) -- 数字 否为nil
            if num then -- 为数字
              if num == 0 then num = 10 end
              txt = txt.."/"..msmb[num]
            else
              local str = tostring(repl) -- 转化可读字符串
              txt = txt.."/"..msmmb[string.byte(str)-64]
            end
          end
        end
    return txt:gsub("/","",1)
end
local function tonumber16(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end
yx=gg.prompt({"选择脚本"},{[1]=gg.getFile():gsub('/[^/]+$','')},{"file"})
ym=io.open(yx[1],"r"):read("*a")
ym=tonumber16(ym)
print(ym)
ym=mosm(ym)
jmsf=[=[
function dec_code(x) msmmb={"._",".__","_._.","_..",".",".._.",".____","..___","...__","...._",".....","_....","__...","___..","____.","_____","A", "B", "C", "D", "E", "F", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"} x="{\""..x:gsub("/","\",\"").."\"}" load("cone="..x)() local txt = ""      for order,code in pairs(cone) do        for orders,codes in pairs(msmmb) do          if code == codes then            txt = txt..msmmb[orders+16]          end        end      end  return dzsh(txt)    end function dzsh(Text)  return (Text:gsub('..', function (jie)    return string.char((tonumber(jie,16))%256)  end))end
]=]
io.output(yx[1]..".MOS.lua","w"):write(jmsf.."load(dec_code(\""..ym.."\"))()"):close()