var _dir = 0
	repeat(4){
		var _inst = instance_create_layer(x,y,"Instances", oBossMiniAtaque);
		_inst.speed = 3
		_inst.direction = _dir
		_dir += 90;
	}
instance_destroy()