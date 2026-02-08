extends Entity

func _ready():
	body.velocity.y = -30
	
func _physics_process(delta: float):
	body.update()
	if position.y < 0: position.y = 200


