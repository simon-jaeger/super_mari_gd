extends Entity

func on_enter():
	Game.coins += 1
	animator.play("collect")
