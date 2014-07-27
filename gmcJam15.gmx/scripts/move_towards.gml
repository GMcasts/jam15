
moveX = argument[0];
moveY = argument[1];
handle_enemy_step();
if(moveX != x) {
    if(moveX > x){
        log_message("You move East.");
        x += 32;
    }else{
        log_message("You move West.");
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

