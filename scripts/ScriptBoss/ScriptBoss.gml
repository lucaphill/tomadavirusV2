//script do boss
function scr_boss_escolher_ataque(){
	if (alarm[0]==0){
		if(vida >= 3500){
	estado = choose(scr_boss_ataque1, scr_boss_ataque2, scr_boss_ataque3,scr_boss_ataque4, scr_boss_ataque5); 
	alarm[0] = 120; 
		} else{
	estado = choose(scr_boss_ataque1, scr_boss_ataque2, scr_boss_ataque3,scr_boss_ataque4, scr_boss_ataque5); 
		alarm[0] = 120; 
		}
	}
}

// Primeiro ataque
function scr_boss_ataque1(){
	var _dir = 0
	
	repeat(10){
		var _inst = instance_create_layer(x,y, "Instances", oBossAtaque);
		_inst.speed = 2
		_inst.direction = _dir
		
		_dir +=36;
	}
}

// Segundo ataque
function scr_boss_ataque2(){
	repeat(4){
		var _xx = random_range(x - 100,x + 100)
		var _yy = random_range(y - 100,y + 100)
		instance_create_layer(_xx, _yy, "Instances", oBossAtaque2)
		
	}
}

// Terceiro ataque
function scr_boss_ataque3(){
	var _dir = 0
	findPlayer = instance_find(oPlayer,0);
	timer = game_get_speed(gamespeed_fps)*5
	podeAtirar = true
	
	
	if (findPlayer){
	
		repeat(4){
			var _inst2 = instance_create_depth(x,y,depth,oBossAtaque);
			_inst2.direction = point_direction(x,y,findPlayer.x,findPlayer.y) + _dir;
			_inst2.speed = 2;
			_dir += -15;
			}
			
	}
}

// Quarto ataque
function scr_boss_ataque4(){
	var _dir = 0
	
	repeat(6){
		var _inst = instance_create_layer(x,y, "Instances", oPorjetilMov);
		_inst.direction = _dir
		_dir +=60;
	}

}
function scr_boss_ataque5(){
	var _dir = 0
	
	repeat(8){
		var _inst = instance_create_layer(x,y, "Instances", oBossAtaque);
		_inst.speed = 2
		_inst.direction = _dir
		
		_dir +=45;
	}

}

//ATAQUES MAIS FORTES
