class_name Game
extends Node2D

static var hero: Hero
static var stage: Stage
static var transition: Transition

static var coins: int

func _ready():
	add_child(preload("res://stages/stage_02.tscn").instantiate())
	coins = 0

func _input(e: InputEvent):
	if e.is_action_pressed('B'): get_tree().quit()
	if e.is_action_pressed('R'): get_tree().reload_current_scene()
