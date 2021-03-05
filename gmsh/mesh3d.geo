//3D half space problem mesh for ResIPy - no topography
cl=6;//define characteristic length for fine mesh region
//Fine mesh region.
Point (1) = {100,100,0.00, cl*1.2};
Point (2) = {100,0,0.00, cl*1.2};
Point (3) = {0,0,0.00, cl*1.2};
Point (4) = {0,100,0.00, cl*1.2};
Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};
cl2=cl;//define characteristic length for base of fine mesh region
Point (5) = {100,100,-100, cl2};
Point (6) = {100,0,-100, cl2};
Point (7) = {0,0,-100, cl2};
Point (8) = {0,100,-100, cl2};
Line(5) = {5,6};
Line(6) = {6,7};
Line(7) = {7,8};
Line(8) = {8,5};
Line(9) = {1,5};
Line(10) = {2,6};
Line(11) = {3,7};
Line(12) = {4,8};
//End fine mesh region points
//Neumannn boundary points
cln = 15;//characteristic length for background region
Point (9) = {100.1,100.1,0.1, cln};
Point (10) = {100.1,-0.1,0.1, cln};
Point (11) = {-0.1,-0.1,0.1, cln};
Point (12) = {-0.1,100.1,0.1, cln};
Line(13) = {9,10};
Line(14) = {10,11};
Line(15) = {11,12};
Line(16) = {12,9};
Point (13) = {100.1,100.1,-100.1, cln};
Point (14) = {100.1,-0.1,-100.1, cln};
Point (15) = {-0.1,-0.1,-100.1, cln};
Point (16) = {-0.1,100.1,-100.1, cln};
Line(17) = {13,14};
Line(18) = {14,15};
Line(19) = {15,16};
Line(20) = {16,13};
Line(21) = {9,13};
Line(22) = {10,14};
Line(23) = {11,15};
Line(24) = {12,16};
//End of nuemmon boundary points
Line Loop(1) = {1,2,3,4};
Line Loop(2) = {13,14,15,16};
Plane Surface(1) = {1};
Plane Surface(2) = {2,1};
//Below ground fine mesh surfaces
Line Loop(3) = {5,6,7,8};
Line Loop(4) = {5,-10,-1,9};
Line Loop(5) = {11,-6,-10,2};
Line Loop(6) = {11,7,-12,-3};
Line Loop(7) = {8,-9,-4,12};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};
Surface Loop (1) = {1,3,4,5,6,7};
Volume(1) = {1};//End Fine mesh region surfaces.
//Below ground background surfaces
Line Loop(8) = {20, 17, 18, 19};
Line Loop(9) = {24, -19, -23, 15};
Line Loop(10) = {16, 21, -20, -24};
Line Loop(11) = {17, -22, -13, 21};
Line Loop(12) = {18, -23, -14, 22};
Plane Surface(8) = {8};
Plane Surface(9) = {9};
Plane Surface(10) = {10};
Plane Surface(11) = {11};
Plane Surface(12) = {12};
Surface Loop (2) = {2,3,4,5,6,7,8,9,10,11,12};
Volume(2) = {2};//End background mesh surfaces
//Electrode positions.
Point (17) = {40.00,40.00,-97.50, cl};
Point{17} In Volume{1};//buried electrode
Point (18) = {25.00,25.00,-97.50, cl};
Point{18} In Volume{1};//buried electrode
Point (19) = {10.00,10.00,-97.50, cl};
Point{19} In Volume{1};//buried electrode
Point (20) = {2.00,3.50,-87.00, cl};
Point{20} In Volume{1};//buried electrode
Point (21) = {2.00,3.50,-72.00, cl};
Point{21} In Volume{1};//buried electrode
Point (22) = {2.00,3.50,-57.00, cl};
Point{22} In Volume{1};//buried electrode
Point (23) = {2.00,3.50,-42.00, cl};
Point{23} In Volume{1};//buried electrode
Point (24) = {2.00,3.50,-27.00, cl};
Point{24} In Volume{1};//buried electrode
Point (25) = {2.00,3.50,-12.00, cl};
Point{25} In Volume{1};//buried electrode
Point (26) = {10.00,10.00,-3.00, cl};
Point{26} In Surface{1};//surface electrode
Point (27) = {25.00,25.00,-3.00, cl};
Point{27} In Surface{1};//surface electrode
Point (28) = {40.00,40.00,-3.00, cl};
Point{28} In Surface{1};//surface electrode
Point (29) = {40.00,60.00,-3.00, cl};
Point{29} In Surface{1};//surface electrode
Point (30) = {25.00,75.00,-3.00, cl};
Point{30} In Surface{1};//surface electrode
Point (31) = {10.00,90.00,-3.00, cl};
Point{31} In Surface{1};//surface electrode
Point (32) = {2.00,97.50,-12.00, cl};
Point{32} In Volume{1};//buried electrode
Point (33) = {2.00,97.50,-27.00, cl};
Point{33} In Volume{1};//buried electrode
Point (34) = {2.00,97.50,-42.00, cl};
Point{34} In Volume{1};//buried electrode
Point (35) = {2.00,97.50,-57.00, cl};
Point{35} In Volume{1};//buried electrode
Point (36) = {2.00,97.50,-72.00, cl};
Point{36} In Volume{1};//buried electrode
Point (37) = {2.00,97.50,-87.00, cl};
Point{37} In Volume{1};//buried electrode
Point (38) = {10.00,90.00,-97.50, cl};
Point{38} In Volume{1};//buried electrode
Point (39) = {25.00,75.00,-97.50, cl};
Point{39} In Volume{1};//buried electrode
Point (40) = {40.00,60.00,-97.50, cl};
Point{40} In Volume{1};//buried electrode
Point (41) = {60.00,60.00,-97.50, cl};
Point{41} In Volume{1};//buried electrode
Point (42) = {75.00,75.00,-97.50, cl};
Point{42} In Volume{1};//buried electrode
Point (43) = {90.00,90.00,-97.50, cl};
Point{43} In Volume{1};//buried electrode
Point (44) = {98.00,97.50,-87.00, cl};
Point{44} In Volume{1};//buried electrode
Point (45) = {98.00,97.50,-72.00, cl};
Point{45} In Volume{1};//buried electrode
Point (46) = {98.00,97.50,-57.00, cl};
Point{46} In Volume{1};//buried electrode
Point (47) = {98.00,97.50,-42.00, cl};
Point{47} In Volume{1};//buried electrode
Point (48) = {98.00,97.50,-27.00, cl};
Point{48} In Volume{1};//buried electrode
Point (49) = {98.00,97.50,-12.00, cl};
Point{49} In Volume{1};//buried electrode
Point (50) = {90.00,90.00,-3.00, cl};
Point{50} In Surface{1};//surface electrode
Point (51) = {75.00,75.00,-3.00, cl};
Point{51} In Surface{1};//surface electrode
Point (52) = {60.00,60.00,-3.00, cl};
Point{52} In Surface{1};//surface electrode
Point (53) = {60.00,40.00,-3.00, cl};
Point{53} In Surface{1};//surface electrode
Point (54) = {75.00,25.00,-3.00, cl};
Point{54} In Surface{1};//surface electrode
Point (55) = {90.00,10.00,-3.00, cl};
Point{55} In Surface{1};//surface electrode
Point (56) = {98.00,3.50,-12.00, cl};
Point{56} In Volume{1};//buried electrode
Point (57) = {98.00,3.50,-27.00, cl};
Point{57} In Volume{1};//buried electrode
Point (58) = {98.00,3.50,-42.00, cl};
Point{58} In Volume{1};//buried electrode
Point (59) = {98.00,3.50,-57.00, cl};
Point{59} In Volume{1};//buried electrode
Point (60) = {98.00,3.50,-72.00, cl};
Point{60} In Volume{1};//buried electrode
Point (61) = {98.00,3.50,-87.00, cl};
Point{61} In Volume{1};//buried electrode
Point (62) = {90.00,10.00,-97.50, cl};
Point{62} In Volume{1};//buried electrode
Point (63) = {75.00,25.00,-97.50, cl};
Point{63} In Volume{1};//buried electrode
Point (64) = {60.00,40.00,-97.50, cl};
Point{64} In Volume{1};//buried electrode
//End electrodes
