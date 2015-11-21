void setup()
{
  size(500, 500);
  ship = new Ship();
  aiship = new AIShip();
}

// The class name alwasy starts with uppercase!!
Ship ship; // ship is called an INSTANCE of the Ship class
AIShip aiship;

void draw()
{
  background(0);
  
  ship.update();
  ship.render();
  aiship.update();
  aiship.render();
}
