///Scan enemy
if dead or action{exit}
sensor = instance_create(x,y,obj_sensor);
sensor.owner = self.id;
//alarm[11] = random_range(3*30,5*30);
