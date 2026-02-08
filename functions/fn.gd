class_name fn
extends Object

static func get_tree() -> SceneTree:
	return Engine.get_main_loop()

static func sleep(s = 1.0) -> Signal:
	return get_tree().create_timer(s).timeout
