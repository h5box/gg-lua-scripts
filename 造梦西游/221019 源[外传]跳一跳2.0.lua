

            --   © 2019 ~ 2022 By.游阳
--
--
--          👑
--   ️ (  ⚫︎ー⚫︎  ) 
--　／　　　   ＼
-- /　　　  🚫  　\
--/　 /　　    ヽ   \
--|　/　 　　  \　|
-- \Ԏ　　　     Ԏ/
--　卜−　　   ―イ
--　 \　  /\    /
--  　 ︶　 ︶


--        喵~
--    ﾍ^ヽ､　 /⌒､ 👑　　_,_
--  　 |　　￣7　 (⌒r⌒7/
--  　 レ　　　＼_/￣＼_｣
--  ＿/  　　　　　　　 {
--  _ﾌ　●　　　　　　　ゝ
--  _人　　　ο　　●　 ナ
--  　 `ト､＿　　　　　メ
--  　　　 /　 ￣ ーィﾞ
--  　　 〈ﾟ･｡｡｡･ﾟ 　丶
  
  
--　　 へ　　　　   ／|
--　　/＼7　　   ∠＿/
--　 /　│ 👑　 ／　／   皮卡皮卡！
--　│　Z ＿,＜　／　　 /`ヽ
--　│　　　　　ヽ　　 /　　〉
--　 Y　　　　　  `　 /　／
--　ｲ●　､　●　　⊂⊃ 〈　　
--　()　 へ　　　　|　＼〈
--　　>ｰ ､_　 ィ　 │ ／／
--　 / へ　　 /　ﾉ＜| ＼＼
--　 ヽ_ﾉ　　(_／　 │／／
---　　7　　　　　　　|／
--　　＞―r￣￣`ｰ―＿  |
 
          

--    ┏┓　👑　┏┓
--  ┏┛┻━━━┛┻┓
--  ┃　　　　　　　┃
--  ┃　　　━　　　┃
--  ┃　┳┛　┗┳　┃
--  ┃　　　　　　　┃  咩咩！
--  ┃　　　┻　　　┃
--  ┃　　　　　　　┃
--  ┗━ 🗯️🗯🗯️️┏━┛
--       ┃️ 🗯️🗯️┃   
--       ┃🗯️🗯️ ┃   
--       ┃🗯️🗯 ┗━━━┓
--      ┃🗯️🗯️🗯️🗯️🗯️🗯️┣┓
--       ┃🗯️🗯️🗯️🗯️🗯️🗯️┃
--       ┃🗯️🗯️🗯️🗯️🗯️🗯️┏┛ 
--       ┗┓┓┏━┳┓┏┛  
--        ┃┫┫　┃┫┫     
--         ┗┻┛　┗┻┛
     

--   ∧👑∧
-- （｡･ω･｡)つ━━━⭐・*。     猪猪棒！
--  ⊂ 🔻 ノ 　　　・゜+.💫
--　 しーＪ　　　°。+ *´¨)
--　　　       　　.· ´¸.·*´¨) ¸.·*¨)
--　　　　　　　    💫　(¸.·´ (¸.·’*💫
--                      ・*。
--   　　   　　  　・゜+.💫
--　           　  　°。+ *´¨)
--　　　       　　.· ´¸.·*´¨) ¸.·*¨)
--　　　　　　    💫 　(¸.·´ (¸.·’*💫


--　 　∧👑∧　.・　
--|￣￣(  ´Д｀)￣|
--|＼⌒⌒⌒⌒⌒⌒＼
--|　 ＼⌒⌒⌒⌒⌒⌒＼      大爷慢走！
--＼　｜⌒⌒⌒⌒⌒⌒⌒|
--　 ＼|＿＿＿＿＿＿＿_|
        

-- ...╭ ╯╭ ╯╭ ╯ 天堂火车启动中！
-- . ╭╩═╮.╔════╗╔════╗╔════╗╔════╗   
--╭╯🌫️🌫️  ~~❏❏❏❏ ╠╣~~❏❏❏╠╣❏❏❏ ╠╣~❏❏❏❏~╟
--╰⊙═⊙╯╚⊙═⊙╝╚⊙═⊙╝╚⊙═⊙╝╚⊙═⊙╝


Qr_1KoyJT3v='Main'
gg.clearResults() sj={} xgz={} function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
-----------------配置--------------------------------------↑






------------------菜单------------------------------ ↓
function Main()
xz=gg.choice({'无限跳','自动蓄力','秒蓄力','坐标修改','退出'},nil,'选择功能\n注意: 跳起来然后暂停再开启功能')
if xz==nil then else
if xz==1 then gn1() end
if xz==2 then gn2() end
if xz==3 then gn3() end
if xz==4 then gn4() end
if xz==5 then gn5() end
end end
------------------菜单------------------------------↑












------------------功能----------------------------------↓
                       function gn1()--无限跳
                      search(-121,4,4)
                     py1(-120,4,-24)
                    py1(-125,4,-16)
                   py1(-125,4,-8)
                  py1(5,4,-132)
                 xg1(0,4,-20,true)
                end
-----------------------------------
               function gn2()--自动蓄力
              search(-121,4,4)
             py1(-120,4,-24)
            py1(-125,4,-16)
           py1(-125,4,-8)
          py1(5,4,-132)
         xg1(1,4,-108,true)
        end
-----------------------------------
       function gn3()--秒蓄力
      search(-121,4,4)
     py1(-120,4,-24)
    py1(-125,4,-16)
   py1(-125,4,-8)
  py1(5,4,-132)
 xg1(40,4,-156,true)
end
-----------------------------------
   function gn4()--坐标修改
   local t = {"libcocos2djs.so:bss", "Cb"}
   local tt = {0x28C4, 0x260, 0xB4, 0x390, 0x24}
   local ttt = S_Pointer(t, tt)
   gg.setValues({{address = ttt, flags = 16, value = 9999}})
   local t = {"libcocos2djs.so:bss", "Cb"}
   local tt = {0x28C4, 0xFC, 0x1C4, 0x390, 0x24}
   local ttt = S_Pointer(t, tt)
   gg.setValues({{address = ttt, flags = 16, value = 9999}})
   gg.toast("开启失败")
   end
-----------------------------------
   function gn5()--退出
   os.exit(print('嘻嘻，爽歪歪'))
   end
------------------功能----------------------------------↑















-----------------配置--------------------------------------↓
while(true) do if gg.isVisible(true) then gg.setVisible(false)_G[Qr_1KoyJT3v]() end end

