extends Node

var score = 0
@onready var score_label: Label = $"../Score_label"

func add_point():
	score += 1
	score_label.text = "Hola, has pillado " + str(score) + " monedas"
