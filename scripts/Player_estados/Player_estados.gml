function player_estado_free(){
	// Movimento

	 var teclaCima = keyboard_check(ord("W"));
	 var teclaBaixo = keyboard_check(ord("S"));
	 var teclaEsquerda = keyboard_check(ord("A"));
	 var teclaDireita = keyboard_check(ord("D"));
 
	 var tecla = teclaDireita - teclaEsquerda != 0 || teclaBaixo - teclaCima != 0;
 
	 dir = point_direction(0,0,teclaDireita - teclaEsquerda, teclaBaixo - teclaCima);
 
	vel_h = lengthdir_x(velocidade*tecla,dir);
	vel_v = lengthdir_y(velocidade*tecla,dir);
	
	// Dash
//	if(keyboard_check(vk_space)){
//		vel_h = 0
//		vel_v = 0
//		dash_dir = point_direction(x,y,mouse_x,mouse_y)
//		estado = player_estados_dash;
//	}
	

	// Colisão horizontal
	if(place_meeting(x+vel_h,y, oColisao)){
		while (!place_meeting(x+sign(vel_h),y,oColisao)){
			x = x + sign(vel_h)
		}
		vel_h = 0;
	}

	x += vel_h;

	// colisão vertical
	if (place_meeting(x,y+vel_v,oColisao)){
		while(!place_meeting(x,y+sign (vel_v),oColisao)){
			y = y + sign(vel_v)
		}
	
		vel_v = 0
	}

	y += vel_v;

	//if keyboard_check(ord("W"))
	//{
	//    y-=1
	//}

	//if keyboard_check(ord("S"))
	//{
	//    y+=1
	//}


	if keyboard_check(ord("A"))
	{
		//x-=1 
		image_xscale=-1
	}

	if keyboard_check(ord("D"))
	{
	    //x+=1 
		image_xscale =1
	}
/*
	if keyboard_check(vk_anykey)
	{
		sprite_index = sPlayerAnda
	}
	else 
	{
		sprite_index = SPlayer
	}
*/
}
//function player_estados_dash(){
//	vel_h = lengthdir_x(dash_force, dash_dir);
//	vel_v =  lengthdir_y(dash_force, dash_dir);
//	
//	dash_time ++;
//	if (dash_time >= dash_distance){
//		dash_time = 0;
//		vel_h = 0;
//		vel_v = 0;
//		estado = player_estado_free;
//	}
	
//	x+= vel_h;
//	y+= vel_h;

//}