--源码仅供参考   



local L0_708, L1_709, L2_710, L3_711, L4_712, L5_713, L6_714, L7_715, L8_716, L9_717, L10_718, L11_719, L12_720, L13_721, L14_722, L15_723, L16_724, L17_725, L18_726, L19_727, L20_728, L21_729, L22_730, L23_731, L24_732, L25_733, L26_734, L27_735, L28_736, L29_737, L30_738, L31_739, L32_740, L33_741, L34_742, L35_743, L36_744, L37_745, L38_746, L39_747, L40_748, L41_749, L42_750, L43_751, L44_752, L45_753, L46_754, L47_755, L48_756, L49_757, L50_758, L51_759, L52_760, L53_761, L54_762, L55_763, L56_764, L57_765, L58_766, L59_767, L60_768, L61_769, L62_770, L63_771, L64_772, L65_773, L66_774, L67_775, L68_776, L69_777, L70_778, L71_779, L72_780, L73_781, L74_782, L75_783, L76_784, L77_785, L78_786, L79_787, L80_788, L81_789, L82_790, L83_791, L84_792, L85_793, L86_794, L87_795, L88_796, L89_797, L90_798, L91_799, L92_800, L93_801, L94_802, L95_803, L96_804, L97_805, L98_806, L99_807, L100_808, L101_809, L102_810, L103_811
function L1_709()
  gg.alert("你够了，到此为止了", "鬼", "鬼", "鬼")
  _G.os.exit()
  _G["hook?"]()
end

function L1_709()
  _ENV["hook?"]()
end

function L3_711(A0_812, A1_813)
  local L2_814, L3_815, L4_816, L5_817, L6_818, L7_819, L8_820, L9_821, L10_822, L11_823, L12_824, L13_825, L14_826, L15_827, L16_828, L17_829, L18_830
end

