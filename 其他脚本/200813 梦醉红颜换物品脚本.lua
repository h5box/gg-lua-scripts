

function qujian(A0_48, A1_49, A2_50)
  local L3_51
  L3_51 = nil
  if A1_49 <= A0_48 and A0_48 <= A2_50 then
    L3_51 = true
  end
  return L3_51
end

function isea(A0_52, A1_53, A2_54, A3_55)
  local L4_56
  L4_56 = {}
  gg.clearResults()
  A1_53 = A1_53 or 4
  gg.searchNumber(A0_52, A1_53)
  if A2_54 and gg.getResultCount() ~= 0 then
    gg.searchAddress(A2_54)
  end
  if A3_55 and gg.getResultCount() ~= 0 then
    gg.searchNumber(A3_55, A1_53)
  end
  if gg.getResultCount() ~= 0 then
    L4_56 = gg.getResults(gg.getResultCount())
  end
  return L4_56
end

function seas(A0_57, A1_58, A2_59, A3_60, A4_61)
  local L6_62
  L6_62 = {}
  A0_57 = A0_57 or {}
  if type(A2_59) == "number" then
    min = A2_59
    max = A2_59
  elseif type(A2_59) == "table" then
    min = A2_59[1]
    max = A2_59[2]
  end
  if A0_57 and #A0_57 ~= 0 then
    if not A4_61 then
      for _FORV_11_ = 1, #A0_57 do
        A0_57[_FORV_11_] = {
          address = A0_57[_FORV_11_].address + A1_58,
          flags = A3_60
        }
      end
      A0_57 = gg.getValues(A0_57)
      for _FORV_11_ = 1, #A0_57 do
        if qujian(A0_57[_FORV_11_].value, min, max) then
          L6_62[0 + 1] = {
            address = A0_57[_FORV_11_].address,
            flags = A3_60
          }
        end
      end
    else
      for _FORV_11_ = 1, #A0_57 do
        A0_57[_FORV_11_] = {
          address = A0_57[_FORV_11_].address + A1_58,
          flags = A3_60,
          value = A4_61
        }
      end
      gg.setValues(A0_57)
      L6_62 = A0_57
    end
  end
  return L6_62
end

function sfomal(A0_63)
  local L1_64, L3_65, L4_66, L5_67
  L1_64 = nil
  if A0_63 then
    L3_65 = #A0_63
    if L3_65 ~= 0 then
      L3_65 = 1
      L4_66 = #A0_63
      for _FORV_5_ = 1, #A0_63 do
        if A0_63[_FORV_5_].ss then
          L1_64 = isea(A0_63[_FORV_5_].ss, A0_63[_FORV_5_].lx, A0_63[_FORV_5_].dz, A0_63[_FORV_5_].gs)
        else
          L1_64 = L1_64 and seas(L1_64, tonumber(A0_63[_FORV_5_].py), A0_63[_FORV_5_].gs, tonumber(A0_63[_FORV_5_].lx), tonumber(A0_63[_FORV_5_].value))
        end
      end
    end
  end
end

gg.setRanges(4)
array = {}
MXI = {}
array1 = {}
cor = {}
function MXI.getNum(A0_68, A1_69)
  temp = 0
  A1_69 = A1_69 or 1
  temp = tonumber(gg.getValues(A0_68)[A1_69].value)
  if not temp then
    temp = -1
  end
  return temp
end

function ISEA(A0_70, A1_71, A2_72, A3_73, A4_74)
  gg.clearResults()
  gg.searchNumber("" .. A0_70 .. "", A1_71)
  if not A3_73 then
  else
    gg.searchAddress("" .. A3_73 .. "")
  end
  if not A4_74 then
  else
    gg.searchNumber("" .. A4_74 .. "", A1_71)
  end
  return (gg.getResults(A2_72))
end

function yanshi()
  while os.time() < os.time() + time do
  end
end

function INum(A0_75, A1_76, A2_77, A3_78, A4_79)
  temp = 0
  if not A4_79 then
    for _FORV_8_, _FORV_9_ in ipairs(A0_75) do
      _FORV_9_.address = _FORV_9_.address + A1_76
    end
    gg.loadResults(A0_75)
    gg.searchNumber("" .. A2_77 .. "", A3_78)
    temp = gg.getResults(10000)
  else
    for _FORV_8_, _FORV_9_ in ipairs(A0_75) do
      _FORV_9_.address = _FORV_9_.address + A1_76
    end
    gg.loadResults(A0_75)
    gg.getResults(2000)
    gg.editAll(A4_79, A3_78)
  end
  return temp
end
gg.setVisible(false)
  XS={}
  XS.getNum=function(tab,index)
  temp=0
  if (not index)then index=1 end
  temp=tonumber(gg.getValues(tab)[index].value)
  if (not temp) then temp=-1 end
  return temp end
  cre={}
  item1={}
function choicei(A0_80)
  local L1_81
  if A0_80 == nil then
    L1_81 = "1"
    return L1_81
  else
    return A0_80
  end
end

cdd = 1
gg.require("73.6", 13990)
gg.setVisible(false)
MXI = {}
function MXI.getNum(A0_82, A1_83)
  temp = 0
  A1_83 = A1_83 or 1
  temp = tonumber(gg.getValues(A0_82)[A1_83].value)
  if not temp then
    temp = -1
  end
  return temp
end

cre = {}
item1 = {}
gg.clearResults()
gg.searchNumber("4294967429", 32)
gg.searchAddress("C")
for _FORV_4_ = 1, #gg.getResults(99) do
  if MXI.getNum({
    {
      address = gg.getResults(99)[_FORV_4_].address + 16,
      flags = 4
    }
  }) == 40 then
    gg.setValues({
      {
        address = gg.getResults(99)[_FORV_4_].address + 4,
        flags = 4,
        value = 200
      },
      {
        address = gg.getResults(99)[_FORV_4_].address + 16,
        flags = 4,
        value = 0
      }
    })
    gg.addListItems({
      {
        address = gg.getResults(99)[_FORV_4_].address - 20,
        flags = 4,
        freeze = true,
        value = 0
      },
      {
        address = gg.getResults(99)[_FORV_4_].address - 24,
        flags = 4,
        freeze = true,
        value = 0
      },
      {
        address = gg.getResults(99)[_FORV_4_].address - 28,
        flags = 4,
        freeze = true,
        value = 0
      }
    })
  end
end

function Main()
  menuM = gg.choice({
    "保存游戏",
    "恐龙皮肤",
    "装备皮肤",
    "上古神器",
    "氪金物品",
    "人物皮肤",
    "战利品、奖杯",
    "部分食物",
    "部分装备",
    "泰克",
    "其它物品",
    "刷新商城",
    "手动添加",
    "自己写名字",
    "自己写名字",
    "退出脚本"
  }, 2019, "请先选择刷新商城功能!联系群号905995327")
  if menuM == 1 then
    savegame()
  end
  if menuM == 2 then
    B()
  end
  if menuM == 3 then
    C()
  end
  if menuM == 4 then
    D()
  end
  if menuM == 5 then
    E()
  end
  if menuM == 6 then
    F()
  end
  if menuM == 7 then
    G()
  end
  if menuM == 8 then
    H()
  end
  if menuM == 9 then
    I()
  end
  if menuM == 10 then
    J()
  end
  if menuM == 11 then
    K()
  end
  if menuM == 12 then
    cssx()
  end
  if menuM == 13 then
    L()
  end
  if menuM == 14 then
    xf()
  end
  if menuM == 15 then
    gsss()
  end
  if menuM == 16 then
    Exit()
  end
  XGCK = -1
end

function xf()
  local L0_84, L1_85, L2_86, L3_87
  L0_84 = {L1_85}
  L1_85 = {L2_86, L3_87}
  L2_86 = "xxx"
  L3_87 = "xxxxx"
end

function xxf(A0_88)
  gg.serchNumber("" .. dm[1] .. "", 4)
end

