local function encodeBase64(source_str)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local s64 = ''
    local str = source_str

    while #str > 0 do
        local bytes_num = 0
        local buf = 0

        for byte_cnt=1,3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end

        for group_cnt=1,(bytes_num+1) do
            local b64char = math.fmod(math.floor(buf/262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end

        for fill_cnt=1,(3-bytes_num) do
            s64 = s64 .. '='
        end
    end

    return s64
end

Pathjia = gg.prompt({[1]='选择要加密的脚本'}, {[1]='/storage/emulated/0'},{[1]='file'})
if Pathjia==nil then
os.exit()
end

local file = io.open(Pathjia[1], 'r')
assert(file)


decryption = '---快猫社区玩玩\nlocal Yicjm = function(Yicstr)\nlocal b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"  \nlocal temp = {}  \nfor i = 1, 64 do    \ntemp[string.sub(b64chars, i, i)] = i  \nend  \ntemp["="] = 0  \nlocal str = ""  \nfor i = 1, #Yicstr, 4 do    \nif not (i > #Yicstr) then      \nlocal data = 0      \nlocal str_count = 0      \nfor j = 0, 3 do        \nlocal str1 = string.sub(Yicstr, i + j, i + j)        \nif not temp[str1] then          \nreturn        \nend        \nif temp[str1] < 1 then          \ndata = data * 64        \nelse          \ndata = data * 64 + temp[str1] - 1          \nstr_count = str_count + 1        \nend      \nend      \nfor j = 16, 0, -8 do        \nif str_count > 0 then          \nstr = str .. string.char(math.floor(data / math.pow(2, j)))          \ndata = math.fmod(data, math.pow(2, j))          \nstr_count = str_count - 1        \nend      \nend    \nend  \nend  \nlocal last = tonumber(string.byte(str, string.len(str), string.len(str)))  \nif last == 0 then    \nstr = string.sub(str, 1, string.len(str) - 1)  \nend  \nreturn str\nend \nlocal base64 = Yicjm("base64加密")\n\nlocal base64 = load(base64)\n\nload(base64)'
local source_str = file:read('*a')file:close()
wzdm=encodeBase64(source_str)
wzdm2 = string.gsub(decryption, "base64加密",wzdm)
file = io.open(Pathjia[1]..'Bx', 'w')
file:write(wzdm2)
file:close()
print('\n9。9\n加密成功\n'..Pathjia[1]..'BX')

