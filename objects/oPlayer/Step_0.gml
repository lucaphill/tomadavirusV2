estado()

var fogo, escudo;
afterEscudo = approach(afterEscudo,cooldown_escudo,1);

if(cooldow_tiro > 0) {
	cooldow_tiro -=1;
}

if(cooldown_escudo > 0){
	cooldown_escudo -= 1;
}

if(invencivel > 0){
	invencivel -= 1;
}


fogo = mouse_check_button(mb_left);
escudo = mouse_check_button_pressed(mb_right);
//Criando o tiro

if(fogo && cooldow_tiro <= 0 ){
	var _tiro = instance_create_layer(x,y,"Instances", oTiro)
	_tiro.speed = 4;
	_tiro.direction = point_direction(x,y, mouse_x, mouse_y)
	_tiro.image_angle = _tiro.direction
	cooldow_tiro = 24;
	
}

if(escudo && cooldown_escudo <=0){
	invencivel = 120;
	sprite_index = sPlayerInvecivel
	cooldown_escudo = 600
	
}

if(invencivel == 0 && keyboard_check(vk_anykey)){
	sprite_index = sPlayerAnda
}
if(invencivel == 0 && keyboard_check(vk_anykey) = false){
	sprite_index = SPlayer
}
