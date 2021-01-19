%mducng/SoC/D2/G2touch
clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Frequencies declaration
f1 =  23338;
f2 =  23314;
f3 =  23289;
f4 =  23264;
f5 =  23240;
f6 =  23215;
f7 =  23191;
f8 =  23167;
f9 =  23142;
f10 = 23118;
f11 = 23094;
f12 = 23070;
f13 = 23046;
f14 = 23022;
f15 = 22998;
f16 = 22974;
f17 = 22950;
f18 = 22926;
f19 = 22902;
f20 = 22878;
f21 = 22855;
f22 = 22831;
f23 = 22807;
f24 = 22784;
f25 = 22760;
f26 = 22737;
f27 = 22713;
f28 = 22690;
f29 = 22667;
f30 = 22643;
f31 = 22620;
f32 = 22597;
f33 = 22574;
f34 = 22551;
f35 = 22528;
f36 = 22505;
f37 = 22482;
f38 = 22459;
f39 = 22436;
f40 = 22413;
f41 = 22391;
f42 = 22368;
f43 = 22345;
f44 = 22323;
f45 = 22300;
f46 = 22277;
f47 = 22255;
f48 = 22233;
f49 = 22210;
f50 = 22188;
f51 = 22166;
f52 = 22143;
f53 = 22121;
f54 = 22099;
f55 = 22077;
f56 = 22055;
f57 = 22033;
f58 = 22011;
f59 = 21989;
f60 = 21967;
f61 = 21945;
f62 = 21923;
f63 = 21901;
f64 = 21880;
f65 = 21858;
f66 = 21836;
f67 = 21815;
f68 = 21793;
f69 = 21772;
f70 = 21750;
f71 = 21729;
f72 = 21707;
f73 = 21686;
f74 = 21665;
f75 = 21643;
f76 = 21622;
f77 = 21601;
f78 = 21580;
f79 = 21559;
f80 = 21538;
f81 = 21517;
f82 = 21496;
f83 = 21475;
f84 = 21454;
f85 = 21433;
f86 = 21412;
f87 = 21392;
f88 = 21371;
f89 = 21350;
f90 = 21329;
f91 = 21309;
f92 = 21288;
f93 = 21268;
f94 = 21247;
f95 = 21227;
f96 = 21206;
f97 = 21186;
f98 = 21166;
f99 = 21145;
f100 =21125;
f101 =21105;
f102 =21085;
f103 =21065;
f104 =21045;
f105 =21024;
f106 =21004;
f107 =20984;
f108 =20965;
f109 =20945;
f110 =20925;
f111 =20905;
f112 =20885;
f113 =20865;
f114 =20846;
f115 =20826;
f116 =20806;
f117 =20787;
f118 =20767;
f119 =20748;
f120 =20728;
f121 =20709;
f122 =20689;
f123 =20670;
f124 =20650;
f125 =20631;
f126 =20612;
f127 =20593;
f128 =20573;
f129 =20554;
f130 =20535;
f131 =20516;
f132 =20497;
f133 =20478;
f134 =20459;
f135 =20440;
f136 =20421;
f137 =20402;
f138 =20383;
f139 =20364;
f140 =20346;
f141 =20327;
f142 =20308;
f143 =20289;
f144 =20271;
f145 =20252;
f146 =20234;
f147 =20215;
f148 =20197;
f149 =20178;
f150 =20160;
f151 =20141;
f152 =20123;
f153 =20105;
f154 =20086;
f155 =20068;
f156 =20050;
f157 =20031;
f158 =20013;
f159 =19995;
f160 =19977;
f161 =19959;
f162 =19941;
f163 =19923;
f164 =19905;
f165 =19887;
f166 =19869;
f167 =19851;
f168 =19833;
f169 =19816;
f170 =19798;
f171 =19780;
f172 =19762;
f173 =19745;
f174 =19727;
f175 =19709;
f176 =19692;
f177 =19674;
f178 =19657;
f179 =19639;
f180 =19622;
f181 =19604;
f182 =19587;
f183 =19569;
f184 =19552;
f185 =19535;
f186 =19517;
f187 =19500;
f188 =19483;
f189 =19466;
f190 =19449;
f191 =19431;
f192 =19414;
f193 =19397;
f194 =19380;
f195 =19363;
f196 =19346;
f197 =19329;
f198 =19312;
f199 =19295;
f200 =19279;
f201 =19262;
f202 =19245;
f203 =19228;
f204 =19211;
f205 =19195;
f206 =19178;
f207 =19161;
f208 =19145;
f209 =19128;
f210 =19112;
f211 =19095;
f212 =19078;
f213 =19062;
f214 =19045;
f215 =19029;
f216 =19013;
f217 =18996;
f218 =18980;
f219 =18964;
f220 =18947;
f221 =18931;
f222 =18915;
f223 =18899;
f224 =18882;
f225 =18866;
f226 =18850;
f227 =18834;
f228 =18818;
f229 =18802;
f230 =18786;
f231 =18770;
f232 =18754;
f233 =18738;
f234 =18722;
f235 =18706;
f236 =18690;
f237 =18675;
f238 =18659;
f239 =18643;
f240 =18627;
f241 =18612;
f242 =18596;
f243 =18580;
f244 =18565;
f245 =18549;
f246 =18533;
f247 =18518;
f248 =18502;
f249 =18487;
f250 =18471;
f251 =18456;
f252 =18440;
f253 =18425;
f254 =18410;
f255 =18394;
f256 =18379;
Fs               =  4000000;
SamplesPerSymbol =  1282*4; % 142*10^(-6)*Fs = 142*4 (142 is from spec)
n                =  0:(SamplesPerSymbol-1);
t                =  n*1/Fs;
fbase            =  37500;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Symbol_base      =  sin(2*pi*fbase*t);
Symbol_hover     =  sin(2*pi*fbase*t);
Symbol_1         =  sin(2*pi*f1*t);
Symbol_2         =  sin(2*pi*f2*t);
Symbol_3         =  sin(2*pi*f3*t);
Symbol_4         =  sin(2*pi*f4*t);
Symbol_5         =  sin(2*pi*f5*t);
Symbol_6         =  sin(2*pi*f6*t);
Symbol_7         =  sin(2*pi*f7*t);
Symbol_8         =  sin(2*pi*f8*t);
Symbol_9         =  sin(2*pi*f9*t);
Symbol_10         =  sin(2*pi*f10*t);
Symbol_11         =  sin(2*pi*f11*t);
Symbol_12         =  sin(2*pi*f12*t);
Symbol_13         =  sin(2*pi*f13*t);
Symbol_14         =  sin(2*pi*f14*t);
Symbol_15         =  sin(2*pi*f15*t);
Symbol_16         =  sin(2*pi*f16*t);
Symbol_17         =  sin(2*pi*f17*t);
Symbol_18         =  sin(2*pi*f18*t);
Symbol_19         =  sin(2*pi*f19*t);
Symbol_20         =  sin(2*pi*f20*t);
Symbol_21         =  sin(2*pi*f21*t);
Symbol_22         =  sin(2*pi*f22*t);
Symbol_23         =  sin(2*pi*f23*t);
Symbol_24         =  sin(2*pi*f24*t);
Symbol_25         =  sin(2*pi*f25*t);
Symbol_26         =  sin(2*pi*f26*t);
Symbol_27         =  sin(2*pi*f27*t);
Symbol_28         =  sin(2*pi*f28*t);
Symbol_29         =  sin(2*pi*f29*t);
Symbol_30         =  sin(2*pi*f30*t);
Symbol_31         =  sin(2*pi*f31*t);
Symbol_32         =  sin(2*pi*f32*t);
Symbol_33         =  sin(2*pi*f33*t);
Symbol_34         =  sin(2*pi*f34*t);
Symbol_35         =  sin(2*pi*f35*t);
Symbol_36         =  sin(2*pi*f36*t);
Symbol_37         =  sin(2*pi*f37*t);
Symbol_38         =  sin(2*pi*f38*t);
Symbol_39         =  sin(2*pi*f39*t);
Symbol_40         =  sin(2*pi*f40*t);
Symbol_41         =  sin(2*pi*f41*t);
Symbol_42         =  sin(2*pi*f42*t);
Symbol_43         =  sin(2*pi*f43*t);
Symbol_44         =  sin(2*pi*f44*t);
Symbol_45         =  sin(2*pi*f45*t);
Symbol_46         =  sin(2*pi*f46*t);
Symbol_47         =  sin(2*pi*f47*t);
Symbol_48         =  sin(2*pi*f48*t);
Symbol_49         =  sin(2*pi*f49*t);
Symbol_50         =  sin(2*pi*f50*t);
Symbol_51         =  sin(2*pi*f51*t);
Symbol_52         =  sin(2*pi*f52*t);
Symbol_53         =  sin(2*pi*f53*t);
Symbol_54         =  sin(2*pi*f54*t);
Symbol_55         =  sin(2*pi*f55*t);
Symbol_56         =  sin(2*pi*f56*t);
Symbol_57         =  sin(2*pi*f57*t);
Symbol_58         =  sin(2*pi*f58*t);
Symbol_59         =  sin(2*pi*f59*t);
Symbol_60         =  sin(2*pi*f60*t);
Symbol_61         =  sin(2*pi*f61*t);
Symbol_62         =  sin(2*pi*f62*t);
Symbol_63         =  sin(2*pi*f63*t);
Symbol_64         =  sin(2*pi*f64*t);
Symbol_65         =  sin(2*pi*f65*t);
Symbol_66         =  sin(2*pi*f66*t);
Symbol_67         =  sin(2*pi*f67*t);
Symbol_68         =  sin(2*pi*f68*t);
Symbol_69         =  sin(2*pi*f69*t);
Symbol_70         =  sin(2*pi*f70*t);
Symbol_71         =  sin(2*pi*f71*t);
Symbol_72         =  sin(2*pi*f72*t);
Symbol_73         =  sin(2*pi*f73*t);
Symbol_74         =  sin(2*pi*f74*t);
Symbol_75         =  sin(2*pi*f75*t);
Symbol_76         =  sin(2*pi*f76*t);
Symbol_77         =  sin(2*pi*f77*t);
Symbol_78         =  sin(2*pi*f78*t);
Symbol_79         =  sin(2*pi*f79*t);
Symbol_80         =  sin(2*pi*f80*t);
Symbol_81         =  sin(2*pi*f81*t);
Symbol_82         =  sin(2*pi*f82*t);
Symbol_83         =  sin(2*pi*f83*t);
Symbol_84         =  sin(2*pi*f84*t);
Symbol_85         =  sin(2*pi*f85*t);
Symbol_86         =  sin(2*pi*f86*t);
Symbol_87         =  sin(2*pi*f87*t);
Symbol_88         =  sin(2*pi*f88*t);
Symbol_89         =  sin(2*pi*f89*t);
Symbol_90         =  sin(2*pi*f90*t);
Symbol_91         =  sin(2*pi*f91*t);
Symbol_92         =  sin(2*pi*f92*t);
Symbol_93         =  sin(2*pi*f93*t);
Symbol_94         =  sin(2*pi*f94*t);
Symbol_95         =  sin(2*pi*f95*t);
Symbol_96         =  sin(2*pi*f96*t);
Symbol_97         =  sin(2*pi*f97*t);
Symbol_98         =  sin(2*pi*f98*t);
Symbol_99         =  sin(2*pi*f99*t);
Symbol_100         =  sin(2*pi*f100*t);
Symbol_101         =  sin(2*pi*f101*t);
Symbol_102         =  sin(2*pi*f102*t);
Symbol_103         =  sin(2*pi*f103*t);
Symbol_104         =  sin(2*pi*f104*t);
Symbol_105         =  sin(2*pi*f105*t);
Symbol_106         =  sin(2*pi*f106*t);
Symbol_107         =  sin(2*pi*f107*t);
Symbol_108         =  sin(2*pi*f108*t);
Symbol_109         =  sin(2*pi*f109*t);
Symbol_110         =  sin(2*pi*f110*t);
Symbol_111         =  sin(2*pi*f111*t);
Symbol_112         =  sin(2*pi*f112*t);
Symbol_113         =  sin(2*pi*f113*t);
Symbol_114         =  sin(2*pi*f114*t);
Symbol_115         =  sin(2*pi*f115*t);
Symbol_116         =  sin(2*pi*f116*t);
Symbol_117         =  sin(2*pi*f117*t);
Symbol_118         =  sin(2*pi*f118*t);
Symbol_119         =  sin(2*pi*f119*t);
Symbol_120         =  sin(2*pi*f120*t);
Symbol_121         =  sin(2*pi*f121*t);
Symbol_122         =  sin(2*pi*f122*t);
Symbol_123         =  sin(2*pi*f123*t);
Symbol_124         =  sin(2*pi*f124*t);
Symbol_125         =  sin(2*pi*f125*t);
Symbol_126         =  sin(2*pi*f126*t);
Symbol_127         =  sin(2*pi*f127*t);
Symbol_128         =  sin(2*pi*f128*t);
Symbol_129         =  sin(2*pi*f129*t);
Symbol_130         =  sin(2*pi*f130*t);
Symbol_131         =  sin(2*pi*f131*t);
Symbol_132         =  sin(2*pi*f132*t);
Symbol_133         =  sin(2*pi*f133*t);
Symbol_134         =  sin(2*pi*f134*t);
Symbol_135         =  sin(2*pi*f135*t);
Symbol_136         =  sin(2*pi*f136*t);
Symbol_137         =  sin(2*pi*f137*t);
Symbol_138         =  sin(2*pi*f138*t);
Symbol_139         =  sin(2*pi*f139*t);
Symbol_140         =  sin(2*pi*f140*t);
Symbol_141         =  sin(2*pi*f141*t);
Symbol_142         =  sin(2*pi*f142*t);
Symbol_143         =  sin(2*pi*f143*t);
Symbol_144         =  sin(2*pi*f144*t);
Symbol_145         =  sin(2*pi*f145*t);
Symbol_146         =  sin(2*pi*f146*t);
Symbol_147         =  sin(2*pi*f147*t);
Symbol_148         =  sin(2*pi*f148*t);
Symbol_149         =  sin(2*pi*f149*t);
Symbol_150         =  sin(2*pi*f150*t);
Symbol_151         =  sin(2*pi*f151*t);
Symbol_152         =  sin(2*pi*f152*t);
Symbol_153         =  sin(2*pi*f153*t);
Symbol_154         =  sin(2*pi*f154*t);
Symbol_155         =  sin(2*pi*f155*t);
Symbol_156         =  sin(2*pi*f156*t);
Symbol_157         =  sin(2*pi*f157*t);
Symbol_158         =  sin(2*pi*f158*t);
Symbol_159         =  sin(2*pi*f159*t);
Symbol_160         =  sin(2*pi*f160*t);
Symbol_161         =  sin(2*pi*f161*t);
Symbol_162         =  sin(2*pi*f162*t);
Symbol_163         =  sin(2*pi*f163*t);
Symbol_164         =  sin(2*pi*f164*t);
Symbol_165         =  sin(2*pi*f165*t);
Symbol_166         =  sin(2*pi*f166*t);
Symbol_167         =  sin(2*pi*f167*t);
Symbol_168         =  sin(2*pi*f168*t);
Symbol_169         =  sin(2*pi*f169*t);
Symbol_170         =  sin(2*pi*f170*t);
Symbol_171         =  sin(2*pi*f171*t);
Symbol_172         =  sin(2*pi*f172*t);
Symbol_173         =  sin(2*pi*f173*t);
Symbol_174         =  sin(2*pi*f174*t);
Symbol_175         =  sin(2*pi*f175*t);
Symbol_176         =  sin(2*pi*f176*t);
Symbol_177         =  sin(2*pi*f177*t);
Symbol_178         =  sin(2*pi*f178*t);
Symbol_179         =  sin(2*pi*f179*t);
Symbol_180         =  sin(2*pi*f180*t);
Symbol_181         =  sin(2*pi*f181*t);
Symbol_182         =  sin(2*pi*f182*t);
Symbol_183         =  sin(2*pi*f183*t);
Symbol_184         =  sin(2*pi*f184*t);
Symbol_185         =  sin(2*pi*f185*t);
Symbol_186         =  sin(2*pi*f186*t);
Symbol_187         =  sin(2*pi*f187*t);
Symbol_188         =  sin(2*pi*f188*t);
Symbol_189         =  sin(2*pi*f189*t);
Symbol_190         =  sin(2*pi*f190*t);
Symbol_191         =  sin(2*pi*f191*t);
Symbol_192         =  sin(2*pi*f192*t);
Symbol_193         =  sin(2*pi*f193*t);
Symbol_194         =  sin(2*pi*f194*t);
Symbol_195         =  sin(2*pi*f195*t);
Symbol_196         =  sin(2*pi*f196*t);
Symbol_197         =  sin(2*pi*f197*t);
Symbol_198         =  sin(2*pi*f198*t);
Symbol_199         =  sin(2*pi*f199*t);
Symbol_200         =  sin(2*pi*f200*t);
Symbol_201         =  sin(2*pi*f201*t);
Symbol_202         =  sin(2*pi*f202*t);
Symbol_203         =  sin(2*pi*f203*t);
Symbol_204         =  sin(2*pi*f204*t);
Symbol_205         =  sin(2*pi*f205*t);
Symbol_206         =  sin(2*pi*f206*t);
Symbol_207         =  sin(2*pi*f207*t);
Symbol_208         =  sin(2*pi*f208*t);
Symbol_209         =  sin(2*pi*f209*t);
Symbol_210         =  sin(2*pi*f210*t);
Symbol_211         =  sin(2*pi*f211*t);
Symbol_212         =  sin(2*pi*f212*t);
Symbol_213         =  sin(2*pi*f213*t);
Symbol_214         =  sin(2*pi*f214*t);
Symbol_215         =  sin(2*pi*f215*t);
Symbol_216         =  sin(2*pi*f216*t);
Symbol_217         =  sin(2*pi*f217*t);
Symbol_218         =  sin(2*pi*f218*t);
Symbol_219         =  sin(2*pi*f219*t);
Symbol_220         =  sin(2*pi*f220*t);
Symbol_221         =  sin(2*pi*f221*t);
Symbol_222         =  sin(2*pi*f222*t);
Symbol_223         =  sin(2*pi*f223*t);
Symbol_224         =  sin(2*pi*f224*t);
Symbol_225         =  sin(2*pi*f225*t);
Symbol_226         =  sin(2*pi*f226*t);
Symbol_227         =  sin(2*pi*f227*t);
Symbol_228         =  sin(2*pi*f228*t);
Symbol_229         =  sin(2*pi*f229*t);
Symbol_230         =  sin(2*pi*f230*t);
Symbol_231         =  sin(2*pi*f231*t);
Symbol_232         =  sin(2*pi*f232*t);
Symbol_233         =  sin(2*pi*f233*t);
Symbol_234         =  sin(2*pi*f234*t);
Symbol_235         =  sin(2*pi*f235*t);
Symbol_236         =  sin(2*pi*f236*t);
Symbol_237         =  sin(2*pi*f237*t);
Symbol_238         =  sin(2*pi*f238*t);
Symbol_239         =  sin(2*pi*f239*t);
Symbol_240         =  sin(2*pi*f240*t);
Symbol_241         =  sin(2*pi*f241*t);
Symbol_242         =  sin(2*pi*f242*t);
Symbol_243         =  sin(2*pi*f243*t);
Symbol_244         =  sin(2*pi*f244*t);
Symbol_245         =  sin(2*pi*f245*t);
Symbol_246         =  sin(2*pi*f246*t);
Symbol_247         =  sin(2*pi*f247*t);
Symbol_248         =  sin(2*pi*f248*t);
Symbol_249         =  sin(2*pi*f249*t);
Symbol_250         =  sin(2*pi*f250*t);
Symbol_251         =  sin(2*pi*f251*t);
Symbol_252         =  sin(2*pi*f252*t);
Symbol_253         =  sin(2*pi*f253*t);
Symbol_254         =  sin(2*pi*f254*t);
Symbol_255         =  sin(2*pi*f255*t);
Symbol_256         =  sin(2*pi*f256*t);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tRx               = (0:length(Symbol_1)-1)*1/Fs;
Decoding_hover    = Symbol_base .* Symbol_hover;
%%%%%%%%%%%%%%%%%%
Decoding_1        = Symbol_base .* Symbol_1;
Decoding_2        = Symbol_base .* Symbol_2;
Decoding_3        = Symbol_base .* Symbol_3;
Decoding_4        = Symbol_base .* Symbol_4;
Decoding_5        = Symbol_base .* Symbol_5;
Decoding_6        = Symbol_base .* Symbol_6;
Decoding_7        = Symbol_base .* Symbol_7;
Decoding_8        = Symbol_base .* Symbol_8;
Decoding_9        = Symbol_base .* Symbol_9;
Decoding_10       = Symbol_base .* Symbol_10;
Decoding_11       = Symbol_base .* Symbol_11;
Decoding_12       = Symbol_base .* Symbol_12;
Decoding_13       = Symbol_base .* Symbol_13;
Decoding_14       = Symbol_base .* Symbol_14;
Decoding_15       = Symbol_base .* Symbol_15;
Decoding_16       = Symbol_base .* Symbol_16;
Decoding_17       = Symbol_base .* Symbol_17;
Decoding_18       = Symbol_base .* Symbol_18;
Decoding_19       = Symbol_base .* Symbol_19;
Decoding_20       = Symbol_base .* Symbol_20;
Decoding_21       = Symbol_base .* Symbol_21;
Decoding_22       = Symbol_base .* Symbol_22;
Decoding_23       = Symbol_base .* Symbol_23;
Decoding_24       = Symbol_base .* Symbol_24;
Decoding_25       = Symbol_base .* Symbol_25;
Decoding_26       = Symbol_base .* Symbol_26;
Decoding_27       = Symbol_base .* Symbol_27;
Decoding_28       = Symbol_base .* Symbol_28;
Decoding_29       = Symbol_base .* Symbol_29;
Decoding_30       = Symbol_base .* Symbol_30;
Decoding_31       = Symbol_base .* Symbol_31;
Decoding_32       = Symbol_base .* Symbol_32;
Decoding_33       = Symbol_base .* Symbol_33;
Decoding_34       = Symbol_base .* Symbol_34;
Decoding_35       = Symbol_base .* Symbol_35;
Decoding_36       = Symbol_base .* Symbol_36;
Decoding_37       = Symbol_base .* Symbol_37;
Decoding_38       = Symbol_base .* Symbol_38;
Decoding_39       = Symbol_base .* Symbol_39;
Decoding_40       = Symbol_base .* Symbol_40;
Decoding_41       = Symbol_base .* Symbol_41;
Decoding_42       = Symbol_base .* Symbol_42;
Decoding_43       = Symbol_base .* Symbol_43;
Decoding_44       = Symbol_base .* Symbol_44;
Decoding_45       = Symbol_base .* Symbol_45;
Decoding_46       = Symbol_base .* Symbol_46;
Decoding_47       = Symbol_base .* Symbol_47;
Decoding_48       = Symbol_base .* Symbol_48;
Decoding_49       = Symbol_base .* Symbol_49;
Decoding_50       = Symbol_base .* Symbol_50;
Decoding_51       = Symbol_base .* Symbol_51;
Decoding_52       = Symbol_base .* Symbol_52;
Decoding_53       = Symbol_base .* Symbol_53;
Decoding_54       = Symbol_base .* Symbol_54;
Decoding_55       = Symbol_base .* Symbol_55;
Decoding_56       = Symbol_base .* Symbol_56;
Decoding_57       = Symbol_base .* Symbol_57;
Decoding_58       = Symbol_base .* Symbol_58;
Decoding_59       = Symbol_base .* Symbol_59;
Decoding_60       = Symbol_base .* Symbol_60;
Decoding_61       = Symbol_base .* Symbol_61;
Decoding_62       = Symbol_base .* Symbol_62;
Decoding_63       = Symbol_base .* Symbol_63;
Decoding_64       = Symbol_base .* Symbol_64;
Decoding_65       = Symbol_base .* Symbol_65;
Decoding_66       = Symbol_base .* Symbol_66;
Decoding_67       = Symbol_base .* Symbol_67;
Decoding_68       = Symbol_base .* Symbol_68;
Decoding_69       = Symbol_base .* Symbol_69;
Decoding_70       = Symbol_base .* Symbol_70;
Decoding_71       = Symbol_base .* Symbol_71;
Decoding_72       = Symbol_base .* Symbol_72;
Decoding_73       = Symbol_base .* Symbol_73;
Decoding_74       = Symbol_base .* Symbol_74;
Decoding_75       = Symbol_base .* Symbol_75;
Decoding_76       = Symbol_base .* Symbol_76;
Decoding_77       = Symbol_base .* Symbol_77;
Decoding_78       = Symbol_base .* Symbol_78;
Decoding_79       = Symbol_base .* Symbol_79;
Decoding_80       = Symbol_base .* Symbol_80;
Decoding_81       = Symbol_base .* Symbol_81;
Decoding_82       = Symbol_base .* Symbol_82;
Decoding_83       = Symbol_base .* Symbol_83;
Decoding_84       = Symbol_base .* Symbol_84;
Decoding_85       = Symbol_base .* Symbol_85;
Decoding_86       = Symbol_base .* Symbol_86;
Decoding_87       = Symbol_base .* Symbol_87;
Decoding_88       = Symbol_base .* Symbol_88;
Decoding_89       = Symbol_base .* Symbol_89;
Decoding_90       = Symbol_base .* Symbol_90;
Decoding_91       = Symbol_base .* Symbol_91;
Decoding_92       = Symbol_base .* Symbol_92;
Decoding_93       = Symbol_base .* Symbol_93;
Decoding_94       = Symbol_base .* Symbol_94;
Decoding_95       = Symbol_base .* Symbol_95;
Decoding_96       = Symbol_base .* Symbol_96;
Decoding_97       = Symbol_base .* Symbol_97;
Decoding_98       = Symbol_base .* Symbol_98;
Decoding_99       = Symbol_base .* Symbol_99;
Decoding_100       = Symbol_base .* Symbol_100;
Decoding_101       = Symbol_base .* Symbol_101;
Decoding_102       = Symbol_base .* Symbol_102;
Decoding_103       = Symbol_base .* Symbol_103;
Decoding_104       = Symbol_base .* Symbol_104;
Decoding_105       = Symbol_base .* Symbol_105;
Decoding_106       = Symbol_base .* Symbol_106;
Decoding_107       = Symbol_base .* Symbol_107;
Decoding_108       = Symbol_base .* Symbol_108;
Decoding_109       = Symbol_base .* Symbol_109;
Decoding_110       = Symbol_base .* Symbol_110;
Decoding_111       = Symbol_base .* Symbol_111;
Decoding_112       = Symbol_base .* Symbol_112;
Decoding_113       = Symbol_base .* Symbol_113;
Decoding_114       = Symbol_base .* Symbol_114;
Decoding_115       = Symbol_base .* Symbol_115;
Decoding_116       = Symbol_base .* Symbol_116;
Decoding_117       = Symbol_base .* Symbol_117;
Decoding_118       = Symbol_base .* Symbol_118;
Decoding_119       = Symbol_base .* Symbol_119;
Decoding_120       = Symbol_base .* Symbol_120;
Decoding_121       = Symbol_base .* Symbol_121;
Decoding_122       = Symbol_base .* Symbol_122;
Decoding_123       = Symbol_base .* Symbol_123;
Decoding_124       = Symbol_base .* Symbol_124;
Decoding_125       = Symbol_base .* Symbol_125;
Decoding_126       = Symbol_base .* Symbol_126;
Decoding_127       = Symbol_base .* Symbol_127;
Decoding_128       = Symbol_base .* Symbol_128;
Decoding_129       = Symbol_base .* Symbol_129;
Decoding_130       = Symbol_base .* Symbol_130;
Decoding_131       = Symbol_base .* Symbol_131;
Decoding_132       = Symbol_base .* Symbol_132;
Decoding_133       = Symbol_base .* Symbol_133;
Decoding_134       = Symbol_base .* Symbol_134;
Decoding_135       = Symbol_base .* Symbol_135;
Decoding_136       = Symbol_base .* Symbol_136;
Decoding_137       = Symbol_base .* Symbol_137;
Decoding_138       = Symbol_base .* Symbol_138;
Decoding_139       = Symbol_base .* Symbol_139;
Decoding_140       = Symbol_base .* Symbol_140;
Decoding_141       = Symbol_base .* Symbol_141;
Decoding_142       = Symbol_base .* Symbol_142;
Decoding_143       = Symbol_base .* Symbol_143;
Decoding_144       = Symbol_base .* Symbol_144;
Decoding_145       = Symbol_base .* Symbol_145;
Decoding_146       = Symbol_base .* Symbol_146;
Decoding_147       = Symbol_base .* Symbol_147;
Decoding_148       = Symbol_base .* Symbol_148;
Decoding_149       = Symbol_base .* Symbol_149;
Decoding_150       = Symbol_base .* Symbol_150;
Decoding_151       = Symbol_base .* Symbol_151;
Decoding_152       = Symbol_base .* Symbol_152;
Decoding_153       = Symbol_base .* Symbol_153;
Decoding_154       = Symbol_base .* Symbol_154;
Decoding_155       = Symbol_base .* Symbol_155;
Decoding_156       = Symbol_base .* Symbol_156;
Decoding_157       = Symbol_base .* Symbol_157;
Decoding_158       = Symbol_base .* Symbol_158;
Decoding_159       = Symbol_base .* Symbol_159;
Decoding_160       = Symbol_base .* Symbol_160;
Decoding_161       = Symbol_base .* Symbol_161;
Decoding_162       = Symbol_base .* Symbol_162;
Decoding_163       = Symbol_base .* Symbol_163;
Decoding_164       = Symbol_base .* Symbol_164;
Decoding_165       = Symbol_base .* Symbol_165;
Decoding_166       = Symbol_base .* Symbol_166;
Decoding_167       = Symbol_base .* Symbol_167;
Decoding_168       = Symbol_base .* Symbol_168;
Decoding_169       = Symbol_base .* Symbol_169;
Decoding_170       = Symbol_base .* Symbol_170;
Decoding_171       = Symbol_base .* Symbol_171;
Decoding_172       = Symbol_base .* Symbol_172;
Decoding_173       = Symbol_base .* Symbol_173;
Decoding_174       = Symbol_base .* Symbol_174;
Decoding_175       = Symbol_base .* Symbol_175;
Decoding_176       = Symbol_base .* Symbol_176;
Decoding_177       = Symbol_base .* Symbol_177;
Decoding_178       = Symbol_base .* Symbol_178;
Decoding_179       = Symbol_base .* Symbol_179;
Decoding_180       = Symbol_base .* Symbol_180;
Decoding_181       = Symbol_base .* Symbol_181;
Decoding_182       = Symbol_base .* Symbol_182;
Decoding_183       = Symbol_base .* Symbol_183;
Decoding_184       = Symbol_base .* Symbol_184;
Decoding_185       = Symbol_base .* Symbol_185;
Decoding_186       = Symbol_base .* Symbol_186;
Decoding_187       = Symbol_base .* Symbol_187;
Decoding_188       = Symbol_base .* Symbol_188;
Decoding_189       = Symbol_base .* Symbol_189;
Decoding_190       = Symbol_base .* Symbol_190;
Decoding_191       = Symbol_base .* Symbol_191;
Decoding_192       = Symbol_base .* Symbol_192;
Decoding_193       = Symbol_base .* Symbol_193;
Decoding_194       = Symbol_base .* Symbol_194;
Decoding_195       = Symbol_base .* Symbol_195;
Decoding_196       = Symbol_base .* Symbol_196;
Decoding_197       = Symbol_base .* Symbol_197;
Decoding_198       = Symbol_base .* Symbol_198;
Decoding_199       = Symbol_base .* Symbol_199;
Decoding_200       = Symbol_base .* Symbol_200;
Decoding_201       = Symbol_base .* Symbol_201;
Decoding_202       = Symbol_base .* Symbol_202;
Decoding_203       = Symbol_base .* Symbol_203;
Decoding_204       = Symbol_base .* Symbol_204;
Decoding_205       = Symbol_base .* Symbol_205;
Decoding_206       = Symbol_base .* Symbol_206;
Decoding_207       = Symbol_base .* Symbol_207;
Decoding_208       = Symbol_base .* Symbol_208;
Decoding_209       = Symbol_base .* Symbol_209;
Decoding_210       = Symbol_base .* Symbol_210;
Decoding_211       = Symbol_base .* Symbol_211;
Decoding_212       = Symbol_base .* Symbol_212;
Decoding_213       = Symbol_base .* Symbol_213;
Decoding_214       = Symbol_base .* Symbol_214;
Decoding_215       = Symbol_base .* Symbol_215;
Decoding_216       = Symbol_base .* Symbol_216;
Decoding_217       = Symbol_base .* Symbol_217;
Decoding_218       = Symbol_base .* Symbol_218;
Decoding_219       = Symbol_base .* Symbol_219;
Decoding_220       = Symbol_base .* Symbol_220;
Decoding_221       = Symbol_base .* Symbol_221;
Decoding_222       = Symbol_base .* Symbol_222;
Decoding_223       = Symbol_base .* Symbol_223;
Decoding_224       = Symbol_base .* Symbol_224;
Decoding_225       = Symbol_base .* Symbol_225;
Decoding_226       = Symbol_base .* Symbol_226;
Decoding_227       = Symbol_base .* Symbol_227;
Decoding_228       = Symbol_base .* Symbol_228;
Decoding_229       = Symbol_base .* Symbol_229;
Decoding_230       = Symbol_base .* Symbol_230;
Decoding_231       = Symbol_base .* Symbol_231;
Decoding_232       = Symbol_base .* Symbol_232;
Decoding_233       = Symbol_base .* Symbol_233;
Decoding_234       = Symbol_base .* Symbol_234;
Decoding_235       = Symbol_base .* Symbol_235;
Decoding_236       = Symbol_base .* Symbol_236;
Decoding_237       = Symbol_base .* Symbol_237;
Decoding_238       = Symbol_base .* Symbol_238;
Decoding_239       = Symbol_base .* Symbol_239;
Decoding_240       = Symbol_base .* Symbol_240;
Decoding_241       = Symbol_base .* Symbol_241;
Decoding_242       = Symbol_base .* Symbol_242;
Decoding_243       = Symbol_base .* Symbol_243;
Decoding_244       = Symbol_base .* Symbol_244;
Decoding_245       = Symbol_base .* Symbol_245;
Decoding_246       = Symbol_base .* Symbol_246;
Decoding_247       = Symbol_base .* Symbol_247;
Decoding_248       = Symbol_base .* Symbol_248;
Decoding_249       = Symbol_base .* Symbol_249;
Decoding_250       = Symbol_base .* Symbol_250;
Decoding_251       = Symbol_base .* Symbol_251;
Decoding_252       = Symbol_base .* Symbol_252;
Decoding_253       = Symbol_base .* Symbol_253;
Decoding_254       = Symbol_base .* Symbol_254;
Decoding_255       = Symbol_base .* Symbol_255;
Decoding_256       = Symbol_base .* Symbol_256;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for k=1:(length(Decoding_hover)/SamplesPerSymbol)
    SymbolOffsets_hover((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_hover((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
%%%%%%%%%%%%%%%%%%%
for k=1:(length(Decoding_1)/SamplesPerSymbol)
    SymbolOffsets_1((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_1((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_2)/SamplesPerSymbol)
    SymbolOffsets_2((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_2((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_3)/SamplesPerSymbol)
    SymbolOffsets_3((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_3((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_4)/SamplesPerSymbol)
    SymbolOffsets_4((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_4((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_5)/SamplesPerSymbol)
    SymbolOffsets_5((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_5((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_6)/SamplesPerSymbol)
    SymbolOffsets_6((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_6((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_7)/SamplesPerSymbol)
    SymbolOffsets_7((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_7((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_8)/SamplesPerSymbol)
    SymbolOffsets_8((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_8((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_9)/SamplesPerSymbol)
    SymbolOffsets_9((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_9((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_10)/SamplesPerSymbol)
    SymbolOffsets_10((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_10((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_11)/SamplesPerSymbol)
    SymbolOffsets_11((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_11((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_12)/SamplesPerSymbol)
    SymbolOffsets_12((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_12((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_13)/SamplesPerSymbol)
    SymbolOffsets_13((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_13((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_14)/SamplesPerSymbol)
    SymbolOffsets_14((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_14((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_15)/SamplesPerSymbol)
    SymbolOffsets_15((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_15((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_16)/SamplesPerSymbol)
    SymbolOffsets_16((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_16((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_17)/SamplesPerSymbol)
    SymbolOffsets_17((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_17((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_18)/SamplesPerSymbol)
    SymbolOffsets_18((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_18((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_19)/SamplesPerSymbol)
    SymbolOffsets_19((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_19((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_20)/SamplesPerSymbol)
    SymbolOffsets_20((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_20((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_21)/SamplesPerSymbol)
    SymbolOffsets_21((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_21((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_22)/SamplesPerSymbol)
    SymbolOffsets_22((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_22((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_23)/SamplesPerSymbol)
    SymbolOffsets_23((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_23((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_24)/SamplesPerSymbol)
    SymbolOffsets_24((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_24((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_25)/SamplesPerSymbol)
    SymbolOffsets_25((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_25((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_26)/SamplesPerSymbol)
    SymbolOffsets_26((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_26((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_27)/SamplesPerSymbol)
    SymbolOffsets_27((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_27((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_28)/SamplesPerSymbol)
    SymbolOffsets_28((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_28((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_29)/SamplesPerSymbol)
    SymbolOffsets_29((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_29((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_30)/SamplesPerSymbol)
    SymbolOffsets_30((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_30((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_31)/SamplesPerSymbol)
    SymbolOffsets_31((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_31((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_32)/SamplesPerSymbol)
    SymbolOffsets_32((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_32((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_33)/SamplesPerSymbol)
    SymbolOffsets_33((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_33((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_34)/SamplesPerSymbol)
    SymbolOffsets_34((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_34((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_35)/SamplesPerSymbol)
    SymbolOffsets_35((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_35((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_36)/SamplesPerSymbol)
    SymbolOffsets_36((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_36((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_37)/SamplesPerSymbol)
    SymbolOffsets_37((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_37((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_38)/SamplesPerSymbol)
    SymbolOffsets_38((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_38((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_39)/SamplesPerSymbol)
    SymbolOffsets_39((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_39((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_40)/SamplesPerSymbol)
    SymbolOffsets_40((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_40((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_41)/SamplesPerSymbol)
    SymbolOffsets_41((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_41((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_42)/SamplesPerSymbol)
    SymbolOffsets_42((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_42((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_43)/SamplesPerSymbol)
    SymbolOffsets_43((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_43((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_44)/SamplesPerSymbol)
    SymbolOffsets_44((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_44((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_45)/SamplesPerSymbol)
    SymbolOffsets_45((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_45((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_46)/SamplesPerSymbol)
    SymbolOffsets_46((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_46((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_47)/SamplesPerSymbol)
    SymbolOffsets_47((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_47((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_48)/SamplesPerSymbol)
    SymbolOffsets_48((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_48((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_49)/SamplesPerSymbol)
    SymbolOffsets_49((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_49((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_50)/SamplesPerSymbol)
    SymbolOffsets_50((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_50((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_51)/SamplesPerSymbol)
    SymbolOffsets_51((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_51((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_52)/SamplesPerSymbol)
    SymbolOffsets_52((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_52((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_53)/SamplesPerSymbol)
    SymbolOffsets_53((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_53((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_54)/SamplesPerSymbol)
    SymbolOffsets_54((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_54((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_55)/SamplesPerSymbol)
    SymbolOffsets_55((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_55((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_56)/SamplesPerSymbol)
    SymbolOffsets_56((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_56((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_57)/SamplesPerSymbol)
    SymbolOffsets_57((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_57((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_58)/SamplesPerSymbol)
    SymbolOffsets_58((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_58((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_59)/SamplesPerSymbol)
    SymbolOffsets_59((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_59((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_60)/SamplesPerSymbol)
    SymbolOffsets_60((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_60((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_61)/SamplesPerSymbol)
    SymbolOffsets_61((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_61((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_62)/SamplesPerSymbol)
    SymbolOffsets_62((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_62((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_63)/SamplesPerSymbol)
    SymbolOffsets_63((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_63((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_64)/SamplesPerSymbol)
    SymbolOffsets_64((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_64((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_65)/SamplesPerSymbol)
    SymbolOffsets_65((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_65((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_66)/SamplesPerSymbol)
    SymbolOffsets_66((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_66((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_67)/SamplesPerSymbol)
    SymbolOffsets_67((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_67((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_68)/SamplesPerSymbol)
    SymbolOffsets_68((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_68((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_69)/SamplesPerSymbol)
    SymbolOffsets_69((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_69((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_70)/SamplesPerSymbol)
    SymbolOffsets_70((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_70((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_71)/SamplesPerSymbol)
    SymbolOffsets_71((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_71((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_72)/SamplesPerSymbol)
    SymbolOffsets_72((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_72((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_73)/SamplesPerSymbol)
    SymbolOffsets_73((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_73((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_74)/SamplesPerSymbol)
    SymbolOffsets_74((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_74((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_75)/SamplesPerSymbol)
    SymbolOffsets_75((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_75((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_76)/SamplesPerSymbol)
    SymbolOffsets_76((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_76((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_77)/SamplesPerSymbol)
    SymbolOffsets_77((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_77((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_78)/SamplesPerSymbol)
    SymbolOffsets_78((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_78((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_79)/SamplesPerSymbol)
    SymbolOffsets_79((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_79((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_80)/SamplesPerSymbol)
    SymbolOffsets_80((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_80((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_81)/SamplesPerSymbol)
    SymbolOffsets_81((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_81((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_82)/SamplesPerSymbol)
    SymbolOffsets_82((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_82((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_83)/SamplesPerSymbol)
    SymbolOffsets_83((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_83((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_84)/SamplesPerSymbol)
    SymbolOffsets_84((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_84((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_85)/SamplesPerSymbol)
    SymbolOffsets_85((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_85((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_86)/SamplesPerSymbol)
    SymbolOffsets_86((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_86((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_87)/SamplesPerSymbol)
    SymbolOffsets_87((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_87((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_88)/SamplesPerSymbol)
    SymbolOffsets_88((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_88((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_89)/SamplesPerSymbol)
    SymbolOffsets_89((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_89((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_90)/SamplesPerSymbol)
    SymbolOffsets_90((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_90((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_91)/SamplesPerSymbol)
    SymbolOffsets_91((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_91((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_92)/SamplesPerSymbol)
    SymbolOffsets_92((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_92((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_93)/SamplesPerSymbol)
    SymbolOffsets_93((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_93((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_94)/SamplesPerSymbol)
    SymbolOffsets_94((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_94((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_95)/SamplesPerSymbol)
    SymbolOffsets_95((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_95((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_96)/SamplesPerSymbol)
    SymbolOffsets_96((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_96((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_97)/SamplesPerSymbol)
    SymbolOffsets_97((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_97((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_98)/SamplesPerSymbol)
    SymbolOffsets_98((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_98((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_99)/SamplesPerSymbol)
    SymbolOffsets_99((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_99((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_100)/SamplesPerSymbol)
    SymbolOffsets_100((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_100((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_101)/SamplesPerSymbol)
    SymbolOffsets_101((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_101((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_102)/SamplesPerSymbol)
    SymbolOffsets_102((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_102((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_103)/SamplesPerSymbol)
    SymbolOffsets_103((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_103((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_104)/SamplesPerSymbol)
    SymbolOffsets_104((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_104((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_105)/SamplesPerSymbol)
    SymbolOffsets_105((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_105((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_106)/SamplesPerSymbol)
    SymbolOffsets_106((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_106((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_107)/SamplesPerSymbol)
    SymbolOffsets_107((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_107((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_108)/SamplesPerSymbol)
    SymbolOffsets_108((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_108((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_109)/SamplesPerSymbol)
    SymbolOffsets_109((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_109((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_110)/SamplesPerSymbol)
    SymbolOffsets_110((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_110((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_111)/SamplesPerSymbol)
    SymbolOffsets_111((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_111((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_112)/SamplesPerSymbol)
    SymbolOffsets_112((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_112((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_113)/SamplesPerSymbol)
    SymbolOffsets_113((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_113((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_114)/SamplesPerSymbol)
    SymbolOffsets_114((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_114((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_115)/SamplesPerSymbol)
    SymbolOffsets_115((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_115((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_116)/SamplesPerSymbol)
    SymbolOffsets_116((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_116((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_117)/SamplesPerSymbol)
    SymbolOffsets_117((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_117((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_118)/SamplesPerSymbol)
    SymbolOffsets_118((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_118((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_119)/SamplesPerSymbol)
    SymbolOffsets_119((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_119((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_120)/SamplesPerSymbol)
    SymbolOffsets_120((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_120((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_121)/SamplesPerSymbol)
    SymbolOffsets_121((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_121((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_122)/SamplesPerSymbol)
    SymbolOffsets_122((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_122((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_123)/SamplesPerSymbol)
    SymbolOffsets_123((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_123((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_124)/SamplesPerSymbol)
    SymbolOffsets_124((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_124((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_125)/SamplesPerSymbol)
    SymbolOffsets_125((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_125((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_126)/SamplesPerSymbol)
    SymbolOffsets_126((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_126((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_127)/SamplesPerSymbol)
    SymbolOffsets_127((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_127((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_128)/SamplesPerSymbol)
    SymbolOffsets_128((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_128((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_129)/SamplesPerSymbol)
    SymbolOffsets_129((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_129((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_130)/SamplesPerSymbol)
    SymbolOffsets_130((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_130((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_131)/SamplesPerSymbol)
    SymbolOffsets_131((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_131((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_132)/SamplesPerSymbol)
    SymbolOffsets_132((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_132((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_133)/SamplesPerSymbol)
    SymbolOffsets_133((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_133((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_134)/SamplesPerSymbol)
    SymbolOffsets_134((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_134((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_135)/SamplesPerSymbol)
    SymbolOffsets_135((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_135((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_136)/SamplesPerSymbol)
    SymbolOffsets_136((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_136((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_137)/SamplesPerSymbol)
    SymbolOffsets_137((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_137((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_138)/SamplesPerSymbol)
    SymbolOffsets_138((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_138((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_139)/SamplesPerSymbol)
    SymbolOffsets_139((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_139((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_140)/SamplesPerSymbol)
    SymbolOffsets_140((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_140((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_141)/SamplesPerSymbol)
    SymbolOffsets_141((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_141((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_142)/SamplesPerSymbol)
    SymbolOffsets_142((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_142((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_143)/SamplesPerSymbol)
    SymbolOffsets_143((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_143((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_144)/SamplesPerSymbol)
    SymbolOffsets_144((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_144((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_145)/SamplesPerSymbol)
    SymbolOffsets_145((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_145((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_146)/SamplesPerSymbol)
    SymbolOffsets_146((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_146((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_147)/SamplesPerSymbol)
    SymbolOffsets_147((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_147((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_148)/SamplesPerSymbol)
    SymbolOffsets_148((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_148((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_149)/SamplesPerSymbol)
    SymbolOffsets_149((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_149((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_150)/SamplesPerSymbol)
    SymbolOffsets_150((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_150((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_151)/SamplesPerSymbol)
    SymbolOffsets_151((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_151((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_152)/SamplesPerSymbol)
    SymbolOffsets_152((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_152((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_153)/SamplesPerSymbol)
    SymbolOffsets_153((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_153((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_154)/SamplesPerSymbol)
    SymbolOffsets_154((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_154((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_155)/SamplesPerSymbol)
    SymbolOffsets_155((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_155((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_156)/SamplesPerSymbol)
    SymbolOffsets_156((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_156((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_157)/SamplesPerSymbol)
    SymbolOffsets_157((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_157((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_158)/SamplesPerSymbol)
    SymbolOffsets_158((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_158((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_159)/SamplesPerSymbol)
    SymbolOffsets_159((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_159((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_160)/SamplesPerSymbol)
    SymbolOffsets_160((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_160((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_161)/SamplesPerSymbol)
    SymbolOffsets_161((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_161((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_162)/SamplesPerSymbol)
    SymbolOffsets_162((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_162((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_163)/SamplesPerSymbol)
    SymbolOffsets_163((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_163((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_164)/SamplesPerSymbol)
    SymbolOffsets_164((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_164((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_165)/SamplesPerSymbol)
    SymbolOffsets_165((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_165((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_166)/SamplesPerSymbol)
    SymbolOffsets_166((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_166((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_167)/SamplesPerSymbol)
    SymbolOffsets_167((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_167((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_168)/SamplesPerSymbol)
    SymbolOffsets_168((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_168((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_169)/SamplesPerSymbol)
    SymbolOffsets_169((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_169((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_170)/SamplesPerSymbol)
    SymbolOffsets_170((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_170((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_171)/SamplesPerSymbol)
    SymbolOffsets_171((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_171((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_172)/SamplesPerSymbol)
    SymbolOffsets_172((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_172((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_173)/SamplesPerSymbol)
    SymbolOffsets_173((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_173((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_174)/SamplesPerSymbol)
    SymbolOffsets_174((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_174((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_175)/SamplesPerSymbol)
    SymbolOffsets_175((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_175((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_176)/SamplesPerSymbol)
    SymbolOffsets_176((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_176((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_177)/SamplesPerSymbol)
    SymbolOffsets_177((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_177((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_178)/SamplesPerSymbol)
    SymbolOffsets_178((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_178((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_179)/SamplesPerSymbol)
    SymbolOffsets_179((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_179((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_180)/SamplesPerSymbol)
    SymbolOffsets_180((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_180((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_181)/SamplesPerSymbol)
    SymbolOffsets_181((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_181((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_182)/SamplesPerSymbol)
    SymbolOffsets_182((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_182((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_183)/SamplesPerSymbol)
    SymbolOffsets_183((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_183((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_184)/SamplesPerSymbol)
    SymbolOffsets_184((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_184((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_185)/SamplesPerSymbol)
    SymbolOffsets_185((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_185((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_186)/SamplesPerSymbol)
    SymbolOffsets_186((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_186((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_187)/SamplesPerSymbol)
    SymbolOffsets_187((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_187((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_188)/SamplesPerSymbol)
    SymbolOffsets_188((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_188((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_189)/SamplesPerSymbol)
    SymbolOffsets_189((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_189((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_190)/SamplesPerSymbol)
    SymbolOffsets_190((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_190((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_191)/SamplesPerSymbol)
    SymbolOffsets_191((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_191((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_192)/SamplesPerSymbol)
    SymbolOffsets_192((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_192((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_193)/SamplesPerSymbol)
    SymbolOffsets_193((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_193((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_194)/SamplesPerSymbol)
    SymbolOffsets_194((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_194((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_195)/SamplesPerSymbol)
    SymbolOffsets_195((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_195((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_196)/SamplesPerSymbol)
    SymbolOffsets_196((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_196((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_197)/SamplesPerSymbol)
    SymbolOffsets_197((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_197((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_198)/SamplesPerSymbol)
    SymbolOffsets_198((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_198((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_199)/SamplesPerSymbol)
    SymbolOffsets_199((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_199((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_200)/SamplesPerSymbol)
    SymbolOffsets_200((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_200((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_201)/SamplesPerSymbol)
    SymbolOffsets_201((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_201((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_202)/SamplesPerSymbol)
    SymbolOffsets_202((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_202((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_203)/SamplesPerSymbol)
    SymbolOffsets_203((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_203((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_204)/SamplesPerSymbol)
    SymbolOffsets_204((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_204((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_205)/SamplesPerSymbol)
    SymbolOffsets_205((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_205((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_206)/SamplesPerSymbol)
    SymbolOffsets_206((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_206((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_207)/SamplesPerSymbol)
    SymbolOffsets_207((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_207((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_208)/SamplesPerSymbol)
    SymbolOffsets_208((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_208((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_209)/SamplesPerSymbol)
    SymbolOffsets_209((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_209((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_210)/SamplesPerSymbol)
    SymbolOffsets_210((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_210((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_211)/SamplesPerSymbol)
    SymbolOffsets_211((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_211((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_212)/SamplesPerSymbol)
    SymbolOffsets_212((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_212((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_213)/SamplesPerSymbol)
    SymbolOffsets_213((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_213((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_214)/SamplesPerSymbol)
    SymbolOffsets_214((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_214((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_215)/SamplesPerSymbol)
    SymbolOffsets_215((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_215((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_216)/SamplesPerSymbol)
    SymbolOffsets_216((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_216((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_217)/SamplesPerSymbol)
    SymbolOffsets_217((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_217((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_218)/SamplesPerSymbol)
    SymbolOffsets_218((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_218((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_219)/SamplesPerSymbol)
    SymbolOffsets_219((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_219((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_220)/SamplesPerSymbol)
    SymbolOffsets_220((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_220((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_221)/SamplesPerSymbol)
    SymbolOffsets_221((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_221((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_222)/SamplesPerSymbol)
    SymbolOffsets_222((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_222((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_223)/SamplesPerSymbol)
    SymbolOffsets_223((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_223((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_224)/SamplesPerSymbol)
    SymbolOffsets_224((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_224((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_225)/SamplesPerSymbol)
    SymbolOffsets_225((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_225((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_226)/SamplesPerSymbol)
    SymbolOffsets_226((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_226((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_227)/SamplesPerSymbol)
    SymbolOffsets_227((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_227((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_228)/SamplesPerSymbol)
    SymbolOffsets_228((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_228((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_229)/SamplesPerSymbol)
    SymbolOffsets_229((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_229((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_230)/SamplesPerSymbol)
    SymbolOffsets_230((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_230((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_231)/SamplesPerSymbol)
    SymbolOffsets_231((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_231((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_232)/SamplesPerSymbol)
    SymbolOffsets_232((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_232((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_233)/SamplesPerSymbol)
    SymbolOffsets_233((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_233((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_234)/SamplesPerSymbol)
    SymbolOffsets_234((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_234((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_235)/SamplesPerSymbol)
    SymbolOffsets_235((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_235((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_236)/SamplesPerSymbol)
    SymbolOffsets_236((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_236((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_237)/SamplesPerSymbol)
    SymbolOffsets_237((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_237((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_238)/SamplesPerSymbol)
    SymbolOffsets_238((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_238((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_239)/SamplesPerSymbol)
    SymbolOffsets_239((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_239((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_240)/SamplesPerSymbol)
    SymbolOffsets_240((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_240((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_241)/SamplesPerSymbol)
    SymbolOffsets_241((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_241((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_242)/SamplesPerSymbol)
    SymbolOffsets_242((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_242((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_243)/SamplesPerSymbol)
    SymbolOffsets_243((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_243((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_244)/SamplesPerSymbol)
    SymbolOffsets_244((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_244((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_245)/SamplesPerSymbol)
    SymbolOffsets_245((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_245((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_246)/SamplesPerSymbol)
    SymbolOffsets_246((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_246((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_247)/SamplesPerSymbol)
    SymbolOffsets_247((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_247((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_248)/SamplesPerSymbol)
    SymbolOffsets_248((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_248((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_249)/SamplesPerSymbol)
    SymbolOffsets_249((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_249((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_250)/SamplesPerSymbol)
    SymbolOffsets_250((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_250((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_251)/SamplesPerSymbol)
    SymbolOffsets_251((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_251((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_252)/SamplesPerSymbol)
    SymbolOffsets_252((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_252((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_253)/SamplesPerSymbol)
    SymbolOffsets_253((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_253((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_254)/SamplesPerSymbol)
    SymbolOffsets_254((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_254((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_255)/SamplesPerSymbol)
    SymbolOffsets_255((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_255((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
for k=1:(length(Decoding_256)/SamplesPerSymbol)
    SymbolOffsets_256((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol))	...
  = mean(Decoding_256((((k-1)*SamplesPerSymbol)+1):k*(SamplesPerSymbol)));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
subplot(1,2,1);
plot(tRx,SymbolOffsets_1,tRx,SymbolOffsets_2,tRx,SymbolOffsets_3,tRx,...
    SymbolOffsets_4,tRx,SymbolOffsets_5,tRx,SymbolOffsets_6,tRx,SymbolOffsets_7,...
    tRx,SymbolOffsets_8,tRx,SymbolOffsets_9,tRx,SymbolOffsets_10,tRx,...
    SymbolOffsets_11,tRx,SymbolOffsets_12,tRx,SymbolOffsets_13,tRx,SymbolOffsets_14,...
    tRx,SymbolOffsets_15,tRx,SymbolOffsets_16,tRx,SymbolOffsets_17,tRx,...
    SymbolOffsets_18,tRx,SymbolOffsets_19,tRx,SymbolOffsets_20,tRx,SymbolOffsets_21,...
    tRx,SymbolOffsets_22,tRx,SymbolOffsets_23,tRx,SymbolOffsets_24,tRx,...
    SymbolOffsets_25,tRx,SymbolOffsets_26,tRx,SymbolOffsets_27,tRx,SymbolOffsets_28,...
    tRx,SymbolOffsets_29,tRx,SymbolOffsets_30,tRx,SymbolOffsets_31,tRx,...
    SymbolOffsets_32,tRx,SymbolOffsets_33,tRx,SymbolOffsets_34,tRx,SymbolOffsets_35,...
    tRx,SymbolOffsets_36,tRx,SymbolOffsets_37,tRx,SymbolOffsets_38,tRx,...
    SymbolOffsets_39,tRx,SymbolOffsets_40,tRx,SymbolOffsets_41,tRx,SymbolOffsets_42,...
    tRx,SymbolOffsets_43,tRx,SymbolOffsets_44,tRx,SymbolOffsets_45,tRx,...
    SymbolOffsets_46,tRx,SymbolOffsets_47,tRx,SymbolOffsets_48,tRx,SymbolOffsets_49,...
    tRx,SymbolOffsets_50,tRx,SymbolOffsets_51,tRx,SymbolOffsets_52,tRx,...
    SymbolOffsets_53,tRx,SymbolOffsets_54,tRx,SymbolOffsets_55,tRx,SymbolOffsets_56,...
    tRx,SymbolOffsets_57,tRx,SymbolOffsets_58,tRx,SymbolOffsets_59,tRx,...
    SymbolOffsets_60,tRx,SymbolOffsets_61,tRx,SymbolOffsets_62,tRx,SymbolOffsets_63,...
    tRx,SymbolOffsets_64,tRx,SymbolOffsets_65,tRx,SymbolOffsets_66,tRx,...
    SymbolOffsets_67,tRx,SymbolOffsets_68,tRx,SymbolOffsets_69,tRx,SymbolOffsets_70,...
    tRx,SymbolOffsets_71,tRx,SymbolOffsets_72,tRx,SymbolOffsets_73,tRx,...
    SymbolOffsets_74,tRx,SymbolOffsets_75,tRx,SymbolOffsets_76,tRx,SymbolOffsets_77,...
    tRx,SymbolOffsets_78,tRx,SymbolOffsets_79,tRx,SymbolOffsets_80,tRx,...
    SymbolOffsets_81,tRx,SymbolOffsets_82,tRx,SymbolOffsets_83,tRx,SymbolOffsets_84,...
    tRx,SymbolOffsets_85,tRx,SymbolOffsets_86,tRx,SymbolOffsets_87,tRx,...
    SymbolOffsets_88,tRx,SymbolOffsets_89,tRx,SymbolOffsets_90,tRx,SymbolOffsets_91,...
    tRx,SymbolOffsets_92,tRx,SymbolOffsets_93,tRx,SymbolOffsets_94,tRx,...
    SymbolOffsets_95,tRx,SymbolOffsets_96,tRx,SymbolOffsets_97,tRx,SymbolOffsets_98,...
    tRx,SymbolOffsets_99,tRx,SymbolOffsets_100,tRx,SymbolOffsets_101,tRx,...
    SymbolOffsets_102,tRx,SymbolOffsets_103,tRx,SymbolOffsets_104,tRx,SymbolOffsets_105,...
    tRx,SymbolOffsets_106,tRx,SymbolOffsets_107,tRx,SymbolOffsets_108,...
    tRx,SymbolOffsets_109,tRx,SymbolOffsets_110,tRx,SymbolOffsets_111,tRx,SymbolOffsets_112,...
    tRx,SymbolOffsets_113,tRx,SymbolOffsets_114,tRx,SymbolOffsets_115,...
    tRx,SymbolOffsets_116,tRx,SymbolOffsets_117,tRx,SymbolOffsets_118,tRx,SymbolOffsets_119,...
    tRx,SymbolOffsets_120,tRx,SymbolOffsets_121,tRx,SymbolOffsets_122,...
    tRx,SymbolOffsets_123,tRx,SymbolOffsets_124,tRx,SymbolOffsets_125,tRx,SymbolOffsets_126,...
    tRx,SymbolOffsets_127,tRx,SymbolOffsets_128,tRx,SymbolOffsets_129,...
    tRx,SymbolOffsets_130,tRx,SymbolOffsets_131,tRx,SymbolOffsets_132,tRx,SymbolOffsets_133,...
    tRx,SymbolOffsets_134,tRx,SymbolOffsets_135,tRx,SymbolOffsets_136,...
    tRx,SymbolOffsets_137,tRx,SymbolOffsets_138,tRx,SymbolOffsets_139,tRx,SymbolOffsets_140,...
    tRx,SymbolOffsets_141,tRx,SymbolOffsets_142,tRx,SymbolOffsets_143,tRx,...
    SymbolOffsets_144,tRx,SymbolOffsets_145,tRx,SymbolOffsets_146,tRx,SymbolOffsets_147,...
    tRx,SymbolOffsets_148,tRx,SymbolOffsets_149,tRx,SymbolOffsets_150,tRx,...
    SymbolOffsets_151,tRx,SymbolOffsets_152,tRx,SymbolOffsets_153,tRx,SymbolOffsets_154,...
    tRx,SymbolOffsets_155,tRx,SymbolOffsets_156,tRx,SymbolOffsets_157,tRx,...
    SymbolOffsets_158,tRx,SymbolOffsets_159,tRx,SymbolOffsets_160,tRx,SymbolOffsets_161,...
    tRx,SymbolOffsets_162,tRx,SymbolOffsets_163,tRx,SymbolOffsets_164,tRx,...
    SymbolOffsets_165,tRx,SymbolOffsets_166,tRx,SymbolOffsets_167,tRx,SymbolOffsets_168,...
    tRx,SymbolOffsets_169,tRx,SymbolOffsets_170,tRx,SymbolOffsets_171,tRx,...
    SymbolOffsets_172,tRx,SymbolOffsets_173,tRx,SymbolOffsets_174,tRx,SymbolOffsets_175,...
    tRx,SymbolOffsets_176,tRx,SymbolOffsets_177,tRx,SymbolOffsets_178,tRx,...
    SymbolOffsets_179,tRx,SymbolOffsets_180,tRx,SymbolOffsets_181,tRx,SymbolOffsets_182,...
    tRx,SymbolOffsets_183,tRx,SymbolOffsets_184,tRx,SymbolOffsets_185,tRx,...
    SymbolOffsets_186,tRx,SymbolOffsets_187,tRx,SymbolOffsets_188,tRx,SymbolOffsets_189,...
    tRx,SymbolOffsets_190,tRx,SymbolOffsets_191,tRx,SymbolOffsets_192,tRx,...
    SymbolOffsets_193,tRx,SymbolOffsets_194,tRx,SymbolOffsets_195,tRx,SymbolOffsets_196,...
    tRx,SymbolOffsets_197,tRx,SymbolOffsets_198,tRx,SymbolOffsets_199,tRx,...
    SymbolOffsets_200,tRx,SymbolOffsets_201,tRx,SymbolOffsets_202,tRx,SymbolOffsets_203,...
    tRx,SymbolOffsets_204,tRx,SymbolOffsets_205,tRx,SymbolOffsets_206,tRx,...
    SymbolOffsets_207,tRx,SymbolOffsets_208,tRx,SymbolOffsets_209,tRx,SymbolOffsets_210,...
    tRx,SymbolOffsets_211,tRx,SymbolOffsets_212,tRx,SymbolOffsets_213,tRx,...
    SymbolOffsets_214,tRx,SymbolOffsets_215,tRx,SymbolOffsets_216,tRx,SymbolOffsets_217,...
    tRx,SymbolOffsets_218,tRx,SymbolOffsets_219,tRx,SymbolOffsets_220,tRx,...
    SymbolOffsets_221,tRx,SymbolOffsets_222,tRx,SymbolOffsets_223,tRx,SymbolOffsets_224,...
    tRx,SymbolOffsets_225,tRx,SymbolOffsets_226,tRx,SymbolOffsets_227,tRx,...
    SymbolOffsets_228,tRx,SymbolOffsets_229,tRx,SymbolOffsets_230,tRx,SymbolOffsets_231,...
    tRx,SymbolOffsets_232,tRx,SymbolOffsets_233,tRx,SymbolOffsets_234,tRx,...
    SymbolOffsets_235,tRx,SymbolOffsets_236,tRx,SymbolOffsets_237,tRx,SymbolOffsets_238,...
    tRx,SymbolOffsets_239,tRx,SymbolOffsets_240,tRx,SymbolOffsets_241,tRx,...
    SymbolOffsets_242,tRx,SymbolOffsets_243,tRx,SymbolOffsets_244,tRx,SymbolOffsets_245,...
    tRx,SymbolOffsets_246,tRx,SymbolOffsets_247,tRx,SymbolOffsets_248,tRx,...
    SymbolOffsets_249,tRx,SymbolOffsets_250,tRx,SymbolOffsets_251,tRx,SymbolOffsets_252,...
    tRx,SymbolOffsets_253,tRx,SymbolOffsets_254,tRx,SymbolOffsets_255,tRx,SymbolOffsets_256);
%axis([-1000*1/Fs 6000*1/Fs 990 1020]);
xlabel("Offset calculation of 256 levels.");
subplot(1,2,2);
plot(tRx,SymbolOffsets_hover);
%axis([-1000*1/Fs 6000*1/Fs 990 1600]);
xlabel("Offset calculation of hover.");