function cssx()
  gg.clearResults()
  gg.searchNumber("4294967429", 32)
  gg.searchAddress("C")
  for _FORV_4_ = 1, #gg.getResults(99) do
    if MXI.getNum({
      {
        address = gg.getResults(99)[_FORV_4_].address + 16,
        flags = 4
      }
    }) == 40 then
      gg.setValues({
        {
          address = gg.getResults(99)[_FORV_4_].address + 4,
          flags = 4,
          value = 200
        },
        {
          address = gg.getResults(99)[_FORV_4_].address + 16,
          flags = 4,
          value = 0
        }
      })
      gg.addListItems({
        {
          address = gg.getResults(99)[_FORV_4_].address - 20,
          flags = 4,
          freeze = true,
          value = 0
        },
        {
          address = gg.getResults(99)[_FORV_4_].address - 24,
          flags = 4,
          freeze = true,
          value = 0
        },
        {
          address = gg.getResults(99)[_FORV_4_].address - 28,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
    end
  end
end

function gsss()
  gg.clearResults()
  if t1 == nil then
    gg.searchNumber("114", 4)
    t1 = INum(INum(INum(gg.getResults(10000), -4, "95", 4), -4, "67", 4), -504, "47", 4)
  end
end

function cy()
  cydm = gg.choice({
    "复活平台",
    "机床",
    "铁匠台",
    "首页"
  }, 2019, "")
  if cydm == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_ResurrectPlatform.PrimalItemStructure_ResurrectPlatform_C"
    Items()
  end
  if cydm == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Fabricator.PrimalItemStructure_Fabricator_C"
    Items()
  end
  if cydm == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_AnvilBench.PrimalItemStructure_AnvilBench_C"
    Items()
  end
  if cydm == 4 then
    HOME()
  end
  GLWW = -1
end

function B()
  menuB = gg.choice({
    "1:🌺骨架南方巨兽龙时装",
    "2:🌺骨架风神翼龙时装",
    "3:🌺骨架三角龙时装",
    "4:🌺骨架霸王龙时装",
    "5:🌺骨架雷龙时装",
    "6:🌺骨架迅猛龙时装",
    "7:🌺骨架牛龙时装",
    "8:🌺骨架剑龙时装",
    "9:🌺泰克霸王龙时装（1.0.91以前版本）",
    "10:🌺副节龙鞍时装",
    "返回首页"
  }, nil, nil)
  if menuB == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneGigant.PrimalItemCostume_BoneGigant_C"
    Items()
  end
  if menuB == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneQuetz.PrimalItemCostume_BoneQuetz_C"
    Items()
  end
  if menuB == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneTrike.PrimalItemCostume_BoneTrike_C"
    Items()
  end
  if menuB == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneRex.PrimalItemCostume_BoneRex_C"
    Items()
  end
  if menuB == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneSauro.PrimalItemCostume_BoneSauro_C"
    Items()
  end
  if menuB == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneRaptor.PrimalItemCostume_BoneRaptor_C"
    Items()
  end
  if menuB == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneCarno.PrimalItemCostume_BoneCarno_C"
    Items()
  end
  if menuB == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BoneStego.PrimalItemCostume_BoneStego_C"
    Items()
  end
  if menuB == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemCostume_BionicRex.PrimalItemCostume_BionicRex_C"
    Items()
  end
  if menuB == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_ParaSaddle_Launch.PrimalItemArmor_ParaSaddle_Launch_C"
    Items()
  end
  if menuB == 11 then
    Main()
  end
end

function C()
  menuC = gg.choice({
    "1:🐒焦土大剑",
    "2:🐒焦土长矛",
    "3:🐒焦土火把",
    "4:🐒烟花火箭发射器皮肤",
    "5:🐒烟花信号枪皮肤",
    "6:🐒拐杖糖俱乐部",
    "7:🌺蝎身狮尾兽靴",
    "8:🌺蝎身狮尾兽手套",
    "9:🌺蝎身狮尾兽头盔",
    "10:🌺蝎身狮尾兽护腿",
    "11:🌺Dilo Mask",
    "12:🌺蝎身狮尾兽盾牌",
    "13:🌺方舟开发者之帽",
    "14:🌺方舟测试者之帽",
    "15:🌺方舟管理员之帽",
    "16:🌺渡渡飞龙面具",
    "17:🌺吸血鬼之瞳",
    "18:🌺巫师帽",
    "19:🌺派对帽",
    "20:🌺雷蛇帽",
    "21:🌺基础服装",
    "22:🌺二手头盔",
    "23:🌺Spinner Hat",
    "24:🌺礼帽",
    "25:🌺方舟路飞帽子",
    "26:🌺恐龙巫师帽",
    "27:🌺召唤恐龙帽",
    "28:🌺基础帽子",
    "29:🌺骷髅头盔",
    "30:🌺首领帽",
    "31:🌺基础手套",
    "32:🌺基础裤子",
    "33:🌺基础衬衫",
    "34:🌺基础盾牌",
    "35:🌺基础大棒",
    "36:🌺基础小斧",
    "37:🌺基础铁镐",
    "38:🌺基础睡袋",
    "39:🌺Broken Egg Hat",
    "40:👑皇冠",
    "41:🙏生日透明上衣",
    "42:🙏生日透明裤子",
    "43:🙏通用鞍",
    "返回首页"
  }, nil, nil)
  if menuC == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_ScorchedSword.PrimalItemSkin_ScorchedSword_C"
    Items()
  end
  if menuC == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_ScorchedSpear.PrimalItemSkin_ScorchedSpear_C"
    Items()
  end
  if menuC == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_TorchScorched.PrimalItemSkin_TorchScorched_C"
    Items()
  end
  if menuC == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_RocketLauncherFireworks.PrimalItemSkin_RocketLauncherFireworks_C"
    Items()
  end
  if menuC == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_FlaregunFireworks.PrimalItemSkin_FlaregunFireworks_C"
    Items()
  end
  if menuC == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_CandyClub.PrimalItemSkin_CandyClub_C"
    Items()
  end
  if menuC == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_ManticoreBoots.PrimalItemSkin_ManticoreBoots_C"
    Items()
  end
  if menuC == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_ManticoreGloves.PrimalItemSkin_ManticoreGloves_C"
    Items()
  end
  if menuC == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_ManticoreHelmet.PrimalItemSkin_ManticoreHelmet_C"
    Items()
  end
  if menuC == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_ManticorePants.PrimalItemSkin_ManticorePants_C"
    Items()
  end
  if menuC == 11 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_DiloMask.PrimalItemSkin_DiloMask_C"
    Items()
  end
  if menuC == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_ManticoreShield.PrimalItemSkin_ManticoreShield_C"
    Items()
  end
  if menuC == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItem_Skin_Account_DevKitMaster.PrimalItem_Skin_Account_DevKitMaster_C"
    Items()
  end
  if menuC == 14 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItem_Skin_Account_GameTester.PrimalItem_Skin_Account_GameTester_C"
    Items()
  end
  if menuC == 15 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItem_Skin_Account_WildcardAdmin.PrimalItem_Skin_Account_WildcardAdmin_C"
    Items()
  end
  if menuC == 16 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_DodowyvernHat.PrimalItemSkin_DodowyvernHat_C"
    Items()
  end
  if menuC == 17 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_VampireEyes.PrimalItemSkin_VampireEyes_C"
    Items()
  end
  if menuC == 18 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_WitchHat.PrimalItemSkin_WitchHat_C"
    Items()
  end
  if menuC == 19 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_PartyHat.PrimalItemSkin_PartyHat_C"
    Items()
  end
  if menuC == 20 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_RazerHat.PrimalItemSkin_RazerHat_C"
    Items()
  end
  if menuC == 21 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_BaseBoots.PrimalItemArmor_BaseBoots_C"
    Items()
  end
  if menuC == 22 then
    bit = "PrimalEarth/Test/PrimalItemHelmet2.PrimalItemHelmet2_C"
    Items()
  end
  if menuC == 23 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_SpinnerHat.PrimalItemSkin_SpinnerHat_C"
    Items()
  end
  if menuC == 24 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_TopHat.PrimalItemSkin_TopHat_C"
    Items()
  end
  if menuC == 25 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HideHelmetAlt.PrimalItemArmor_HideHelmetAlt_C"
    Items()
  end
  if menuC == 26 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_DinoWitchHat.PrimalItemSkin_DinoWitchHat_C"
    Items()
  end
  if menuC == 27 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Cloth/PrimalItem_HatTributeDino.PrimalItem_HatTributeDino_C"
    Items()
  end
  if menuC == 28 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_BaseHelmet.PrimalItemArmor_BaseHelmet_C"
    Items()
  end
  if menuC == 29 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_SkullMask.PrimalItemSkin_SkullMask_C"
    Items()
  end
  if menuC == 30 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_TurkeyHat.PrimalItemSkin_TurkeyHat_C"
    Items()
  end
  if menuC == 31 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_BaseGloves.PrimalItemArmor_BaseGloves_C"
    Items()
  end
  if menuC == 32 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_BasePants.PrimalItemArmor_BasePants_C"
    Items()
  end
  if menuC == 33 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_BaseShirt.PrimalItemArmor_BaseShirt_C"
    Items()
  end
  if menuC == 34 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Shields/PrimalItemArmor_Shield.PrimalItemArmor_Shield_C"
    Items()
  end
  if menuC == 35 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponBaseClub.PrimalItem_WeaponBaseClub_C"
    Items()
  end
  if menuC == 36 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponBaseHatchet.PrimalItem_WeaponBaseHatchet_C"
    Items()
  end
  if menuC == 37 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponBasePick.PrimalItem_WeaponBasePick_C"
    Items()
  end
  if menuC == 38 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_SleepingBag_Base.PrimalItemStructure_SleepingBag_Base_C"
    Items()
  end
  if menuC == 39 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_BrokenEggHat.PrimalItemSkin_BrokenEggHat_C"
    Items()
  end
  if menuC == 40 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Skin/PrimalItemSkin_GoldCrown.PrimalItemSkin_GoldCrown_C"
    Items()
  end
  if menuC == 41 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_BirthdayShirt.PrimalItemSkin_BirthdayShirt_C"
    Items()
  end
  if menuC == 42 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_BirthdayPants.PrimalItemSkin_BirthdayPants_C"
    Items()
  end
  if menuC == 43 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Base/PrimalItemArmor_SaddleGeneric.PrimalItemArmor_SaddleGeneric_C"
    Items()
  end
  if menuC == 44 then
    Main()
  end
end

function D()
  menuD = gg.choice({
    "1:🍁上古神器之猎手",
    "2:🍁上古神器之团结",
    "3:🍁上古神器之稳重",
    "4:🍁上古神器之狡诈",
    "5:🍁上古神器之智慧",
    "6:🍁上古神器之天主",
    "7:🍁上古神器之吞噬",
    "8:🍁上古神器之免疫",
    "9:🍁上古神器之强壮",
    "10:🍁看守着神器",
    "11:🍁通用神器",
    "12:🍁Bonus",
    "13:🍁Bonus2",
    "返回首页"
  }, nil, nil)
  if menuD == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_01.PrimalItemArtifact_01_C"
    Items()
  end
  if menuD == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_02.PrimalItemArtifact_02_C"
    Items()
  end
  if menuD == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_03.PrimalItemArtifact_03_C"
    Items()
  end
  if menuD == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_04.PrimalItemArtifact_04_C"
    Items()
  end
  if menuD == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_05.PrimalItemArtifact_05_C"
    Items()
  end
  if menuD == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_06.PrimalItemArtifact_06_C"
    Items()
  end
  if menuD == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_07.PrimalItemArtifact_07_C"
    Items()
  end
  if menuD == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_08.PrimalItemArtifact_08_C"
    Items()
  end
  if menuD == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_09.PrimalItemArtifact_09_C"
    Items()
  end
  if menuD == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifact_10.PrimalItemArtifact_10_C"
    Items()
  end
  if menuD == 11 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItemArtifactGeneric.PrimalItemArtifactGeneric_C"
    Items()
  end
  if menuD == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItem_Bonus.PrimalItem_Bonus_C"
    Items()
  end
  if menuD == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Artifacts/PrimalItem_Bonus2.PrimalItem_Bonus2_C"
    Items()
  end
  if menuD == 14 then
    Main()
  end
end

function E()
  menuE = gg.choice({
    "1:🌵弯刀",
    "2:🌵平底锅",
    "3:🌵悬崖平台",
    "4:🌵撬棍",
    "5:🌵青蛙腿",
    "6:🌵彩虹加特林",
    "7:🌵飞行衍生物",
    "8:🌵古怪手枪",
    "9:🌵Alarm Tower",
    "10:🌵Alarm Bell",
    "11:🙏猛犸象平台鞍",
    "12:🎃咸鱼皮肤",
    "13:塞马旗",
    "返回首页"
  }, nil, nil)
  if menuE == 1 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponCutlass.PrimalItem_WeaponCutlass_C"
    Items()
  end
  if menuE == 2 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponIronSkillet.PrimalItem_WeaponIronSkillet_C"
    Items()
  end
  if menuE == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Wooden/PrimalItemStructure_Cantilever.PrimalItemStructure_Cantilever_C"
    Items()
  end
  if menuE == 4 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponCrowbar.PrimalItem_WeaponCrowbar_C"
    Items()
  end
  if menuE == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/ARKetypes/PrimalItemArmor_FrogFeet.PrimalItemArmor_FrogFeet_C"
    Items()
  end
  if menuE == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Eerie_Turret.PrimalItemStructure_Eerie_Turret_C"
    Items()
  end
  if menuE == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Misc/Special/PrimalItem_DragonFlyWings.PrimalItem_DragonFlyWings_C"
    Items()
  end
  if menuE == 8 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponMachinedPistol.PrimalItem_WeaponMachinedPistol_C"
    Items()
  end
  if menuE == 9 then
    bit = "PrimalEarth/Structures/Premium/AlarmBell/PrimalItemStructure_AlarmTower.PrimalItemStructure_AlarmTower_C"
    Items()
  end
  if menuE == 10 then
    bit = "PrimalEarth/Structures/Premium/AlarmBell/PrimalItemStructure_WarningBell.PrimalItemStructure_WarningBell_C"
    Items()
  end
  if menuE == 11 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_MammothSaddle_Platform.PrimalItemArmor_MammothSaddle_Platform_C"
    Items()
  end
  if menuE == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemSkin_FishClub.PrimalItemSkin_FishClub_C"
    Items()
  end
  if menuE == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimaItemStructure_RaceFlag.PrimaItemStructure_RaceFlag_C"
    Items()
  end
  if menuE == 14 then
    Main()
  end
end

function F()
  menuF = gg.choice({
    "1:🍰树皮",
    "2:🍰迷彩伪装",
    "3:🍰Colorbomb",
    "4:🍰金",
    "5:🍰冰",
    "6:🍰熔岩",
    "7:🍰银",
    "8:🍰石头",
    "9:🍰流光",
    "10:🍰基础",
    "11:🍰Warpaint",
    "返回首页"
  }, nil, nil)
  if menuF == 1 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Bark.PrimalItem_ImplantGraft_Bark_C"
    Items()
  end
  if menuF == 2 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Camo.PrimalItem_ImplantGraft_Camo_C"
    Items()
  end
  if menuF == 3 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Colorbomb.PrimalItem_ImplantGraft_Colorbomb_C"
    Items()
  end
  if menuF == 4 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Gold.PrimalItem_ImplantGraft_Gold_C"
    Items()
  end
  if menuF == 5 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Ice.PrimalItem_ImplantGraft_Ice_C"
    Items()
  end
  if menuF == 6 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Lava.PrimalItem_ImplantGraft_Lava_C"
    Items()
  end
  if menuF == 7 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Platinum.PrimalItem_ImplantGraft_Platinum_C"
    Items()
  end
  if menuF == 8 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Stone.PrimalItem_ImplantGraft_Stone_C"
    Items()
  end
  if menuF == 9 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Yahweh.PrimalItem_ImplantGraft_Yahweh_C"
    Items()
  end
  if menuF == 10 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Base.PrimalItem_ImplantGraft_Base_C"
    Items()
  end
  if menuF == 11 then
    bit = "Mobile/SkinGrafts/PrimalItem_ImplantGraft_Warpaint.PrimalItem_ImplantGraft_Warpaint_C"
    Items()
  end
  if menuF == 12 then
    Main()
  end
end

function G()
  menuG = gg.choice({
    "1:🍵育母蜘蛛战利品",
    "2:🍵喷火龙战利品",
    "3:🍵银背金刚战利品",
    "4:🍵蝎身狮尾兽战利品",
    "5:🍵头部战利品",
    "6:🍵腿部战利品",
    "7:🍵手部战利品",
    "8:🍵生存者奖杯",
    "9:🍵渡渡鸟奖杯",
    "10:🍵牛龙奖杯",
    "11:🍵猛犸象奖杯",
    "12:🍵巨齿鲨奖杯",
    "13:🍵精英霸王龙战利品",
    "14:🍵蜘蛛旗",
    "15:🍵喷火龙旗",
    "16:🍵金刚旗",
    "17:🍵雷神火把挂壁",
    "110:奖🏆地牢奖杯合集",
    "返回首页"
  }, nil, nil)
  if menuG == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_Broodmother.PrimalItemTrophy_Broodmother_C"
    Items()
  end
  if menuG == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_Dragon.PrimalItemTrophy_Dragon_C"
    Items()
  end
  if menuG == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_Gorilla.PrimalItemTrophy_Gorilla_C"
    Items()
  end
  if menuG == 4 then
    bit = "ScorchedEarth/Structures/TrophyHeads/Manticore_Trophy/PrimalItemTrophy_Manticore.PrimalItemTrophy_Manticore_C"
    Items()
  end
  if menuG == 5 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_HumanHead.PrimalItem_HuntTrophy_HumanHead_C"
    Items()
  end
  if menuG == 6 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_HumanLeg.PrimalItem_HuntTrophy_HumanLeg_C"
    Items()
  end
  if menuG == 7 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_HumanArm.PrimalItem_HuntTrophy_HumanArm_C"
    Items()
  end
  if menuG == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_ARKLogo.PrimalItemTrophy_ARKLogo_C"
    Items()
  end
  if menuG == 9 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_Dodo.PrimalItem_HuntTrophy_Dodo_C"
    Items()
  end
  if menuG == 10 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_Carno.PrimalItem_HuntTrophy_Carno_C"
    Items()
  end
  if menuG == 11 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_Mammoth.PrimalItem_HuntTrophy_Mammoth_C"
    Items()
  end
  if menuG == 12 then
    bit = "Mobile/Pursuits/Hunts/ProHuntTrophies/PrimalItem_HuntTrophy_Megalodon.PrimalItem_HuntTrophy_Megalodon_C"
    Items()
  end
  if menuG == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Trophies/PrimalItemTrophy_AlphaRex.PrimalItemTrophy_AlphaRex_C"
    Items()
  end
  if menuG == 14 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Flag_Spider.PrimalItemStructure_Flag_Spider_C"
    Items()
  end
  if menuG == 15 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Flag_Dragon.PrimalItemStructure_Flag_Dragon_C"
    Items()
  end
  if menuG == 16 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Flag_Gorilla.PrimalItemStructure_Flag_Gorilla_C"
    Items()
  end
  if menuG == 17 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_RazerTorch.PrimalItemStructure_RazerTorch_C"
    Items()
  end
  if menuG == 18 then
    Bossjb()
  end
  if menuG == 19 then
    Main()
  end
end

function Bossjb()
  xn = gg.choice({
    "烈焰马飞",
    "阿根廷巨鹰",
    "育母蜘蛛",
    "Chalico",
    "Cnidaria",
    "渡渡鸟",
    "Doedicurus",
    "DungBeetle",
    "金刚",
    "青蛙",
    "首页"
  }, 2019, "")
  if xn == 1 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Anticorn.PrimalItem_Boss_Anticorn_C"
    Items()
  end
  if xn == 2 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Argentavis.PrimalItem_Boss_Argentavis_C"
    Items()
  end
  if xn == 3 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Broodmother.PrimalItem_Boss_Broodmother_C"
    Items()
  end
  if xn == 4 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Chalico.PrimalItem_Boss_Chalico_C"
    Items()
  end
  if xn == 5 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Cnidaria.PrimalItem_Boss_Cnidaria_C"
    Items()
  end
  if xn == 6 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Dodo.PrimalItem_Boss_Dodo_C"
    Items()
  end
  if xn == 7 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Doedicurus.PrimalItem_Boss_Doedicurus_C"
    Items()
  end
  if xn == 8 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_DungBeetle.PrimalItem_Boss_DungBeetle_C"
    Items()
  end
  if xn == 9 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Gorilla.PrimalItem_Boss_Gorilla_C"
    Items()
  end
  if xn == 10 then
    bit = "Mobile/Dungeon/Bossiers/PrimalItem_Boss_Toad.PrimalItem_Boss_Toad_C"
    Items()
  end
  if xn == 11 then
    HOME()
  end
  GLWW = -1
end

function H()
  menuH = gg.choice({
    "1:🍓宾果汤",
    "2:🍓仙人掌果汤",
    "3:🍓启蒙之汤",
    "4:🍓优质肉干",
    "5:🍓受精狮鹫蛋",
    "6:🍓熟肉干",
    "7:🍓狮鹫饲料",
    "8:🍓嘟嘟鸟羽毛",
    "9:🍓超级实验肉",
    "10:🍓超级蔬菜种子",
    "11:🍓斑龙受精蛋",
    "返回首页"
  }, nil, nil)
  if menuH == 1 then
    bit = "PrimalEarth/Test/PrimalItemConsumable_BerrySoup.PrimalItemConsumable_BerrySoup_C"
    Items()
  end
  if menuH == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_CactusBuffSoup.PrimalItemConsumable_CactusBuffSoup_C"
    Items()
  end
  if menuH == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_TheHorn.PrimalItemConsumable_TheHorn_C"
    Items()
  end
  if menuH == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_CookedPrimeMeat_Jerky.PrimalItemConsumable_CookedPrimeMeat_Jerky_C"
    Items()
  end
  if menuH == 5 then
    bit = "PrimalEarth/Test/PrimalItemConsumable_Egg_Griffin_Fertilized.PrimalItemConsumable_Egg_Griffin_Fertilized_C"
    Items()
  end
  if menuH == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_CookedMeat_Jerky.PrimalItemConsumable_CookedMeat_Jerky_C"
    Items()
  end
  if menuH == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_Kibble_Griffin.PrimalItemConsumable_Kibble_Griffin_C"
    Items()
  end
  if menuH == 8 then
    bit = "PrimalEarth/CoreBlueprints/Resources/PrimalItem_DodoFeather.PrimalItem_DodoFeather_C"
    Items()
  end
  if menuH == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_SuperTestMeat.PrimalItemConsumable_SuperTestMeat_C"
    Items()
  end
  if menuH == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Consumables/Seeds/PrimalItemConsumable_Seed_BaseSuperVeggie.PrimalItemConsumable_Seed_BaseSuperVeggie_C"
    Items()
  end
  if menuH == 11 then
    bit = "PrimalEarth/Test/PrimalItemConsumable_Egg_Megalosaurus_Fertilized.PrimalItemConsumable_Egg_Megalosaurus_Fertilized_C��"
    Items()
  end
  if menuH == 12 then
    rlhj()
  end
  if menuH == 13 then
    Main()
  end
end

function rlhj()
  local L0_89, L1_90
end

function I()
  menuI = gg.choice({
    "1:😮泰坦龙鞍",
    "2:😮放大镜",
    "3:😮盾",
    "4:😮防爆靴",
    "5:😮防爆手套",
    "6:😮防爆头盔",
    "7:😮防爆裤",
    "8:😮防爆胸甲",
    "9:😮防爆盾",
    "10:😮吉利靴",
    "11:💤吉利手套",
    "12:💤吉利面具",
    "13:💤吉利裤",
    "14:💤吉利胸甲",
    "15:💤防弹靴",
    "16:💤防弹手套",
    "17:💤防弹头盔",
    "18:💤防弹裤",
    "19:💤防弹胸甲",
    "20:💤火箭发射器",
    "21:💤剑",
    "22:💤复合弓",
    "23:💤指南针",
    "24:👿破旧的兽皮靴\t",
    "25:👿破损的兽皮手套\t",
    "26:👿破损的隐藏头盔\t",
    "27:👿破损的兽皮裤\t",
    "28:👿破损的兽皮上衣\t",
    "返回首页"
  }, nil, nil)
  if menuI == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_TitanSaddle_Platform.PrimalItemArmor_TitanSaddle_Platform_C"
    Items()
  end
  if menuI == 2 then
    bit = "PrimalEarth/Test/PrimalItem_WeaponMagnifyingGlass.PrimalItem_WeaponMagnifyingGlass_C"
    Items()
  end
  if menuI == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Shields/PrimalItemArmor_Shield.PrimalItemArmor_Shield_C"
    Items()
  end
  if menuI == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Riot/PrimalItemArmor_RiotBoots.PrimalItemArmor_RiotBoots_C"
    Items()
  end
  if menuI == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Riot/PrimalItemArmor_RiotGloves.PrimalItemArmor_RiotGloves_C"
    Items()
  end
  if menuI == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Riot/PrimalItemArmor_RiotHelmet.PrimalItemArmor_RiotHelmet_C"
    Items()
  end
  if menuI == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Riot/PrimalItemArmor_RiotPants.PrimalItemArmor_RiotPants_C"
    Items()
  end
  if menuI == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Riot/PrimalItemArmor_RiotShirt.PrimalItemArmor_RiotShirt_C"
    Items()
  end
  if menuI == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Shields/PrimalItemArmor_TransparentRiotShield.PrimalItemArmor_TransparentRiotShield_C"
    Items()
  end
  if menuI == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Ghillie/PrimalItemArmor_GhillieBoots.PrimalItemArmor_GhillieBoots_C"
    Items()
  end
  if menuI == 11 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Ghillie/PrimalItemArmor_GhillieGloves.PrimalItemArmor_GhillieGloves_C"
    Items()
  end
  if menuI == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Ghillie/PrimalItemArmor_GhillieHelmet.PrimalItemArmor_GhillieHelmet_C"
    Items()
  end
  if menuI == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Ghillie/PrimalItemArmor_GhilliePants.PrimalItemArmor_GhilliePants_C"
    Items()
  end
  if menuI == 14 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Ghillie/PrimalItemArmor_GhillieShirt.PrimalItemArmor_GhillieShirt_C"
    Items()
  end
  if menuI == 15 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Metal/PrimalItemArmor_MetalBoots.PrimalItemArmor_MetalBoots_C"
    Items()
  end
  if menuI == 16 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Metal/PrimalItemArmor_MetalGloves.PrimalItemArmor_MetalGloves_C"
    Items()
  end
  if menuI == 17 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Metal/PrimalItemArmor_MetalHelmet.PrimalItemArmor_MetalHelmet_C"
    Items()
  end
  if menuI == 18 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Metal/PrimalItemArmor_MetalPants.PrimalItemArmor_MetalPants_C"
    Items()
  end
  if menuI == 19 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Metal/PrimalItemArmor_MetalShirt.PrimalItemArmor_MetalShirt_C"
    Items()
  end
  if menuI == 20 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponRocketLauncher.PrimalItem_WeaponRocketLauncher_C"
    Items()
  end
  if menuI == 21 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponSword.PrimalItem_WeaponSword_C"
    Items()
  end
  if menuI == 22 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponCompoundBow.PrimalItem_WeaponCompoundBow_C"
    Items()
  end
  if menuI == 23 then
    bit = "PrimalEarth/Test/PrimalItem_WeaponCompass.PrimalItem_WeaponCompass_C"
    Items()
  end
  if menuI == 24 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HideBoots.PrimalItemArmor_HideBoots_C"
    Items()
  end
  if menuI == 25 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HideGloves.PrimalItemArmor_HideGloves_C"
    Items()
  end
  if menuI == 26 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HideHelmet.PrimalItemArmor_HideHelmet_C"
    Items()
  end
  if menuI == 27 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HidePants.PrimalItemArmor_HidePants_C"
    Items()
  end
  if menuI == 28 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Leather/PrimalItemArmor_HideShirt.PrimalItemArmor_HideShirt_C"
    Items()
  end
  if menuI == 29 then
    Main()
  end
end

function J()
  menuJ = gg.choice({
    "1:🍀泰克地基",
    "2:🍀金属巨型墙",
    "3:🍀泰克天花板",
    "4:🍀泰克天窗框",
    "5:🍀泰克门",
    "6:🍀泰克栅栏地基",
    "7:🍀泰克梯子",
    "8:🍀泰克柱子",
    "9:🍀泰克栏杆",
    "10:🍀泰克斜坡",
    "11:🍀泰克倾斜屋顶",
    "12:🍀泰克旋转楼梯",
    "13:🍀泰克天窗门",
    "14:🍀泰克左斜墙",
    "15:🍀泰克右斜墙",
    "16:🍀泰克墙",
    "17:🍀泰克门框",
    "18:🍀泰克窗框",
    "19:🍀泰克窗户",
    "20:🍀泰克手榴弹",
    "21:🍀泰克步枪",
    "22:🍀泰克盾",
    "23:🍀泰克靴",
    "24:🍀泰克胸甲",
    "25:🍀泰克手套",
    "26:🍀泰克头盔",
    "27:🍀泰克护腿",
    "28:🍀泰克睡眠舱",
    "29:🍀泰克灯",
    "30:🍀泰克发电机",
    "31:🍀泰克DNA提取器",
    "32:🍀泰克KibbleProcessor",
    "33:🍀泰克复制器",
    "34:🍀泰克传送门",
    "35:🍀泰克饲料槽",
    "36:🍀泰克岩龙鞍",
    "37:🍀泰克巨齿鲨鞍",
    "38:🍀泰克沧龙鞍",
    "39:🍀泰克霸王龙鞍",
    "40:🍀泰克通用鞍",
    "41:🍀泰克古神翼龙鞍",
    "42:🍀泰克元素板",
    "43:泰克呼吸机",
    "返回首页"
  }, nil, nil)
  if menuJ == 1 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekFloor.PrimalItemStructure_TekFloor_C"
    Items()
  end
  if menuJ == 2 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Metal/PrimalItemStructure_MetalBattlement_Large.PrimalItemStructure_MetalBattlement_Large_C"
    Items()
  end
  if menuJ == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekCeiling.PrimalItemStructure_TekCeiling_C"
    Items()
  end
  if menuJ == 4 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekCeilingWithTrapdoor.PrimalItemStructure_TekCeilingWithTrapdoor_C"
    Items()
  end
  if menuJ == 5 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekDoor.PrimalItemStructure_TekDoor_C"
    Items()
  end
  if menuJ == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekFenceFoundation.PrimalItemStructure_TekFenceFoundation_C"
    Items()
  end
  if menuJ == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekLadder.PrimalItemStructure_TekLadder_C"
    Items()
  end
  if menuJ == 8 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekPillar.PrimalItemStructure_TekPillar_C"
    Items()
  end
  if menuJ == 9 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekRailing.PrimalItemStructure_TekRailing_C"
    Items()
  end
  if menuJ == 10 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekRamp.PrimalItemStructure_TekRamp_C"
    Items()
  end
  if menuJ == 11 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekRoof.PrimalItemStructure_TekRoof_C"
    Items()
  end
  if menuJ == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekStairs.PrimalItemStructure_TekStairs_C"
    Items()
  end
  if menuJ == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekTrapdoor.PrimalItemStructure_TekTrapdoor_C"
    Items()
  end
  if menuJ == 14 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWall_Sloped_Left.PrimalItemStructure_TekWall_Sloped_Left_C"
    Items()
  end
  if menuJ == 15 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWall_Sloped_Right.PrimalItemStructure_TekWall_Sloped_Right_C"
    Items()
  end
  if menuJ == 16 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWall.PrimalItemStructure_TekWall_C"
    Items()
  end
  if menuJ == 17 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWallWithDoor.PrimalItemStructure_TekWallWithDoor_C"
    Items()
  end
  if menuJ == 18 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWallWithWindow.PrimalItemStructure_TekWallWithWindow_C"
    Items()
  end
  if menuJ == 19 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Tek/PrimalItemStructure_TekWindow.PrimalItemStructure_TekWindow_C"
    Items()
  end
  if menuJ == 20 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_TekGrenade.PrimalItem_TekGrenade_C"
    Items()
  end
  if menuJ == 21 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItem_TekRifle.PrimalItem_TekRifle_C"
    Items()
  end
  if menuJ == 22 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Shields/PrimalItemArmor_ShieldTek.PrimalItemArmor_ShieldTek_C"
    Items()
  end
  if menuJ == 23 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TekBoots.PrimalItemArmor_TekBoots_C"
    Items()
  end
  if menuJ == 24 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TekShirt.PrimalItemArmor_TekShirt_C"
    Items()
  end
  if menuJ == 25 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TekGloves.PrimalItemArmor_TekGloves_C"
    Items()
  end
  if menuJ == 26 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TekHelmet.PrimalItemArmor_TekHelmet_C"
    Items()
  end
  if menuJ == 27 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TekPants.PrimalItemArmor_TekPants_C"
    Items()
  end
  if menuJ == 28 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Bed_Tek.PrimalItemStructure_Bed_Tek_C"
    Items()
  end
  if menuJ == 29 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekGenerator.PrimalItemStructure_TekGenerator_C"
    Items()
  end
  if menuJ == 30 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekLight.PrimalItemStructure_TekLight_C"
    Items()
  end
  if menuJ == 31 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekDNAExtractor.PrimalItemStructure_TekDNAExtractor_C"
    Items()
  end
  if menuJ == 32 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekKibbleProcessor.PrimalItemStructure_TekKibbleProcessor_C"
    Items()
  end
  if menuJ == 33 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekReplicator.PrimalItemStructure_TekReplicator_C"
    Items()
  end
  if menuJ == 34 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekTeleporter.PrimalItemStructure_TekTeleporter_C"
    Items()
  end
  if menuJ == 35 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_TekTrough.PrimalItemStructure_TekTrough_C"
    Items()
  end
  if menuJ == 36 then
    bit = "Aberration/Dinos/RockDrake/PrimalItemArmor_RockDrakeSaddle_Tek.PrimalItemArmor_RockDrakeSaddle_Tek_C"
    Items()
  end
  if menuJ == 37 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_MegalodonSaddle_Tek.PrimalItemArmor_MegalodonSaddle_Tek_C"
    Items()
  end
  if menuJ == 38 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_MosaSaddle_Tek.PrimalItemArmor_MosaSaddle_Tek_C"
    Items()
  end
  if menuJ == 39 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_RexSaddle_Tek.PrimalItemArmor_RexSaddle_Tek_C"
    Items()
  end
  if menuJ == 40 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_SaddleGeneric_Tek.PrimalItemArmor_SaddleGeneric_Tek_C"
    Items()
  end
  if menuJ == 41 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/Saddles/PrimalItemArmor_Tapejara_Tek.PrimalItemArmor_Tapejara_Tek_C"
    Items()
  end
  if menuJ == 42 then
    bit = "PrimalEarth/CoreBlueprints/Resources/PrimalItemResource_EeryElement.PrimalItemResource_EeryElement_C"
    Items()
  end
  if menuJ == 43 then
    bit = "PrimalEarth/CoreBlueprints/Items/Armor/TEK/PrimalItemArmor_TEKScubaHelmet.PrimalItemArmor_TEKScubaHelmet_C"
    Items()
  end
  if menuJ == 44 then
    HOME()
  end
  GLWW = -1
end

function K()
  menuK = gg.choice({
    "1:💨火箭",
    "2:💨仙人掌汁",
    "3:💨邮筒",
    "4:💨受精飞龙蛋1",
    "5:💨受精飞龙蛋2",
    "6:💨金属邮箱",
    "7:💨邮箱",
    "8:💨硫磺",
    "9:💨沙子",
    "10:💨粘土",
    "11:💨推进剂",
    "12:💨复活节彩蛋",
    "13:💨坟墓",
    "14:💨南瓜",
    "15:💨稻草人",
    "16:💨训练木偶",
    "17:💨信息素标",
    "110:🎁礼物合集",
    "返回首页"
  }, nil, nil)
  if menuK == 1 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItemAmmo_ArrowFlame.PrimalItemAmmo_ArrowFlame_C"
    Items()
  end
  if menuK == 2 then
    bit = "ScorchedEarth/CoreBlueprints/Consumables/PrimalItemConsumable_CactusSap.PrimalItemConsumable_CactusSap_C"
    Items()
  end
  if menuK == 3 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Mailbox3.PrimalItemStructure_Mailbox3_C"
    Items()
  end
  if menuK == 4 then
    bit = "PrimalEarth/Test/PrimalItemConsumable_Egg_Wyvern_Fertilized_Fire.PrimalItemConsumable_Egg_Wyvern_Fertilized_Fire_C"
    Items()
  end
  if menuK == 5 then
    bit = "PrimalEarth/Test/PrimalItemConsumable_Egg_Wyvern_Fertilized_Fire.PrimalItemConsumable_Egg_Wyvern_Fertilized_Fire_C"
    Items()
  end
  if menuK == 6 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Mailbox2.PrimalItemStructure_Mailbox2_C"
    Items()
  end
  if menuK == 7 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Misc/PrimalItemStructure_Mailbox.PrimalItemStructure_Mailbox_C"
    Items()
  end
  if menuK == 8 then
    bit = "ScorchedEarth/CoreBlueprints/Resources/PrimalItemResource_Sulfur.PrimalItemResource_Sulfur_C"
    Items()
  end
  if menuK == 9 then
    bit = "ScorchedEarth/CoreBlueprints/Resources/PrimalItemResource_Sand.PrimalItemResource_Sand_C"
    Items()
  end
  if menuK == 10 then
    bit = "ScorchedEarth/CoreBlueprints/Resources/PrimalItemResource_Clay.PrimalItemResource_Clay_C"
    Items()
  end
  if menuK == 11 then
    bit = "ScorchedEarth/CoreBlueprints/Resources/PrimalItemResource_Propellant.PrimalItemResource_Propellant_C"
    Items()
  end
  if menuK == 12 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Halloween/PrimalItemStructure_EasterEgg.PrimalItemStructure_EasterEgg_C"
    Items()
  end
  if menuK == 13 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Halloween/PrimalItemStructure_HW_Grave.PrimalItemStructure_HW_Grave_C"
    Items()
  end
  if menuK == 14 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Halloween/PrimalItemStructure_Pumpkin.PrimalItemStructure_Pumpkin_C"
    Items()
  end
  if menuK == 15 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Halloween/PrimalItemStructure_Scarecrow.PrimalItemStructure_Scarecrow_C"
    Items()
  end
  if menuK == 16 then
    bit = "PrimalEarth/CoreBlueprints/Items/Structures/Halloween/PrimalItemStructure_TrainingDummy.PrimalItemStructure_TrainingDummy_C"
    Items()
  end
  if menuK == 17 then
    bit = "PrimalEarth/CoreBlueprints/Weapons/PrimalItemAmmo_AggroTranqDart.PrimalItemAmmo_AggroTranqDart_C"
    Items()
  end
  if menuK == 18 then
    Main()
  end
end


function L()
  itemby = 0
  for _FORV_3_ = 1, 80 do
    itemsn = io.open("/storage/emulated/0/Android/data/item" .. _FORV_3_ .. "name.txt", "r")
    if itemsn == nil then
      itemby = itemby + 1
      if itemby == 1 then
        item1[_FORV_3_] = "添加物品🙃"
      else
        item1[_FORV_3_] = nil
      end
    else
      itemm = itemsn:read("*a")
      itemsn:close()
      item1[_FORV_3_] = "序号:" .. _FORV_3_ .. "—名称:" .. itemm .. ""
    end
  end
  menuL = gg.choice({
    item1[1],
    item1[2],
    item1[3],
    item1[4],
    item1[5],
    item1[6],
    item1[7],
    item1[8],
    item1[9],
    item1[10],
    item1[11],
    item1[12],
    item1[13],
    item1[14],
    item1[15],
    item1[16],
    item1[17],
    item1[18],
    item1[19],
    item1[20],
    item1[21],
    item1[22],
    item1[23],
    item1[24],
    item1[25],
    item1[26],
    item1[27],
    item1[28],
    item1[29],
    item1[30],
    item1[31],
    item1[32],
    item1[33],
    item1[34],
    item1[35],
    item1[36],
    item1[37],
    item1[38],
    item1[39],
    item1[40],
    item1[41],
    item1[42],
    item1[43],
    item1[44],
    item1[45],
    item1[46],
    item1[47],
    item1[48],
    item1[49],
    item1[50],
    item1[51],
    item1[52],
    item1[53],
    item1[54],
    item1[55],
    item1[56],
    item1[57],
    item1[58],
    item1[59],
    item1[60],
    item1[61],
    item1[62],
    item1[63],
    item1[64],
    item1[65],
    item1[66],
    item1[67],
    item1[68],
    item1[69],
    item1[70],
    item1[71],
    item1[72],
    item1[73],
    item1[74],
    item1[75],
    item1[76],
    item1[77],
    item1[78],
    item1[79],
    item1[80],
    "删除物品",
    "返回首页"
  }, nil, "请先看群里说明\n添加玩记得刷新列表")
  if menuL == 1 then
    itemsid = 1
    itemsff()
  end
  if menuL == 2 then
    itemsid = 2
    itemsff()
  end
  if menuL == 3 then
    itemsid = 3
    itemsff()
  end
  if menuL == 4 then
    itemsid = 4
    itemsff()
  end
  if menuL == 5 then
    itemsid = 5
    itemsff()
  end
  if menuL == 6 then
    itemsid = 6
    itemsff()
  end
  if menuL == 7 then
    itemsid = 7
    itemsff()
  end
  if menuL == 8 then
    itemsid = 8
    itemsff()
  end
  if menuL == 9 then
    itemsid = 9
    itemsff()
  end
  if menuL == 10 then
    itemsid = 10
    itemsff()
  end
  if menuL == 11 then
    itemsid = 11
    itemsff()
  end
  if menuL == 12 then
    itemsid = 12
    itemsff()
  end
  if menuL == 13 then
    itemsid = 13
    itemsff()
  end
  if menuL == 14 then
    itemsid = 14
    itemsff()
  end
  if menuL == 15 then
    itemsid = 15
    itemsff()
  end
  if menuL == 16 then
    itemsid = 16
    itemsff()
  end
  if menuL == 17 then
    itemsid = 17
    itemsff()
  end
  if menuL == 18 then
    itemsid = 18
    itemsff()
  end
  if menuL == 19 then
    itemsid = 19
    itemsff()
  end
  if menuL == 20 then
    itemsid = 20
    itemsff()
  end
  if menuL == 21 then
    itemsid = 21
    itemsff()
  end
  if menuL == 22 then
    itemsid = 22
    itemsff()
  end
  if menuL == 23 then
    itemsid = 23
    itemsff()
  end
  if menuL == 24 then
    itemsid = 24
    itemsff()
  end
  if menuL == 25 then
    itemsid = 25
    itemsff()
  end
  if menuL == 26 then
    itemsid = 26
    itemsff()
  end
  if menuL == 27 then
    itemsid = 27
    itemsff()
  end
  if menuL == 28 then
    itemsid = 28
    itemsff()
  end
  if menuL == 29 then
    itemsid = 29
    itemsff()
  end
  if menuL == 30 then
    itemsid = 30
    itemsff()
  end
  if menuL == 31 then
    itemsid = 31
    itemsff()
  end
  if menuL == 32 then
    itemsid = 32
    itemsff()
  end
  if menuL == 33 then
    itemsid = 33
    itemsff()
  end
  if menuL == 34 then
    itemsid = 34
    itemsff()
  end
  if menuL == 35 then
    itemsid = 35
    itemsff()
  end
  if menuL == 36 then
    itemsid = 36
    itemsff()
  end
  if menuL == 37 then
    itemsid = 37
    itemsff()
  end
  if menuL == 38 then
    itemsid = 38
    itemsff()
  end
  if menuL == 39 then
    itemsid = 39
    itemsff()
  end
  if menuL == 40 then
    itemsid = 40
    itemsff()
  end
  if menuL == 41 then
    itemsid = 41
    itemsff()
  end
  if menuL == 42 then
    itemsid = 42
    itemsff()
  end
  if menuL == 43 then
    itemsid = 43
    itemsff()
  end
  if menuL == 44 then
    itemsid = 44
    itemsff()
  end
  if menuL == 45 then
    itemsid = 45
    itemsff()
  end
  if menuL == 46 then
    itemsid = 46
    itemsff()
  end
  if menuL == 47 then
    itemsid = 47
    itemsff()
  end
  if menuL == 48 then
    itemsid = 48
    itemsff()
  end
  if menuL == 49 then
    itemsid = 49
    itemsff()
  end
  if menuL == 50 then
    itemsid = 50
    itemsff()
  end
  if menuL == 51 then
    itemsid = 51
    itemsff()
  end
  if menuL == 52 then
    itemsid = 52
    itemsff()
  end
  if menuL == 53 then
    itemsid = 53
    itemsff()
  end
  if menuL == 54 then
    itemsid = 54
    itemsff()
  end
  if menuL == 55 then
    itemsid = 55
    itemsff()
  end
  if menuL == 56 then
    itemsid = 56
    itemsff()
  end
  if menuL == 57 then
    itemsid = 57
    itemsff()
  end
  if menuL == 58 then
    itemsid = 58
    itemsff()
  end
  if menuL == 59 then
    itemsid = 59
    itemsff()
  end
  if menuL == 60 then
    itemsid = 60
    itemsff()
  end
  if menuL == 61 then
    itemsid = 61
    itemsff()
  end
  if menuL == 62 then
    itemsid = 62
    itemsff()
  end
  if menuL == 63 then
    itemsid = 63
    itemsff()
  end
  if menuL == 64 then
    itemsid = 64
    itemsff()
  end
  if menuL == 65 then
    itemsid = 65
    itemsff()
  end
  if menuL == 66 then
    itemsid = 66
    itemsff()
  end
  if menuL == 67 then
    itemsid = 67
    itemsff()
  end
  if menuL == 68 then
    itemsid = 68
    itemsff()
  end
  if menuL == 69 then
    itemsid = 69
    itemsff()
  end
  if menuL == 70 then
    itemsid = 70
    itemsff()
  end
  if menuL == 71 then
    itemsid = 71
    itemsff()
  end
  if menuL == 72 then
    itemsid = 72
    itemsff()
  end
  if menuL == 73 then
    itemsid = 73
    itemsff()
  end
  if menuL == 74 then
    itemsid = 74
    itemsff()
  end
  if menuL == 75 then
    itemsid = 75
    itemsff()
  end
  if menuL == 76 then
    itemsid = 76
    itemsff()
  end
  if menuL == 77 then
    itemsid = 77
    itemsff()
  end
  if menuL == 78 then
    itemsid = 78
    itemsff()
  end
  if menuL == 79 then
    itemsid = 79
    itemsff()
  end
  if menuL == 80 then
    itemsid = 80
    itemsff()
  end
  if menuL == 81 then
    scwp()
  end
  if menuL == 82 then
    Main()
  end
end

function itemsff()
  local L0_91
  L0_91 = nil
  itemsid1 = itemsid
  itemsra = io.open("/storage/emulated/0/Android/data/item" .. itemsid .. "dm.txt", "r")
  if itemsra == nil then
    if gg.prompt({
      [1] = "物品名称",
      [2] = "端游代码"
    }, {}, {
      [1] = "text",
      [2] = "text"
    }) ~= nil and gg.prompt({
      [1] = "物品名称",
      [2] = "端游代码"
    }, {}, {
      [1] = "text",
      [2] = "text"
    })[1] ~= nil and gg.prompt({
      [1] = "物品名称",
      [2] = "端游代码"
    }, {}, {
      [1] = "text",
      [2] = "text"
    })[2] ~= nil then
      itemrb = io.open("/storage/emulated/0/Android/data/item" .. itemsid1 .. "name.txt", "w")
      itemrc = io.open("/storage/emulated/0/Android/data/item" .. itemsid1 .. "dm.txt", "w")
      itemrb:write(gg.prompt({
        [1] = "物品名称",
        [2] = "端游代码"
      }, {}, {
        [1] = "text",
        [2] = "text"
      })[1])
      itemrb:close()
      itemrc:write("" .. gg.prompt({
        [1] = "物品名称",
        [2] = "端游代码"
      }, {}, {
        [1] = "text",
        [2] = "text"
      })[2] .. "_C")
      itemrc:close()
      gg.alert("添加成功！")
    end
  else
    bit = itemsra:read("*a")
    itemsra:close()
    Items()
  end
end

function scwp()
  local L0_92
  L0_92 = nil
  if gg.prompt({
    [1] = "物品序号"
  }) ~= nil then
    os.remove("/storage/emulated/0/Android/data/item" .. gg.prompt({
      [1] = "物品序号"
    })[1] .. "name.txt")
    os.remove("/storage/emulated/0/Android/data/item" .. gg.prompt({
      [1] = "物品序号"
    })[1] .. "dm.txt")
    gg.alert("序号为" .. gg.prompt({
      [1] = "物品序号"
    })[1] .. "的物品已删除")
  end
  Main()
end

function savegame()
  gg.timeJump("15:0")
  Main()
end

function Items()
if bit==nil then gg.alert("这个是空的") os.exit() end
for i = 1,126 do
cre[i]=string.byte(""..bit.."",i)
if cre[i]==nil then cre[i]=0
 end
end
 if t1==nil then
  gg.setRanges(4)
  gg.clearResults()
  gg.searchNumber("83;111;111;116;104;105;110;103;66;97;108;109;95;77;97;106;111;114;95;67::512",4)
  gg.searchNumber("67",4)
  t1=gg.getResults(199)
 end
action()
end

function action()
 for i=1,#t1 do
 local t2={{address=t1[i].address-504,flags=4}}
  if (XS.getNum(t2)==47) then
local  t3={
{address=t1[i].address-500,
flags=4,value=cre[1]},
{address=t1[i].address-496,
flags=4,value=cre[2]},
{address=t1[i].address-492,flags=4,value=cre[3]
},
{address=t1[i].address-488,flags=4,value=cre[4]
},
{address=t1[i].address-484,
flags=4,value=cre[5]},
{
address=t1[i].address-480,
flags=4,value=cre[6]},
{address=t1[i].address-476,
flags=4,value=cre[7]},
{address=t1[i].address-472,
flags=4,value=cre[8]},
{address=t1[i].address-468,flags=4,value=cre[9]
},
{address=t1[i].address-464,
flags=4,value=cre[10]},
{address=t1[i].address-460,flags=4,value=cre[11]
},
{address=t1[i].address-456,flags=4,value=cre[12]
},
{address=t1[i].address-452,flags=4,value=cre[13]
},
{address=t1[i].address-448,flags=4,value=cre[14]
},
{address=t1[i].address-444,flags=4,value=cre[15]
},
{address=t1[i].address-440,
flags=4,value=cre[16]},
{address=t1[i].address-436,
flags=4,value=cre[17]},
{address=t1[i]
.address-432,flags=4,value=cre[18]},
{address=t1[i].
address-428,flags=4,value=cre[19]},
{address=t1[i].address-424,flags=4,value=cre
[20]},
{address=t1[i].address-420,flags=4,value=cre
[21]},
{address=t1[i].address-416,flags=4,value=cre
[22]},
{address=t1[i].address-412,flags=4,value=cre
[23]},
{address=t1[i].address-408,flags=4,value=cre
[24]},
{address=t1[i].address-404,flags=4,value=cre[25]
},
{address=t1[i].address-400,flags=4,value=cre
[26]},
{address=t1[i].address-396,flags=4,value=cre
[27]},
{address=t1[i].address-392,flags=4,value=cre
[28]},
{address=t1[i].address-388,
flags=4,value=cre[29]},
{address=t1[i].address-384,
flags=4,value=cre[30]},
{address=t1[i].address-380,
flags=4,value=cre[31]},
{address=t1[i].address-376,
flags=4,value=cre[32]},
{address=t1[i].address-372,
flags=4,value=cre[33]},
{address=t1[i].address-368,
flags=4,value=cre[34]},
{address=t1[i].address-364,
flags=4,value=cre[35]},
{address=t1[i].address-360,
flags=4,value=cre[36]},
{address=t1[i].address-356,
flags=4,value=cre[37]},
{address=t1[i].address-352,
flags=4,value=cre[38]},
{address=t1[i].address-348,
flags=4,value=cre[39]},
{address=t1[i].address-344,
flags=4,value=cre[40]},
{address=t1[i].address-340,
flags=4,value=cre[41]},
{address=t1[i].address-336,
flags=4,value=cre[42]},
{address=t1[i].address-332,
flags=4,value=cre[43]},
{address=t1[i].address-328,
flags=4,value=cre[44]},
{address=t1[i].address-324,
flags=4,value=cre[45]},
{address=t1[i].address-320,
flags=4,value=cre[46]},
{address=t1[i].address-316,
flags=4,value=cre[47]},
{address=t1[i].address-312,
flags=4,value=cre[48]},
{address=t1[i].address-308,
flags=4,value=cre[49]},
{address=t1[i].address-304,
flags=4,value=cre[50]},
{address=t1[i].address-300,
flags=4,value=cre[51]},
{address=t1[i].address-296,
flags=4,value=cre[52]},
{address=t1[i].address-292,
flags=4,value=cre[53]},
{address=t1[i].address-288,
flags=4,value=cre[54]},
{address=t1[i].address-284,
flags=4,value=cre[55]},
{address=t1[i].address-280,
flags=4,value=cre[56]},
{address=t1[i].address-276,flags=4,
value=cre[57]},
{address=t1[i].address-272,flags=4,
value=cre[58]},
{address=t1[i].address-268,flags=4,
value=cre[59]},
{address=t1[i].address-264,flags=4,
value=cre[60]},
{address=t1[i].address-260,flags=4,
value=cre[61]},
{address=t1[i].address-256,flags=4,
value=cre[62]},
{address=t1[i].address-252,flags=4,
value=cre[63]},
{address=t1[i].address-248,flags=4,
value=cre[64]},
{address=t1[i].address-244,flags=4,
value=cre[65]},
{address=t1[i].address-240,flags=4,
value=cre[66]},
{address=t1[i].address-236,flags=4,
value=cre[67]},
{address=t1[i].address-232,flags=4,
value=cre[68]},
{address=t1[i].address-228,flags=4,
value=cre[69]},
{address=t1[i].address-224,flags=4,
value=cre[70]},
{address=t1[i].address-220,flags=4,
value=cre[71]},
{address=t1[i].address-216,flags=4,
value=cre[72]},
{address=t1[i].address-212,flags=4,
value=cre[73]},
{address=t1[i].address-208,flags=4,
value=cre[74]},
{address=t1[i].address-204,flags=4,
value=cre[75]},
{address=t1[i].address-200,flags=4,
value=cre[76]},
{address=t1[i].address-196,flags=4,
value=cre[77]},
{address=t1[i].address-192,flags=4,
value=cre[78]},
{address=t1[i].address-188,flags=4,
value=cre[79]},
{address=t1[i].address-184,flags=4,
value=cre[80]},
{address=t1[i].address-180,flags=4,
value=cre[81]},
{address=t1[i].address-176,flags=4,
value=cre[82]},
{address=t1[i].address-172,flags=4,
value=cre[83]},
{address=t1[i].address-168,flags=4,
value=cre[84]},
{address=t1[i].address-164,flags=4,
value=cre[85]},
{address=t1[i].address-160,flags=4,
value=cre[86]},
{address=t1[i].address-156,flags=4,
value=cre[87]},
{address=t1[i].address-152,flags=4,
value=cre[88]},
{address=t1[i].address-148,flags=4,
value=cre[89]},
{address=t1[i].address-144,flags=4,
value=cre[90]},
{address=t1[i].address-140,flags=4,
value=cre[91]},
{address=t1[i].address-136,flags=4,
value=cre[92]},
{address=t1[i].address-132,flags=4,
value=cre[93]},
{address=t1[i].address-128,flags=4,
value=cre[94]},
{address=t1[i].address-124,flags=4,
value=cre[95]},
{address=t1[i].address-120,flags=4,
value=cre[96]},
{address=t1[i].address-116,flags=4,
value=cre[97]},
{address=t1[i].address-112,flags=4,
value=cre[98]},
{address=t1[i].address-108,flags=4,
value=cre[99]},
{address=t1[i].address-104,flags=4,value=cre
[100]},
{address=t1[i].address-100,flags=4,value=cre
[101]},
{address=t1[i].address-96,flags=4,value=cre
[102]},
{address=t1[i].address-92,flags=4,value=cre
[103]},
{address=t1[i].address-88,flags=4,value=cre
[104]},
{address=t1[i].address-84,flags=4,value=cre
[105]},
{address=t1[i].address-80,flags=4,value=cre
[106]},
{address=t1[i].address-76,flags=4,value=cre
[107]},
{address=t1[i].address-72,flags=4,value=cre
[108]},
{address=t1[i].address-68,flags=4,value=cre
[109]},
{address=t1[i].address-64,flags=4,value=cre
[110]},
{address=t1[i].address-60,flags=4,value=cre
[111]},
{address=t1[i].address-56,flags=4,value=cre
[112]},
{address=t1[i].address-52,flags=4,value=cre
[113]},
{address=t1[i].address-48,flags=4,value=cre
[114]},
{address=t1[i].address-44,flags=4,value=cre
[115]},
{address=t1[i].address-40,flags=4,value=cre
[116]},
{address=t1[i].address-36,flags=4,value=cre
[117]},
{address=t1[i].address-32,flags=4,value=cre
[118]},
{address=t1[i].address-28,flags=4,value=cre
[119]},
{address=t1[i].address-24,flags=4,value=cre
[120]},
{address=t1[i].address-20,flags=4,value=cre
[121]},
{address=t1[i].address-16,flags=4,value=cre
[122]},
{address=t1[i].address-12,flags=4,value=cre
[123]},
{address=t1[i].address-8,flags=4,value=cre
[124]},
{address=t1[i].address-4,flags=4,value=cre
[125]},
{address=t1[i].address+0,flags=4,value=cre[126]
}}
gg.setValues(t3)
   end
 end
end

function Exit()
  print("QQ1748872234")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "QQ1748872234"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
