#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -24.13*x up 76.08*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}
light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}

#declare simple = finish {phong 0.7}
#declare pale = finish {ambient .5 diffuse .85 roughness .001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.10 roughness 0.04 }
#declare vmd = finish {ambient .0 diffuse .65 phong 0.1 phong_size 40. specular 0.500 }
#declare jmol = finish {ambient .2 diffuse .6 specular 1 roughness .001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.70 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient .15 brilliance 2 diffuse .6 metallic specular 1. roughness .001 reflection .0}
#declare glass = finish {ambient .05 diffuse .3 specular 1. roughness .001}
#declare glass2 = finish {ambient .0 diffuse .3 specular 1. reflection .25 roughness .001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, TRANS, FIN)
  sphere{LOC, R texture{pigment{color COL transmit TRANS} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, TRANS FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      torus{R, Rcell rotate -45*z texture{pigment{color COL transmit TRANS} finish{FIN}}}
      translate LOC}
#end

cylinder {<-10.17, -32.52, -33.83>, <  0.66, -36.23, -23.65>, Rcell pigment {Black}}
cylinder {<  0.66, -28.82, -44.00>, < 11.49, -32.52, -33.83>, Rcell pigment {Black}}
cylinder {<  0.66,  36.23, -20.33>, < 11.49,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<-10.17,  32.52, -10.15>, <  0.66,  28.82,   0.03>, Rcell pigment {Black}}
cylinder {<-10.17, -32.52, -33.83>, <  0.66, -28.82, -44.00>, Rcell pigment {Black}}
cylinder {<  0.66, -36.23, -23.65>, < 11.49, -32.52, -33.83>, Rcell pigment {Black}}
cylinder {<  0.66,  28.82,   0.03>, < 11.49,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<-10.17,  32.52, -10.15>, <  0.66,  36.23, -20.33>, Rcell pigment {Black}}
cylinder {<-10.17, -32.52, -33.83>, <-10.17,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<  0.66, -36.23, -23.65>, <  0.66,  28.82,   0.03>, Rcell pigment {Black}}
cylinder {< 11.49, -32.52, -33.83>, < 11.49,  32.52, -10.15>, Rcell pigment {Black}}
cylinder {<  0.66, -28.82, -44.00>, <  0.66,  36.23, -20.33>, Rcell pigment {Black}}
atom(<-10.17, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #0 
atom(< -8.37, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #1 
atom(< -6.56, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #2 
atom(< -8.37, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #3 
atom(< -6.56, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #4 
atom(< -4.76, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #5 
atom(< -6.56, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #6 
atom(< -4.76, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #7 
atom(< -2.95, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #8 
atom(< -8.37, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #9 
atom(< -6.56, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #10 
atom(< -4.76, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #11 
atom(< -6.56, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #12 
atom(< -4.76, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #13 
atom(< -2.95, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #14 
atom(< -4.76, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #15 
atom(< -2.95, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #16 
atom(< -1.14, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #17 
atom(<  3.36,  -1.58, -25.70>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #18 
atom(<  5.82,  -3.31, -19.73>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #19 
atom(<  2.05, -14.47, -28.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #20 
atom(< -3.44, -11.81, -24.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #21 
atom(< -3.03,   5.20, -16.44>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #22 
atom(<  1.54,  13.20, -27.51>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #23 
atom(< -3.86, -17.19, -26.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #24 
atom(<  7.85,   0.78, -20.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #25 
atom(< -1.41,   1.18, -15.22>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #26 
atom(<  0.70,   5.75, -12.35>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #27 
atom(<  4.14, -18.33, -34.66>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #28 
atom(<-10.17,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #29 
atom(< -8.37,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #30 
atom(< -6.56,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #31 
atom(< -8.37,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #32 
atom(< -6.56,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #33 
atom(< -4.76,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #34 
atom(< -6.56,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #35 
atom(< -4.76,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #36 
atom(< -2.95,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #37 
atom(< -8.37,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #38 
atom(< -6.56,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #39 
atom(< -4.76,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #40 
atom(< -6.56,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #41 
atom(< -4.76,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #42 
atom(< -2.95,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #43 
atom(< -4.76,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #44 
atom(< -2.95,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #45 
atom(< -1.14,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #46 
atom(<  3.36,  30.94, -13.86>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #47 
atom(<  5.82,  29.21,  -7.89>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #48 
atom(<  2.05,  18.05, -16.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #49 
atom(< -3.44,  20.71, -12.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #50 
atom(< -3.03, -27.32, -28.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #51 
atom(<  1.54, -19.32, -39.35>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #52 
atom(< -3.86,  15.33, -14.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #53 
atom(<  7.85, -31.74, -32.13>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #54 
atom(< -1.41, -31.34, -27.05>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #55 
atom(<  0.70, -26.77, -24.19>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #56 
atom(<  4.14,  14.19, -22.82>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #57 
atom(< -4.76, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #58 
atom(< -2.95, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #59 
atom(< -1.15, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #60 
atom(< -2.95, -17.84, -36.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #61 
atom(< -1.15, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #62 
atom(<  0.66, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #63 
atom(< -1.15, -17.22, -37.86>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #64 
atom(<  0.66, -17.84, -36.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #65 
atom(<  2.46, -18.45, -34.47>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #66 
atom(< -2.95, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #67 
atom(< -1.15, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #68 
atom(<  0.66, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #69 
atom(< -1.15, -16.14, -35.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #70 
atom(<  0.66, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #71 
atom(<  2.46, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #72 
atom(<  0.66, -15.52, -37.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #73 
atom(<  2.46, -16.14, -35.55>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #74 
atom(<  4.27, -16.76, -33.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #75 
atom(< -2.05,  -3.43, -20.61>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #76 
atom(<  0.41,  -5.17, -14.64>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #77 
atom(< -3.37, -16.32, -23.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #78 
atom(<  1.98,  -9.96, -29.25>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #79 
atom(<  2.38,   7.05, -21.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #80 
atom(< -3.87,  11.35, -22.43>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #81 
atom(<  1.55, -15.34, -31.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #82 
atom(<  2.44,  -1.07, -15.21>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #83 
atom(<  4.00,   3.03, -20.31>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #84 
atom(<  6.12,   7.60, -17.44>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #85 
atom(< -1.27, -20.19, -29.57>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #86 
atom(< -4.76,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #87 
atom(< -2.95,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #88 
atom(< -1.15,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #89 
atom(< -2.95,  14.69, -24.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #90 
atom(< -1.15,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #91 
atom(<  0.66,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #92 
atom(< -1.15,  15.30, -26.02>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #93 
atom(<  0.66,  14.69, -24.33>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #94 
atom(<  2.46,  14.07, -22.63>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #95 
atom(< -2.95,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #96 
atom(< -1.15,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #97 
atom(<  0.66,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #98 
atom(< -1.15,  16.38, -23.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #99 
atom(<  0.66,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #100 
atom(<  2.46,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #101 
atom(<  0.66,  17.00, -25.41>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #102 
atom(<  2.46,  16.38, -23.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #103 
atom(<  4.27,  15.76, -22.01>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #104 
atom(< -2.05,  29.09,  -8.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #105 
atom(<  0.41,  27.36,  -2.81>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #106 
atom(< -3.37,  16.20, -11.70>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #107 
atom(<  1.98,  22.57, -17.41>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #108 
atom(<  2.38, -25.47, -33.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #109 
atom(< -3.87, -21.17, -34.26>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #110 
atom(<  1.55,  17.18, -20.02>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #111 
atom(<  2.44, -33.59, -27.05>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #112 
atom(<  4.00, -29.49, -32.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #113 
atom(<  6.12, -24.92, -29.28>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #114 
atom(< -1.27,  12.34, -17.74>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #115 
atom(< -4.76, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #116 
atom(< -2.95, -22.78, -22.59>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #117 
atom(< -1.14, -23.39, -20.90>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #118 
atom(< -2.95, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #119 
atom(< -1.15, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #120 
atom(<  0.66, -22.78, -22.59>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #121 
atom(< -1.15, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #122 
atom(<  0.66, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #123 
atom(<  2.46, -22.16, -24.29>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #124 
atom(< -2.95, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #125 
atom(< -1.15, -21.08, -21.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #126 
atom(<  0.66, -21.70, -20.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #127 
atom(< -1.15, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #128 
atom(<  0.66, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #129 
atom(<  2.46, -21.08, -21.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #130 
atom(<  0.66, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #131 
atom(<  2.46, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #132 
atom(<  4.27, -20.46, -23.67>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #133 
atom(<  8.78,  -3.43, -20.61>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #134 
atom(<  0.41,  -1.46, -24.82>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #135 
atom(< -3.37, -12.62, -33.71>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #136 
atom(<  1.98, -13.66, -19.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #137 
atom(<  2.38,   3.35, -11.35>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #138 
atom(<  6.96,  11.35, -22.43>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #139 
atom(<  1.55, -19.05, -21.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #140 
atom(<  2.44,   2.64, -25.39>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #141 
atom(< -6.83,   3.03, -20.31>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #142 
atom(< -4.71,   7.60, -17.44>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #143 
atom(<  9.56, -20.19, -29.57>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #144 
atom(< -4.76,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #145 
atom(< -2.95,   9.75, -10.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #146 
atom(< -1.14,   9.13,  -9.06>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #147 
atom(< -2.95,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #148 
atom(< -1.15,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #149 
atom(<  0.66,   9.75, -10.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #150 
atom(< -1.15,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #151 
atom(<  0.66,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #152 
atom(<  2.46,  10.36, -12.45>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #153 
atom(< -2.95,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #154 
atom(< -1.15,  11.44, -10.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #155 
atom(<  0.66,  10.83,  -8.44>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #156 
atom(< -1.15,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #157 
atom(<  0.66,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #158 
atom(<  2.46,  11.44, -10.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #159 
atom(<  0.66,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #160 
atom(<  2.46,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #161 
atom(<  4.27,  12.06, -11.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #162 
atom(<  8.78,  29.09,  -8.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #163 
atom(<  0.41,  31.06, -12.98>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #164 
atom(< -3.37,  19.91, -21.88>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #165 
atom(<  1.98,  18.86,  -7.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #166 
atom(<  2.38, -29.18, -23.19>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #167 
atom(<  6.96, -21.17, -34.26>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #168 
atom(<  1.55,  13.48,  -9.84>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #169 
atom(<  2.44, -29.89, -37.22>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #170 
atom(< -6.83, -29.49, -32.14>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #171 
atom(< -4.71, -24.92, -29.28>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #172 
atom(<  9.56,  12.34, -17.74>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #173 
atom(<  0.66, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #174 
atom(<  2.46, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #175 
atom(<  4.27, -21.54, -25.99>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #176 
atom(<  2.46, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #177 
atom(<  4.27, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #178 
atom(<  6.07, -20.92, -27.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #179 
atom(<  4.27, -19.07, -32.77>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #180 
atom(<  6.07, -19.69, -31.08>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #181 
atom(<  7.88, -20.31, -29.38>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #182 
atom(<  2.46, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #183 
atom(<  4.27, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #184 
atom(<  6.07, -19.85, -25.37>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #185 
atom(<  4.27, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #186 
atom(<  6.07, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #187 
atom(<  7.88, -19.23, -27.07>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #188 
atom(<  6.07, -17.38, -32.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #189 
atom(<  7.88, -17.99, -30.46>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #190 
atom(<  9.69, -18.61, -28.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #191 
atom(<  3.36,  -5.28, -15.52>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #192 
atom(< -5.01,  -3.31, -19.73>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #193 
atom(< -8.78, -14.47, -28.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #194 
atom(<  7.39, -11.81, -24.16>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #195 
atom(<  7.80,   5.20, -16.44>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #196 
atom(<  1.54,   9.50, -17.34>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #197 
atom(<  6.97, -17.19, -26.76>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #198 
atom(< -2.98,   0.78, -20.30>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #199 
atom(< -1.41,   4.88, -25.39>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #200 
atom(<  0.70,   9.46, -22.53>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #201 
atom(<  4.14, -22.04, -24.48>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #202 
atom(<  0.66,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #203 
atom(<  2.46,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #204 
atom(<  4.27,  10.98, -14.15>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #205 
atom(<  2.46,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #206 
atom(<  4.27,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #207 
atom(<  6.07,  11.60, -15.85>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #208 
atom(<  4.27,  13.45, -20.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #209 
atom(<  6.07,  12.83, -19.24>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #210 
atom(<  7.88,  12.22, -17.54>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #211 
atom(<  2.46,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #212 
atom(<  4.27,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #213 
atom(<  6.07,  12.68, -13.53>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #214 
atom(<  4.27,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #215 
atom(<  6.07,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #216 
atom(<  7.88,  13.29, -15.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #217 
atom(<  6.07,  15.15, -20.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #218 
atom(<  7.88,  14.53, -18.62>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #219 
atom(<  9.69,  13.91, -16.92>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #220 
atom(<  3.36,  27.24,  -3.68>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #221 
atom(< -5.01,  29.21,  -7.89>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #222 
atom(< -8.78,  18.05, -16.79>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #223 
atom(<  7.39,  20.71, -12.32>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #224 
atom(<  7.80, -27.32, -28.28>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #225 
atom(<  1.54, -23.03, -29.17>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #226 
atom(<  6.97,  15.33, -14.93>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #227 
atom(< -2.98, -31.74, -32.13>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #228 
atom(< -1.41, -27.64, -37.23>, 1.32, rgb <0.78, 0.50, 0.20>, 0.0, ase3) // #229 
atom(<  0.70, -23.07, -34.37>, 0.66, rgb <1.00, 0.05, 0.05>, 0.0, ase3) // #230 
atom(<  4.14,  10.48, -12.65>, 0.76, rgb <0.56, 0.56, 0.56>, 0.0, ase3) // #231 
