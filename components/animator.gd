class_name Animator
extends AnimationPlayer

func is_busy():
	var ani = get_animation(current_animation) if current_animation else null
	return ani and ani.loop_mode == Animation.LOOP_NONE

func play_full(ani: String):
	play(ani)
	return animation_finished

func reset():
	play("RESET")

