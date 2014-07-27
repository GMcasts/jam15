
moveX = argument[0];
moveY = argument[1];
if(moveX != x) {
    if(moveX > x){
        log_message("You move West.");
        x += 32;
    }else{
        log_message("You move East.");
        x -= 32;
        if(moveX==x) {
            reset_cursor();
        }
    }
    if(moveX!=x && !being_attaked()) {
        alarm[0] = room_speed;
    }else{
        reset_cursor();
    }
}else if(moveY != y) {
    if(moveY > y) {
        y += 32;
        log_message("You move South.");
    }else {
        y -= 32;
        log_message("You move North.");
    }
    if(moveY != y && !being_attaked()) {
        alarm[0] = room_speed;
    }else {
        reset_cursor();
    }
}

if(obj_eyeEnemy.STATE=="attack") {
    // eye on the right side
    if(obj_eyeEnemy.x < x){
        if(obj_eyeEnemy.y < y){
            obj_eyeEnemy.y += 32;
        }
        obj_eyeEnemy.x += 32;
    // left side
    }else if(obj_eyeEnemy.x > x){
        if(obj_eyeEnemy.y < y){
            obj_eyeEnemy.y += 32;
        }
        obj_eyeEnemy.x -= 32;
    }
    // above y
    else if(obj_eyeEnemy.y < y) {
        obj_eyeEnemy.y += 32;
    //bellow y
    }else if(obj_eyeEnemy.y > y){
        obj_eyeEnemy.y -= 32;
    }else{
        // teehee
    }
}
