//alle Maße in mm
Pd = 2; //plattendicke ist 2mm

//Maße Grundplatte
Lg = 180; //Länge Grundplatte
Bg = Lg;  //Breite Grundplatte

//zeichne Grundplatte
//cube(size = [Lg,Bg,Pd], center = false);

//Seitenteil 
Hs1 = 70;  //Höhe
cube (size = [Bg-2*Pd,Hs1,Pd], center = false);
translate([Bg-2*Pd+5,0,0]){cube (size = [Bg-2*Pd,Hs1,Pd], center = false);}

    
