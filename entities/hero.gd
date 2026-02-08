class_name Hero
extends Entity

var health = 3
var target: Entity

func _ready():
	Game.hero = self

func _physics_process(delta: float):
	if animator.is_busy(): return
	elif Input.is_action_just_pressed("space"): jump()
	elif Input.is_action_just_pressed("up"): interact()
	elif Input.is_action_pressed("down"): duck()
	elif Input.is_action_pressed("left"): move(-1)
	elif Input.is_action_pressed("right"): move(1)
	else: idle()
	body.update()
	if body.velocity.y < 0: animator.play("rise")
	elif body.velocity.y > 0: animator.play("fall")

func idle():
	if body.is_on_floor(): animator.play("idle")
	body.velocity.x = 0

func move(d: int):
	if body.is_on_floor(): animator.play("walk")
	scale.x = d
	body.velocity.x = d * 100

func jump():
	if not body.is_on_floor(): return
	body.velocity.y = -300

func duck():
	if body.is_on_floor(): animator.play("duck")
	body.velocity.x = 0
	position.y += 1

func interact():
	if target: target.on_interact()

func on_hit(h: Hitbox):
	animator.play("hurt")
	body.velocity = Vector2.ZERO
	health -= h.damage
	if health <= 0:
		await animator.play_full("death")
		create(preload("res://entities/hero.tscn"), starting_position)