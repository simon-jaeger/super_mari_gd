extends Stage

@export_file var destination: String

func _physics_process(delta: float):
	if Input.is_action_just_pressed("space"):
		Game.stage.change("res://stages/stage_01.tscn")