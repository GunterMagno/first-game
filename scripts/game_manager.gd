extends Node

var score = 0
@onready var recoger_monedas: Label = $"../Player/Camera2D/Recoger monedas"
@onready var recoger_todas: Label = $"../Player/Camera2D/RecogerTodas"
@onready var timer: Timer = $"../Player/Camera2D/RecogerTodas/Timer"
@onready var game: Node2D = $".."

func add_point():
	score += 1
	recoger_monedas.text = str(score) + " monedas recogidas"
	if score >= 25:
		Engine.time_scale = 0.5
		recoger_todas.visible = true
		timer.start()
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	game.queue_free()
