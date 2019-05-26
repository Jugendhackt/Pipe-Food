//alle Maße in mm
Pd = 2; //plattendicke ist 2mm

//Maße Grundplatte
Da = 45.3; //Länge Grundplatte
Di = 35;  //Breite Grundplatte


//Adapetrring 
difference(){
    cylinder(h=Pd, d=Da, center = true);
    cylinder(h=Pd+2, d=Di, center = true);
}

    
