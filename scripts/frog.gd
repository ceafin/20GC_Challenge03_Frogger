extends Area2D
class_name Frog

var tile_size := Vector2( 16, 12 )
var inputs = {
	"move_right" = Vector2.RIGHT,
	"move_up" = Vector2.UP,
	"move_left" = Vector2.LEFT,
	"move_down" = Vector2.DOWN
}
var animation_speed = 6
var moving = false

@onready var sprite_2d: Sprite2D = $Sprite2D


func _ready() -> void:
	position = position.snapped( Vector2.ONE * tile_size )
	position += Vector2.ONE * ( tile_size / 2.0 )
	

func _process( delta: float ) -> void:
	if moving:
		return
	
	for dir: String in inputs.keys() as Array[String]:
		if Input.is_action_just_pressed( dir ):
			move( dir )

func move( dir: String ) -> void:
	#position += inputs[dir] * tile_size
	var tween = create_tween()
	tween.parallel().tween_property(
		self,
		"position",
		position + inputs[ dir ] * tile_size,
		1.0/animation_speed
		).set_trans( Tween.TRANS_SPRING )
	
	var target_angle = inputs[ dir ].angle() + ( PI/2 )
	var current_angle = sprite_2d.rotation
	var final_angle = _shortest_angle( current_angle, target_angle )
	
	tween.parallel().tween_property(
		sprite_2d,
		"rotation",
		final_angle,
		1.0 / animation_speed
	).set_trans( Tween.TRANS_SPRING )

	moving = true
	await tween.finished
	moving = false

func _shortest_angle( from_angle: float, to_angle: float ) -> float:
	var difference = fmod( to_angle - from_angle + PI, PI * 2 ) - PI
	return from_angle + difference
