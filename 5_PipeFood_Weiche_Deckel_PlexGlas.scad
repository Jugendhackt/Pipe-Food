//alle Maße in mm
Pd = 2; //plattendicke ist 2mm

//Maße Grundplatte
Lg = 180; //Länge Grundplatte
Bg = Lg;  //Breite Grundplatte

//ServoLoch
Lsl = 20.5;
Bsl = 40.5;

//zeichne Grundplatte
difference(){
    cube(size = [Lg,Bg,Pd], center = true);
    cube(size = [Lsl,Bsl,Pd+2], center = true);
}


    
