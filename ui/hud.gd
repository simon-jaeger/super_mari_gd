extends CanvasLayer

func _physics_process(delta: float):
	$coins_label.text = "%02d" % Game.coins
