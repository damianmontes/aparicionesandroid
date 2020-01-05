extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	
var avanzar   = Vector3()
var direccion = Vector3()
func _process(delta):
	
	avanzar = Vector3()
	if Input.is_action_pressed("rotar_der"):
		rotation_degrees.y -= 5
	

	if Input.is_action_pressed("rotar_izq"):
		rotation_degrees.y += 5
		
	if Input.is_action_pressed("avanzar"):
		#vel_act += (vel_desp*delta) * global_transform.basis.z.normalized()
		avanzar = Vector3(0,0,10)
	
		
	if Input.is_action_just_released("retroceder"):
		#vel_act += (-quieto*delta) * global_transform.basis.z.normalized()
		avanzar = Vector3(0,0,-10)
		
		
	direccion = avanzar.rotated(Vector3(0,1,0), rotation.y)
	move_and_slide(direccion, Vector3(0,1,0))
	