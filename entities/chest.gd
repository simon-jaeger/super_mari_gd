extends Entity

@export var loot: PackedScene

func on_interact():
	await animator.play_full("open")
	create(loot, position + Vector2(0, -12))
