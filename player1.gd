extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	
	if Input.is_action_pressed("avanzar"):
		get_node("AnimationPlayer").play("camina_parado")
	else:get_node("AnimationPlayer").play("quieto_parado")
	
	