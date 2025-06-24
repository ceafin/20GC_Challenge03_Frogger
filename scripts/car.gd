extends Area2D
class_name Car

const direction = {
	"left" = Vector2.LEFT,
	"right" = Vector2.RIGHT
}

@export var speed : float = 60.0
var facing : String = "left"

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	if facing == "left":
		animated_sprite_2d.flip_h = true
	elif facing == "right":
		animated_sprite_2d.flip_h = false

func _process(delta: float) -> void:
	position 
	
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
