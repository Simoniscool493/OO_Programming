PVector a = new PVector(20,20);
PVector b = new PVector(-5,-7); //Parameterised constructor


b = a;


println(a);
println(b);


a.mult(2);        //40,40  -5,-7
a.add(b);         //35,33  -5,-7
b.add(a);         //35,33  30,26
a.sub(2,2,0);     //33,31  30,26
b.mult(3);    //33,31  90,78
b.sub(a);     //33,31  57,47

