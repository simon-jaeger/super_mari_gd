class_name Entity
extends Node2D

@onready var area: Area = get_node_or_null("area")
@onready var body: Body = get_node_or_null("body")
@onready var hitbox: Hitbox = get_node_or_null("hitbox")
@onready var interaction: Interaction = get_node_or_null("interaction")
@onready var raycast: Raycast = get_node_or_null("raycast")
@onready var sprite: Sprite = get_node_or_null("sprite")
@onready var animator: Animator = get_node_or_null("animator")

@onready var starting_position = position

func create(scene: PackedScene, pos = position):
	var entity: Entity = scene.instantiate()
	entity.position = pos
	add_sibling(entity, true)
	return entity

func on_enter(): pass
func on_exit(): pass
func on_hit(h: Hitbox): pass
func on_interact(): pass
