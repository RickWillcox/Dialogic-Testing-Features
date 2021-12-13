extends Node2D

var drunk_potion : bool = false


func _ready() -> void:
	var new_dialog = Dialogic.start("/q1")
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, "dialogic_signal")
	
func dialogic_signal(argument):
	match argument:
		"drink_potion":
			print("Signal emitted: Player drinks the potion")
			drunk_potion = true
		"give_copper_sword":
			print("Player recieved Copper Sword")
