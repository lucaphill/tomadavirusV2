 x+= vel_h
 y+= vel_v
 /*
 if x<0 { vel_h = -vel_h }
 if x>room_width { vel_h = -vel_h }
 if y<0 { vel_v = -vel_v }
 if y>room_width {vel_v = - vel_v}
 */
 
	// Colisão horizontal
	if(place_meeting(x+vel_h,y, oColisao)){
		while (!place_meeting(x+sign(vel_h),y,oColisao)){
			x = x + sign(vel_h)
		}
		vel_h = -vel_h;
	}


	// colisão vertical
	if (place_meeting(x,y+vel_v,oColisao)){
		while(!place_meeting(x,y+sign (vel_v),oColisao)){
			y = y + sign(vel_v)
		}
	
		vel_v = -vel_v
	}
