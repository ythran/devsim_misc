// This code was created by pygmsh v5.0.1.
SetFactory("OpenCASCADE");
Mesh.CharacteristicLengthMin = 0.1;
Mesh.CharacteristicLengthMax = 0.1;
vol0 = newv;
Cylinder(vol0) = {0.0, 0.0, 0.0, 0, 0, 0.1, 0.75};
vol1 = newv;
Box(vol1) = {-1.0, -1.0, 0.0, 2, 2, -1.5};
vol2 = newv;
Box(vol2) = {-1.0, -1.0, -1.5, 2, 2, -0.1};
vol3 = newv;
Cylinder(vol3) = {0.0, 0.0, 0.1, 0, 0, 0.1, 0.75};
vol4 = newv;
Box(vol4) = {-1.0, -1.0, -1.6, 2, 2, -0.1};
Physical Volume("top_volume") = {vol3};
Physical Volume("bot_volume") = {vol4};
Physical Volume("disk") = {vol0};
Physical Volume("bulk") = {vol1};
Physical Volume("nlayer") = {vol2};
Coherence;
