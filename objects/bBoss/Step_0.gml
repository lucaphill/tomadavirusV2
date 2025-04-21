if (is_callable(estado)) {
    estado(); 
    estado = -1;
}


AfterVida = approach(AfterVida,vida,5);


if (vida <= 0){
	room_goto(vitoria)
	instance_destroy(bBoss)
}

// andar

if(instance_exists(oPlayer)){
	var _alvo = oPlayer;
	
	direction = point_direction(x,y,_alvo.x,_alvo.y);
	speed = velocidade
	
	if(vida >= 4620){
	sprite_index = sBossAnda
	}else if (vida< 4620){
	sprite_index = sBossQuebradoAnda
		speed = velocidadeForte
	} else{
			sprite_index = sBoss
	}
		
} 