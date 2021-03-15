extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer#var for the animation player

export var score: = 100#the var that contains the score the player will get once they pick up the coin


func _on_body_entered(body: PhysicsBody2D) -> void:
	picked()#once the players body enters the coin the picked() function will start


func picked() -> void:
	PlayerData.score += score#Adds the player's score with the score var
	anim_player.play("picked")#Plays the picked animation once the picked() function has started