function L3_711(A0_831, A1_832)
  local L2_833, L3_834
  L2_833 = {}
  L3_834 = {}
  for _FORV_7_, _FORV_8_ in ipairs(A1_832) do
    _FORV_8_ = {
      address = A0_831 + _FORV_8_[3],
      flags = _FORV_8_[2],
      value = _FORV_8_[1],
      freeze = true
    }
    if _FORV_8_[4] then
      L3_834[#L3_834 + 1] = _FORV_8_
    else
      L2_833[#L2_833 + 1] = _FORV_8_
    end
  end
  gg.setValues(L2_833)
  gg.addListItems(L3_834)
end

function L3_711(A0_835, A1_836)
  local L2_837, L3_838, L4_839, L5_840, L6_841, L7_842, L8_843, L9_844, L10_845, L11_846, L12_847, L13_848, L14_849, L15_850, L16_851, L17_852, L18_853, L19_854
end

function L3_711()
  SN = gg.choice({
    "开锁[三倍]",
    "开锁三倍[恢复]",
    "秒开锁",
    "秒开锁[恢复]",
    "3.8移速",
    "3.8移速[恢复]",
    "火箭筒十连发",
    "十连发恢复",
    "火箭筒二十连发",
    "二十连发恢复",
    "锁血",
    "",
    "",
    "",
    "",
    "#"
  }, 2021, "出品:秋家\n当前进程包名:" .. a .. "\n当前地点:" .. dd .. "\n修改器版本号：" .. mb .. "\n修改器版本:" .. bb .. "\n修改器包名:" .. bma .. os.date("当前时间为:\n%Y年%m月%d日%H时%M分%S秒"))
  if SN == 1 then
    HS1()
  end
  if SN == 2 then
    HS2()
  end
  if SN == 3 then
    HS3()
  end
  if SN == 4 then
    HS4()
  end
  if SN == 5 then
    HS5()
  end
  if SN == 6 then
    HS6()
  end
  if SN == 7 then
    HS7()
  end
  if SN == 8 then
    HS8()
  end
  if SN == 9 then
    HS9()
  end
  if SN == 10 then
    HS10()
  end
  if SN == 11 then
    HS11()
  end
  if SN == 12 then
    HS12()
  end
  if SN == 13 then
    HS13()
  end
  if SN == 14 then
    HS14()
  end
  if SN == 15 then
    HS15()
  end
  if SN == 16 then
    Exit()
  end
  FX1 = 0
end

function L3_711()
  print(dy)
  os.exit()
end

function L3_711()
  qmnb = {
    {memory = 32},
    {name = "3倍开锁"},
    {value = 1.5, type = 16},
    {
      lv = 1,
      offset = -4,
      type = 16
    },
    {
      lv = 2,
      offset = 4,
      type = 16
    },
    {
      lv = 2.5,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 3,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "3倍开锁[恢复]"
    },
    {value = 1.5, type = 16},
    {
      lv = 3,
      offset = -4,
      type = 16
    },
    {
      lv = 2,
      offset = 4,
      type = 16
    },
    {
      lv = 2.5,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {name = "秒开锁"},
    {value = 1.5, type = 16},
    {
      lv = 1,
      offset = -4,
      type = 16
    },
    {
      lv = 2,
      offset = 4,
      type = 16
    },
    {
      lv = 2.5,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 999,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "秒开锁[恢复]"
    },
    {value = 1.5, type = 16},
    {
      lv = 999,
      offset = -4,
      type = 16
    },
    {
      lv = 2,
      offset = 4,
      type = 16
    },
    {
      lv = 2.5,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {name = "3.8移速"},
    {value = 2.79999995232, type = 16},
    {
      lv = 20,
      offset = 4,
      type = 16
    },
    {
      lv = 900,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = 3.8,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "3.8移速[恢复]"
    },
    {value = 2.79999995232, type = 16},
    {
      lv = 20,
      offset = 4,
      type = 16
    },
    {
      lv = 900,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = 3.8,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "火箭筒十连发"
    },
    {value = 0.5, type = 16},
    {
      lv = 3,
      offset = -4,
      type = 16
    },
    {
      lv = 1,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 10,
      offset = -12,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "十连发恢复"
    },
    {value = 0.5, type = 16},
    {
      lv = 3,
      offset = -4,
      type = 16
    },
    {
      lv = 20,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -12,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "火箭筒二十连发"
    },
    {value = 0.5, type = 16},
    {
      lv = 3,
      offset = -4,
      type = 16
    },
    {
      lv = 1,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 20,
      offset = -12,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {
      name = "二十连发恢复"
    },
    {value = 0.5, type = 16},
    {
      lv = 3,
      offset = -4,
      type = 16
    },
    {
      lv = 20,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -12,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function L3_711()
  qmnb = {
    {memory = 32},
    {name = "锁血"},
    {value = 1.5, type = 16},
    {
      lv = 2,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 100,
      offset = -4,
      type = 16
    },
    {
      value = -1,
      offset = 4,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function L3_711(A0_855)
  local L2_856, L3_857, L4_858, L6_859, L7_860
  L2_856 = {}
  L3_857 = 1
  L4_858 = 0
  L6_859 = 1
  L7_860 = lines
  L7_860 = #L7_860
  for _FORV_7_ = 1, #L7_860 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_856, lines[_FORV_7_])
      L4_858 = L4_858 + 1
    else
      L4_858 = L4_858 + 1
    end
  end
end

function L3_711()
  local L0_861, L1_862, L2_863, L3_864, L4_865, L5_866, L6_867, L7_868, L8_869
end

function L4_712(A0_870)
  local L2_871, L3_872, L4_873, L6_874, L7_875
  L2_871 = {}
  L3_872 = 1
  L4_873 = 0
  L6_874 = 1
  L7_875 = lines
  L7_875 = #L7_875
  for _FORV_7_ = 1, #L7_875 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_871, lines[_FORV_7_])
      L4_873 = L4_873 + 1
    else
      L4_873 = L4_873 + 1
    end
  end
end

function L4_712()
  local L0_876, L1_877, L2_878, L3_879, L4_880, L5_881, L6_882, L7_883, L8_884
end

function L5_713(A0_885)
  local L2_886, L3_887, L4_888, L6_889, L7_890
  L2_886 = {}
  L3_887 = 1
  L4_888 = 0
  L6_889 = 1
  L7_890 = lines
  L7_890 = #L7_890
  for _FORV_7_ = 1, #L7_890 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_886, lines[_FORV_7_])
      L4_888 = L4_888 + 1
    else
      L4_888 = L4_888 + 1
    end
  end
end

function L5_713()
  local L0_891, L1_892, L2_893, L3_894, L4_895, L5_896, L6_897, L7_898, L8_899
end

function L6_714(A0_900)
  local L2_901, L3_902, L4_903, L6_904, L7_905
  L2_901 = {}
  L3_902 = 1
  L4_903 = 0
  L6_904 = 1
  L7_905 = lines
  L7_905 = #L7_905
  for _FORV_7_ = 1, #L7_905 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_901, lines[_FORV_7_])
      L4_903 = L4_903 + 1
    else
      L4_903 = L4_903 + 1
    end
  end
end

function L6_714()
  local L0_906, L1_907, L2_908, L3_909, L4_910, L5_911, L6_912, L7_913, L8_914
end

function L7_715(A0_915)
  local L2_916, L3_917, L4_918, L6_919, L7_920
  L2_916 = {}
  L3_917 = 1
  L4_918 = 0
  L6_919 = 1
  L7_920 = lines
  L7_920 = #L7_920
  for _FORV_7_ = 1, #L7_920 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_916, lines[_FORV_7_])
      L4_918 = L4_918 + 1
    else
      L4_918 = L4_918 + 1
    end
  end
end

function L7_715()
  local L0_921, L1_922, L2_923, L3_924, L4_925, L5_926, L6_927, L7_928, L8_929
end

function L8_716(A0_930)
  local L2_931, L3_932, L4_933, L6_934, L7_935
  L2_931 = {}
  L3_932 = 1
  L4_933 = 0
  L6_934 = 1
  L7_935 = lines
  L7_935 = #L7_935
  for _FORV_7_ = 1, #L7_935 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_931, lines[_FORV_7_])
      L4_933 = L4_933 + 1
    else
      L4_933 = L4_933 + 1
    end
  end
end

function L8_716()
  local L0_936, L1_937, L2_938, L3_939, L4_940, L5_941, L6_942, L7_943, L8_944
end

function L9_717(A0_945)
  local L2_946, L3_947, L4_948, L6_949, L7_950
  L2_946 = {}
  L3_947 = 1
  L4_948 = 0
  L6_949 = 1
  L7_950 = lines
  L7_950 = #L7_950
  for _FORV_7_ = 1, #L7_950 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_946, lines[_FORV_7_])
      L4_948 = L4_948 + 1
    else
      L4_948 = L4_948 + 1
    end
  end
end

function L9_717()
  local L0_951, L1_952, L2_953, L3_954, L4_955, L5_956, L6_957, L7_958, L8_959
end

function L10_718(A0_960)
  local L2_961, L3_962, L4_963, L6_964, L7_965
  L2_961 = {}
  L3_962 = 1
  L4_963 = 0
  L6_964 = 1
  L7_965 = lines
  L7_965 = #L7_965
  for _FORV_7_ = 1, #L7_965 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_961, lines[_FORV_7_])
      L4_963 = L4_963 + 1
    else
      L4_963 = L4_963 + 1
    end
  end
end

function L10_718()
  local L0_966, L1_967, L2_968, L3_969, L4_970, L5_971, L6_972, L7_973, L8_974
end

function L11_719(A0_975)
  local L2_976, L3_977, L4_978, L6_979, L7_980
  L2_976 = {}
  L3_977 = 1
  L4_978 = 0
  L6_979 = 1
  L7_980 = lines
  L7_980 = #L7_980
  for _FORV_7_ = 1, #L7_980 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_976, lines[_FORV_7_])
      L4_978 = L4_978 + 1
    else
      L4_978 = L4_978 + 1
    end
  end
end

function L11_719()
  local L0_981, L1_982, L2_983, L3_984, L4_985, L5_986, L6_987, L7_988, L8_989
end

function L12_720(A0_990)
  local L2_991, L3_992, L4_993, L6_994, L7_995
  L2_991 = {}
  L3_992 = 1
  L4_993 = 0
  L6_994 = 1
  L7_995 = lines
  L7_995 = #L7_995
  for _FORV_7_ = 1, #L7_995 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_991, lines[_FORV_7_])
      L4_993 = L4_993 + 1
    else
      L4_993 = L4_993 + 1
    end
  end
end

function L12_720()
  local L0_996, L1_997, L2_998, L3_999, L4_1000, L5_1001, L6_1002, L7_1003, L8_1004
end

function L13_721(A0_1005)
  local L2_1006, L3_1007, L4_1008, L6_1009, L7_1010
  L2_1006 = {}
  L3_1007 = 1
  L4_1008 = 0
  L6_1009 = 1
  L7_1010 = lines
  L7_1010 = #L7_1010
  for _FORV_7_ = 1, #L7_1010 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1006, lines[_FORV_7_])
      L4_1008 = L4_1008 + 1
    else
      L4_1008 = L4_1008 + 1
    end
  end
end

function L13_721()
  local L0_1011, L1_1012, L2_1013, L3_1014, L4_1015, L5_1016, L6_1017, L7_1018, L8_1019
end

function L14_722(A0_1020)
  local L2_1021, L3_1022, L4_1023, L6_1024, L7_1025
  L2_1021 = {}
  L3_1022 = 1
  L4_1023 = 0
  L6_1024 = 1
  L7_1025 = lines
  L7_1025 = #L7_1025
  for _FORV_7_ = 1, #L7_1025 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1021, lines[_FORV_7_])
      L4_1023 = L4_1023 + 1
    else
      L4_1023 = L4_1023 + 1
    end
  end
end

function L14_722()
  local L0_1026, L1_1027, L2_1028, L3_1029, L4_1030, L5_1031, L6_1032, L7_1033, L8_1034
end

function L15_723(A0_1035)
  local L2_1036, L3_1037, L4_1038, L6_1039, L7_1040
  L2_1036 = {}
  L3_1037 = 1
  L4_1038 = 0
  L6_1039 = 1
  L7_1040 = lines
  L7_1040 = #L7_1040
  for _FORV_7_ = 1, #L7_1040 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1036, lines[_FORV_7_])
      L4_1038 = L4_1038 + 1
    else
      L4_1038 = L4_1038 + 1
    end
  end
end

function L15_723()
  local L0_1041, L1_1042, L2_1043, L3_1044, L4_1045, L5_1046, L6_1047, L7_1048, L8_1049
end

function L16_724(A0_1050)
  local L2_1051, L3_1052, L4_1053, L6_1054, L7_1055
  L2_1051 = {}
  L3_1052 = 1
  L4_1053 = 0
  L6_1054 = 1
  L7_1055 = lines
  L7_1055 = #L7_1055
  for _FORV_7_ = 1, #L7_1055 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1051, lines[_FORV_7_])
      L4_1053 = L4_1053 + 1
    else
      L4_1053 = L4_1053 + 1
    end
  end
end

function L16_724()
  local L0_1056, L1_1057, L2_1058, L3_1059, L4_1060, L5_1061, L6_1062, L7_1063, L8_1064
end

function L17_725(A0_1065)
  local L2_1066, L3_1067, L4_1068, L6_1069, L7_1070
  L2_1066 = {}
  L3_1067 = 1
  L4_1068 = 0
  L6_1069 = 1
  L7_1070 = lines
  L7_1070 = #L7_1070
  for _FORV_7_ = 1, #L7_1070 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1066, lines[_FORV_7_])
      L4_1068 = L4_1068 + 1
    else
      L4_1068 = L4_1068 + 1
    end
  end
end

function L17_725()
  local L0_1071, L1_1072, L2_1073, L3_1074, L4_1075, L5_1076, L6_1077, L7_1078, L8_1079
end

function L18_726(A0_1080)
  local L2_1081, L3_1082, L4_1083, L6_1084, L7_1085
  L2_1081 = {}
  L3_1082 = 1
  L4_1083 = 0
  L6_1084 = 1
  L7_1085 = lines
  L7_1085 = #L7_1085
  for _FORV_7_ = 1, #L7_1085 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1081, lines[_FORV_7_])
      L4_1083 = L4_1083 + 1
    else
      L4_1083 = L4_1083 + 1
    end
  end
end

function L18_726()
  local L0_1086, L1_1087, L2_1088, L3_1089, L4_1090, L5_1091, L6_1092, L7_1093, L8_1094
end

function L19_727(A0_1095)
  local L2_1096, L3_1097, L4_1098, L6_1099, L7_1100
  L2_1096 = {}
  L3_1097 = 1
  L4_1098 = 0
  L6_1099 = 1
  L7_1100 = lines
  L7_1100 = #L7_1100
  for _FORV_7_ = 1, #L7_1100 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1096, lines[_FORV_7_])
      L4_1098 = L4_1098 + 1
    else
      L4_1098 = L4_1098 + 1
    end
  end
end

function L19_727()
  local L0_1101, L1_1102, L2_1103, L3_1104, L4_1105, L5_1106, L6_1107, L7_1108, L8_1109
end

function L20_728(A0_1110)
  local L2_1111, L3_1112, L4_1113, L6_1114, L7_1115
  L2_1111 = {}
  L3_1112 = 1
  L4_1113 = 0
  L6_1114 = 1
  L7_1115 = lines
  L7_1115 = #L7_1115
  for _FORV_7_ = 1, #L7_1115 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1111, lines[_FORV_7_])
      L4_1113 = L4_1113 + 1
    else
      L4_1113 = L4_1113 + 1
    end
  end
end

function L20_728()
  local L0_1116, L1_1117, L2_1118, L3_1119, L4_1120, L5_1121, L6_1122, L7_1123, L8_1124
end

function L21_729(A0_1125)
  local L2_1126, L3_1127, L4_1128, L6_1129, L7_1130
  L2_1126 = {}
  L3_1127 = 1
  L4_1128 = 0
  L6_1129 = 1
  L7_1130 = lines
  L7_1130 = #L7_1130
  for _FORV_7_ = 1, #L7_1130 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1126, lines[_FORV_7_])
      L4_1128 = L4_1128 + 1
    else
      L4_1128 = L4_1128 + 1
    end
  end
end

function L21_729()
  local L0_1131, L1_1132, L2_1133, L3_1134, L4_1135, L5_1136, L6_1137, L7_1138, L8_1139
end

function L22_730(A0_1140)
  local L2_1141, L3_1142, L4_1143, L6_1144, L7_1145
  L2_1141 = {}
  L3_1142 = 1
  L4_1143 = 0
  L6_1144 = 1
  L7_1145 = lines
  L7_1145 = #L7_1145
  for _FORV_7_ = 1, #L7_1145 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1141, lines[_FORV_7_])
      L4_1143 = L4_1143 + 1
    else
      L4_1143 = L4_1143 + 1
    end
  end
end

function L22_730()
  local L0_1146, L1_1147, L2_1148, L3_1149, L4_1150, L5_1151, L6_1152, L7_1153, L8_1154
end

function L23_731(A0_1155)
  local L2_1156, L3_1157, L4_1158, L6_1159, L7_1160
  L2_1156 = {}
  L3_1157 = 1
  L4_1158 = 0
  L6_1159 = 1
  L7_1160 = lines
  L7_1160 = #L7_1160
  for _FORV_7_ = 1, #L7_1160 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1156, lines[_FORV_7_])
      L4_1158 = L4_1158 + 1
    else
      L4_1158 = L4_1158 + 1
    end
  end
end

function L23_731()
  local L0_1161, L1_1162, L2_1163, L3_1164, L4_1165, L5_1166, L6_1167, L7_1168, L8_1169
end

function L24_732(A0_1170)
  local L2_1171, L3_1172, L4_1173, L6_1174, L7_1175
  L2_1171 = {}
  L3_1172 = 1
  L4_1173 = 0
  L6_1174 = 1
  L7_1175 = lines
  L7_1175 = #L7_1175
  for _FORV_7_ = 1, #L7_1175 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1171, lines[_FORV_7_])
      L4_1173 = L4_1173 + 1
    else
      L4_1173 = L4_1173 + 1
    end
  end
end

function L24_732()
  local L0_1176, L1_1177, L2_1178, L3_1179, L4_1180, L5_1181, L6_1182, L7_1183, L8_1184
end

function L25_733(A0_1185)
  local L2_1186, L3_1187, L4_1188, L6_1189, L7_1190
  L2_1186 = {}
  L3_1187 = 1
  L4_1188 = 0
  L6_1189 = 1
  L7_1190 = lines
  L7_1190 = #L7_1190
  for _FORV_7_ = 1, #L7_1190 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1186, lines[_FORV_7_])
      L4_1188 = L4_1188 + 1
    else
      L4_1188 = L4_1188 + 1
    end
  end
end

function L25_733()
  local L0_1191, L1_1192, L2_1193, L3_1194, L4_1195, L5_1196, L6_1197, L7_1198, L8_1199
end

function L26_734(A0_1200)
  local L2_1201, L3_1202, L4_1203, L6_1204, L7_1205
  L2_1201 = {}
  L3_1202 = 1
  L4_1203 = 0
  L6_1204 = 1
  L7_1205 = lines
  L7_1205 = #L7_1205
  for _FORV_7_ = 1, #L7_1205 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1201, lines[_FORV_7_])
      L4_1203 = L4_1203 + 1
    else
      L4_1203 = L4_1203 + 1
    end
  end
end

function L26_734()
  local L0_1206, L1_1207, L2_1208, L3_1209, L4_1210, L5_1211, L6_1212, L7_1213, L8_1214
end

function L27_735(A0_1215)
  local L2_1216, L3_1217, L4_1218, L6_1219, L7_1220
  L2_1216 = {}
  L3_1217 = 1
  L4_1218 = 0
  L6_1219 = 1
  L7_1220 = lines
  L7_1220 = #L7_1220
  for _FORV_7_ = 1, #L7_1220 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1216, lines[_FORV_7_])
      L4_1218 = L4_1218 + 1
    else
      L4_1218 = L4_1218 + 1
    end
  end
end

function L27_735()
  local L0_1221, L1_1222, L2_1223, L3_1224, L4_1225, L5_1226, L6_1227, L7_1228, L8_1229
end

function L28_736(A0_1230)
  local L2_1231, L3_1232, L4_1233, L6_1234, L7_1235
  L2_1231 = {}
  L3_1232 = 1
  L4_1233 = 0
  L6_1234 = 1
  L7_1235 = lines
  L7_1235 = #L7_1235
  for _FORV_7_ = 1, #L7_1235 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1231, lines[_FORV_7_])
      L4_1233 = L4_1233 + 1
    else
      L4_1233 = L4_1233 + 1
    end
  end
end

function L28_736()
  local L0_1236, L1_1237, L2_1238, L3_1239, L4_1240, L5_1241, L6_1242, L7_1243, L8_1244
end

function L29_737(A0_1245)
  local L2_1246, L3_1247, L4_1248, L6_1249, L7_1250
  L2_1246 = {}
  L3_1247 = 1
  L4_1248 = 0
  L6_1249 = 1
  L7_1250 = lines
  L7_1250 = #L7_1250
  for _FORV_7_ = 1, #L7_1250 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1246, lines[_FORV_7_])
      L4_1248 = L4_1248 + 1
    else
      L4_1248 = L4_1248 + 1
    end
  end
end

function L29_737()
  local L0_1251, L1_1252, L2_1253, L3_1254, L4_1255, L5_1256, L6_1257, L7_1258, L8_1259
end

function L30_738(A0_1260)
  local L2_1261, L3_1262, L4_1263, L6_1264, L7_1265
  L2_1261 = {}
  L3_1262 = 1
  L4_1263 = 0
  L6_1264 = 1
  L7_1265 = lines
  L7_1265 = #L7_1265
  for _FORV_7_ = 1, #L7_1265 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1261, lines[_FORV_7_])
      L4_1263 = L4_1263 + 1
    else
      L4_1263 = L4_1263 + 1
    end
  end
end

function L30_738()
  local L0_1266, L1_1267, L2_1268, L3_1269, L4_1270, L5_1271, L6_1272, L7_1273, L8_1274
end

function L31_739(A0_1275)
  local L2_1276, L3_1277, L4_1278, L6_1279, L7_1280
  L2_1276 = {}
  L3_1277 = 1
  L4_1278 = 0
  L6_1279 = 1
  L7_1280 = lines
  L7_1280 = #L7_1280
  for _FORV_7_ = 1, #L7_1280 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1276, lines[_FORV_7_])
      L4_1278 = L4_1278 + 1
    else
      L4_1278 = L4_1278 + 1
    end
  end
end

function L31_739()
  local L0_1281, L1_1282, L2_1283, L3_1284, L4_1285, L5_1286, L6_1287, L7_1288, L8_1289
end

function L32_740(A0_1290)
  local L2_1291, L3_1292, L4_1293, L6_1294, L7_1295
  L2_1291 = {}
  L3_1292 = 1
  L4_1293 = 0
  L6_1294 = 1
  L7_1295 = lines
  L7_1295 = #L7_1295
  for _FORV_7_ = 1, #L7_1295 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1291, lines[_FORV_7_])
      L4_1293 = L4_1293 + 1
    else
      L4_1293 = L4_1293 + 1
    end
  end
end

function L32_740()
  local L0_1296, L1_1297, L2_1298, L3_1299, L4_1300, L5_1301, L6_1302, L7_1303, L8_1304
end

function L33_741(A0_1305)
  local L2_1306, L3_1307, L4_1308, L6_1309, L7_1310
  L2_1306 = {}
  L3_1307 = 1
  L4_1308 = 0
  L6_1309 = 1
  L7_1310 = lines
  L7_1310 = #L7_1310
  for _FORV_7_ = 1, #L7_1310 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1306, lines[_FORV_7_])
      L4_1308 = L4_1308 + 1
    else
      L4_1308 = L4_1308 + 1
    end
  end
end

function L33_741()
  local L0_1311, L1_1312, L2_1313, L3_1314, L4_1315, L5_1316, L6_1317, L7_1318, L8_1319
end

function L34_742(A0_1320)
  local L2_1321, L3_1322, L4_1323, L6_1324, L7_1325
  L2_1321 = {}
  L3_1322 = 1
  L4_1323 = 0
  L6_1324 = 1
  L7_1325 = lines
  L7_1325 = #L7_1325
  for _FORV_7_ = 1, #L7_1325 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1321, lines[_FORV_7_])
      L4_1323 = L4_1323 + 1
    else
      L4_1323 = L4_1323 + 1
    end
  end
end

function L34_742()
  local L0_1326, L1_1327, L2_1328, L3_1329, L4_1330, L5_1331, L6_1332, L7_1333, L8_1334
end

function L35_743(A0_1335)
  local L2_1336, L3_1337, L4_1338, L6_1339, L7_1340
  L2_1336 = {}
  L3_1337 = 1
  L4_1338 = 0
  L6_1339 = 1
  L7_1340 = lines
  L7_1340 = #L7_1340
  for _FORV_7_ = 1, #L7_1340 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1336, lines[_FORV_7_])
      L4_1338 = L4_1338 + 1
    else
      L4_1338 = L4_1338 + 1
    end
  end
end

function L35_743()
  local L0_1341, L1_1342, L2_1343, L3_1344, L4_1345, L5_1346, L6_1347, L7_1348, L8_1349
end

function L36_744(A0_1350)
  local L2_1351, L3_1352, L4_1353, L6_1354, L7_1355
  L2_1351 = {}
  L3_1352 = 1
  L4_1353 = 0
  L6_1354 = 1
  L7_1355 = lines
  L7_1355 = #L7_1355
  for _FORV_7_ = 1, #L7_1355 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1351, lines[_FORV_7_])
      L4_1353 = L4_1353 + 1
    else
      L4_1353 = L4_1353 + 1
    end
  end
end

function L36_744()
  local L0_1356, L1_1357, L2_1358, L3_1359, L4_1360, L5_1361, L6_1362, L7_1363, L8_1364
end

function L37_745(A0_1365)
  local L2_1366, L3_1367, L4_1368, L6_1369, L7_1370
  L2_1366 = {}
  L3_1367 = 1
  L4_1368 = 0
  L6_1369 = 1
  L7_1370 = lines
  L7_1370 = #L7_1370
  for _FORV_7_ = 1, #L7_1370 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1366, lines[_FORV_7_])
      L4_1368 = L4_1368 + 1
    else
      L4_1368 = L4_1368 + 1
    end
  end
end

function L37_745()
  local L0_1371, L1_1372, L2_1373, L3_1374, L4_1375, L5_1376, L6_1377, L7_1378, L8_1379
end

function L38_746(A0_1380)
  local L2_1381, L3_1382, L4_1383, L6_1384, L7_1385
  L2_1381 = {}
  L3_1382 = 1
  L4_1383 = 0
  L6_1384 = 1
  L7_1385 = lines
  L7_1385 = #L7_1385
  for _FORV_7_ = 1, #L7_1385 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1381, lines[_FORV_7_])
      L4_1383 = L4_1383 + 1
    else
      L4_1383 = L4_1383 + 1
    end
  end
end

function L38_746()
  local L0_1386, L1_1387, L2_1388, L3_1389, L4_1390, L5_1391, L6_1392, L7_1393, L8_1394
end

function L39_747(A0_1395)
  local L2_1396, L3_1397, L4_1398, L6_1399, L7_1400
  L2_1396 = {}
  L3_1397 = 1
  L4_1398 = 0
  L6_1399 = 1
  L7_1400 = lines
  L7_1400 = #L7_1400
  for _FORV_7_ = 1, #L7_1400 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1396, lines[_FORV_7_])
      L4_1398 = L4_1398 + 1
    else
      L4_1398 = L4_1398 + 1
    end
  end
end

function L39_747()
  local L0_1401, L1_1402, L2_1403, L3_1404, L4_1405, L5_1406, L6_1407, L7_1408, L8_1409
end

function L40_748(A0_1410)
  local L2_1411, L3_1412, L4_1413, L6_1414, L7_1415
  L2_1411 = {}
  L3_1412 = 1
  L4_1413 = 0
  L6_1414 = 1
  L7_1415 = lines
  L7_1415 = #L7_1415
  for _FORV_7_ = 1, #L7_1415 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1411, lines[_FORV_7_])
      L4_1413 = L4_1413 + 1
    else
      L4_1413 = L4_1413 + 1
    end
  end
end

function L40_748()
  local L0_1416, L1_1417, L2_1418, L3_1419, L4_1420, L5_1421, L6_1422, L7_1423, L8_1424
end

function L41_749(A0_1425)
  local L2_1426, L3_1427, L4_1428, L6_1429, L7_1430
  L2_1426 = {}
  L3_1427 = 1
  L4_1428 = 0
  L6_1429 = 1
  L7_1430 = lines
  L7_1430 = #L7_1430
  for _FORV_7_ = 1, #L7_1430 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1426, lines[_FORV_7_])
      L4_1428 = L4_1428 + 1
    else
      L4_1428 = L4_1428 + 1
    end
  end
end

function L41_749()
  local L0_1431, L1_1432, L2_1433, L3_1434, L4_1435, L5_1436, L6_1437, L7_1438, L8_1439
end

function L42_750(A0_1440)
  local L2_1441, L3_1442, L4_1443, L6_1444, L7_1445
  L2_1441 = {}
  L3_1442 = 1
  L4_1443 = 0
  L6_1444 = 1
  L7_1445 = lines
  L7_1445 = #L7_1445
  for _FORV_7_ = 1, #L7_1445 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1441, lines[_FORV_7_])
      L4_1443 = L4_1443 + 1
    else
      L4_1443 = L4_1443 + 1
    end
  end
end

function L42_750()
  local L0_1446, L1_1447, L2_1448, L3_1449, L4_1450, L5_1451, L6_1452, L7_1453, L8_1454
end

function L43_751(A0_1455)
  local L2_1456, L3_1457, L4_1458, L6_1459, L7_1460
  L2_1456 = {}
  L3_1457 = 1
  L4_1458 = 0
  L6_1459 = 1
  L7_1460 = lines
  L7_1460 = #L7_1460
  for _FORV_7_ = 1, #L7_1460 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1456, lines[_FORV_7_])
      L4_1458 = L4_1458 + 1
    else
      L4_1458 = L4_1458 + 1
    end
  end
end

function L43_751()
  local L0_1461, L1_1462, L2_1463, L3_1464, L4_1465, L5_1466, L6_1467, L7_1468, L8_1469
end

function L44_752(A0_1470)
  local L2_1471, L3_1472, L4_1473, L6_1474, L7_1475
  L2_1471 = {}
  L3_1472 = 1
  L4_1473 = 0
  L6_1474 = 1
  L7_1475 = lines
  L7_1475 = #L7_1475
  for _FORV_7_ = 1, #L7_1475 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1471, lines[_FORV_7_])
      L4_1473 = L4_1473 + 1
    else
      L4_1473 = L4_1473 + 1
    end
  end
end

function L44_752()
  local L0_1476, L1_1477, L2_1478, L3_1479, L4_1480, L5_1481, L6_1482, L7_1483, L8_1484
end

function L45_753(A0_1485)
  local L2_1486, L3_1487, L4_1488, L6_1489, L7_1490
  L2_1486 = {}
  L3_1487 = 1
  L4_1488 = 0
  L6_1489 = 1
  L7_1490 = lines
  L7_1490 = #L7_1490
  for _FORV_7_ = 1, #L7_1490 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1486, lines[_FORV_7_])
      L4_1488 = L4_1488 + 1
    else
      L4_1488 = L4_1488 + 1
    end
  end
end

function L45_753()
  local L0_1491, L1_1492, L2_1493, L3_1494, L4_1495, L5_1496, L6_1497, L7_1498, L8_1499
end

function L46_754(A0_1500)
  local L2_1501, L3_1502, L4_1503, L6_1504, L7_1505
  L2_1501 = {}
  L3_1502 = 1
  L4_1503 = 0
  L6_1504 = 1
  L7_1505 = lines
  L7_1505 = #L7_1505
  for _FORV_7_ = 1, #L7_1505 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1501, lines[_FORV_7_])
      L4_1503 = L4_1503 + 1
    else
      L4_1503 = L4_1503 + 1
    end
  end
end

function L46_754()
  local L0_1506, L1_1507, L2_1508, L3_1509, L4_1510, L5_1511, L6_1512, L7_1513, L8_1514
end

function L47_755(A0_1515)
  local L2_1516, L3_1517, L4_1518, L6_1519, L7_1520
  L2_1516 = {}
  L3_1517 = 1
  L4_1518 = 0
  L6_1519 = 1
  L7_1520 = lines
  L7_1520 = #L7_1520
  for _FORV_7_ = 1, #L7_1520 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1516, lines[_FORV_7_])
      L4_1518 = L4_1518 + 1
    else
      L4_1518 = L4_1518 + 1
    end
  end
end

function L47_755()
  local L0_1521, L1_1522, L2_1523, L3_1524, L4_1525, L5_1526, L6_1527, L7_1528, L8_1529
end

function L48_756(A0_1530)
  local L2_1531, L3_1532, L4_1533, L6_1534, L7_1535
  L2_1531 = {}
  L3_1532 = 1
  L4_1533 = 0
  L6_1534 = 1
  L7_1535 = lines
  L7_1535 = #L7_1535
  for _FORV_7_ = 1, #L7_1535 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1531, lines[_FORV_7_])
      L4_1533 = L4_1533 + 1
    else
      L4_1533 = L4_1533 + 1
    end
  end
end

function L48_756()
  local L0_1536, L1_1537, L2_1538, L3_1539, L4_1540, L5_1541, L6_1542, L7_1543, L8_1544
end

function L49_757(A0_1545)
  local L2_1546, L3_1547, L4_1548, L6_1549, L7_1550
  L2_1546 = {}
  L3_1547 = 1
  L4_1548 = 0
  L6_1549 = 1
  L7_1550 = lines
  L7_1550 = #L7_1550
  for _FORV_7_ = 1, #L7_1550 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1546, lines[_FORV_7_])
      L4_1548 = L4_1548 + 1
    else
      L4_1548 = L4_1548 + 1
    end
  end
end

function L49_757()
  local L0_1551, L1_1552, L2_1553, L3_1554, L4_1555, L5_1556, L6_1557, L7_1558, L8_1559
end

function L50_758(A0_1560)
  local L2_1561, L3_1562, L4_1563, L6_1564, L7_1565
  L2_1561 = {}
  L3_1562 = 1
  L4_1563 = 0
  L6_1564 = 1
  L7_1565 = lines
  L7_1565 = #L7_1565
  for _FORV_7_ = 1, #L7_1565 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1561, lines[_FORV_7_])
      L4_1563 = L4_1563 + 1
    else
      L4_1563 = L4_1563 + 1
    end
  end
end

function L50_758()
  local L0_1566, L1_1567, L2_1568, L3_1569, L4_1570, L5_1571, L6_1572, L7_1573, L8_1574
end

function L51_759(A0_1575)
  local L2_1576, L3_1577, L4_1578, L6_1579, L7_1580
  L2_1576 = {}
  L3_1577 = 1
  L4_1578 = 0
  L6_1579 = 1
  L7_1580 = lines
  L7_1580 = #L7_1580
  for _FORV_7_ = 1, #L7_1580 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1576, lines[_FORV_7_])
      L4_1578 = L4_1578 + 1
    else
      L4_1578 = L4_1578 + 1
    end
  end
end

function L51_759()
  local L0_1581, L1_1582, L2_1583, L3_1584, L4_1585, L5_1586, L6_1587, L7_1588, L8_1589
end

function L52_760(A0_1590)
  local L2_1591, L3_1592, L4_1593, L6_1594, L7_1595
  L2_1591 = {}
  L3_1592 = 1
  L4_1593 = 0
  L6_1594 = 1
  L7_1595 = lines
  L7_1595 = #L7_1595
  for _FORV_7_ = 1, #L7_1595 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1591, lines[_FORV_7_])
      L4_1593 = L4_1593 + 1
    else
      L4_1593 = L4_1593 + 1
    end
  end
end

function L52_760()
  local L0_1596, L1_1597, L2_1598, L3_1599, L4_1600, L5_1601, L6_1602, L7_1603, L8_1604
end

function L53_761(A0_1605)
  local L2_1606, L3_1607, L4_1608, L6_1609, L7_1610
  L2_1606 = {}
  L3_1607 = 1
  L4_1608 = 0
  L6_1609 = 1
  L7_1610 = lines
  L7_1610 = #L7_1610
  for _FORV_7_ = 1, #L7_1610 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1606, lines[_FORV_7_])
      L4_1608 = L4_1608 + 1
    else
      L4_1608 = L4_1608 + 1
    end
  end
end

function L53_761()
  local L0_1611, L1_1612, L2_1613, L3_1614, L4_1615, L5_1616, L6_1617, L7_1618, L8_1619
end

function L54_762(A0_1620)
  local L2_1621, L3_1622, L4_1623, L6_1624, L7_1625
  L2_1621 = {}
  L3_1622 = 1
  L4_1623 = 0
  L6_1624 = 1
  L7_1625 = lines
  L7_1625 = #L7_1625
  for _FORV_7_ = 1, #L7_1625 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1621, lines[_FORV_7_])
      L4_1623 = L4_1623 + 1
    else
      L4_1623 = L4_1623 + 1
    end
  end
end

function L54_762()
  local L0_1626, L1_1627, L2_1628, L3_1629, L4_1630, L5_1631, L6_1632, L7_1633, L8_1634
end

function L55_763(A0_1635)
  local L2_1636, L3_1637, L4_1638, L6_1639, L7_1640
  L2_1636 = {}
  L3_1637 = 1
  L4_1638 = 0
  L6_1639 = 1
  L7_1640 = lines
  L7_1640 = #L7_1640
  for _FORV_7_ = 1, #L7_1640 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1636, lines[_FORV_7_])
      L4_1638 = L4_1638 + 1
    else
      L4_1638 = L4_1638 + 1
    end
  end
end

function L55_763()
  local L0_1641, L1_1642, L2_1643, L3_1644, L4_1645, L5_1646, L6_1647, L7_1648, L8_1649
end

function L56_764(A0_1650)
  local L2_1651, L3_1652, L4_1653, L6_1654, L7_1655
  L2_1651 = {}
  L3_1652 = 1
  L4_1653 = 0
  L6_1654 = 1
  L7_1655 = lines
  L7_1655 = #L7_1655
  for _FORV_7_ = 1, #L7_1655 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1651, lines[_FORV_7_])
      L4_1653 = L4_1653 + 1
    else
      L4_1653 = L4_1653 + 1
    end
  end
end

function L56_764()
  local L0_1656, L1_1657, L2_1658, L3_1659, L4_1660, L5_1661, L6_1662, L7_1663, L8_1664
end

function L57_765(A0_1665)
  local L2_1666, L3_1667, L4_1668, L6_1669, L7_1670
  L2_1666 = {}
  L3_1667 = 1
  L4_1668 = 0
  L6_1669 = 1
  L7_1670 = lines
  L7_1670 = #L7_1670
  for _FORV_7_ = 1, #L7_1670 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1666, lines[_FORV_7_])
      L4_1668 = L4_1668 + 1
    else
      L4_1668 = L4_1668 + 1
    end
  end
end

function L57_765()
  local L0_1671, L1_1672, L2_1673, L3_1674, L4_1675, L5_1676, L6_1677, L7_1678, L8_1679
end

function L58_766(A0_1680)
  local L2_1681, L3_1682, L4_1683, L6_1684, L7_1685
  L2_1681 = {}
  L3_1682 = 1
  L4_1683 = 0
  L6_1684 = 1
  L7_1685 = lines
  L7_1685 = #L7_1685
  for _FORV_7_ = 1, #L7_1685 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1681, lines[_FORV_7_])
      L4_1683 = L4_1683 + 1
    else
      L4_1683 = L4_1683 + 1
    end
  end
end

function L58_766()
  local L0_1686, L1_1687, L2_1688, L3_1689, L4_1690, L5_1691, L6_1692, L7_1693, L8_1694
end

function L59_767(A0_1695)
  local L2_1696, L3_1697, L4_1698, L6_1699, L7_1700
  L2_1696 = {}
  L3_1697 = 1
  L4_1698 = 0
  L6_1699 = 1
  L7_1700 = lines
  L7_1700 = #L7_1700
  for _FORV_7_ = 1, #L7_1700 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1696, lines[_FORV_7_])
      L4_1698 = L4_1698 + 1
    else
      L4_1698 = L4_1698 + 1
    end
  end
end

function L59_767()
  local L0_1701, L1_1702, L2_1703, L3_1704, L4_1705, L5_1706, L6_1707, L7_1708, L8_1709
end

function L60_768(A0_1710)
  local L2_1711, L3_1712, L4_1713, L6_1714, L7_1715
  L2_1711 = {}
  L3_1712 = 1
  L4_1713 = 0
  L6_1714 = 1
  L7_1715 = lines
  L7_1715 = #L7_1715
  for _FORV_7_ = 1, #L7_1715 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1711, lines[_FORV_7_])
      L4_1713 = L4_1713 + 1
    else
      L4_1713 = L4_1713 + 1
    end
  end
end

function L60_768()
  local L0_1716, L1_1717, L2_1718, L3_1719, L4_1720, L5_1721, L6_1722, L7_1723, L8_1724
end

function L61_769(A0_1725)
  local L2_1726, L3_1727, L4_1728, L6_1729, L7_1730
  L2_1726 = {}
  L3_1727 = 1
  L4_1728 = 0
  L6_1729 = 1
  L7_1730 = lines
  L7_1730 = #L7_1730
  for _FORV_7_ = 1, #L7_1730 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1726, lines[_FORV_7_])
      L4_1728 = L4_1728 + 1
    else
      L4_1728 = L4_1728 + 1
    end
  end
end

function L61_769()
  local L0_1731, L1_1732, L2_1733, L3_1734, L4_1735, L5_1736, L6_1737, L7_1738, L8_1739
end

function L62_770(A0_1740)
  local L2_1741, L3_1742, L4_1743, L6_1744, L7_1745
  L2_1741 = {}
  L3_1742 = 1
  L4_1743 = 0
  L6_1744 = 1
  L7_1745 = lines
  L7_1745 = #L7_1745
  for _FORV_7_ = 1, #L7_1745 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1741, lines[_FORV_7_])
      L4_1743 = L4_1743 + 1
    else
      L4_1743 = L4_1743 + 1
    end
  end
end

function L62_770()
  local L0_1746, L1_1747, L2_1748, L3_1749, L4_1750, L5_1751, L6_1752, L7_1753, L8_1754
end

function L63_771(A0_1755)
  local L2_1756, L3_1757, L4_1758, L6_1759, L7_1760
  L2_1756 = {}
  L3_1757 = 1
  L4_1758 = 0
  L6_1759 = 1
  L7_1760 = lines
  L7_1760 = #L7_1760
  for _FORV_7_ = 1, #L7_1760 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1756, lines[_FORV_7_])
      L4_1758 = L4_1758 + 1
    else
      L4_1758 = L4_1758 + 1
    end
  end
end

function L63_771()
  local L0_1761, L1_1762, L2_1763, L3_1764, L4_1765, L5_1766, L6_1767, L7_1768, L8_1769
end

function L64_772(A0_1770)
  local L2_1771, L3_1772, L4_1773, L6_1774, L7_1775
  L2_1771 = {}
  L3_1772 = 1
  L4_1773 = 0
  L6_1774 = 1
  L7_1775 = lines
  L7_1775 = #L7_1775
  for _FORV_7_ = 1, #L7_1775 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1771, lines[_FORV_7_])
      L4_1773 = L4_1773 + 1
    else
      L4_1773 = L4_1773 + 1
    end
  end
end

function L64_772()
  local L0_1776, L1_1777, L2_1778, L3_1779, L4_1780, L5_1781, L6_1782, L7_1783, L8_1784
end

function L65_773(A0_1785)
  local L2_1786, L3_1787, L4_1788, L6_1789, L7_1790
  L2_1786 = {}
  L3_1787 = 1
  L4_1788 = 0
  L6_1789 = 1
  L7_1790 = lines
  L7_1790 = #L7_1790
  for _FORV_7_ = 1, #L7_1790 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1786, lines[_FORV_7_])
      L4_1788 = L4_1788 + 1
    else
      L4_1788 = L4_1788 + 1
    end
  end
end

function L65_773()
  local L0_1791, L1_1792, L2_1793, L3_1794, L4_1795, L5_1796, L6_1797, L7_1798, L8_1799
end

function L66_774(A0_1800)
  local L2_1801, L3_1802, L4_1803, L6_1804, L7_1805
  L2_1801 = {}
  L3_1802 = 1
  L4_1803 = 0
  L6_1804 = 1
  L7_1805 = lines
  L7_1805 = #L7_1805
  for _FORV_7_ = 1, #L7_1805 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1801, lines[_FORV_7_])
      L4_1803 = L4_1803 + 1
    else
      L4_1803 = L4_1803 + 1
    end
  end
end

function L66_774()
  local L0_1806, L1_1807, L2_1808, L3_1809, L4_1810, L5_1811, L6_1812, L7_1813, L8_1814
end

function L67_775(A0_1815)
  local L2_1816, L3_1817, L4_1818, L6_1819, L7_1820
  L2_1816 = {}
  L3_1817 = 1
  L4_1818 = 0
  L6_1819 = 1
  L7_1820 = lines
  L7_1820 = #L7_1820
  for _FORV_7_ = 1, #L7_1820 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1816, lines[_FORV_7_])
      L4_1818 = L4_1818 + 1
    else
      L4_1818 = L4_1818 + 1
    end
  end
end

function L67_775()
  local L0_1821, L1_1822, L2_1823, L3_1824, L4_1825, L5_1826, L6_1827, L7_1828, L8_1829
end

function L68_776(A0_1830)
  local L2_1831, L3_1832, L4_1833, L6_1834, L7_1835
  L2_1831 = {}
  L3_1832 = 1
  L4_1833 = 0
  L6_1834 = 1
  L7_1835 = lines
  L7_1835 = #L7_1835
  for _FORV_7_ = 1, #L7_1835 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1831, lines[_FORV_7_])
      L4_1833 = L4_1833 + 1
    else
      L4_1833 = L4_1833 + 1
    end
  end
end

function L68_776()
  local L0_1836, L1_1837, L2_1838, L3_1839, L4_1840, L5_1841, L6_1842, L7_1843, L8_1844
end

function L69_777(A0_1845)
  local L2_1846, L3_1847, L4_1848, L6_1849, L7_1850
  L2_1846 = {}
  L3_1847 = 1
  L4_1848 = 0
  L6_1849 = 1
  L7_1850 = lines
  L7_1850 = #L7_1850
  for _FORV_7_ = 1, #L7_1850 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1846, lines[_FORV_7_])
      L4_1848 = L4_1848 + 1
    else
      L4_1848 = L4_1848 + 1
    end
  end
end

function L69_777()
  local L0_1851, L1_1852, L2_1853, L3_1854, L4_1855, L5_1856, L6_1857, L7_1858, L8_1859
end

function L70_778(A0_1860)
  local L2_1861, L3_1862, L4_1863, L6_1864, L7_1865
  L2_1861 = {}
  L3_1862 = 1
  L4_1863 = 0
  L6_1864 = 1
  L7_1865 = lines
  L7_1865 = #L7_1865
  for _FORV_7_ = 1, #L7_1865 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1861, lines[_FORV_7_])
      L4_1863 = L4_1863 + 1
    else
      L4_1863 = L4_1863 + 1
    end
  end
end

function L70_778()
  local L0_1866, L1_1867, L2_1868, L3_1869, L4_1870, L5_1871, L6_1872, L7_1873, L8_1874
end

function L71_779(A0_1875)
  local L2_1876, L3_1877, L4_1878, L6_1879, L7_1880
  L2_1876 = {}
  L3_1877 = 1
  L4_1878 = 0
  L6_1879 = 1
  L7_1880 = lines
  L7_1880 = #L7_1880
  for _FORV_7_ = 1, #L7_1880 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1876, lines[_FORV_7_])
      L4_1878 = L4_1878 + 1
    else
      L4_1878 = L4_1878 + 1
    end
  end
end

function L71_779()
  local L0_1881, L1_1882, L2_1883, L3_1884, L4_1885, L5_1886, L6_1887, L7_1888, L8_1889
end

function L72_780(A0_1890)
  local L2_1891, L3_1892, L4_1893, L6_1894, L7_1895
  L2_1891 = {}
  L3_1892 = 1
  L4_1893 = 0
  L6_1894 = 1
  L7_1895 = lines
  L7_1895 = #L7_1895
  for _FORV_7_ = 1, #L7_1895 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1891, lines[_FORV_7_])
      L4_1893 = L4_1893 + 1
    else
      L4_1893 = L4_1893 + 1
    end
  end
end

function L72_780()
  local L0_1896, L1_1897, L2_1898, L3_1899, L4_1900, L5_1901, L6_1902, L7_1903, L8_1904
end

function L73_781(A0_1905)
  local L2_1906, L3_1907, L4_1908, L6_1909, L7_1910
  L2_1906 = {}
  L3_1907 = 1
  L4_1908 = 0
  L6_1909 = 1
  L7_1910 = lines
  L7_1910 = #L7_1910
  for _FORV_7_ = 1, #L7_1910 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1906, lines[_FORV_7_])
      L4_1908 = L4_1908 + 1
    else
      L4_1908 = L4_1908 + 1
    end
  end
end

function L73_781()
  local L0_1911, L1_1912, L2_1913, L3_1914, L4_1915, L5_1916, L6_1917, L7_1918, L8_1919
end

function L74_782(A0_1920)
  local L2_1921, L3_1922, L4_1923, L6_1924, L7_1925
  L2_1921 = {}
  L3_1922 = 1
  L4_1923 = 0
  L6_1924 = 1
  L7_1925 = lines
  L7_1925 = #L7_1925
  for _FORV_7_ = 1, #L7_1925 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1921, lines[_FORV_7_])
      L4_1923 = L4_1923 + 1
    else
      L4_1923 = L4_1923 + 1
    end
  end
end

function L74_782()
  local L0_1926, L1_1927, L2_1928, L3_1929, L4_1930, L5_1931, L6_1932, L7_1933, L8_1934
end

function L75_783(A0_1935)
  local L2_1936, L3_1937, L4_1938, L6_1939, L7_1940
  L2_1936 = {}
  L3_1937 = 1
  L4_1938 = 0
  L6_1939 = 1
  L7_1940 = lines
  L7_1940 = #L7_1940
  for _FORV_7_ = 1, #L7_1940 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1936, lines[_FORV_7_])
      L4_1938 = L4_1938 + 1
    else
      L4_1938 = L4_1938 + 1
    end
  end
end

function L75_783()
  local L0_1941, L1_1942, L2_1943, L3_1944, L4_1945, L5_1946, L6_1947, L7_1948, L8_1949
end

function L76_784(A0_1950)
  local L2_1951, L3_1952, L4_1953, L6_1954, L7_1955
  L2_1951 = {}
  L3_1952 = 1
  L4_1953 = 0
  L6_1954 = 1
  L7_1955 = lines
  L7_1955 = #L7_1955
  for _FORV_7_ = 1, #L7_1955 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1951, lines[_FORV_7_])
      L4_1953 = L4_1953 + 1
    else
      L4_1953 = L4_1953 + 1
    end
  end
end

function L76_784()
  local L0_1956, L1_1957, L2_1958, L3_1959, L4_1960, L5_1961, L6_1962, L7_1963, L8_1964
end

function L77_785(A0_1965)
  local L2_1966, L3_1967, L4_1968, L6_1969, L7_1970
  L2_1966 = {}
  L3_1967 = 1
  L4_1968 = 0
  L6_1969 = 1
  L7_1970 = lines
  L7_1970 = #L7_1970
  for _FORV_7_ = 1, #L7_1970 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1966, lines[_FORV_7_])
      L4_1968 = L4_1968 + 1
    else
      L4_1968 = L4_1968 + 1
    end
  end
end

function L77_785()
  local L0_1971, L1_1972, L2_1973, L3_1974, L4_1975, L5_1976, L6_1977, L7_1978, L8_1979
end

function L78_786(A0_1980)
  local L2_1981, L3_1982, L4_1983, L6_1984, L7_1985
  L2_1981 = {}
  L3_1982 = 1
  L4_1983 = 0
  L6_1984 = 1
  L7_1985 = lines
  L7_1985 = #L7_1985
  for _FORV_7_ = 1, #L7_1985 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1981, lines[_FORV_7_])
      L4_1983 = L4_1983 + 1
    else
      L4_1983 = L4_1983 + 1
    end
  end
end

function L78_786()
  local L0_1986, L1_1987, L2_1988, L3_1989, L4_1990, L5_1991, L6_1992, L7_1993, L8_1994
end

function L79_787(A0_1995)
  local L2_1996, L3_1997, L4_1998, L6_1999, L7_2000
  L2_1996 = {}
  L3_1997 = 1
  L4_1998 = 0
  L6_1999 = 1
  L7_2000 = lines
  L7_2000 = #L7_2000
  for _FORV_7_ = 1, #L7_2000 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_1996, lines[_FORV_7_])
      L4_1998 = L4_1998 + 1
    else
      L4_1998 = L4_1998 + 1
    end
  end
end

function L79_787()
  local L0_2001, L1_2002, L2_2003, L3_2004, L4_2005, L5_2006, L6_2007, L7_2008, L8_2009
end

function L80_788(A0_2010)
  local L2_2011, L3_2012, L4_2013, L6_2014, L7_2015
  L2_2011 = {}
  L3_2012 = 1
  L4_2013 = 0
  L6_2014 = 1
  L7_2015 = lines
  L7_2015 = #L7_2015
  for _FORV_7_ = 1, #L7_2015 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2011, lines[_FORV_7_])
      L4_2013 = L4_2013 + 1
    else
      L4_2013 = L4_2013 + 1
    end
  end
end

function L80_788()
  local L0_2016, L1_2017, L2_2018, L3_2019, L4_2020, L5_2021, L6_2022, L7_2023, L8_2024
end

function L81_789(A0_2025)
  local L2_2026, L3_2027, L4_2028, L6_2029, L7_2030
  L2_2026 = {}
  L3_2027 = 1
  L4_2028 = 0
  L6_2029 = 1
  L7_2030 = lines
  L7_2030 = #L7_2030
  for _FORV_7_ = 1, #L7_2030 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2026, lines[_FORV_7_])
      L4_2028 = L4_2028 + 1
    else
      L4_2028 = L4_2028 + 1
    end
  end
end

function L81_789()
  local L0_2031, L1_2032, L2_2033, L3_2034, L4_2035, L5_2036, L6_2037, L7_2038, L8_2039
end

function L82_790(A0_2040)
  local L2_2041, L3_2042, L4_2043, L6_2044, L7_2045
  L2_2041 = {}
  L3_2042 = 1
  L4_2043 = 0
  L6_2044 = 1
  L7_2045 = lines
  L7_2045 = #L7_2045
  for _FORV_7_ = 1, #L7_2045 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2041, lines[_FORV_7_])
      L4_2043 = L4_2043 + 1
    else
      L4_2043 = L4_2043 + 1
    end
  end
end

function L82_790()
  local L0_2046, L1_2047, L2_2048, L3_2049, L4_2050, L5_2051, L6_2052, L7_2053, L8_2054
end

function L83_791(A0_2055)
  local L2_2056, L3_2057, L4_2058, L6_2059, L7_2060
  L2_2056 = {}
  L3_2057 = 1
  L4_2058 = 0
  L6_2059 = 1
  L7_2060 = lines
  L7_2060 = #L7_2060
  for _FORV_7_ = 1, #L7_2060 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2056, lines[_FORV_7_])
      L4_2058 = L4_2058 + 1
    else
      L4_2058 = L4_2058 + 1
    end
  end
end

function L83_791()
  local L0_2061, L1_2062, L2_2063, L3_2064, L4_2065, L5_2066, L6_2067, L7_2068, L8_2069
end

function L84_792(A0_2070)
  local L2_2071, L3_2072, L4_2073, L6_2074, L7_2075
  L2_2071 = {}
  L3_2072 = 1
  L4_2073 = 0
  L6_2074 = 1
  L7_2075 = lines
  L7_2075 = #L7_2075
  for _FORV_7_ = 1, #L7_2075 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2071, lines[_FORV_7_])
      L4_2073 = L4_2073 + 1
    else
      L4_2073 = L4_2073 + 1
    end
  end
end

function L84_792()
  local L0_2076, L1_2077, L2_2078, L3_2079, L4_2080, L5_2081, L6_2082, L7_2083, L8_2084
end

function L85_793(A0_2085)
  local L2_2086, L3_2087, L4_2088, L6_2089, L7_2090
  L2_2086 = {}
  L3_2087 = 1
  L4_2088 = 0
  L6_2089 = 1
  L7_2090 = lines
  L7_2090 = #L7_2090
  for _FORV_7_ = 1, #L7_2090 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2086, lines[_FORV_7_])
      L4_2088 = L4_2088 + 1
    else
      L4_2088 = L4_2088 + 1
    end
  end
end

function L85_793()
  local L0_2091, L1_2092, L2_2093, L3_2094, L4_2095, L5_2096, L6_2097, L7_2098, L8_2099
end

function L86_794(A0_2100)
  local L2_2101, L3_2102, L4_2103, L6_2104, L7_2105
  L2_2101 = {}
  L3_2102 = 1
  L4_2103 = 0
  L6_2104 = 1
  L7_2105 = lines
  L7_2105 = #L7_2105
  for _FORV_7_ = 1, #L7_2105 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2101, lines[_FORV_7_])
      L4_2103 = L4_2103 + 1
    else
      L4_2103 = L4_2103 + 1
    end
  end
end

function L86_794()
  local L0_2106, L1_2107, L2_2108, L3_2109, L4_2110, L5_2111, L6_2112, L7_2113, L8_2114
end

function L87_795(A0_2115)
  local L2_2116, L3_2117, L4_2118, L6_2119, L7_2120
  L2_2116 = {}
  L3_2117 = 1
  L4_2118 = 0
  L6_2119 = 1
  L7_2120 = lines
  L7_2120 = #L7_2120
  for _FORV_7_ = 1, #L7_2120 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2116, lines[_FORV_7_])
      L4_2118 = L4_2118 + 1
    else
      L4_2118 = L4_2118 + 1
    end
  end
end

function L87_795()
  local L0_2121, L1_2122, L2_2123, L3_2124, L4_2125, L5_2126, L6_2127, L7_2128, L8_2129
end

function L88_796(A0_2130)
  local L2_2131, L3_2132, L4_2133, L6_2134, L7_2135
  L2_2131 = {}
  L3_2132 = 1
  L4_2133 = 0
  L6_2134 = 1
  L7_2135 = lines
  L7_2135 = #L7_2135
  for _FORV_7_ = 1, #L7_2135 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2131, lines[_FORV_7_])
      L4_2133 = L4_2133 + 1
    else
      L4_2133 = L4_2133 + 1
    end
  end
end

function L88_796()
  local L0_2136, L1_2137, L2_2138, L3_2139, L4_2140, L5_2141, L6_2142, L7_2143, L8_2144
end

function L89_797(A0_2145)
  local L2_2146, L3_2147, L4_2148, L6_2149, L7_2150
  L2_2146 = {}
  L3_2147 = 1
  L4_2148 = 0
  L6_2149 = 1
  L7_2150 = lines
  L7_2150 = #L7_2150
  for _FORV_7_ = 1, #L7_2150 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2146, lines[_FORV_7_])
      L4_2148 = L4_2148 + 1
    else
      L4_2148 = L4_2148 + 1
    end
  end
end

function L89_797()
  local L0_2151, L1_2152, L2_2153, L3_2154, L4_2155, L5_2156, L6_2157, L7_2158, L8_2159
end

function L90_798(A0_2160)
  local L2_2161, L3_2162, L4_2163, L6_2164, L7_2165
  L2_2161 = {}
  L3_2162 = 1
  L4_2163 = 0
  L6_2164 = 1
  L7_2165 = lines
  L7_2165 = #L7_2165
  for _FORV_7_ = 1, #L7_2165 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2161, lines[_FORV_7_])
      L4_2163 = L4_2163 + 1
    else
      L4_2163 = L4_2163 + 1
    end
  end
end

function L90_798()
  local L0_2166, L1_2167, L2_2168, L3_2169, L4_2170, L5_2171, L6_2172, L7_2173, L8_2174
end

function L91_799(A0_2175)
  local L2_2176, L3_2177, L4_2178, L6_2179, L7_2180
  L2_2176 = {}
  L3_2177 = 1
  L4_2178 = 0
  L6_2179 = 1
  L7_2180 = lines
  L7_2180 = #L7_2180
  for _FORV_7_ = 1, #L7_2180 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2176, lines[_FORV_7_])
      L4_2178 = L4_2178 + 1
    else
      L4_2178 = L4_2178 + 1
    end
  end
end

function L91_799()
  local L0_2181, L1_2182, L2_2183, L3_2184, L4_2185, L5_2186, L6_2187, L7_2188, L8_2189
end

function L92_800(A0_2190)
  local L2_2191, L3_2192, L4_2193, L6_2194, L7_2195
  L2_2191 = {}
  L3_2192 = 1
  L4_2193 = 0
  L6_2194 = 1
  L7_2195 = lines
  L7_2195 = #L7_2195
  for _FORV_7_ = 1, #L7_2195 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2191, lines[_FORV_7_])
      L4_2193 = L4_2193 + 1
    else
      L4_2193 = L4_2193 + 1
    end
  end
end

function L92_800()
  local L0_2196, L1_2197, L2_2198, L3_2199, L4_2200, L5_2201, L6_2202, L7_2203, L8_2204
end

function L93_801(A0_2205)
  local L2_2206, L3_2207, L4_2208, L6_2209, L7_2210
  L2_2206 = {}
  L3_2207 = 1
  L4_2208 = 0
  L6_2209 = 1
  L7_2210 = lines
  L7_2210 = #L7_2210
  for _FORV_7_ = 1, #L7_2210 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2206, lines[_FORV_7_])
      L4_2208 = L4_2208 + 1
    else
      L4_2208 = L4_2208 + 1
    end
  end
end

function L93_801()
  local L0_2211, L1_2212, L2_2213, L3_2214, L4_2215, L5_2216, L6_2217, L7_2218, L8_2219
end

function L94_802(A0_2220)
  local L2_2221, L3_2222, L4_2223, L6_2224, L7_2225
  L2_2221 = {}
  L3_2222 = 1
  L4_2223 = 0
  L6_2224 = 1
  L7_2225 = lines
  L7_2225 = #L7_2225
  for _FORV_7_ = 1, #L7_2225 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2221, lines[_FORV_7_])
      L4_2223 = L4_2223 + 1
    else
      L4_2223 = L4_2223 + 1
    end
  end
end

function L94_802()
  local L0_2226, L1_2227, L2_2228, L3_2229, L4_2230, L5_2231, L6_2232, L7_2233, L8_2234
end

function L95_803(A0_2235)
  local L2_2236, L3_2237, L4_2238, L6_2239, L7_2240
  L2_2236 = {}
  L3_2237 = 1
  L4_2238 = 0
  L6_2239 = 1
  L7_2240 = lines
  L7_2240 = #L7_2240
  for _FORV_7_ = 1, #L7_2240 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2236, lines[_FORV_7_])
      L4_2238 = L4_2238 + 1
    else
      L4_2238 = L4_2238 + 1
    end
  end
end

function L95_803()
  local L0_2241, L1_2242, L2_2243, L3_2244, L4_2245, L5_2246, L6_2247, L7_2248, L8_2249
end

function L96_804(A0_2250)
  local L2_2251, L3_2252, L4_2253, L6_2254, L7_2255
  L2_2251 = {}
  L3_2252 = 1
  L4_2253 = 0
  L6_2254 = 1
  L7_2255 = lines
  L7_2255 = #L7_2255
  for _FORV_7_ = 1, #L7_2255 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2251, lines[_FORV_7_])
      L4_2253 = L4_2253 + 1
    else
      L4_2253 = L4_2253 + 1
    end
  end
end

function L96_804()
  local L0_2256, L1_2257, L2_2258, L3_2259, L4_2260, L5_2261, L6_2262, L7_2263, L8_2264
end

function L97_805(A0_2265)
  local L2_2266, L3_2267, L4_2268, L6_2269, L7_2270
  L2_2266 = {}
  L3_2267 = 1
  L4_2268 = 0
  L6_2269 = 1
  L7_2270 = lines
  L7_2270 = #L7_2270
  for _FORV_7_ = 1, #L7_2270 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2266, lines[_FORV_7_])
      L4_2268 = L4_2268 + 1
    else
      L4_2268 = L4_2268 + 1
    end
  end
end

function L97_805()
  local L0_2271, L1_2272, L2_2273, L3_2274, L4_2275, L5_2276, L6_2277, L7_2278, L8_2279
end

function L98_806(A0_2280)
  local L2_2281, L3_2282, L4_2283, L6_2284, L7_2285
  L2_2281 = {}
  L3_2282 = 1
  L4_2283 = 0
  L6_2284 = 1
  L7_2285 = lines
  L7_2285 = #L7_2285
  for _FORV_7_ = 1, #L7_2285 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2281, lines[_FORV_7_])
      L4_2283 = L4_2283 + 1
    else
      L4_2283 = L4_2283 + 1
    end
  end
end

function L98_806()
  local L0_2286, L1_2287, L2_2288, L3_2289, L4_2290, L5_2291, L6_2292, L7_2293, L8_2294
end

function L99_807(A0_2295)
  local L2_2296, L3_2297, L4_2298, L6_2299, L7_2300
  L2_2296 = {}
  L3_2297 = 1
  L4_2298 = 0
  L6_2299 = 1
  L7_2300 = lines
  L7_2300 = #L7_2300
  for _FORV_7_ = 1, #L7_2300 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2296, lines[_FORV_7_])
      L4_2298 = L4_2298 + 1
    else
      L4_2298 = L4_2298 + 1
    end
  end
end

function L99_807()
  local L0_2301, L1_2302, L2_2303, L3_2304, L4_2305, L5_2306, L6_2307, L7_2308, L8_2309
end

function L100_808(A0_2310)
  local L2_2311, L3_2312, L4_2313, L6_2314, L7_2315
  L2_2311 = {}
  L3_2312 = 1
  L4_2313 = 0
  L6_2314 = 1
  L7_2315 = lines
  L7_2315 = #L7_2315
  for _FORV_7_ = 1, #L7_2315 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2311, lines[_FORV_7_])
      L4_2313 = L4_2313 + 1
    else
      L4_2313 = L4_2313 + 1
    end
  end
end

function L100_808()
  local L0_2316, L1_2317, L2_2318, L3_2319, L4_2320, L5_2321, L6_2322, L7_2323, L8_2324
end

function L101_809(A0_2325)
  local L2_2326, L3_2327, L4_2328, L6_2329, L7_2330
  L2_2326 = {}
  L3_2327 = 1
  L4_2328 = 0
  L6_2329 = 1
  L7_2330 = lines
  L7_2330 = #L7_2330
  for _FORV_7_ = 1, #L7_2330 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2326, lines[_FORV_7_])
      L4_2328 = L4_2328 + 1
    else
      L4_2328 = L4_2328 + 1
    end
  end
end

function L101_809()
  local L0_2331, L1_2332, L2_2333, L3_2334, L4_2335, L5_2336, L6_2337, L7_2338, L8_2339
end

function L102_810(A0_2340)
  local L2_2341, L3_2342, L4_2343, L6_2344, L7_2345
  L2_2341 = {}
  L3_2342 = 1
  L4_2343 = 0
  L6_2344 = 1
  L7_2345 = lines
  L7_2345 = #L7_2345
  for _FORV_7_ = 1, #L7_2345 do
    if string.find(lines[_FORV_7_], "^%s*function") then
      table.insert(L2_2341, lines[_FORV_7_])
      L4_2343 = L4_2343 + 1
    else
      L4_2343 = L4_2343 + 1
    end
  end
end

function L102_810()
  local L0_2346, L1_2347, L2_2348, L3_2349, L4_2350, L5_2351, L6_2352, L7_2353, L8_2354
end

