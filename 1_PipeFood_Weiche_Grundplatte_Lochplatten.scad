//alle Maße in mm
Pd = 2; //plattendicke ist 2mm

//Maße Grundplatte
Lg = 180; //Länge Grundplatte
Bg = Lg;  //Breite Grundplatte

//zeichne Grundplatte
cube(size = [Lg,Bg,Pd], center = false);

//Seitenwand 1-Loch
Hs1 = 70;  //Höhe
translate ([0,Bg+5,0]){
    difference() {
        cube (size = [Lg,Hs1,Pd], center = false);
        translate ([90,25,0]){cylinder (h = Pd+6, d = 50, center =   true);}
        }
    }
    
//Seitenwand 2-Löcher
translate ([0,Bg+Hs1+10,0]){
    difference() {
        cube (size = [Lg,Hs1,Pd], center = false);
        translate ([140,25,0]){cylinder (h = Pd+6, d = 50, center =   true);}
        translate ([40,25,0]) {cylinder (h = Pd+6, d = 50, center =   true);}
        }
    }
 
 //Platteneinlage
/*
Be=Bg-2*(Pd+10);
Le = Lg-2*Pd;
color(c=[100/255,100/255,100/255])translate([Pd,Pd+10,0]){cube(size = [Le,Be,Pd], center = false);}
 */
