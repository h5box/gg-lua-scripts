local arg=...;function Main();do;local RANGES,TYPE={Jh=2,Ch=1,Ca=4,Cd=8,Cb=16,Ps=262144,A=32,J=65536,S=64,As=524288,V=1048576,O=-2080896,B=131072,Xa=16384,Xs=32768},{A=127,B=1,E=64,D=4,F=16,Q=32,W=2,X=8};local _={};local code={};local function Menu(tab);local name={};for i=2,#tab do;name[i-1]=tab[i][1];end;if tab.type == "item" then;local _=gg.choice(name,nil,tab.title or tab[1]);if _ then;Menu(tab[_+1]);end;elseif tab.type == "choice" then;local _=gg.choice(name,true,tab.title or tab[1]);if _ then;Menu(tab[_+1]);end;elseif tab.type == "multi" then;local _=gg.multiChoice(name,nil,tab.title or tab[1]);if _ then;for i,v in pairs(_) do;if v then;Menu(tab[i+1]);end;end;end;elseif tab.type == "alert" then;local _=gg.alert(tab.content,table.unpack(name));if _>0 and tab[2] then;Menu(tab[_+1]);end;elseif tab.type == "code" then;if type(tab.content)=="function" then;tab.content();else;local t;local n=0;tab.content:gsub("[^%.]+",function(w);n=n+1;if n==1 then;t=w;end;end);if _ENV[t] then;code[t]=_ENV[t];_ENV[t]=nil;end;t=code;tab.content:gsub("[^%.]+",function(w);t=t[w];end);if type(t)=="function" then;t();elseif type(t)=="table" then;local tab;if t[2] then;tab=t;else;tab={t};end;gg.clearResults();for k,tab in pairs(tab) do;gg.setRanges(RANGES[tab.Ranges]);for i=1,#tab.Search,2 do;gg.searchNumber(tab.Search[i],TYPE[tab.Search[i+1]]);end;local data=gg.getResults(tab.Number or 100);if tab.Freeze==true then;for i=1,#data do;for i1=1,#tab.Modify,2 do;if data[i].flags==TYPE[tab.Modify[i1+1]] then;data[i].value=tab.Modify[i1];data[i].freeze=true;end;end;gg.addListItems(data);end;elseif tab.Freeze==false then;for i=1,#data do;for i1=1,#tab.Modify,2 do;if data[i].flags==TYPE[tab.Modify[i1+1]] then;data[i].value=tab.Modify[i1];data[i].freeze=false;end;end;gg.addListItems(data);end;else;for i1=1,#tab.Modify,2 do;gg.editAll(tab.Modify[i1],TYPE[tab.Modify[i1+1]]);end;end;if gg.getResultCount()>0 then;if tab[1] and tab[1]~="" then;gg.toast(tab[1]);end;else;gg.toast("搜索失败");end;gg.clearResults();end;end;end;end;end;local Main_Table=
--------配置信息，请勿乱动--------

{
  "和平精英";
  type="item";
  {
    "功能【64】";
    type="multi";
    {
      "透视";
      content="ts";
      type="code";
    };
    {
      "天空上色【幻彩】";
      content="tk";
      type="code";
    };
    {
      "人物上色【白】";
      content="rw";
      type="code";
    };
    {
      "无后【Ak】";
      content="ak";
      type="code";
    };
  };
};



ts={
  {
    "马赛克";
    Number=100;
    Ranges="V";
    Modify={
      "9999","D";
    };
    Search={
      "1,074,792,704;671,088,643;1,074,792,451;4,128;1,081,084,428;4,131;1,081,081,856;983,042;1,669,398,530;537,661,476;1,669,368,332;4,135;1,669,365,760;790,568;1,669,431,297;537,727,017;1,669,433,612;4,139;1,669,431,296;69,676;1,669,398,529;790,573;1,669,398,531;856,110;1,669,398,540;4,143;1,669,398,528;83;539,246,594;0;512;671,236,098;1,075,316,738;273,891,330;1,074,790,402;1,073,741,824;541,343,757;0;256;196,610;1,081,081,858;-2,147,450,868;1,669,758,979;16,386;1,087,897,602;1;537,152,020;0;537,149,463","D";
      "-2,147,450,868","D";
    };
    Freeze=true;
  };
  {
    "透明化";
    Number=100;
    Ranges="V";
    Modify={
      "9999","D";
    };
    Search={
      "1,670,152,213;277,282,835;1,081,081,867;-2,145,972,020;1,669,562,390;206;539,246,599;23","D";
      "-2,145,972,020","D";
    };
    Freeze=true;
  };
};

tk={
  "幻彩";
  Number=100;
  Ranges="V";
  Freeze=true;
  Modify={
    "3","D";
  };
  Search={
    "1,194,330,632;8,204;1,194,328,071;8,205;1,194,330,379;8,200;1,194,363,661;283,443,207;1,081,085,952;283,443,211;1,081,081,857;283,443,212","D";
    "8200","D";
  };
};

rw={
  "白";
  Number=100;
  Ranges="V";
  Freeze=true;
  Modify={
    "30","D";
  };
  Search={
    "67,244,032;8,208;1,328,548,102;8,210;1,194,346,768;8,192;1,194,347,026;8,204;1,194,347,029;8,196;1,194,347,288;8,200;1,194,380,068;288,624,946;1,937,952,768;288,624,946;1,669,480,449;1,638,418;1,080,035,330;0","D";
    "8200","D";
  };
};

ak={
  "无后";
  Number=100;
  Ranges="A";
  Freeze=true;
  Modify={
    "0","D";
  };
  Search={
    "220;220;1,059,481,190;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216;1,065,353,216;1,059,481,190;1,078,355,558;1,068,708,659;1,017,370,378;1,068,708,659;1,063,675,494;1,018,444,120;1,090,519,040;0","D";
    "1,059,481,190","D";
  };
};


--------配置信息，请勿乱动--------
while not (arg) do;if gg.isVisible(true) then;gg.setVisible(false);Menu(Main_Table);end;end;if (arg)=="debug" then;Menu(Main_Table);end;end;end;return Main(nil);