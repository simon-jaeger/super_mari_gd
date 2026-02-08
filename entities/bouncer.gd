extends Entity

func on_enter():
	animator.play("bounce")
	Game.hero.body.velocity.y = -400
