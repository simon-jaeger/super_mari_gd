class_name Transition
extends CanvasLayer

@onready var animator: Animator = $animator

func _ready():
	Game.transition = self

func to_black(): return animator.play_full("to_black")
func from_black(): return animator.play_full("from_black")
