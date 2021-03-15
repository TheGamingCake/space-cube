extends Actor


onready var stomp_area: Area2D = $StompArea2D#the enemys stomp area 2D node

export var score: = 100#The score the player gets once the enemy has been killed


func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x


func _physics_process(delta: float) -> void:
	_velocity.x *= -1 if is_on_wall() else 1#If the enemy's Collision2D hits the wall the enemy will move the other way
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
#The function above declares how the enemy will move

func _on_StompArea2D_area_entered(area: Area2D) -> void:
	if area.global_position.y > stomp_area.global_position.y:
		return
	die()
#The function above declares how the enemy will die. If the player body (Collision2D) enters the enemys Area2D then the die() func will start

func die() -> void:#Initializes the die() function
	PlayerData.score += score#Adds the score var (Initialized at the start of the file) to the players score
	queue_free()#Deletes the enemy
