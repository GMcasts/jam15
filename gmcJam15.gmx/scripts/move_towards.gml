
moveX = argument[0];
moveY = argument[1];
if(moveX != x) {
    if(moveX > x){
        x += 32;
    }else{
        x -= 32;
        if(moveX==x) {
            reset_cursor();
        }
    }
    if(moveX!=x) {
        alarm[0] = room_speed;
    }else{
        reset_cursor();
    }
}else if(moveY != y) {
    if(moveY > y) {
        y += 32;
    }else {
        y -= 32;
    }
    if(moveY != y) {
        alarm[0] = room_speed;
    }else {
        reset_cursor();
    }
}
