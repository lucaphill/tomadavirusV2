//posição
x = oPlayer.x +3
y = oPlayer.y

var _dir = point_direction(x,y, mouse_x, mouse_y)

image_angle = _dir

var _intervalo = _dir == clamp(_dir, 90, 270)

if (_intervalo){
	image_yscale = -1
}
else{
	image_yscale = 1
}