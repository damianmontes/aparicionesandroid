extends KinematicBody

var speedWalk = 200
var angulo    = 0.0
var avanzar   = Vector3()
var direccion = Vector3()
var velocidad = Vector3()
var accion  = ''


func _physics_process(delta):
	avanzar = Vector3(0,0,0)
	accion  = 'esperando'
	if(Input.is_key_pressed(KEY_W)):
		accion = 'caminar'
		avanzar = Vector3(0 ,0,  speedWalk)
	
	if(Input.is_key_pressed(KEY_S)):
		accion = 'caminar'
		avanzar = Vector3(0, 0, -speedWalk)
	
	if(Input.is_key_pressed(KEY_A)):
		angulo += 2
	if(Input.is_key_pressed(KEY_D)):
		angulo -= 2
		
	rotation.y = deg2rad(angulo)
	direccion = avanzar.rotated(Vector3(0,1,0), rotation.y)
	velocidad = direccion * delta
	
	move_and_slide(velocidad, Vector3(0,1,0))
	if($animCamera.get_current_animation() != accion):
		$animCamera.play(accion, 0.25)
		#print('animacion: ', accion)
	pass