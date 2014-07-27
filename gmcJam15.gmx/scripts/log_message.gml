with(obj_playerLog){
    y -= 10;
}
msg = argument[0];

o = instance_create(25,50,obj_playerLog);
o.ACTION= msg;

